PGDMP     "    .        	        y            AseguradoraDB    12.5    12.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33195    AseguradoraDB    DATABASE     �   CREATE DATABASE "AseguradoraDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Argentina.1252' LC_CTYPE = 'Spanish_Argentina.1252';
    DROP DATABASE "AseguradoraDB";
                postgres    false            �            1259    33196    Agencia    TABLE     �  CREATE TABLE public."Agencia" (
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
       public         heap    postgres    false            �            1259    33202    Agencia_idAgencia_seq    SEQUENCE     �   CREATE SEQUENCE public."Agencia_idAgencia_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Agencia_idAgencia_seq";
       public          postgres    false    202            �           0    0    Agencia_idAgencia_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Agencia_idAgencia_seq" OWNED BY public."Agencia"."idAgencia";
          public          postgres    false    203            �            1259    33204 	   Asegurado    TABLE     �   CREATE TABLE public."Asegurado" (
    "idAsegurado" integer NOT NULL,
    nombre character varying(100),
    apellido character varying(100),
    dni integer,
    telefono integer,
    domicilio character varying(200),
    "idUsuario" integer NOT NULL
);
    DROP TABLE public."Asegurado";
       public         heap    postgres    false            �            1259    33207    Asegurado_idAsegurado_seq    SEQUENCE     �   CREATE SEQUENCE public."Asegurado_idAsegurado_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Asegurado_idAsegurado_seq";
       public          postgres    false    204            �           0    0    Asegurado_idAsegurado_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Asegurado_idAsegurado_seq" OWNED BY public."Asegurado"."idAsegurado";
          public          postgres    false    205            �            1259    33209 	   Cobertura    TABLE     �   CREATE TABLE public."Cobertura" (
    "idCobertura" integer NOT NULL,
    "tarifaActual" real,
    "nombreCobertura" character varying(200)
);
    DROP TABLE public."Cobertura";
       public         heap    postgres    false            �            1259    33212    Cobertura_idCobertura_seq    SEQUENCE     �   CREATE SEQUENCE public."Cobertura_idCobertura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Cobertura_idCobertura_seq";
       public          postgres    false    206            �           0    0    Cobertura_idCobertura_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Cobertura_idCobertura_seq" OWNED BY public."Cobertura"."idCobertura";
          public          postgres    false    207            �            1259    33214    DetalleSiniestro    TABLE     �   CREATE TABLE public."DetalleSiniestro" (
    "idDetalleSiniestro" integer NOT NULL,
    "idSiniestro" integer NOT NULL,
    "confirmacionDetalleSiniestro" boolean,
    "idIncidente" integer NOT NULL
);
 &   DROP TABLE public."DetalleSiniestro";
       public         heap    postgres    false            �            1259    33217 '   DetalleSiniestro_idDetalleSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."DetalleSiniestro_idDetalleSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."DetalleSiniestro_idDetalleSiniestro_seq";
       public          postgres    false    208            �           0    0 '   DetalleSiniestro_idDetalleSiniestro_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."DetalleSiniestro_idDetalleSiniestro_seq" OWNED BY public."DetalleSiniestro"."idDetalleSiniestro";
          public          postgres    false    209            �            1259    33219    EstadoSiniestro    TABLE     �   CREATE TABLE public."EstadoSiniestro" (
    "idEstadoSiniestro" integer NOT NULL,
    "idSiniestro" integer NOT NULL,
    "nombreEstado" character varying(100)
);
 %   DROP TABLE public."EstadoSiniestro";
       public         heap    postgres    false            �            1259    33222 %   EstadoSiniestro_idEstadoSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."EstadoSiniestro_idEstadoSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."EstadoSiniestro_idEstadoSiniestro_seq";
       public          postgres    false    210            �           0    0 %   EstadoSiniestro_idEstadoSiniestro_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."EstadoSiniestro_idEstadoSiniestro_seq" OWNED BY public."EstadoSiniestro"."idEstadoSiniestro";
          public          postgres    false    211            �            1259    33224    ImagenSiniestro    TABLE     �   CREATE TABLE public."ImagenSiniestro" (
    "idImagen" integer NOT NULL,
    "idSiniestro" integer NOT NULL,
    "rutaImagen" character varying,
    "nombreImagen" character varying(200)
);
 %   DROP TABLE public."ImagenSiniestro";
       public         heap    postgres    false            �            1259    33230    ImagenSiniestro_idImagen_seq    SEQUENCE     �   CREATE SEQUENCE public."ImagenSiniestro_idImagen_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public."ImagenSiniestro_idImagen_seq";
       public          postgres    false    212            �           0    0    ImagenSiniestro_idImagen_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."ImagenSiniestro_idImagen_seq" OWNED BY public."ImagenSiniestro"."idImagen";
          public          postgres    false    213            �            1259    33232 	   Incidente    TABLE     �   CREATE TABLE public."Incidente" (
    "idIncidente" integer NOT NULL,
    "descripcionIncidente" character varying(200),
    "idTipoSiniestro" integer NOT NULL
);
    DROP TABLE public."Incidente";
       public         heap    postgres    false            �            1259    33235    Incidente_idIncidente_seq    SEQUENCE     �   CREATE SEQUENCE public."Incidente_idIncidente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Incidente_idIncidente_seq";
       public          postgres    false    214            �           0    0    Incidente_idIncidente_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Incidente_idIncidente_seq" OWNED BY public."Incidente"."idIncidente";
          public          postgres    false    215            �            1259    33237    Mensaje    TABLE     �   CREATE TABLE public."Mensaje" (
    "idMensaje" integer NOT NULL,
    cuerpo text,
    "idUsuarioReceptor" integer NOT NULL,
    "idUsuarioEmisor" integer NOT NULL,
    fecha timestamp without time zone,
    "idSiniestro" integer
);
    DROP TABLE public."Mensaje";
       public         heap    postgres    false            �            1259    33243    Mensaje_idMensaje_seq    SEQUENCE     �   CREATE SEQUENCE public."Mensaje_idMensaje_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Mensaje_idMensaje_seq";
       public          postgres    false    216            �           0    0    Mensaje_idMensaje_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Mensaje_idMensaje_seq" OWNED BY public."Mensaje"."idMensaje";
          public          postgres    false    217            �            1259    33245    Poliza    TABLE     "  CREATE TABLE public."Poliza" (
    "idPoliza" integer NOT NULL,
    "fechaDeContratacion" date,
    "fechaDeRenovacion" date,
    tarifa real,
    "idVehiculo" integer NOT NULL,
    "idCobertura" integer NOT NULL,
    "idAsegurado" integer NOT NULL,
    "nombrePoliza" character varying
);
    DROP TABLE public."Poliza";
       public         heap    postgres    false            �            1259    33251    Poliza_idPoliza_seq    SEQUENCE     �   CREATE SEQUENCE public."Poliza_idPoliza_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Poliza_idPoliza_seq";
       public          postgres    false    218            �           0    0    Poliza_idPoliza_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Poliza_idPoliza_seq" OWNED BY public."Poliza"."idPoliza";
          public          postgres    false    219            �            1259    33253 	   Siniestro    TABLE       CREATE TABLE public."Siniestro" (
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
       public         heap    postgres    false            �            1259    33259    Siniestro_idSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."Siniestro_idSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Siniestro_idSiniestro_seq";
       public          postgres    false    220            �           0    0    Siniestro_idSiniestro_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Siniestro_idSiniestro_seq" OWNED BY public."Siniestro"."idSiniestro";
          public          postgres    false    221            �            1259    33261    TipoSiniestro    TABLE     }   CREATE TABLE public."TipoSiniestro" (
    "idTipoSiniestro" integer NOT NULL,
    "hechoGenerador" character varying(200)
);
 #   DROP TABLE public."TipoSiniestro";
       public         heap    postgres    false            �            1259    33264    TipoSiniestroCobertura    TABLE     }   CREATE TABLE public."TipoSiniestroCobertura" (
    "idTipoSiniestro" integer NOT NULL,
    "idCobertura" integer NOT NULL
);
 ,   DROP TABLE public."TipoSiniestroCobertura";
       public         heap    postgres    false            �            1259    33267 &   TipoSiniestroCobertura_idCobertura_seq    SEQUENCE     �   CREATE SEQUENCE public."TipoSiniestroCobertura_idCobertura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."TipoSiniestroCobertura_idCobertura_seq";
       public          postgres    false    223            �           0    0 &   TipoSiniestroCobertura_idCobertura_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."TipoSiniestroCobertura_idCobertura_seq" OWNED BY public."TipoSiniestroCobertura"."idCobertura";
          public          postgres    false    224            �            1259    33269 *   TipoSiniestroCobertura_idTipoSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."TipoSiniestroCobertura_idTipoSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."TipoSiniestroCobertura_idTipoSiniestro_seq";
       public          postgres    false    223            �           0    0 *   TipoSiniestroCobertura_idTipoSiniestro_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."TipoSiniestroCobertura_idTipoSiniestro_seq" OWNED BY public."TipoSiniestroCobertura"."idTipoSiniestro";
          public          postgres    false    225            �            1259    33271 !   TipoSiniestro_idTipoSiniestro_seq    SEQUENCE     �   CREATE SEQUENCE public."TipoSiniestro_idTipoSiniestro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."TipoSiniestro_idTipoSiniestro_seq";
       public          postgres    false    222            �           0    0 !   TipoSiniestro_idTipoSiniestro_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."TipoSiniestro_idTipoSiniestro_seq" OWNED BY public."TipoSiniestro"."idTipoSiniestro";
          public          postgres    false    226            �            1259    33273 	   Ubicacion    TABLE     $  CREATE TABLE public."Ubicacion" (
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
       public         heap    postgres    false            �            1259    33279    Ubicacion_idUbicacion_seq    SEQUENCE     �   CREATE SEQUENCE public."Ubicacion_idUbicacion_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Ubicacion_idUbicacion_seq";
       public          postgres    false    227            �           0    0    Ubicacion_idUbicacion_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Ubicacion_idUbicacion_seq" OWNED BY public."Ubicacion"."idUbicacion";
          public          postgres    false    228            �            1259    33281    Usuario    TABLE     �   CREATE TABLE public."Usuario" (
    "idUsuario" integer NOT NULL,
    "nombreUsuario" character varying(100),
    hash character varying,
    salt character varying,
    email character varying
);
    DROP TABLE public."Usuario";
       public         heap    postgres    false            �            1259    33287    Usuario_idUsuario_seq    SEQUENCE     �   CREATE SEQUENCE public."Usuario_idUsuario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Usuario_idUsuario_seq";
       public          postgres    false    229            �           0    0    Usuario_idUsuario_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Usuario_idUsuario_seq" OWNED BY public."Usuario"."idUsuario";
          public          postgres    false    230            �            1259    33289    Vehiculo    TABLE     c  CREATE TABLE public."Vehiculo" (
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
       public         heap    postgres    false            �            1259    33295    Vehiculo_idVehiculo_seq    SEQUENCE     �   CREATE SEQUENCE public."Vehiculo_idVehiculo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Vehiculo_idVehiculo_seq";
       public          postgres    false    231            �           0    0    Vehiculo_idVehiculo_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Vehiculo_idVehiculo_seq" OWNED BY public."Vehiculo"."idVehiculo";
          public          postgres    false    232            �
           2604    33297    Agencia idAgencia    DEFAULT     |   ALTER TABLE ONLY public."Agencia" ALTER COLUMN "idAgencia" SET DEFAULT nextval('public."Agencia_idAgencia_seq"'::regclass);
 D   ALTER TABLE public."Agencia" ALTER COLUMN "idAgencia" DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    33298    Asegurado idAsegurado    DEFAULT     �   ALTER TABLE ONLY public."Asegurado" ALTER COLUMN "idAsegurado" SET DEFAULT nextval('public."Asegurado_idAsegurado_seq"'::regclass);
 H   ALTER TABLE public."Asegurado" ALTER COLUMN "idAsegurado" DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    33299    Cobertura idCobertura    DEFAULT     �   ALTER TABLE ONLY public."Cobertura" ALTER COLUMN "idCobertura" SET DEFAULT nextval('public."Cobertura_idCobertura_seq"'::regclass);
 H   ALTER TABLE public."Cobertura" ALTER COLUMN "idCobertura" DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    33300 #   DetalleSiniestro idDetalleSiniestro    DEFAULT     �   ALTER TABLE ONLY public."DetalleSiniestro" ALTER COLUMN "idDetalleSiniestro" SET DEFAULT nextval('public."DetalleSiniestro_idDetalleSiniestro_seq"'::regclass);
 V   ALTER TABLE public."DetalleSiniestro" ALTER COLUMN "idDetalleSiniestro" DROP DEFAULT;
       public          postgres    false    209    208            �
           2604    33301 !   EstadoSiniestro idEstadoSiniestro    DEFAULT     �   ALTER TABLE ONLY public."EstadoSiniestro" ALTER COLUMN "idEstadoSiniestro" SET DEFAULT nextval('public."EstadoSiniestro_idEstadoSiniestro_seq"'::regclass);
 T   ALTER TABLE public."EstadoSiniestro" ALTER COLUMN "idEstadoSiniestro" DROP DEFAULT;
       public          postgres    false    211    210            �
           2604    33302    ImagenSiniestro idImagen    DEFAULT     �   ALTER TABLE ONLY public."ImagenSiniestro" ALTER COLUMN "idImagen" SET DEFAULT nextval('public."ImagenSiniestro_idImagen_seq"'::regclass);
 K   ALTER TABLE public."ImagenSiniestro" ALTER COLUMN "idImagen" DROP DEFAULT;
       public          postgres    false    213    212            �
           2604    33303    Incidente idIncidente    DEFAULT     �   ALTER TABLE ONLY public."Incidente" ALTER COLUMN "idIncidente" SET DEFAULT nextval('public."Incidente_idIncidente_seq"'::regclass);
 H   ALTER TABLE public."Incidente" ALTER COLUMN "idIncidente" DROP DEFAULT;
       public          postgres    false    215    214            �
           2604    33304    Mensaje idMensaje    DEFAULT     |   ALTER TABLE ONLY public."Mensaje" ALTER COLUMN "idMensaje" SET DEFAULT nextval('public."Mensaje_idMensaje_seq"'::regclass);
 D   ALTER TABLE public."Mensaje" ALTER COLUMN "idMensaje" DROP DEFAULT;
       public          postgres    false    217    216            �
           2604    33305    Poliza idPoliza    DEFAULT     x   ALTER TABLE ONLY public."Poliza" ALTER COLUMN "idPoliza" SET DEFAULT nextval('public."Poliza_idPoliza_seq"'::regclass);
 B   ALTER TABLE public."Poliza" ALTER COLUMN "idPoliza" DROP DEFAULT;
       public          postgres    false    219    218            �
           2604    33306    Siniestro idSiniestro    DEFAULT     �   ALTER TABLE ONLY public."Siniestro" ALTER COLUMN "idSiniestro" SET DEFAULT nextval('public."Siniestro_idSiniestro_seq"'::regclass);
 H   ALTER TABLE public."Siniestro" ALTER COLUMN "idSiniestro" DROP DEFAULT;
       public          postgres    false    221    220            �
           2604    33307    TipoSiniestro idTipoSiniestro    DEFAULT     �   ALTER TABLE ONLY public."TipoSiniestro" ALTER COLUMN "idTipoSiniestro" SET DEFAULT nextval('public."TipoSiniestro_idTipoSiniestro_seq"'::regclass);
 P   ALTER TABLE public."TipoSiniestro" ALTER COLUMN "idTipoSiniestro" DROP DEFAULT;
       public          postgres    false    226    222            �
           2604    33308 &   TipoSiniestroCobertura idTipoSiniestro    DEFAULT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura" ALTER COLUMN "idTipoSiniestro" SET DEFAULT nextval('public."TipoSiniestroCobertura_idTipoSiniestro_seq"'::regclass);
 Y   ALTER TABLE public."TipoSiniestroCobertura" ALTER COLUMN "idTipoSiniestro" DROP DEFAULT;
       public          postgres    false    225    223            �
           2604    33309 "   TipoSiniestroCobertura idCobertura    DEFAULT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura" ALTER COLUMN "idCobertura" SET DEFAULT nextval('public."TipoSiniestroCobertura_idCobertura_seq"'::regclass);
 U   ALTER TABLE public."TipoSiniestroCobertura" ALTER COLUMN "idCobertura" DROP DEFAULT;
       public          postgres    false    224    223            �
           2604    33310    Ubicacion idUbicacion    DEFAULT     �   ALTER TABLE ONLY public."Ubicacion" ALTER COLUMN "idUbicacion" SET DEFAULT nextval('public."Ubicacion_idUbicacion_seq"'::regclass);
 H   ALTER TABLE public."Ubicacion" ALTER COLUMN "idUbicacion" DROP DEFAULT;
       public          postgres    false    228    227            �
           2604    33311    Usuario idUsuario    DEFAULT     |   ALTER TABLE ONLY public."Usuario" ALTER COLUMN "idUsuario" SET DEFAULT nextval('public."Usuario_idUsuario_seq"'::regclass);
 D   ALTER TABLE public."Usuario" ALTER COLUMN "idUsuario" DROP DEFAULT;
       public          postgres    false    230    229            �
           2604    33312    Vehiculo idVehiculo    DEFAULT     �   ALTER TABLE ONLY public."Vehiculo" ALTER COLUMN "idVehiculo" SET DEFAULT nextval('public."Vehiculo_idVehiculo_seq"'::regclass);
 F   ALTER TABLE public."Vehiculo" ALTER COLUMN "idVehiculo" DROP DEFAULT;
       public          postgres    false    232    231            �          0    33196    Agencia 
   TABLE DATA           �   COPY public."Agencia" ("idAgencia", nombre, "alturaAgencia", "calleAgencia", "ciudadAgencia", "provinciaAgencia", "paisAgencia", "codigoPostalAgencia", "latitudAgencia", "longitudAgencia") FROM stdin;
    public          postgres    false    202   ��       �          0    33204 	   Asegurado 
   TABLE DATA           m   COPY public."Asegurado" ("idAsegurado", nombre, apellido, dni, telefono, domicilio, "idUsuario") FROM stdin;
    public          postgres    false    204   ��       �          0    33209 	   Cobertura 
   TABLE DATA           W   COPY public."Cobertura" ("idCobertura", "tarifaActual", "nombreCobertura") FROM stdin;
    public          postgres    false    206   �       �          0    33214    DetalleSiniestro 
   TABLE DATA           �   COPY public."DetalleSiniestro" ("idDetalleSiniestro", "idSiniestro", "confirmacionDetalleSiniestro", "idIncidente") FROM stdin;
    public          postgres    false    208   [�       �          0    33219    EstadoSiniestro 
   TABLE DATA           _   COPY public."EstadoSiniestro" ("idEstadoSiniestro", "idSiniestro", "nombreEstado") FROM stdin;
    public          postgres    false    210   ��       �          0    33224    ImagenSiniestro 
   TABLE DATA           d   COPY public."ImagenSiniestro" ("idImagen", "idSiniestro", "rutaImagen", "nombreImagen") FROM stdin;
    public          postgres    false    212   Ƭ       �          0    33232 	   Incidente 
   TABLE DATA           _   COPY public."Incidente" ("idIncidente", "descripcionIncidente", "idTipoSiniestro") FROM stdin;
    public          postgres    false    214   ;�       �          0    33237    Mensaje 
   TABLE DATA           v   COPY public."Mensaje" ("idMensaje", cuerpo, "idUsuarioReceptor", "idUsuarioEmisor", fecha, "idSiniestro") FROM stdin;
    public          postgres    false    216   �       �          0    33245    Poliza 
   TABLE DATA           �   COPY public."Poliza" ("idPoliza", "fechaDeContratacion", "fechaDeRenovacion", tarifa, "idVehiculo", "idCobertura", "idAsegurado", "nombrePoliza") FROM stdin;
    public          postgres    false    218   ��       �          0    33253 	   Siniestro 
   TABLE DATA           �   COPY public."Siniestro" ("idSiniestro", fecha, hora, descripcion, "idUbicacion", "idPoliza", "idTipoSiniestro", "idAgencia") FROM stdin;
    public          postgres    false    220   �       �          0    33261    TipoSiniestro 
   TABLE DATA           N   COPY public."TipoSiniestro" ("idTipoSiniestro", "hechoGenerador") FROM stdin;
    public          postgres    false    222   L�       �          0    33264    TipoSiniestroCobertura 
   TABLE DATA           T   COPY public."TipoSiniestroCobertura" ("idTipoSiniestro", "idCobertura") FROM stdin;
    public          postgres    false    223   ε       �          0    33273 	   Ubicacion 
   TABLE DATA              COPY public."Ubicacion" ("idUbicacion", latitud, longitud, altura, ciudad, provincia, pais, "codigoPostal", calle) FROM stdin;
    public          postgres    false    227   �       �          0    33281    Usuario 
   TABLE DATA           T   COPY public."Usuario" ("idUsuario", "nombreUsuario", hash, salt, email) FROM stdin;
    public          postgres    false    229   ��       �          0    33289    Vehiculo 
   TABLE DATA           �   COPY public."Vehiculo" ("idVehiculo", marca, anio, modelo, version, "numeroDeChasis", "numeroDeMotor", "tipoDeUso", patente) FROM stdin;
    public          postgres    false    231   �       �           0    0    Agencia_idAgencia_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Agencia_idAgencia_seq"', 2, true);
          public          postgres    false    203            �           0    0    Asegurado_idAsegurado_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Asegurado_idAsegurado_seq"', 2, true);
          public          postgres    false    205            �           0    0    Cobertura_idCobertura_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Cobertura_idCobertura_seq"', 2, true);
          public          postgres    false    207            �           0    0 '   DetalleSiniestro_idDetalleSiniestro_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."DetalleSiniestro_idDetalleSiniestro_seq"', 4, true);
          public          postgres    false    209            �           0    0 %   EstadoSiniestro_idEstadoSiniestro_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."EstadoSiniestro_idEstadoSiniestro_seq"', 3, true);
          public          postgres    false    211            �           0    0    ImagenSiniestro_idImagen_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."ImagenSiniestro_idImagen_seq"', 32, true);
          public          postgres    false    213            �           0    0    Incidente_idIncidente_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Incidente_idIncidente_seq"', 2, true);
          public          postgres    false    215            �           0    0    Mensaje_idMensaje_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Mensaje_idMensaje_seq"', 3, true);
          public          postgres    false    217            �           0    0    Poliza_idPoliza_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Poliza_idPoliza_seq"', 2, true);
          public          postgres    false    219            �           0    0    Siniestro_idSiniestro_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Siniestro_idSiniestro_seq"', 11, true);
          public          postgres    false    221            �           0    0 &   TipoSiniestroCobertura_idCobertura_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."TipoSiniestroCobertura_idCobertura_seq"', 1, false);
          public          postgres    false    224            �           0    0 *   TipoSiniestroCobertura_idTipoSiniestro_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public."TipoSiniestroCobertura_idTipoSiniestro_seq"', 1, false);
          public          postgres    false    225            �           0    0 !   TipoSiniestro_idTipoSiniestro_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TipoSiniestro_idTipoSiniestro_seq"', 8, true);
          public          postgres    false    226            �           0    0    Ubicacion_idUbicacion_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Ubicacion_idUbicacion_seq"', 2, true);
          public          postgres    false    228            �           0    0    Usuario_idUsuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Usuario_idUsuario_seq"', 12, true);
          public          postgres    false    230            �           0    0    Vehiculo_idVehiculo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Vehiculo_idVehiculo_seq"', 2, true);
          public          postgres    false    232            �
           2606    33314    Agencia Agencia_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Agencia"
    ADD CONSTRAINT "Agencia_pkey" PRIMARY KEY ("idAgencia");
 B   ALTER TABLE ONLY public."Agencia" DROP CONSTRAINT "Agencia_pkey";
       public            postgres    false    202            �
           2606    33316    Asegurado Asegurado_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Asegurado"
    ADD CONSTRAINT "Asegurado_pkey" PRIMARY KEY ("idAsegurado");
 F   ALTER TABLE ONLY public."Asegurado" DROP CONSTRAINT "Asegurado_pkey";
       public            postgres    false    204            �
           2606    33318    Cobertura Cobertura_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Cobertura"
    ADD CONSTRAINT "Cobertura_pkey" PRIMARY KEY ("idCobertura");
 F   ALTER TABLE ONLY public."Cobertura" DROP CONSTRAINT "Cobertura_pkey";
       public            postgres    false    206            �
           2606    33320 &   DetalleSiniestro DetalleSiniestro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."DetalleSiniestro"
    ADD CONSTRAINT "DetalleSiniestro_pkey" PRIMARY KEY ("idDetalleSiniestro", "idSiniestro");
 T   ALTER TABLE ONLY public."DetalleSiniestro" DROP CONSTRAINT "DetalleSiniestro_pkey";
       public            postgres    false    208    208            �
           2606    33322 $   EstadoSiniestro EstadoSiniestro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."EstadoSiniestro"
    ADD CONSTRAINT "EstadoSiniestro_pkey" PRIMARY KEY ("idEstadoSiniestro", "idSiniestro");
 R   ALTER TABLE ONLY public."EstadoSiniestro" DROP CONSTRAINT "EstadoSiniestro_pkey";
       public            postgres    false    210    210            �
           2606    33324 $   ImagenSiniestro ImagenSiniestro_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public."ImagenSiniestro"
    ADD CONSTRAINT "ImagenSiniestro_pkey" PRIMARY KEY ("idImagen", "idSiniestro");
 R   ALTER TABLE ONLY public."ImagenSiniestro" DROP CONSTRAINT "ImagenSiniestro_pkey";
       public            postgres    false    212    212            �
           2606    33326    Incidente Incidente_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Incidente"
    ADD CONSTRAINT "Incidente_pkey" PRIMARY KEY ("idIncidente");
 F   ALTER TABLE ONLY public."Incidente" DROP CONSTRAINT "Incidente_pkey";
       public            postgres    false    214            �
           2606    33328    Mensaje Mensaje_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Mensaje"
    ADD CONSTRAINT "Mensaje_pkey" PRIMARY KEY ("idMensaje");
 B   ALTER TABLE ONLY public."Mensaje" DROP CONSTRAINT "Mensaje_pkey";
       public            postgres    false    216            �
           2606    33330    Poliza Poliza_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Poliza"
    ADD CONSTRAINT "Poliza_pkey" PRIMARY KEY ("idPoliza");
 @   ALTER TABLE ONLY public."Poliza" DROP CONSTRAINT "Poliza_pkey";
       public            postgres    false    218                        2606    33332    Siniestro Siniestro_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_pkey" PRIMARY KEY ("idSiniestro");
 F   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_pkey";
       public            postgres    false    220                       2606    33334 2   TipoSiniestroCobertura TipoSiniestroCobertura_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura"
    ADD CONSTRAINT "TipoSiniestroCobertura_pkey" PRIMARY KEY ("idTipoSiniestro", "idCobertura");
 `   ALTER TABLE ONLY public."TipoSiniestroCobertura" DROP CONSTRAINT "TipoSiniestroCobertura_pkey";
       public            postgres    false    223    223                       2606    33336     TipoSiniestro TipoSiniestro_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."TipoSiniestro"
    ADD CONSTRAINT "TipoSiniestro_pkey" PRIMARY KEY ("idTipoSiniestro");
 N   ALTER TABLE ONLY public."TipoSiniestro" DROP CONSTRAINT "TipoSiniestro_pkey";
       public            postgres    false    222                       2606    33338    Ubicacion Ubicacion_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Ubicacion"
    ADD CONSTRAINT "Ubicacion_pkey" PRIMARY KEY ("idUbicacion");
 F   ALTER TABLE ONLY public."Ubicacion" DROP CONSTRAINT "Ubicacion_pkey";
       public            postgres    false    227                       2606    33340    Usuario Usuario_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Usuario"
    ADD CONSTRAINT "Usuario_pkey" PRIMARY KEY ("idUsuario");
 B   ALTER TABLE ONLY public."Usuario" DROP CONSTRAINT "Usuario_pkey";
       public            postgres    false    229            
           2606    33342    Vehiculo Vehiculo_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Vehiculo"
    ADD CONSTRAINT "Vehiculo_pkey" PRIMARY KEY ("idVehiculo");
 D   ALTER TABLE ONLY public."Vehiculo" DROP CONSTRAINT "Vehiculo_pkey";
       public            postgres    false    231                       2606    33343 !   Mensaje 	Mensaje_idSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mensaje"
    ADD CONSTRAINT "	Mensaje_idSiniestro_fkey" FOREIGN KEY ("idSiniestro") REFERENCES public."Siniestro"("idSiniestro") NOT VALID;
 O   ALTER TABLE ONLY public."Mensaje" DROP CONSTRAINT "	Mensaje_idSiniestro_fkey";
       public          postgres    false    2816    216    220                       2606    33348 "   Asegurado Asegurado_idUsuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Asegurado"
    ADD CONSTRAINT "Asegurado_idUsuario_fkey" FOREIGN KEY ("idUsuario") REFERENCES public."Usuario"("idUsuario");
 P   ALTER TABLE ONLY public."Asegurado" DROP CONSTRAINT "Asegurado_idUsuario_fkey";
       public          postgres    false    229    2824    204                       2606    33353 2   DetalleSiniestro DetalleSiniestro_idIncidente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DetalleSiniestro"
    ADD CONSTRAINT "DetalleSiniestro_idIncidente_fkey" FOREIGN KEY ("idIncidente") REFERENCES public."Incidente"("idIncidente");
 `   ALTER TABLE ONLY public."DetalleSiniestro" DROP CONSTRAINT "DetalleSiniestro_idIncidente_fkey";
       public          postgres    false    208    214    2810                       2606    33358 2   DetalleSiniestro DetalleSiniestro_idSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."DetalleSiniestro"
    ADD CONSTRAINT "DetalleSiniestro_idSiniestro_fkey" FOREIGN KEY ("idSiniestro") REFERENCES public."Siniestro"("idSiniestro");
 `   ALTER TABLE ONLY public."DetalleSiniestro" DROP CONSTRAINT "DetalleSiniestro_idSiniestro_fkey";
       public          postgres    false    220    2816    208                       2606    33363 0   EstadoSiniestro EstadoSiniestro_idSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EstadoSiniestro"
    ADD CONSTRAINT "EstadoSiniestro_idSiniestro_fkey" FOREIGN KEY ("idSiniestro") REFERENCES public."Siniestro"("idSiniestro");
 ^   ALTER TABLE ONLY public."EstadoSiniestro" DROP CONSTRAINT "EstadoSiniestro_idSiniestro_fkey";
       public          postgres    false    2816    210    220                       2606    33368 0   ImagenSiniestro ImagenSiniestro_idSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ImagenSiniestro"
    ADD CONSTRAINT "ImagenSiniestro_idSiniestro_fkey" FOREIGN KEY ("idSiniestro") REFERENCES public."Siniestro"("idSiniestro");
 ^   ALTER TABLE ONLY public."ImagenSiniestro" DROP CONSTRAINT "ImagenSiniestro_idSiniestro_fkey";
       public          postgres    false    212    2816    220                       2606    33373 (   Incidente Incidente_idTipoSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Incidente"
    ADD CONSTRAINT "Incidente_idTipoSiniestro_fkey" FOREIGN KEY ("idTipoSiniestro") REFERENCES public."TipoSiniestro"("idTipoSiniestro");
 V   ALTER TABLE ONLY public."Incidente" DROP CONSTRAINT "Incidente_idTipoSiniestro_fkey";
       public          postgres    false    2818    222    214                       2606    33378 $   Mensaje Mensaje_idUsuarioEmisor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mensaje"
    ADD CONSTRAINT "Mensaje_idUsuarioEmisor_fkey" FOREIGN KEY ("idUsuarioEmisor") REFERENCES public."Usuario"("idUsuario");
 R   ALTER TABLE ONLY public."Mensaje" DROP CONSTRAINT "Mensaje_idUsuarioEmisor_fkey";
       public          postgres    false    216    2824    229                       2606    33383 &   Mensaje Mensaje_idUsuarioReceptor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Mensaje"
    ADD CONSTRAINT "Mensaje_idUsuarioReceptor_fkey" FOREIGN KEY ("idUsuarioReceptor") REFERENCES public."Usuario"("idUsuario");
 T   ALTER TABLE ONLY public."Mensaje" DROP CONSTRAINT "Mensaje_idUsuarioReceptor_fkey";
       public          postgres    false    229    216    2824                       2606    33388    Poliza Poliza_idAsegurado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Poliza"
    ADD CONSTRAINT "Poliza_idAsegurado_fkey" FOREIGN KEY ("idAsegurado") REFERENCES public."Asegurado"("idAsegurado");
 L   ALTER TABLE ONLY public."Poliza" DROP CONSTRAINT "Poliza_idAsegurado_fkey";
       public          postgres    false    2800    218    204                       2606    33393    Poliza Poliza_idCobertura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Poliza"
    ADD CONSTRAINT "Poliza_idCobertura_fkey" FOREIGN KEY ("idCobertura") REFERENCES public."Cobertura"("idCobertura");
 L   ALTER TABLE ONLY public."Poliza" DROP CONSTRAINT "Poliza_idCobertura_fkey";
       public          postgres    false    206    218    2802                       2606    33398    Poliza Poliza_idVehiculo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Poliza"
    ADD CONSTRAINT "Poliza_idVehiculo_fkey" FOREIGN KEY ("idVehiculo") REFERENCES public."Vehiculo"("idVehiculo");
 K   ALTER TABLE ONLY public."Poliza" DROP CONSTRAINT "Poliza_idVehiculo_fkey";
       public          postgres    false    231    218    2826                       2606    33403 "   Siniestro Siniestro_idAgencia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_idAgencia_fkey" FOREIGN KEY ("idAgencia") REFERENCES public."Agencia"("idAgencia");
 P   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_idAgencia_fkey";
       public          postgres    false    220    202    2798                       2606    33408 !   Siniestro Siniestro_idPoliza_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_idPoliza_fkey" FOREIGN KEY ("idPoliza") REFERENCES public."Poliza"("idPoliza");
 O   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_idPoliza_fkey";
       public          postgres    false    220    2814    218                       2606    33413 (   Siniestro Siniestro_idTipoSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_idTipoSiniestro_fkey" FOREIGN KEY ("idTipoSiniestro") REFERENCES public."TipoSiniestro"("idTipoSiniestro") NOT VALID;
 V   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_idTipoSiniestro_fkey";
       public          postgres    false    222    2818    220                       2606    33418 $   Siniestro Siniestro_idUbicacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Siniestro"
    ADD CONSTRAINT "Siniestro_idUbicacion_fkey" FOREIGN KEY ("idUbicacion") REFERENCES public."Ubicacion"("idUbicacion");
 R   ALTER TABLE ONLY public."Siniestro" DROP CONSTRAINT "Siniestro_idUbicacion_fkey";
       public          postgres    false    227    220    2822                       2606    33423 >   TipoSiniestroCobertura TipoSiniestroCobertura_idCobertura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura"
    ADD CONSTRAINT "TipoSiniestroCobertura_idCobertura_fkey" FOREIGN KEY ("idCobertura") REFERENCES public."Cobertura"("idCobertura");
 l   ALTER TABLE ONLY public."TipoSiniestroCobertura" DROP CONSTRAINT "TipoSiniestroCobertura_idCobertura_fkey";
       public          postgres    false    2802    223    206                       2606    33428 B   TipoSiniestroCobertura TipoSiniestroCobertura_idTipoSiniestro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."TipoSiniestroCobertura"
    ADD CONSTRAINT "TipoSiniestroCobertura_idTipoSiniestro_fkey" FOREIGN KEY ("idTipoSiniestro") REFERENCES public."TipoSiniestro"("idTipoSiniestro");
 p   ALTER TABLE ONLY public."TipoSiniestroCobertura" DROP CONSTRAINT "TipoSiniestroCobertura_idTipoSiniestro_fkey";
       public          postgres    false    222    223    2818            �   �   x�U��
� ���>��=���J)�����Ƽ�KJO�0�g`�(1�֎�F0Yg��|��.;նɹ0m0s��KE0Qkp��V{�ލ����̥�Ǵ.ĩ��qj��3���Q���A��x+!���2�      �   y   x��1!��s�9�a����lbabek3��� 
O���1NU˚���1�b�Ĳ�!�'����RK����FJ���p�Z袥ǌ����R���>� p։X4�HO�M��0�����^!�      �   3   x�3�415�t�I,NU�O*J-J�2	p���(��f��r��qqq L�      �   !   x�3�4�,�4�2�&\F�&�i��\1z\\\ B<9      �   *   x�3�4�t�SH-.H-J�2�4�t��K�ɬJL������ �	      �   e   x�M�A
�  ��>�Dc���K�QZXY��CaO;���؝Y���$[(6�+�L$�I��S���㻗����T�dʝQ9�-
X������)o!�      �   �   x�m��
!�>�O��g;Ft���eʁYi\!z��5,�n��o��h@��w=8ux=�E2 Z9�i���{�E�3A@�jfY�wfŀ,�&>���?[�%Ryٟ��h�z�C["=-�7��A�G��pV�W~C`w���L��_���~�H)�4|d*      �   �  x��V=oG��_1P�R���`7�����nH���K�e�ߨt�"p���˛ٓL	1��Ȼ�ٙ7ｹ��W�j��t�H�/�t����N����c�,N�M��U�q<Sb��'\.�%�o�����"AS��U�S�o�]q�'!�r.1�id�g��+O�Ɛ̉��$]nrP����	����s�o���m& !f
1�5��Y^��	q�/qrߏ�3n�6hK�Ы�trq�
��������	��:fP�m8I'		г��1o��M-I$M�m���^Ao���D�]�gG�
�ۭ��v�z����m`�c���6��R5A&4��%�m��;�̞5��A��2�*@�x�\}���T�`���`U�"��i��j#�=���| v����:Z�J�.Q���6z�2`B������q��h\�`�´J�@X(�F�v�i��f�5Gzr8W����}�B�:���en	�+�v>�<=:;����f�s|�4��b��g����J�l�V�7�s�С�To�%ɠ叏���PzoD�5Sb�=O����g����Wv7��wE���jy�Ņ����Ү)���q�v�  ���Q}ӷ����!� �ɳ�l�F`4ŭ�@���9�2������w�%>�_J6�Z�2Φ�X���w�ۮ���p	<w<Q")��oM�M����)7�箦V�B aU[����+�?A�HM'��Rd��G�E�eU]B����M�K�07��E�V��e�!���^]t�`�[��
�����lz~��۷sS$�~u!��2��p2��Bo���z����T�~,�%�#	��l,� cf�"�J@�0~@32��h	���;��i��F��R@9�p��;�S�h���N��4 T�nP�22���}��=�Vq�x�2�bb��)Z4�Cu���C@�%��c�*&pYu���`]�[����3p�'y�ڵ�૨�����Պ��7"C���@8��㢌%ZxX���pP��a�K]k{�] ���]�T毋���þ;+�.���9��*r6�w���͟ϟZ�k����5S�?�����f�>=>?z��u�;��t��RU�y%��y޲�*�	-j����+tTv���r��=�h���@�b�#n�W�����fu]1$;�M����z�5�	�
?��x��(z�Z���x'ۦ��%�b�^Vх�<ˌ��x�������B�Fh1@\��HYk&�{Ȣ?֮��i?�8~yK�t�����!^+ �F �-�R�@ �����	v��w�%4�S���;�A��xw�,_[gk�-�ҥ�$	���3�LQ t��D��\Zq�t-��n����ܸ�F�z��^������xs�֕ 
=�<�PG��d��MĻ�D�֒�(���]�e4��`@}��{��B��� *Q_t��$)ݝ�]`~:?;�����v�i      �   ?   x��� !���.AIKa�����8���%GT��4AAiU45��.�Ƨ�H�Z�h��w���      �   :  x���An�0E��s*ې&��7�f�8�)9}�	iZ���a����	-��e�+-��UUK)ޖ���@&�F�0;Q@8�.2��O+��&�L�,hhD�͌��
ͫ:+7�/!�Z�$~'ֵ�Ő�::bʰ}��q$�1b�MvC��@8�+�{t�7pF��rZ�����Li�vW��W�����h
?^`��H�o�'�qO�b����y�rHn��2׼�5��J4ݰ�so��:������V��:�eQ�B�b�~8~�ߜ���*�E%-m��S?1�?����xc�|�dY��D��      �   r   x�M˻AE�د�� �����%,c�x��Cmz��Ξ#x*:	wql�����.-�'W��Q���15D�1���9{�h�|7m�8�5�V�q�������;.+ _�	*�      �   )   x�3�4�2bCN# m�e�&@l
�f@l�@���� {�`      �   u   x�E�1
!E��)��8j�ܤ�b�fBD�������V��};�:����2�3�ΏL���j�^z�{Nu�*�h�r�E��v�i���ѣ�w{���cΒe��VJ� bd$Y      �   I  x���I���תS���2qZP��)=��h)mɶ$۲o�gx{tV#��� d���?~���*� �*>m�=�L�~�����@��d��\��D&��29��}��>p���o#�^��m.�B�5��3�����I\���>���&�52�>�����6.NY '�PM�;� Ą�0��ZM�`�`	��XI`��JȀ� ����q��P��;L�/����:(�!�9�AN
AHпT��f�Kݭ\�}ގWG>}7�}y�Y�X�C��|v*E{������jb��[���Ǘ�}��?�U8�!�����P����Ӎ��>9eY~�nף�;� �B��ϨE�}T��o'���9�\K}�[���|�Zr�g�V��'�߯�	���2�9 �DC��H	�b8d�&�8y��J�{�&�D ��"����]����Q*B!�U���\#!�! ��%�t8�r/�󞞋��ҭ�d{�U���&�|R�f��m9>�j7�߇|��d� N�I�ac;?���T��T�{{U��$?��*k�r��m�ֹ����9�-�*��I�pkvϣrxG=S#�I��ٓ+�{u�����)_E0����ɷW*p q��1R�C�k��`��hC	6��P1�5D��N)?CJ w(d�� �DI���0�{Ec\ЖK' �[��1T:8-�����]����㜶w��m��s�:���3si(io&I���\�bN��@�NK̚�f���,*֣��Rs/��~E��-�&ݡE����ʮ8V<o(��!Z�$�QRzsu�￣x t��?�z��ؙP�_�����'�kJ	���M�xB�o���?H	G�WVT
�	|��(���P.����aTjj=�$��I1���X[�R�THS���N!l�Zro@��*e��1�ZF�K(*�ѩ�6�i���+��HAC�֬�{ѵ�̒��MȺ���;��!�`�auT��/��t]�t������)�r���sy�7��s�}�\����fstY���/�E�K���,]�w=7׭,oK�p�\n�����1��=ҫ����;R�rn����>(�P�{�Ty}1d��/�ˉ��߉�ABC���P���LH����.�
����I �#ʼy:$��~�+&4��
�)r�aݨY{��"�H����/��d�X,步=ߵ�4�i��#�e�,[:����59z.�W4���)2ɾu�79�(�b�	�W���rI��Eg\�Eg{��m�>Z��R�����"W��qa���7�G�]�}3��Vg`�c�ш���/o�Fm�}�}���>2��C��Mg����|{�����Ǐ���S�      �      x�%˱
�0���c$	/���D�j�Fqq	5J�L�����ُF�<_gh�%�n��a�ߟ9�8Xe�Vp-�s-|z��#���
�\����ؖ���`���TFcړ1�S,S��C,�k�z-n+!�4#     