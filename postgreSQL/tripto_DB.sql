PGDMP     !                    {        	   tripto_DB    15.2    15.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    is_active boolean DEFAULT false
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
          public          postgres    false    243            �           2604    20522    PlacesToTypes id    DEFAULT     x   ALTER TABLE ONLY public."PlacesToTypes" ALTER COLUMN id SET DEFAULT nextval('public."placesToTypes_id_seq"'::regclass);
 A   ALTER TABLE public."PlacesToTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    215            �           2604    20523    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    20524    activityType id    DEFAULT     v   ALTER TABLE ONLY public."activityType" ALTER COLUMN id SET DEFAULT nextval('public."activityType_id_seq"'::regclass);
 @   ALTER TABLE public."activityType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    20525    activitytype id    DEFAULT     r   ALTER TABLE ONLY public.activitytype ALTER COLUMN id SET DEFAULT nextval('public.activitytype_id_seq'::regclass);
 >   ALTER TABLE public.activitytype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    20526    enterprenuersToActivities id    DEFAULT     �   ALTER TABLE ONLY public."enterprenuersToActivities" ALTER COLUMN id SET DEFAULT nextval('public."enterprenuersToActivities_id_seq"'::regclass);
 M   ALTER TABLE public."enterprenuersToActivities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    20527    interestsToUsers id    DEFAULT     ~   ALTER TABLE ONLY public."interestsToUsers" ALTER COLUMN id SET DEFAULT nextval('public."interestsToUsers_id_seq"'::regclass);
 D   ALTER TABLE public."interestsToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    20528    monuments id    DEFAULT     l   ALTER TABLE ONLY public.monuments ALTER COLUMN id SET DEFAULT nextval('public.monuments_id_seq'::regclass);
 ;   ALTER TABLE public.monuments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    20529    placeTypes id    DEFAULT     r   ALTER TABLE ONLY public."placeTypes" ALTER COLUMN id SET DEFAULT nextval('public."placeTypes_id_seq"'::regclass);
 >   ALTER TABLE public."placeTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    20530 	   places id    DEFAULT     f   ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);
 8   ALTER TABLE public.places ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    231            �           2604    20531    placesToUsers id    DEFAULT     x   ALTER TABLE ONLY public."placesToUsers" ALTER COLUMN id SET DEFAULT nextval('public."placesToUsers_id_seq"'::regclass);
 A   ALTER TABLE public."placesToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    20532 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    20533    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    20534    searchhistory id    DEFAULT     t   ALTER TABLE ONLY public.searchhistory ALTER COLUMN id SET DEFAULT nextval('public.searchhistory_id_seq'::regclass);
 ?   ALTER TABLE public.searchhistory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    20676    userToPlaceType id    DEFAULT     |   ALTER TABLE ONLY public."userToPlaceType" ALTER COLUMN id SET DEFAULT nextval('public."userToPlaceType_id_seq"'::regclass);
 C   ALTER TABLE public."userToPlaceType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            �           2604    20535    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �          0    20442    Nationality 
   TABLE DATA           8   COPY public."Nationality" (id, nationality) FROM stdin;
    public          postgres    false    214   �       �          0    20447    PlacesToTypes 
   TABLE DATA           G   COPY public."PlacesToTypes" (id, place_id, "placeType_id") FROM stdin;
    public          postgres    false    215   ��       �          0    20450 
   activities 
   TABLE DATA           �   COPY public.activities (id, name, description, place_id, "activityType_id", location, image, "Phone", price, "Time", socialmedia, is_active) FROM stdin;
    public          postgres    false    216   ��       �          0    20456    activityType 
   TABLE DATA           4   COPY public."activityType" (id, "Type") FROM stdin;
    public          postgres    false    218   �       �          0    20462    activitytype 
   TABLE DATA           0   COPY public.activitytype (id, type) FROM stdin;
    public          postgres    false    220   w�       �          0    20466    enterprenuersToActivities 
   TABLE DATA           W   COPY public."enterprenuersToActivities" (id, enterprenuer_id, activity_id) FROM stdin;
    public          postgres    false    222   ��       �          0    20470    interestsToUsers 
   TABLE DATA           F   COPY public."interestsToUsers" (id, user_id, interest_id) FROM stdin;
    public          postgres    false    224   ��       �          0    20474 	   monuments 
   TABLE DATA           |   COPY public.monuments (id, place_id, "MonumentName", description, image, rating, location, longitude, latitude) FROM stdin;
    public          postgres    false    226   ��       �          0    20480    nationalityToPlacetype 
   TABLE DATA           V   COPY public."nationalityToPlacetype" (id, nationality_id, "PlaceType_id") FROM stdin;
    public          postgres    false    228   E�       �          0    20483 
   placeTypes 
   TABLE DATA           7   COPY public."placeTypes" (id, name, image) FROM stdin;
    public          postgres    false    229   ��       �          0    20489    places 
   TABLE DATA           �   COPY public.places (id, "placeName", description, address, image, rating, location, longitude, latitude, "ticketPrice", "estimatedDuration") FROM stdin;
    public          postgres    false    231   A�       �          0    20497    placesToUsers 
   TABLE DATA           >   COPY public."placesToUsers" (id, placeid, userid) FROM stdin;
    public          postgres    false    233   �      �          0    20502    ratings 
   TABLE DATA           >   COPY public.ratings (id, rate, place_id, user_id) FROM stdin;
    public          postgres    false    236   �      �          0    20506    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    238   �      �          0    20512    searchhistory 
   TABLE DATA           >   COPY public.searchhistory (id, place_id, user_id) FROM stdin;
    public          postgres    false    240   9      �          0    20673    userToPlaceType 
   TABLE DATA           D   COPY public."userToPlaceType" (id, userid, placetypeid) FROM stdin;
    public          postgres    false    245         �          0    20516    users 
   TABLE DATA           t   COPY public.users (id, email, hashed_password, is_active, age, country, username, role_id, nationality) FROM stdin;
    public          postgres    false    242   �      �           0    0    activities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.activities_id_seq', 50, true);
          public          postgres    false    217            �           0    0    activityType_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."activityType_id_seq"', 6, true);
          public          postgres    false    219            �           0    0    activitytype_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.activitytype_id_seq', 25, true);
          public          postgres    false    221            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."enterprenuersToActivities_id_seq"', 7, true);
          public          postgres    false    223            �           0    0    interestsToUsers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."interestsToUsers_id_seq"', 1, false);
          public          postgres    false    225            �           0    0    monuments_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.monuments_id_seq', 1, false);
          public          postgres    false    227            �           0    0    placeTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."placeTypes_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    placesToTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."placesToTypes_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    placesToUsers_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."placesToUsers_id_seq"', 3, true);
          public          postgres    false    234            �           0    0    places_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.places_id_seq', 78, true);
          public          postgres    false    235            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    237            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    239            �           0    0    searchhistory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.searchhistory_id_seq', 9, true);
          public          postgres    false    241            �           0    0    userToPlaceType_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."userToPlaceType_id_seq"', 1, false);
          public          postgres    false    244            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 35, true);
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
       public            postgres    false    242                       2606    20592 (   nationalityToPlacetype Nationality_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "Nationality_id_fk" FOREIGN KEY (nationality_id) REFERENCES public."Nationality"(id);
 V   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "Nationality_id_fk";
       public          postgres    false    228    3268    214                        2606    20597 #   activities activites_places_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activites_places_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 M   ALTER TABLE ONLY public.activities DROP CONSTRAINT activites_places_id_fkey;
       public          postgres    false    3303    216    231                       2606    20602    activities activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY ("activityType_id") REFERENCES public."activityType"(id) NOT VALID;
 K   ALTER TABLE ONLY public.activities DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    216    218    3278            �           2606    20607 "   PlacesToTypes activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 P   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    3303    231    215                       2606    20612 2   interestsToUsers interestsToUsers_interest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_interest_id_fkey" FOREIGN KEY (interest_id) REFERENCES public."placeTypes"(id);
 `   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_interest_id_fkey";
       public          postgres    false    3298    229    224                       2606    20617 .   interestsToUsers interestsToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_user_id_fkey";
       public          postgres    false    242    224    3322                       2606    20622 !   monuments monuments_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT monuments_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id);
 K   ALTER TABLE ONLY public.monuments DROP CONSTRAINT monuments_place_id_fkey;
       public          postgres    false    226    231    3303                       2606    20627 3   nationalityToPlacetype nattionality_placetype_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT nattionality_placetype_id_fk FOREIGN KEY ("PlaceType_id") REFERENCES public."placeTypes"(id);
 _   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT nattionality_placetype_id_fk;
       public          postgres    false    228    3298    229            �           2606    20632 -   PlacesToTypes placesToTypes_placeType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_placeType_id_fkey" FOREIGN KEY ("placeType_id") REFERENCES public."placeTypes"(id);
 [   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_placeType_id_fkey";
       public          postgres    false    215    3298    229                       2606    20637 )   placesToUsers placesToUsers_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_place_id_fkey" FOREIGN KEY (placeid) REFERENCES public.places(id);
 W   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_place_id_fkey";
       public          postgres    false    233    3303    231                       2606    20642 (   placesToUsers placesToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_user_id_fkey" FOREIGN KEY (userid) REFERENCES public.users(id);
 V   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_user_id_fkey";
       public          postgres    false    242    3322    233            	           2606    20647    ratings rating_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 D   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_place_id_fk;
       public          postgres    false    231    236    3303            
           2606    20652    ratings rating_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 C   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_user_id_fk;
       public          postgres    false    242    3322    236                       2606    20657 '   searchhistory searchhistory_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 Q   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_place_id_fk;
       public          postgres    false    231    3303    240                       2606    20662 &   searchhistory searchhistory_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 P   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_user_id_fk;
       public          postgres    false    242    240    3322                       2606    20684 0   userToPlaceType userToPlaceType_placetypeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."userToPlaceType"
    ADD CONSTRAINT "userToPlaceType_placetypeid_fkey" FOREIGN KEY (placetypeid) REFERENCES public."placeTypes"(id);
 ^   ALTER TABLE ONLY public."userToPlaceType" DROP CONSTRAINT "userToPlaceType_placetypeid_fkey";
       public          postgres    false    229    245    3298                       2606    20679 +   userToPlaceType userToPlaceType_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."userToPlaceType"
    ADD CONSTRAINT "userToPlaceType_userid_fkey" FOREIGN KEY (userid) REFERENCES public.users(id);
 Y   ALTER TABLE ONLY public."userToPlaceType" DROP CONSTRAINT "userToPlaceType_userid_fkey";
       public          postgres    false    245    242    3322                       2606    20694    users users_nationality_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_nationality_fkey FOREIGN KEY (nationality) REFERENCES public."Nationality"(nationality) NOT VALID;
 F   ALTER TABLE ONLY public.users DROP CONSTRAINT users_nationality_fkey;
       public          postgres    false    3270    214    242                       2606    20667    users users_role_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fkey;
       public          postgres    false    3314    242    238            �   |   x���N,M�Tp,JL�L���2���I�K2�8݊�S�LS�����<ۄӳ$1��2���,IMQ���KO��
q���&恤9�J��3�`
�KKR��r����y c���� ]x*      �   �  x�-���8D׏`�X�K���K��UF0�����g��y#�7�xVl�7�1���g�X��6>�o���g�[��9A����W.��},�h���N$њ >�/aX\��0/�ֽD���4 �P&k�a����O�H�{����G�n����L�"cWP)�QK��)f�W�V�$/�:bE��'Fn��gdj���O� �=�'��x�_�36q�o�N�}K�>�{���!���O;��+y��xco����t8G��-2%V�3�2��S��o\��ݻE�K̸pw�.	S�a����DF�@�Է%7^�/Ō�D	4�qHp�D">��Wd���1�'q���������dAHW���D��`�+!�7$�|�|"������9���lȒ��)�yHHN���0����~�G0����~��$F�#	���,	��r��5Z����Ob�+1鑘tK��jr��%,	����0�믴��]Hb�^�$,1R�_�:�@@�Ҫ��c����yHmu_
ƂW�yZdI�IR�w	I�*C2��� �G�ǋ(���@7ك�����qϮ���n0��ΊT���d�GL�=C^�]dȫ��W��h-��$/�L�y&��^��xui}uiȠ�4tQ=h��4�S�Y�T���o�L�z{M�|���K����H���Ֆ'�����r��^[�D���7~��]L��L	>L��z��t=�\<��(�����/"�G��H      �   ^  x��W�oܸ�y�W��m��ѵ� �c���b�ۦISEI�%R�����G��h���E�����,i�Y�.�������}�����Ϳ���_y2�������؛������7�퍽��쏮��RԐ�jݙor�[���k�	%��'T��E)����:�.'J�>���Ob��	�����(D״��x !�PCU���05<?��*�z���Q
����kR§vЂM�g�dz*uG{.aj�Kp�$�*�����py��ָ����rh�B�&��Ն�!<�����4���D8z�Ri#����ctJ��.�0��F(9&h>)i+�5Q�JVc��z��*Kk.iy�z��F�|B��JiNJ�G�/�6c���V��O:�hŝ�BCSq���7�	5h�L��]�A�X�(�r��	��'��8u�
�!Xz�9n뉦%7k��Da����ﬨ{X(��(d����WcrӐ?�ARk�߆��_F5PȤ��(3�sō�QA͐;L�Q���`�,��|����i�!6��(J��kc:��t�\.'�Rx�T;mi��]C��?G#εh���%�e�� �dI�%q:�I&~&c?�Lj��4l��Y�m�ѩ���?��YB��K9Or�Go�d>g!/gc�i���^zv:+�� ��ԏ�Yp[����r�x�i���_ύ��h� X�LJFEp�OJI'e�
9��LSf��K��"��QQ��wQ�y~�Y�ܥA���Iy^���w''�]��N�;F���ҷ,�gYγ �/��L�(�o��/���P�b��%�3��j6��}���C}�����]���o�[m���V�sϻ�,/7���}��T�:�u�ӿ�[�Oݲ|�_�-��������Yv��a:�|��"/�G��2�I�KHu�ԃ;M9f�R�tdN��UI�tC��~]����
�����3-��UC��3�����`���v�h�B-���2U\m	i�K ���g��QIQ���Ú4��EQr���|�9"Ǳ�؊C��Ɣ��Z-��Cg���{h%m5������` 
�k��ˊ"Э��{�Vci9�����3_p��-�@t	�K,�Q�|d�/����4]` ک���U_*U8�E�BVmiޔ�j��'w���d��Gg��Y�]�g�׻{���o�s��ڇ��޺���}o_�܎���,�@��Y�9&L?�E��1aF����8��4�8�σ��c����1a��c�	���=b�����fa4
a��fO��lh���Fj�I�?b��0O���
j��	��Ě��Ft���)��=ֈ6���Z«�6��U�'�B��VmF��V�Vö1ٯЀv	h��C��^a5��EVxo��mm��t!*���)P�X[`�G�?����G|(���~h[ ����Q (M�P� )6l����Ƅ�X���a���h;��=�E��NRG9Φ�.8Yr0��'���ֳ���ҕh�v��"p$!~��(̯&Ҙt���	�,
�R n�1�6%V�V~E�`"�AIt�Q!�oL�099���`z��#eL���_ݴ�N ڮ	�.-�	
�,1������`�|;�u x�YƆːX�1�>9�Q/'���W�����7x�(<w��\eG��g2���	?��U��/�E�W��́iBo�^2��4� -���4嬤%�~��43��Zm^��0�m�� |;�$Q��O��Ϻ*7��L���3���=�J!��!�����ݰ{y���*n����`ܝj�m�9�@k��h@�-ֆSV[h��Fiҋ�2��I��Rl�|U��B�p�U�{x:�J�4�F+ڈ�-�#e0j��L럭YI` ��=w\B7��F�[������m 2tKa�� �c"r����#,�)�9��?րms�"x���2�j	���j�k�6���ڨ�s����Tw��H{�s�X/�]_珃�6�R�M==�o�� ����t��%�� }��?BZ���������Wo�G8�.=��{u�Y㏓8�C��X��%��e�ˠ�ǳp����O;2S{}��O�D�k�?l>5?__���o����9�������?��      �   R   x�3�tN�-��K�2���/O�O,Jq�9��KJ�K��L8=�S�2�R���%�E
��E%�\f���`3b���� `�       �   �   x�E�=n�0�g�:A�'i��)ХEQ]�0��0Q$�������<�z��w�E&|k�W�(�u?i"kQ��ҏ��54؟���b_�8����h�"����g�p�$+w�G^�!����0�j-��,|�*�u4�U@g�e�s�*��v�Z�}��n�S5liʽ5���d���DY��h͹�p��+��;�Z�O���f������ƜY��`>`d�AN�)�l��ٯ>��'!��ow@      �   2   x�ɹ  ��:�`����:Y^��.�Q1���o�\��O� >�/      �      x������ � �      �   T  x����n�6��㧠�`I�H�4���8Mд@��"��#Q#Œ(����U)h� ��'�.�8��D������d�&��ծܡ?n�l�b�g�P�����Zm�]�tS(h���K�hk��G{i�fW7�ڠQ���(uu��*�{�,�[�kк����@]���NZw�3�4��C�t�T;Tۡ��f�g2Ż
��궠J��u�h������[���3��R)��I�V9��a���H��U��Vm���t��4���E�\oO�h�7Zι�[U�2�f��޿E�n[��HE*���|Za���.hȿI���p���Q!�E��mT�&""� 8�2Jxtڬ^K�	V��m���y�^����]ַru��2._.5���tj�0LH������w�/2�)�)�Ln�B:�␶���1<|�m|�)��ɜ�D��I|�q��2)%��PBIKq1NR�CRL�`!?�Ι�������4&<[�-�@��e��7�]ɝQGvF�Cw��k%8��+������T�
�p ���S=@�z*�Z�X���̙�\�N�F���m�~u`�=��Q)F-$�c�9�F���#����O	',����v��﮻��;�� ���뺅Sln�_>�������!�_8�:�˝\� ��i�k<�{ؖ��]��s�D	��dm����a����$ֺ\�G�?x���[������G�W���er�f5��t��Ń��/O��Xr:�����xh3��gO4��G�d�����d��,�H8�B�=�-eK\p,En�e�'"�Kɋneg����d��/O���1�&4NE�!��,�zP��,bg�
)bd|8 �1�UA�w"���X�1�|�׳����it~e������j��<P��P�C��hݫ���i��$bɗϐ�htI vS�WfT����I6�@p����j�1�-�����#B�ak�Q*�{F7~۷~��r�'�����uʬ�Yi�l�G�{\�{��P�i�>Ř$c���xz�/3����4�>���8�9)D|��Ǟ�����cvS�41')�\�P�q�҃�����O��      �   f   x���0�3�EMܥ��Qz���BT��Ta��̣���c��ḞFu�ovb��0�>�Yk�zx�úvY>��j3�2�#�#��9��,�S�|?$C[O      �   v   x�%�;�0��z|���hr�4�`���ml!nO�)�ѯ��a�2���!�w����'R���,Ϡ��@<���pS�J�p�J&�Ժ+��*�7�j[��]���=K��i�9��R�+�      �      x�Ž�n$I�&x�x
��2�$m_���q2H��HF�
(�������i�/<�?�9f��4P���y�9P]}���|��E��ܹd���tss55]D>�DԳ�D��X粘�b9Kc㪈SYo����M6�����r!7��2�de�ܐ�,o���C#�ch3��LdcY�!�*��M�E����E:.E�=���,��^V=:��n�rq:���8����=t��Eq8]ebYɋwִz�>��ޝ������mǋ�ȴM�1=�8��Zv乾kF�m�g�98+��(&ƱoEo*��~Wʪ�X熨���$6ƥX�XE��|"�z!�FJ�"r��6&�	cQĢ�����F����c�����t���F��q:��Yl��?/u�(�0r������N�e�~���zJ_]nK��I�O9O�ġ������3��D�Ы"�x�n!ʩ����4��:ǿc��{>�c��������
�	h��&�M��us2[�%��Z�
Q�� �ځ�װ�f;�v�T����PM�%d<��b���9�!��5�j�8?�j��/g��7��lXA�c���AHk��B׵\�	o�+��W�q%�i�T����X��>�̚2�ђ�?��W"�w�n��_TE��F�n��x��e���O�+N@�Px�y�m�,��h��S��J[U&���3iT�ق��E*W~���F7Uz�-�<�)�^����:I'��)S�w�b��U �y��jV4�a�\��&͠Mhe,�Q	�km�[h��)���m�U0���SlUۤ���S�i��ܻ��	�M�w]��C5žk��q}&�z����?/e)��l7%��$�J��`�V���/O�Ji��^#��X
�@8�i��s�?��D*Y�Pޒli�q	�D����\o@X�Wl�0H���B�$��F	Kl
�Ȓ�da�K�va�ĺ�0% ӳJ��^��W��`_��"�f,۬(Q^�nMs�La����\�n�2�<:�eȊZ�/`|�#�V�]~-�8�*ix�s)���I�^eT�1�����I�57�.�/����NngY��%�C������e-c�^Z &���YF�w��H���ۼiS�d�gS�Ϥ�p��װ�v��N�@B6�M/��_�.B��M�V�=�ET@Njj�(����d�E�#�=8�k�n6]۷V�}ӜT��l7�l4�mZ!kZ3�B3
�(rB;�-�[�O0'�9��{Y��� ����Qw0�5��ג��!݇S�S,i��'` W������!%�9�Eҩ"u�FD+S�Ok�Ǝi̳'����8����aټ����9~��9�&>(��pX�ݎ#7\?�@��d���}f��c�����ઙ�m��6~�m�|�O?�8]�y�*^U��G'�A��oq�x���w�O�m�l
�Qk�˾���� �3��\�~�-��N�Q������E	j�!�0ܗ5�Z(5�K lT-�tgYg=�r���65́���nӨ:=��!�z�Z5/M�v@��n۔�;�Tׂ�q#?������g�x�KQ�I[�>����_�s�2W�Ǽ:4�*hW0\�j�(fA��vC�MMp�����oI����`04��a����*8����E����5`��mJX�{H��)�l
�{G����0�e���H|�!�[5� �x�s�Bc3����b]�eP~�9U��>���-S�����Z�V�\�2H�eF������ʳ�L��t/��#�� V� O����XX���9�^ P0�3�[p`h�Vi���{�8�mԛ�$�����(i������!a�+q@1�� P�� �ϼ �a��qZzM�����lN���`/`�<�i�=*	��6��0+s���%�&!,�PԢ�/�s�ZJR\s؝z���T�Ay#0Bm�����ndp1���բf�ހ�.NI���Y�b�;]�I�u�GQ�.�A[��[zj�{��6��5��n7��6���GW��oi�{&Ȭ�
-/�#�<��C˅,'%���<s��h�M�sQ&2�M������|��/=�J��8�o`l/��1_��C�B[����9,
i� �{�}ķ�L�ɖ5ζQ�7l�4D\J�9(��2*�i)e�
�g� ��X�/�ÿ��av|;�&�j�����凰����8�^;�z\ς!�\�C�C�l�A�|  �!�3��pp.��<�(`M�^7~ 5*�MZ��"݊P+55��l��d$
6�m��P�@?�.f���TB��2�R�T�P�Քd��Nc�Mm+rL��~�O�Y�	S��
4�Qx��F�,�X��^4T��B{����Isd��M�[FN?&չ�ǣ�yjC���p5��=�_�����Χ_��/�9�@���w<ϏLgv��U0y,�cQ+:s��H��ʯ��>��J�,SD��L �- �Xa�X���8MS�q!Z`1�Dv�R��jR{���T�y�<C�u
Lܬ��y��؍ 4�B��|��P6͕t�.�~�a{haҔ`T�H_��Tl:iz�=��&��6xtܷ������t��L��l�K �n`�N�*��Y�����{`�qt�.�*˔���g��KXJ���{�����f������p�B"[4s5jO�a��U;N�?�bPv
w�OC|F)IoĤ�Qo�b�y����`�:/-J��ԇ5��������a�4(q��P����@�Et^y�� <_��␨p���5Ȥzr�xy�u<�	���nyq��|t3��f�d��� p�Y2�@���`� |� ��������Lq�RT�GM�I�eiU��fj6���f�UZ�p y�(w��x��R^p=�DC�$J���̀c�(S~G��:�������e� �$����������)S��&~�	��m �Ubj��Ln�(�谿�?��uPi��.�E�����Rn��zXC����u𱘞��۳�bߝ�[�g����)������LQ�B�/����t�SI���U��-��9��j��s�޳��Fk�7�!QNd���s��!�*�~)Cu��ٮ����Q�7=��ݙ�i���3���/Y�fE)��4J�rs�V̊�<հ'�A��r�Ku��+��K�^> ��''*�\e�Gݮ��x���]e�M��4�<�:�@1��2؂d:GXk�㚑 �	����F� ����p;������`J�Eڅ��Xʸ^K@�d�T4�G2zkY���,g�f�sЏ��H�4�چ�~�C�R����o��H���{�t�'@#pM�yj��ES�^�&��zK0���{�C>��ݞ�N=���ˡ��|r)�プb�fjR�Z���ᚎq���2-�G ��i����i#d�,�w��<z_=����.��*/��$彊?WGhB��������t����'���$��7��*Ś�"�_x�vh�u"|�#x_R�h��K�
��'+�� U��(N����g��)����i�W��1X�^$?|���:�4�F�e�[v�����-7�r��@*&������iؔ"9\�0�2I�aQN���?��)Rճ&�#a��a��,�G F�����پ^�AH������b��s�w�s^XG�yt,��v����
�Q���s2�;w�d>��}gU�A/�i	0	���Wsc[�����F�0��s����܄�I`x�w�_��>��ӻ����q5n�놽N�_ :x���.G��A8�����90�g`%]a��8.`�@+zy�긠�QA�$�b���U��ng��N�u�O��X
V�B� ��T�,����EMO�}�jPe��'����w���i�0_M�ˆ��$I��6�5��?���ʥ�U=� B7��`�5YN�H�KyE,�v�F�)u����J<ꨭ���݅;��y�u��,$��	P�o�nAu��$�C�E47�~�;/%�7*�z���S��4og�"��1Na�SV�0JD�ʜU.V-�k��ٝG?:���)�F��C!�g���!    ��K� �Z�2���]����i���J��k�Yb>ᖛ�z>p����Y�_�6���/�W繎'  p��uC�7��ێ��x6�P�)�daS�Gnf��>��4V�p�$�L�b	�eV�u�K\�l*���7Œ��?%#+D�[K����J�q{�H�LɥF4�U1�&L�X�	 �"�g���ᎂuQ�$�z�a�*��F�qw[f��C�����Ͼ����y�\^����ر�X�a|=�M𘻾;!��0�X�1w�q�*or������`k��v�R��Q��%���{���:J����pW��h"I��֠��fsƣw%no�o����P|0�I��@�"0bkd�dÝ��Shw�"�Lk�+��b@OL�v���u3<��<�x{��k�\fۛ�u���0a6�N�����NqF �� �?�ő���!�2�W	VŸC���_��4�IJa�{����he��r
�gݬ"��7� ��`o�� ���;�[5+qtOm���*����a�2�����A:��g�\����#�k�O���W�K���o��M��ڎW�l���P�j��o��7x�� ։챘(��D�!Z���	6�}]�b��|�CC*��/i�N�  
�9:�<-��E�O��C��jf(�2	���:�Qr<����0�p�}�҃�SO^5N Z��U���9!���KB@O�B7�u�a�SY�ۨ&��y2����J�G�w|���y�n�|mn>9׬�\۶ PZ>���@�Kֱ#�������r��$]&��H|x��"G��@���G�Dr0�uq�{?l	!�X�ϔ9x���h����=,��k������C���f�dJ��lǂ�p˼o|�����D�NT����k�����n�iW���U}@N\�R���1Ӱ%��X ���y�'� �;�@O(�rM�Z?�S�p?l���c��*�J�C�K�P�l�������Ž80.�CF��
4撝��E����(�ֿ�'��N[׸@fԁq
�FJ�W��p@к�p���U�= �����ՒF�I:��n��ސ�rJm����J�9b�2!�$?��3L�dӏ��嬨�����\����<�h*�EU'K X�'�t���q�Sd���t`�����|�e�.��j���<y~[�9ۙ.b#g��R����y߾�}9v=SNоd��
w�Llϋ��}ɭ*���U����ls������pH�s\�W�i7�0�������<t�]������p�_�Wu)���ۓ�8r�r����Ͳ��z�����{���a� 3���a]��o<8����ǖ��[�YrO�۴9}��� �9�D��~���8)��R��ۯ�E���i����bҴ��`Tl�U:h�o�E
������g�ƙ;��dH -��v\��N߰ǋ4��#ǲ�ё��7m$��ѹ�</&�5Z�	�筑�m�ԅ�:�S��,ˎ�l�5h����(r�'.#;�-kh�o���Y,;�\��"+�l@|Q1�Y�I=��w��p��'�v�R��O�F�.?�����m�J�3�]��y&y3Z`Z���<6�=��=�ϾSƵ��t���䛰�`�"��=��	RM�9�^�>���7�R�Iy	fD�,`��QU0!��T��!���2�4����2�<c��֤��|_�[�V��J�b�M3T$��߷�f�ו�v��ȕ\@�&Υ\²=ޚ\0�p�֗P,�)�V��ɣ;��^�%�Ţ$��
���dҮ�JK����G���"���������C�%��`��	 $��5�<N�Q�Et�)X*�A�\��� ��[��L�f�)�ϛ�)s�mi0e��8�����7�L�X��+R72��~�_����p��a�G�����^��:�9r"���=��s��sк�Y��"��T�[6�_D�?��<ѿ_��9}胋�ߖ�rj�94�n�� 1B��H�t0�����ݍw!�"+���i�V�!�{�gЛ������mude�N���٤���9��%{#��Z�,)��n������v���-v�B.g�;j��V|E���%�Ύ�2阞��PO��h��N47r#��Q�����$�:y�̾~�/#�j,/Ă�^[1l��vل� �=sM҉���4�_��"�``رlt��~uס�X�)M�A��ؒ�N�8�G��M��h���݋��Ϊ���yp!��L����Iʙ��İ��i��}?F�@���T����e�WE��1O��I^�v�<}nɳ/����IlO�=E

L�xY`��4�L��B���[�G�ڑ���x8Ľ{�qn �&����A��ҥ��Ξ@��)�)BE����{��	+��<�q:���wlqkU���8�9��<+�"�	g;䖝(FL��j��1qfn�1K��E۵����Ck��@��\(vu�wU�S�7��D���_����f"ݪ�zz�M"�ŏi��������1y�̤b
�f�{�C���L�t}/�1ƮeL�:4�E9F��J��D�C�.���^�Tu>A�����^���mP9r�����Jf�
�V3�����4�$h���<��3�����Pu>��&&��Z���|���BEO��⍽�lƏn���|=:=~�9�o��G۱\��t5?�T*�o; ��0���T��N� ������Ԯ��j���׻l�V��?�Z�=H�Oj��&��V1���a�_��L��o�Z����$�"�����
c��VYBb�`��h�<5���f2�y4����}7��>Y_.B�K4��'��[�����8��-_q =����l���0��ӌh�;&4k����p�E1u-2�QM��t��B#RpL�/h�G��('��x��������,U~��?�#��].�m�G��	/!"���W1��`�!H)3Pj��Z�������թO0Ӱ~J|�,��L�"A���2�@�i�d�G�	��������!��R��1[�efD,�iYJ��$8�^���Y���j�Nj�P�^��zl͡�&����Q�M<WӦ�]du3�b�^!�(���"�a�A?�U�B�JxcB���Wف�@��9��R�E�TGV�7U�d}b�3Iq�ޛ#f�`��&&2C���b�ӶrAҚ��Г�X`��FIQQ~c�uIrp�&��SzhӘ�I��6mǃlOR��,J�S\8{ȍ*(_b��
ie\�k�b�N��!n\{l�д"�B��ZO�l�A��}�裉����7����IS\~�����e�(β�(�� 0��u� r����Z�g�3��g��#Lt%zE!�`|�7P��`�6�~K+^U0���V�Jɡ�q2�=��59�S�(��hbްq�톺��;S����0m�=�씛����_�k�`#Th�g O�'v�hSǏ��?�xm7vt�����%����#ׁ��,�w#�Iؠ������/Yf��8������X`���L�Tn@`�J�Q�U��
���Ew����R������Ԥ
 ���NS��A�������龾�9�㣉����DL��{���e`��@Z��pM��f��78����Wx���D<�!���:
�oa����M���f<q̉LW�^b�vϻϭ+�>�a�G}��k�w�͞�ns`ׂU���@�cv�9�	`���١�["��k2�Z�����ݶ�T{w��a��m=�� �Fʝ�ޔɤ��rx���>	��M���Q���'��-j��nc�+��`�ٺg�`ז��OQd29��	X?��^��������ms�L���}0_\0c\��yC�=X�!�W�� R�2ڀEj&U	��h�_��[u���,����mR]�CG�Z���~�����*�c�0.)���2�B�r[ x�� �;"�bD/�Hl����񼵺{<�~��B���a��@VS�NR�TʄglࣧT���<ߧ�!�[�b���|�a���ty�N��o�+��F:�����Q�    hWU� �<t� ���aY47�=p� %�ܓ��VQK���ϐpT�4[� �D�U��*���1��0�+���K����aU�9��}+�;�8B-�ߣǛ�1I F���<��T�2�r]�?|!�D)�q��!{���VI�h��ʚL�'���d���X鱜 �M)��gF���r)��z3�frrghpR���=�rr;�ă
k�릜�H�P;Cn���t��t��;i�blis���fhI��oF��=b��@����p>o�+q׵u�#mV!'�4^U`/�q�Ry,���x�����Wb��^Z����ۯby���89���� 3�P!�A�&��6�Pٲ�=�P�s�����G������scU��B5������Pn�IQ�Mv�:���p@���4+�X��~)ƚ��z=P�r�6�Κ->jn��߂�C�2��o�Q��ތ���������KL�t�܏�ʃdH�94٧�$`<�AI� poZjF+�|�)�1]��09�'�"�~�;]����{��[DȰ�;vZ�M�2Y���bv���p���8�9�T��S�z�I'~��H��i�����X�2���:�7��UGZT�=#4�+�	u�&&�*0�G_��EJ^)u�`�c�����zGE�Ȱ�������<������Q��ѷ�D��~Σ݂h�Bn`�VH :��[0��%�;�t|��Q�$blG�r^H�����@��2V<�8�f{���#P���A^���,Z$ڸ.�7+��<����t�)�����L����@��`��Cx��fY���?��kL��:Ab�~.��V�ѝ���;$3�	�/q:�`��)�J+�m��S0��ө ����%��r)tY���b1.�5�?�uE���J��2jn�G=o67[��u��\e~�Z������;{�b�[h3پ��lk�s\����J1P1	�#h�I:�ҫx�5L�E�#|:�l��t?2�:���lDa���D�N��aZ
���9\im�VW�.�]����"�-�:��Ó��ne.���?2zq!j���C���sm%��OM��m��8��mWoW��Oʯwa�a�9~�E�l��v�9&O] Si��o! j��Φ�L������F������[L5�d���e�a1%S6�n��ժ�¨���բ@�[Go!-�V��H�'�����-Otn�yC�-��>��@_�n�����=��u�ݲ[�URބ�����p)7�x4�S���Zz��3�_N���fP�H/'P�ƐZ�X�����lw���X�u�hr�d����`�/���!��(�"c��������n�@i�0���:@��<��N2�B�M+d�Ns�u���]�7��b]q�*(�� Q���F?5Ս��I�<^!`�������_��:��e�ҍ�0@|���u�����D.M��u{ ������Y�0.|�h2��VVG�ޝHt��+!�gq� ��"�6��h_�b)uTEQL1�:k�����r��&�*gU�MNy�;u~���|� B;w_��ղ�Z�4�)�2�	҂�Ahzh<%�f��ƭ�G�9/���[ǽx�|����GU� V�|Ss� �̲C����g��~.���1��9��T���/���Ҷx��-�˽Kҧ��^�����0@����d�Z��L�.�$z�s�����\��I�<AXRPL+E���`9sn�R�R�<yŦS9�O�&�6�0l���)����2���yGY��"��ZzGE��G�FQh1U��b��4��K�Uӿ��S+�6�!�N�kZ�ճ��*j���R�M֤R2C��lB�d*�S�!�~\�J�4 8qJym�f��**��fPt}��0K��ew�>`|�u�Bk�40��'�Q��R	r#�F	�K`�T��vL|���Xt	��ͨt��N�^Z��aI�Wz�4st��LT켭L�����f�2(�$�������vx��h�s���)�ȥ�v@D�Z�tF���VX���o����fPTVĻ�g�ޑ���Ɵ���	Z��'|������0,*LG�`����8�:�m���@�똅��ۏY���1;Č�0�L�R�!M0�v�P%��Wof����E�H�?+���Icq'�������l����Ս��ZGx�5���K���Q%���>���RmJ'@���,e�*��=v�J�� �P9��ǭ�����Z���ᐡ�^����/��j&���L�-,�.���Зi%�������|U,V}:��ۄ�^)Ѹ��R�ag�J�D����u��3c���]Tm	��iɏF��'����ܭ=y ��<5��SĴ`^�n��Q�r��~���mP����+_�iۏBf�:�&�`G�����̊�����i
w�U
�E�<:�u&VLiJX��|n �	��gS�jd��2!C�a@��u�
���2���Kz�����~�F�]�N���;� �&���\����i�4o�Gn*V��ӑʍt�}��\�)�C�r0`��k9ʝ캃sy�¾����=6�?��Udb!d��9]�j��t�^�>U���"�����?����x��(לK�����0"�wnS�5ڭZ`��O��؍HH�k/`�-�6|�4������!fJ;�V���{�5[����/�����/���큀���W�q�	����S@i��n�Ec�3d�"���'���[��ӝ�u��,�X�[�Vx�"��J�����u�ɼ�b��$ �9�I��Mv$J5kc���V{���ۍ?�3�����L���ؾ���>��,^;��0
�@�<���B����hi��Z�Vfc:&�<5��\W�Y�aX�D.��|Q|/�T��S�]WU"
�P�C��ESC�O�X�S#W�֩�MȳKT���&y?2܆I0&bv��ڷ��[d*���/b� �. �Q����m�Xqu��k]��ۢ��7��,�>:������'�Qќ5���S�f��\PAh:�bhDVbџ�|�iv݌:�C��Vx�	f��Zr
5���$��%��+&=b��a���^p��'`_�@!��E+��BE�Rb[�jc<7��i�
��9�h�g`�"�8��U!�����5��Y�#��"����)�58�*�$�%D�c��h����3�2���jEIJ�=�,���Q�4�|V�I�S0Z (an9�r	��:�r�[�A��X�yK����`G�N�M�p��m��V��%�\$�a]��DJ��x��箲q�ݸ�
��s�ӫ/W�]������]`�#���lG����sh{A�y,����_�5���ۅ�Uz�q8��$�k<<�ˣ�(r�m��4{v�x�LQ�a%a��ړ�\SN�C���Ɍ�b]F�yY�+u���[��,f�,kU2T�è嶲:ة������of��V�U�B�X��(�$k!� aۤww{E)Rp=e�笩�١q��UѽY�w)���E�.���YR�����Yfdk�9��8�(ȇtL��*鎞��#I4�����̫��;�):Uk
ʶ�R|䓌��2��-�����4����r��r��wOu�Q���4U�۵�(2߲=��d´u�!d�S̬=�h�ah�2�Y�����otz��������ƥ◒$\������D$̙�@	��I�_�7���=�����6t�!�>"Ya]�m[Ǩ���g0���m{f��=#K�f
W�F��!(+f���"�ȶ�G/\!���TP���wlZ�T٤y�����%��K�����Wq{��+q@_�Y5���+x4���n|�է�4t��~�n[I
�`􌳣�_ޝ^���=E�DI-�ϊ�h�ćɬc�-G�+P�(�>0=��;��,�#�����5O�}y:ҝ�����rK�c��6�����K�����w�n!���$�|����<��VC�p�l����s�~x<��9�1E��	���`�E4����D��Y�	�x���yr�0q8�u�WsZflO����g�������Y��}g'��\o�qïfZM}��/W�6�|b`9��>8]E31�ї�(��%��    x' ߖ�B�O��*�5"~p\v�C���F�:�����*��X�d/0�A0������o�1���4�8�e�^k�z�?8^x ���ڑ@W�'���_������~M`��~n5�N�PEw5������H�����vy�r�l�.���9@�;�pj�A���u)r�rw|���W��)oxӎoo�<�����{���
yC��<ls���%��88�7l\v���9$�_�.��_���r+���MUI��qT͞_�>�Mwwj �ĳLr��>n��h�����]G�$t\?�J���S��?�EnO0��w�V�:{Z�~Ԃ}jK=��o��Gl��B�	�	;֡L l&ra���Ң�3?�#�P��C�G�q���Hd)�:?H�D�ap�`��òs�"?t+�؆c1/S���:�+m D��:AN�TgbS�Lrx�J�� T�Tl�6)W`f	�$M\�c��A���bq�%n!| 3_0�L���V�HҪNלה�v�*��=a'Ή�C	g[u��*�G4�-O	��K�**v')v|k�bd�(�/�x�b��3�@��P��i���-ׇ��a�K;����0�4-[�ȻÎ�V%~�#,y!�#<��������m��ۑ=�P\�)T�o��2�U�\�xΏ�ud�(
\��dX��в���`�H!r,���c�X��	����O����UZu��%k>o@]L�l%��E	Rv���0�P󌡷b8`FC���T'�Q��EçA����QuD�F :V�+���e)�l��D����dSG�a�wޚ�Iq'�iJD�cL+��r�$�r��=6OeL�Mf����by*6��J�.'�×�_,�Ĕe��A0Y^� �\�Hx>��9�'��.�J�!]�NDW)����Z��Ӊ�%[�p>ZP'�����]P}��S8��"�sv�H0�%V�#�X�r�GR鷺��I몐��,����D��*��RB�z�5)����SǴ�I��1TsY��d `7����ۮJ`�Lk|��f��*��O���!���`u:eJŚQ��U� ��G*+��H�]E+�;�D=�_Ց�����<���P:oߞ�UD�� DAo�s���as�p	;�: Xd��J3OI&Xb%F�Q��B_�ά����z|b�������kc�^��F�׋W/>�I�N�̛��৵k�3�u�y�Z^�;�\��"ߣh�`��o�@��$NBS	`Wכ� =���׋�r�*��Ep�2В�;�}�,������+C�A�f�`v��W�;Vwr�N���=@�(z��Y%rU���;��;�B?�_%����%�A{��6D�M��A�/�d�:`!橆�CeΨU���X���9�z?ʹS�mi��(.!4�/s�O^�����q
`x�)/�L��줆�/�Q?,[��w�����ݡ�f���j��*�(r�	��cIՕ���޹N:Aw�f	�
l3Ԏ�w�P���*���pee�6��Az���&튓Š}�y�q֖��/��I�E�iꎊ�I�;�s��Κ�����!mU�;O���H$��v[�bHaD�30
��A��n��jF0�7���i��MO��v��@2�!�c�tVXb5I��5��u(h���	��x�����I�9�~x�t��ܞtt3�����~��"D�8N�h~n,M1|_$�'�������e'=[�����/;��ti��H6O?���_������ ��k�� APV�[8�\�,Ь�é�����h�68��$�M��ړ�m!v�,�U��%LU;)�=1ߝ���.M�p�N���1���.z��-�1�YG���V�zn1�|��!�����5�g�k����5`ՕI�yA�ȃ	�*<�%��\�]����s�8��)a�d�z���ێ�Q�`��E�C� ԢT�K�r7�K%r��[ԗ5R��5�&��)�>v'��uB5�����;J���2C�C�V���=1�TkJ7Ki�LL�g�y������?���cc��eX�G֮���������_�GD��w"�L޺�(��}?`A	��M�@1��ĉ@Z�IdF��~��e�+��q%����S��^mn�|O\�}f�`��I"`���M�ZA����B1Z�? tp.w�2VQ���x�}K��21p��8^���`|�z�V!�i����)k<]��u�����n�N �[^����(b�'��NW�8�Ø0��,�l��j������]�����SN�\UYF�F<Tg^2�V�[�K��TP�lB,�]�� 8@����Ԅ�nF�u*�4ǆ�:F"��Mv}�"@��j�@Ա�s�����`%�J#��DIh�p`^Ò�٧B�����G�`�OI�h�&���K>�#�Iw
uoL���X`�*Ig8�>�o��Vr���}��rQE��@�f�9ڭ�ږ\�o���/���~��ѩ���آ�Oz5��\D.��n�
L��e���^��*Z��V��DT��E��9���#m� IA7����&c�M�/�HP9k��Ú+^$�IOb�Zb��������8�	�.� ��D�ٖ�*C��#��p5�,9�m/0��
����fF�8�J��\q��ŀ4s�u��l��v���ѻ?X+�b�Z��Ol������o	[�a!���ު���T/	�a�S}�\��Ng���*���E�c��u*c�YL�ա�	\�5�$��~������������;yj~��࿨'i���˛����>i������O���`M��Y�m��!_����h��x�=����{79��?�?�z?��UU�]��3�m���E�~�*���aF;�59�lC��~�s&�DLbiE�n�Z"�o�' &|�;��~��� ,7�ޥ�����NW���K�}񥊲3�m�ee���/%�k��|��_n�ofIvb��|����*�U�M���$�G˩��mv�џ��n|O^zA���7#e�E��!&��Zld����J����)u��nY��z<���j��n��.�����k�W�"���$rz`˽��x�%�35��2.>�ewZ>�|��L�x�^>� ������ݍS	�ny�e2�� J�\�|K�3	<�1�|��p��4�/�?�*t�]��MՐ���s���Ls g'g�U"0��u�b��Ĕ	���e�u�h��]�#�ϋD+ v��p�4q�9�I�1�hݒ����UWs���;�*;�v��Ų3���V�%���@&�?T�m�Cm���ͣ�M���"��8��
�9W��L+�<�6a�X�r���7t#�cX�� <�+�q�hZL1��S���♔
�s�(T���G���?��H��HF5�\���B���V�̩̑b���]�tl_�ㇼ��d��<:�/�,����K���R�K�&���1m��M"��K>L�B.�|�`d��cf��ӧ�o'U���G)�R��vܫ�_n��/�?��n�	��3#�tT��X�>���suw0�J�Aǔg�^��6c��^�GX%kr��\)�zw�S����M?��h��x��r �%��g+�K����=�%	)N^�,'�	{�z��ڎ��1�_j}�l_`N���Ӯ�f!c�^�|�����o��e���G)���\����|j�;M��L���������[�R�,��5e�������zh}�~�8
�]TU�j͉K���#�úϊB[�ۄ�f� �~���CP�b�B��?X�>��G�x��8JH��\�O�#�:��u@�{u��nY����f ������kU+˱=ǅD�E�g���ru��IȧN\21�	���_�s�r)�C�T�[�ՙ4�+�(8dWt�^%أ��⾆��P��i�Î��{⃜T]h�)l̟ѓ���l��'��Qbm�cq�|}fE���
��h�`�zA�gyLl��C�!A8�]����`��L̲�N��m1U��ͭ�8��;�u����C�H9��gV��kT uc,�9g9���d�^����>��eg�Y(D]��j�'EIY�����������]���K�7q�=:/�� V  ��������z�?���	��5U}?��a
��˕����Ov�+�F#_Z�����Tj���,��d�:U�
��d�sM2�8R�a�`�*�F~����J���W%�1g�Ӟ"�;���B.;1Г�-)�)�5�Գ���Q�~�y|e�OF�jS9�?�qY��畻~��!ؑ��嘰�\� ���199vt��W��b���y�{�Eu7eK��u?j�nFB3G�Z��u���o�1�~ui�3�%�`H�3LB*����E�=�LB�(1���l�^�e;��H8aI�R 9c�!��+U�����hÒ�0 {뤩k�Sy��?�q�<pc;w=2��r������z�q~7==��sa��"\���&`e��!X4�� 3���	n��k;�=��X7Sa�G�
tzK/�\�@�k���[<ޞ|�u��\�V9�]
���4�	:��J	�o��C k2IU?�M)]�"-.��L5�m㺈UՏ!��j��sL�I���w������S�V�Fg�f&W0�ꆨ|kY��{�~p��z��N�H�2���1��;x��'��}
7�N+J���m{` ƍ���O�E�_��{�D����H�.�0�xR��t�Ĭ8��_���J��_���.x��J(�� �n�ynHq}��H^ZeH�(v��zeo^{�]amc�c��B�s�bX%�U/ªx�!�E"p�����8�jN4}'ǅ���1��:��I�)��=8�Ż��e9=���?^77��I1���� �&�dPIB�'��a1��s�����HUm��v{�����.NO~�>��8���D���У�^tDB�J-��{�O������	Z�V5Gk�>xP�c�Y�Z�\��c�s��"ׅ��.>�l�s��SՓ�]���c����?~�a/�L6�n�GM�w�fm�ȹ�����*�v!�&�K���G��P�*r��c�8�{i�ٿ�}G�j35_N�x�V�U�U*Նı�
���mm�a[��㔽�,�@��h[��BU�e�<��J/)>՝�Pt�7n�<0�%e���4%l��#����çk߸�<�?jw����KyY
�Կ:�qUB�t��jJ ]<m�x& ��g?s�����,�Ej�e����J1�0G[s��Z����O��U���ኑ��'X����UE��25d�$� 2�?�z����\��
h)S,q�B�l1�iY��ϲ͑�{�.��X��U�����?�_���z��������X�gQ5�J>�W�|�ǫ�OF��)�o�F__�\M��H�f�:X��']��k�%�in8�r�N8���(jx9[��/�A��H��[��E"I;�q�f���aZ%���H3�Nŉ-�.D0*j�����J�����r"����2����%�~(��{�=�m���س3���
�O�����,�J��>�[d� �,'�\W�eGF�ㇾE�Oa=s�A[]���ۿ�s�J}��ڛ��S����]�^��_�~m��E.w%����∽�jv�k'��l�-�J�K@��M����X�H�QM���h�6z�֪?O�T��':���ME϶�t7��0m��P��a��/��_{�`9�a[vA��v��h�z8֬���>1A|�mޟ'�ik���9`˽�߉+w���sr��dJ-PD�^�bQߧ��8Q]QU<:��k��c�m.���NT�v�����z� ��"��p#4���4�2)�����r�0k��,�������p7ۻMr�}T��b��}r�O��U���TI#�x��ǌ���Q�Nd&����|����s�w��gA��Y����>{�����ot      �      x�3�4�4����� �[      �      x������ � �      �   .   x�3�t�+I-*(J�+M-�2��/-�,.�2�tL�������� �Z      �   6   x���	 0�:L!1I�]����DA&�8��6en����cq�E���t      �      x�3�46�4�2Q�\1z\\\  w      �   1  x�u��r�@��5^G��4
����iJA�lD97(x��qRc���O���RyR��C����ʜz�����O��cE܏ג�r�8����66�^Tԁ�������h��S-Yjy���nY��>��p���	/�Bf�%F�t�hDj6�Qw�u���(���I���,�̺����п8�ܘ�u�4�J�i��^M�	�=�N���飅֒0�f�a]�N{� �`��7�$>��@&T���@�̪�%~(([�}�4Q�UMFA]�).=�A@��PǪo9�,���=� X�p��WDE
&2�?H��ywn<�ip3�gZh.&Dk��~9\Y+��C����i��8|ǫ��{i(.�n+\ �c��~���Ov[|�R��"�ꌙ΁�m����w',�����k���A�����+�Մ^�*[��S<��iΝ�?����[��I���2C[��2�E�3ʑ'���.��.�0>rGnӀ  ŨiY0yGƏn��F~�Z]�HX��3�� �_o8���Eq�Rv��]�LR�B������@��Oz4�kl     