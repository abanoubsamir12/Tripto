PGDMP     '    4                {        	   tripto_DB    15.2    15.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19944 	   tripto_DB    DATABASE     �   CREATE DATABASE "tripto_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "tripto_DB";
                postgres    false            �            1259    19945    Nationality    TABLE     b   CREATE TABLE public."Nationality" (
    id integer NOT NULL,
    nationality character varying
);
 !   DROP TABLE public."Nationality";
       public         heap    postgres    false            �            1259    19950    PlacesToTypes    TABLE     s   CREATE TABLE public."PlacesToTypes" (
    id integer NOT NULL,
    place_id integer,
    "placeType_id" integer
);
 #   DROP TABLE public."PlacesToTypes";
       public         heap    postgres    false            �            1259    19953 
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
       public         heap    postgres    false            �            1259    19958    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    216            �           0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    217            �            1259    19959    activityType    TABLE     ^   CREATE TABLE public."activityType" (
    id integer NOT NULL,
    "Type" character varying
);
 "   DROP TABLE public."activityType";
       public         heap    postgres    false            �            1259    19964    activityType_id_seq    SEQUENCE     �   CREATE SEQUENCE public."activityType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."activityType_id_seq";
       public          postgres    false    218            �           0    0    activityType_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."activityType_id_seq" OWNED BY public."activityType".id;
          public          postgres    false    219            �            1259    19965    activitytype    TABLE     _   CREATE TABLE public.activitytype (
    id integer NOT NULL,
    type character varying(255)
);
     DROP TABLE public.activitytype;
       public         heap    postgres    false            �            1259    19968    activitytype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activitytype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.activitytype_id_seq;
       public          postgres    false    220            �           0    0    activitytype_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.activitytype_id_seq OWNED BY public.activitytype.id;
          public          postgres    false    221            �            1259    19969    enterprenuersToActivities    TABLE     �   CREATE TABLE public."enterprenuersToActivities" (
    id integer NOT NULL,
    enterprenuer_id integer,
    activity_id integer
);
 /   DROP TABLE public."enterprenuersToActivities";
       public         heap    postgres    false            �            1259    19972     enterprenuersToActivities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."enterprenuersToActivities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."enterprenuersToActivities_id_seq";
       public          postgres    false    222            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."enterprenuersToActivities_id_seq" OWNED BY public."enterprenuersToActivities".id;
          public          postgres    false    223            �            1259    19973    interestsToUsers    TABLE     r   CREATE TABLE public."interestsToUsers" (
    id integer NOT NULL,
    user_id integer,
    interest_id integer
);
 &   DROP TABLE public."interestsToUsers";
       public         heap    postgres    false            �            1259    19976    interestsToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."interestsToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."interestsToUsers_id_seq";
       public          postgres    false    224            �           0    0    interestsToUsers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."interestsToUsers_id_seq" OWNED BY public."interestsToUsers".id;
          public          postgres    false    225            �            1259    19977 	   monuments    TABLE     3  CREATE TABLE public.monuments (
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
       public         heap    postgres    false            �            1259    19982    monuments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.monuments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.monuments_id_seq;
       public          postgres    false    226            �           0    0    monuments_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.monuments_id_seq OWNED BY public.monuments.id;
          public          postgres    false    227            �            1259    19983    nationalityToPlacetype    TABLE     �   CREATE TABLE public."nationalityToPlacetype" (
    id integer NOT NULL,
    nationality_id integer,
    "PlaceType_id" integer
);
 ,   DROP TABLE public."nationalityToPlacetype";
       public         heap    postgres    false            �            1259    19986 
   placeTypes    TABLE     w   CREATE TABLE public."placeTypes" (
    id integer NOT NULL,
    name character varying,
    image character varying
);
     DROP TABLE public."placeTypes";
       public         heap    postgres    false            �            1259    19991    placeTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placeTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."placeTypes_id_seq";
       public          postgres    false    229            �           0    0    placeTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."placeTypes_id_seq" OWNED BY public."placeTypes".id;
          public          postgres    false    230            �            1259    19992    places    TABLE     6  CREATE TABLE public.places (
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
       public         heap    postgres    false            �            1259    19997    placesToTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToTypes_id_seq";
       public          postgres    false    215            �           0    0    placesToTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToTypes_id_seq" OWNED BY public."PlacesToTypes".id;
          public          postgres    false    232            �            1259    19998    places_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.places_id_seq;
       public          postgres    false    231            �           0    0    places_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;
          public          postgres    false    233            �            1259    19999    ratings    TABLE     v   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer,
    place_id integer,
    user_id integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    20002    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    234            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    235            �            1259    20003    roles    TABLE     S   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    20008    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    236            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    237            �            1259    20009    searchhistory    TABLE     j   CREATE TABLE public.searchhistory (
    id integer NOT NULL,
    place_id integer,
    user_id integer
);
 !   DROP TABLE public.searchhistory;
       public         heap    postgres    false            �            1259    20012    searchhistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.searchhistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.searchhistory_id_seq;
       public          postgres    false    238            �           0    0    searchhistory_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.searchhistory_id_seq OWNED BY public.searchhistory.id;
          public          postgres    false    239            �            1259    20013    users    TABLE     �   CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    20018    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    240            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    241            �           2604    20019    PlacesToTypes id    DEFAULT     x   ALTER TABLE ONLY public."PlacesToTypes" ALTER COLUMN id SET DEFAULT nextval('public."placesToTypes_id_seq"'::regclass);
 A   ALTER TABLE public."PlacesToTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    215            �           2604    20020    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    20021    activityType id    DEFAULT     v   ALTER TABLE ONLY public."activityType" ALTER COLUMN id SET DEFAULT nextval('public."activityType_id_seq"'::regclass);
 @   ALTER TABLE public."activityType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    20022    activitytype id    DEFAULT     r   ALTER TABLE ONLY public.activitytype ALTER COLUMN id SET DEFAULT nextval('public.activitytype_id_seq'::regclass);
 >   ALTER TABLE public.activitytype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    20023    enterprenuersToActivities id    DEFAULT     �   ALTER TABLE ONLY public."enterprenuersToActivities" ALTER COLUMN id SET DEFAULT nextval('public."enterprenuersToActivities_id_seq"'::regclass);
 M   ALTER TABLE public."enterprenuersToActivities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    20024    interestsToUsers id    DEFAULT     ~   ALTER TABLE ONLY public."interestsToUsers" ALTER COLUMN id SET DEFAULT nextval('public."interestsToUsers_id_seq"'::regclass);
 D   ALTER TABLE public."interestsToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    20025    monuments id    DEFAULT     l   ALTER TABLE ONLY public.monuments ALTER COLUMN id SET DEFAULT nextval('public.monuments_id_seq'::regclass);
 ;   ALTER TABLE public.monuments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    20026    placeTypes id    DEFAULT     r   ALTER TABLE ONLY public."placeTypes" ALTER COLUMN id SET DEFAULT nextval('public."placeTypes_id_seq"'::regclass);
 >   ALTER TABLE public."placeTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    20027 	   places id    DEFAULT     f   ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);
 8   ALTER TABLE public.places ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    231            �           2604    20028 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    20029    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    20030    searchhistory id    DEFAULT     t   ALTER TABLE ONLY public.searchhistory ALTER COLUMN id SET DEFAULT nextval('public.searchhistory_id_seq'::regclass);
 ?   ALTER TABLE public.searchhistory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    20031    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �          0    19945    Nationality 
   TABLE DATA           8   COPY public."Nationality" (id, nationality) FROM stdin;
    public          postgres    false    214   9�       �          0    19950    PlacesToTypes 
   TABLE DATA           G   COPY public."PlacesToTypes" (id, place_id, "placeType_id") FROM stdin;
    public          postgres    false    215   V�       �          0    19953 
   activities 
   TABLE DATA           �   COPY public.activities (id, name, description, place_id, "activityType_id", location, image, "Phone", price, "Time", socialmedia) FROM stdin;
    public          postgres    false    216   ]�       �          0    19959    activityType 
   TABLE DATA           4   COPY public."activityType" (id, "Type") FROM stdin;
    public          postgres    false    218   ��       �          0    19965    activitytype 
   TABLE DATA           0   COPY public.activitytype (id, type) FROM stdin;
    public          postgres    false    220   ��       �          0    19969    enterprenuersToActivities 
   TABLE DATA           W   COPY public."enterprenuersToActivities" (id, enterprenuer_id, activity_id) FROM stdin;
    public          postgres    false    222   �       �          0    19973    interestsToUsers 
   TABLE DATA           F   COPY public."interestsToUsers" (id, user_id, interest_id) FROM stdin;
    public          postgres    false    224   /�       �          0    19977 	   monuments 
   TABLE DATA           |   COPY public.monuments (id, place_id, "MonumentName", description, image, rating, location, longitude, latitude) FROM stdin;
    public          postgres    false    226   L�       �          0    19983    nationalityToPlacetype 
   TABLE DATA           V   COPY public."nationalityToPlacetype" (id, nationality_id, "PlaceType_id") FROM stdin;
    public          postgres    false    228   ��       �          0    19986 
   placeTypes 
   TABLE DATA           7   COPY public."placeTypes" (id, name, image) FROM stdin;
    public          postgres    false    229   ͩ       �          0    19992    places 
   TABLE DATA           u   COPY public.places (id, "placeName", description, address, image, rating, location, longitude, latitude) FROM stdin;
    public          postgres    false    231   S�       �          0    19999    ratings 
   TABLE DATA           >   COPY public.ratings (id, rate, place_id, user_id) FROM stdin;
    public          postgres    false    234   B�       �          0    20003    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    236   _�       �          0    20009    searchhistory 
   TABLE DATA           >   COPY public.searchhistory (id, place_id, user_id) FROM stdin;
    public          postgres    false    238   ��       �          0    20013    users 
   TABLE DATA           g   COPY public.users (id, email, hashed_password, is_active, age, country, username, role_id) FROM stdin;
    public          postgres    false    240   ��       �           0    0    activities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.activities_id_seq', 45, true);
          public          postgres    false    217            �           0    0    activityType_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."activityType_id_seq"', 6, true);
          public          postgres    false    219            �           0    0    activitytype_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.activitytype_id_seq', 25, true);
          public          postgres    false    221            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."enterprenuersToActivities_id_seq"', 2, true);
          public          postgres    false    223            �           0    0    interestsToUsers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."interestsToUsers_id_seq"', 1, false);
          public          postgres    false    225            �           0    0    monuments_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.monuments_id_seq', 1, false);
          public          postgres    false    227            �           0    0    placeTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."placeTypes_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    placesToTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."placesToTypes_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    places_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.places_id_seq', 23, true);
          public          postgres    false    233            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    235            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    237            �           0    0    searchhistory_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.searchhistory_id_seq', 9, true);
          public          postgres    false    239            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 32, true);
          public          postgres    false    241            �           2606    20033    Nationality Nationality_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT "Nationality_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT "Nationality_pkey";
       public            postgres    false    214            �           2606    20035    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    216            �           2606    20037    activityType activityType_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."activityType"
    ADD CONSTRAINT "activityType_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."activityType" DROP CONSTRAINT "activityType_pkey";
       public            postgres    false    218            �           2606    20039    activitytype activitytype_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.activitytype
    ADD CONSTRAINT activitytype_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.activitytype DROP CONSTRAINT activitytype_pkey;
       public            postgres    false    220            �           2606    20041 8   enterprenuersToActivities enterprenuersToActivities_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."enterprenuersToActivities"
    ADD CONSTRAINT "enterprenuersToActivities_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."enterprenuersToActivities" DROP CONSTRAINT "enterprenuersToActivities_pkey";
       public            postgres    false    222            �           2606    20043 &   interestsToUsers interestsToUsers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_pkey";
       public            postgres    false    224            �           2606    20045 $   monuments monuments_MonumentName_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT "monuments_MonumentName_key" UNIQUE ("MonumentName");
 P   ALTER TABLE ONLY public.monuments DROP CONSTRAINT "monuments_MonumentName_key";
       public            postgres    false    226            �           2606    20047    monuments monuments_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT monuments_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.monuments DROP CONSTRAINT monuments_pkey;
       public            postgres    false    226            �           2606    20049    Nationality nationality 
   CONSTRAINT     [   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT nationality UNIQUE (nationality);
 C   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT nationality;
       public            postgres    false    214            �           2606    20051 2   nationalityToPlacetype nationalityToPlacetype_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "nationalityToPlacetype_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "nationalityToPlacetype_pkey";
       public            postgres    false    228            �           2606    20053    placeTypes placeTypes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_name_key";
       public            postgres    false    229            �           2606    20055    placeTypes placeTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_pkey";
       public            postgres    false    229            �           2606    20057     PlacesToTypes placesToTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_pkey";
       public            postgres    false    215            �           2606    20059    places places_name_key 
   CONSTRAINT     X   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_name_key UNIQUE ("placeName");
 @   ALTER TABLE ONLY public.places DROP CONSTRAINT places_name_key;
       public            postgres    false    231            �           2606    20061    places places_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
       public            postgres    false    231            �           2606    20063    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    234            �           2606    20065    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    236            �           2606    20067    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    236            �           2606    20069     searchhistory searchhistory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_pkey;
       public            postgres    false    238            �           2606    20071    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    240            �           1259    20072    ix_activities_id    INDEX     E   CREATE INDEX ix_activities_id ON public.activities USING btree (id);
 $   DROP INDEX public.ix_activities_id;
       public            postgres    false    216            �           1259    20073    ix_enterprenuersToActivities_id    INDEX     g   CREATE INDEX "ix_enterprenuersToActivities_id" ON public."enterprenuersToActivities" USING btree (id);
 5   DROP INDEX public."ix_enterprenuersToActivities_id";
       public            postgres    false    222            �           1259    20074    ix_interestsToUsers_id    INDEX     U   CREATE INDEX "ix_interestsToUsers_id" ON public."interestsToUsers" USING btree (id);
 ,   DROP INDEX public."ix_interestsToUsers_id";
       public            postgres    false    224            �           1259    20075    ix_monuments_id    INDEX     C   CREATE INDEX ix_monuments_id ON public.monuments USING btree (id);
 #   DROP INDEX public.ix_monuments_id;
       public            postgres    false    226            �           1259    20076    ix_placeTypes_id    INDEX     I   CREATE INDEX "ix_placeTypes_id" ON public."placeTypes" USING btree (id);
 &   DROP INDEX public."ix_placeTypes_id";
       public            postgres    false    229            �           1259    20077    ix_placesToTypes_id    INDEX     O   CREATE INDEX "ix_placesToTypes_id" ON public."PlacesToTypes" USING btree (id);
 )   DROP INDEX public."ix_placesToTypes_id";
       public            postgres    false    215            �           1259    20078    ix_places_id    INDEX     =   CREATE INDEX ix_places_id ON public.places USING btree (id);
     DROP INDEX public.ix_places_id;
       public            postgres    false    231            �           1259    20079    ix_ratings_id    INDEX     ?   CREATE INDEX ix_ratings_id ON public.ratings USING btree (id);
 !   DROP INDEX public.ix_ratings_id;
       public            postgres    false    234            �           1259    20080    ix_roles_id    INDEX     ;   CREATE INDEX ix_roles_id ON public.roles USING btree (id);
    DROP INDEX public.ix_roles_id;
       public            postgres    false    236            �           1259    20081    ix_searchhistory_id    INDEX     K   CREATE INDEX ix_searchhistory_id ON public.searchhistory USING btree (id);
 '   DROP INDEX public.ix_searchhistory_id;
       public            postgres    false    238            �           1259    20082    ix_users_email    INDEX     A   CREATE INDEX ix_users_email ON public.users USING btree (email);
 "   DROP INDEX public.ix_users_email;
       public            postgres    false    240            �           1259    20083    ix_users_id    INDEX     ;   CREATE INDEX ix_users_id ON public.users USING btree (id);
    DROP INDEX public.ix_users_id;
       public            postgres    false    240            �           1259    20084    ix_users_username    INDEX     N   CREATE UNIQUE INDEX ix_users_username ON public.users USING btree (username);
 %   DROP INDEX public.ix_users_username;
       public            postgres    false    240            �           2606    20085 (   nationalityToPlacetype Nationality_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "Nationality_id_fk" FOREIGN KEY (nationality_id) REFERENCES public."Nationality"(id);
 V   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "Nationality_id_fk";
       public          postgres    false    3255    228    214            �           2606    20090 #   activities activites_places_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activites_places_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 M   ALTER TABLE ONLY public.activities DROP CONSTRAINT activites_places_id_fkey;
       public          postgres    false    231    3290    216            �           2606    20095    activities activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY ("activityType_id") REFERENCES public."activityType"(id) NOT VALID;
 K   ALTER TABLE ONLY public.activities DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    3265    216    218            �           2606    20100 "   PlacesToTypes activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 P   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    3290    231    215            �           2606    20105 2   interestsToUsers interestsToUsers_interest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_interest_id_fkey" FOREIGN KEY (interest_id) REFERENCES public."placeTypes"(id);
 `   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_interest_id_fkey";
       public          postgres    false    229    224    3285            �           2606    20110 .   interestsToUsers interestsToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_user_id_fkey";
       public          postgres    false    3306    224    240            �           2606    20115 !   monuments monuments_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.monuments
    ADD CONSTRAINT monuments_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id);
 K   ALTER TABLE ONLY public.monuments DROP CONSTRAINT monuments_place_id_fkey;
       public          postgres    false    226    231    3290            �           2606    20120 3   nationalityToPlacetype nattionality_placetype_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT nattionality_placetype_id_fk FOREIGN KEY ("PlaceType_id") REFERENCES public."placeTypes"(id);
 _   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT nattionality_placetype_id_fk;
       public          postgres    false    3285    228    229            �           2606    20125 -   PlacesToTypes placesToTypes_placeType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_placeType_id_fkey" FOREIGN KEY ("placeType_id") REFERENCES public."placeTypes"(id);
 [   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_placeType_id_fkey";
       public          postgres    false    229    3285    215            �           2606    20130    ratings rating_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 D   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_place_id_fk;
       public          postgres    false    231    3290    234            �           2606    20135    ratings rating_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 C   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_user_id_fk;
       public          postgres    false    3306    240    234            �           2606    20140 '   searchhistory searchhistory_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 Q   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_place_id_fk;
       public          postgres    false    238    231    3290            �           2606    20145 &   searchhistory searchhistory_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 P   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_user_id_fk;
       public          postgres    false    238    240    3306            �           2606    20150    users users_role_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fkey;
       public          postgres    false    3298    240    236            �      x������ � �      �   �  x�-�˕ !��`�a�7��?��b悄2mL�_Eg�Q�'�׿�q�b<�3�|��e��̵l�O��m�} �շ��;�b,6�G�o��Ā},&�x��E$1: 4�����F�z����N�h8!���6@pqN>���QW�G�+���/�I<��N0���,q��∙b�D�ib\ɍqDRmq�@�'�X��)��8��w����+���nn��G,|��b�}%�b������Hn�-�XKܱ�_{KعD�a�3�G��Qa� L��!��=Kd>��~U=%A�E)�8M����F��wIN�)θCqKD�Q l"�W$�i/��rd���Hh��%�x[���n>�(.��^c�#���DM�p�+����J'fB�dAJ�+��)!9y�����H��H��+H��-}Z��D�#�qKp���D %!=���d�|ϛgݞᕘ�HL�%&]��#۟��K�� ��땅�ߧ�%��IT��&���/"����      �   ,  x��Wkoܸ�<�t g[x<��HZ`��c���b�ۦISEI�%R&�y���Ki��)�E��}ν
'��T��f�G�'B��/8ً�R�jJ�b��5���c�6��q3%T�U=<�ȿ�ViC���;�#���E�U�@��pG�p�R���n	Z	h��Gu�մi��p�)�n�J��%]�
6���)��^���#�Vk�Q�K��sw�ok�P=\�ێk�%��ZM�ۦŚKۃ��S�������p�	�[8�D�����Y"�t�)m)���He1�:O�j��d��lK47V6z��S[�m��@P��8��G�E�*M[C��ҩ^��3�*
�R n�)YR�t�j��[4���
&:j1��t��R��8t�jNr��%cJ�p����i�펴��^�Y�$tu�����XZ�LL���@n0��!���0@�8�jI.�XB��`Ѽ�GəM�}ğ����<�o6�Y�T��S�����;C�gW�����*;KW�����V�"�7��Px>�s[�[gG�/d��z~؇u0J�S?)�LƝ��,��VW����$��i�ς$��E<������.O��?�r�m��O}�m�(N�2*iɸ�-ʟ�m�S�z���~.�ӴN��I�iT8�q���Sa΂�
~}?� �o�A1����~����$���RM�RH�j���s��6�LKuG�����\��r������!�k[�FPc�7Z��r�jl<�S@���E�����M�F_=����w��K�_qk_�@;�Vh#�����Z��L矫XIh$���4��0@�tT��J�
���� `�H`Tc�p��qD^W+p8� !�D���0�1W[`ii�Z��FB�g�3�
��un[a�u��y����TS��ǻ�'����D��
�*p�Z$6�F���B�4����h��`�9K��,< i �#"��Հ�m�#�G��~�� �e�d�X�F�z��`|�@��eQ����
	t�|��T���5Χw�2�(����_�.���7���ry�O���-�T�5��]g�I���h[����E90�Se��G	�|��E��Wsbj���F�c,�5���	=�[�+����U
�H�=���C�AI(gl��	⦗��!r��SB�E��Z[�1dS����Æ���,/@C��&b� ��:�Π̧�ж.(t��\�q �p�z��9���H[O%mE�g�}���Df���%P�C�d�>�,�{Z�0���o*�!o���m�j� �ޡ�Q�Ɇ$���c�
�Sg)�ψ>��������GZCa�\�9QwpP��Q�$y󖚒��&�,�G�U��`T=G�r���D͐;L�Q���'0;�����5���~�w�?G#΍h���%�e@e�y�bh�a�a�-2Jhx)�I�C�L2�������Q���#�gc����g=R���{H�#��1LA����������ʜr&����6�f��z��b�q�i���I,�������6�8<:t�ya�&ޭ��uջ[�n�K�K߲|�e9ς,���2	✿e��_$o�NI��{T5[��.~�����\��}[{u�{W��k��U���nW�jo�ޗ/�_�mǾnL�O�g[��۔����a�Eew������E�]�~�:>�b/�'��M2�Y�KHu�Խ˾K9f�Q��$��\�tC�����*W����e�vXΟi!������h�Rȉ��5�Vf@E���c6��qlQ�GK/7{�a�|b&�𱁂G�3�;� :��!W�� ��j-r����C�G����KZM�6�h���b�cZ	��ն�th"��kD��(��/��-�C����G�Nc������p_8pil
x�\�=�[h>r�w�~
L�F�ҩ7��S_*U~���8���'YSJWF[���={uu4X�	~�����(0�����h^�^��&��G�	����3$~�h�(�a
J��Ӑ�<H)?f'=&L ��)<�L���`x���x��$��#��xq �,�0��(��&��?���7����Ͱ���<���NNN��'S!      �   R   x�3�tN�-��K�2���/O�O,Jq�9��KJ�K��L8=�S�2�R���%�E
��E%�\f���`3b���� `�       �   �   x�E�=n�0�g�:A�'i��)ХEQ]�0��0Q$�������<�z��w�E&|k�W�(�u?i"kQ��ҏ��54؟���b_�8����h�"����g�p�$+w�G^�!����0�j-��,|�*�u4�U@g�e�s�*��v�Z�}��n�S5liʽ5���d���DY��h͹�p��+��;�Z�O���f������ƜY��`>`d�AN�)�l��ٯ>��'!��ow@      �      x�3�4�46�2R&�\1z\\\ �      �      x������ � �      �   T  x����n�6��㧠�`I�H�4���8Mд@��"��#Q#Œ(����U)h� ��'�.�8��D������d�&��ծܡ?n�l�b�g�P�����Zm�]�tS(h���K�hk��G{i�fW7�ڠQ���(uu��*�{�,�[�kк����@]���NZw�3�4��C�t�T;Tۡ��f�g2Ż
��궠J��u�h������[���3��R)��I�V9��a���H��U��Vm���t��4���E�\oO�h�7Zι�[U�2�f��޿E�n[��HE*���|Za���.hȿI���p���Q!�E��mT�&""� 8�2Jxtڬ^K�	V��m���y�^����]ַru��2._.5���tj�0LH������w�/2�)�)�Ln�B:�␶���1<|�m|�)��ɜ�D��I|�q��2)%��PBIKq1NR�CRL�`!?�Ι�������4&<[�-�@��e��7�]ɝQGvF�Cw��k%8��+������T�
�p ���S=@�z*�Z�X���̙�\�N�F���m�~u`�=��Q)F-$�c�9�F���#����O	',����v��﮻��;�� ���뺅Sln�_>�������!�_8�:�˝\� ��i�k<�{ؖ��]��s�D	��dm����a����$ֺ\�G�?x���[������G�W���er�f5��t��Ń��/O��Xr:�����xh3��gO4��G�d�����d��,�H8�B�=�-eK\p,En�e�'"�Kɋneg����d��/O���1�&4NE�!��,�zP��,bg�
)bd|8 �1�UA�w"���X�1�|�׳����it~e������j��<P��P�C��hݫ���i��$bɗϐ�htI vS�WfT����I6�@p����j�1�-�����#B�ak�Q*�{F7~۷~��r�'�����uʬ�Yi�l�G�{\�{��P�i�>Ř$c���xz�/3����4�>���8�9)D|��Ǟ�����cvS�41')�\�P�q�҃�����O��      �      x������ � �      �   v   x�%�;�0��z|���hr�4�`���ml!nO�)�ѯ��a�2���!�w����'R���,Ϡ��@<���pS�J�p�J&�Ժ+��*�7�j[��]���=K��i�9��R�+�      �      x�Ž�n$��&�&��u�{%!����_���L�2�TN�����E�3|�W�{۫F���.jӋ�_�Wܺ��h=I����#8H�T�J2�3;v���h��w3�Ƈr#2�TTU*��6��Z�9}�?���a�Ez�J#.�L�MZ#���Yό��˺1���L���RT)�l��=>�H�f���ஊ^��
��w�IҺI�i��3���^YiAW���5�6���Ǚ�t��a��LT"nd�H���H�9����UY�sQԳtAÓ���h����I�*�fM�����F�i��0.�#{��/�I����Ӳ<�fG�X�GKk2y�\-˷����`�1M�7m߲Mߴ�hϱm�r�����-�߷��q"ea���%���)��.��\����0���Ht�VsX�M�,K"�tZ0I���ﵱ�Y�����`HЅH�
߹He�Ԝ�U�6mխ�h�63cZfɡ�SO�
��+����a]��%�7��5>]�L�\��є�7=�^_�ZVKxU�<G$Ǳ��R,�H��D
���7_����qr2�H�c{V�F^��D#7�C?p׶�޷�=�a<?֙���8��!�l+Z4���p�g�����h��u#�'��>ITM:n�]����M)�Z}k1e��٣�m���˩(��V���١q��Eӊ,���m�%��l80;�(>5-D;m�����t�##i+��6����j����2�7F�=K�؍�u?I�g��֎�%o����'f7�C?�_�1=��g��mE�~@�}��{K "����t�h����t�f�=]��۫������A����MȄ󔖂�b.9��X��ǆwoѨ�[`:��t�O@D)�e���7[ÊÂ{�����n�v������E3��%<�h��)�5#���cR�m�T���,p��E�o�1 ��u�[\�æl��J�40��$?;�u���<GXo&[i�6x��o���~/�ޯ>,���'�g�w��g&m;�L�S;����މ�`F�9�.-N��}[�X�OG,�p.?	�p�l�|�r%�.�'WY�^�2�.��c�����^}��7��V�Y�_
_N2Rm��,���%M[��T�
Y�t��r.n������D����0�n x?�TZ.J`����[σ9,����o>���]%�s��b��~d_y�ﺴ��c:f`9���y���/5np�?�H��Iy@K���[\I�\��8+�c���8n@&Fn|*Ҙ4��Sc&PfI^Py�(��U�:��·e�=� '��aA�%=��HQ�Ė(՞|��V��|����B���R��B�53��4��U���㳮��z0�R����m�:Σ�y��ݸ����:��WL�7C�LᘾK�a�6(/�;4�}���)n�1擨�/
P۹��V��["
%�F��N-d��$�P�X� �P�R/Ә���t]w�q�ú\���z�G�	���hX|��%�f��Y8kuVǲ@���^,����!qs ��VA���`�1���`ѧ��{��)�Z�5�@�>G57_{�ql?	��,?ߜV_����*\yL���|�t-+�������l�@I��m@����=�?㪬���lPV$�Pc��vQ`�tI��x!5�1�[{C�2�s<X�Y�����Hr������D.eV.H�7���!5X&
aԀ� �����e�{��@3B��!�QT�ٽ`�J7����cR������ۋp!ס�]�����»�\���r�+>�}`�sl߱�Q�� `��������3A�qx:E�#�y���ly����!5M���Q����8P%e�KP h2M��~˙�
hh��H��$���r"cF{���$܈�F� �\����L�e[5Q%��`w���(@U0�4RC��@v�3��D}+lR�O*sk�������_��:��aen�����l�3V�QE�g9ndz�k��� H�۴��;�t�2���6�a_�da%�[P�E�1/���4Ċ����H{������12�jg"�ڜ)Ⱦ	��Li�ơd�dӕ�yp%�
����6%h���m�&pk�BLDK14�gU<�g�D&�,T�2EkHo9�|0UܠU�Ϟ��8)*׎�'y�ե%/��·���=�T� �.�3�l@ݦ���`ߵ�`oE�V�"*J�꩕�I���`Z���	��
��[n3;@��U/�	�� O(eϼ1f�u%�S�0x��Q�I�X��e�3:�0xA��)�O#������$� fyQ�(:��H�!7���"We�u1 ���yX�1����X~A�԰͕| ��N
���Zh\Z�<;2
0T��r��50|Pib=��&����'�č<?yS�>&o��t�.wL���N�8,��z 7�p=o߳{k�R�`�.�� pũ��9��~��/h�[���]� >H@%Sa!�
����h������yo�D��Il ��Z�����fs��F*+ֲ#��]3��i�E`�ئV����� *�4N�x�����l���yF��ğ�Z{� ��OEl��L�t I&�C	�7D����si!cu(�Ե?����PCm����a�ĒFJ_�� :Mb�K�yyw�!R���Ǽ+�J�0�!4��7��w��~
J�>��-"�EJ�f[�k*S�n-�|�8R��x|��n�	f�'�h�X���x�~�H^���c�q-�9A�.4�e�G+��������߷g�mю3 �?��3�M�.���^�i�f[���Wk��:��<�:Mmz�61� �d�X��s���"ZAK[�BD��\b"ٮ#9WN& `A|�EAp?�����4�z���B��Ì�EC���Dsc��E��Y�? ����s�lݺM���{��sܫ��G��_Tv�8�>�l`���s�h��d��~�p��� �I]�
=�1O�@��W�C�"����B��-s�w\F�����^nTK@�����@9�ɱ�.��I hr3%�2�5%%:Zh����t lN�
u�����]�vlLL�\��Y��M��*,�d�up���[k������X���6} �a�L�a�G��V��;���ײ�~�E��oܗeVN�"�q�ST���'iR��R�k�zU�/��FڢA��c���)���!3	�1P�9g�Vb��$3�v�V	�X��G�m[G���jo�Z�͞�z|yv�N���W����"��7#����p>;��U�A�iT���/�ɤ,3�Bv��L|PJ��sP{�.*�5��.�w~)�ǃ};����]W�G<�(Y(u���M#�w��UZ&ZQ^V`a��:��um&�8��O��'���o�Z������;!@,���;�,�����|7��}���%zyaЧ���b�uK��H�Caڐ!W����Ϡ�V�Nt`�-��d��nF�)�����F��5`�	Q0t`���v�����{�
y)�nRX�6˷u�#��-�=��t��2���mMv�j8�a�.�z�_a/�����u���*��:��
���jxYP��bZ��@��w�N@���W¸��3-�h#�qY�,�����
�<#�[�������U�`�0%4$9��4���֝���oB�Ȋ�,P��9�N�U�n�<bE���6L�H�KQ���O��e�K�
l��r\I�Տ�iI<���D�fAM#cRۄPס�vf\���YG�����F.����͍�^��rk��?��b^d��g�������R- E�ʾ�w�W�BB`�10|;�O�o֫ˡ%e�vT<� ���Z:�]h���noy�P�c�/_�nE�ko��Pcw�Pb'7���M��a��8!�Q�nb&�$�b
��v!�{�W� �G�cN�ESv�����o`���ԛ�Ჩ�4-��~�)������z{��ԳL���i[N*��:�g�|l�{{�0�Q�A�k��i�º_ch\�$G� �ZӃLPZ� ��'K9�HJ�;̞��Ǚ�F�Lw�mcQ��V�ۖl�(	#[`h:���H~_��n���t�    �P�L#@��,�l⵽Z��Oz�.N�_�������Ծm����n�G���2f-?��(r3�}�ڸ��4my\׸���Z���8j�ыFޡ.�V���qK��Q�m���W9��0=SA�ή�t���D��@���F�ֹ�Ǡn`͵Tn>��3�<Q �ok�N:^A����m�=-YvAw�bQ�k�����%�� �$��ٳ�&��{۾��v�֛����S�i��һ��"�k��x���J�~�����ᾧ��?-`/o)�L���y)��(�ڵC�Ty��[z�?!%�elW �f�.��X-%� ��J��֚�B�t��a �	$�R�hp!�;S�V��Jk�d�L�X�1u�cpF��$�i�F�}�˱P@?+�����ƴ�WSx����C�YQ�M���]n�^I|>��$US�\�����VI쵷On�/w��k�Vnfy��'�U�Xah��&��m ����
������il�j�g�S(h�5o�\!	ҏ���n��"�X茆��r�~E܃�93��`d5d��)�de����&Σ�}z/o���te�Y��u{Z+�	��	����m�َm�6�=8g�)c98�䷭�N�<�J����X�Q��W��������W��@$_�,J��x'@�����٫�I:%�3+�����XmI�3�ߓ^�8n'��')��n���.?Y_�B�K��3� A䘎�d��x����~�w&f5���?�����΄Aׂ��9ܔ��@*c����1THH���)� !>��K��ޞ�86�P]
�~L�X��at׵�	���L� WI/����G\�z�@�?i�HT����Gt��'�ͩ������˛pώ�ȷ� p��6����.Ƈl,0l���}&�P��v���.�iԇE(���8!8�mf+�p����]�g�IY=�U�<4�vh���>1e���U�`��"���xJ�0>�E2C�Jv}"�c �����߮��'��I��Z_���}���ӍE��q��9.��f�З��]��;@�{�Ȧ�Q#C}�����_W�h�;�>[M,�O��q%���ε>\ł��I�g�6����5r�W_sv�fuh#G�)��K?Q���맰R��]�}��y�r9��?��^�x��v��殽h�N��=@of`������LǷ��8�o�{:~	�E*�R{�_^�:��⾼kSz9�!��[q�cW��S��XN�q��wP@( rU�Eӈ~`-#�I�6�LR�r$���x����"�LR:D>F���8�v(��q
'q��w1�Q��u��7Ҷ7��b�z�{�~��9]\����k�z�e(�N��eqʛ������`Z���^�����wW�o,i��^hE��ߡˤl��w1��ٛ��A��a.���HmE�(��mĆV}Ft��������,EL&R�?P#��hނ��7����ϣQ����i�T�<fʝ�(YtH�s�e+��#�-��%	��Z��q���g�zYf�!^(��<C�Wb���B9�Qw\c�b}t��DVJ{�:*�>�P�Z����Ȁ����q���Ў/2y-���fyk�Oz��-^6�>ݽ	�3��k����!�3�Sٱdv�����NĦA_�u;�<�����OdJp�
}���y��#�v��<q�������h�v����[�gƘ*Bd�'1�~���.V� ��(?�����3���jCp�Q��Z(�����Uω���l�u󤸈��4��/?|ȿ��V�@޳� \׳�@����ME��o�}�54����wU�N*�~N�}6�2ƍ�WJ���PFi�h�njo��C�jR����=��!�gd����wLc�?k��^G�?���o��c4wNޟonOj���>`� ���"�%���mzh�8�o�[��0Q�-�a	���
�:� *fG��@*QFzR@ c�
؁�GE5Ƭ��.�H�{B�]��A}^M�Q�
i��`T`�TT3B�?N�g:t�JS��]�mSq��[�yw[��e`?���U۾y��X:Ϗi'Z��;���,G�ݎ�!zc��v�ms{�kz7G�� �ھg���_��C��l+�@ i�x�U���p��G��q&ƴ�j�`&�PYpp�U\�!32T-���ҲR<�~Y+l%Vag����@9	0�7E��)��*���@�]jc�٨Bl�Ə6�_\��ty|;-�v���s�����J�L��0����JԔ;-�<4�!��nS��TW�v�	\�,X�y��I���m1.��\�
qY�3N��L�N�wnd�)J@�%Ϡ�B��+�pA ��vO�mG=��� �9?����2t{��9�ś�B��']�����&�XNOS��EP*�� K��V%CZ�%�_��o{{�)2Ѕ��-�~�
���@��bu�,[�F��9̑� JX/X*�M��&ߨd����H8^�qg�}�����8&f��ٳ�n��F�*׳��; 4~#�a��J��˺R��־�۸�Լ/o����ӓ���j�\�L7�w\���.4��Бc��9��Ͼ�jA���G��#�A*���s��8&������V��7-n��;ce�� �>���ϮQ��;,,5\=�⮂�Ą�)̪F�G�4�~���O�{� �L���~�$H��<���'��r];�?�	" 
����-�������I`;@�`�O���f���r��OU�"&�����f��b�tP���:NN���(�]K�YL������\A�_�>ؙ����;SZh��Ϭ$Ua�cz�@_���:�a�O#Qb��;GyW4��!�-j�X�'��1^$�w[�=Oj�Ɇ޾㚑�n-7p�0B��c���1�e���xΪ��q)T*��bLg�7�YV买i������D+{�T%��C�Y�%ר�ZUs�A1�w�(���Sl�Z6+L�sܧj8�ǯj)�ȱ�8�8� �͋z+��Q�����W�9B-��v�Ob���pS�_�cY^�_W���!�m��8v�y��{������˧W:���G\dN��nW���z" ��6Ej�9��"wM�j�����R��@t݌ؖݗ�c�3K�m���mWeU�q��ɶЏ�=���y��p��z5�s�GI����������ϟ����}�| pvdFJ+��5��nh�;��w��bؠI#�ٲ��u����:9������b�:���J��s��F'��k&�(���*�\�(|��o��M�~Hy*�!U��#�V�V�	���e&HE����X�7�*����U7=�$�� *F��m���r��l�����v�>I��w���_߇7������I�|�6�x@@� ��ѲJڑ��X{'�{��O ����ݐ,�D6lB�U1�`��Ut��3�����J�G���'���>����'DP�C��� jQ�<KZX�zQ��O@�dC)h��6&��3��!)���ap;"8]�4�S�Zdm1U��a�����WO���zu���������߳�Cd �p]�>�,�
<ǎ,�F����{��*��)`�e��]���$�h4T�f2Csw'e�r�2�9+��r���-9���R�`,0y�)AWd�X����B��SxI� �*��"T�ޠ��ٹ�QG<�v�3�N�?�؛*_bi���~�=~{/�s����&
u�d 2*+8'�T(-�Еr��;�h@��&m�~��Ȯ��A��v�(���JKʤo���.�^�
]FG5TU����y�t�G}C-]7P���!�"u$%�ƒ0*"r\��n`�+�P�g(�Y��y����Won>~-�w��ve��(tF��� �?��&µ3C�C��H���".
DV�E�gcѓ���W��+\��.��T��2q�6�h�SЩ�k���Usjf@�� r?��y)]��rܠ!jLS�����    X7Y�����+j���� *r�#�0�����_�����_��AAV�]p��bA�'�$R��8��s��.�E�|:c�3������뫗�It��Lr	�Ä��u��u,�cx(t��p�X���-����x�c6Q�̌�H�Kw������خ�_b*ڰ��iZ�U����׳0�͖�=��T����eU���PMS��Ni�&Ӻn�-Ϻ❱g���ڂ �d_ݽ�ˋ����s�+��>�X�HD&Ȱ�r��u�}'��j��y��29:���a��Zl6i"���W��t:��̑���޷���D?,�zXbN��uQ�yXA5h��[��$E��sЌ�t��$��
����%���X�J�I�?��͛����<IS���!ȯ�bx*%$r�ߴ�}�����KYbM�J���^�/f��ͬ���\L�r8��T����
��rΡ���阶��F����~�/�ךּ� �X��'�ȫ1!��i&j�D���3�犬ճqWTAOҢ�ye�l}���;{l�՗�4=*�,�qU� Xǉ��q�]P� h��oime���O�C�SbԔ��)�V���Q�]o�����I%���b�ɱ>�[/���{��:,��g?�! \Ӵl��]w�Rާ�h���d���t��]-�?������>zP�;,����)U�6������̍�E�AI� ��bޅ���
6]���J��v� ^gy���.�Ri�cQ�q�����(.�v���tGZ������?O��>�����m��F��� �~䙡m�>,���J`�	@��ܸ�v>����V��A��ֶ�"+��A��ڪ��6��;��Q��)��<d���94.Z[�"�*J0j�k��6�o)&�dSU]i�A�JQ�,����j�-Q5#6lL�pL�M���W�����Ma��Z��l]���xSb�+0�V���E	�L�^W�h�l���IG�!���'X���+���P��M����K�c���Ha��b ���{�1t6�e�߮R������_�:��Be���ǥ��`/~?*�"<7%�07D��p_#0�)�	�xi�Ìɝ�Dj�FC��G��fM����
@�5<&P4�6�e"p����dV4�.��T~���c�P���CC1��'���ە�e1����?޴��ğ��.�v�19e�R|�"�Tg���.�*�։7����_���"�����.T�u+�Jp���:�^%��UQ9�(�0"����m��%���tN��b-+�Bi�T�oc�pu)%5v/A�9Ft��i�?9ܰ*�X*[X��Z�~#A6�����J�ϔ,J���>��;I�Y��4�Àۋ�JŨ����娓�W���y[��M�dґ2�Ț�B�n�7�q(���S�}!䉧��h���l��U׿��2�p"ᴤ���[�=N�I�CN��\��]�s� �le�Z��x�j$���3�٦.}�N�F�k'�2tU�:�̣R��6C&��=�Hl�G�<$T)�p����6~֮�.��P�5�]j�㿔ǉyw�~�f��+��n��i[<�*�le=���8��;��,��&_'"Rݬ��]z�1�����Tr䆦�b�,�c2�=�5��2�BpC��w����Rǚ���\1�cA����1GF����D��S�7]�5�P��G� �._$�7�3���
�wAE��a�O��;R2#�;�ÿ���~�����@��W����&o>�oV����ڞ���,�B��4d�C��@�.�1��1%��]0�;J���J�,݈﹀K^;\Mii�:T4���7:����U9+����&:��t drIMwv�Rl��xi��Z�c��������.�5HI�� 2�6`����Z,��ZH� �N3c��3�l6�%b$W�sb*RZ��y�n�U��m�Ngx�������~���^�s���]㻮e���*�f"{�����]�� ѩrF���D�m��(G���Q�/fo}g�Iq`����TK���gE�ū���/��Q;�Z�:]���� �c��;����Dգp"N#9����\�S"1<Py()&����Y�x�z��R=q�7��K�Y�g_O^����]Z�Ǫ�Jϱ���`}ٶ�!f_����ݡ[/�6�B+�6%���7��ZjV-I*�o�&�l��:���R�A�v(p%�B��Ψ=z�̱�"V+�����ZRPl��f���h�؂}U<���Uu9��d��,�3��
�B�9���6n� ��`M����o8iH/��+S;�y,X�^~��ۤ=�����K�ȰB;T���C��2(�pY�(�T7r)�
4_��(�� ���g���'�t�P)Q��چޭN���NX��jՒ*T0�c�n[d���_C{כGM^l�$���������l/�uy穚�ȊB��@WF���h�����{WB���+��/-$mPDخD��X��H���_���0&�czY��[U�c�/%>cS�0�x�!m��� �ü���P5is:� �5���𥠛I��+�c��M�H����#����~:U=e�T@�[����V(9!��)u�QJLnrUq{[��T�
�ʪ�54�������G,���h��$��d���t5	4G�A�>�*��.09q�$���n�;�G]�<��ER�m$��c=�S�.�q�ߺOB�3�9�����������R'�{N�D a�@��}�� ?����s�K9lpUdho}Ҝ�V���*��{G;�E�aT�s��E�����[F������iT���u W��?b�N}ЅXU#T�E�ê��Z�w��* �__�x,2n��F]�T�X�ׂm�N�	�S�u�+�A�&Y��ӊ��h��� P�ð9���� t�x�נ������f�p��p*j,��?
������U��@ms [��Zg���oZM��X�U���u&�z	����2��.RLd����`��s��1�6dTg"pn��y5fp��
��*F�S�i�
�`�,�0\3�6ӻ4�t|hg��a������b����9�H�"k��A�$ju�CDSD��Ӄ���1V�x�D˪�[vr��Q��c����9U����t9�v���K6^is�:�fxl�eZ�юP��+M ٭�N�����V�uT��'���i[��$>�����S�n˷m�b�[;���6ئ� ԯ���À�6��1��fw�u~(i�o�
*���}�٭��ʊ��6 �-��ŌC��[;�.�Q9�%Ĺ]����Q]��Z ����v{�ܲY����v�̡ݮ����9봝�����3$e���T�0���R=�Cw�����RM���u:���A ň�nS�]�@z�1v�T�P������J�����1��GH<��a#�G��&~
h�8�	nFك���O�ؚZf��y��o�
	�g�9M�g���߷34��'2���w�N�����k{�ɹ�����u"/�B_�h�6�����M@���	���v%�L��&�r�A9LP����"bD�pL.�x�^WW�T���$ն��Lj�"RAR�uMquL��]v����)@�a��>F�@e�
��~�'_���.:M�����T'h��z�nDN~es��\P��6~:��P]�vvN&go�*�5m����ao]=�ez����D$����8SBWn��hG��t|�͌
�m�u�|� ŀ�tL�S0O����!D�Wb��Dx�uz���8S�T�Tv>G|�{v�H�hC]��G���Z��l������s՘��M��C!<�c=�Њ�L����o�])G�0.�5ц�\yS?��)�2��J{<�����,lw�xpc����ji�+֕!�Ph~��������A�E��T�5��� aU����M}�$f��_{*�A�s�F8��.�Ѝ�=
l5�%V���ӭ߃�<��~ �8
�uX����J�*��ކj�z�q�\@����I�/T|��H��e�b)��/8�]b�(�w��n�5��3��.<0N D���ǳ�,��ߩ�]��}�뭑����T�Xwvh|$S    �Fl,������c���u}���w�sNHn�"���"�������$]q���#�5oϪ�[�����W���{� E�8n��Z:�D�F*��'p�֍�]|h �z����'���������* ^ܵۨ�x��+�e
�R�տ��2X�t#3�ÑQe%�/�:U�NC�j��O�[/�u������w�Տ�ڴ��	�h��&w<\����������V�R/���� ֏���ߍ(�����	\�O�z%�%KIG�`��?�=�>�Iu�y��Cu�\�(�v?�8�ev�fo�}��	��3�S�{p�	�<��(:�.�{}��j�:a>[����TZQI&��#�c���q��%@�|�⭸�d�����s@�/�;|�N��/�h@��{�x�� �G���o0m����Q"��7n���+7��o��\ch�"'vd���\���g"l�2r��s�+���o�DO����m~h�v��%���<O��dM=��������yn�n�fl=�W�	>�!�w��C��ͺ{�V����<m4�@��
�.:�6>��0,�Gz����P��㚾�>�㣉�?q<���8v|�c'���F1|&Bi�q��#�3���BM�/��d7+�S4�03
�h�:@Gws~�z����M� h:�8�D&�+B/�~M���7n���v�G�X~�g�"���k�������2�`� �/=Ʒ�+(�����)�'���]�1��3^����u�q]�`����s�2u{�����DC��"�p�m=�C��;�A�o�ݛ!���w-(�$�u�I��|,�\ʅ�g��9��r�?�2��`W�H�=0�.x(�N��K�ʊ����M}ڏQ�L%yix�~/Ҝ�v����=�&��b	۟��g7�GOw��ݢ�>}��/�r<�MT�V(����W�]V� n˶*�6]7T��]:�C�Hݎ�j���,]�]�{Z�_�����;�M�(��Y;�J<O��Rq��@�B$˴.+�\��h1+��<��#'����#�9�>zӠ���쯿�~8��R�`��X�%��|�9��|�����F�X/藀~q����R���M����"8�H�8�x��P�ls9\eۖ C~D\���-��1M;� X�`U�@�"��g6�$=�h��ԼCu��e�n��;Q�tD���j�V�B6mgP���u�cJ�X�u�P�~��4�͔���4�:Y��B��O�Q�X�弃@n_�.+�%��LD+�(ǕW��Z�p��q�vww!&B��D�.���G)g5e���-xU��ZC��sh�$�?%��/��$RM&-{v=j�Rtf�5�%j��zXh:�lk�h�ia�//er���BN���CYH��)���P%���F��1����_�#+���xky(��i1����݊Y��j���3���W�[�.�l&��`O
�����8����^7�õn�>�ͫծn�C4~��3A?��d"׏\�B6�p�茟��?Lr�5��*�D��WF����|��3�j�l��{\�!�t1����w�U�zã�p�T-�D���C$R�S}ԏ�N9u�D�Vt"���)Q���o5]y|��t�~���Q�ӽ��I@��b�����]�.~��pM�8�&K ��Փ�(u�ʾ�0-`0���h��z2^�Ǚum��D�fACT�'�=�]a$��d��\�ȹ�p>�z=k�J���Fg��E��s"��aRs��+�qWo�Uw�N�b�q���V��aZ��@S��<"g�P��F��k��?zN��q�[�g+3˧��S�_М���"+Er�J��(��jz��-H*�(x���H	lĿρOQT9��X?�jN�������7.��@&���T ��w	�HZ�rB{��-�q�al{>H��7�\�t%�|+r<(��;?���v���$���.g�xV�F��}?�;π=�,���m�2����W�S��t,�[�����.C���Z����i�.��5�}|�=�QUۭ��=������C��.ƦG�D3<(��*�6���/<��P��ȏ`(0�$�/�M�-�j�����[��t;i��2�r�t]Z ~���ǽ,oҺ�,��*Dܲ�HH��(��r}��`�85�0�}����B�m����~���oa�A�҃;�H�gq����#�?J��qp$����a�;�l4y���_�eY��9{�k	�=�g/�<ޥ����,�x5�ч!�F+�:	׏�Dk�tЫ#}۟�&�'x����z:�*\�AūS�k5����o���
ׅn�9��Y�*ɏ�\ة�G��]bxF5�|�g�w���e�Ҥ�s�3?H>m��e����^X���E�Q'J@>�*eS�Z[��Wb)pO<2��>�����C��;�s��O%�w�
�:�Ej�с�"���H:���_�'�õ|	�|��s�yGu�A]��r���Jѯ@f �E�6��,�"ZK5)��)KMME����0�f�zb┓XС"�3�u�Ӟ�R�y+�Bqh<c.��d�n���9�k.*�,H�%�<,d��e}�JW�Gx��v��o�g���ۑ=��JcS(��<w*�z����]�_�"W���\aD�=��/	le�y[+�AwY���*<��n�|���=���MfΈZ�*U�2������]������:�v3���B8]��ҫ�Y���f��ݨӤ@-��M�^Iѩ��٤K����e�����c6�z���������;��BR]�K4)b|���D��8SFx��u#T$_D���6˸)&���r��^���I��rP�W�����JV!n��x�;��/}�q�q�)A�+�(��M�3�͞#���	���M��J^5�{vJ} ���~W�e3O1 l�
�Z�����}����څ9c�<�ښ˗��Q��U���G1�V�y{���r��`�����(��X��2��F�7�����=�l[L�$4e��s�p��	��
+�1�p9�K���N��v�^�����۪�'F#{���X���W�%��0���ְa��D.˦�Q;gI�=���g���{� ��xF;�X��g ��MW��j����xk���ڟ�P6��z����ݖ�M.T��S�s�Ǉ#��<ѭ�)?t�h�V"�ڟ��n�߳up��R�,e�2��v�����\���wn/�y^[q�?�n�M��j����`��:����Ȩ�K:�����z:����9,�}�'l��Coyצ}� .����3]m��ɢl2n\��ȷ||c�i�;O�cyzSe�[K��r8x��,�d�t�c��ʓ��ݑVԒ_Y����SܔX���R=h� ��>�i˻�&>�� �&'߿r(����_Ӥ� ļ������s�e�&���>��pm�/U��`9�����e��S
j��B%u��϶���S�xh�@.���~c�E`�&�G>b����)Ɓ���D�]?�ڡԤwkC��PjV����8��|�����O��l�g$�A��
� @"�{�y���z�e�=����U�fVp�cX���|��S�X�Ǜ��1�A�f�bT1�n��l.�@�Sl�q#{��"���b����b��ė
�"��C�w
��1�^�����@�]��x�M�5sҝ�Z�!�a�W9�i�w|�*3,�����5du��)�=�a�\R�X)HHi���n�T}�DZl���+�]�e��Ob�;���*�N?f�9��{�bRP�v�A*nB��9�l���A���2׉p~N_��U~SPG¾#R]�L/�>�-v���X��Q����� �ge����+.7
�0�?$.��_�jwȑZ�`X�E&�����xI�Ŏ)S �8I�؎B'�RH%��g+1���G�X�|����.v��r#r|p#8�F�aD����v��Cc��v��ɒ]5 �*,��;�i���dP1�(�pР]�(��/xH��Y�?|��N����.W[�y�� t}=�J$���i�� �  �r)��(��\��6���'k�e3K���k����7 ��4*z(Q� �� H5Z��ԝ�*r�F�N����A2�e�j�Ղ�\V��*��j[�)q��10�0i����4�*�B�_�Cbw��#Oc����q#*KT�HG�X[�ֹ6]�2Ƥ�FG:x�T,�D�%�~%�!��a�M,l�;�.�Ŕ�?$��#k�����v�������PǬ�m㚾����~WXE�� �3q"�Tr����؁��6���+Q�ǿE�m/׷I�#� S"�����PA����� ��\n�`�4{ػ�[��1���ɾ%��~,�eFM�r�P���,B/��5�6��e������3;#�1��2BP��w`+�+J��8���tݎs�!ĸsW�r\��$���A�����=V+R>��J�+b/	N��W�
X|����XztW�
,��D]��%���f�SIF�1*��l��k��*� ��Տ����<;6WUJ<&p�}�	��u��J�u>Q�� 	�O�	�d��@��Ŧ[I�h�>�r����G:R�>�tgM	�w��\��#m:���Z'�:���>�_��]T
��O ;���L�.]+��}�t����vs����'�O,���e����V7Y��
+�F�9H���������_��~@>��b*�y�o�1��ݷeK�0@�nh��]~>7�Ǿt#A	����g"�d0�@|���f��u�߿�����[O�M�+��'�<����'�~��>��a�U:}X��_��� �:��m�J�p#ȥ�vΖC��j���������E������N�9���>�V�k��}XY�;�h�[�g�5�*;(�L��_��i�����/�EWU$��0#��;������ n�Sl�Վ�3@��ȖC�BמZ.r���lE�c�gi��s��}B� ZE�1�:�޲�zlG:*��(*c�0��^<4��ۍ��Ď|K3�퇶gE��]'p��?ʉ�<��>/'�xV��_0%�-�,J�<� V��l��]˷A�f��7&Ʒ<`Q;p��M�k�Qfsx望�o���1�}�;)t%��6��]���O`єI�VO{�A��%U���R-SZM�]l��lV�[�`��Y�C�#�uFO��nmn�z4�?hp��n�����&�`ћKdS�3�J` �G}�q~#������;w�������L������o~���V������~�-�+���2ms� �iO����1��t���"��ӫhp�� s����{��Z�>T���*���NuF��k�� 1 �[�Tg�N�$�VD	��%�д��ԩ�~c�ۯ��@��Ƿia��:mҥ���Roξ�Q~a�)�,��R}���k�ד/uz��N�3K�S�������ǡ*u�:��-�C�����z۱��h���wd@�a{���hF�Z�(�����������6���      �      x������ � �      �   .   x�3�t�+I-*(J�+M-�2��/-�,.�2�tL�������� �Z      �   .   x�ȹ	 0��X[��^7����"�@EJ�N˒�6m��I��      �   �  x�e��r�@ ��u���nq��W�P*�n��;Ҩ���&5I��W�UV�s���M�
,Y@���P(h�V�xZ����,����;8\"�I}��*�Ip�XU���� ������� 2`���J� >+:GJ�VF3�}��t*�L�:�v�7��S��0�:�/��yO
�O��Y��+-�g�,v�$�ڸd����b?m/�6���Jз�|(oלSFf�U?�|ugaHJ�g�+_��Ž��88�D5V�/��Z����gc�z�VZd��"�?�Gv�CF�a�,h�����=�2��޺��z����N����� y��	��fM�����wY}�.�7�s"����l�1�?˜�ژ�N��8�;�z̫ʠ�r�/���i��C:�O����wo�     