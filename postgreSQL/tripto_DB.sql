PGDMP                         {        	   tripto_DB    15.2    15.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    20441 	   tripto_DB    DATABASE     �   CREATE DATABASE "tripto_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "tripto_DB";
                postgres    false            �            1259    20442    Nationality    TABLE     b   CREATE TABLE public."Nationality" (
    id integer NOT NULL,
    nationality character varying
);
 !   DROP TABLE public."Nationality";
       public         heap    postgres    false            �            1259    20447    PlacesToTypes    TABLE     s   CREATE TABLE public."PlacesToTypes" (
    id integer NOT NULL,
    place_id integer,
    "placeType_id" integer
);
 #   DROP TABLE public."PlacesToTypes";
       public         heap    postgres    false            �            1259    20450 
   activities    TABLE     �  CREATE TABLE public.activities (
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
    socialmedia character varying,
    is_active boolean DEFAULT false,
    enterpreneur_id integer
);
    DROP TABLE public.activities;
       public         heap    postgres    false            �            1259    20455    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    216            �           0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    217            �            1259    20456    activityType    TABLE     ^   CREATE TABLE public."activityType" (
    id integer NOT NULL,
    "Type" character varying
);
 "   DROP TABLE public."activityType";
       public         heap    postgres    false            �            1259    20461    activityType_id_seq    SEQUENCE     �   CREATE SEQUENCE public."activityType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."activityType_id_seq";
       public          postgres    false    218            �           0    0    activityType_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."activityType_id_seq" OWNED BY public."activityType".id;
          public          postgres    false    219            �            1259    20462    activitytype    TABLE     _   CREATE TABLE public.activitytype (
    id integer NOT NULL,
    type character varying(255)
);
     DROP TABLE public.activitytype;
       public         heap    postgres    false            �            1259    20465    activitytype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activitytype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.activitytype_id_seq;
       public          postgres    false    220            �           0    0    activitytype_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.activitytype_id_seq OWNED BY public.activitytype.id;
          public          postgres    false    221            �            1259    20466    enterprenuersToActivities    TABLE     �   CREATE TABLE public."enterprenuersToActivities" (
    id integer NOT NULL,
    enterprenuer_id integer,
    activity_id integer
);
 /   DROP TABLE public."enterprenuersToActivities";
       public         heap    postgres    false            �            1259    20469     enterprenuersToActivities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."enterprenuersToActivities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."enterprenuersToActivities_id_seq";
       public          postgres    false    222            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."enterprenuersToActivities_id_seq" OWNED BY public."enterprenuersToActivities".id;
          public          postgres    false    223            �            1259    20470    interestsToUsers    TABLE     r   CREATE TABLE public."interestsToUsers" (
    id integer NOT NULL,
    user_id integer,
    interest_id integer
);
 &   DROP TABLE public."interestsToUsers";
       public         heap    postgres    false            �            1259    20473    interestsToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."interestsToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."interestsToUsers_id_seq";
       public          postgres    false    224            �           0    0    interestsToUsers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."interestsToUsers_id_seq" OWNED BY public."interestsToUsers".id;
          public          postgres    false    225            �            1259    20474 	   monuments    TABLE     3  CREATE TABLE public.monuments (
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
       public         heap    postgres    false            �            1259    20479    monuments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.monuments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.monuments_id_seq;
       public          postgres    false    226            �           0    0    monuments_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.monuments_id_seq OWNED BY public.monuments.id;
          public          postgres    false    227            �            1259    20480    nationalityToPlacetype    TABLE     �   CREATE TABLE public."nationalityToPlacetype" (
    id integer NOT NULL,
    nationality_id integer,
    "PlaceType_id" integer
);
 ,   DROP TABLE public."nationalityToPlacetype";
       public         heap    postgres    false            �            1259    20483 
   placeTypes    TABLE     w   CREATE TABLE public."placeTypes" (
    id integer NOT NULL,
    name character varying,
    image character varying
);
     DROP TABLE public."placeTypes";
       public         heap    postgres    false            �            1259    20488    placeTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placeTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."placeTypes_id_seq";
       public          postgres    false    229            �           0    0    placeTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."placeTypes_id_seq" OWNED BY public."placeTypes".id;
          public          postgres    false    230            �            1259    20489    places    TABLE     �  CREATE TABLE public.places (
    id integer NOT NULL,
    "placeName" character varying,
    description character varying,
    address character varying,
    image character varying,
    rating double precision,
    location character varying,
    longitude double precision,
    latitude double precision,
    "ticketPrice" double precision,
    "estimatedDuration" double precision
);
    DROP TABLE public.places;
       public         heap    postgres    false            �            1259    20496    placesToTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToTypes_id_seq";
       public          postgres    false    215            �           0    0    placesToTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToTypes_id_seq" OWNED BY public."PlacesToTypes".id;
          public          postgres    false    232            �            1259    20497    placesToUsers    TABLE     j   CREATE TABLE public."placesToUsers" (
    id integer NOT NULL,
    placeid integer,
    userid integer
);
 #   DROP TABLE public."placesToUsers";
       public         heap    postgres    false            �            1259    20500    placesToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToUsers_id_seq";
       public          postgres    false    233            �           0    0    placesToUsers_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToUsers_id_seq" OWNED BY public."placesToUsers".id;
          public          postgres    false    234            �            1259    20501    places_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.places_id_seq;
       public          postgres    false    231            �           0    0    places_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;
          public          postgres    false    235            �            1259    20502    ratings    TABLE     v   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer,
    place_id integer,
    user_id integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    20505    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    236            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    237            �            1259    20506    roles    TABLE     S   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    20511    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    238            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    239            �            1259    20512    searchhistory    TABLE     j   CREATE TABLE public.searchhistory (
    id integer NOT NULL,
    place_id integer,
    user_id integer
);
 !   DROP TABLE public.searchhistory;
       public         heap    postgres    false            �            1259    20515    searchhistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.searchhistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.searchhistory_id_seq;
       public          postgres    false    240            �           0    0    searchhistory_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.searchhistory_id_seq OWNED BY public.searchhistory.id;
          public          postgres    false    241            �            1259    20673    userToPlaceType    TABLE     p   CREATE TABLE public."userToPlaceType" (
    id integer NOT NULL,
    userid integer,
    placetypeid integer
);
 %   DROP TABLE public."userToPlaceType";
       public         heap    postgres    false            �            1259    20672    userToPlaceType_id_seq    SEQUENCE     �   CREATE SEQUENCE public."userToPlaceType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."userToPlaceType_id_seq";
       public          postgres    false    245            �           0    0    userToPlaceType_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."userToPlaceType_id_seq" OWNED BY public."userToPlaceType".id;
          public          postgres    false    244            �            1259    20516    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying,
    hashed_password character varying,
    is_active boolean,
    age integer,
    country character varying,
    username character varying,
    role_id integer,
    nationality character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    20521    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    242            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    243            �           2604    20699    PlacesToTypes id    DEFAULT     x   ALTER TABLE ONLY public."PlacesToTypes" ALTER COLUMN id SET DEFAULT nextval('public."placesToTypes_id_seq"'::regclass);
 A   ALTER TABLE public."PlacesToTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    215            �           2604    20700    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    20701    activityType id    DEFAULT     v   ALTER TABLE ONLY public."activityType" ALTER COLUMN id SET DEFAULT nextval('public."activityType_id_seq"'::regclass);
 @   ALTER TABLE public."activityType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    20702    activitytype id    DEFAULT     r   ALTER TABLE ONLY public.activitytype ALTER COLUMN id SET DEFAULT nextval('public.activitytype_id_seq'::regclass);
 >   ALTER TABLE public.activitytype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    20703    enterprenuersToActivities id    DEFAULT     �   ALTER TABLE ONLY public."enterprenuersToActivities" ALTER COLUMN id SET DEFAULT nextval('public."enterprenuersToActivities_id_seq"'::regclass);
 M   ALTER TABLE public."enterprenuersToActivities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    20704    interestsToUsers id    DEFAULT     ~   ALTER TABLE ONLY public."interestsToUsers" ALTER COLUMN id SET DEFAULT nextval('public."interestsToUsers_id_seq"'::regclass);
 D   ALTER TABLE public."interestsToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    20705    monuments id    DEFAULT     l   ALTER TABLE ONLY public.monuments ALTER COLUMN id SET DEFAULT nextval('public.monuments_id_seq'::regclass);
 ;   ALTER TABLE public.monuments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    20706    placeTypes id    DEFAULT     r   ALTER TABLE ONLY public."placeTypes" ALTER COLUMN id SET DEFAULT nextval('public."placeTypes_id_seq"'::regclass);
 >   ALTER TABLE public."placeTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    20707 	   places id    DEFAULT     f   ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);
 8   ALTER TABLE public.places ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    231            �           2604    20708    placesToUsers id    DEFAULT     x   ALTER TABLE ONLY public."placesToUsers" ALTER COLUMN id SET DEFAULT nextval('public."placesToUsers_id_seq"'::regclass);
 A   ALTER TABLE public."placesToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    20709 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    20710    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    20711    searchhistory id    DEFAULT     t   ALTER TABLE ONLY public.searchhistory ALTER COLUMN id SET DEFAULT nextval('public.searchhistory_id_seq'::regclass);
 ?   ALTER TABLE public.searchhistory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    20712    userToPlaceType id    DEFAULT     |   ALTER TABLE ONLY public."userToPlaceType" ALTER COLUMN id SET DEFAULT nextval('public."userToPlaceType_id_seq"'::regclass);
 C   ALTER TABLE public."userToPlaceType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    20713    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �          0    20442    Nationality 
   TABLE DATA           8   COPY public."Nationality" (id, nationality) FROM stdin;
    public          postgres    false    214   ܵ       �          0    20447    PlacesToTypes 
   TABLE DATA           G   COPY public."PlacesToTypes" (id, place_id, "placeType_id") FROM stdin;
    public          postgres    false    215   _�       �          0    20450 
   activities 
   TABLE DATA           �   COPY public.activities (id, name, description, place_id, "activityType_id", location, image, "Phone", price, "Time", socialmedia, is_active, enterpreneur_id) FROM stdin;
    public          postgres    false    216   _�       �          0    20456    activityType 
   TABLE DATA           4   COPY public."activityType" (id, "Type") FROM stdin;
    public          postgres    false    218   ��       �          0    20462    activitytype 
   TABLE DATA           0   COPY public.activitytype (id, type) FROM stdin;
    public          postgres    false    220   �       �          0    20466    enterprenuersToActivities 
   TABLE DATA           W   COPY public."enterprenuersToActivities" (id, enterprenuer_id, activity_id) FROM stdin;
    public          postgres    false    222   �       �          0    20470    interestsToUsers 
   TABLE DATA           F   COPY public."interestsToUsers" (id, user_id, interest_id) FROM stdin;
    public          postgres    false    224   6�       �          0    20474 	   monuments 
   TABLE DATA           |   COPY public.monuments (id, place_id, "MonumentName", description, image, rating, location, longitude, latitude) FROM stdin;
    public          postgres    false    226   S�       �          0    20480    nationalityToPlacetype 
   TABLE DATA           V   COPY public."nationalityToPlacetype" (id, nationality_id, "PlaceType_id") FROM stdin;
    public          postgres    false    228   ��       �          0    20483 
   placeTypes 
   TABLE DATA           7   COPY public."placeTypes" (id, name, image) FROM stdin;
    public          postgres    false    229   -�       �          0    20489    places 
   TABLE DATA           �   COPY public.places (id, "placeName", description, address, image, rating, location, longitude, latitude, "ticketPrice", "estimatedDuration") FROM stdin;
    public          postgres    false    231   ��       �          0    20497    placesToUsers 
   TABLE DATA           >   COPY public."placesToUsers" (id, placeid, userid) FROM stdin;
    public          postgres    false    233   ^      �          0    20502    ratings 
   TABLE DATA           >   COPY public.ratings (id, rate, place_id, user_id) FROM stdin;
    public          postgres    false    236   �      �          0    20506    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    238   �      �          0    20512    searchhistory 
   TABLE DATA           >   COPY public.searchhistory (id, place_id, user_id) FROM stdin;
    public          postgres    false    240   �      �          0    20673    userToPlaceType 
   TABLE DATA           D   COPY public."userToPlaceType" (id, userid, placetypeid) FROM stdin;
    public          postgres    false    245   "      �          0    20516    users 
   TABLE DATA           t   COPY public.users (id, email, hashed_password, is_active, age, country, username, role_id, nationality) FROM stdin;
    public          postgres    false    242   \      �           0    0    activities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.activities_id_seq', 62, true);
          public          postgres    false    217            �           0    0    activityType_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."activityType_id_seq"', 6, true);
          public          postgres    false    219            �           0    0    activitytype_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.activitytype_id_seq', 25, true);
          public          postgres    false    221            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."enterprenuersToActivities_id_seq"', 16, true);
          public          postgres    false    223            �           0    0    interestsToUsers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."interestsToUsers_id_seq"', 1, false);
          public          postgres    false    225            �           0    0    monuments_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.monuments_id_seq', 1, false);
          public          postgres    false    227            �           0    0    placeTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."placeTypes_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    placesToTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."placesToTypes_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    placesToUsers_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."placesToUsers_id_seq"', 3, true);
          public          postgres    false    234            �           0    0    places_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.places_id_seq', 81, true);
          public          postgres    false    235            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    237            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    239            �           0    0    searchhistory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.searchhistory_id_seq', 9, true);
          public          postgres    false    241            �           0    0    userToPlaceType_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."userToPlaceType_id_seq"', 4, true);
          public          postgres    false    244            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 49, true);
          public          postgres    false    243            �           2606    20537    Nationality Nationality_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT "Nationality_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT "Nationality_pkey";
       public            postgres    false    214            �           2606    20539    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    216            �           2606    20541    activityType activityType_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."activityType"
    ADD CONSTRAINT "activityType_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."activityType" DROP CONSTRAINT "activityType_pkey";
       public            postgres    false    218            �           2606    20543    activitytype activitytype_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.activitytype
    ADD CONSTRAINT activitytype_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.activitytype DROP CONSTRAINT activitytype_pkey;
       public            postgres    false    220            �           2606    20545 8   enterprenuersToActivities enterprenuersToActivities_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."enterprenuersToActivities"
    ADD CONSTRAINT "enterprenuersToActivities_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."enterprenuersToActivities" DROP CONSTRAINT "enterprenuersToActivities_pkey";
       public            postgres    false    222            �           2606    20547 &   interestsToUsers interestsToUsers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_pkey";
       public            postgres    false    224            �           2606    20549 $   monuments monuments_MonumentName_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT "monuments_MonumentName_key" UNIQUE ("MonumentName");
 P   ALTER TABLE ONLY public.monuments DROP CONSTRAINT "monuments_MonumentName_key";
       public            postgres    false    226            �           2606    20551    monuments monuments_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT monuments_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.monuments DROP CONSTRAINT monuments_pkey;
       public            postgres    false    226            �           2606    20553    Nationality nationality 
   CONSTRAINT     [   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT nationality UNIQUE (nationality);
 C   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT nationality;
       public            postgres    false    214            �           2606    20555 2   nationalityToPlacetype nationalityToPlacetype_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "nationalityToPlacetype_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "nationalityToPlacetype_pkey";
       public            postgres    false    228            �           2606    20557    placeTypes placeTypes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_name_key";
       public            postgres    false    229            �           2606    20559    placeTypes placeTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_pkey";
       public            postgres    false    229            �           2606    20561     PlacesToTypes placesToTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_pkey";
       public            postgres    false    215            �           2606    20563     placesToUsers placesToUsers_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_pkey";
       public            postgres    false    233            �           2606    20565    places places_name_key 
   CONSTRAINT     X   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_name_key UNIQUE ("placeName");
 @   ALTER TABLE ONLY public.places DROP CONSTRAINT places_name_key;
       public            postgres    false    231            �           2606    20567    places places_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
       public            postgres    false    231            �           2606    20569    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    236            �           2606    20571    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    238            �           2606    20573    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    238            �           2606    20575     searchhistory searchhistory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_pkey;
       public            postgres    false    240            �           2606    20678 $   userToPlaceType userToPlaceType_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."userToPlaceType"
    ADD CONSTRAINT "userToPlaceType_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."userToPlaceType" DROP CONSTRAINT "userToPlaceType_pkey";
       public            postgres    false    245            �           2606    20577    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    242            �           1259    20578    ix_activities_id    INDEX     E   CREATE INDEX ix_activities_id ON public.activities USING btree (id);
 $   DROP INDEX public.ix_activities_id;
       public            postgres    false    216            �           1259    20579    ix_enterprenuersToActivities_id    INDEX     g   CREATE INDEX "ix_enterprenuersToActivities_id" ON public."enterprenuersToActivities" USING btree (id);
 5   DROP INDEX public."ix_enterprenuersToActivities_id";
       public            postgres    false    222            �           1259    20580    ix_interestsToUsers_id    INDEX     U   CREATE INDEX "ix_interestsToUsers_id" ON public."interestsToUsers" USING btree (id);
 ,   DROP INDEX public."ix_interestsToUsers_id";
       public            postgres    false    224            �           1259    20581    ix_monuments_id    INDEX     C   CREATE INDEX ix_monuments_id ON public.monuments USING btree (id);
 #   DROP INDEX public.ix_monuments_id;
       public            postgres    false    226            �           1259    20582    ix_placeTypes_id    INDEX     I   CREATE INDEX "ix_placeTypes_id" ON public."placeTypes" USING btree (id);
 &   DROP INDEX public."ix_placeTypes_id";
       public            postgres    false    229            �           1259    20583    ix_placesToTypes_id    INDEX     O   CREATE INDEX "ix_placesToTypes_id" ON public."PlacesToTypes" USING btree (id);
 )   DROP INDEX public."ix_placesToTypes_id";
       public            postgres    false    215            �           1259    20584    ix_placesToUsers_id    INDEX     O   CREATE INDEX "ix_placesToUsers_id" ON public."placesToUsers" USING btree (id);
 )   DROP INDEX public."ix_placesToUsers_id";
       public            postgres    false    233            �           1259    20585    ix_places_id    INDEX     =   CREATE INDEX ix_places_id ON public.places USING btree (id);
     DROP INDEX public.ix_places_id;
       public            postgres    false    231            �           1259    20586    ix_ratings_id    INDEX     ?   CREATE INDEX ix_ratings_id ON public.ratings USING btree (id);
 !   DROP INDEX public.ix_ratings_id;
       public            postgres    false    236            �           1259    20587    ix_roles_id    INDEX     ;   CREATE INDEX ix_roles_id ON public.roles USING btree (id);
    DROP INDEX public.ix_roles_id;
       public            postgres    false    238            �           1259    20588    ix_searchhistory_id    INDEX     K   CREATE INDEX ix_searchhistory_id ON public.searchhistory USING btree (id);
 '   DROP INDEX public.ix_searchhistory_id;
       public            postgres    false    240            �           1259    20689    ix_userToPlaceType_id    INDEX     S   CREATE INDEX "ix_userToPlaceType_id" ON public."userToPlaceType" USING btree (id);
 +   DROP INDEX public."ix_userToPlaceType_id";
       public            postgres    false    245            �           1259    20589    ix_users_email    INDEX     A   CREATE INDEX ix_users_email ON public.users USING btree (email);
 "   DROP INDEX public.ix_users_email;
       public            postgres    false    242            �           1259    20590    ix_users_id    INDEX     ;   CREATE INDEX ix_users_id ON public.users USING btree (id);
    DROP INDEX public.ix_users_id;
       public            postgres    false    242            �           1259    20591    ix_users_username    INDEX     N   CREATE UNIQUE INDEX ix_users_username ON public.users USING btree (username);
 %   DROP INDEX public.ix_users_username;
       public            postgres    false    242                       2606    20592 (   nationalityToPlacetype Nationality_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "Nationality_id_fk" FOREIGN KEY (nationality_id) REFERENCES public."Nationality"(id);
 V   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "Nationality_id_fk";
       public          postgres    false    3268    228    214                        2606    20597 #   activities activites_places_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activites_places_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 M   ALTER TABLE ONLY public.activities DROP CONSTRAINT activites_places_id_fkey;
       public          postgres    false    3303    231    216                       2606    20602    activities activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY ("activityType_id") REFERENCES public."activityType"(id) NOT VALID;
 K   ALTER TABLE ONLY public.activities DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    216    218    3278            �           2606    20607 "   PlacesToTypes activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 P   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    231    215    3303                       2606    20714    activities enterpreneur_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT enterpreneur_id_fkey FOREIGN KEY (enterpreneur_id) REFERENCES public.users(id) NOT VALID;
 I   ALTER TABLE ONLY public.activities DROP CONSTRAINT enterpreneur_id_fkey;
       public          postgres    false    3322    216    242                       2606    20612 2   interestsToUsers interestsToUsers_interest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_interest_id_fkey" FOREIGN KEY (interest_id) REFERENCES public."placeTypes"(id);
 `   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_interest_id_fkey";
       public          postgres    false    3298    224    229                       2606    20617 .   interestsToUsers interestsToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_user_id_fkey";
       public          postgres    false    224    3322    242                       2606    20622 !   monuments monuments_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT monuments_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id);
 K   ALTER TABLE ONLY public.monuments DROP CONSTRAINT monuments_place_id_fkey;
       public          postgres    false    231    226    3303                       2606    20627 3   nationalityToPlacetype nattionality_placetype_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT nattionality_placetype_id_fk FOREIGN KEY ("PlaceType_id") REFERENCES public."placeTypes"(id);
 _   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT nattionality_placetype_id_fk;
       public          postgres    false    3298    229    228            �           2606    20632 -   PlacesToTypes placesToTypes_placeType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_placeType_id_fkey" FOREIGN KEY ("placeType_id") REFERENCES public."placeTypes"(id);
 [   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_placeType_id_fkey";
       public          postgres    false    3298    215    229                       2606    20637 )   placesToUsers placesToUsers_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_place_id_fkey" FOREIGN KEY (placeid) REFERENCES public.places(id);
 W   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_place_id_fkey";
       public          postgres    false    231    3303    233            	           2606    20642 (   placesToUsers placesToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_user_id_fkey" FOREIGN KEY (userid) REFERENCES public.users(id);
 V   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_user_id_fkey";
       public          postgres    false    233    3322    242            
           2606    20647    ratings rating_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 D   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_place_id_fk;
       public          postgres    false    231    3303    236                       2606    20652    ratings rating_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 C   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_user_id_fk;
       public          postgres    false    242    3322    236                       2606    20657 '   searchhistory searchhistory_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 Q   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_place_id_fk;
       public          postgres    false    3303    231    240                       2606    20662 &   searchhistory searchhistory_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 P   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_user_id_fk;
       public          postgres    false    240    3322    242                       2606    20684 0   userToPlaceType userToPlaceType_placetypeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."userToPlaceType"
    ADD CONSTRAINT "userToPlaceType_placetypeid_fkey" FOREIGN KEY (placetypeid) REFERENCES public."placeTypes"(id);
 ^   ALTER TABLE ONLY public."userToPlaceType" DROP CONSTRAINT "userToPlaceType_placetypeid_fkey";
       public          postgres    false    3298    245    229                       2606    20679 +   userToPlaceType userToPlaceType_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."userToPlaceType"
    ADD CONSTRAINT "userToPlaceType_userid_fkey" FOREIGN KEY (userid) REFERENCES public.users(id);
 Y   ALTER TABLE ONLY public."userToPlaceType" DROP CONSTRAINT "userToPlaceType_userid_fkey";
       public          postgres    false    245    3322    242                       2606    20694    users users_nationality_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nationality_fkey FOREIGN KEY (nationality) REFERENCES public."Nationality"(nationality) NOT VALID;
 F   ALTER TABLE ONLY public.users DROP CONSTRAINT users_nationality_fkey;
       public          postgres    false    214    3270    242                       2606    20667    users users_role_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fkey;
       public          postgres    false    3314    238    242            �   s   x�5ͻ
�@�z�W����A�4�����f0�����kc��r�R2b%W�}�^걧�ܙ�RZ���h2�&l����J��4W���2�q�N.��R���8E>�c�+"�      �   �  x�-���8D׏`�X�K���K��UF0�����g��y#�7�xVl�7�1���g�X��6>�o���g�[��9A����W.��},�h���N$њ >�/aX\��0/�ֽD���4 �P&k�a����O�H�{����G�n����L�"cWP)�QK��)f�W�V�$/�:bE��'Fn��gdj���O� �=�'��x�_�36q�o�N�}K�>�{���!���O;��+y��xco����t8G��-2%V�3�2��S��o\��ݻE�K̸pw�.	S�a����DF�@�Է%7^�/Ō�D	4�qHp�D">��Wd���1�'q���������dAHW���D��`�+!�7$�|�|"������9���lȒ��)�yHHN���0����~�G0����~��$F�#	���,	��r��5Z����Ob�+1鑘tK��jr��%,	����0�믴��]Hb�^�$,1R�_�:�@@�Ҫ��c����yHmu_
ƂW�yZdI�IR�w	I�*C2��� �G�ǋ(���@7ك�����qϮ���n0��ΊT���d�GL�=C^�]dȫ��W��h-��$/�L�y&��^��xui}uiȠ�4tQ=h��4�S�Y�T���o�L�z{M�|���K����H���Ֆ'�����r��^[�D���7~��]L��L	>L��z��t=�\<��(�����/"�G��H      �   0  x��Wko�8���
�C�;�#K����8M���iә�n�EQ�TDʯ_��Rv��@M�>�9W��F���k�,������&Ղ�,KC�|a� 堮J�4� bӉ^
�ъX8�A6�|�+�{��ox4�KL�:8��G��z�j4�����A
KZmu�L\7��Z�w��Q��U;�=�	ٞ)ӱ^(K�^�<i�
a�d�"B=�s.l����bmȺFo�e[�*���
nEj�{"�z�2e%'�TJ�SJ��.ؖpш�gVj5%�>)Y+�-�`JUSg���K�.K�.iE�{��V��#�j�� %�#y����)i�kw�h�t�?�J�KUM%�?)D#�ԃ��Y_�1	� �Z�h��P$��>��<u�Ie Yf��a��[g�d�V�|��@t�ب��$e��c��Srې�A1��o�F��KF50��.h3�s%�uYA�P;,�I�����*��|����. 7[o%��&����y6[��^�us��Z֙Y�0.f��/щK#�Ky��f^�d~�Sx!M��&� ��
f�✶��<��6���y`�M0��y�h�B$y�I�@p�i��t�q~���9-�o��煻?�A�����*�U��)��Bs�ۅ��s8�kH��^ə��T�+s^(O	;[�,�<�~z�h�0J��>J�0"?Hh�E�}�(}?L���i�&�����������E�ox�Ȳ\da�_EY��Q.�pX��7���b���3��k�0�C���}���]������/�]m�������,�;��?�-7��6�Ŏo��n]>��_����D��-�<�	�N�����O �	��I濨}	�ε~t�w%Ǌ;��M섆gt��R���� �o������{�	od���F�a�C��>�eU����4�̼���&���ܷ ���U`J%����0���sp�:���Wl%+��st�q�z����C�[!�_P�� �~<~��l�g�[f�
j7�H/�9n�d���1.�h���*�
��!�N�@N�&
H�d#}�>�l%�Z�ۖ���^�}d{}h�F�C{�I�H�$�>y���z���0�I��`~�Ȳ($�y�N���%q�д��[t	T�]v�:�����`@f���1�u<\5@z�	l��i�>����X�S��,(�PL�J�5����t�_�nH,G*v��r�x,�7I�#����bywq�]�K�|\���-����M�r��"�9;9��>ߎ���s8nJ�1�^'����"�/�7�_����O����I������\Y\��S����4��	�x����(K��g]���!ѧ?�$<',�%[����c��5���>����'VHr#��e����vA��:W�Vf�D���@2 &F2�Zb?z�8�l����	�<nI���;� 7�bc�Qg%s�q�' ���`��zmF�����
7��Jr� 9��t�" �{S&��u?jA�v����۝�ҍO\ﶯ���'J< (aV��F�-Ǒ���E�a+�ab���3_j]�q˶����M���J�0m�)�M��G!w ������٥{H�@9 ��� ߝ +;s@D 8h������0	2�h\ 8
ƒH0��L��'��pDM@��t���+վ��à4�фF�$���ahgː�]�����	ˏJ��'���'_��nȟn<]�G,AW�I��W���E��X���Z ����0N���|m�SKܛ�DMzY8Q�0�VL��^�������!�gY}9��z�`h���QaX#w/'�`�� �t�9�(அ{�XBgKX� ;ӽI����#|A��~*`=&Ƚݠ��嬫�M��*�Z*]<΁}s�!���h�6�zc�9�����u�h�9;�#��w�:�{�$D7��.������M�����I�>!I=�gۗ���耹Hޝ�=�Ө`�`WF�^��<����˃b>�g�
�q�1E oԧ߂�5�|?t�s���C�/�o���7.���25L��w��o��Ow͗�b��wvv�?O�C�      �   R   x�3�tN�-��K�2���/O�O,Jq�9��KJ�K��L8=�S�2�R���%�E
��E%�\f���`3b���� `�       �   �   x�E�=n�0�g�:A�'i��)ХEQ]�0��0Q$�������<�z��w�E&|k�W�(�u?i"kQ��ҏ��54؟���b_�8����h�"����g�p�$+w�G^�!����0�j-��,|�*�u4�U@g�e�s�*��v�Z�}��n�S5liʽ5���d���DY��h͹�p��+��;�Z�O���f������ƜY��`>`d�AN�)�l��ٯ>��'!��ow@      �      x�3��4�43�2�Ѧ\1z\\\ "�      �      x������ � �      �   T  x����n�6��㧠�`I�H�4���8Mд@��"��#Q#Œ(����U)h� ��'�.�8��D������d�&��ծܡ?n�l�b�g�P�����Zm�]�tS(h���K�hk��G{i�fW7�ڠQ���(uu��*�{�,�[�kк����@]���NZw�3�4��C�t�T;Tۡ��f�g2Ż
��궠J��u�h������[���3��R)��I�V9��a���H��U��Vm���t��4���E�\oO�h�7Zι�[U�2�f��޿E�n[��HE*���|Za���.hȿI���p���Q!�E��mT�&""� 8�2Jxtڬ^K�	V��m���y�^����]ַru��2._.5���tj�0LH������w�/2�)�)�Ln�B:�␶���1<|�m|�)��ɜ�D��I|�q��2)%��PBIKq1NR�CRL�`!?�Ι�������4&<[�-�@��e��7�]ɝQGvF�Cw��k%8��+������T�
�p ���S=@�z*�Z�X���̙�\�N�F���m�~u`�=��Q)F-$�c�9�F���#����O	',����v��﮻��;�� ���뺅Sln�_>�������!�_8�:�˝\� ��i�k<�{ؖ��]��s�D	��dm����a����$ֺ\�G�?x���[������G�W���er�f5��t��Ń��/O��Xr:�����xh3��gO4��G�d�����d��,�H8�B�=�-eK\p,En�e�'"�Kɋneg����d��/O���1�&4NE�!��,�zP��,bg�
)bd|8 �1�UA�w"���X�1�|�׳����it~e������j��<P��P�C��hݫ���i��$bɗϐ�htI vS�WfT����I6�@p����j�1�-�����#B�ak�Q*�{F7~۷~��r�'�����uʬ�Yi�l�G�{\�{��P�i�>Ř$c���xz�/3����4�>���8�9)D|��Ǟ�����cvS�41')�\�P�q�҃�����O��      �   f   x���0�3�EMܥ��Qz���BT��Ta��̣���c��ḞFu�ovb��0�>�Yk�zx�úvY>��j3�2�#�#��9��,�S�|?$C[O      �   �   x�-���0�����x[��!q�f6��)�Ʒ���̟#%���u��r��lh�w~��pD�V=j���9���j;(��J�b�GC>82�v"֔�#���|#N��t�*崧Q%�ՠ�u@f(��2\�v!�sD7e      �      x�Ž�n#Y�&��?�E��$��,�)�$��!w)|B�K�K�D�e���m�݋*�HԦ�@�����[t<I��^3#5�Ǫ��цkw8�;�|�\��uZ�ba��bZ��,���"Ne�5.�J6��z�VF\d˅�пeZ���!�Y�^���C#�c�g>5��Ʋ�CU&nUe����pp"Ҳ��zY���.�6��t���q���{�'L��p�8�Ĳ:��i�f}r��;{}-��cڎE�i��cz�?p�Cӵ��s}׌���m�g�98+��(&ƱoEo*�g+eU�y^�sCTF?�R,D,��lO>U��C#�n9�_^ucQĢ����t�8�΅�ҋ����vY�j)�t�����s^$�<QJa�rSuA?����B�;v3��~�ܖ"K�
�r�މC_�m�g^��,�UE.�<�n!ʩ����0��:�O�1��9��1NW���
���ӷ7�ַ��2-���f���:��|�k��ogMU��Xu+5����P�V�`6�9�<8��Ym�^����,y���3�rL?p7i�^躖�9A�py��6�d9M��^��8��דYS�3�R�[~%�|�
u:���*��67t��9��,��?�x �_q ډ�c�m�G!�&���:�^K\��Ter+>�F�
-x�\�r%�B��68�ҳn_�MY��%L�I:��8fM�¹�C����[V�����,6i����%=*��ZA{�-���!���m�U0���ClUۤ���S�i��ܻ��	�M�w]��C5ľk��q}�z����?/e)��,7%��$�J��`��V���O�Ji���M����,��g/��ǌ/�4E*Y�Pޒli�q	�D����\/@��W��a�
p ��"I`É��N�%}da�S�Va�ĺ�0$ ӳJ��^��W��`]��"�f,۬(Q^�jMs�L����V�\?|�ʘ�蔦4 +jIW@�PC�����Z�p<UR���R���R$�z�Q)�|��Y���kn�@_n��7��β4�Kއ,#߳-���Z�v�0�@LD�鳌��,/�f�Q�x�����cS�Ϥ�p��װ�v��J�@B6�E/�_�*B��M�R�5�ET@Njj�(����d�E�=�=��k�n6]۷V�}ӜT��l7�l4�mZ!kZ3�B3
�(rB;�%�[�O0&�9��{Y��� ����Qw�G��L�k�gB���!�)�4[��Ё+���Ji
АΜ�$�T��\���)��̧5Ic�4�ٓ�Ryy�v�h�l�Y��h��?��W��mz�-��nG���X�K@�xo�>�������hqp���6K��?��i>�����{�����y���A���Z�5^��D�]�|I���Ma�"�`M�k�wCTѣq"�zf����5�w�ނ�)@�0����*����@��uY�]��pJ����%�n,�'@`Vn�wѦ�1�V��mU��>d_�]�����pӍ`��pǙ�Z06n�0�qy����o~)�9i����������P��l���W��[�
�kW���,H���nH��p�	.\��[��-�;����R4�qr��CEGy�H@���V��M	�u�a2�2ŖMap�H<��^ƴ,���O#�x�|� n���L!�ΩX��d���pNA����a������WGj|-�a�p.`�pgF������ʳ�L��t/��=�+U�'P���XX���9�^� P0�3�[�ch�Vi���{�8�e��$����(i������!a�+�q@1�� P�� ��<�n��qXz������lN���`/`�<�i�=*	��6��0*s�Gʒ{�|����ܢ�;%)�9lN�]JR*𠼆��DKC�e�38��[��٢F�ހ�NI���Y�b�]�I�5�GQ�*�N[����Ԋ�d�m�=j�}�n��mz�18��no�Ҋ�L�Y�Z^hG�ypɇ�,'%���<s��h�M�sQ&2�E������|��/=�J��8�_�o/��1_w��D��vy�sX��%L�h��O!��-km��)n؞i���|9(��2*�i)e�
�g� ��X�������D7;��e5p��yrZ��CX]N�~�_�F=�gAG��!��n�� @> ����Dk88[Y�r�0�x�?����&-�z�nŏ����Hz��Z2�	��6h��{���^���}*�c�3�R�T�P�Քd��Nc�Mm+rL���~�O�Y�	S��
4�Qx��F�,�X��\4T��Bk����Isd��M�[F?&չ�ǣ�yjA���p5��=�_�����Χ_��/�9�@���w<ϏLgv��Q0y,�cQ+:s��H��ʯ��>��J�,SD��L �- �Xa�X���8MS�q"Z`1s�Dv�R���������N�&�q��/�)0p�&'瑚`7��}��8C�4Wҕ�H�	n�C����jF���P�b�I��+�I�S5q�����ݤ/�����eZ5g#eX v3tW����
,Ą������@uY&�SY�^�<��;�\�T��l�3F/��7̍,d�@@���٢���P{�
�G���qj�i�c�ʰR��3JIz#&=�zKMX�`���S�yiQ*����AU���~[���@��uB;3P#(�7a�x�M��|���!Q��	�k�I����`�x�~���������f���x������d:�Z7������|��\���䥨*�G�I�eiU��fj4���f�UZ�;`�ZQ�B��`)�<%�0zЉ�(I��-h��� Q���4.u��q=i���� 1HXY���g[h�b�.AS
�B��F:��; �VwcP3��`p0E�E����A σJ�uQ.�'0�Ζr����j��|�����$�ޞ��<��=FzO	>@�vX��fj�b�%hxQ䠟?����J����*�n�4U���S��UE6Z����H�
p"��E�+&�!�V���K���v%tG_��P������J[uM��O�d%��\.�X(�ʷk�bV�䑨�=���#��l\1�\*��� ���>9Q��*�<�v�>�����*�n�w�I���Yn �	ԕ��$�9
�Z�׌�( QL(�Gw0����ݞ�{����=pC/�NLm��T��Z�'����n��p$�7�ո_�ro�=�X`��dH�[�m(l'�:4(e�n�������i��HWm4�ԙ��)]4�Uh�����3Z��':�#/����ݩG� �}9tp�O.Ex|�R��L��C�P�4\�1�PUY�e��5Q"��V_8l�҂������G﫻��xم�Z�C���V�r�P�~�[�9�rpP���s����+� =�b�ͬ�J�f�H�¢��:���/�h�� ��c�m����fq�*\P�T�r��*u
3�fj�*t֨�_+�9�N6�&���-;q�~A}�-�4劥�T�L�1e߳��)Er�Na�e��â��%~;��R�:�gM6>G�<-�>��:=�YN� �.7�C;�}�^�������;�H���<���'��X m�!+������%�?}�d�w��d>|���*s��䈴��������-�q�aJ����]���9Iw��܄�I`x�w�_��>����������8�?�u�^'�/ ��q|��#�
� ���P�����3���0�b0
m���xt\�ب W�V1�s]q��*�o�3Y�'�:��~,+v�[ J�e*cck�	Ӥ���:r5�2h�^f��;��Ok�4Q��&�e��M��$wEʚ`�lct�R쪞����|I��,�h�֥<#��j�w=�Y���z%u������������~O��� �[�[P��3ɳ�DFz���_��KI~��eE�E�<��ѺH��S@؄�$��2g����Ё��CN��·����l�~Ŏ���
Dٌ    �vO��%`�n.�2���]����i���J��c�Yb<ᖛ�z>p����Y�_�6���/�W繎'  p��uC���ێ��x6�P�)�daS�Gnf��>��4V�p�$�L�b	�eV�uw%Nc��GL��bIT����"˭���`c`�丽X�w��R�U���|�,ʅ�c���	r���pE��(`p>�0^�n��X����-�U�~���g_G���qN./^\Gl�X`��п�&��]߆�Nx9B0V�ϝ�hܠ����鮾+,ؚ��լT�'�nTlg�&�h�Z'?��RCg�+��J�aM$i���=��hθ����- a�KU4��&8}�CFl�L�l���p���_$�i�~p�@� P����.7ټn惇=�go�?~-��l{��N�<&��)���) ���PD��Gv�8r�y�<�V&��*��wX������B4 I)t���{Q�V��(g� z��Z!�{B� ��B���U�G��6\�)?�R(ikf,3۸q��Õ(?�� �Gw?��v��oxEW�B�ێn�ݫmxuϖ������U�:��$�:р=ew��Q��1DQ�r���.e�\t>�!���4d���U��uƏ�Ƨ��.E�P53h���۹;�Qr<����0�������.<j�.@��	N�� C=TcBFuE�0������m�M��GLe�o�nэΓ�f~���W�>�ȼ���'΋w��ks�ɹfE�ڶ�������X����&n�o.�kX�D� �2�wG���?�9���@?b'��Ǩ��߻�%��}A�)s�t���z_C�{�]�*������\�MȔbَ�!�*�y����=U/�6����/`׸�T���Ӯ�� �ڀ��$��Y�c�a;J�{� �܀�
N�+ 2�wʁ�P%��~P���|Xy{���Ul�"��Ɨ����q�_�e��[q`\"����h�%;��bI'�QQ���o؞�{]�j��1�Q�)�z)90^���A�N~����������4M�9v+�����Sj��-oP��s�	y'�!�`B%�~dN.gE]G��G�w�GSY/�:9X�<�=��Д���"�����/�O`��,�v"?W������3X�ϡ���t9C�z���������e�˱�r��e �T�#eb{^���K���/��ʾ���67���힁	�T�<�u|�v#Ny����C���X(9
~��U���p��=و# W /w���,�\�g0m�m�7~/���#��bƇ^�mX���O N!����%��Ŗ|����6�@N_i+-��qNA)�{��~�?Nʢ��k����fl`�d:�"��4m`�"[a���[�@ѝ�>!<)�١q����2@4c�r��6l�"͵��ȱ�ht�|m�Mɪvtn'ϋ�$E��sB�yk�t�:ua���T�,˲�#�VZ*?�<�����Ȏ|��C8��~h{V�΅iG��WdE"��/*��/�4�g?���������_�<��r������ߎ���¬$:��	��G���EN˳`1�C��s��;e\LH���a��@�	��+�jh�3�� �D�����C���y3���`F���UU��H�X�j)sM��|�-c0�3��lMj���U���i�{��.�4CE�ݿ�u43����K�D���E0q.��5����>������bQLɵ�.$'�n�x��4���T�+l"�I�6*-QJ�����4#�/F(���S�d���O�$ �lg���8EG����8`��)r)JX/$��clA+3隽��?o���嶥�p����߷��fܔc�0�dj�H��p�~����-W1>�H�;�jI!ݽ���u�s�D���=��s��sк�Y��"��T�[�_D�?��<��/�����������RGN�?�&�M$F��	��F�s߻����,��Ad��Q��2m׊<�y�co��zS��l]�RGV���Dz�M��E�-ȡ)p�wұ7�︠uȒ�*�FL�~�m�jg�^|�B`w-�rֹ��i)`�W�z{^"n�8-���3	�d���	�Ds#7ҭ���|q�L��������2b���"@,�����϶�&�x�k"���N��-�a����Îe�]����w�z�Li�ҕŖ|t�ǁ>�o݀D�T�^��uV���̃���gn/ԯMRΌ $� ���E��1�R�@���%��,�*oeǍy*8>N�ҵ������sK�}Y���Ob{r�)RP`�&���c4P�id���j��޲p�8���d����!�s��X7y߼�U�B��.��v��i�My'mH**n7��
�NX�&������i���c��Vu�Y�CʑCx˳ )���p�Cnىb�?���n�g� ��S�Ը_�M�O[~@��0׹(ͅbW�~W?UySʡJt���A?t!�h&�Э����$�Y�(��Z�����x���L*��o��g!�:	�SʹL���a�Z�$�C�X�c�ߪ��O�<��R��uNU�c�:X �����#��M�~�d6^�@l5˝��0��'A�o7�QE�d ��7C����㚘,�j�r
0��Z =�:�7�z�?��ώ�_�������ľi�m�rM����S����v��|�S1;Y����?��S���~����Dz\�yZ��f�h�k�� q?}�ES�`R[�,�2�I~*3����k��9�t�d���Wsh5��{� �?E����d7��ͣ��d}���t���r:^�)�.�=�o�^��#�H k��|��\x�J��/ �b�d�KL3���Ь�k��΋b.�Zd ��I���F���L_В�LCQN�����?Mq!NY����FF(6E;]��Z�t{	O!"���W1��`�!H)3Pj��Y�������թO0�0J|�,��L�"A���2�@�i�d�G�	��n��/��=C�C�,�%b�z�̈X0�Ӳ���9Hp,7���A��1��,��x�f�^��x4�Қ��C~FU7�\=TL��Ft-�!��t��{�@L�,�k�`��?� V�
�+�	=[�_eVE���JM-RY��Ty���Ip�$��zo��U�7m1ɐ�����P����M�"���̅����@�4J���㮉H�#�+71\N��Mc�$�ڴ��=QH)6�(AtOp��!7��|��b+4��q>�Ŋ�:M.쇸p�M��v@ӌP-�k= ���ϫ�}��&�n���<J��6'Mq�I||����!�8�v�з���z��ȁ_"�k��Y��>�aT֏0Е��ȃ�6�@�wԃ�ڨ�wzXq�!&��7cUJ����쩤�c9e�؎&���j���_�3eOi�Ӷ���N��z��
_s�B�>�xJ�8�G�:~�N���k�����m���,��謶��g� �!M����H�g���2�`��\O��G��t�a����pcUB��*���.W��Qt��6T�@
���W��T Z�~�iJ0<�\���p��Z�2��w7Gq|4�O�D8�7�_��	��Q�D(m&�}��^�z����H����/ؠ�����X`��@����jn�ǜ�$pE�%fl���|w�݇1���sM�n��sT�i�Z���@|�N�#'4,x�r��";�yK��{aaM�X+���4�\�ۖ��j��95�����$�H�3ߛ!���W��r�'���) y#
���������{���|��l�3d�kˇQۧ(2�����r�_�x��f����9k���z�>�/.�1�Cټ�g�L��+fs)lm�"5��Y@4ۯ{�-�:�QWAYV�6�.��#r-��y?�\�E�T
�m����c�K�\�-��@��I1��b$��^��x�Z�=u?�f!���0P�R ��F')x*e36��S��q}���Ɛ�c�~Tf��0{�r�<w���7�g`#Ԋ��q�(    r��*r�^�a���,��8x��r�I�]��%�w�gH8�O��VR"���x����Y�안�c���%�d��Ұ�*�w�ྕ�Z������MĘ$#��a�*B���.��c���8�O�����W�$y4[seM&U�n2��b���XN�&�E�3#q�d��Dh=��� 399�348�L��|9��E�A����uSΡ'Y��!7|��E:UP�{ݝ4Z�6���l��d3��Z�7#Z�1Z ���g8��֕8����:��6���F�*��̸�E�<I[C<O����+�|t-�B����W�<o}�OU�g��}�?(��� E��M7T�l`>�\%�q4�Q�=�'���X��êP���Ʋ3<���;)��ɎCP�XZ�tA�fE@�|�/��X�W_�J[�@���Y��Gm����K/�Q,CL�����o����	�}H�i�?��JW��X�<H�d�C�}ڽ@Ɠ�$� ���f�ḃ��Eo
��Cy�-2��~��~��poa�r�vka��NẩaTf"krZ�.bv=��<�G6�t�
�u��To>��O=�)C5m��=��W&�Y���V��H����g��\vE:�N����OQp��'�H�+��cL����= B�(�� V�?���/�G��T0ޱ7
<;��`<�h\�Ϲ�[�P�L�
	DG`�|�v�$�bǔ��:��D��(t@�� two�#C-�&���7�������>�f�W��0��6��͊,�#O���:]c�c�3�q�������,�RbxO���,�002��r�I��P'H���%���6����dfc4��%N��7<EYi�ޣ��]
&�"�`:�$p`Q�#׹�US.�.��2],�e����{]�E�w|R�xa57ͣ�7���{���YN�2?�y�v�����=G��-��lߏlg�5�9����D�����4ڤl�U<k�&͢��>�X�Jc:�O�\h/Q��(Q���@�@����c� WZ�E�+Z��.QD�a�f� ���I�
j7�2�I����8����!U�Bʧ���6�zۏⶫ����'�׻����?Ģi6Bi;���.��4}�7� �CcgS~&���A`z#N�H�N�G����x2K��2��0��)X���j��¨���բ@�[Go!-�V��H�'�����-Otn�y]זM�Hkh�/t7�A�o�`�:�n٭�*)oy���e���P<ܩ�L\-����/'�HU3
(S���bcH-v�����Zc�;��X��Y4�b2�g�g��`\C�5J���X�+��%��l}��1P�:�6���=O�,��ǂ�̤�i�
��\e]k�<����XW\�
�bq H�����O�Fu#l�7�WX�|}���/�Ngoٺt#'_&�ym]�!|u@e9�K��x��:2����wV3�$�̤���Q�w���J���A�0�wm�M���^�/b��:��(��K�5�A�~V9^�E����&�<�:?��j�]���/�ĆjYp��e��F��iA� 4=4�`�Yt��������^�I>����*` �xZ��
��f cf١��Aw�3XQ?�X^�L��|M�V�Ç���� i[�������%�S^e/S_AHr X��H2w��@�bi=5�9�z��p.�Ƥ�V� ,)(���E��m��97n)a*a��bө�'A�d�u�?
6������X�_~_�ļ�,��Z�	-��"�����(��*���1ˊY��Y�ʥ���R���Y�y��5a@���YΊ\5Y�r)�kR��!|P6!V2������~?._�H �8��6J��j�	�m3(��Q�D��K�Ų�;U0>úc��A�G�P�|_���q��L�%��Z�Hi;&���uQ,��F�fT:�`�|/��调$n�+=L�9�Gj&*v�V�[c��K�Q�a��{��Fx۽TN�ȃ�9�^q��ɊS��l; �H��	:#���֥:�[��������晦w�~s�B��窧v�.�	_-�~�7-���
ӑ&����8-�m��g$��u��a���,�����bFBz�e)&��y�f�H�73\r��w�.������p�X�	5G���5~�4[�=lu�.���v�~�{�:fTI~�O$�j�TA��	P+)=K٤Jzv�շy%1@?TN&jq+�q>�V<�~u8dh����� ᤚ��E�9ӹl˰��e)�eFZ	�B��>�$�4_�U����6!�WJ4.a�T��ك��$�3�?b]5w��Xp�dU[B�cZ�������E�A9�0w�DOH=*O�}�1-�׫;|Ԇ�\��_�}/�ǯ��Wh�����9�N��<XQ��51B�<�����z~h�r�z%w��m��SF�&a� ��i¸���T����L�P'G��-�m]���n%���=�*�;=�_�Qw�àS���N=���j�3���xi�yZ6���������t�r#�1C�u=mJ�в����Z�r'���\ޥ�.�Ey��m���|�XH ��wN�Z=)�W��O���?��������4��?*��5�҃�.�8�����F�U���t�	��p���c:�Ն��:Z��Z��;�Li�����oyo�f��|�e4]]~�E��=� �a��8��>���p(��܍�h�u��X��R�D�Z\�`K|y:��N{�%�p��
�V�]�~���v��:��R,u�$5'?龝�ɎD�am,�\�J`��7{����1�����P�d]���[�x��/��E�*	����X�*t<0�}��6��5he6�c��S���q5����M�X����N%�=U,�uU%���:��\45T�d��85r�j�*ڄ<�D��j��#�m�c"fW��}�Z�E��l��"�
r� ���*`��Wg/�����-j�z�����|�y��y}��Y�)n=Ei6-�E���*�FdE!�	��W�f��ͨC;T�l�{�`枮%�P�.�* _bY�b�#f�v �Ƹ���{81q���r�]$��,.T�/%�c�R����F��!�V�s9gm�L �WD ��*]L0�Y�X.��9�*��ɾ�RAP�өrO^Bd=��ƊJˠ:3)#�iѯQ����S���(�O��g%��>�n���c.� i,��-��� ���DKY�v� �D���І�l��Y��E��5�L�Ԯ���}�*�ٍ���~!=':��r��5_X)�&<b)��v�|�l����ǂ;���Y����.D��c�Ñ@��� �X��\�D��o[Ť��[ųd�*u+�Xk(מ��r�*�̖_Lfl�2���"'\���ME��f1dY����Fwn+����t�;��,�����J�Rh���d-� l���n�(�B
�G���5u3;4���*�5��.��ұH�E�!KJ6�b5�#ˌlb-�#���g����#�Q!��S�~$���X���y��"r�7E�jMA�6^��|���^&U���v�F���Z^N�_N����N:
<����Js�vE��[���L���;��w�����U�`4+��oٿ��vOx����!{޸T�R���#r6T����9�(��C�������\�3�ONlC�`2�#���۶u��^��}��I�߶e��2�di�pk��m�r�b�8�*�l+���2��Oսn�|Ǧշ*�4oW�>���q��������*no��o%v�1�f���a����ߍ8�4����������m+I���qv��˻ӫ������(	���YQ��0�u����sejE`@��gx'�1�Er�_������@�y_��t'iyD%���X,ǵM�h�x�,�l����[��9��+	8+>���1Ϲ�Ր��#�!'|��n�2|NcLQs|�k�'�`m�+(�;+3��Γㅁ��	�㿚��2c{�L�-<۵������Jtí�;;�/�z��~5�Bh�;Π}q8����y���¸(Z��A��$Da�/��    �;����/Y�/�L(ֈ��q-XqU�py|�"�Gj�̚bѓ�����N(��f����J�l�\�A{�Y��u��x����jG~t M���bB��G�C[�5�h���h;�C�ՠk�3�ۊ�"I:�����m��i��b� �R�¡Q	h�Wץ���	���^�㦼�Mۿ��~p���B�y�*�I�gy����#�?J��qp$�oX��6=EsH�=��U�_���r+���MUI��uT͞_�>�MwWj �ĳLr��>.��h�����]G�$t\?�J���S��?�InO0��w�Vuw������Ԗz~���}��煀V�C� x�ȅ�
��J����hp��Bm��9e��#v�#����� 9	��y�1V���I��Э�m�żL9K��W�\��4 �h9�S��MY3��!*���P�sP��ڤ\��%��4q���8w�������|��2��2[1#I�:]s^SB�U�h�C4 �8'%�m�z��HQ_�T<%�R
,ѫh�����������4����y/����B%��1�b�[�\���.m�g�+ӰlH#�r��Z�����䅬�pw�#�����oG�8N@qŦPE|����g�s���9?�y֑ɢ(pm&�a�vLC�~��e"�ȱ\7T���~`�6F$\��>l tw ��YTi�}�wF�H�y�u0ᲕT�=$H�QR�6n�7@e�3�ފ��f�Re�XF�s�I&�G����Xa�$:��X��?ɖ
��Mm݇��yk�'ŝd��)n�1��˩���ECtR��<�1q7���:{���جG+񺜼_�~���CS�x�[�dyx���r="��d��@�(�c��*�t�;]�x�'k��N'r�l��ykA��Jb�vA��Z�N����3��!ح"���X��}	�I���J.&��Bֺ��f��Ն��\�K	���֤��+O��B&���P�eq�3���DL0�n�*9��2��AkȚł7� [>)ֺ�l:҃��)kF��:T!������ �kL !v��nG(i��~UG�FJ��_tCQ�}{�T�n��m��˦����%��� `���>(Y�<%�`��)G��}y4:�ާˋ�񉝛��/����zyz�o^/^��(&�:�2o����֮�<�=���7Rhy��Dsϋ|���V�5��%��8	M$�1\!\ob� �V\/��7W�\,�������Y�sg�����=_��5#�c����)����/t�O���F�+��b(�����ަ����	�*�o�/)����!:m�6Z}!' 3�F 1O5$*sF�RŽ�҈�0g����QΝ�hK3%�Dq	���P�2'z�EJ�� n� �g��B��~�Nj��Qm�òe�{�Q8*����lJ_P��>�"�����1��V]y�}���t�m��Ш�6C�mW
5I��"��WV�ac?�'��mҮ8Y���gm�h�𲨙4X䝦�(��sw.4�Y�8?ռ=����~�����;�n˰�M)�H�pF�1��@�m��́�*�@�@d�G����].�GП�CoL��
B�&�{޷����X:�ϵ�PbQ;I8g�O��ځۓ�nf��YY ����\�ǉ#ͯ���)Ɓ���D�]=�ؾ�g��Y��eg9�.�������{�0�}72=�46�Z�M� �+��	�N._hV����?�`�5t[��y�ߦ�B�Iض;A��*����������A\r�&H�W;�И��F=�	G���٘ʬ���tZ+v=�1�|��&����>5�g�k��Y�k��+�n񂞑\TxHK���R������*�qL{S�0.��d��ۣ��\�F�� �E�,���n6�J�10�
"�/k�2/k�M(SX}�vz�k�j,Ս��)v�:Fs)"((He�
܇0�2{b��֔>�0�-�A21��Z��g�ú�H/�+��(�ʰ���]�;������/�#"��;��G&/�]i������&J��d�D ��$2#�qC?v�ܕVps%���۩Rl�67I�'��<3L0����$0�QO�&V� ~|���-�o:8�;G���tr<վ%x�^��
8x�/��[0>P�d�W�4�T@X�5n��B�������n�N �[�����(b�;��FW�8�͘0��,�l��j������]\����]Ni_UYF�F�Tg^2�V�[�K���TP�lB�,�]�� 8@����Ԅ⡾���T�i��5�D՛���E�8K��'��m&X�`�=X	'�2J��F�É��(����)��O��2�9 �?�Emgӥ�Y�G�S����:Ǒ
�Ȥۅ�ק��n	,�]��=[�㷍Z+�Zr̎�>`o��"��|���VSmK���٧���:د�::�G�?[���Wz�E�B��&����}]@�텸��e���hUhJD�]�[���^�;rІ�tCˏ�o2����ҍ�s�&�<���E2��� �[ALxx��6W��<a�ž �s�(�"�r\We�~����%���7_��#��gf!�逃1�d]��\H3�^����V�~a�	n��3��")6�n���m�?~Z�n� b��-�bk6L�T�[�@VWPI����=�{˵�봇9��R��Yd=V��Y�2�ћ�dY:� �%�Q�� @º���?��.oo^_��������z�V���y����FX����?_�TY0m����2ms���ܥvF�o�K���5l�;�y��tK�8�]�߫�̫Z�g^��s-��PU���-Ìv�kr�7؆�����L܉��Ҋ(���DZ�O@L��w�����_AXn^�Ks����i���/�j��Keg����2����_J8�~3�R�/�ܪkfIvb��|����*�T�L���$�G˩��mv�џn���� �0���eoF�n�;
CL�յ��:��>�Z���Rj��ݲH]�xvw�Ռ���]vQ_��/�v��E�`�7LI����{��7��K�g4j8/e\|(0��|2�|;���l�|4����ǻ����,~�d$���0��.g��c�0,���=��_
�\U�D��ɛ�!#'O�	�.�@�N�Δ�D`�����R��)8�$��b�$t���
F����V ����i�s��4c.Ѻ%���﫮�|-�w�TvP���'�e	f��^�3��{+J�9�-�<L������^��G)�����E<�zq�9~s�
�V`y�m��T�T�o�F>�ǰz�38 xzW
�
�Ѵ�b�9h�2Q��3)0�|Q������#�����0ȑ�jH�RuՅJ?	���S�#�I�5�ri۾�⇼��d��<:�/�,����o����rM<70ccZ���D-ȗ��&�\0�4��T���.�wG�N�x+��RP�x{��Wo���/�_>�U�& �gF����#�}�C����`�����)��%���m�xW�B��J��|�R��n��绛�~������.;� hI�+��V��.�C�{p%	)N^�,'X	{�z��Z���1�_j}�l_`N���Ӯ�f!c�^�|�����o��e���G)���\����|j�;M��L���������[�R�(��5e�����v�z�h��~�8
�]TU�j͉K���#�üϊB[�ۄ�f� �~���CP�b�B��?X����G�x��8JH��\�O�#�ڿ�u@�{u��nY����f ������kU+˱=ǅD�E�g���ru��IȻN\21�	���_�s�r)�C�T�[�՞4�+�(8dWt�^%أ��⾆��P��i�Î��{⃜T]h�)l̟у���l��'��Qbm�cq�|}fE���
��h�`�zA�{yLl��C�!A8�]����`��L̲�N��m1U��ͭ�8��;�u����C�H9��gV��kT uc,�9g9c���d�^����>��eg�Y(D]��j�'EIY�����������]���K�7q�=:/�� j  ��������z�?���	��5U}?��ap�˕����Ov�+�E#_������Tj���L�ng�:U�
��d�sM2�8R�a�`�*�F~����J��n�W%�1g�Ӛ"�ۧ��B.;1Г�-)�)�5�Գ���Q�~�y|e�OF�jS9�?�qY�����~��&ؑ��嘰�\� ���199V4��W��b���y�{�Eu6eK��u?j�nFB3G�Z��u���o�1��~ui�3�%��K�3LB*����E�=�LB�(1���l�^�e;��H8aI�R 9c�!��+U�����h���0 {뤩k�Sy��?�q�<pc;w�2��r������z�q~7==��sa��"\���&`e��!X4�� 3���	.��c;�=��X7Soa�G�
tzK/�\�@�k���[�ޞ|�u��\�V9�]
���4�	:��J	�o��C k2IU?�M)]��#-N��L5�m㺈UՏ!��j��sL�I���g������S��$����L�`��Q�ֲ��{�~�=��ڭ��e�{�CcD�w�eOh�W��.��:�(�v.�톁�7f�c���q
��W��J"� u����N���������~�/\4��*7h�v�®��i�*��"���u�!�e8�Y`n\�"�yi�!]�����ꕽq��w���e��&��y�a��?T����������c\‫1p�;9.�|�P����n?OMy�/�e���Y/ޭ�/��هe��9�E�9�o`4�X$�J<����C��-�G�jִ�뤧�~xwqz�#����<�{�,:��S@�
z�	�*�HZ�->�z���k�&h!Z��!��A-�QLgjQrKB��rt̅�\�ƺl�T�qḱ�oUO"w�k�k�� ���-��x3�H��5��m��� ���r�^��Xh�Q��L.�O;yB��� F�,,�4C�g���q���|8���[�V5W�T�Z+0�*����m��ΏS����I�;�m)'Uy�)�&+=�xWw�C�v߸�op�pD��1�ZҔ�������ևO�(�q�y0��m?������u6㪄��XՔ �("x��;pO@���~渃0A?�Y��>���4�+�y�b**a���:�\#�e���3ܫ^��#qzO�d'{/����e��:I�Ad�z���3m�J��R0�X� ��bXӲ�e�##��]ȝ�4���������@�1����;�I���%X���jV�|
���&�W���S��|���~��D�����u��N�,
#��MK"���p@���p0R�P��r
�<|�_�ʯ��ק��$D�>���n�<ѳôJ���G�f���[�Y�`T�Z?��WG���?2���D��e����1J�P$!���{��(+��gg�Q=D���׷Y~�|�}�U�ȴA�YN��.ˎ�`�}'�0��z�D���d߱��Ǥ��ʿ�7{�<�Sg�(潊�}���ڈ��\�J<՚��{��l�L��KL�l��$���0�S�'�3���Ɵ���m��U���lO���㛊�m��n �a�(���=�m��%_Б>�$�r�
��,-��*
���p�Y��i7�}b�x�Gۼ?N�� ���s��{=�W��j��
�29P��Z������E}�*��DuETa��x�ׯ�_��q�����:Q�^XN��j X��s��#�����@TP�W�S�ʤ�����2G�I¬����N��F��l�6���Q����r�ɱ>]nVq��R%��9&n3F��:��\ 7(�������s�w��� TǬo�$R�����	����/�ڋ��~���={���á�      �      x�3�4�4����� �[      �      x������ � �      �   .   x�3�t�+I-*(J�+M-�2��/-�,.�2�tL�������� �Z      �   6   x���	 0�:L!1I�]����DA&�8��6en����cq�E���t      �   *   x�3�46�4�2Q�\Ɯ@�	�4�2�̀��W� }�x      �   r  x�u��r�P�5>G��y�2
� ՛���L2(���NEM�*�����Ͻ F����e�?��9��
�Dox[bQ����Ʊe+u�hN?����7���v?577o�-A:���8��C8��֌B�=�?%�<�� qkG����m
�d:��笑�kX����YbV��YZ�%������H���O���Ln�8�f��~ɩ�����R���`p4TQ�TߴQYB�{�'A��DTG���Uۤ���6[��l|�r����i8��a1N���%�4�G�B�H�5iy�
�%n������â���ک:��C�٨������=��9�O�"��m��I�RUW5���k�rbZ�<�F�X��c���4x��~Ae�`l�ן�z���m�p�ũ�c=Ϗ��K@��=8�)�Qɮ���#.���9�[8�2}B��+��j��VQba'�)�,��l���J�<�g�w�lӘܝ���K���(����]E�{��^t�@7F��AD(9��I>/`��`
U���mf�x:7�G��C ���i�J1T<_u��Nj�	7%���{�UA6��ei���V.���ܝ͹�i��(���a�w����ύ����K+>��ڵ�;�q<��K�*�4��v�<wU�Ž�D���>Y뚩ԤB�ǂ�9`S��b2l-R&Ų�%���ϙ���@�c���Z�I����SYؓ��Uru���e)4�DN�պ��VUT���� �o��,,���v�ov���<�S�g��2�����&�=��3�����i~����^��*i�,�C��Y2�)�P�����xo@� �ȃ*`�?t;�i+U{�E�������l6��T�L     