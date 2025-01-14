PGDMP                   	         {            sistem_informasi_siswa    15.1    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    sistem_informasi_siswa    DATABASE     �   CREATE DATABASE sistem_informasi_siswa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
 &   DROP DATABASE sistem_informasi_siswa;
                postgres    false            �            1259    16399 
   data_siswa    TABLE     �  CREATE TABLE public.data_siswa (
    id integer NOT NULL,
    nisn character varying(15),
    niss character varying(20),
    nama character varying(100),
    tanggal_lahir date,
    tempat_lahir character varying(100),
    alamat character varying(100),
    jenis_kelamin character varying(15),
    nama_orangtua character varying(100),
    asal_sekolah character varying(100),
    tahun_ijazah integer
);
    DROP TABLE public.data_siswa;
       public         heap    postgres    false            �            1259    16404    data_siswa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_siswa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.data_siswa_id_seq;
       public          postgres    false    214                       0    0    data_siswa_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.data_siswa_id_seq OWNED BY public.data_siswa.id;
          public          postgres    false    215            e           2604    16405    data_siswa id    DEFAULT     n   ALTER TABLE ONLY public.data_siswa ALTER COLUMN id SET DEFAULT nextval('public.data_siswa_id_seq'::regclass);
 <   ALTER TABLE public.data_siswa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �          0    16399 
   data_siswa 
   TABLE DATA           �   COPY public.data_siswa (id, nisn, niss, nama, tanggal_lahir, tempat_lahir, alamat, jenis_kelamin, nama_orangtua, asal_sekolah, tahun_ijazah) FROM stdin;
    public          postgres    false    214   �                  0    0    data_siswa_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.data_siswa_id_seq', 89, true);
          public          postgres    false    215            g           2606    16407    data_siswa data_siswa_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_siswa
    ADD CONSTRAINT data_siswa_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.data_siswa DROP CONSTRAINT data_siswa_pkey;
       public            postgres    false    214            i           2606    32795    data_siswa nisn 
   CONSTRAINT     J   ALTER TABLE ONLY public.data_siswa
    ADD CONSTRAINT nisn UNIQUE (nisn);
 9   ALTER TABLE ONLY public.data_siswa DROP CONSTRAINT nisn;
       public            postgres    false    214            k           2606    32797    data_siswa niss 
   CONSTRAINT     J   ALTER TABLE ONLY public.data_siswa
    ADD CONSTRAINT niss UNIQUE (niss);
 9   ALTER TABLE ONLY public.data_siswa DROP CONSTRAINT niss;
       public            postgres    false    214            �   �  x����r�8�������V�^ A�2)�I�C�J�Y�O;e�5�o�� x���L�I(u����ߍc�w]��|�;���v��/�f��:�,�"�Px�������E&�x��Xi�o�ע���6-�*��\�Q#�M�ى�����H6u~��(�*i��i�^j x�~໔��p��9	K��ꨑ��θ�6��Φ7�t?���qݏJ�DєS��jc \�v=�\`��.$��->	k'CQ���& �5�y��=~��_�]�G����u����A4r�ԾLK�F�j�,�B0���"�k;|d��v�(7�KIࠛ��MݔU(����^��eX�j_n>�]�avۨ� P<��>~;���o�
N#�0�Dc��C0-������ϏOV�@,��hA8�� c���wxR�/7V�}=��cK�1
E��4��nxt��{<<k�f��,�Ts�:�^gV%?����X���������u� �s'Q�ʢ��`�386χ�q68׳�E(Sa���W�1�C�rq��х��D��{���3���,�S���g�.�a���� �U$
+1q '�io+Q�BM�'-������^�1W���۷}��j��㶀��sٔV��¹f�X��o�Y[W��ɕe~�v �����"(i��:'��a�P�3m���?%s��kX��!���ڦ�핀@7b��r����!�`4m*O�2��t�̤�r��9�#�U�qU&� ��sx���|����ڊJ4S���Ĳ��cT���2;@�S���j3+<J�P�I�RB�,C%�7��o���ƲI ?cG�7�P�ۛ1*���N�1� �`��E(���6I@���\� �n ]��i����C�n��+��h�L�	9��;
�"B=��m�ی��!c��?������2h}�iɫT�����:"��H
����4b�Qg������v�����{Yox��������ǘ>������G�%?�/"n�iX@
@��-���0G�-����l !}MH�ab�S��q�E\��X��t,��ÍU��,�x�}�($�Q�'?VS|�8#�U)�|��"��u�<A�uxv��h�@,�R�
W�E]���
�ϧ��Ga�m�J�'���I28\��F���z�^�q%�k!��hf� �c�!�|�J� �o��Ui6kt��¨x"UT�&��M<����#�%4���(���y�m�I�S�)V$CL��p�i<K� ���lz~x}��s�ͯ��� �R,
a�HM�<F(�Cj���A��>A�Vcf���P5�����)7G	MF� p1=r��܋�J�F�U9X�������㯧�^Q=w/j
ܝ�>�F�K�������L�5��ƠK�v�J���L�(�3�M�5��߰���FP���?����h܉[��-jf9��&3���j�u�.�D�'JQ2P�6Qg�H��	�t �yOD�XEf�:��1ݝ����R��`�(�S���,o���D��SSC��ī���*�Aa*Qa�I�<B~|}kNJ�:_�f�1W�� �*S��1N��L�t�T�����)�Ǩ� �asP��Τ�pS=�:�d�5����~!�#J��M��wz6�\�C ���~pf��)��Ya�gT��b5`�h#�}e���V4m��Ĕ��u���#o^zC�"����(w���0� �E�~��qMFnϏwO+� M]'ټ�6��ù�^w�}�f�N��xo�r2v�ٖqYi(��L�=vV�Au�wN�U����<�p�p�`QMp8�L �=f�nY+��� �e�*eH=J�S0�4�r� >�G��FE�Ϻ�VGY���g1ƺ
�ks��h�h�%�.���i��� L��MU�fVX��iZ��l�GIT�db=�����\%=J�'*w��A`ܩ� 
����?��=fL��_7az~pV�G�r�ʢ(\G�F=c��{�)A^��-`t Ǟ����^���m�$�l�w�<����h]�N�	�Jp2��L&��Kg�@�<���B�䠥�Mҟ�����h<@�v��mt�Gs��:�ؓ���_��y�'�����XN�a�z*����"�\}��K�b��Q��1������}^{Sc�Z���KЈ_V~�ŅN���[PJ��[�ָ\�
���2�pY����U2�p0�_s):�Q���T�1Qgs
���B
���tڦm2.���0Ok����:)�2tAC0�Gd�D=�B�T/HT����{���@��
����}�Q� `4��`����: ��S��OVŘ��~�,8�S����*�f�2�����N(�Yq�I߶	r�u��xR�H��8��cv�FMR��#�I�	�~��m��рB��ѶfbŚ�Yt�p�r��C��Ӂa�Zw���7��ظ9�%����D�_�&�=�;����S�2ғhz�%���{���Be!$�Cg�����8�)X�I�ԘW#�0('$���$�y�Z��T���La�iQ����7��.���Y&Ì�6�1".wm�|���6 ��<���z�kDM�.R�P�s��Kg�:�tEch�8m�bW��a]�l����+�	����#}	��R�$\QV �o���c��(�8��P�az�}��ֳUS�A�D�YR� ����-��v		=��g�
�'��,z�O�*�-8m��\&k]C� �����c��I�3Y%w�ݢ�s���:fnt�Nܹ��<�;�,�*se���=�q��$&G�>��SCi.��4Nu�O��z�Тcy��0��!Hfb���M���l.���H#��j�y���,0���y�����kXѿ�g�o�+!8�^-1�X���a/�;=N4��8d	b �	��}o��{�{]��A�@�.�u���Q��6qm�+n�'��E�� �b���Se~�����)�\4v���;#���v'���x]ǩF�~y(�&�ދAL���|�Y �^V�'ot�V�9g��ӳ;9��DS�*�dV�z38�_�\�֯pW `��iY{P���d�)�y�x�Ͷ��նo�8Ո�*N1p#�n� ��}+��SCDd#�<�E��猡�ǝ�
<�x�j!T��
�v�����z�w	c=�k=N������Y7Y�o���CQ3��=�)=��u�jhV%naP#ޝT��r2��u�}����_���ֶ	W�×��`uK؄�%%^�q�1Y#�qY.p�"�n3����.ئL��y�+��Y�WRP��(łw�jp�M0h���]�j@�ٟ�:?�~_����3��^}ET��X�xaǩ&��e�����>@�]��t�}���ۋ��-�P��wk�WW��݁�A��������Nn+�ӌ��P�;�VeZ����iW>�S�ZGI5"��?��= ~0��P�����0�������Y��U! &���G�E��'[�D�3��%�J�*�rsx ��H}Y��+���Fd�9���GD2�ȏ��܊����Z܋�	8�{���_���������7}c鋂$��<�5��q�!y�Y���C��P���Kdw�����W���VsvS(/6�����.��o�R��8���u������ U4�/����EM��>�Wٓb@62��"�Z��8s��ju%�����w��ww���o����-��OC�HA�)�)~�W� ��=$�b�h�K��o>|��?GѠ     