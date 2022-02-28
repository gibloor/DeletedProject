const express = require('express');
const profile = express.Router();
const fs = require('fs');
const pool = require("../db");

profile.post('/saveAvatar/:id', async (req, res) => {
  try  {
    const { id } = req.params;
    const { avatar } = req.body;
    const data = avatar.replace(/^data:image\/\w+;base64,/, "");
    const buf = Buffer.from(data, 'base64');

    const login = await pool.query(
      "SELECT login FROM accounts WHERE id = $1", [id]
    );

    fs.writeFile(`./app_data/images/users/${login.rows[0].login}/avatar.png`, buf, (err) => {
      if (err) throw err;
      console.log('The file has been saved!');
    });
  }
  catch (err) {
    console.error(err.message);
  }
});

profile.get('/takeAvatar/:id', async (req, res) => {
  try  {
    const { id } = req.params;

    const login = await pool.query(
      "SELECT login FROM accounts WHERE id = $1", [id]
    );

    fs.readFile(`./app_data/images/users/${login.rows[0].login}/avatar.png`, function (err, data) {
      if (!data) {
        res.send('');
      } else {
        let base64 = Buffer.from(data).toString('base64');
        base64 = 'data:image/png;base64,' + base64;
        res.send(base64);
      }
    }); 
  }
  catch (err) {
    console.error(err.message);
  }
});

profile.get('/takeInfo/:id', async (req, res) => {
  try  {
    const { id } = req.params;

    const login = await pool.query(
      "SELECT login FROM accounts WHERE id = $1", [id]
    );
    const watched = await pool.query(
      "SELECT multfilm, level, date FROM watched WHERE user_id = $1", [id]
    );
    
    let statistics = {
      totalAmount: 0,
      level1: 0,
      level2: 0,
      level3: 0,
      firstTime: 0,
    };

    if (watched.rows.length) {

      statistics.totalAmount = watched.rows.length;

      const firstTime = watched.rows[0].date;

      watched.rows.map(watched => {
        statistics[`level${watched.level}`] += 1;

        if (watched.date === firstTime) {
          statistics.firstTime += 1;
        };
      });
    }

    fs.readFile(`./app_data/images/users/${login.rows[0].login}/avatar.png`, function (err, data) {
      if (!data) {
        res.send({
          avatar: '',
          statistics: statistics
        });
      } else {
        let base64 = Buffer.from(data).toString('base64');
        base64 = 'data:image/png;base64,' + base64;
        res.send({
          avatar: base64,
          statistics: statistics
        });
      }
    }); 
  }
  catch (err) {
    console.error(err.message);
  }
});

module.exports = profile;