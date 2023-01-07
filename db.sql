PGDMP                          {            sistem_informasi_siswa    14.0    14.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41055    sistem_informasi_siswa    DATABASE     v   CREATE DATABASE sistem_informasi_siswa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
 &   DROP DATABASE sistem_informasi_siswa;
                postgres    false            �            1259    41074 
   data_siswa    TABLE     �  CREATE TABLE public.data_siswa (
    id integer NOT NULL,
    nisn numeric NOT NULL,
    niss numeric NOT NULL,
    nama character varying(100) NOT NULL,
    tanggal_lahir date NOT NULL,
    tempat_lahir character varying(100) NOT NULL,
    alamat character varying(100) NOT NULL,
    jenis_kelamin character varying(15) NOT NULL,
    nama_orangtua character varying(100) NOT NULL,
    asal_sekolah character varying(100) NOT NULL,
    tahun_ijazah integer
);
    DROP TABLE public.data_siswa;
       public         heap    postgres    false            �            1259    41073    data_siswa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_siswa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.data_siswa_id_seq;
       public          postgres    false    210            �           0    0    data_siswa_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.data_siswa_id_seq OWNED BY public.data_siswa.id;
          public          postgres    false    209            \           2604    41077    data_siswa id    DEFAULT     n   ALTER TABLE ONLY public.data_siswa ALTER COLUMN id SET DEFAULT nextval('public.data_siswa_id_seq'::regclass);
 <   ALTER TABLE public.data_siswa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    41074 
   data_siswa 
   TABLE DATA           �   COPY public.data_siswa (id, nisn, niss, nama, tanggal_lahir, tempat_lahir, alamat, jenis_kelamin, nama_orangtua, asal_sekolah, tahun_ijazah) FROM stdin;
    public          postgres    false    210   �       �           0    0    data_siswa_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_siswa_id_seq', 7, true);
          public          postgres    false    209            ^           2606    41081    data_siswa data_siswa_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_siswa
    ADD CONSTRAINT data_siswa_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.data_siswa DROP CONSTRAINT data_siswa_pkey;
       public            postgres    false    210            `           2606    41087    data_siswa nisn 
   CONSTRAINT     J   ALTER TABLE ONLY public.data_siswa
    ADD CONSTRAINT nisn UNIQUE (nisn);
 9   ALTER TABLE ONLY public.data_siswa DROP CONSTRAINT nisn;
       public            postgres    false    210            b           2606    41097    data_siswa niss 
   CONSTRAINT     J   ALTER TABLE ONLY public.data_siswa
    ADD CONSTRAINT niss UNIQUE (niss);
 9   ALTER TABLE ONLY public.data_siswa DROP CONSTRAINT niss;
       public            postgres    false    210            �   f   x�3�4426153��4B0�L9s2�2�3�9�u�t�8���9�K��Js39���L����Ԝ�L�Dnb����sfq~N~6P��W� ���     