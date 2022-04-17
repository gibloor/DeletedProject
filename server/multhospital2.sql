PGDMP     7    6                z           multhospital    14.2    14.2 0    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            6           1262    16394    multhospital    DATABASE     W   CREATE DATABASE multhospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE multhospital;
                postgres    false            �            1259    16395    accounts    TABLE     g  CREATE TABLE public.accounts (
    id integer NOT NULL,
    login character varying(20),
    name character varying(20),
    password character varying(20),
    test_passed boolean DEFAULT false NOT NULL,
    level character varying(20),
    email character varying(40),
    mailing boolean DEFAULT true NOT NULL,
    permission integer DEFAULT 1 NOT NULL
);
    DROP TABLE public.accounts;
       public         heap    postgres    false            �            1259    16401    accounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.accounts_id_seq;
       public          postgres    false    209            7           0    0    accounts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;
          public          postgres    false    210            �            1259    16402    achievements    TABLE     �   CREATE TABLE public.achievements (
    id integer NOT NULL,
    user_id integer,
    title integer,
    degree integer,
    viewed boolean DEFAULT false NOT NULL
);
     DROP TABLE public.achievements;
       public         heap    postgres    false            �            1259    16406    achievements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.achievements_id_seq;
       public          postgres    false    211            8           0    0    achievements_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.achievements_id_seq OWNED BY public.achievements.id;
          public          postgres    false    212            �            1259    16407 
   characters    TABLE     u   CREATE TABLE public.characters (
    id integer NOT NULL,
    multfilm_id integer,
    name character varying(30)
);
    DROP TABLE public.characters;
       public         heap    postgres    false            �            1259    16410    characters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.characters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.characters_id_seq;
       public          postgres    false    213            9           0    0    characters_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.characters_id_seq OWNED BY public.characters.id;
          public          postgres    false    214            �            1259    16411 	   multfilms    TABLE     �   CREATE TABLE public.multfilms (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    serial integer,
    level integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.multfilms;
       public         heap    postgres    false            �            1259    16414    multfilms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.multfilms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.multfilms_id_seq;
       public          postgres    false    215            :           0    0    multfilms_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.multfilms_id_seq OWNED BY public.multfilms.id;
          public          postgres    false    216            �            1259    16415 	   questions    TABLE     �   CREATE TABLE public.questions (
    id integer NOT NULL,
    level character varying(20),
    question character varying(100),
    newcomers boolean DEFAULT false NOT NULL,
    multfilm character varying(30)
);
    DROP TABLE public.questions;
       public         heap    postgres    false            �            1259    16419    questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public          postgres    false    217            ;           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public          postgres    false    218            �            1259    16420    watched    TABLE     �   CREATE TABLE public.watched (
    id integer NOT NULL,
    multfilm character varying(40),
    user_id integer,
    viewed boolean DEFAULT false NOT NULL,
    level integer,
    date character varying(100)
);
    DROP TABLE public.watched;
       public         heap    postgres    false            �            1259    16424    viewed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.viewed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.viewed_id_seq;
       public          postgres    false    219            <           0    0    viewed_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.viewed_id_seq OWNED BY public.watched.id;
          public          postgres    false    220            �           2604    16425    accounts id    DEFAULT     j   ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);
 :   ALTER TABLE public.accounts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    16426    achievements id    DEFAULT     r   ALTER TABLE ONLY public.achievements ALTER COLUMN id SET DEFAULT nextval('public.achievements_id_seq'::regclass);
 >   ALTER TABLE public.achievements ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            �           2604    16427    characters id    DEFAULT     n   ALTER TABLE ONLY public.characters ALTER COLUMN id SET DEFAULT nextval('public.characters_id_seq'::regclass);
 <   ALTER TABLE public.characters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    16428    multfilms id    DEFAULT     l   ALTER TABLE ONLY public.multfilms ALTER COLUMN id SET DEFAULT nextval('public.multfilms_id_seq'::regclass);
 ;   ALTER TABLE public.multfilms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    16429    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16430 
   watched id    DEFAULT     g   ALTER TABLE ONLY public.watched ALTER COLUMN id SET DEFAULT nextval('public.viewed_id_seq'::regclass);
 9   ALTER TABLE public.watched ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            %          0    16395    accounts 
   TABLE DATA           m   COPY public.accounts (id, login, name, password, test_passed, level, email, mailing, permission) FROM stdin;
    public          postgres    false    209   �4       '          0    16402    achievements 
   TABLE DATA           J   COPY public.achievements (id, user_id, title, degree, viewed) FROM stdin;
    public          postgres    false    211   �C       )          0    16407 
   characters 
   TABLE DATA           ;   COPY public.characters (id, multfilm_id, name) FROM stdin;
    public          postgres    false    213   �C       +          0    16411 	   multfilms 
   TABLE DATA           <   COPY public.multfilms (id, name, serial, level) FROM stdin;
    public          postgres    false    215   tD       -          0    16415 	   questions 
   TABLE DATA           M   COPY public.questions (id, level, question, newcomers, multfilm) FROM stdin;
    public          postgres    false    217   �E       /          0    16420    watched 
   TABLE DATA           M   COPY public.watched (id, multfilm, user_id, viewed, level, date) FROM stdin;
    public          postgres    false    219   �F       =           0    0    accounts_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.accounts_id_seq', 284, true);
          public          postgres    false    210            >           0    0    achievements_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.achievements_id_seq', 1, false);
          public          postgres    false    212            ?           0    0    characters_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.characters_id_seq', 14, true);
          public          postgres    false    214            @           0    0    multfilms_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.multfilms_id_seq', 27, true);
          public          postgres    false    216            A           0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 29, true);
          public          postgres    false    218            B           0    0    viewed_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.viewed_id_seq', 335, true);
          public          postgres    false    220            �           2606    16432    accounts accounts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
       public            postgres    false    209            �           2606    16434    achievements achievements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_pkey;
       public            postgres    false    211            �           2606    16436    characters characters_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_pkey;
       public            postgres    false    213            �           2606    16438    multfilms multfilms_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.multfilms
    ADD CONSTRAINT multfilms_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.multfilms DROP CONSTRAINT multfilms_pkey;
       public            postgres    false    215            �           2606    16440    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    217            �           2606    16442    watched viewed_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.watched
    ADD CONSTRAINT viewed_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.watched DROP CONSTRAINT viewed_pkey;
       public            postgres    false    219            �           2606    16443 &   achievements achievements_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.accounts(id);
 P   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_user_id_fkey;
       public          postgres    false    209    211    3469            �           2606    16448 &   characters characters_multfilm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_multfilm_id_fkey FOREIGN KEY (multfilm_id) REFERENCES public.multfilms(id);
 P   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_multfilm_id_fkey;
       public          postgres    false    215    213    3475            %   �  x��˒����|����n�+��I��M\[[>"��(Q3E�s�5ߐp�ɕK~a�G�n 	B��pM�h���Ǿ���s��c>,������(*/`�4��t:7짿���.��|�����Ru_� ���m>Q��PV�0�W�P�x\�G�PW�{� ���ѻ;6<l��yy�~w�D����nl�&%)8+��(�aBr|\�[�8�i��;���Í�e呤SW��yk|O���p�k����\�>�5}����a�(�q���(EIE!�[��ٮ��a�0�܈��q��Jv�
!᱋5f��!�eÎ���07��a��=e����a�b�>r�a/8jsb�?^��j�;���.ז�ب�� X���	Ҝ�
w!�0-T(�m'**P�s�����,)�	
� G�1C�Ç�
2�׻��ЏU,J����*-�-��e;�H=;-ް�X���l����t��AC�N}� "���wtU5�ń��(�7�v�}��R����Qon���D�����YV��W`�l�.?�j�	�#Jyn/��l���]o�!c���n��ɠ��dȀ�넮�6�xf�k�h��� лl=٘x�%�9��
�%���*�C6zt��m��I�^ �\1`z-��N��E������ۤ���[4Tq�M�je�ASaa�z1��i@Dk��	y� fp��;88�GAK=V؈��d��z�Y��3�����a�z�
'̦����'��ݨ�ٕ��b"0��!�@Y,|�,�����UPbAJ&_f�K�'[�R/f� 6-Ԙ�X�Q#����=�b\1�h�X.
3]e�� 0�!Ա�t��. �+���i~:���	���*�0��w'�%��'��b�ʭO��E��(j��lf��`R{�d�r��mmy!��a��e�ۈ�G���#dd`OaNZ�c�Ǔ\K�@p&��ّs���Y�f�������vj�K�8�B���݂@x(�Q#�E�m6TF�T�bJ�mN���@�I.���(L���yL[1EY�L�]����;�[�C�ِݮЃ)���+A�6u+���Wa��m�`��`j�����Z�!R(�z�t23Ug[����U=3��ڤ�]��-�/�$lc&��'�gt���mR�)j��S�r;}Kf��8e0G"p��c��p}����YVI5d����+?�P��*!��_Vf�z�w�i ���%Y�������ɚ�!�2��}�qn����9_ot��}(K�}g��ۋ�祳�����A��/�y%&�*��L�P�Y-��͸�t��0���78�<F+;�V�ˬX�K=UT&c������Y�(��+�|J�
JY��
=�������?u�Ѭ�Y�4�1��ϟ�6I�*?���L�-d�oom�h�@��;C\Y�6�gZn8����MT� ?�5D7�9�����#��K'd�Ƿ6q�I6^����$)�����]ژ[�"��npLz����D� ٟ������Q���Cl˯����	��-�R��`#�SwB6~���r��J35"��.lQ�N9�nZ�a|�2�٪�1�1�c�����˚�g͉v߫��f=����h��]ئ���ޅ��Ŭ�e�:���=\���>�d���ƋM������$[�����w@�$�̘8܅m*��n�^�$��ޭ��^��Ƥ��o�$P+ܹ�k'�>����������r��=]vǽ�r�:f��]S�j'낖�G���;���p�,�[C�`�9�øo���ڿu#���ր-4����}����������3�npA 2݃- v�ċ1�w KԹ[��/K�T%���Nh��e'XS/�~U��|�O?���qQrAK��y�].��Cf�R�k~(wd�m�O�����5����-d�8�F��C�z��v�۞�î���oW��)�K(/��duʏ�0�j�X��j�x�˨���#��8�5�᭧Ow�e���Sg�\��׻�z� V<������<�������?1#ծ��G ���ҹ���7^�r��z��ݹuBV,HC��Y����Ft,V�\�}�6J^�aa�G��B��s�m�m�i<5�Nh�3p��pٟ/�;�=�y(��o�,�8a���Knn�]	���5/:�@!�		�-H��#M�ߤ��ϫr>�hjs����y|o3��)d���z3�X�o�����K�ovgҠ���4��Л�{�o����@��e����o��'�?��=����iуB��_��MԾ�6������:��y!���6Q�g�O$.rV7Q�1x�5��0��`�4��)^r>�x�-/hGբ��@	}�Ć>�z��i�Eֱfߣ�a��*�Ƽ<R�2Tt4	܁��o+@ٺ�H"����De����x�w�[Eˡ��vr4��M�@Mn^���JB[:#/z�w��ΐ��)eT��Ƽ*V�P��l��_�T ��,(�Y׶�2H���fA8��
i�k�D�A��VAV(�|!f>��� Y2cHH���;�O�_W��Ҟ
~Y����X��R]ѕ�q�h5�0RsD�u�4�4M�:<���G����aa{��mT��9��2+� )�a?^�r���Q����.P7��A��J� �CB��0���4	�܇1g�D~��G��ia�3�5]�a�DH���(M��!Y_�O���&��az� �A�M���-q�t�x O:F��;�W�v~��V�ЮD��1QR:����z�v�� �	��8>�'���Ɣ����d֢O�V[��P[H9�Z<�W�����<����ĕ�yB��s���<R:�#������t:q�% "~��Q�-�4����F��a��[���Lk�-���ʄP��6����I����Hk����*�adG��d��L��	�^������LE������2�#�Q���A#t2y�p"�b'1�-��E��[U�Oc�q�V����2U\�)�j�ڂ��tm�W�8�h��/�w�BOP���]��%�]>Sq�d.u�2w�![I�c9���"����x3y��lУ�_/$a��O�x��~�N�k�.I���}�/��ޕ,f�q9����{�|��s�@�0t�0��yё�lMO�8W��UExo����T�O�|ds F�q�1�4���|Q ݄.pq���m���80�8d a��hh(f`;��t �r�	6^����d���� S��ܝT������N'�q��|�_U�o��&���s}TB�/"�6	���:|��믯�y����_a(Az�jh�B�y��!�X;ԅGyٖDZP�x���Q���E�Vj Ø�-�����|��$��3p����3��~ι,����9��X�bȰ۪몎f K8��ĺ�l�/Jú�E��Y_��/��}����g�e�_����p���v��s�a�:��%r�Rʕ�l��ԅ��<�W]�����>ʪ[�Zas8T�	O�OMsb�C9��=}��"�6u�iB��
��dm�&7�E�W�njτq _؜�\�nR�>��,�޾���ܹ����vFR��t��e��xzJh�f_)a�L�o��i���_έ��9��pÞM����8�#lE���8�V�m���,|� ���~��8{����Oy���F+�@��֕p��z��~�ɥ�d!�7^��ył���\���y�7�:�)$���?=�{�����      '      x������ � �      )   �   x�-���0��u�a��BL����7�B[3<��%9����u0US��j!��PZj��[b�3����?������JՊM�#�R��*�l��4�������5��ʀ�@�j�S����Z5�\�")�t����_:V�:��y�ێ�D�w$�� �-�D`      +   c  x�MP˒�0<�>$��x��L6����`0�-Q����-7���_��n�0>�4:9���[�h���$�@������C��fI��9�4� X���L�z�YS��b�:͊�l�������NKl�|&��~Ɣ�[����k�a���Z�c�� ��������k�S�!�]�>��%�}���\�A����,h��G85:r��L��)�y�S<�e6mKU��ghoG�v3mGz�9u�������	Ԣoϩz<b�Q2L�λf��W<C��#w���+g�z�TڣV��3\��������>vd�-6�+We���pE�����
V���?�!�7�c��v��      -   �   x�}��n�@���d�
�	�d��VjK�.W����)o�⤮�������LY3�����5�T6�7�z��I���*q'5��Z2B'���|�e�@U��]O:9^,]v&1v~�������rD)=��	����<��������_��	b��(��y�t�؎%���#b��ED� �C�y���~ �;�v�      /     x��YˎE]{��+�����D@�A���&31�$�q���K�~���"�A$���#���{�]�ےV׹�oU�:�m��ǋ��.�׿MT��2y�}��;�f�|1�~�x2;:14��!?�������f9�>�x6P�� !!���s"C� �ʠ*2d��3�o�����œ����999[�\?�>�-�r�b
g����.^�'�8D�I?�s8�l!�1�#�r���1��L�����k��d��ŀ����ʀ,�YgHA$�A$�e2P�Pe3�%b��D�J�����au\u(Rːw$·>Hԏ�z.��1�BX�?��ۼC�?�H�Fr�!�ف��v�ؠۜ��e{p8D��w��ns�!��94Ho�<p�I��2���	D����3$�1<8B��H���d����Qú)�{��6�2h;R��*��0�{ ka�S}`4�=�mI�/���e�g�LрY�{���0�(�J�Iⷶ��qw�Cz��
��=Pl�=��w?_wt��mz�朒g[*�Z����]��z���&^�hޥ`a�O�l5�<�P�PR� �p��.��-�Z#P-ٝ��$�̈C�d$ ���g���DU]E, J�8JsHTYEt)2HՑTd��Yd`�)K$��|�U{�h��G$$$։�i�	 l��"&��][�d!�hQ�6Z���I�>�����cn����
�f���Uv�}E!!�,m��'b�����j��=ד�CP�%)�R���<��ޟ�<�z*��SI�pM����O�b����Շ�׫�WoWo>�޾��}�f�~�������������t��������?>9���l-�F��b�"���
����2���Bdn�T$so�P���A��z4wm�sl(@���t��Q�Me�cH'��P�ru#7oI��y̖#(Z����0 �0� q
C4"�+5p4�j�0[�J����W	,�Xp���G�`�`�=�&�  ��{ ��A"�-�N���Z���|2y8pL6Z�H}Q�nCz�]`�Y�dE�hJ���"��G�X+0�V���� N�T�l�5^�h1$x�&R0����@�-��I
����uk��֢�J��N�m2��(�bD��O���$�2T��78���A$G� �(�zE���Yͣ��Y�b�jgBdU��*�J���BUSQU�T���J����"x�9RRU������֒�u�9Lʣ��m���*�<��&˩ z.��P��pL�ۊץ��Y0�27��1"CɊsm� ��~�0G����e9�����``�
X�c���\tU����Қ3��_�Z4)�����j3�+�̊j4�(�_��$5���[�FӍq{EK<7JᤏK�'Zw��ˋu��"�Q�a��-|�娱�]ޝ��~�ʛT<�u����:��,Q��
[�������������l����-U��'D����i�hz:[Nc�;>���{H���"Ѯ��Ϸ��߁G獩B�wH/�}8 _>a{�|cDCz��8W	u��\#D�i����՚�n�\c"ߦ�R��e����������|v5d�Gc.Di�^c�o�n�FQ��qb{ґ���>����jI�K=��I��l:�*���Z�ɤ��#3ڬ��Vf?cv�I7�HC��Q[Y����glLC����ɮ��MБ�ԹɎ-�)]a��ӌ��]+(���ThM�v����8߆���۸<Ӈ�VX^����|9�^y�V�j�f�ۙo�=�/Sq^սl8�]w���0�V&5���ȫ�(^1���\�a�<9���~���;�m�Ƒ���J޺������m������E��[�\�ƶ$*�m��:Z����z#�I��ЄQ����!I�G���{y���Ȗ���8jKqpF:8��F-F
��e�7�u��^��J��[	[�qu���ӭ0J%ʋ��k�J��=ݎ�m����x7~�孷�#x�6�vCtB������jG^U���w�-�(]k;�>�����_���     