PGDMP                     	    x            AseguradoraDB    12.2    12.2 {    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41010    AseguradoraDB    DATABASE     �   CREATE DATABASE "AseguradoraDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Argentina.1252' LC_CTYPE = 'Spanish_Argentina.1252';
    DROP DATABASE "AseguradoraDB";
                postgres    false            �            1259    41024    Agencia    TABLE     �  CREATE TABLE public."Agencia" (
    "idAgencia" integer NOT NULL,
    nombre character varying(200),
    "alturaAgencia" integer,
    "calleAgencia" character varying(200),
    "ciudadAgencia" character varying(200),
    "provinciaAgencia" character varying(200),
    "paisAgencia" character varying(200),
    "codigoPostalAgencia" integer,
    "latitudAgencia" real,
    "longitudAgencia" real
);
    DROP TABLE public."Agencia";
       public         heap    postgres    false            �            1259    41022    Agencia_idAgencia_seq    SEQUENCE     �   CREATE SEQUENCE public."Agencia_idAgencia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Agencia_idAgencia_seq";
       public          postgres    false    205            �           0    0    Agencia_idAgencia_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Agencia_idAgencia_seq" OWNED BY public."Agencia"."idAgencia";
          public          postgres    false    204            �            1259    41064 	   Asegurado    TABLE     "  CREATE TABLE public."Asegurado" (
    "idAsegurado" integer NOT NULL,
    nombre character varying(100),
    apellido character varying(100),
    dni integer,
    telefono integer,
    correo character varying(200),
    domicilio character varying(200),
    "idUsuario" integer NOT NULL
);
    DROP TABLE public."Asegurado";
       public         heap    postgres    false            �            1259    41062    Asegurado_idAsegurado_seq    SEQUENCE     �   CREATE SEQUENCE public."Asegurado_idAsegurado_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Asegurado_idAsegurado_seq";
       public          postgres    false    209            �           0    0    Asegurado_idAsegurado_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Asegurado_idAsegurado_seq" OWNED BY public."Asegurado"."idAsegurado";
          public          postgres    false    208            �            1259    41088 	   Cobertura    TABLE     �   CREATE TABLE public."Cobertura" (
    "idCobertura" integer NOT NULL,
    "tarifaActual" real,
    "nombreCobertura" character varying(200)
);
    DROP TABLE public."Cobertura";
       public         heap    postgres    false            �            1259    41086    Cobertura_idCobertura_seq    SEQUENCE     �   CREATE SEQUENCE public."Cobertura_idCobertura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Cobertura_idCobertura_seq";
       public          postgres    false    213            �           0    0    Cobertura_idCobertura_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Cobertura_idCobertura_seq" OWNED BY public."Cobertura"."idCobertura";
          public          postgres    false    212            �            1259    41240    DetalleSiniestro    TABLE     �   CREATE TABLE public."DetalleSiniestro" (
    "idDetalleSiniestro" integer NOT NULL,
    "idSiniestro" integer NOT NULL,
    "confirmacionDetalleSiniestro" boolean,
    "idIncidente" integer NOT NULL
);
 &   DROP TABLE public."DetalleSiniestro";
       public         heap    postgres    false            �            1259    41238 '   DetalleSiniestro_idDetalleSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."DetalleSiniestro_idDetalleSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."DetalleSiniestro_idDetalleSiniestro_seq";
       public          postgres    false    228            �           0    0 '   DetalleSiniestro_idDetalleSiniestro_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."DetalleSiniestro_idDetalleSiniestro_seq" OWNED BY public."DetalleSiniestro"."idDetalleSiniestro";
          public          postgres    false    227            �            1259    41227    EstadoSiniestro    TABLE     �   CREATE TABLE public."EstadoSiniestro" (
    "idEstadoSiniestro" integer NOT NULL,
    "idSiniestro" integer NOT NULL,
    "nombreEstado" character varying(100)
);
 %   DROP TABLE public."EstadoSiniestro";
       public         heap    postgres    false            �            1259    41225 %   EstadoSiniestro_idEstadoSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."EstadoSiniestro_idEstadoSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."EstadoSiniestro_idEstadoSiniestro_seq";
       public          postgres    false    226            �           0    0 %   EstadoSiniestro_idEstadoSiniestro_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."EstadoSiniestro_idEstadoSiniestro_seq" OWNED BY public."EstadoSiniestro"."idEstadoSiniestro";
          public          postgres    false    225            �            1259    41174 	   Incidente    TABLE     �   CREATE TABLE public."Incidente" (
    "idIncidente" integer NOT NULL,
    "descripcionIncidente" character varying(200),
    "idTipoSiniestro" integer NOT NULL
);
    DROP TABLE public."Incidente";
       public         heap    postgres    false            �            1259    41172    Incidente_idIncidente_seq    SEQUENCE     �   CREATE SEQUENCE public."Incidente_idIncidente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Incidente_idIncidente_seq";
       public          postgres    false    221            �           0    0    Incidente_idIncidente_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Incidente_idIncidente_seq" OWNED BY public."Incidente"."idIncidente";
          public          postgres    false    220            �            1259    41263    Mensaje    TABLE     �   CREATE TABLE public."Mensaje" (
    "idMensaje" integer NOT NULL,
    cuerpo text,
    "idUsuarioReceptor" integer NOT NULL,
    "idUsuarioEmisor" integer NOT NULL,
    fecha timestamp without time zone,
    "idSiniestro" integer
);
    DROP TABLE public."Mensaje";
       public         heap    postgres    false            �            1259    41261    Mensaje_idMensaje_seq    SEQUENCE     �   CREATE SEQUENCE public."Mensaje_idMensaje_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Mensaje_idMensaje_seq";
       public          postgres    false    230            �           0    0    Mensaje_idMensaje_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Mensaje_idMensaje_seq" OWNED BY public."Mensaje"."idMensaje";
          public          postgres    false    229            �            1259    41096    Poliza    TABLE     �   CREATE TABLE public."Poliza" (
    "idPoliza" integer NOT NULL,
    "fechaDeContratacion" date,
    "fechaDeRenovacion" date,
    tarifa real,
    "idVehiculo" integer NOT NULL,
    "idCobertura" integer NOT NULL,
    "idAsegurado" integer NOT NULL
);
    DROP TABLE public."Poliza";
       public         heap    postgres    false            �            1259    41094    Poliza_idPoliza_seq    SEQUENCE     �   CREATE SEQUENCE public."Poliza_idPoliza_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Poliza_idPoliza_seq";
       public          postgres    false    215            �           0    0    Poliza_idPoliza_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Poliza_idPoliza_seq" OWNED BY public."Poliza"."idPoliza";
          public          postgres    false    214            �            1259    41130 	   Siniestro    TABLE       CREATE TABLE public."Siniestro" (
    "idSiniestro" integer NOT NULL,
    fecha date,
    hora time without time zone,
    descripcion text,
    "idUbicacion" integer NOT NULL,
    "idPoliza" integer NOT NULL,
    "idTipoSiniestro" integer NOT NULL,
    "idAgencia" integer NOT NULL
);
    DROP TABLE public."Siniestro";
       public         heap    postgres    false            �            1259    41128    Siniestro_idSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."Siniestro_idSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Siniestro_idSiniestro_seq";
       public          postgres    false    219            �           0    0    Siniestro_idSiniestro_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Siniestro_idSiniestro_seq" OWNED BY public."Siniestro"."idSiniestro";
          public          postgres    false    218            �            1259    41080    TipoSiniestro    TABLE     }   CREATE TABLE public."TipoSiniestro" (
    "idTipoSiniestro" integer NOT NULL,
    "hechoGenerador" character varying(200)
);
 #   DROP TABLE public."TipoSiniestro";
       public         heap    postgres    false            �            1259    41207    TipoSiniestroCobertura    TABLE     }   CREATE TABLE public."TipoSiniestroCobertura" (
    "idTipoSiniestro" integer NOT NULL,
    "idCobertura" integer NOT NULL
);
 ,   DROP TABLE public."TipoSiniestroCobertura";
       public         heap    postgres    false            �            1259    41205 &   TipoSiniestroCobertura_idCobertura_seq    SEQUENCE     �   CREATE SEQUENCE public."TipoSiniestroCobertura_idCobertura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."TipoSiniestroCobertura_idCobertura_seq";
       public          postgres    false    224            �           0    0 &   TipoSiniestroCobertura_idCobertura_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."TipoSiniestroCobertura_idCobertura_seq" OWNED BY public."TipoSiniestroCobertura"."idCobertura";
          public          postgres    false    223            �            1259    41203 *   TipoSiniestroCobertura_idTipoSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."TipoSiniestroCobertura_idTipoSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."TipoSiniestroCobertura_idTipoSiniestro_seq";
       public          postgres    false    224            �           0    0 *   TipoSiniestroCobertura_idTipoSiniestro_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."TipoSiniestroCobertura_idTipoSiniestro_seq" OWNED BY public."TipoSiniestroCobertura"."idTipoSiniestro";
          public          postgres    false    222            �            1259    41078 !   TipoSiniestro_idTipoSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."TipoSiniestro_idTipoSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."TipoSiniestro_idTipoSiniestro_seq";
       public          postgres    false    211            �           0    0 !   TipoSiniestro_idTipoSiniestro_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."TipoSiniestro_idTipoSiniestro_seq" OWNED BY public."TipoSiniestro"."idTipoSiniestro";
          public          postgres    false    210            �            1259    41119 	   Ubicacion    TABLE     $  CREATE TABLE public."Ubicacion" (
    "idUbicacion" integer NOT NULL,
    latitud real,
    longitud real,
    altura integer,
    ciudad character varying(200),
    provincia character varying(200),
    pais character varying(200),
    "codigoPostal" integer,
    calle character varying
);
    DROP TABLE public."Ubicacion";
       public         heap    postgres    false            �            1259    41117    Ubicacion_idUbicacion_seq    SEQUENCE     �   CREATE SEQUENCE public."Ubicacion_idUbicacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Ubicacion_idUbicacion_seq";
       public          postgres    false    217            �           0    0    Ubicacion_idUbicacion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Ubicacion_idUbicacion_seq" OWNED BY public."Ubicacion"."idUbicacion";
          public          postgres    false    216            �            1259    41035    Usuario    TABLE     �   CREATE TABLE public."Usuario" (
    "idUsuario" integer NOT NULL,
    "nombreUsuario" character varying(100),
    contrasenia character varying(30)
);
    DROP TABLE public."Usuario";
       public         heap    postgres    false            �            1259    41033    Usuario_idUsuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_idUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Usuario_idUsuario_seq";
       public          postgres    false    207            �           0    0    Usuario_idUsuario_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Usuario_idUsuario_seq" OWNED BY public."Usuario"."idUsuario";
          public          postgres    false    206            �            1259    41013    Vehiculo    TABLE     c  CREATE TABLE public."Vehiculo" (
    "idVehiculo" integer NOT NULL,
    marca character varying(50),
    anio integer,
    modelo character varying(50),
    version character varying(200),
    "numeroDeChasis" character varying(100),
    "numeroDeMotor" character varying(100),
    "tipoDeUso" character varying(200),
    patente character varying(30)
);
    DROP TABLE public."Vehiculo";
       public         heap    postgres    false            �            1259    41011    Vehiculo_idVehiculo_seq    SEQUENCE     �   CREATE SEQUENCE public."Vehiculo_idVehiculo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Vehiculo_idVehiculo_seq";
       public          postgres    false    203            �           0    0    Vehiculo_idVehiculo_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Vehiculo_idVehiculo_seq" OWNED BY public."Vehiculo"."idVehiculo";
          public          postgres    false    202            �
           2604    41027    Agencia idAgencia    DEFAULT     |   ALTER TABLE ONLY public."Agencia" ALTER COLUMN "idAgencia" SET DEFAULT nextval('public."Agencia_idAgencia_seq"'::regclass);
 D   ALTER TABLE public."Agencia" ALTER COLUMN "idAgencia" DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    41067    Asegurado idAsegurado    DEFAULT     �   ALTER TABLE ONLY public."Asegurado" ALTER COLUMN "idAsegurado" SET DEFAULT nextval('public."Asegurado_idAsegurado_seq"'::regclass);
 H   ALTER TABLE public."Asegurado" ALTER COLUMN "idAsegurado" DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    41091    Cobertura idCobertura    DEFAULT     �   ALTER TABLE ONLY public."Cobertura" ALTER COLUMN "idCobertura" SET DEFAULT nextval('public."Cobertura_idCobertura_seq"'::regclass);
 H   ALTER TABLE public."Cobertura" ALTER COLUMN "idCobertura" DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    41243 #   DetalleSiniestro idDetalleSiniestro    DEFAULT     �   ALTER TABLE ONLY public."DetalleSiniestro" ALTER COLUMN "idDetalleSiniestro" SET DEFAULT nextval('public."DetalleSiniestro_idDetalleSiniestro_seq"'::regclass);
 V   ALTER TABLE public."DetalleSiniestro" ALTER COLUMN "idDetalleSiniestro" DROP DEFAULT;
       public          postgres    false    228    227    228            �
           2604    41230 !   EstadoSiniestro idEstadoSiniestro    DEFAULT     �   ALTER TABLE ONLY public."EstadoSiniestro" ALTER COLUMN "idEstadoSiniestro" SET DEFAULT nextval('public."EstadoSiniestro_idEstadoSiniestro_seq"'::regclass);
 T   ALTER TABLE public."EstadoSiniestro" ALTER COLUMN "idEstadoSiniestro" DROP DEFAULT;
       public          postgres    false    225    226    226            �
           2604    41177    Incidente idIncidente    DEFAULT     �   ALTER TABLE ONLY public."Incidente" ALTER COLUMN "idIncidente" SET DEFAULT nextval('public."Incidente_idIncidente_seq"'::regclass);
 H   ALTER TABLE public."Incidente" ALTER COLUMN "idIncidente" DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    41266    Mensaje idMensaje    DEFAULT     |   ALTER TABLE ONLY public."Mensaje" ALTER COLUMN "idMensaje" SET DEFAULT nextval('public."Mensaje_idMensaje_seq"'::regclass);
 D   ALTER TABLE public."Mensaje" ALTER COLUMN "idMensaje" DROP DEFAULT;
       public          postgres    false    230    229    230            �
           2604    41099    Poliza idPoliza    DEFAULT     x   ALTER TABLE ONLY public."Poliza" ALTER COLUMN "idPoliza" SET DEFAULT nextval('public."Poliza_idPoliza_seq"'::regclass);
 B   ALTER TABLE public."Poliza" ALTER COLUMN "idPoliza" DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    41133    Siniestro idSiniestro    DEFAULT     �   ALTER TABLE ONLY public."Siniestro" ALTER COLUMN "idSiniestro" SET DEFAULT nextval('public."Siniestro_idSiniestro_seq"'::regclass);
 H   ALTER TABLE public."Siniestro" ALTER COLUMN "idSiniestro" DROP DEFAULT;
       public          postgres    false    219    218    219            �
           2604    41083    TipoSiniestro idTipoSiniestro    DEFAULT     �   ALTER TABLE ONLY public."TipoSiniestro" ALTER COLUMN "idTipoSiniestro" SET DEFAULT nextval('public."TipoSiniestro_idTipoSiniestro_seq"'::regclass);
 P   ALTER TABLE public."TipoSiniestro" ALTER COLUMN "idTipoSiniestro" DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    41210 &   TipoSiniestroCobertura idTipoSiniestro    DEFAULT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura" ALTER COLUMN "idTipoSiniestro" SET DEFAULT nextval('public."TipoSiniestroCobertura_idTipoSiniestro_seq"'::regclass);
 Y   ALTER TABLE public."TipoSiniestroCobertura" ALTER COLUMN "idTipoSiniestro" DROP DEFAULT;
       public          postgres    false    224    222    224            �
           2604    41211 "   TipoSiniestroCobertura idCobertura    DEFAULT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura" ALTER COLUMN "idCobertura" SET DEFAULT nextval('public."TipoSiniestroCobertura_idCobertura_seq"'::regclass);
 U   ALTER TABLE public."TipoSiniestroCobertura" ALTER COLUMN "idCobertura" DROP DEFAULT;
       public          postgres    false    224    223    224            �
           2604    41122    Ubicacion idUbicacion    DEFAULT     �   ALTER TABLE ONLY public."Ubicacion" ALTER COLUMN "idUbicacion" SET DEFAULT nextval('public."Ubicacion_idUbicacion_seq"'::regclass);
 H   ALTER TABLE public."Ubicacion" ALTER COLUMN "idUbicacion" DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    41038    Usuario idUsuario    DEFAULT     |   ALTER TABLE ONLY public."Usuario" ALTER COLUMN "idUsuario" SET DEFAULT nextval('public."Usuario_idUsuario_seq"'::regclass);
 D   ALTER TABLE public."Usuario" ALTER COLUMN "idUsuario" DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    41016    Vehiculo idVehiculo    DEFAULT     �   ALTER TABLE ONLY public."Vehiculo" ALTER COLUMN "idVehiculo" SET DEFAULT nextval('public."Vehiculo_idVehiculo_seq"'::regclass);
 F   ALTER TABLE public."Vehiculo" ALTER COLUMN "idVehiculo" DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    41024    Agencia 
   TABLE DATA           �   COPY public."Agencia" ("idAgencia", nombre, "alturaAgencia", "calleAgencia", "ciudadAgencia", "provinciaAgencia", "paisAgencia", "codigoPostalAgencia", "latitudAgencia", "longitudAgencia") FROM stdin;
    public          postgres    false    205   ��       �          0    41064 	   Asegurado 
   TABLE DATA           u   COPY public."Asegurado" ("idAsegurado", nombre, apellido, dni, telefono, correo, domicilio, "idUsuario") FROM stdin;
    public          postgres    false    209   4�       �          0    41088 	   Cobertura 
   TABLE DATA           W   COPY public."Cobertura" ("idCobertura", "tarifaActual", "nombreCobertura") FROM stdin;
    public          postgres    false    213   ҡ       �          0    41240    DetalleSiniestro 
   TABLE DATA           �   COPY public."DetalleSiniestro" ("idDetalleSiniestro", "idSiniestro", "confirmacionDetalleSiniestro", "idIncidente") FROM stdin;
    public          postgres    false    228   �       �          0    41227    EstadoSiniestro 
   TABLE DATA           _   COPY public."EstadoSiniestro" ("idEstadoSiniestro", "idSiniestro", "nombreEstado") FROM stdin;
    public          postgres    false    226   F�       �          0    41174 	   Incidente 
   TABLE DATA           _   COPY public."Incidente" ("idIncidente", "descripcionIncidente", "idTipoSiniestro") FROM stdin;
    public          postgres    false    221   ��       �          0    41263    Mensaje 
   TABLE DATA           v   COPY public."Mensaje" ("idMensaje", cuerpo, "idUsuarioReceptor", "idUsuarioEmisor", fecha, "idSiniestro") FROM stdin;
    public          postgres    false    230   3�       �          0    41096    Poliza 
   TABLE DATA           �   COPY public."Poliza" ("idPoliza", "fechaDeContratacion", "fechaDeRenovacion", tarifa, "idVehiculo", "idCobertura", "idAsegurado") FROM stdin;
    public          postgres    false    215   �       �          0    41130 	   Siniestro 
   TABLE DATA           �   COPY public."Siniestro" ("idSiniestro", fecha, hora, descripcion, "idUbicacion", "idPoliza", "idTipoSiniestro", "idAgencia") FROM stdin;
    public          postgres    false    219   M�       �          0    41080    TipoSiniestro 
   TABLE DATA           N   COPY public."TipoSiniestro" ("idTipoSiniestro", "hechoGenerador") FROM stdin;
    public          postgres    false    211   !�       �          0    41207    TipoSiniestroCobertura 
   TABLE DATA           T   COPY public."TipoSiniestroCobertura" ("idTipoSiniestro", "idCobertura") FROM stdin;
    public          postgres    false    224   ��       �          0    41119 	   Ubicacion 
   TABLE DATA              COPY public."Ubicacion" ("idUbicacion", latitud, longitud, altura, ciudad, provincia, pais, "codigoPostal", calle) FROM stdin;
    public          postgres    false    217   ܪ       �          0    41035    Usuario 
   TABLE DATA           N   COPY public."Usuario" ("idUsuario", "nombreUsuario", contrasenia) FROM stdin;
    public          postgres    false    207   a�       �          0    41013    Vehiculo 
   TABLE DATA           �   COPY public."Vehiculo" ("idVehiculo", marca, anio, modelo, version, "numeroDeChasis", "numeroDeMotor", "tipoDeUso", patente) FROM stdin;
    public          postgres    false    203   ��       �           0    0    Agencia_idAgencia_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Agencia_idAgencia_seq"', 2, true);
          public          postgres    false    204            �           0    0    Asegurado_idAsegurado_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Asegurado_idAsegurado_seq"', 2, true);
          public          postgres    false    208            �           0    0    Cobertura_idCobertura_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Cobertura_idCobertura_seq"', 2, true);
          public          postgres    false    212            �           0    0 '   DetalleSiniestro_idDetalleSiniestro_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."DetalleSiniestro_idDetalleSiniestro_seq"', 4, true);
          public          postgres    false    227            �           0    0 %   EstadoSiniestro_idEstadoSiniestro_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."EstadoSiniestro_idEstadoSiniestro_seq"', 3, true);
          public          postgres    false    225            �           0    0    Incidente_idIncidente_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Incidente_idIncidente_seq"', 2, true);
          public          postgres    false    220            �           0    0    Mensaje_idMensaje_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Mensaje_idMensaje_seq"', 3, true);
          public          postgres    false    229            �           0    0    Poliza_idPoliza_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Poliza_idPoliza_seq"', 2, true);
          public          postgres    false    214            �           0    0    Siniestro_idSiniestro_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Siniestro_idSiniestro_seq"', 6, true);
          public          postgres    false    218            �           0    0 &   TipoSiniestroCobertura_idCobertura_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."TipoSiniestroCobertura_idCobertura_seq"', 1, false);
          public          postgres    false    223            �           0    0 *   TipoSiniestroCobertura_idTipoSiniestro_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."TipoSiniestroCobertura_idTipoSiniestro_seq"', 1, false);
          public          postgres    false    222            �           0    0 !   TipoSiniestro_idTipoSiniestro_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TipoSiniestro_idTipoSiniestro_seq"', 8, true);
          public          postgres    false    210            �           0    0    Ubicacion_idUbicacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Ubicacion_idUbicacion_seq"', 2, true);
          public          postgres    false    216            �           0    0    Usuario_idUsuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Usuario_idUsuario_seq"', 2, true);
          public          postgres    false    206            �           0    0    Vehiculo_idVehiculo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Vehiculo_idVehiculo_seq"', 2, true);
          public          postgres    false    202            �
           2606    41032    Agencia Agencia_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Agencia"
    ADD CONSTRAINT "Agencia_pkey" PRIMARY KEY ("idAgencia");
 B   ALTER TABLE ONLY public."Agencia" DROP CONSTRAINT "Agencia_pkey";
       public            postgres    false    205            �
           2606    41072    Asegurado Asegurado_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Asegurado"
    ADD CONSTRAINT "Asegurado_pkey" PRIMARY KEY ("idAsegurado");
 F   ALTER TABLE ONLY public."Asegurado" DROP CONSTRAINT "Asegurado_pkey";
       public            postgres    false    209            �
           2606    41093    Cobertura Cobertura_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Cobertura"
    ADD CONSTRAINT "Cobertura_pkey" PRIMARY KEY ("idCobertura");
 F   ALTER TABLE ONLY public."Cobertura" DROP CONSTRAINT "Cobertura_pkey";
       public            postgres    false    213            �
           2606    41245 &   DetalleSiniestro DetalleSiniestro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."DetalleSiniestro"
    ADD CONSTRAINT "DetalleSiniestro_pkey" PRIMARY KEY ("idDetalleSiniestro", "idSiniestro");
 T   ALTER TABLE ONLY public."DetalleSiniestro" DROP CONSTRAINT "DetalleSiniestro_pkey";
       public            postgres    false    228    228            �
           2606    41232 $   EstadoSiniestro EstadoSiniestro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."EstadoSiniestro"
    ADD CONSTRAINT "EstadoSiniestro_pkey" PRIMARY KEY ("idEstadoSiniestro", "idSiniestro");
 R   ALTER TABLE ONLY public."EstadoSiniestro" DROP CONSTRAINT "EstadoSiniestro_pkey";
       public            postgres    false    226    226            �
           2606    41179    Incidente Incidente_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Incidente"
    ADD CONSTRAINT "Incidente_pkey" PRIMARY KEY ("idIncidente");
 F   ALTER TABLE ONLY public."Incidente" DROP CONSTRAINT "Incidente_pkey";
       public            postgres    false    221            �
           2606    41271    Mensaje Mensaje_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Mensaje"
    ADD CONSTRAINT "Mensaje_pkey" PRIMARY KEY ("idMensaje");
 B   ALTER TABLE ONLY public."Mensaje" DROP CONSTRAINT "Mensaje_pkey";
       public            postgres    false    230            �
           2606    41101    Poliza Poliza_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Poliza"
    ADD CONSTRAINT "Poliza_pkey" PRIMARY KEY ("idPoliza");
 @   ALTER TABLE ONLY public."Poliza" DROP CONSTRAINT "Poliza_pkey";
       public            postgres    false    215            �
           2606    41138    Siniestro Siniestro_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_pkey" PRIMARY KEY ("idSiniestro");
 F   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_pkey";
       public            postgres    false    219            �
           2606    41213 2   TipoSiniestroCobertura TipoSiniestroCobertura_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura"
    ADD CONSTRAINT "TipoSiniestroCobertura_pkey" PRIMARY KEY ("idTipoSiniestro", "idCobertura");
 `   ALTER TABLE ONLY public."TipoSiniestroCobertura" DROP CONSTRAINT "TipoSiniestroCobertura_pkey";
       public            postgres    false    224    224            �
           2606    41085     TipoSiniestro TipoSiniestro_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TipoSiniestro"
    ADD CONSTRAINT "TipoSiniestro_pkey" PRIMARY KEY ("idTipoSiniestro");
 N   ALTER TABLE ONLY public."TipoSiniestro" DROP CONSTRAINT "TipoSiniestro_pkey";
       public            postgres    false    211            �
           2606    41127    Ubicacion Ubicacion_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Ubicacion"
    ADD CONSTRAINT "Ubicacion_pkey" PRIMARY KEY ("idUbicacion");
 F   ALTER TABLE ONLY public."Ubicacion" DROP CONSTRAINT "Ubicacion_pkey";
       public            postgres    false    217            �
           2606    41040    Usuario Usuario_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY ("idUsuario");
 B   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "Usuario_pkey";
       public            postgres    false    207            �
           2606    41021    Vehiculo Vehiculo_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Vehiculo"
    ADD CONSTRAINT "Vehiculo_pkey" PRIMARY KEY ("idVehiculo");
 D   ALTER TABLE ONLY public."Vehiculo" DROP CONSTRAINT "Vehiculo_pkey";
       public            postgres    false    203                       2606    41282 !   Mensaje 	Mensaje_idSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mensaje"
    ADD CONSTRAINT "	Mensaje_idSiniestro_fkey" FOREIGN KEY ("idSiniestro") REFERENCES public."Siniestro"("idSiniestro") NOT VALID;
 O   ALTER TABLE ONLY public."Mensaje" DROP CONSTRAINT "	Mensaje_idSiniestro_fkey";
       public          postgres    false    219    2805    230                        2606    41073 "   Asegurado Asegurado_idUsuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Asegurado"
    ADD CONSTRAINT "Asegurado_idUsuario_fkey" FOREIGN KEY ("idUsuario") REFERENCES public."Usuario"("idUsuario");
 P   ALTER TABLE ONLY public."Asegurado" DROP CONSTRAINT "Asegurado_idUsuario_fkey";
       public          postgres    false    209    2793    207                       2606    41251 2   DetalleSiniestro DetalleSiniestro_idIncidente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DetalleSiniestro"
    ADD CONSTRAINT "DetalleSiniestro_idIncidente_fkey" FOREIGN KEY ("idIncidente") REFERENCES public."Incidente"("idIncidente");
 `   ALTER TABLE ONLY public."DetalleSiniestro" DROP CONSTRAINT "DetalleSiniestro_idIncidente_fkey";
       public          postgres    false    2807    221    228                       2606    41246 2   DetalleSiniestro DetalleSiniestro_idSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DetalleSiniestro"
    ADD CONSTRAINT "DetalleSiniestro_idSiniestro_fkey" FOREIGN KEY ("idSiniestro") REFERENCES public."Siniestro"("idSiniestro");
 `   ALTER TABLE ONLY public."DetalleSiniestro" DROP CONSTRAINT "DetalleSiniestro_idSiniestro_fkey";
       public          postgres    false    228    2805    219                       2606    41233 0   EstadoSiniestro EstadoSiniestro_idSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EstadoSiniestro"
    ADD CONSTRAINT "EstadoSiniestro_idSiniestro_fkey" FOREIGN KEY ("idSiniestro") REFERENCES public."Siniestro"("idSiniestro");
 ^   ALTER TABLE ONLY public."EstadoSiniestro" DROP CONSTRAINT "EstadoSiniestro_idSiniestro_fkey";
       public          postgres    false    219    226    2805                       2606    41180 (   Incidente Incidente_idTipoSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Incidente"
    ADD CONSTRAINT "Incidente_idTipoSiniestro_fkey" FOREIGN KEY ("idTipoSiniestro") REFERENCES public."TipoSiniestro"("idTipoSiniestro");
 V   ALTER TABLE ONLY public."Incidente" DROP CONSTRAINT "Incidente_idTipoSiniestro_fkey";
       public          postgres    false    221    2797    211                       2606    41277 $   Mensaje Mensaje_idUsuarioEmisor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mensaje"
    ADD CONSTRAINT "Mensaje_idUsuarioEmisor_fkey" FOREIGN KEY ("idUsuarioEmisor") REFERENCES public."Usuario"("idUsuario");
 R   ALTER TABLE ONLY public."Mensaje" DROP CONSTRAINT "Mensaje_idUsuarioEmisor_fkey";
       public          postgres    false    2793    230    207                       2606    41272 &   Mensaje Mensaje_idUsuarioReceptor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mensaje"
    ADD CONSTRAINT "Mensaje_idUsuarioReceptor_fkey" FOREIGN KEY ("idUsuarioReceptor") REFERENCES public."Usuario"("idUsuario");
 T   ALTER TABLE ONLY public."Mensaje" DROP CONSTRAINT "Mensaje_idUsuarioReceptor_fkey";
       public          postgres    false    207    230    2793                       2606    41112    Poliza Poliza_idAsegurado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Poliza"
    ADD CONSTRAINT "Poliza_idAsegurado_fkey" FOREIGN KEY ("idAsegurado") REFERENCES public."Asegurado"("idAsegurado");
 L   ALTER TABLE ONLY public."Poliza" DROP CONSTRAINT "Poliza_idAsegurado_fkey";
       public          postgres    false    215    2795    209                       2606    41107    Poliza Poliza_idCobertura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Poliza"
    ADD CONSTRAINT "Poliza_idCobertura_fkey" FOREIGN KEY ("idCobertura") REFERENCES public."Cobertura"("idCobertura");
 L   ALTER TABLE ONLY public."Poliza" DROP CONSTRAINT "Poliza_idCobertura_fkey";
       public          postgres    false    215    213    2799                       2606    41102    Poliza Poliza_idVehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Poliza"
    ADD CONSTRAINT "Poliza_idVehiculo_fkey" FOREIGN KEY ("idVehiculo") REFERENCES public."Vehiculo"("idVehiculo");
 K   ALTER TABLE ONLY public."Poliza" DROP CONSTRAINT "Poliza_idVehiculo_fkey";
       public          postgres    false    215    203    2789                       2606    41154 "   Siniestro Siniestro_idAgencia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_idAgencia_fkey" FOREIGN KEY ("idAgencia") REFERENCES public."Agencia"("idAgencia");
 P   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_idAgencia_fkey";
       public          postgres    false    205    2791    219                       2606    41144 !   Siniestro Siniestro_idPoliza_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_idPoliza_fkey" FOREIGN KEY ("idPoliza") REFERENCES public."Poliza"("idPoliza");
 O   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_idPoliza_fkey";
       public          postgres    false    2801    219    215                       2606    41256 (   Siniestro Siniestro_idTipoSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_idTipoSiniestro_fkey" FOREIGN KEY ("idTipoSiniestro") REFERENCES public."TipoSiniestro"("idTipoSiniestro") NOT VALID;
 V   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_idTipoSiniestro_fkey";
       public          postgres    false    211    2797    219                       2606    41139 $   Siniestro Siniestro_idUbicacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_idUbicacion_fkey" FOREIGN KEY ("idUbicacion") REFERENCES public."Ubicacion"("idUbicacion");
 R   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_idUbicacion_fkey";
       public          postgres    false    217    219    2803            
           2606    41219 >   TipoSiniestroCobertura TipoSiniestroCobertura_idCobertura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura"
    ADD CONSTRAINT "TipoSiniestroCobertura_idCobertura_fkey" FOREIGN KEY ("idCobertura") REFERENCES public."Cobertura"("idCobertura");
 l   ALTER TABLE ONLY public."TipoSiniestroCobertura" DROP CONSTRAINT "TipoSiniestroCobertura_idCobertura_fkey";
       public          postgres    false    224    2799    213            	           2606    41214 B   TipoSiniestroCobertura TipoSiniestroCobertura_idTipoSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura"
    ADD CONSTRAINT "TipoSiniestroCobertura_idTipoSiniestro_fkey" FOREIGN KEY ("idTipoSiniestro") REFERENCES public."TipoSiniestro"("idTipoSiniestro");
 p   ALTER TABLE ONLY public."TipoSiniestroCobertura" DROP CONSTRAINT "TipoSiniestroCobertura_idTipoSiniestro_fkey";
       public          postgres    false    224    211    2797            �   �   x�U��
� ���>��=���J)�����Ƽ�KJO�0�g`�(1�֎�F0Yg��|��.;նɹ0m0s��KE0Qkp��V{�ލ����̥�Ǵ.ĩ��qj��3���Q���A��x+!���2�      �   �   x�=��
�0E盯x_P����[�� 8��<k
�4��v�뭂.��r,��f:i�C�Y�S��܎}UVW:�����h�����4)Yv��q5�qj��U!��,�ĳe/�~���oK���Mi������(�U�Ka�y��00      �   3   x�3�415�t�I,NU�O*J-J�2	p���(��f��r��qqq L�      �   !   x�3�4�L�4�2�4�,�4�2ӆ\1z\\\ @�1      �   *   x�3�4�t�SH-.H-J�2�4�t��K�ɬJL������ �	      �   �   x�M�A1E��Sp����qo���C���L���M\�l���BW�!��4iu�l
���KE�j#��B��MM��j� @����>�t�pᆛ�Q�ހ6ݨ��W�i7u6���j,���(�P,��V<h�26H�X�ow����T�C:oRJo�mQ)      �   �  x��V=oG��_1P�R���`7�����nH���K�e�ߨt�"p���˛ٓL	1��Ȼ�ٙ7ｹ��W�j��t�H�/�t����N����c�,N�M��U�q<Sb��'\.�%�o�����"AS��U�S�o�]q�'!�r.1�id�g��+O�Ɛ̉��$]nrP����	����s�o���m& !f
1�5��Y^��	q�/qrߏ�3n�6hK�Ы�trq�
��������	��:fP�m8I'		г��1o��M-I$M�m���^Ao���D�]�gG�
�ۭ��v�z����m`�c���6��R5A&4��%�m��;�̞5��A��2�*@�x�\}���T�`���`U�"��i��j#�=���| v����:Z�J�.Q���6z�2`B������q��h\�`�´J�@X(�F�v�i��f�5Gzr8W����}�B�:���en	�+�v>�<=:;����f�s|�4��b��g����J�l�V�7�s�С�To�%ɠ叏���PzoD�5Sb�=O����g����Wv7��wE���jy�Ņ����Ү)���q�v�  ���Q}ӷ����!� �ɳ�l�F`4ŭ�@���9�2������w�%>�_J6�Z�2Φ�X���w�ۮ���p	<w<Q")��oM�M����)7�箦V�B aU[����+�?A�HM'��Rd��G�E�eU]B����M�K�07��E�V��e�!���^]t�`�[��
�����lz~��۷sS$�~u!��2��p2��Bo���z����T�~,�%�#	��l,� cf�"�J@�0~@32��h	���;��i��F��R@9�p��;�S�h���N��4 T�nP�22���}��=�Vq�x�2�bb��)Z4�Cu���C@�%��c�*&pYu���`]�[����3p�'y�ڵ�૨�����Պ��7"C���@8��㢌%ZxX���pP��a�K]k{�] ���]�T毋���þ;+�.���9��*r6�w���͟ϟZ�k����5S�?�����f�>=>?z��u�;��t��RU�y%��y޲�*�	-j����+tTv���r��=�h���@�b�#n�W�����fu]1$;�M����z�5�	�
?��x��(z�Z���x'ۦ��%�b�^Vх�<ˌ��x�������B�Fh1@\��HYk&�{Ȣ?֮��i?�8~yK�t�����!^+ �F �-�R�@ �����	v��w�%4�S���;�A��xw�,_[gk�-�ҥ�$	���3�LQ t��D��\Zq�t-��n����ܸ�F�z��^������xs�֕ 
=�<�PG��d��MĻ�D�֒�(���]�e4��`@}��{��B��� *Q_t��$)ݝ�]`~:?;�����v�i      �   :   x����0��fz`��2���9��	G�ɻѢLWt+<���?��zY��9�< >���      �   �   x�5�A�� E�p
_�a��d?˹A7?��R��Ԟ�FM�����7'�w�:o:?t�����
FГ�,ĉ�@�Eh�LkgЭ��-4]�^�j-�=�ؘ0sD�=4s��
�U?���|�c\?x�����IRɍ� �-�>dB�L+
.�B��<
eF/�O� �\�o�ߧo�7�.�A�EL��/�磵�ElX      �   r   x�M˻AE�د�� �����%,c�x��Cmz��Ξ#x*:	wql�����.-�'W��Q���15D�1���9{�h�|7m�8�5�V�q�������;.+ _�	*�      �   )   x�3�4�2bCN# m�e�&@l
�f@l�@���� {�`      �   u   x�E�1
!E��)��8j�ܤ�b�fBD�������V��};�:����2�3�ΏL���j�^z�{Nu�*�h�r�E��v�i���ѣ�w{���cΒe��VJ� bd$Y      �   3   x�3��*M��,JL���I-�2�L+J�K�,N���M�M,IM������� :��      �      x�%˱
�0���c$	/���D�j�Fqq	5J�L�����ُF�<_gh�%�n��a�ߟ9�8Xe�Vp-�s-|z��#���
�\����ؖ���`���TFcړ1�S,S��C,�k�z-n+!�4#     