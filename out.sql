PGDMP         +                 v         
   cryptocoin    10.1    10.1 
    �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           1262    25040 
   cryptocoin    DATABASE     �   CREATE DATABASE cryptocoin WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE cryptocoin;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25041 	   usercoins    TABLE     �   CREATE TABLE usercoins (
    id integer,
    username character varying(255),
    password character varying(255),
    coinid text[]
);
    DROP TABLE public.usercoins;
       public         postgres    false    6            �
          0    25041 	   usercoins 
   TABLE DATA               <   COPY usercoins (id, username, password, coinid) FROM stdin;
    public       postgres    false    196          �
   s   x��M� ���Y��Ԟ ����.e�O�u��o���'Ms��*
k�d�Wh4�;��鵑ӑ���"�qZ�b}�<�Tj-wZ�u}�55g��YqH��m��?;��     