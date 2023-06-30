PGDMP     5    /                {         	   tripto_DB    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25037 	   tripto_DB    DATABASE     �   CREATE DATABASE "tripto_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "tripto_DB";
                postgres    false            �            1259    25038    Nationality    TABLE     b   CREATE TABLE public."Nationality" (
    id integer NOT NULL,
    nationality character varying
);
 !   DROP TABLE public."Nationality";
       public         heap    postgres    false            �            1259    25043    PlacesToTypes    TABLE     s   CREATE TABLE public."PlacesToTypes" (
    id integer NOT NULL,
    place_id integer,
    "placeType_id" integer
);
 #   DROP TABLE public."PlacesToTypes";
       public         heap    postgres    false            �            1259    25046 
   activities    TABLE     `  CREATE TABLE public.activities (
    id integer NOT NULL,
    name character varying,
    description character varying,
    place_id integer,
    "activityType_id" integer,
    location character varying,
    image character varying,
    "Phone" character varying,
    price double precision,
    "Time" smallint,
    socialmedia character varying
);
    DROP TABLE public.activities;
       public         heap    postgres    false            �            1259    25051    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    216            �           0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    217            �            1259    25052    activityType    TABLE     ^   CREATE TABLE public."activityType" (
    id integer NOT NULL,
    "Type" character varying
);
 "   DROP TABLE public."activityType";
       public         heap    postgres    false            �            1259    25057    activityType_id_seq    SEQUENCE     �   CREATE SEQUENCE public."activityType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."activityType_id_seq";
       public          postgres    false    218            �           0    0    activityType_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."activityType_id_seq" OWNED BY public."activityType".id;
          public          postgres    false    219            �            1259    25058    activitytype    TABLE     _   CREATE TABLE public.activitytype (
    id integer NOT NULL,
    type character varying(255)
);
     DROP TABLE public.activitytype;
       public         heap    postgres    false            �            1259    25061    activitytype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activitytype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.activitytype_id_seq;
       public          postgres    false    220            �           0    0    activitytype_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.activitytype_id_seq OWNED BY public.activitytype.id;
          public          postgres    false    221            �            1259    25062    enterprenuersToActivities    TABLE     �   CREATE TABLE public."enterprenuersToActivities" (
    id integer NOT NULL,
    enterprenuer_id integer,
    activity_id integer
);
 /   DROP TABLE public."enterprenuersToActivities";
       public         heap    postgres    false            �            1259    25065     enterprenuersToActivities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."enterprenuersToActivities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."enterprenuersToActivities_id_seq";
       public          postgres    false    222            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."enterprenuersToActivities_id_seq" OWNED BY public."enterprenuersToActivities".id;
          public          postgres    false    223            �            1259    25066    interestsToUsers    TABLE     r   CREATE TABLE public."interestsToUsers" (
    id integer NOT NULL,
    user_id integer,
    interest_id integer
);
 &   DROP TABLE public."interestsToUsers";
       public         heap    postgres    false            �            1259    25069    interestsToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."interestsToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."interestsToUsers_id_seq";
       public          postgres    false    224            �           0    0    interestsToUsers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."interestsToUsers_id_seq" OWNED BY public."interestsToUsers".id;
          public          postgres    false    225            �            1259    25070 	   monuments    TABLE     3  CREATE TABLE public.monuments (
    id integer NOT NULL,
    place_id integer,
    "MonumentName" character varying,
    description character varying,
    image character varying,
    rating double precision,
    location character varying,
    longitude double precision,
    latitude double precision
);
    DROP TABLE public.monuments;
       public         heap    postgres    false            �            1259    25075    monuments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.monuments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.monuments_id_seq;
       public          postgres    false    226            �           0    0    monuments_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.monuments_id_seq OWNED BY public.monuments.id;
          public          postgres    false    227            �            1259    25076    nationalityToPlacetype    TABLE     �   CREATE TABLE public."nationalityToPlacetype" (
    id integer NOT NULL,
    nationality_id integer,
    "PlaceType_id" integer
);
 ,   DROP TABLE public."nationalityToPlacetype";
       public         heap    postgres    false            �            1259    25079 
   placeTypes    TABLE     w   CREATE TABLE public."placeTypes" (
    id integer NOT NULL,
    name character varying,
    image character varying
);
     DROP TABLE public."placeTypes";
       public         heap    postgres    false            �            1259    25084    placeTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placeTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."placeTypes_id_seq";
       public          postgres    false    229            �           0    0    placeTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."placeTypes_id_seq" OWNED BY public."placeTypes".id;
          public          postgres    false    230            �            1259    25085    places    TABLE     6  CREATE TABLE public.places (
    id integer NOT NULL,
    "placeName" character varying,
    description character varying,
    address character varying,
    image character varying,
    rating double precision,
    location character varying,
    longitude double precision,
    latitude double precision
);
    DROP TABLE public.places;
       public         heap    postgres    false            �            1259    25090    placesToTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToTypes_id_seq";
       public          postgres    false    215            �           0    0    placesToTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToTypes_id_seq" OWNED BY public."PlacesToTypes".id;
          public          postgres    false    232            �            1259    25091    placesToUsers    TABLE     j   CREATE TABLE public."placesToUsers" (
    id integer NOT NULL,
    placeid integer,
    userid integer
);
 #   DROP TABLE public."placesToUsers";
       public         heap    postgres    false            �            1259    25094    placesToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToUsers_id_seq";
       public          postgres    false    233            �           0    0    placesToUsers_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToUsers_id_seq" OWNED BY public."placesToUsers".id;
          public          postgres    false    234            �            1259    25095    places_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.places_id_seq;
       public          postgres    false    231            �           0    0    places_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;
          public          postgres    false    235            �            1259    25096    ratings    TABLE     v   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer,
    place_id integer,
    user_id integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    25099    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    236            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    237            �            1259    25100    roles    TABLE     S   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    25105    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    238            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    239            �            1259    25106    searchhistory    TABLE     j   CREATE TABLE public.searchhistory (
    id integer NOT NULL,
    place_id integer,
    user_id integer
);
 !   DROP TABLE public.searchhistory;
       public         heap    postgres    false            �            1259    25109    searchhistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.searchhistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.searchhistory_id_seq;
       public          postgres    false    240            �           0    0    searchhistory_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.searchhistory_id_seq OWNED BY public.searchhistory.id;
          public          postgres    false    241            �            1259    25110    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying,
    hashed_password character varying,
    is_active boolean,
    age integer,
    country character varying,
    username character varying,
    role_id integer
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25115    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    242            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    243            �           2604    25116    PlacesToTypes id    DEFAULT     x   ALTER TABLE ONLY public."PlacesToTypes" ALTER COLUMN id SET DEFAULT nextval('public."placesToTypes_id_seq"'::regclass);
 A   ALTER TABLE public."PlacesToTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    215            �           2604    25117    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    25118    activityType id    DEFAULT     v   ALTER TABLE ONLY public."activityType" ALTER COLUMN id SET DEFAULT nextval('public."activityType_id_seq"'::regclass);
 @   ALTER TABLE public."activityType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    25119    activitytype id    DEFAULT     r   ALTER TABLE ONLY public.activitytype ALTER COLUMN id SET DEFAULT nextval('public.activitytype_id_seq'::regclass);
 >   ALTER TABLE public.activitytype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    25120    enterprenuersToActivities id    DEFAULT     �   ALTER TABLE ONLY public."enterprenuersToActivities" ALTER COLUMN id SET DEFAULT nextval('public."enterprenuersToActivities_id_seq"'::regclass);
 M   ALTER TABLE public."enterprenuersToActivities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    25121    interestsToUsers id    DEFAULT     ~   ALTER TABLE ONLY public."interestsToUsers" ALTER COLUMN id SET DEFAULT nextval('public."interestsToUsers_id_seq"'::regclass);
 D   ALTER TABLE public."interestsToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    25122    monuments id    DEFAULT     l   ALTER TABLE ONLY public.monuments ALTER COLUMN id SET DEFAULT nextval('public.monuments_id_seq'::regclass);
 ;   ALTER TABLE public.monuments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    25123    placeTypes id    DEFAULT     r   ALTER TABLE ONLY public."placeTypes" ALTER COLUMN id SET DEFAULT nextval('public."placeTypes_id_seq"'::regclass);
 >   ALTER TABLE public."placeTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    25124 	   places id    DEFAULT     f   ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);
 8   ALTER TABLE public.places ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    231            �           2604    25125    placesToUsers id    DEFAULT     x   ALTER TABLE ONLY public."placesToUsers" ALTER COLUMN id SET DEFAULT nextval('public."placesToUsers_id_seq"'::regclass);
 A   ALTER TABLE public."placesToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    25126 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    25127    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    25128    searchhistory id    DEFAULT     t   ALTER TABLE ONLY public.searchhistory ALTER COLUMN id SET DEFAULT nextval('public.searchhistory_id_seq'::regclass);
 ?   ALTER TABLE public.searchhistory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    25129    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �          0    25038    Nationality 
   TABLE DATA           8   COPY public."Nationality" (id, nationality) FROM stdin;
    public          postgres    false    214   >�       �          0    25043    PlacesToTypes 
   TABLE DATA           G   COPY public."PlacesToTypes" (id, place_id, "placeType_id") FROM stdin;
    public          postgres    false    215   [�       �          0    25046 
   activities 
   TABLE DATA           �   COPY public.activities (id, name, description, place_id, "activityType_id", location, image, "Phone", price, "Time", socialmedia) FROM stdin;
    public          postgres    false    216   b�       �          0    25052    activityType 
   TABLE DATA           4   COPY public."activityType" (id, "Type") FROM stdin;
    public          postgres    false    218   ��       �          0    25058    activitytype 
   TABLE DATA           0   COPY public.activitytype (id, type) FROM stdin;
    public          postgres    false    220   �       �          0    25062    enterprenuersToActivities 
   TABLE DATA           W   COPY public."enterprenuersToActivities" (id, enterprenuer_id, activity_id) FROM stdin;
    public          postgres    false    222   $�       �          0    25066    interestsToUsers 
   TABLE DATA           F   COPY public."interestsToUsers" (id, user_id, interest_id) FROM stdin;
    public          postgres    false    224   f�       �          0    25070 	   monuments 
   TABLE DATA           |   COPY public.monuments (id, place_id, "MonumentName", description, image, rating, location, longitude, latitude) FROM stdin;
    public          postgres    false    226   ��       �          0    25076    nationalityToPlacetype 
   TABLE DATA           V   COPY public."nationalityToPlacetype" (id, nationality_id, "PlaceType_id") FROM stdin;
    public          postgres    false    228   �       �          0    25079 
   placeTypes 
   TABLE DATA           7   COPY public."placeTypes" (id, name, image) FROM stdin;
    public          postgres    false    229   �       �          0    25085    places 
   TABLE DATA           u   COPY public.places (id, "placeName", description, address, image, rating, location, longitude, latitude) FROM stdin;
    public          postgres    false    231   ��       �          0    25091    placesToUsers 
   TABLE DATA           >   COPY public."placesToUsers" (id, placeid, userid) FROM stdin;
    public          postgres    false    233   ��       �          0    25096    ratings 
   TABLE DATA           >   COPY public.ratings (id, rate, place_id, user_id) FROM stdin;
    public          postgres    false    236   ��       �          0    25100    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    238   �       �          0    25106    searchhistory 
   TABLE DATA           >   COPY public.searchhistory (id, place_id, user_id) FROM stdin;
    public          postgres    false    240   J�       �          0    25110    users 
   TABLE DATA           g   COPY public.users (id, email, hashed_password, is_active, age, country, username, role_id) FROM stdin;
    public          postgres    false    242   ��       �           0    0    activities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.activities_id_seq', 50, true);
          public          postgres    false    217            �           0    0    activityType_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."activityType_id_seq"', 6, true);
          public          postgres    false    219            �           0    0    activitytype_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.activitytype_id_seq', 25, true);
          public          postgres    false    221            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."enterprenuersToActivities_id_seq"', 7, true);
          public          postgres    false    223            �           0    0    interestsToUsers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."interestsToUsers_id_seq"', 1, false);
          public          postgres    false    225            �           0    0    monuments_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.monuments_id_seq', 1, false);
          public          postgres    false    227            �           0    0    placeTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."placeTypes_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    placesToTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."placesToTypes_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    placesToUsers_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."placesToUsers_id_seq"', 3, true);
          public          postgres    false    234            �           0    0    places_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.places_id_seq', 23, true);
          public          postgres    false    235            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    237            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    239            �           0    0    searchhistory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.searchhistory_id_seq', 9, true);
          public          postgres    false    241            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 32, true);
          public          postgres    false    243            �           2606    25131    Nationality Nationality_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT "Nationality_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT "Nationality_pkey";
       public            postgres    false    214            �           2606    25133    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    216            �           2606    25135    activityType activityType_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."activityType"
    ADD CONSTRAINT "activityType_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."activityType" DROP CONSTRAINT "activityType_pkey";
       public            postgres    false    218            �           2606    25137    activitytype activitytype_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.activitytype
    ADD CONSTRAINT activitytype_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.activitytype DROP CONSTRAINT activitytype_pkey;
       public            postgres    false    220            �           2606    25139 8   enterprenuersToActivities enterprenuersToActivities_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."enterprenuersToActivities"
    ADD CONSTRAINT "enterprenuersToActivities_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."enterprenuersToActivities" DROP CONSTRAINT "enterprenuersToActivities_pkey";
       public            postgres    false    222            �           2606    25141 &   interestsToUsers interestsToUsers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_pkey";
       public            postgres    false    224            �           2606    25143 $   monuments monuments_MonumentName_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT "monuments_MonumentName_key" UNIQUE ("MonumentName");
 P   ALTER TABLE ONLY public.monuments DROP CONSTRAINT "monuments_MonumentName_key";
       public            postgres    false    226            �           2606    25145    monuments monuments_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT monuments_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.monuments DROP CONSTRAINT monuments_pkey;
       public            postgres    false    226            �           2606    25147    Nationality nationality 
   CONSTRAINT     [   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT nationality UNIQUE (nationality);
 C   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT nationality;
       public            postgres    false    214            �           2606    25149 2   nationalityToPlacetype nationalityToPlacetype_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "nationalityToPlacetype_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "nationalityToPlacetype_pkey";
       public            postgres    false    228            �           2606    25151    placeTypes placeTypes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_name_key";
       public            postgres    false    229            �           2606    25153    placeTypes placeTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_pkey";
       public            postgres    false    229            �           2606    25155     PlacesToTypes placesToTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_pkey";
       public            postgres    false    215            �           2606    25157     placesToUsers placesToUsers_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_pkey";
       public            postgres    false    233            �           2606    25159    places places_name_key 
   CONSTRAINT     X   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_name_key UNIQUE ("placeName");
 @   ALTER TABLE ONLY public.places DROP CONSTRAINT places_name_key;
       public            postgres    false    231            �           2606    25161    places places_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
       public            postgres    false    231            �           2606    25163    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    236            �           2606    25165    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    238            �           2606    25167    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    238            �           2606    25169     searchhistory searchhistory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_pkey;
       public            postgres    false    240            �           2606    25171    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    242            �           1259    25172    ix_activities_id    INDEX     E   CREATE INDEX ix_activities_id ON public.activities USING btree (id);
 $   DROP INDEX public.ix_activities_id;
       public            postgres    false    216            �           1259    25173    ix_enterprenuersToActivities_id    INDEX     g   CREATE INDEX "ix_enterprenuersToActivities_id" ON public."enterprenuersToActivities" USING btree (id);
 5   DROP INDEX public."ix_enterprenuersToActivities_id";
       public            postgres    false    222            �           1259    25174    ix_interestsToUsers_id    INDEX     U   CREATE INDEX "ix_interestsToUsers_id" ON public."interestsToUsers" USING btree (id);
 ,   DROP INDEX public."ix_interestsToUsers_id";
       public            postgres    false    224            �           1259    25175    ix_monuments_id    INDEX     C   CREATE INDEX ix_monuments_id ON public.monuments USING btree (id);
 #   DROP INDEX public.ix_monuments_id;
       public            postgres    false    226            �           1259    25176    ix_placeTypes_id    INDEX     I   CREATE INDEX "ix_placeTypes_id" ON public."placeTypes" USING btree (id);
 &   DROP INDEX public."ix_placeTypes_id";
       public            postgres    false    229            �           1259    25177    ix_placesToTypes_id    INDEX     O   CREATE INDEX "ix_placesToTypes_id" ON public."PlacesToTypes" USING btree (id);
 )   DROP INDEX public."ix_placesToTypes_id";
       public            postgres    false    215            �           1259    25178    ix_placesToUsers_id    INDEX     O   CREATE INDEX "ix_placesToUsers_id" ON public."placesToUsers" USING btree (id);
 )   DROP INDEX public."ix_placesToUsers_id";
       public            postgres    false    233            �           1259    25179    ix_places_id    INDEX     =   CREATE INDEX ix_places_id ON public.places USING btree (id);
     DROP INDEX public.ix_places_id;
       public            postgres    false    231            �           1259    25180    ix_ratings_id    INDEX     ?   CREATE INDEX ix_ratings_id ON public.ratings USING btree (id);
 !   DROP INDEX public.ix_ratings_id;
       public            postgres    false    236            �           1259    25181    ix_roles_id    INDEX     ;   CREATE INDEX ix_roles_id ON public.roles USING btree (id);
    DROP INDEX public.ix_roles_id;
       public            postgres    false    238            �           1259    25182    ix_searchhistory_id    INDEX     K   CREATE INDEX ix_searchhistory_id ON public.searchhistory USING btree (id);
 '   DROP INDEX public.ix_searchhistory_id;
       public            postgres    false    240            �           1259    25183    ix_users_email    INDEX     A   CREATE INDEX ix_users_email ON public.users USING btree (email);
 "   DROP INDEX public.ix_users_email;
       public            postgres    false    242            �           1259    25184    ix_users_id    INDEX     ;   CREATE INDEX ix_users_id ON public.users USING btree (id);
    DROP INDEX public.ix_users_id;
       public            postgres    false    242            �           1259    25185    ix_users_username    INDEX     N   CREATE UNIQUE INDEX ix_users_username ON public.users USING btree (username);
 %   DROP INDEX public.ix_users_username;
       public            postgres    false    242            �           2606    25186 (   nationalityToPlacetype Nationality_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "Nationality_id_fk" FOREIGN KEY (nationality_id) REFERENCES public."Nationality"(id);
 V   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "Nationality_id_fk";
       public          postgres    false    228    3261    214            �           2606    25191 #   activities activites_places_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activites_places_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 M   ALTER TABLE ONLY public.activities DROP CONSTRAINT activites_places_id_fkey;
       public          postgres    false    3296    231    216            �           2606    25196    activities activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY ("activityType_id") REFERENCES public."activityType"(id) NOT VALID;
 K   ALTER TABLE ONLY public.activities DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    216    3271    218            �           2606    25201 "   PlacesToTypes activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 P   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    231    215    3296            �           2606    25206 2   interestsToUsers interestsToUsers_interest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_interest_id_fkey" FOREIGN KEY (interest_id) REFERENCES public."placeTypes"(id);
 `   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_interest_id_fkey";
       public          postgres    false    224    229    3291            �           2606    25211 .   interestsToUsers interestsToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_user_id_fkey";
       public          postgres    false    3315    242    224            �           2606    25216 !   monuments monuments_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT monuments_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id);
 K   ALTER TABLE ONLY public.monuments DROP CONSTRAINT monuments_place_id_fkey;
       public          postgres    false    231    3296    226            �           2606    25221 3   nationalityToPlacetype nattionality_placetype_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT nattionality_placetype_id_fk FOREIGN KEY ("PlaceType_id") REFERENCES public."placeTypes"(id);
 _   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT nattionality_placetype_id_fk;
       public          postgres    false    228    229    3291            �           2606    25226 -   PlacesToTypes placesToTypes_placeType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_placeType_id_fkey" FOREIGN KEY ("placeType_id") REFERENCES public."placeTypes"(id);
 [   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_placeType_id_fkey";
       public          postgres    false    3291    215    229            �           2606    25231 )   placesToUsers placesToUsers_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_place_id_fkey" FOREIGN KEY (placeid) REFERENCES public.places(id);
 W   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_place_id_fkey";
       public          postgres    false    233    231    3296            �           2606    25236 (   placesToUsers placesToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_user_id_fkey" FOREIGN KEY (userid) REFERENCES public.users(id);
 V   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_user_id_fkey";
       public          postgres    false    3315    242    233            �           2606    25241    ratings rating_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 D   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_place_id_fk;
       public          postgres    false    231    236    3296                        2606    25246    ratings rating_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 C   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_user_id_fk;
       public          postgres    false    242    236    3315                       2606    25251 '   searchhistory searchhistory_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 Q   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_place_id_fk;
       public          postgres    false    3296    240    231                       2606    25256 &   searchhistory searchhistory_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 P   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_user_id_fk;
       public          postgres    false    240    242    3315                       2606    25261    users users_role_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fkey;
       public          postgres    false    238    3307    242            �      x������ � �      �   �  x�-�˕ !��`�a�7��?��b悄2mL�_Eg�Q�'�׿�q�b<�3�|��e��̵l�O��m�} �շ��;�b,6�G�o��Ā},&�x��E$1: 4�����F�z����N�h8!���6@pqN>���QW�G�+���/�I<��N0���,q��∙b�D�ib\ɍqDRmq�@�'�X��)��8��w����+���nn��G,|��b�}%�b������Hn�-�XKܱ�_{KعD�a�3�G��Qa� L��!��=Kd>��~U=%A�E)�8M����F��wIN�)θCqKD�Q l"�W$�i/��rd���Hh��%�x[���n>�(.��^c�#���DM�p�+����J'fB�dAJ�+��)!9y�����H��H��+H��-}Z��D�#�qKp���D %!=���d�|ϛgݞᕘ�HL�%&]��#۟��K�� ��땅�ߧ�%��IT��&���/"����      �   E  x��Wkoܸ�<�t {[x<��c�A:����&��n�&uaP%іHY����{/��ǎ?���(�ϹW��#�"%m���Qq͉���sNv�=�����N�{�j�d��Vk�j��*sR���g�_B�:M���;�%���ۉ�&� Z�FY������#J�%h%��O�VѺ�ĵ5�P]C�Pr�/�J���M!L��F����?�vj%�3Jz)zn/�M%j��������~jLG�ݦ��KӃ����Z���p�	�8cE����"�tӪ�Pxa��`$���6Ut�ɚ�نt\�N�ѳ�0��Ѝh�f�"���r/jUv���O^�V�2���e��q�N�j��U�ߢI-�`��Ot˙(�Cgh�I��dLu98\og�wZp�%����lg%�5�����IZLL���@n0ث!��o1@�8�jI6�XB��`Ѭ�əMn>�OeL�������T�����f��Vϭ!���dy}r��$K\_�gv+�[���}w�?�٭ЮӃk������a����ԅOJ/�q��;I�����/�3s|'�d�3/N� 
�n�����ű߸�A�M��������/����iT��l���q��p?
���;��'��AnŇi�F�n�O��~]7mK��m�C1wۅ1����Q0����F!��&�L��^�߄2-8�%�%����J0(�0��(9�����6U��p{ݩ�NYe��g3
��Dn�CՕT���&P���HTP��G�%�/�1/
k��-p��;[��4-��@���V�$��D���0@�tT��
����� `�H`�� ��㈼�R�$p�FBx�j�5`�c�6� ����(���(��d��k�6B8k���tl{5�� H���=V@����B*D����j�� $k���[�A�X5��>CK��I�� g�H�9�,$h[�p<z��#��0z�,��(�|�H��{0>�
��I� ����B"_[?��o���(u%�����������u�m�X��K%{C.t��rۚ�}�l���A�9/�~��}�$ A��o;lQ?���芶p���slͨ`lB���
mĪ��{n��w z��źi �l_cP���"{���%���ܪ�Ŕ�q@�(��V��5YWh-�hk��A�d�砡�p�#b� ��Z�Π̧��L�S�8��Yg� ,��ǡ�f�����#m=�����R ��)��@U0��UV�����i9���.-�伆f�S�M��������L6$iF���C�ZC�~F��y[0*){�56�U��u%��L�0o�)���_ab����ս����Hn�yA��r�	;�40��I�΀�L/�eM�!6۷�n[�ghę5TЙ����S'����n��oh�AL}�I8�3Zd�����ϝ�R���(={�����<둲���CR �f
�%ͬ`Tx�tVd,�3��|57~:��IΣ���&�{ƞ���ƾ���m��a�9t��q�8��[9�k�����2j����l��O�4;�"��2�u��S<��S���YjU���>}���W��VNU�a�Uf����Z8���X�����5��ش��Z'��;�1��u� ��k�*���o��/� �t]?�|�N>O|Ǚ�γ���L�{�}�r̸����7��*�����o�e��5<m�	ʸi����\�K^��	�-��إ�5��m���������	�l �آ���^�������L�o�c�$�﷤Ftt�[�\���e���7'mA,VC�/hՕZ�	�gp��yh)6V�(ݢ�@ׯ	"��F���jJ,
�[��e@�vۗ�5|����)��st;L�8n���=�5�)0�
�H�Z�V}�T>�-������du�l(q\	n��g�������`m'�ez����8����y!}����=�O<��4��ԋݔQ?ʁarJ�S���K(?d+�Ə���)�s7L���`x��p��$�#��x��,�0�� ��&��?���w���y7�a��w�G��o�/n�o������GoBP�ߌ��^���|_�.      �   R   x�3�tN�-��K�2���/O�O,Jq�9��KJ�K��L8=�S�2�R���%�E
��E%�\f���`3b���� `�       �   �   x�E�=n�0�g�:A�'i��)ХEQ]�0��0Q$�������<�z��w�E&|k�W�(�u?i"kQ��ҏ��54؟���b_�8����h�"����g�p�$+w�G^�!����0�j-��,|�*�u4�U@g�e�s�*��v�Z�}��n�S5liʽ5���d���DY��h͹�p��+��;�Z�O���f������ƜY��`>`d�AN�)�l��ٯ>��'!��ow@      �   2   x�ɹ  ��:�`����:Y^��.�Q1���o�\��O� >�/      �      x������ � �      �   T  x����n�6��㧠�`I�H�4���8Mд@��"��#Q#Œ(����U)h� ��'�.�8��D������d�&��ծܡ?n�l�b�g�P�����Zm�]�tS(h���K�hk��G{i�fW7�ڠQ���(uu��*�{�,�[�kк����@]���NZw�3�4��C�t�T;Tۡ��f�g2Ż
��궠J��u�h������[���3��R)��I�V9��a���H��U��Vm���t��4���E�\oO�h�7Zι�[U�2�f��޿E�n[��HE*���|Za���.hȿI���p���Q!�E��mT�&""� 8�2Jxtڬ^K�	V��m���y�^����]ַru��2._.5���tj�0LH������w�/2�)�)�Ln�B:�␶���1<|�m|�)��ɜ�D��I|�q��2)%��PBIKq1NR�CRL�`!?�Ι�������4&<[�-�@��e��7�]ɝQGvF�Cw��k%8��+������T�
�p ���S=@�z*�Z�X���̙�\�N�F���m�~u`�=��Q)F-$�c�9�F���#����O	',����v��﮻��;�� ���뺅Sln�_>�������!�_8�:�˝\� ��i�k<�{ؖ��]��s�D	��dm����a����$ֺ\�G�?x���[������G�W���er�f5��t��Ń��/O��Xr:�����xh3��gO4��G�d�����d��,�H8�B�=�-eK\p,En�e�'"�Kɋneg����d��/O���1�&4NE�!��,�zP��,bg�
)bd|8 �1�UA�w"���X�1�|�׳����it~e������j��<P��P�C��hݫ���i��$bɗϐ�htI vS�WfT����I6�@p����j�1�-�����#B�ak�Q*�{F7~۷~��r�'�����uʬ�Yi�l�G�{\�{��P�i�>Ř$c���xz�/3����4�>���8�9)D|��Ǟ�����cvS�41')�\�P�q�҃�����O��      �      x������ � �      �   v   x�%�;�0��z|���hr�4�`���ml!nO�)�ѯ��a�2���!�w����'R���,Ϡ��@<���pS�J�p�J&�Ժ+��*�7�j[��]���=K��i�9��R�+�      �      x�Ž�n$I��&�«��BI��
W�9fe&Y9�����E�3�݃>��U]m�Տ�/~��F���J@���[��Dg0s�U���2����9�;�Y���T���'�,S1��q�T���+�՘�2����]#����e\�E>0������Ԩ����j#/j1�KC��X�2���*���Qo�\U�cc�X�S.�x{�$��4�4i5��Q�nᑕ��t�YZѧI���Ŧ}���OE)�Z�0��m��3Ns	Y�,y5M4<9���4�/�{'"-��i]/�?��6M9?����^�g�e�칇n{¤('�L,���5�O��������Q�瘇�盶o٦oZN��X��c9~�Q�����[��p�H���\Ē����+�yU<�^r}3�����<@�����$��K�ô$�J'9��{S�\+9��Oѣ3	�i�T�+������Ӻ)�y���zjL�yrh��Ѷ���gDA�;�
5�$}��_��%�I��tn�E1�C��Ǘ�������q�l� ��8�B����W��xo}OB"��؞���!�����������-gO-C��j.�46�e�g��o`F�f��/��('8!�F��庖y�/����I�u:=n�U����M)�\}i>a��٣�m�v�ɉ���V�����8[ʼn�|Η��t��}W�H`���̢x�4ͤa��="Ӂ{��)�Z r���;��V�r�m���YJ�n���IJ~8}e7v�.y|�8O>1��n�a ?]�􈖞����=�-w�-q ���rg�͢2N�e:O����^��|O4�ߴ�%�.B&��4|{pʰ#M��5�޼V�7�t@�����R,
�TWo����הE3Q]��,S�e�ღ K��Q�0l]�9jF�Ǹ��
�w÷�Ś�>ǀ����
�<�EY3���a�)I~z���$T�y���T6�nr l�(a߮���^\�_}X��w�O�5C�*��F��L�v���vde��cQ��e(��8�����G,��]^�	�pUo����J���Oβ�eP\�c�����k�}^�6��f�Y�
_�����i:��C�ҋ�X�d� ���L����s�-
5����ہ���Si�(�A����n5f0�ޣ�?�|x/�R�g���4������"�ui��t��r<�v��-�j������	���������h���/�CcX�L
���T�1������T�̒<��pR`�&&u�Ņo��;'��aA�%=��HQVĖ(՞�U�R��|����B���R5�BT3�e:���b�����G��<K/,���8�R���v��n����_1u\�m0�c�.q��ڠ��3����mk�Ǹ.F0�O���AmgB�?��Rn�(� ��[���b.���Ţ 	���z��t>�hO׵����(?��C<��a.@ �D]����,�6������Y��*�9BL��`Y;�,���%�
b$� ����}�n?i�2��U� 	��sTs�������������I��>,?��T\�wLײB���
8�FP�t�`�d8?��3��
��ސ�eE
5f} s6�.�5/��a=ft�!`�b�S�q�S:-測�a4ЀϮ��
P@"�r^,H��8��&5X$
aT�� �����i�k�&G3B��>�QT��{�v�n6)��ˤD�����B�C3>:㕟��w�9�=���*>�}`�sl߱�Q�g ��]���mw�� �(<=E��޹�����TU=��AjzU�^�F��K��@���.A��$E4�-c"*���"���4��̈�sZ�$��B�l0@����\�`:.��ވ2QL��XUF:���A#ՄJd�8�9JT����y�2�V�>�\���e�˯��V�v9>,���<3`eQ�{��F���&���T�M�ſs _w^��� �&0�kzY����n^kē��:�"��m,��d�f���r�����2�6g
�o�|��z�{�P�Q��J�<�I	ځ��u3%h\��\[�	\Z1�P��R��YO�1�	8էL�R�[�9�*.в�g�Qp��kG͓����_V�ۋ��_(��d����q6�n���UQ��ZH���J�n%q��L���x�0�@~t��SA��[n==@�6e'�	�� O(eϼ1b�u%�y3��a�P�� �ƱB��je�ҡ�8�%S��F���m!K�kIv��y���\�b#��t"���D\��ŀ�z ��a�h4(�w���b��T�2W�T>�;)@^>k-�qja��0����Pm��A�B���p���z~��#��Oʉyv�����}L�$S�]�Hm/��qX`�@n��z޾gw�܅,��] G��S	:�up��k�O�2��T=�۫	 |��J��D�"�!����Q)��sｩ�Q��'���zkM�׫��������Xˎ<�w�~��ȋ�ԱM�Z����=@Tdi��f^��S�wD[�l*0g9zk�Yl�O>@��b2��ԁ$�[�%�^��֪̥��	ԡ�R�����C���N
@��"K:)}�n�4M��.���5܎�H�J �K��3��аf\^�4۵��WP���[n��-RR5ۊ_�P�s��y;o���đZ=���'v�M0�=iD��*.μ�{��yr����	xƵ ��@�L�I� �w�X�K�����&ۢ́D<��� ��n<�8|[Жz�&%�m�V^�-b��X"� ��4E8���Ę���9�bGg�)T$E���� ��6 y��X�]Gr��A���l��~*WU+�i��l3Os��o\,2� ��4�Ә�Ϛ��=4�����֭�'��K�rq�W���2}����83p"`}���d#i�6���M����X��=.@����z�0���:Q3��lE�d5��Z�p�
��%ɋ,$=ݨ��2i�A�4&���@�&���͔dʴTה\�h�9�C^���A+�U�G�;`vKXE�Tp01�s�^�g��&�֫0����i�~�o��O?��oc�R#����Q2=@,��9�Z���{4�_����'��q_�bBy����N�=�I����2\�Գ�~�4���?;.���r.�2�1�L�R���d*����2���; ���`��HPͭ\K��s�@���w�8�>y�L�~�-�H�3�mP�0�<�X� ��0�a�j=�M�R��G�T&���0�N�2�u@)M���@�񼨠W_�o���a�����-�D2�z�w]	0�� d�Ԣ�w��69���N�i�hEyQ��}�z�|�}���x�Z<)v>�^��u*��/��7J� � �{��X��ǇO�e�n��6M�%zya�'���b�5UC�8Og�Baڐ!W����Ϡ�V�Nt`-�'d��jF�)�����F��5`�	Q0t`���v�����{�
y)�nRX�˷U�#��-�=��+��5d���ۊ��U��2�ͻX�y�����O�2�ͧ�x����s*��B�qP�Ad9@&�i�6A�o��;�zv_
��Τ����EI� ���+�gs򋱵ۚ��~�Zef���"'�>�ƴ�Ӫ��V�I�� Y1�9J��$�!�I0K�ŚG����f�����v)��}@�IQ��fɁX��t)G�[}�NK���x�$�8�0j��&t����2�2]��:��͸�7r�4<on��͗[�������"�5=XčlԵ<�j(j�V�ݽaV�	�LG��m>��Y�.���=��Q�̃ ӎk�W��ʻ���#F@a���l������C�s���;�a�WMz��	I�:u3a)ISp�y�س��� xh�?�sz[4e�����K���I��l.��I���헛������&�۳���e��M�r�PI=�	<3tఽ��]���r�_�O���C��+� %9����"���5�hz��c��dXϱ��^�l4Wڨ�����l$*0\b�*|ے�%ad-@�S�����%�pK�    �\�hL���0Dy�2�&^۫�z�����x�%_ώO�'�m�`�vC?r=7��1k���F�㘁��{8�Ƶ,'i����]��%�Qӌ^4"@�
u���zk�G�&�o�YP࢝�N�Z�t8L%Z���@Z0�F	L	���Z�V���9�P���^�c�� 8ľ�q:ny!��W��
��<�e���EY�A���2��(�VГ���g�MPS��}_=�̭6I�������w-#E`�|��"���44�����ᾧ��?.`����S����y)��(�ڵC�Dy��[xp�? %�el�#�f].��X.%� ���|�Zk"r��រ�p'H�����D�w&+,�W����d�4�:�c�j��썼�I��*(�"� N�c��(�����UƤ�GSx���Cᷢ$z-v��5���x%I�^�r��g��Z%���>�x��E'��[��fiz��W�7`���n�ַ|�:+,w��ަs`+�V{ÎiSLI���T��3�$H?��/���b�5Ƣ���qJD@��D^\��U�����l</���5q���{y#�N'+�Ί6���J�N�&O�(�@�n#�vlӶ����9}O����_�^Z]�X*Qcx��c�[F��Z�{j^�Qz�t_�J�|�(�	� �z�#�f���鄐ϴ�[w�,c�$��+����H�q3��>I�duV�d���r:^2TB�t"��c:��a��9�����![��Pn����?�f�:'>eX�o��k��J��dE"�6J��;�y�Ԕ�	M��������Q$�
�T(>:��'^�JɍOE���f�8�-Vw:���i����Yz"���u��E,�ޗ�έ(?�X�F�� �G�K�`9 ,�5����o�{:���$TnĭC���5������3}�Opkg�VXp���`�|�=s��1�.�F )���W�LԵ��v`���������8EUG^581������-�T�d��Pc�fe�rCh��휅��/��ҩD1�l5�e�nb�[�b�$��~����,.�I��}=n� �|�cY�d�`��ob\�콞".���9|��J�=�B�pEsg|�e�̾o]�:���\�c|g��D
�v������~�:)� 08��_1Ξ���C�/EB	�33�q�C�_��WG� �~4J022x�y)͓R�  �Dh���Z:����S�8���c(�+�j1���E²�/��H�V��{\��z:�6H�T%q^�]�u�/��cY��{��dޏ��
{H�oT��7�W�	��͜b� �s�\1���[;|�`���_}�{����|���;���0LO%�U�R[�:�M��f*6Y�������8�O���=/�ބ����+�'.�γ�9#�Qk� �xm��CN�'>7>�) 2��ֻXm`�*��LRt��1&:	P�冴i����_(����[��s�"+7��h]?)."�.������ǮU3������l/P�x|�3����O0�Ʃ� ,WhSny�8M�i/	6�)9�^���:�DԾ�T8�|�	;� 3�T&�L�lf�Oj�3Әe�����(��'����U�f������q���6�
+ ��q)F��mz��:���h��g կ q���]��D���ΔH%J8BC"�0&�L�4J7��D���阼4��7��څ*Tħ���WR�� ͦQJ.����U����F�Wr.���yoD��d`?��eӼy��X:φ�-ˉl�~dcg9�c�h�z�������+��n
�#�AN�}�^��/�4!�[^V�Ǥ}8!�R��.d+\���\�hB� �����2��j��~�̜�y/�;E����y�a���w����9�����0A��|��R ���Z@�����5�R{����q3��W�>]o'yތ���cy.�G�p/��B�"�\����*M��"�R@S ���u�~5��*I݁�'�y��"ǋZ&;T[���89 "2�J�Y��8��3�<߹�m���	���%���dEΗ�Y���`0�;�ű�-��p
��P�呴�^cgB<G�x3]�u��p��|�����$�ޜU�r���B�t��R5���\�w�}����@�b�m��{x� I�����j��[�F���#��/�*Lݙ�"ߨ\�9.��+�p<D+��69����)p�[	���EU3�博U��)Aw@h�D`�T;_ǔ{ ���V��}��q�?�y/o���������j�\�L7�w\������ε�Њ�}�gc��Cо���ot���L/�C�@9;y��nX�<d�����M��5¾*�+�H��3���T�⎥SgO۰� /aj�B�QwJ͝aOw���6��񸞮�WO���ϣk�}2,�����y&��(�L*�ܨ��C{
�$��T��E�?�=.&�Zp�������XQ���ɲ��3�U}�ˡ�A�pYYk�0G�Z���c*�������dq��ʉ��&5�<ܩ�B�n�]�I/��K���A���8��� j��4X9*�A���٢�e6~Qx�E��n�y��۳��l� �;��Q���r�#�)9& �p�#�q��㬊��
���T��1ۣ��0�gX��¢Ex����+Rs���W��B&'-���jU�!"e��a����J�b�ֲAXa��n�n���c�*�� �����,0z���V�k�\������s�Z���j)��ܵ�ᦼ�rG��(���GD� ��{�#0>�>&�6}�X@�};z���D�L�}�h�߃��1]L]r�}�)�;P�kR�6�#�)BpW����S0�����i�W@�M�m��]�/��i����5?��(�8.Z�/�zYrY(���2ϐ"n�^�f{�a�()~Z�W��p=[\��yy�+{���� gGf���\�8����c�1 {'�q�~��M�͖�I]��G�u�rB��x���Z�N�Res^�F�F�cƠ(�Ź�2���(|��O���M�|Hy"�!U��s[��`>ءq1�"�a�R���]ҫ��������� Ȩ���k]w|8�='� �����O��������������~rv('�きd�9lz�쁒v��;��pR�mTO�M� ,ZZ��L��S��, ����l��|5N�C%�U���?%#KD��,��c6%�ˉ9�$��*��FpL>` � ~�r.7h��9?��RN{�r��B$I�Bv��cO�M�-s����l�Ͼ���Y㜼�:��B]� K�A`�g(X � Dz�M���A{e
������]��� �G[�ʟ�ю�2�ʓq��%]g�_��OrD##e��Xz�w-��0{B}C!��[���~��#)=+���P��%��h�Hktb���+�����u�Y��Y����e�Won>~-�w��ve��(4F�/� г�+�ځ��?!,{w�
���P�<ZJ��E� ���p��8:�Y��
gn��;5]0M\?I�%��(�bE�&S��TZL�� 2�C/_r��-�T~�{�IJ�q�Ԇ%�UL%XT8�H����(�Q�G�Y�3��������_~��*3���ł�l�\�qZ��D����x�t��3���������82x݈Z5� �t�u,��<��N�7T�����KeO?~�1}P�.I}�N*�@7���۹�gP��^}	&�3�!MK<k�0ߩ}<�%��o����˿�(��P��4P9CXܔ5�c��{ʳ�_g�ٙ|2�7�>�Ww���:�2���J�{��O|'R���	2,��0r�`߉��J�~���A&Gk�+����f�&��
�Q� /���(��~���;W���������a�g=�����<�g�5����ji�"��wЌ�t�Ĕ���/j��ϥ����X�J�I��?��͛��U���1��W�1<O�`:���o���k�q�Յ,0C\�b�W���)L)X�s�Q:3J����+�4�C��ֻ����y�pr�m>��K�����@�;��<��A��*�~��`2    >y���̙�}ż�niW�AOҢ�ye�d}���;{d��%�4=*׉,�q�[Xǉ�0�q�]P� h�oine�����b�;FM��oeq��
�zs�Nn7O*�Tl�O����z篔��׉`ڭ.��1M���p�u�.�}
��:O�?�$��oj���7�}O��t�Au]�����ĥXB�������������c`�����|�FWʔ҈7mL{T��d�t�R�=y]��qL���m�1�~8�4*�կ�zJ;�TOz�,���lq�Ӈ����O?��w|�ű���*@��yfh۾����� С47���c���^��
ˬռm-k+����R5�6�C��v�gz��!�9F���8o8J���k���I�X�<H�:]��T�B���P���O��\ř�*�x ��;�P�q�$S������o��꾕���:�닄��n4`:�d	��R����zmQ�!��zo�>!�/5Y�m,�â��B�\D��Ln�J�\J�(�$Jx������k�&/C�@X�L��z!�L����x��B��Ϗ5�K��D�N�nTB0LGV407D��p��¨)��|�������{�Dj�}���GL�9&����gl��y���5��I����Z�4M ��{9*�ۡB���\n�|�-��2xȝ�]9_�����Ms{F�i�hᛶ�X��m�ڇ/"��]�k$���x�����hl����+��#�B�ܫ�Q�u#�Jp-�[���SK�Z�xRJ�
0�����y������jx��h�t���nc�puU�cuA�9BtV�I���ػ�*�X*����_
�"Ak6�����	J�O�,J��Ůw':NG�i,`���I��Ags-�A+��0�����b.Ȥ#e4'k�n����CA\�Z7��!�/}?C�>��?���nb01D?��'�	g��(�V�ige����g�R�ѡ�sNP�`+cA���Hg#Yz���S=�0:�R�$W ��a誀y�y�
dHA6�����P"�M%��\P���#�,������B�W�w��7R� �yi��}%])�Vp���A�)ec�a/�k���Jf�ӳ�.�l���Im�u��Gw����"���S5����z����i�tM+�L������ ���fW�X3p��3zU��|mˢ��,j`t�zLLtqW.�r��霶�\�����K�HiVo�gbc}mcXBU����P2c�WV���s�ž�ec��@����V��o>�nV���ٞ�}S,��γa�=�5ܻ�6!CJ�-���w��&���2���F|��*���jʂա�g\����lV?��inl?5�1�� �Ij���ՋB���K�6�Ҋ�g����׬�ލ�g�	��l��X~==�s�D�m�b&;�EA;O�k�� ���\�n���/i�B�96��W�r�y:z�ju��cu~1�b]�^�3]�����]ײ\Oy�� _=ϏLߍ��@\��T)
��w�ӄޕ�zUL)�������8����~ ��^��"��وl�ĕ�V��WMM��������1$Bym8["8Q����9���9
���4Db"���PR;�V��)��s�|�j��o�'�|�NO�_����]Z5�CUt�R�s�GX_��f��>��gn���S~�mv�J�E�����U�ә\�Ȫ��FEԿa�������.K�r����J��� �Q{t��a4�jr�r}*�Sl����_i|ր}�?9��Uy1��d��,�S�N�ӡ��[��\�Q�0��^��7�������ʔ�>�]�֌�j��EϤɹ�1�4�+�C��z��*an������O�F�����u����J�Z�~�i�]B�*G�U�л��:�q�E��	�Bm��ꇻ#���̿����͢:�7O����fu��d9,��f]�y��(���Ĥ83Љ�&���&&=���É��.�t������*��ۖe�h�m��e�WE�F����A�cL����K�?�JR�`��x�M�0�L�����s�����ɨ�8Zk ��A���G��f%���H�"����&�C�~2Q�T@�[����$(�r>ʄzq(%&7����${m�b�veY��s{��$�s��<Q��%��mO�6��Qlй���~6?8�\�U
�h,���0t�poIE�1�HR7�y<��]f�<�u�����s���/��}��Շ������� �����Z��*.<v)�%�WEN���Wśf�8��vk*�i�����57�N]�?a��C�}oeΒ�&�Vm,��\�`5�������C�t�6eR����o/aU@h�4���H̹M-u�R9Dxau_j��}Mr���H�%��4L�,K'%�a�j�i,��Uaqt!	�:4�����p��X[���l����XtEbBE����K*&Q��� �%QN�q�j�6X�M���Ӛ
����K=DL[zB�]"�F��t�ʱ�5�ix�e�a�� ��PΩ|;��+�"��.U��e�қ*��ٚ��pΘ���҈D񦭩F0l�ɵ���F[�I;��s#�#Y�y#u%7œ��8���1f���6c��b��Ui;��q� Hl*��t;t.U�����j�a �ǕX��J���cl�E���r����<�L����U����^?�ng�O���'���g`�ŝj<�X�mcH�M��	|�l�е�6��~�L�7�T_���vWm�χ�f����b�I����:�v2���v�iP�o.��m��z�t�J��)!N5kK�{O��G�|�jH�l���7���l�m�v ����H)��N��߭z0y���L5���n�0�k�F���-�9tO9jPݫ�*��`Q��qP�Zңh𘎱;��8h�"5�$�zwW�����=���ѻ��">�>5��(�c8J\0��{۟�-t!�Q����f�B��!0$(|��i�<���쾙�i�>�H��{u✾]6_��O΍�k��ya��"���	�gF�oj���a�6+�΅�]l�Wѫ�H ���?C��!΃��y���j�]�R�&"���Z;��TT�G]S\�S�u�����a
���]� PY��������1��z����-�	Zl������_D�\�7�)����}&TO���3����p���n���q�ӥ�2�O�[z,j��
C�)�+7�ҧ#ˌl�L�f����6�2[n�M1�2�DtT��i��߿��J�ГϼN��%UM�ҭ���]-�*�PO��C��$?��ƛ/'iy��L�IÚg��E��;Zё	+:��U/�K�n��vT"�1�������Lզ�����.y��7���8"�<���0nc|0�s}�8>9���X����
���g�������a㭎x�mGf|�#�b%"._��s��GR!�Bpd�T�ў��^z�Ve����:iQ�n �����������?���	=�j�?���p�?�����N�DG����+�K�^Jj�����n������G��R5���>r �Nr[��#<-�ޜlq�G��>0=��;��Ǒ~�Z�x�E����d��dX�V��`����,jk��G�厉���;(ئ}4���u�^��sY� {�Zfh��>�'���	9�2^8���H/��G�V=�5�L�u�u��Z������7���L���_��2��>�?��ñY�?���2c{쌅-<���7vfc%z�V��r��@���k��
?�<�ʏ/kZ���g�w�~�2�u3�� �z9�?�Q1�PK��e�R������m�2�nJ.����({�.A�B������qj��H���pz"�p��w�Gq|4�'��b,�Ŏ/{����(�c"�6���5B]ڎ�^�Wx�p�oٕ�;#8���~`������߽̇���52aGc7 ��Ǝ9�I���K��߄@S'�����p	���7�_��>�����zݣ�:̓'X bɹE��ml<oE �}��;��fo/���t��,xW9���.�VUȧ+J�u�AM��D>e�ps��M4�A�o�^i�v�    �G�?i���\�Vu3�t"I�nG�Lʅ�]��XU��teH[�.$�P�nC���x��>p(́�l^�'�˔���g���"�RĨ���EN��p�/a�S���qK_�V�x\��"�=�3���8F��V(S���T�o`(c3�rc܂5�c��n[��;۔��f_Ռ�r��[,m*Q�y���_~�����"���H�V���G%�����T�� d��2���9�9ZL��8(�,�ȉ�ߑ{D+���@/���������֟��_�� ��O�?��O�?���)�^Ї�>���1�n�#g�C�&)b�-�"����<�"�\gٶ��Ё�coF�LE- V�ޕ��\E>�MklE�ߺ�h{���-�y'�uCF��j�۴�U�<XY7�Ǐb�2ӕD)YaJ��XӋ_�֟㾌1z�'T9AզX{�P/{����F��b�U���U]��,Ŗ�j�����<>��o+��,�F��v�#L�HU�6��)gV�E1W�)�(2���7�z9T����D��m��&��=;m��[A�f�p!6wg�ѳ����w=�zo��¨�^�V�fI��U}YH�h)���P%��*n��TM?�K����Ȋ��"�ZʉbZ��=r�bVk����-��1�r�抿I9���$X��Q9{#��p#����f���͠���y����v����, K����#��0���U�.붯��v��>;8my��{�~TN~��������n�t����0��s��t*«G�����J�K����"ᕟ>�1;ԙ��T��K��Dm?�묻������z��G�@�z9��D��4���ڔ��ᚎq�}K@���w%����V�b��X?��H�y���z2.�T�N&H�d��!*�=�خ�]�%��x�܀��8�[y��6U)V�`���T��i�D*mR���d�9Qm�=TÖVVb�^?>y��0-Sd�W��56����V��r��n�/��-ݽ��%"Zʩ�
h��b�f1/Dr�J��(��rr��$���<B`t$��	6�_�3�SUG��-��C[�>��_��_��b��YȄ�k	@>�&�IKXNh�<\�e:�(�m��4�z���$�oE���%�w�GswGr���c�<t��(�g�a�7H��ý�9�G�ɰ7���!��z��J9�t��}�<=8%�����q�_~������<>F������U��*�B��>Y�omW��q=��F ���t�4P�6��������,��� �#Nm��2�v�J�3^����RF�:�?�r��� ~�v׃ǽ,oҪn�,����MɴEI�^0�4*�V�ួ
��B	��tt$�XHK7��v~{��h��_���6���cq����#�?J��Qp$����a�;Ìy���_粨����^\6U%A7��a5}q��.�v�`��g�ī��>�y5�������8t\?�q�A���m����)~ǫ��̫p>:R�N�U�n��n3+���瘎ga:�&ra���j�w�.h��-���Z/9��n�Eٵje~���h���S�����9q����$�c1+S6��[\_"����#� ��-)���e���*\*��BN �a.ҭX�3?��MNe�@���޴p.���p�Aj��ͼt�oW�H�%��	`gT~�~2�.ڨ֯�fI�\����2qԫ�B��V��T��8�$�Ƽ������G���\j06�*T���r�:'��sО��	8]sQNd�`�%+�5�a.k�.�#T��:���G����_�\�շ#{'`�ƦP
�y�T&�W����?�E�@=����{R�	����2V͂�0��W�ڸ#������{:�T�̜�շ�U:$ex�#'뵻J��Aٔ�u�:͆V3��������3���M���Q�W� Z�׋�7<�U t���x�Zw���@�O����mN<�����v��;��BR]��1>w�a�cj4WFx��u#T�D�H�f>�>s\��G��,z�jX�R[�6�yh|�E�F�
q3$���o��[t��9��~4����Wi�s�fԑg�}{�l(��#*�7F`�+	x����)�h^��]�7�z�`���@�B^Xϭ����ftb������kc./�΢�����ӏb\��k��&;�a����s݃�A^�*��
��e,��|�0���8�m1��ДAj����&h7+�������D/Վ#;�����bxZ�[~`��o��x��9������mdy��<�����n�{1�I䲨;��{E�6K?��ŝ���u��v<��m��r�]N���+e�����xk���Z�j`ܪ�FXU��v�-�WNԾ�p�p�2Ǻ{.���> m�RdmGA�؍�s�z��/U@�*�_� ���ow�U��X�P�\�����m����LUn����������60* ��Z�w���ӻ�hg{2�!t���<v�H�]�vq���j���v�[4z��EQ�&҅Ε�����޷��t�J�]�WVE��Z �ɺ��ۍ!���j���HK�r�,�Yڏ���;Ãds�T���d��uly���G�������'%�`z�k�T'�`ib�ڟ�2?`�?�Ҥ�� �矸w�����̓,Ǳ]��6�L��7JA-<^h����n�~x�����E7��o�, ����p!��q��Gl��4�(�}�؞H����ۗ��lm�c ��K�r<YX�'������u�>n4`�v}_m6�!��
� $������T�3)P&؃~MoO�Ju}S1�G�K����	Z������� H�ԵO1�n��l.t�@���o�Epo�ަ�\)���~+�Xf+����xzb�Ý�bġW��������)چ5����P]�0F�z�'�λ&�\I�Ek]������Z�6}ۣ���$���P���[4�N�@�MN��ΓX���:.��~"[�p�V�Ľ��K�4%�����v�|�n�P�T�Zy�j;���TP�s�9?���m�[)���}݉�F�9�PR/J��GX�;Ĩ�{G�O �Ӣ����o���}�����/x�[�Hm�0��"��rrt�$�bǔ��)Q�$bdG��H)�Sݽ�����j�#�?�x�v��f;]`�9>��u�#��]���Î���{�������j3��W	`	���(=��y#���FY������@Ѯhw�C܆Ȋ��S��w���\�����@�WSlCr��v�h��ު�>5���L;0���aYO�2��`ay0�H�&��J�.�4� R�V&�<u7���"�������vx���e1o��j�|.J�+��r[�)q�/c``RI�c�9<���T�m�v��#Oc�O��q#*�TkE[UX?�V�6]�2���ZG:x�T,�D�%�~%�!��a[A,ޤ+�\*�i��K�G�6��������Xg���=��Yw��5}��������	�g�D ��8B�����6���+Q���E�m/׷I�#� S"�����PA�{���� ��\.h7v
��.��Q6�T�}�]S�>D�j˂QS�6�@��)��Х��B׆�8�ƍ�T���gk��!f�mFHʿ��
lc%pF@�Qg;���Qơ=�wn�����I��om��Mn�aoGi]n�X��58a_Ud�����F�订X�r,t��!�⛅N%�ۨd�
�Y���&�A��tc�@%9��-��J�1�>܄����2D��:+����'Є�2��S �?�E�dӥ�V�O�Q9y��#��I&]��ޜ:o+�a�*I�D�^��F�Vl�0{;}@?`g������	d�s���զk���O�F�<t���5<�G�?[��	�<X1?�ް5��n�
��O`�8H���-R���.u֟��~@>��b"�y�o�>��ݛbK�0@�nh��M~>7�G�t#A	����g"�d0��@����f��u�߿�����[O�u�+��'�<���G�;�~������0��*�.������:�Ȱ֧����r\r)�;�5��X6���W   i�Ydx��b�?��0��h!���݊[���o�o+�79�h�[�5�ub*�+���/?����K��/?�G]9�-���75�6�V�M��	H�1t�.�� �� [�s]_g���.J0�5��G<Os���&��{�*����Ֆ��a;�Q)wP;��������⡉B�nbq���fD�mϊ`ͻN����ˉ�<�=+'�xV��_0%�-�,J�<� ��y6�e���� 	\3�B���[��8���w���Ȅ����	�9��v�ޠ������>���mY��혀}U~��H�����.�m���v���ELi5	Wj�@'X٬�Z^R	�j�:�t=�#�:RQ���CG��ޖ]��]9?0 ��_t�Eg.�M����o� ��� ���J�����w�����������ۃ/�߼���V��k��V?T����;�L��*�zZƓ":'55d��⁮�����*<�z��2�Y�)��:�~�U�Cժ����Tgt�&;����Ou��X�ciE���Z"M��A���7�����_T�_�Ms����I�.�/�js����s�M�ee��/%�k����/w�i���o�_�� =U�� ԑ�o����v��ێ��G��o�#K�ԣik!��0B ;��o�]��O¸�}�7�_��M���W/Jd����M
Al��{}�B�.{d�Q%m��Rh~���M��8Q������^�J�� 9H�~�'���zIL��d?X�<P#tzI��md��4GY��)��W��0��N�\t�n�Q�_�M+z2��Wd|Q(����vn�Xh�;۟�Lpe|Q}bp#'�������Q�����Ƶ�S�/��x`S���g�^����NT��x �B̩�F����tW�������w��b>�>2:�gw��4�^���.
�\����<�h"�yU'hb��:IU�D���7I�v!�P�����9���>����Q0w<�	���urp��r�z�cjg �$�L<��~T�瘝
�w�a������P��0��:�x3&ܲ�d��r ��Q%hS��{?�m�5��Th�n�L��{i�,p�s�`ܹ�j`TYQ�̏֫8VuY���t�w�*��E{��Y�ް�{UO�N8��u��FK���/\�ʫ�'�b/ܛ�x���frysyC�_�M�C!�M'T��&�o[A���ў��� I���L9��
JKL��%�V���&�[|t��@�0��pβ�턤����ʮ墿S��mQa�mH|IR�3���4�7�^a'��=�wR랣H&G��z�$E^]�x��v���9o&�d�m9�0ĝsmnŋm#-��1���I��c�f#�@���n�̘�.��t���������5�6nxi��fO�j@�3��%���n3�T�
���
ǣ����aN�6�R��j��dc$�Sb�\��sc�6K�{�' %1��c7�I�ɉ��ż��#B��(r?���*{b��3�^��U9~^�}��=;<�M�"�D�BEX��9v�	�d�/�����M= �      �      x�3�4�4����� �[      �      x������ � �      �   .   x�3�t�+I-*(J�+M-�2��/-�,.�2�tL�������� �Z      �   .   x�ȹ	 0��X[��^7����"�@EJ�N˒�6m��I��      �   �  x�e��r�@ ��u���nq��W�P*�n��;Ҩ���&5I��W�UV�s���M�
,Y@���P(h�V�xZ����,����;8\"�I}��*�Ip�XU���� ������� 2`���J� >+:GJ�VF3�}��t*�L�:�v�7��S��0�:�/��yO
�O��Y��+-�g�,v�$�ڸd����b?m/�6���Jз�|(oלSFf�U?�|ugaHJ�g�+_��Ž��88�D5V�/��Z����gc�z�VZd��"�?�Gv�CF�a�,h�����=�2��޺��z����N����� y��	��fM�����wY}�.�7�s"����l�1�?˜�ژ�N��8�;�z̫ʠ�r�/���i��C:�O����wo�     