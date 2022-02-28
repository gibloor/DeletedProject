PGDMP         ,                z            multhospital    14.0    14.0 0    (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            +           1262    16394    multhospital    DATABASE     i   CREATE DATABASE multhospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE multhospital;
                postgres    false            �            1259    16403    accounts    TABLE     �  CREATE TABLE public.accounts (
    id integer NOT NULL,
    login character varying(20),
    name character varying(20),
    password character varying(20),
    test_passed boolean DEFAULT false NOT NULL,
    level character varying(20),
    "position" character varying(30) DEFAULT 'patient'::character varying NOT NULL,
    email character varying(40),
    mailing boolean DEFAULT true NOT NULL
);
    DROP TABLE public.accounts;
       public         heap    postgres    false            �            1259    16402    accounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.accounts_id_seq;
       public          postgres    false    212            ,           0    0    accounts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;
          public          postgres    false    211            �            1259    40973    achievements    TABLE     �   CREATE TABLE public.achievements (
    id integer NOT NULL,
    user_id integer,
    title integer,
    degree integer,
    viewed boolean DEFAULT false NOT NULL
);
     DROP TABLE public.achievements;
       public         heap    postgres    false            �            1259    40972    achievements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.achievements_id_seq;
       public          postgres    false    220            -           0    0    achievements_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.achievements_id_seq OWNED BY public.achievements.id;
          public          postgres    false    219            �            1259    32769 
   characters    TABLE     u   CREATE TABLE public.characters (
    id integer NOT NULL,
    multfilm_id integer,
    name character varying(30)
);
    DROP TABLE public.characters;
       public         heap    postgres    false            �            1259    32768    characters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.characters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.characters_id_seq;
       public          postgres    false    218            .           0    0    characters_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.characters_id_seq OWNED BY public.characters.id;
          public          postgres    false    217            �            1259    16412 	   multfilms    TABLE     �   CREATE TABLE public.multfilms (
    id integer NOT NULL,
    level character varying(20),
    name character varying(30),
    serial_number integer
);
    DROP TABLE public.multfilms;
       public         heap    postgres    false            �            1259    16411    multfilms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.multfilms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.multfilms_id_seq;
       public          postgres    false    214            /           0    0    multfilms_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.multfilms_id_seq OWNED BY public.multfilms.id;
          public          postgres    false    213            �            1259    16396 	   questions    TABLE     �   CREATE TABLE public.questions (
    id integer NOT NULL,
    level character varying(20),
    question character varying(100),
    newcomers boolean DEFAULT false NOT NULL,
    multfilm character varying(30)
);
    DROP TABLE public.questions;
       public         heap    postgres    false            �            1259    16395    questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public          postgres    false    210            0           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
          public          postgres    false    209            �            1259    16419    watched    TABLE     �   CREATE TABLE public.watched (
    id integer NOT NULL,
    multfilm character varying(40),
    user_id integer,
    viewed boolean DEFAULT false NOT NULL,
    level integer,
    date character varying(100)
);
    DROP TABLE public.watched;
       public         heap    postgres    false            �            1259    16418    viewed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.viewed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.viewed_id_seq;
       public          postgres    false    216            1           0    0    viewed_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.viewed_id_seq OWNED BY public.watched.id;
          public          postgres    false    215            w           2604    16406    accounts id    DEFAULT     j   ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);
 :   ALTER TABLE public.accounts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                       2604    40976    achievements id    DEFAULT     r   ALTER TABLE ONLY public.achievements ALTER COLUMN id SET DEFAULT nextval('public.achievements_id_seq'::regclass);
 >   ALTER TABLE public.achievements ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ~           2604    32772    characters id    DEFAULT     n   ALTER TABLE ONLY public.characters ALTER COLUMN id SET DEFAULT nextval('public.characters_id_seq'::regclass);
 <   ALTER TABLE public.characters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            {           2604    16415    multfilms id    DEFAULT     l   ALTER TABLE ONLY public.multfilms ALTER COLUMN id SET DEFAULT nextval('public.multfilms_id_seq'::regclass);
 ;   ALTER TABLE public.multfilms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            u           2604    16399    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            |           2604    16422 
   watched id    DEFAULT     g   ALTER TABLE ONLY public.watched ALTER COLUMN id SET DEFAULT nextval('public.viewed_id_seq'::regclass);
 9   ALTER TABLE public.watched ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    16403    accounts 
   TABLE DATA           m   COPY public.accounts (id, login, name, password, test_passed, level, "position", email, mailing) FROM stdin;
    public          postgres    false    212   �4       %          0    40973    achievements 
   TABLE DATA           J   COPY public.achievements (id, user_id, title, degree, viewed) FROM stdin;
    public          postgres    false    220   B       #          0    32769 
   characters 
   TABLE DATA           ;   COPY public.characters (id, multfilm_id, name) FROM stdin;
    public          postgres    false    218   8B                 0    16412 	   multfilms 
   TABLE DATA           C   COPY public.multfilms (id, level, name, serial_number) FROM stdin;
    public          postgres    false    214   �B                 0    16396 	   questions 
   TABLE DATA           M   COPY public.questions (id, level, question, newcomers, multfilm) FROM stdin;
    public          postgres    false    210   �C       !          0    16419    watched 
   TABLE DATA           M   COPY public.watched (id, multfilm, user_id, viewed, level, date) FROM stdin;
    public          postgres    false    216   LD       2           0    0    accounts_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.accounts_id_seq', 263, true);
          public          postgres    false    211            3           0    0    achievements_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.achievements_id_seq', 1, false);
          public          postgres    false    219            4           0    0    characters_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.characters_id_seq', 12, true);
          public          postgres    false    217            5           0    0    multfilms_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.multfilms_id_seq', 10, true);
          public          postgres    false    213            6           0    0    questions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.questions_id_seq', 25, true);
          public          postgres    false    209            7           0    0    viewed_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.viewed_id_seq', 284, true);
          public          postgres    false    215            �           2606    16410    accounts accounts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.accounts DROP CONSTRAINT accounts_pkey;
       public            postgres    false    212            �           2606    40978    achievements achievements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_pkey;
       public            postgres    false    220            �           2606    32774    characters characters_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_pkey;
       public            postgres    false    218            �           2606    16417    multfilms multfilms_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.multfilms
    ADD CONSTRAINT multfilms_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.multfilms DROP CONSTRAINT multfilms_pkey;
       public            postgres    false    214            �           2606    16401    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    210            �           2606    16424    watched viewed_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.watched
    ADD CONSTRAINT viewed_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.watched DROP CONSTRAINT viewed_pkey;
       public            postgres    false    216            �           2606    40979 &   achievements achievements_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.accounts(id);
 P   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_user_id_fkey;
       public          postgres    false    212    3204    220            �           2606    32775 &   characters characters_multfilm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.characters
    ADD CONSTRAINT characters_multfilm_id_fkey FOREIGN KEY (multfilm_id) REFERENCES public.multfilms(id);
 P   ALTER TABLE ONLY public.characters DROP CONSTRAINT characters_multfilm_id_fkey;
       public          postgres    false    218    3206    214                 x��Zݎ���y�}�A�o�� ݶ�EO�X�E�v'Ό�8�<}IJv�C͞N<��(��(ف'~9���k��s�/�_�����5�Uy�q�&�^.�F��۱hn��ۗ�G���G��?�F���Q+l+�b�ũ:�%��PA��p���ĩ>��t ^��~ѽ�RevT���\2�Sqk��6�?�L	��Uy(+���/7&�	�#f���P�I���Du��҅�,G-N��DmU��b�tM�o�~��h��ˍ`�R�2w��?�.�K�b�u""��A��T:1�(��k]�����>�����ݾ��CEJ�ݠT,��s��� �����\|��\S��L��K��E>��k����	D�<����4&ㆄ0h�L04�~T�:��|��H�8*ѩRW�V�j��Vg_�@[�Kt��s���ߪ�\���)Y�gM�{�C�Ӥ�Y�x'.��*X^O�=���c�]��-���,DK���ٶ
E�mLh�;+XLh#E�x�;.c\���DT,�|���!8D����KA��k{WW^�D�q�������h��9
�B�����/��T�M�2oP��ۣ�ݸ�H-����
(N��C9���`�����`_h����/�=v퇥�&fQ�U,&/צm�R��m�7����0��c���m	�Y���s�@������ة�q�(KJ|��g�&���Jم����{=�5)�x�D�Vt������U��v��[��+�w��.��H].|~L
l(Ⱥ(�"3!of�.BUTdF:\ �"�Y@,�r(ՠ���m�[���%�na]R�8<[�#R�YaFH��v�w��98F������z|�7,�W�������KI�A� ����S*�d>)	WN5��©��ֲ@��W
m=}2��,�,��`D P�t�L��Ym}���)��볹xP<�C�V�k�h>�g�8�KyC}�_� L������`Q�\�����jF�����iۥdo��hevG@�*���/���H8�Z*3=B�c�<a�	5�R��C@ϧ1��(��i3J�(�vD33Es3�9p;m�Z� y`0�L	�*E�1uڥ�q�Z�=��������"�1�L{����F!�()�Is��'�MC��Q�ۥvh% *�Y�̃22u��{�iN�'*�q���Wɭ��g65��>��D	X)�v9݇ð�Y���)����z�#�ݨtd
�?�M~bLi�m��o?�k���O���F'6:�ֵ��E>ç���R����)$x& c�u�$�:�f��ߑ>ʃ͙�M<��O����ܸĴ�(��d�*O&�c%�}A��R�q���^�ɽ�S*YRJGr0�<#$���T���T�h��2r9D}���A��D���,�mJ�?%/UJ9�GeO� Y l�`�W�p�����ߟ��G�ġ���Q<*���2l	N��xT4rȊ�xT��P�&b�G��)���u��g��!XH�C)�b����O��XT`��f��R<*D���^�?X�GE�bh�	�O��xT"����~�oJ�?�D٨�f�`R�\,s���:��������l~���݇�_4:{ٔ<0k�����|�N���א8iv�bQ�Bz8��'���b-j�E�|<�'7<<��~��A��ld���W���L���汞8�� β,>K�b_|H���MY"˒;MgR�.�;�f��vE�R��</�f�_�On�nC�vߟ��P(��	��l'�͡2g��=��$;{�oг�xKq��*z.������6�$�S"��F֒!���!�\r��&���IO20���	dZ�w�i=4u����I]rÁS�Y�e�`)��d��)���n'��wX>p��(nb��к�fՇ=��r=�S��a���ފ�&h�(�{�CҺ��(G��u��*���z����I����<�/>�I����}�4����p)�}�?k8�B�����x��$�\���!�3��0�k,���$ח7Fϫb)wD��yM}d���=ֲ��(��.�=�Y�����ԯ@����t��p�?�qi)�W5Zy��,�F�4w����ӈH]Ԫ��6�Z�ch�gR��$Ç�V/]!��
�rͤ����t?^�G��e���'7�o$�b�(V�Mk������nl�B�9�f�I�W��Cg�m�������v���P�{6��n�\p6�S�b��7��)����>q�ݽ�86�+�;��_1�Bf�h"_��گ�&�I,Z���V��.�^/�x6��{���9�a'	\"9|��31�߼G�@�\S�|��J��&S�nz��gu<֎N��N�y�Jo ��QIڳ��X��h`�+K��h��%P3�J���a�T/hf�B ~��?��_h��Ls�X�J��`�X��0q��s̫T�f~�Bb�a��X!$?�vق��.߿h+@:��8hГ(��<R+�e�����u��Ǭ��|���2�Q�&��
� �W�x�̫R��	 ���<6U���yrRt��K1|;�u%
���
@��Ղ�
%���1��"'��	#�c��P!�;�G�x]�=ݫ�V�*F?Z)$���q$�9w�"7����@��
2�`r
"����Oo�[)�Ӿ��R��}:��P��>���Z�w�mX��0ƣn�:��)%HPܐ Iz܍,SÀ^��~��Va��s�G����]�I)q�I�6�}}ޕ�%G�������:h�}Q����SF��	1r�����|z���joCxZ�?h���X6���i�Q�9���k`��KZ�r�,��A3��`��ckn0����h����N�����5->�Z�#vd�}t���C���F�O��-�	��fu	��/����")^��H��:WQFa@ϓ7�{/6"�����_,���`��Ѻ�<����m޵�֩�4Y�E�J� ��BA�ba��F˥	���R)�x���z��9�2��>����ؾ?��Ht?rjv�D3M�壉R�:Hk*��i�0���14���@Bo�B�t9��^���عj�X<:��-;���J���Q�|Rl��)��d-dJ[�x�uƗm+ҫ(h��񛉕[֍Ż)�̌��DVC��'�x��BkdU��؎��jلoc��Υ��#��8�6b����Ln�X�.I����L>����Av�f���ⱌlP߾�K��`j��,���>!����|�n�o�`k���X�NG/H�.`�P.���*7M���9��8h�80�0�u3�������˗����      %      x������ � �      #   �   x�-ͱ�0���0������������69��<��8~��K���nM����	��bcu� eџ��U4{�.T�f�E.v��)Xt��+�\��ғ�l�)�� ��k0�����F:�K��
�S�)�ƀ���8%�.����z�� �	G<�         �   x����@Dk�C(�����8�J�%Y�XK�&(��yF~o�U��q�!���J����%N�`œ�R:[iw&���]5�	��͍.t�W��\��jw��o\�(t��݆�2� L��R�[�G��Ɩ-��"��K���93� �".         �   x�e���0Eg�C-�� $DYB1��J�8��{�L<V�����!͵��8u�(���ऍ�p1���nl�m"J���NKk]���EOe����[��qP\0.!��F�o���F�~a�0�-��p����geJ��}�^�����O~�����Q#�ЕkB���7s"��R�      !   �  x����nE������Pխ���" A"^fc� Old�H�^��!��l"�g�y#�g��Ω�����u?W�[�~�������GO7�wt&u?wϿ��9�}���}��r����s���P�����׻����|�ˊ�Є� ��
�3d �L�@SU��ƹ�������X�Xw���{����Z�vq{�@%<���ln�]�\u: ��Aߏc�?eH%1�Ў	Du�e��@�y��la #-���<ª�t 5NgLRm�-�P& v�	��Q���_���EFK-*�0N[17�N�Ц���b�$�q1MIJ,�)V��M
p�/C���|*]���yLU��������Pp�]��{��/"=�� ��3�:O�Q�&N4�L�0/QC���J�F��09�Ĩ�mh�^2m��s����M`�1\����
�ˎ+%Vu�%`�@x´���h*grw$5������b�.hW=��G������)G�+×d�i|�s��t�!Oob'|��ᑟf
��ǝ	����x��:R��/��8v�F��'��Bt�� m�9
�1���b�`�DA��y"����j���%�{ �K"RH`�
IL�l㚉���@L��&�D�*y"��h�$�$�I�
rwDW�<F�
|#R�<��v���=�#�$2I�}�ɬ*@�b�4�ՙ��ĕ1��n��y*� �Z�{cM� ���et:S�qA�Lo(o�~^e��YO���7��'����&��v1~M�XO
(���]���~�d��B�B��B�R����WO�?UF����������]���l�}���������W������E�f�������3	�*��ri�T�\�����R�1���D+�Az�������*�Ǝ�!tn�F�k���� !{&��^����>���:4V�HX7�y��4,r�HX����L�(�`�� �L�Wpf�hJ�Re��J���"�A�2�
2���)�GP�d�d�=A�@F��$n��.�GFhl6�,��#�l*��@6z�I}U%A�!��Gca+���g+��\2�*Ga�{EF"�
.��$�I8Ūv��-��g@7�+�(W@v"�Th)B�����mk��b�J��`�6�g"Q������u�I�28V��� �rR�Q�`�¤�tb%+��yV�R�*?S���D���5I�Uv�-5��n�$�I&�+�dY������\��$�E�N{	z]R5�<�=�,h�^7�TIy��%�u���}D���M��nk3�`Vu*4��q��l�QE��g�9�Tv�1�1/��u���T�s��<,m:.��{v�,s�Z�D-��W�u�\�^�W�l�4��l�M>i��{����.]8*[����f���IsI^��5|r��gq�,J/��`�Z���('���{4�9�Z=�����?E�W     