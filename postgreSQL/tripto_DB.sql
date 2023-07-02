PGDMP         3                {           Tripto2    15.3    15.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16651    Tripto2    DATABASE     �   CREATE DATABASE "Tripto2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1256';
    DROP DATABASE "Tripto2";
                postgres    false            �            1259    16652    Nationality    TABLE     b   CREATE TABLE public."Nationality" (
    id integer NOT NULL,
    nationality character varying
);
 !   DROP TABLE public."Nationality";
       public         heap    postgres    false            �            1259    16657    PlacesToTypes    TABLE     s   CREATE TABLE public."PlacesToTypes" (
    id integer NOT NULL,
    place_id integer,
    "placeType_id" integer
);
 #   DROP TABLE public."PlacesToTypes";
       public         heap    postgres    false            �            1259    16660 
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
       public         heap    postgres    false            �            1259    16665    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    216            �           0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    217            �            1259    16666    activityType    TABLE     ^   CREATE TABLE public."activityType" (
    id integer NOT NULL,
    "Type" character varying
);
 "   DROP TABLE public."activityType";
       public         heap    postgres    false            �            1259    16671    activityType_id_seq    SEQUENCE     �   CREATE SEQUENCE public."activityType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."activityType_id_seq";
       public          postgres    false    218            �           0    0    activityType_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."activityType_id_seq" OWNED BY public."activityType".id;
          public          postgres    false    219            �            1259    16672    activitytype    TABLE     _   CREATE TABLE public.activitytype (
    id integer NOT NULL,
    type character varying(255)
);
     DROP TABLE public.activitytype;
       public         heap    postgres    false            �            1259    16675    activitytype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activitytype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.activitytype_id_seq;
       public          postgres    false    220            �           0    0    activitytype_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.activitytype_id_seq OWNED BY public.activitytype.id;
          public          postgres    false    221            �            1259    16676    enterprenuersToActivities    TABLE     �   CREATE TABLE public."enterprenuersToActivities" (
    id integer NOT NULL,
    enterprenuer_id integer,
    activity_id integer
);
 /   DROP TABLE public."enterprenuersToActivities";
       public         heap    postgres    false            �            1259    16679     enterprenuersToActivities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."enterprenuersToActivities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."enterprenuersToActivities_id_seq";
       public          postgres    false    222            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."enterprenuersToActivities_id_seq" OWNED BY public."enterprenuersToActivities".id;
          public          postgres    false    223            �            1259    16680    interestsToUsers    TABLE     r   CREATE TABLE public."interestsToUsers" (
    id integer NOT NULL,
    user_id integer,
    interest_id integer
);
 &   DROP TABLE public."interestsToUsers";
       public         heap    postgres    false            �            1259    16683    interestsToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."interestsToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."interestsToUsers_id_seq";
       public          postgres    false    224            �           0    0    interestsToUsers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."interestsToUsers_id_seq" OWNED BY public."interestsToUsers".id;
          public          postgres    false    225            �            1259    16684 	   monuments    TABLE     3  CREATE TABLE public.monuments (
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
       public         heap    postgres    false            �            1259    16689    monuments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.monuments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.monuments_id_seq;
       public          postgres    false    226            �           0    0    monuments_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.monuments_id_seq OWNED BY public.monuments.id;
          public          postgres    false    227            �            1259    16690    nationalityToPlacetype    TABLE     �   CREATE TABLE public."nationalityToPlacetype" (
    id integer NOT NULL,
    nationality_id integer,
    "PlaceType_id" integer
);
 ,   DROP TABLE public."nationalityToPlacetype";
       public         heap    postgres    false            �            1259    16693 
   placeTypes    TABLE     w   CREATE TABLE public."placeTypes" (
    id integer NOT NULL,
    name character varying,
    image character varying
);
     DROP TABLE public."placeTypes";
       public         heap    postgres    false            �            1259    16698    placeTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placeTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."placeTypes_id_seq";
       public          postgres    false    229            �           0    0    placeTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."placeTypes_id_seq" OWNED BY public."placeTypes".id;
          public          postgres    false    230            �            1259    16699    places    TABLE     �  CREATE TABLE public.places (
    id integer NOT NULL,
    "placeName" character varying,
    description character varying,
    address character varying,
    image character varying,
    rating double precision,
    location character varying,
    longitude double precision,
    latitude double precision,
    "ticketPrice" double precision DEFAULT 0,
    "estimatedDuration" double precision DEFAULT 1
);
    DROP TABLE public.places;
       public         heap    postgres    false            �            1259    16704    placesToTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToTypes_id_seq";
       public          postgres    false    215            �           0    0    placesToTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToTypes_id_seq" OWNED BY public."PlacesToTypes".id;
          public          postgres    false    232            �            1259    16705    placesToUsers    TABLE     j   CREATE TABLE public."placesToUsers" (
    id integer NOT NULL,
    placeid integer,
    userid integer
);
 #   DROP TABLE public."placesToUsers";
       public         heap    postgres    false            �            1259    16708    placesToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToUsers_id_seq";
       public          postgres    false    233            �           0    0    placesToUsers_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToUsers_id_seq" OWNED BY public."placesToUsers".id;
          public          postgres    false    234            �            1259    16709    places_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.places_id_seq;
       public          postgres    false    231            �           0    0    places_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;
          public          postgres    false    235            �            1259    16710    ratings    TABLE     v   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer,
    place_id integer,
    user_id integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    16713    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    236            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    237            �            1259    16714    roles    TABLE     S   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16719    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    238            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    239            �            1259    16720    searchhistory    TABLE     j   CREATE TABLE public.searchhistory (
    id integer NOT NULL,
    place_id integer,
    user_id integer
);
 !   DROP TABLE public.searchhistory;
       public         heap    postgres    false            �            1259    16723    searchhistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.searchhistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.searchhistory_id_seq;
       public          postgres    false    240            �           0    0    searchhistory_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.searchhistory_id_seq OWNED BY public.searchhistory.id;
          public          postgres    false    241            �            1259    16724    users    TABLE     �   CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    16729    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    242            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    243            �           2604    16730    PlacesToTypes id    DEFAULT     x   ALTER TABLE ONLY public."PlacesToTypes" ALTER COLUMN id SET DEFAULT nextval('public."placesToTypes_id_seq"'::regclass);
 A   ALTER TABLE public."PlacesToTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    215            �           2604    16731    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16732    activityType id    DEFAULT     v   ALTER TABLE ONLY public."activityType" ALTER COLUMN id SET DEFAULT nextval('public."activityType_id_seq"'::regclass);
 @   ALTER TABLE public."activityType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16733    activitytype id    DEFAULT     r   ALTER TABLE ONLY public.activitytype ALTER COLUMN id SET DEFAULT nextval('public.activitytype_id_seq'::regclass);
 >   ALTER TABLE public.activitytype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16734    enterprenuersToActivities id    DEFAULT     �   ALTER TABLE ONLY public."enterprenuersToActivities" ALTER COLUMN id SET DEFAULT nextval('public."enterprenuersToActivities_id_seq"'::regclass);
 M   ALTER TABLE public."enterprenuersToActivities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16735    interestsToUsers id    DEFAULT     ~   ALTER TABLE ONLY public."interestsToUsers" ALTER COLUMN id SET DEFAULT nextval('public."interestsToUsers_id_seq"'::regclass);
 D   ALTER TABLE public."interestsToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16736    monuments id    DEFAULT     l   ALTER TABLE ONLY public.monuments ALTER COLUMN id SET DEFAULT nextval('public.monuments_id_seq'::regclass);
 ;   ALTER TABLE public.monuments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16737    placeTypes id    DEFAULT     r   ALTER TABLE ONLY public."placeTypes" ALTER COLUMN id SET DEFAULT nextval('public."placeTypes_id_seq"'::regclass);
 >   ALTER TABLE public."placeTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    16738 	   places id    DEFAULT     f   ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);
 8   ALTER TABLE public.places ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    231            �           2604    16739    placesToUsers id    DEFAULT     x   ALTER TABLE ONLY public."placesToUsers" ALTER COLUMN id SET DEFAULT nextval('public."placesToUsers_id_seq"'::regclass);
 A   ALTER TABLE public."placesToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    16740 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    16741    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    16742    searchhistory id    DEFAULT     t   ALTER TABLE ONLY public.searchhistory ALTER COLUMN id SET DEFAULT nextval('public.searchhistory_id_seq'::regclass);
 ?   ALTER TABLE public.searchhistory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    16743    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �          0    16652    Nationality 
   TABLE DATA           8   COPY public."Nationality" (id, nationality) FROM stdin;
    public          postgres    false    214   ��       �          0    16657    PlacesToTypes 
   TABLE DATA           G   COPY public."PlacesToTypes" (id, place_id, "placeType_id") FROM stdin;
    public          postgres    false    215   ٥       �          0    16660 
   activities 
   TABLE DATA           �   COPY public.activities (id, name, description, place_id, "activityType_id", location, image, "Phone", price, "Time", socialmedia) FROM stdin;
    public          postgres    false    216   �       �          0    16666    activityType 
   TABLE DATA           4   COPY public."activityType" (id, "Type") FROM stdin;
    public          postgres    false    218   5�       �          0    16672    activitytype 
   TABLE DATA           0   COPY public.activitytype (id, type) FROM stdin;
    public          postgres    false    220   ��       �          0    16676    enterprenuersToActivities 
   TABLE DATA           W   COPY public."enterprenuersToActivities" (id, enterprenuer_id, activity_id) FROM stdin;
    public          postgres    false    222   ��       �          0    16680    interestsToUsers 
   TABLE DATA           F   COPY public."interestsToUsers" (id, user_id, interest_id) FROM stdin;
    public          postgres    false    224   �       �          0    16684 	   monuments 
   TABLE DATA           |   COPY public.monuments (id, place_id, "MonumentName", description, image, rating, location, longitude, latitude) FROM stdin;
    public          postgres    false    226   �       �          0    16690    nationalityToPlacetype 
   TABLE DATA           V   COPY public."nationalityToPlacetype" (id, nationality_id, "PlaceType_id") FROM stdin;
    public          postgres    false    228   e�       �          0    16693 
   placeTypes 
   TABLE DATA           7   COPY public."placeTypes" (id, name, image) FROM stdin;
    public          postgres    false    229   ��       �          0    16699    places 
   TABLE DATA           �   COPY public.places (id, "placeName", description, address, image, rating, location, longitude, latitude, "ticketPrice", "estimatedDuration") FROM stdin;
    public          postgres    false    231   �       �          0    16705    placesToUsers 
   TABLE DATA           >   COPY public."placesToUsers" (id, placeid, userid) FROM stdin;
    public          postgres    false    233   t�       �          0    16710    ratings 
   TABLE DATA           >   COPY public.ratings (id, rate, place_id, user_id) FROM stdin;
    public          postgres    false    236   ��       �          0    16714    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    238   ��       �          0    16720    searchhistory 
   TABLE DATA           >   COPY public.searchhistory (id, place_id, user_id) FROM stdin;
    public          postgres    false    240   ��       �          0    16724    users 
   TABLE DATA           g   COPY public.users (id, email, hashed_password, is_active, age, country, username, role_id) FROM stdin;
    public          postgres    false    242   0�       �           0    0    activities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.activities_id_seq', 50, true);
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
          public          postgres    false    243            �           2606    16745    Nationality Nationality_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT "Nationality_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT "Nationality_pkey";
       public            postgres    false    214            �           2606    16747    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    216            �           2606    16749    activityType activityType_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."activityType"
    ADD CONSTRAINT "activityType_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."activityType" DROP CONSTRAINT "activityType_pkey";
       public            postgres    false    218            �           2606    16751    activitytype activitytype_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.activitytype
    ADD CONSTRAINT activitytype_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.activitytype DROP CONSTRAINT activitytype_pkey;
       public            postgres    false    220            �           2606    16753 8   enterprenuersToActivities enterprenuersToActivities_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."enterprenuersToActivities"
    ADD CONSTRAINT "enterprenuersToActivities_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."enterprenuersToActivities" DROP CONSTRAINT "enterprenuersToActivities_pkey";
       public            postgres    false    222            �           2606    16755 &   interestsToUsers interestsToUsers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_pkey";
       public            postgres    false    224            �           2606    16757 $   monuments monuments_MonumentName_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT "monuments_MonumentName_key" UNIQUE ("MonumentName");
 P   ALTER TABLE ONLY public.monuments DROP CONSTRAINT "monuments_MonumentName_key";
       public            postgres    false    226            �           2606    16759    monuments monuments_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT monuments_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.monuments DROP CONSTRAINT monuments_pkey;
       public            postgres    false    226            �           2606    16761    Nationality nationality 
   CONSTRAINT     [   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT nationality UNIQUE (nationality);
 C   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT nationality;
       public            postgres    false    214            �           2606    16763 2   nationalityToPlacetype nationalityToPlacetype_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "nationalityToPlacetype_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "nationalityToPlacetype_pkey";
       public            postgres    false    228            �           2606    16765    placeTypes placeTypes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_name_key";
       public            postgres    false    229            �           2606    16767    placeTypes placeTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_pkey";
       public            postgres    false    229            �           2606    16769     PlacesToTypes placesToTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_pkey";
       public            postgres    false    215            �           2606    16771     placesToUsers placesToUsers_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_pkey";
       public            postgres    false    233            �           2606    16773    places places_name_key 
   CONSTRAINT     X   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_name_key UNIQUE ("placeName");
 @   ALTER TABLE ONLY public.places DROP CONSTRAINT places_name_key;
       public            postgres    false    231            �           2606    16775    places places_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
       public            postgres    false    231            �           2606    16777    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    236            �           2606    16779    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    238            �           2606    16781    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    238            �           2606    16783     searchhistory searchhistory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_pkey;
       public            postgres    false    240            �           2606    16785    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    242            �           1259    16786    ix_activities_id    INDEX     E   CREATE INDEX ix_activities_id ON public.activities USING btree (id);
 $   DROP INDEX public.ix_activities_id;
       public            postgres    false    216            �           1259    16787    ix_enterprenuersToActivities_id    INDEX     g   CREATE INDEX "ix_enterprenuersToActivities_id" ON public."enterprenuersToActivities" USING btree (id);
 5   DROP INDEX public."ix_enterprenuersToActivities_id";
       public            postgres    false    222            �           1259    16788    ix_interestsToUsers_id    INDEX     U   CREATE INDEX "ix_interestsToUsers_id" ON public."interestsToUsers" USING btree (id);
 ,   DROP INDEX public."ix_interestsToUsers_id";
       public            postgres    false    224            �           1259    16789    ix_monuments_id    INDEX     C   CREATE INDEX ix_monuments_id ON public.monuments USING btree (id);
 #   DROP INDEX public.ix_monuments_id;
       public            postgres    false    226            �           1259    16790    ix_placeTypes_id    INDEX     I   CREATE INDEX "ix_placeTypes_id" ON public."placeTypes" USING btree (id);
 &   DROP INDEX public."ix_placeTypes_id";
       public            postgres    false    229            �           1259    16791    ix_placesToTypes_id    INDEX     O   CREATE INDEX "ix_placesToTypes_id" ON public."PlacesToTypes" USING btree (id);
 )   DROP INDEX public."ix_placesToTypes_id";
       public            postgres    false    215            �           1259    16792    ix_placesToUsers_id    INDEX     O   CREATE INDEX "ix_placesToUsers_id" ON public."placesToUsers" USING btree (id);
 )   DROP INDEX public."ix_placesToUsers_id";
       public            postgres    false    233            �           1259    16793    ix_places_id    INDEX     =   CREATE INDEX ix_places_id ON public.places USING btree (id);
     DROP INDEX public.ix_places_id;
       public            postgres    false    231            �           1259    16794    ix_ratings_id    INDEX     ?   CREATE INDEX ix_ratings_id ON public.ratings USING btree (id);
 !   DROP INDEX public.ix_ratings_id;
       public            postgres    false    236            �           1259    16795    ix_roles_id    INDEX     ;   CREATE INDEX ix_roles_id ON public.roles USING btree (id);
    DROP INDEX public.ix_roles_id;
       public            postgres    false    238            �           1259    16796    ix_searchhistory_id    INDEX     K   CREATE INDEX ix_searchhistory_id ON public.searchhistory USING btree (id);
 '   DROP INDEX public.ix_searchhistory_id;
       public            postgres    false    240            �           1259    16797    ix_users_email    INDEX     A   CREATE INDEX ix_users_email ON public.users USING btree (email);
 "   DROP INDEX public.ix_users_email;
       public            postgres    false    242            �           1259    16798    ix_users_id    INDEX     ;   CREATE INDEX ix_users_id ON public.users USING btree (id);
    DROP INDEX public.ix_users_id;
       public            postgres    false    242            �           1259    16799    ix_users_username    INDEX     N   CREATE UNIQUE INDEX ix_users_username ON public.users USING btree (username);
 %   DROP INDEX public.ix_users_username;
       public            postgres    false    242            �           2606    16800 (   nationalityToPlacetype Nationality_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "Nationality_id_fk" FOREIGN KEY (nationality_id) REFERENCES public."Nationality"(id);
 V   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "Nationality_id_fk";
       public          postgres    false    3263    228    214            �           2606    16805 #   activities activites_places_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activites_places_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 M   ALTER TABLE ONLY public.activities DROP CONSTRAINT activites_places_id_fkey;
       public          postgres    false    216    3298    231            �           2606    16810    activities activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY ("activityType_id") REFERENCES public."activityType"(id) NOT VALID;
 K   ALTER TABLE ONLY public.activities DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    218    3273    216            �           2606    16815 "   PlacesToTypes activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 P   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    3298    215    231            �           2606    16820 2   interestsToUsers interestsToUsers_interest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_interest_id_fkey" FOREIGN KEY (interest_id) REFERENCES public."placeTypes"(id);
 `   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_interest_id_fkey";
       public          postgres    false    3293    229    224            �           2606    16825 .   interestsToUsers interestsToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_user_id_fkey";
       public          postgres    false    3317    224    242            �           2606    16830 !   monuments monuments_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT monuments_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id);
 K   ALTER TABLE ONLY public.monuments DROP CONSTRAINT monuments_place_id_fkey;
       public          postgres    false    226    3298    231            �           2606    16835 3   nationalityToPlacetype nattionality_placetype_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT nattionality_placetype_id_fk FOREIGN KEY ("PlaceType_id") REFERENCES public."placeTypes"(id);
 _   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT nattionality_placetype_id_fk;
       public          postgres    false    229    3293    228            �           2606    16840 -   PlacesToTypes placesToTypes_placeType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_placeType_id_fkey" FOREIGN KEY ("placeType_id") REFERENCES public."placeTypes"(id);
 [   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_placeType_id_fkey";
       public          postgres    false    3293    229    215            �           2606    16845 )   placesToUsers placesToUsers_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_place_id_fkey" FOREIGN KEY (placeid) REFERENCES public.places(id);
 W   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_place_id_fkey";
       public          postgres    false    233    3298    231                        2606    16850 (   placesToUsers placesToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToUsers"
    ADD CONSTRAINT "placesToUsers_user_id_fkey" FOREIGN KEY (userid) REFERENCES public.users(id);
 V   ALTER TABLE ONLY public."placesToUsers" DROP CONSTRAINT "placesToUsers_user_id_fkey";
       public          postgres    false    242    233    3317                       2606    16855    ratings rating_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 D   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_place_id_fk;
       public          postgres    false    231    3298    236                       2606    16860    ratings rating_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 C   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_user_id_fk;
       public          postgres    false    3317    236    242                       2606    16865 '   searchhistory searchhistory_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 Q   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_place_id_fk;
       public          postgres    false    240    231    3298                       2606    16870 &   searchhistory searchhistory_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 P   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_user_id_fk;
       public          postgres    false    3317    242    240                       2606    16875    users users_role_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fkey;
       public          postgres    false    238    242    3309            �      x������ � �      �   �  x�-�˕ !��`�a�7��?��b悄2mL�_Eg�Q�'�׿�q�b<�3�|��e��̵l�O��m�} �շ��;�b,6�G�o��Ā},&�x��E$1: 4�����F�z����N�h8!���6@pqN>���QW�G�+���/�I<��N0���,q��∙b�D�ib\ɍqDRmq�@�'�X��)��8��w����+���nn��G,|��b�}%�b������Hn�-�XKܱ�_{KعD�a�3�G��Qa� L��!��=Kd>��~U=%A�E)�8M����F��wIN�)θCqKD�Q l"�W$�i/��rd���Hh��%�x[���n>�(.��^c�#���DM�p�+����J'fB�dAJ�+��)!9y�����H��H��+H��-}Z��D�#�qKp���D %!=���d�|ϛgݞᕘ�HL�%&]��#۟��K�� ��땅�ߧ�%��IT��&���/"����      �   E  x��Wkoܸ�<�t {[x<��c�A:����&��n�&uaP%іHY����{/��ǎ?���(�ϹW��#�"%m���Qq͉���sNv�=�����N�{�j�d��Vk�j��*sR���g�_B�:M���;�%���ۉ�&� Z�FY������#J�%h%��O�VѺ�ĵ5�P]C�Pr�/�J���M!L��F����?�vj%�3Jz)zn/�M%j��������~jLG�ݦ��KӃ����Z���p�	�8cE����"�tӪ�Pxa��`$���6Ut�ɚ�نt\�N�ѳ�0��Ѝh�f�"���r/jUv���O^�V�2���e��q�N�j��U�ߢI-�`��Ot˙(�Cgh�I��dLu98\og�wZp�%����lg%�5�����IZLL���@n0ث!��o1@�8�jI6�XB��`Ѭ�əMn>�OeL�������T�����f��Vϭ!���dy}r��$K\_�gv+�[���}w�?�٭ЮӃk������a����ԅOJ/�q��;I�����/�3s|'�d�3/N� 
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
)bd|8 �1�UA�w"���X�1�|�׳����it~e������j��<P��P�C��hݫ���i��$bɗϐ�htI vS�WfT����I6�@p����j�1�-�����#B�ak�Q*�{F7~۷~��r�'�����uʬ�Yi�l�G�{\�{��P�i�>Ř$c���xz�/3����4�>���8�9)D|��Ǟ�����cvS�41')�\�P�q�҃�����O��      �      x������ � �      �   v   x�%�;�0��z|���hr�4�`���ml!nO�)�ѯ��a�2���!�w����'R���,Ϡ��@<���pS�J�p�J&�Ժ+��*�7�j[��]���=K��i�9��R�+�      �      x�Ž�n$I�&x�x
��2�$m_���q2H��HF�
(�������i�/<�?�9f��4P���y�9P]}���|��E��ܹd���3�nn�����'"��z�����"�q.�i)��46��8��ָh*�,׳�2�b����[���������t��H��̧F<��,���F�Yf@SuQ�1<0Kǥ(������`V���GG��mSf��m폓ȟ�C��aZ���h!�Ց�xgM�7������k��v�(�L۴ӳ��c��eG��f����~曃����bb��6+rxS��6�RV�И��:7De���'�1.E&bie{��L���E�0~ymLTFVĢ�����F����c�����t���F��q:��ɶ�ޟ�D�'J)�\nj�.諓bYø_�q�a���W��R,Ҥ§��w���Wk�C�Wi"K�U�K���r*���0�����o���1NWi-���vZ��q�f�nN.�i	C㻖�B�8�0��v��5,��θ�5U-jc-TSj	��ح��lk�ypE��*�O��{��Y���!V��~�n�2��u-�s���
��Um\�r�6�:|<q<��'���g���O���H��_��������h��m��X�,�����q�	h
�5o������ mUu
�<��Ci���v�BU<+`��q2K�J�a���H�J��>�C����%)JX��tqΚ2�{G/�8o���MV�����,6�ڄVƒ�`�V�6��果b{���]S<8�V�Mʯ�?U���Ͻ+��0��4}�5}?TS�v�{ @׷a��g����R��xY�vS"�ɠw �V2o`㰷��Dy�PJ�O����R��Hs�4�3���%R�r��dK���MH�����E`�x�f@�T�	,In��Ħp�,�Oּi&M��S2}Q�~�����w�k1��jƲ͊����4���:�������*cZ��SZfЁEQK��u��
�˯E�[%}.%�_�"Iի�J1�>����:�������6:y#���l��w���e��{��2�rY�خ���(0}���]���i6u�7�a����T��RT8���k�e;�p'�x !����_�.B��M�V�=�ET@Njj�E�{R2^D�#�=8�k�n6]۷V�}ӜT��l7�l4�mZ!kZ3�B3
�(rB;�-�[�O0'�9��{Y��� ����Qw0�5��ג��!݇S�S,�b	�O� �p]o+�)@CJ�s��SE�r��V�02�Ok�Ǝi�OK��q��òyg���s��t{s\M|P���8��Fn�~`�.������
�b[��ઙ��"��l��'� �9�ҟ~�q��-�vU��2��Gg�6����n�-J�:䟴� �v+��4��}7D='2�3��\�~�-��N�Q������E	j�!�0ܗ5�Z(5�K lT-�tgYg=�v{mj��a�ݦQuz�����kռ4}�n�lS�R]�ƍ�V:nO��A7��/E9'm��܃2Կ�~���0\M����x��]�p���w����wZ��;�45���{c�%y'���X��1N.X�w�H�,�"O�ݡ1�k�`5�۔�\��(S��&���3��uaLˢ�!ܑ�4C��j�' ��|���f
q%pOź$����s
� �},`�4Z��_1��(��¹�e�Bˌ^�k/�.�g�L��t/��#�� V� O����XX���9�^ P0��������*�s�
�q�ۨ7CIZ-3���(i������!a�(V<�b*�y�4� �?�h����i�5��?C��95U��͓�\����$,@P �Psì��?R�<����/@QY�_0��ZJR\s؝z���T�Ay#0Bm�����ndp1���բf�ހ�.NI���Y�b�;]�I�u�GQ�.�A[��[zj�{�^l�x����������cp]�޾�� �"+��Ў@���-����t�f����L��Ld>Л84K=�;Fw3�p�_z�(�W㜾���(�[�|]S�
m����(��K�����B2&[�8�FKܰ=�q)��W0ʨ���9,*��-Tr#�_V�������b1�W�0|p�'��/?���������a��zq��f��0 � �a�I���s����(�Ek�����9Po�2��t+~d@���D�;��֒�(,���A0.@�, �������sP	CˀKS�B-�VS��J�:��6���1y���?�f�&La�"+�LF�)����c=;�{�P9І
�
6gL�&a̱��h��
0�p��1P�>��S�&^�����Q�z}��cuv>�b]�x�Yzf����y~d28�C���c��ZЙ.@z�$U~��9�V�e�"�(fa�(`b��w`E���4M�ƅh���C�J=�o�I�=R�S�\�M���g���Y���H��h�����/��l�+�J]�����&¤)�����b?��t�dz�=��&��6xtܷ������t��L��l�K �n`�N�*��Y�����{`�qt�n�<�,S�z���{.a)	�g�������F�F  �I
]�E���T�=q��#PV�8��4���2��ğ���R�ވI��R�:��0k�u^Z�
�kG;#������)i>P��;�������0��&Ix����!Q���k�I����`�x�~���������f���x������d:��7������|��\���䥨*�����b�H�
PE�4S����o0�����R���{E�-ǃ�����A'�$Q°�}Dn# D�w�y���#�V�Ax�� ������<�BCS�4�`*��įa6a���m �jA�AͰ���-�E���}��*-p�E�%ON`��-�ͯ�5�hq�>ӓ�{{T��|��L�y=%� ��A`�>��!�=@���E��~��f��J����*�n�tU���S��UE6Z����H�
p"��E�+&�!�V���K��f��
��/D�h���rwgj���.�Ч�d%��\fi,�F��Z��(r�HTÞH��.��b\1�\*��� ���>9Q��j1y���}��ɛ��»�ߝ&�GSg�(&PW�[�L�( k�w\3� D1�8Q���$��v{�a7|_�T�L	�H�0�uK�k	Ȟ"�j����HFo-�y���ެ{���:�ɐF�B�P�O�uhP��:���	;��zϑ��h��;�AR�h*Ы�ăuQo	f�6wOt�G^@���ݩG� �}9tp�O.Ex|�R�Ӆ��֡0zi��c���L���k�Dl��p������?��W��/���(Iy��ϕC����k�?(C��1C�s����+���d��f�T�X3R��a�-�N��}�K*�6��Xa[�d��Y�
�)���L�:��Wj�*t֨�_+�9�N6�|Y���8E��n{ˍƢ\�4�
�	+�,�{vZ6�H�)L�LRqX��#���OG��A�TG��Y��đ0�F��Gsا�7������iG����C�pv���X���������D��;d��~4����D����;�>��}gU�A/�i	0	���Wsc[�����F�pa�$]�߹	���:���,���}��L�֏2�?�j��T�{�@� t�B��]6�<+ �4pCIs`z��J��`�q\�,��V����qAs��\IZ�h�u�-� ���d=�T�������؅n(5���Y���'L�����ՠʠ�Ox���0�_���Da�����7I2I��6�5��?���ʥ�U=� B7��`�5����Z��4X��ލ�S�f67�x�Q[��˻w,�����=YH�l������MZ��<;1@4`���(��４�ި��IZVNQ��Ӽ�����8�MXNYA�(+sV	�X���]�rrdw>��&��`�3(v��7��V �f�    @h�{bT,tkI7Ȩ��vQ�֏��I���*E���g���H�[n6���9���_�g�1�̗�|^��:�  �qB�m�<�o>�n;2#g��0`@�� �u�M����c�D.�X����T"0-�%��YQ��/q��<b
�KZ����Y!�ܪX:M6VJ�ۋ,�c80%�=ШT��0�cQf 2�E�ς'�a��뢀I����|U��F�qw[.V��>����:zw'�sry��:bc�c݆��06�c��6�턀�� c�������Z�������J�R�F�v�hF�u���(5v����]i>좉$�ZZ��Gs���ޕ�� ����FC��'��q�����i@�wN}�����2��� �y<1��f1����a�����_�r��Y[�k�f����Gab("��#;pP9�<Pb+a|�`U�;,���}A�p!���GH��Q�V��(g� z��Z!�{C� ���B���U�G��6\�P~T�P��6\��l�ƽ'j��D�Y,�9=������S����7���vt������=[b"(l���V�<~C��D�XL�݁�F��-D����.e��:�АJ� �K��?@�v��*O�:�GQ�����"|��
�����i��(9|{�.0�p�}�҃�SO^5N3-i���P՜�Q]�%!��"��.���0���,�mT��<n�w�}��#��;�|}�x�j�67��kVd�m[ (-�Y[y @��%���o����B���qN��.|w$><��I��Q^ {��#v"9�q��8�����v,�g�<�ew�����G׵�����}~�!B�W3A2���bǂ�p˼o|�����D�NT����k�����n�iW���U}@N\�R���1Ӱ%��X ���y�'� �;�@O(�rM�Z?�S�p?l���c��*�J�C�K�P�l�������Ž80.�CF��
4撝��E����(�ֿ�'��N[׸@fԁq
�FJ�W��p@к�p���U�= �����ՒF�I:��n��ސ�rJm����J�9b�2!�$?��3L�dӏ��嬨�����\����<�h*묪��% ,���	M����)2Ϳ�~:��R�d����l�s5���<?�-����L��3dn��xhy�μo_ƾ��)'h_2H@�;R&��EIϾ�V�}��*�r
�X����nn�L����9��+�xip��Lm`:Ȯ`F�B�Q��ۯ����އC���F��y���@�f��j=�i�nkl������G?�Č/��fX���O N!�����%��Ŗ|����6�@N_i+-��qNA)�{��~�?Nʢ��k����fl`�d:�"��4m`�"[a���[�@у�>!�)�١q����2@tc�r��7�q��Z�c�Xv4:r�����dU;:����d��F�9!��5r�m����W�r�v�e�ёM�-��pE�c��edG�e�!\�m?�=+�e��2���_,�D�_TL�_�iR�~�]�/��ɵ���y�倁���7�;F�C���;j�s�IތX�9},ς�`-g���q-0!b����&�"د���G�|op�TmN��!:����vR^�Q,�?cTUL�"�bAH$���5M2�q���$_��dkRS]��z��N��s%v1ئ*����[G3��J[���K�Jf�-��s)���A��&�9,���%Y1%ת�!9yt�P_�+��!�X���^aa��L��Qi�R������^�2�btp�����>EI�+X�D�A �vv��(�St��Aq���o�"����B")1��2���k���h�\n[Gٮ;��}��j�M9��-�����ԍG��_���U����0�ZRHwo��a��9�{���9��9h��RA�t��-��/�?�ޟ_����/���>��ſ��oK]9���p7mt�!�n$T:��}���F��v�~D�?˴]+�獎����3�MMHk�`낶:���R'���l�OZ�قZwܒ����C��Ta7bj�cl��!z�A�ݕ��sGM�R���H���D��qZ&�W���މ�Fn�[?J�y�⶙W'����/�e�V��E�X��k+揍�. �0�g����C:߷���{[d;��Nt!ܯ�:4��2�i4HW[��i�hz�	t�S9�{��Y�w#p7.DRb`�	��P�6I93������[<m����3�.�:O�;J(�٢��h��7���8�K׎�G���-y�e�;?��ɹ�HA�� O#��@����Z�P�u�{��Y�(W;�}?��wO:���b��}�>W�"�Z��������c4坴!E�����~/�:a��࢖?N�5����-n��r���#��g% Rd7#�l�ܲň	~�Pm�b1&�lA��M1�b�y�h��_���v�a��P��bW�~W?UySʡJt���A?!�h&�Э�����$��Q"͵<=~]}�>&o��TLA�}�B�u���i���>��ص����'L]�FG��3�.�ٷcE�ph;|@�^sQ�b������/�;,���k��Zs�R�*�ۯ�	���8������	Pn����i�G�����4���Xd�͙F�Rr��N�� ��ޒ�\�����-�_w�NK��Z�e	KWaG��6Ӑ���5a�A�x�=~3��V��X�ڪ���2����M�A�W�豕��%๬f��5���O"��5�����n�z�6��+"����S�
�j�j<נh� =�-�p��D��l

WB�%KM��d�ע7UߐG�LR����ֱ��J��I��hT"[�i����fr"�lmt�s��UJ�."O�t����sb��@�i���X;��v<~O �*B�(K�OY���!=� ��PlL��bŐ��C����X�}p�"�B��ZO�l�AS��}�У�}���7���IS\~�����e-�̲�(�� 0��q� r���R��g�3����#�^���G!򠋹��R�`ۭ�-�K�d�	G�
����ފUY	t7NF�7��)�i>��:i�v���>�'U֞�UM��+��c��T=��
_s�B�f�!{J�8�G�:~�Q���k�����m���,��}��L�g��a�ض\3p�O�;�e�0ހ�����H?�U�a���L.�T�#6PYԌ+a�j�Pa����6T�(����O�W��Q�t]�S�0=H����p��^�2��w7Gq|4��q<���8v|�c'���F1\���?�>Nx����� �/�s�ĲmǌB�[4�56aG7���Os"�������spr���	s�Q�@���f�竁�ص`X��λ|L��#'4,x�s��������{�1^+���L�\��\5j���u��Mi�&	6R�Ly�\0�K��#\�\�y8/n�J��ƈ��$<9�Z���
��u���B�B��B%�E�?�l�b	,��&ތ�ɼ~)�է�����欙:���}@p. 9ס���3Ck�	��8�1<�� W&H���~����K]\eYqۤ��J��g 9�E�T�J�g��>��ʛ��I���):Sa���n���ѣ����-��cE(�ʄ~�[J̧jL�a�E�"ԧ:>��{�:�Ge���/��sw�}c_q*2�,0�\׏"G[둃����gCϲhn>��t� %�ܓ�Jb��%�k��ϐpT?n[� �D�U3�*bȐ�P'��a���������aU�����}+�;�8B-�ߣ:��'#��aNFZ+B0�f�]����G�zj���f�Z%ɣ	k+k2y�\��w���cU��r��6	�(���[�+˥<*�h<L����9LR��y���v���M9��d�v����TA��uw2	�� �ڲ�C����
)冘�{��i��G!���Z#*�_��D�BNi��"͘tfTsV�    T<��^d8�b��G��*�O��~�������T��܄��8�@Yj�/�tC��؃�<W�Im(q�k�yK=K�R�@�V��Xv�'��қN�2Gm���n�X��M3�u*�X��~5ƚ��z=P�r�6�N->jc��߂�C��7�]"_�X�J�m��a�GF�d��%�w�"/�R��1$�|:����R1�֠$D �7-5��ބ��՘f�%�F�
�Ƞ��N��������W2������uSì�Ģ�ij1�b�	Ƙ�O��4�l��}�u��No=��7=�/��m��=�W�P�����V�jg�
�g��\vyҝP'�@�J�k�8�
D-��J�}��l����D�� Ê�'�{�����G:v�F�gG��d�;�9�v�
��iZ!���o�Ў��^���CGq�����y!���V:1�Bh�X�|�������@�nye�	�k� ߬�r<��a��6ט����+Y��Hy@n��۰��!�[�i1�,���o�Ƥ�q�9�c�s�6��up�F8�!��M0��3�� �OE�[��hS���	�b��Q��,���:��jʥЕ�^�Y6.�5�?�uE���J��2jn�G=o67[��u��\-����:�!L��v�E���f�}?������.0��e�S>��Ũ[޷�7��>�F���� �έY�1ݏ�N.�?����(Q���@�@�L��@�M�����h]�D�c&E�[�u�,	&�.���\&��{$5�B�g_�T���dx��OM���x�ql?�ۮޮ>_��_����:\s�F����sL�� ����B �͝M)jTF@��荘�����[Ōt�}���e��H`1%G��t�ו��¨����UV�뭋�_+�v]$ʓTBC]Ȗ':�Ҽ���ߖM�H��/��R3o�`�:�n٭�*)oyz��e���P<�����Zz��3�_N��*�Y���zKȮt�����rK�;�B)X��ɚ\�9�$�����Эa��7J���X�+Ek$���e��1V�:�6���=O�,��A�y6R��Q��i�O5ٹ��f�U^�+��@51?�io�S�Q�۟���I��O����}�2�����-[�n�a �˄5���0���,'ri:��XJ�����j�qჱ��T�:v��D����^�>A�9��j�l��O��}���I ���\��.0�'f��U��UE��nrJ�)u�ݮ�ی8��}�r��e����4�)뇒�	҂�Ahzh<%�f��ƭ�G�9/���[ǽx�|����GU	� 2�|S�Fr� �̲C����g��~.���1��9��T���/���2Wx��0�˽�S�Բ^�����0@�اL�d�N��_E��<b��p����\��F�<AXOPL+E���`9sz�R�R�TaE(Ri�O�&Yl�a�( �/B�S~c��e|u� �E>h'��lӏ"?����h��.�lQ4HT��jT.}WM���B�.[��w:^%6�����~�"Wu��\ʺiÚ�m-�M������;�b �K�W)f�N�Rje�b���j��$�oD��t��X�m'��c0�;Z��q�:�����Pˍ�%dZ,�5�R���1Y�5���"�rtEO�4{��)��调$n�+=M�<���$6j��Z#���٨��0�d�g}#�^*�%Z���lD/��#�!����(^�z�&��o�m��y���-�meA-�x�b�L�;r�9`���s5R;A����X��fb�E�Zxc��@����I�Ը�Y�!����z���C$e��gZ���h����h�*��z3�-���4K�?+���Icq'������3����Ս��T���5��	����!%���>�rRabT�VRz����
�o%�Jb�~��L��V��z�m����YHRE/|WC�X �I5A�ts�s���`�"j�eFZ	�B��>�<�4_٪��osRz���J���=H*S=s�3��F̌5JvQ�Y��,W�/R���Ӛ��0}�DOH=���c�7'�׫;|Ԇ�\��_�}/�ǯ��Wh��#�a"K��� �`G��M���̊����i
w�U
�E�<:�o&VLiJX�iF>7 ӄqu᧩l52����N�0�[�ۺT�n1�Q{�%=T�_zH����ƭ�T��NJ���̶t�2��.=O˦y�>rS�r>��Tz��8f軮�MiZ���� �<]�Q�d��˻�%�(Ov?�������b!2	 [�sT�$�K�*���b��ՙ��6�?������Cum@��\}������s���n�42��nDB�8\{���ni��{d�2�S��~��&�|[=��-������/~MW��~Q��m4g������O���<�ʴ5wc/k�!)�TB��mo�2Lw��i�,@��"�2�³)G��/��ݮ�N�K$I��zl�h�#Q�AX�<׷�#���n����n�h�d�.����l���e�"�	��Q���>�	�wߣ�#kZ��i����>r]�f1�ae� ��E�S�>O�Ks]U�%�C�1EM>Yb=B�\�`��6!�.Q��D���p&����kjߢVo�Py��|{5�t�4 Fef�
X�c��ً�u�o�Z��<����	���]߼>Y������bu��炢B�qC#���&�9�:F7��P�����K���B4�0��v���t�4"fpEtU`�Tu���͚�}��\��V�Ȃ����6�*��xn4K�n>W��)����|E Pq���BЏ	&�#k��%�8G8AE�=��S*�jp:U�I�K��ǰ��XQ�t*��2������$%ƞR�ޘHN�>MC ��d^��� J�^��,���N�t�g�;�(l�-%;8�(�) ���7v���
ӳ����5,�2�H�]3���b�/n�G��9��՗������J�.0���D���g{�9�� �<���X����І��m&z��z��<�8��s�(�E��m�fo�n!Ò)�4�dc!�9�tcғkJ�x�B,[~1��]���ϊ�p��C6u+7���e��&j���B;��Q�ӎ�f�n�`aR%@)4����BK���Mzw����I�%9p�ឳ�nf��q���{�J�R/�]����ds�!�<���&�";rj����Q����U�=5�G�h�_�5z�W�-"w|St���m���'��eRE[:��a�i4�O���d��$-�>�꼋�#
�i:�:�k�Qd:�e{>�J����C�z��S{��`���P�ܣY��[��ߨ����������ղ��$\�3�X�	s10m�%�C|h@'��~���/�������1����d����m)��W'h�i�x�Ƿ����,Y�)\�evg$���!Nf��8#�JW��B���ҿ-��ش���I��{E�#Kl�����������_�V‾�j���V�h�������O�i�
��/��k�)ܶ����'���;�:��{�:)�ږ�gEA�G��|�1ޖ�ϕ�}�a��y����xÑ~�Z��ȁ�'�<�N��`a��X�k���({�,����;q���9��+	8+>���1Ϲ�ϐ?�#�!'|���1|NsLQs|�k�'�`m�˩��;ka�?�cu�/DN�p��܄��g"l�ٮ�~g/��Dw܊���B����W3-������+`x>1��g`�f�E��Lb�%!
�}	�%�	ȷ%���,=xA�1M�ǵ`�9T��i�9��3��Y��JS�EO��3;Ip|O���{S(S��s�[��&�,�����U��� �=�̈́�
M��ˢ"��s��v*��A�lg��E�D�t\����۔��v�� ���9�S�j�k�W������jq��yS����p?x���%��<_�$�gy����#�?J��qp$�oظ�6=EsH�=��]�,*���V��/��� #�㨚=�}x���� 6�g��h}�n�#E�����I�    ~,$:�L���m�ܞ`��<��u������Ԗz~���}�����v�C� �L��J�E��g~48GX��.y������=���Rju~�����+��e�$E~�VP��c1/S��#f:�+m D��:AN�T'�R�Lrx�J�-�R�Tl�6/Q`f	�$M\Ǔ��A���b}�%n!| 3_0�L���V�HҪN��֔�v�*��=a'Ή�C	g[u��*�G4�-O	��K�**v��u|k�bd�(�/脰b��3�@��P��i���-ׇOa�K;������4-[�ȻÎ�VUN�#����ptdz����6����	(�����7���x.pU<��?_td�(
\��dX��в�Nz�L�9�����,�ƈ���|�a`t�~>d��=T�+���ܬ��:��]��Y��*iE�hɨQ�)��?�A�9ڷU|H+�,z��GR����٤��e��8f0�*!Q�8�N�.�A����}W|��;�5C�}���� �g`���d�q���&���8|��M�q9x0�b�{�V
=X��RiT�E�m��.�1PT<�0W��<T��;�v=�_C����Wi�S��@�Ei۷g��JVw�
�m��@t��K��h`��}���<�	`������ay4:�ާˋ�񉝛��/����zyz�o^g�^|�r�^�7׋��֮�<�=���7�5y��ϋ|��V�I�%���8	M$��\!\ob��KΊz�L5��Xrb/�)���ާi�m�o��z��	t�E� �}u�J`u�^����鬋��E�-c�D���U{GDve���
'hHM5��Wӆ�Sh�A���k�BNd^��ۙ��}rV�T�<�Y/��s��~@m�� �m��8Q�5h>j��D�sFX����`���ۏ�sv�����`�-��;��"Qw��P�)�����E>A��#Ǩ�q�f�;EE�[B�Ш�@/"�]�$%2�
��)�Z��xЋD�6iW
(.���=j�hj겨��Vh���A�IwZ��SuDL�>պ=����~�����#��:nhK��#�(bEVHZR�W��4����S�oLU���MO��v����~2�!�c�t2Ob�6�󾕹�:��c�u-<�k�Ģ��9=�O�R���IGwa�`� ��B�0q�8��n,M1|_$�'�������e'=[WZG��ӗ��d���{|�����/f�ndz ilDP�L� �+��N._h�����_��A�m%^.�G.�6�'a۲�Y8(�pW�ͩv��{b�;ul�]� �[��3Cܼ��,��uSPb�G��$.�P�Z��ŴsߵGB�*z��E?�\�
�e� �L��zFLp/�YZ��O���?,`��U!�c���qI�G�g�!˼��+� ���m ��:R�%e��8�r��e����,�������R�s��:��Kuc���R��!�E���x�WZ-48�!�Z��x��Yʸc$<���϶�U�1�M��8b��?��cY�2�wv��"s����߉�?"0y��H����%k�7���X�&'i%'������宴�ƕ��c죝|�^mn�|O\�}f�n云��`��M,�@T�����00�?�op.w�2VQ�M�<l�4I� �q���K���`|�z�V!�i�Yg�)k<�XE=u����2nKAM �[^��c�(8��p��NW�x�G�`B%R�ۂG#0����%g��'��H�)����T�D�F<�O'�1�VGɱK��tT��lB,L[������\j��P7�B�g��c$B��[�W�7�	��>�@	�`J�Z;KʃǊ=� E>����(����%��2�tz���G�`�OI�h�g���E>�#Ռ�Iw�koL���r%`�*I'���o��Vr�<��}��rQ%��@�T�9ڭ]�8�o���/���~��ѩ���آ�OzX�t ��R7���"� bl/�S�,D��Gk�RΣ���ߊwO�ܑ�6t���Z~d}�1�&�ؗn$�r�5qE�ay/���'�m-1�
d��[�\]���]��q�ȋl�q]����JS�pB���J{F���3�96��?)��c*+�o�b�iܺ����!���t�3��")6���T��D=?�+Y.b:N)�^6,�T�[U���%7,2�Orj���`�U��P+��zL]M%G�7�y�:J�!A�K�X<��	����q�\�޼�t'�O�O���$��|y��՗�'���W_����`����3˴͝���k�6�m�o�����}�&�9�����Q�g������~�m?ע���U�O�ݢ�hg�&'�m����a�ĝ�I,�����%b���xb�w����7�
�r��]��_��N�te)�T�_�hqf�Ϳ,�Ź��K	��o&_��ŗ[��Y�8��N����`�ڦ��wr����v�6���O��7�'/� p`ۛ��ۢ����2u�/����տR{��/5G��[�����
�J����0�%��u���`�J&�V��7�Dki^�A��ϸ${F���R�����N�'󜷓I���Gs�>��|��q*��-�b>��v@ɞ�o��a������N<�����~U1H�k���2r�t.�[��u�ى�rA,��2C�b��Ĕbߜ����u�>��]C
#��Y� ��~�@F��t�$]0me�Ʃ����UWṖ�;�*;�v���M�+�Ifx2���{oE9 �b���9��ۣ�ګ�|�(�s�|:���_/N>��o�U�
,ϳM�#�9=�o�F>��P�38 xzW
�
�Ѵ�b23h�2QG33�0�<�<n�	�E~��:�#-pc�#Րr���J?	���S�#�	��x 7����!�*�3����[J��i�B>�ƒ�'���R��RflL��u�Ȣ�������9�!ް>�2]�O�E��T�V.e;J���q��~��_��|��A& >ό|�Q4u�#�}<���B�;���;��vT���J�#��9�B��k�;4����A�z4|}��N�9m	t��ɞ����hO�$!�<yM�����4�3��vD�����O�g��gd߽�v#0����R��n��=�x;�/�U]>���}�庨�^~H�S��i���ezX�õT��fz���4���
^��d�FS�U���+#%F���Nl<�DU�N�e���I	��CN)��-���
B�gcQ�@P�v�,S����*�As���Pu>���rO��Ҏ}�V���?](`o�����=\(��x�%_�N�_lN�&՞qM'p�=k����0�ߥ��jDz۝+����!}��g�͸WP�2����I�������b[f��t.�K3T���^������ƪ���72���+h
�S��8n&��G�����p��d}��7#�_\˱9��� �E����U��c��cl��3,�����-�a<Y���b�G�Ѣ�5E�/�fM���|��U�`@e�R��8)�|K~/��F],���z�s�0�9a�ӲkNF��dKE�1 �|���>os��N2U�l��c:�ve��T�k�YC��А{����d����#'���z��������p;<�,�
<��Lw/ᡛ��GU�|b��6eK�������z����Z��BW֧Zs��`�e���X��C���	�M{�R|{QH�)Nǵ�\z���'������J٘p���zA��S�7��^�xt�/���x��������kU(αa Ae0�Tx)���";@�W�	�ԉKf�2ۻw���t���dy�4��t˵:�F�)��ԢN���,�"�os�gP�B�I繧���$d�*���d��'��f�<D�BZks�����3+�O�VȬ^�l��F�z�����Abh	���m{�&�gb�������;�*����� 'U�c'�TU�cq4�݁��qZQ��v.Ђba,�9�����d�^��.c*;_��k����djtٖ�N$���)h��:]��~���� H  ��&�ûG���u5u�7�Uz�ѹZoBU�
D>�� t}S��l� q�V�����}}��7��Eګ����� ����������L=U�vJ���|�sA>F-R'����1T��<�m�'��Wx�_E8��.�@{����9M-/bى��tm3�Z�I=�ܭ52n>����ɨXm*���ـ���y�x|v䆡c9&l"�#�}昜�	����K�n1�[�$�P���R�1������WG-П���j����o�1�~iu,����`H�3��+��lin��{7��ב�T��#»��K�f͡q�����Oly��&rA�J�'����ףK:
����IS����.�?�q�<pc;w=2��r������z�q~7==��sa��-HA����MP掇�q.rȰb6L�k�9��T�{�v�/e�Ƣ���=�g�s�z��4�6�D����M��^XZ%r��=e`Q6��6�����R�q��8KX�L�����Ň�'��BK�yĉ�\�WeJ֘���q�$3������}�I�ڭ$���͜Y ��E�L\�~�3w�M|��h'C$E�����Q�)�D�C��>����\����ܶ�aܘ6[��[D�q
��W<�J"���4���I����SB���~�/|bDwT*�N��"�]ut��WB�Eu`pC�3����X�Ni��j��b'�K���w��:2Ǻ%�L�s�bX"
�����!�E"p���j?ͤ�M��q��C��xL��N�yҍ���r\����������}X����Sڤ��6h`F��b�'���W�9T��r{4϶ZS��NzJ�w�'?2��z��yϗC!���T��jvt>H�D32�{�O��%f����WD��5:d���E�/:�e���N���<����E	�dM�X �>U=��U����:V<s 8��ظ�L6�n�G�;�6��~�s�a9N/SU/��(B�L&�OA'y\B���b F�l,�t��K#����;*i���
p21x��j.Ѫ6$��V`l���my�γ\�����xp)�)'�*���!�'+���Twbh�q߸�o��pD��.�zҔ�����ﻣ�.�}�V�`���5�~x/�e)�S��l�%9ӱ*� tQYah�M���x���q`�~�4}���f-W|�*y^T�(m1L�+j�F�v?�m�W��˥��`�Z:頨**ոPC�I�b�.�W�����jU[-c��=P��-�]K�ApC�Y�9zx�a��K#�Ё����o�����NG�G��,�<].�@�r�x��r��Sx��7y�z�!����}}�r5�F#u���`-3�0tYF��'�D`���Βp��Hdv@Q��)����~��=H�^ߺ(�I����#E��*��E��v*Nl�w!�Q<�x�_y���X���,'���H�}j ��q{臢-�?�S��F��{�B>����}q��v�_%_f�sU�02m�e�F���$��}'�0��z�D���j?԰�礕���7{�<��;^Žr��H�� �+��J<՛��A{�4���ۉi�z���
$ 	�O�&L�T��L�o�����gv�}�|k՟'i*۪��e���J�ѩ0��j_ Է/8�XyDG��k��+زYZ: )T\���a��*2�X��񉏶y��e�Az7��-�F~�����~�^�er�ҿ(�IQ�{튬�O��	5���0xt>����/��x�����:QŎ�N��R8X��s��#�����@T��W���ʤ��W�i�#dIb���Yx'���a3�n�w��f��ZI�v9��X�.7�8]�z^�
�wU=��q�&�
L����gϞ��[O�      �      x�3�4�4����� �[      �      x������ � �      �   .   x�3�t�+I-*(J�+M-�2��/-�,.�2�tL�������� �Z      �   .   x�ȹ	 0��X[��^7����"�@EJ�N˒�6m��I��      �   �  x�e��r�@ ��u���nq��W�P*�n��;Ҩ���&5I��W�UV�s���M�
,Y@���P(h�V�xZ����,����;8\"�I}��*�Ip�XU���� ������� 2`���J� >+:GJ�VF3�}��t*�L�:�v�7��S��0�:�/��yO
�O��Y��+-�g�,v�$�ڸd����b?m/�6���Jз�|(oלSFf�U?�|ugaHJ�g�+_��Ž��88�D5V�/��Z����gc�z�VZd��"�?�Gv�CF�a�,h�����=�2��޺��z����N����� y��	��fM�����wY}�.�7�s"����l�1�?˜�ژ�N��8�;�z̫ʠ�r�/���i��C:�O����wo�     