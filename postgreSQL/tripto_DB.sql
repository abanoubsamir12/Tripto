PGDMP     )                    {        	   tripto_DB    15.2    15.2 v    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18809 	   tripto_DB    DATABASE     �   CREATE DATABASE "tripto_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "tripto_DB";
                postgres    false            �            1259    18810    Nationality    TABLE     b   CREATE TABLE public."Nationality" (
    id integer NOT NULL,
    nationality character varying
);
 !   DROP TABLE public."Nationality";
       public         heap    postgres    false            �            1259    18815    PlacesToTypes    TABLE     s   CREATE TABLE public."PlacesToTypes" (
    id integer NOT NULL,
    place_id integer,
    "placeType_id" integer
);
 #   DROP TABLE public."PlacesToTypes";
       public         heap    postgres    false            �            1259    18818 
   activities    TABLE     �   CREATE TABLE public.activities (
    id integer NOT NULL,
    name character varying,
    description character varying,
    place_id integer,
    "activityType_id" integer,
    location character varying,
    image json
);
    DROP TABLE public.activities;
       public         heap    postgres    false            �            1259    18823    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    216            �           0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    217            �            1259    18824    activityType    TABLE     ^   CREATE TABLE public."activityType" (
    id integer NOT NULL,
    "Type" character varying
);
 "   DROP TABLE public."activityType";
       public         heap    postgres    false            �            1259    18829    activityType_id_seq    SEQUENCE     �   CREATE SEQUENCE public."activityType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."activityType_id_seq";
       public          postgres    false    218            �           0    0    activityType_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."activityType_id_seq" OWNED BY public."activityType".id;
          public          postgres    false    219            �            1259    18830    enterprenuersToActivities    TABLE     �   CREATE TABLE public."enterprenuersToActivities" (
    id integer NOT NULL,
    enterprenuer_id integer,
    activity_id integer
);
 /   DROP TABLE public."enterprenuersToActivities";
       public         heap    postgres    false            �            1259    18833     enterprenuersToActivities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."enterprenuersToActivities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."enterprenuersToActivities_id_seq";
       public          postgres    false    220            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."enterprenuersToActivities_id_seq" OWNED BY public."enterprenuersToActivities".id;
          public          postgres    false    221            �            1259    18834    interestsToUsers    TABLE     r   CREATE TABLE public."interestsToUsers" (
    id integer NOT NULL,
    user_id integer,
    interest_id integer
);
 &   DROP TABLE public."interestsToUsers";
       public         heap    postgres    false            �            1259    18837    interestsToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."interestsToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."interestsToUsers_id_seq";
       public          postgres    false    222            �           0    0    interestsToUsers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."interestsToUsers_id_seq" OWNED BY public."interestsToUsers".id;
          public          postgres    false    223            �            1259    18838    nationalityToPlacetype    TABLE     �   CREATE TABLE public."nationalityToPlacetype" (
    id integer NOT NULL,
    nationality_id integer,
    "PlaceType_id" integer
);
 ,   DROP TABLE public."nationalityToPlacetype";
       public         heap    postgres    false            �            1259    18841 
   placeTypes    TABLE     w   CREATE TABLE public."placeTypes" (
    id integer NOT NULL,
    name character varying,
    image character varying
);
     DROP TABLE public."placeTypes";
       public         heap    postgres    false            �            1259    18846    placeTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placeTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."placeTypes_id_seq";
       public          postgres    false    225            �           0    0    placeTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."placeTypes_id_seq" OWNED BY public."placeTypes".id;
          public          postgres    false    226            �            1259    18847    places    TABLE     6  CREATE TABLE public.places (
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
       public         heap    postgres    false            �            1259    18852    placesToTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToTypes_id_seq";
       public          postgres    false    215            �           0    0    placesToTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToTypes_id_seq" OWNED BY public."PlacesToTypes".id;
          public          postgres    false    228            �            1259    18853    places_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.places_id_seq;
       public          postgres    false    227            �           0    0    places_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;
          public          postgres    false    229            �            1259    18854    ratings    TABLE     v   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer,
    place_id integer,
    user_id integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    18857    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    230            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    231            �            1259    18858    roles    TABLE     S   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    18863    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    232            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    233            �            1259    18864    searchhistory    TABLE     j   CREATE TABLE public.searchhistory (
    id integer NOT NULL,
    place_id integer,
    user_id integer
);
 !   DROP TABLE public.searchhistory;
       public         heap    postgres    false            �            1259    18867    searchhistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.searchhistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.searchhistory_id_seq;
       public          postgres    false    234            �           0    0    searchhistory_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.searchhistory_id_seq OWNED BY public.searchhistory.id;
          public          postgres    false    235            �            1259    18868    users    TABLE     1  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying,
    hashed_password character varying,
    is_active boolean,
    age integer,
    country character varying,
    username character varying,
    role_id integer,
    geolat double precision,
    geolng double precision
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    18873    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    236            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    237            �           2604    18874    PlacesToTypes id    DEFAULT     x   ALTER TABLE ONLY public."PlacesToTypes" ALTER COLUMN id SET DEFAULT nextval('public."placesToTypes_id_seq"'::regclass);
 A   ALTER TABLE public."PlacesToTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    215            �           2604    18875    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    18876    activityType id    DEFAULT     v   ALTER TABLE ONLY public."activityType" ALTER COLUMN id SET DEFAULT nextval('public."activityType_id_seq"'::regclass);
 @   ALTER TABLE public."activityType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    18877    enterprenuersToActivities id    DEFAULT     �   ALTER TABLE ONLY public."enterprenuersToActivities" ALTER COLUMN id SET DEFAULT nextval('public."enterprenuersToActivities_id_seq"'::regclass);
 M   ALTER TABLE public."enterprenuersToActivities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    18878    interestsToUsers id    DEFAULT     ~   ALTER TABLE ONLY public."interestsToUsers" ALTER COLUMN id SET DEFAULT nextval('public."interestsToUsers_id_seq"'::regclass);
 D   ALTER TABLE public."interestsToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    18879    placeTypes id    DEFAULT     r   ALTER TABLE ONLY public."placeTypes" ALTER COLUMN id SET DEFAULT nextval('public."placeTypes_id_seq"'::regclass);
 >   ALTER TABLE public."placeTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    18880 	   places id    DEFAULT     f   ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);
 8   ALTER TABLE public.places ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    227            �           2604    18881 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    18882    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    18883    searchhistory id    DEFAULT     t   ALTER TABLE ONLY public.searchhistory ALTER COLUMN id SET DEFAULT nextval('public.searchhistory_id_seq'::regclass);
 ?   ALTER TABLE public.searchhistory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    18884    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            u          0    18810    Nationality 
   TABLE DATA           8   COPY public."Nationality" (id, nationality) FROM stdin;
    public          postgres    false    214   X�       v          0    18815    PlacesToTypes 
   TABLE DATA           G   COPY public."PlacesToTypes" (id, place_id, "placeType_id") FROM stdin;
    public          postgres    false    215   u�       w          0    18818 
   activities 
   TABLE DATA           i   COPY public.activities (id, name, description, place_id, "activityType_id", location, image) FROM stdin;
    public          postgres    false    216   |�       y          0    18824    activityType 
   TABLE DATA           4   COPY public."activityType" (id, "Type") FROM stdin;
    public          postgres    false    218   �Y      {          0    18830    enterprenuersToActivities 
   TABLE DATA           W   COPY public."enterprenuersToActivities" (id, enterprenuer_id, activity_id) FROM stdin;
    public          postgres    false    220   �Z      }          0    18834    interestsToUsers 
   TABLE DATA           F   COPY public."interestsToUsers" (id, user_id, interest_id) FROM stdin;
    public          postgres    false    222   [                0    18838    nationalityToPlacetype 
   TABLE DATA           V   COPY public."nationalityToPlacetype" (id, nationality_id, "PlaceType_id") FROM stdin;
    public          postgres    false    224   0[      �          0    18841 
   placeTypes 
   TABLE DATA           7   COPY public."placeTypes" (id, name, image) FROM stdin;
    public          postgres    false    225   M[      �          0    18847    places 
   TABLE DATA           u   COPY public.places (id, "placeName", description, address, image, rating, location, longitude, latitude) FROM stdin;
    public          postgres    false    227   �[      �          0    18854    ratings 
   TABLE DATA           >   COPY public.ratings (id, rate, place_id, user_id) FROM stdin;
    public          postgres    false    230   �      �          0    18858    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    232   ;�      �          0    18864    searchhistory 
   TABLE DATA           >   COPY public.searchhistory (id, place_id, user_id) FROM stdin;
    public          postgres    false    234   y�      �          0    18868    users 
   TABLE DATA           w   COPY public.users (id, email, hashed_password, is_active, age, country, username, role_id, geolat, geolng) FROM stdin;
    public          postgres    false    236   ��      �           0    0    activities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.activities_id_seq', 40, true);
          public          postgres    false    217            �           0    0    activityType_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."activityType_id_seq"', 1, false);
          public          postgres    false    219            �           0    0     enterprenuersToActivities_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."enterprenuersToActivities_id_seq"', 1, true);
          public          postgres    false    221            �           0    0    interestsToUsers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."interestsToUsers_id_seq"', 1, false);
          public          postgres    false    223            �           0    0    placeTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."placeTypes_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    placesToTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."placesToTypes_id_seq"', 1, false);
          public          postgres    false    228            �           0    0    places_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.places_id_seq', 6, true);
          public          postgres    false    229            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    231            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    233            �           0    0    searchhistory_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.searchhistory_id_seq', 1, false);
          public          postgres    false    235            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 8, true);
          public          postgres    false    237            �           2606    18887    Nationality Nationality_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT "Nationality_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT "Nationality_pkey";
       public            postgres    false    214            �           2606    18889    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    216            �           2606    18891    activityType activityType_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."activityType"
    ADD CONSTRAINT "activityType_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."activityType" DROP CONSTRAINT "activityType_pkey";
       public            postgres    false    218            �           2606    18893 8   enterprenuersToActivities enterprenuersToActivities_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."enterprenuersToActivities"
    ADD CONSTRAINT "enterprenuersToActivities_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."enterprenuersToActivities" DROP CONSTRAINT "enterprenuersToActivities_pkey";
       public            postgres    false    220            �           2606    18895 &   interestsToUsers interestsToUsers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_pkey";
       public            postgres    false    222            �           2606    18897    Nationality nationality 
   CONSTRAINT     [   ALTER TABLE ONLY public."Nationality"
    ADD CONSTRAINT nationality UNIQUE (nationality);
 C   ALTER TABLE ONLY public."Nationality" DROP CONSTRAINT nationality;
       public            postgres    false    214            �           2606    18899 2   nationalityToPlacetype nationalityToPlacetype_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "nationalityToPlacetype_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "nationalityToPlacetype_pkey";
       public            postgres    false    224            �           2606    18901    placeTypes placeTypes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_name_key";
       public            postgres    false    225            �           2606    18903    placeTypes placeTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_pkey";
       public            postgres    false    225            �           2606    18905     PlacesToTypes placesToTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_pkey";
       public            postgres    false    215            �           2606    18907    places places_name_key 
   CONSTRAINT     X   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_name_key UNIQUE ("placeName");
 @   ALTER TABLE ONLY public.places DROP CONSTRAINT places_name_key;
       public            postgres    false    227            �           2606    18909    places places_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
       public            postgres    false    227            �           2606    18911    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    230            �           2606    18913    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    232            �           2606    18915    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    232            �           2606    18917     searchhistory searchhistory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_pkey;
       public            postgres    false    234            �           2606    18919    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    236            �           1259    18920    ix_activities_id    INDEX     E   CREATE INDEX ix_activities_id ON public.activities USING btree (id);
 $   DROP INDEX public.ix_activities_id;
       public            postgres    false    216            �           1259    18921    ix_enterprenuersToActivities_id    INDEX     g   CREATE INDEX "ix_enterprenuersToActivities_id" ON public."enterprenuersToActivities" USING btree (id);
 5   DROP INDEX public."ix_enterprenuersToActivities_id";
       public            postgres    false    220            �           1259    18922    ix_interestsToUsers_id    INDEX     U   CREATE INDEX "ix_interestsToUsers_id" ON public."interestsToUsers" USING btree (id);
 ,   DROP INDEX public."ix_interestsToUsers_id";
       public            postgres    false    222            �           1259    18923    ix_placeTypes_id    INDEX     I   CREATE INDEX "ix_placeTypes_id" ON public."placeTypes" USING btree (id);
 &   DROP INDEX public."ix_placeTypes_id";
       public            postgres    false    225            �           1259    18924    ix_placesToTypes_id    INDEX     O   CREATE INDEX "ix_placesToTypes_id" ON public."PlacesToTypes" USING btree (id);
 )   DROP INDEX public."ix_placesToTypes_id";
       public            postgres    false    215            �           1259    18925    ix_places_id    INDEX     =   CREATE INDEX ix_places_id ON public.places USING btree (id);
     DROP INDEX public.ix_places_id;
       public            postgres    false    227            �           1259    18926    ix_ratings_id    INDEX     ?   CREATE INDEX ix_ratings_id ON public.ratings USING btree (id);
 !   DROP INDEX public.ix_ratings_id;
       public            postgres    false    230            �           1259    18927    ix_roles_id    INDEX     ;   CREATE INDEX ix_roles_id ON public.roles USING btree (id);
    DROP INDEX public.ix_roles_id;
       public            postgres    false    232            �           1259    18928    ix_searchhistory_id    INDEX     K   CREATE INDEX ix_searchhistory_id ON public.searchhistory USING btree (id);
 '   DROP INDEX public.ix_searchhistory_id;
       public            postgres    false    234            �           1259    18929    ix_users_email    INDEX     A   CREATE INDEX ix_users_email ON public.users USING btree (email);
 "   DROP INDEX public.ix_users_email;
       public            postgres    false    236            �           1259    18930    ix_users_id    INDEX     ;   CREATE INDEX ix_users_id ON public.users USING btree (id);
    DROP INDEX public.ix_users_id;
       public            postgres    false    236            �           1259    18931    ix_users_username    INDEX     N   CREATE UNIQUE INDEX ix_users_username ON public.users USING btree (username);
 %   DROP INDEX public.ix_users_username;
       public            postgres    false    236            �           2606    18932 (   nationalityToPlacetype Nationality_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT "Nationality_id_fk" FOREIGN KEY (nationality_id) REFERENCES public."Nationality"(id);
 V   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT "Nationality_id_fk";
       public          postgres    false    214    3243    224            �           2606    18937 #   activities activites_places_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activites_places_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 M   ALTER TABLE ONLY public.activities DROP CONSTRAINT activites_places_id_fkey;
       public          postgres    false    216    3271    227            �           2606    18942    activities activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY ("activityType_id") REFERENCES public."activityType"(id) NOT VALID;
 K   ALTER TABLE ONLY public.activities DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    218    3253    216            �           2606    18947 "   PlacesToTypes activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 P   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    3271    215    227            �           2606    18952 D   enterprenuersToActivities enterprenuersToActivities_activity_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."enterprenuersToActivities"
    ADD CONSTRAINT "enterprenuersToActivities_activity_id_fkey" FOREIGN KEY (activity_id) REFERENCES public.activities(id);
 r   ALTER TABLE ONLY public."enterprenuersToActivities" DROP CONSTRAINT "enterprenuersToActivities_activity_id_fkey";
       public          postgres    false    220    3250    216            �           2606    18957 H   enterprenuersToActivities enterprenuersToActivities_enterprenuer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."enterprenuersToActivities"
    ADD CONSTRAINT "enterprenuersToActivities_enterprenuer_id_fkey" FOREIGN KEY (enterprenuer_id) REFERENCES public.users(id);
 v   ALTER TABLE ONLY public."enterprenuersToActivities" DROP CONSTRAINT "enterprenuersToActivities_enterprenuer_id_fkey";
       public          postgres    false    220    3287    236            �           2606    18962 2   interestsToUsers interestsToUsers_interest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_interest_id_fkey" FOREIGN KEY (interest_id) REFERENCES public."placeTypes"(id);
 `   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_interest_id_fkey";
       public          postgres    false    222    225    3266            �           2606    18967 .   interestsToUsers interestsToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_user_id_fkey";
       public          postgres    false    236    3287    222            �           2606    18972 3   nationalityToPlacetype nattionality_placetype_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."nationalityToPlacetype"
    ADD CONSTRAINT nattionality_placetype_id_fk FOREIGN KEY ("PlaceType_id") REFERENCES public."placeTypes"(id);
 _   ALTER TABLE ONLY public."nationalityToPlacetype" DROP CONSTRAINT nattionality_placetype_id_fk;
       public          postgres    false    224    225    3266            �           2606    18977 -   PlacesToTypes placesToTypes_placeType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_placeType_id_fkey" FOREIGN KEY ("placeType_id") REFERENCES public."placeTypes"(id);
 [   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_placeType_id_fkey";
       public          postgres    false    215    3266    225            �           2606    18982    ratings rating_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 D   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_place_id_fk;
       public          postgres    false    230    227    3271            �           2606    18987    ratings rating_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT rating_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 C   ALTER TABLE ONLY public.ratings DROP CONSTRAINT rating_user_id_fk;
       public          postgres    false    236    3287    230            �           2606    18992 '   searchhistory searchhistory_place_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_place_id_fk FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 Q   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_place_id_fk;
       public          postgres    false    234    3271    227            �           2606    18997 &   searchhistory searchhistory_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 P   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_user_id_fk;
       public          postgres    false    236    3287    234            �           2606    19002    users users_role_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fkey;
       public          postgres    false    232    3279    236            u      x������ � �      v   �  x�-�˕ !��`�a�7��?��b悄2mL�_Eg�Q�'�׿�q�b<�3�|��e��̵l�O��m�} �շ��;�b,6�G�o��Ā},&�x��E$1: 4�����F�z����N�h8!���6@pqN>���QW�G�+���/�I<��N0���,q��∙b�D�ib\ɍqDRmq�@�'�X��)��8��w����+���nn��G,|��b�}%�b������Hn�-�XKܱ�_{KعD�a�3�G��Qa� L��!��=Kd>��~U=%A�E)�8M����F��wIN�)θCqKD�Q l"�W$�i/��rd���Hh��%�x[���n>�(.��^c�#���DM�p�+����J'fB�dAJ�+��)!9y�����H��H��+H��-}Z��D�#�qKp���D %!=���d�|ϛgݞᕘ�HL�%&]��#۟��K�� ��땅�ߧ�%��IT��&���/"����      w      x�ĻW��L��w����8����&iGh�wIJ����I����z�`p$G�®]�2��F�]k=Y�ѿPŖ/?\]V���?~ ���'�����K]�C���V�����[?�S�/�O<d?���OW��O�]��'��y��t�P��G�x˳�z�٪����e���l<����a�z�zH����O���������x��,�����v���o?��2�S����ou���Y�m������:ӿ>���߲[�����=_���Y�_����_�m��� �8���>�V����Gc�@�l]8��/�X��	��s��������O�����N����H��o�ROq����-{��g���� 1���`���G�{��L�9�� �/�����e�;������
`o����7�`��EH�@�'ɳ�ϋ� D���?��/B]l?N5N1���M��S�˟=�UO_\��gȟ���u���P/��v���DK�K�q���#@�Y�9�U����g�����c�.�����3��P7�T����T���[�7� ���g�i�o���K�o�d�/T��T��������hs���_�������T�>鞳��
���j\��
���i�]�*[�c�H�#����$�g����Ϝ���_-~~"y��w:���'~��ןz�S��<��ͳ�!��@�������K��dyg����ˇ�����]k��6\��ϟ��-�u{,���\q��ٺq2~M�ȗ�5o���0ni�S]e��p�������^��v�>��_��~��q���aG�^�������^�LX��
rf6��l&���??&W�@3�����k�!�@(�r�H�K��,����J� |0E�}Zw�O[�C�nS�j#��k�<"�>R�&"���A��T��F�֯�r��p�q��Q��� 4s�*{ �hs��j�䤇�R��yhu����������c�����(��$J*���h����X�����ge4mq�X�~�%�4���<�h�Y4CYGG��H���Tű�Eq\��R�	�W���m�y��`A��8G�,_增��7-�2`m�%�u�j��%z��R�s�?�߹|~�,��̣���h,����6Ʀ.��<Ε:�
?��B�F"Z. ��F�*�ߵS �+�)�D��Ҏ �R;Æ!���,	R`���3�ek�"a$A=�
��M���,*�����1S��WQ!��$��Rދ�$�.����-6h(>��t�&���dI)=";��׫���r5��!�E�p��-t�g���4���Ȼ�G��C�<�Mn_a�\��	����A"'�{3�ŋ찲���j4Ƚ3�ލ�"������uK���h�����R�C��"�%�Lp#M��by����A��KKj-$d?��4	��\�������%���Mq L�l�rF�ቕ���&���["
���Y#F��2zcw���Y��8�as�H�q��!��?8u\k��2�O�nP6C/o)���pF՛!�6�S�!�ڰ�,�J�7@��e����"�0ٳ[�Zؗgz~M
�$B�rso��J�1�4� @o��DR��k-b��ð�T���j*a�'�?� L��m{u�>;v��y�9\�^A�\�/��,���xȒ��̴�B�#9g�79J�p;�l��L�w	��%p3Rz]#��&׶��2�HѦ��y!�Ƕa��ul�X��\%���#�Z%5�@숐��]�>�'�ykHڝ��Y,P r��**��/�M62��oc�o��$+�:�i�A�5	�|��b����.�S��_����l�/P)�8x�<�,iKa�=�09M�����-���2�����YM����*�p��ĥx�/A�]� L���mƟ��b����oz��}����i��o��M�erJ�S�n�DҊ3�Og�@�<�7�)S%Oe{O����7L:4�2��!'�U���2t�5�}�T��a+�A<'���i �����O/Ӣ5 .:�ϝ L�\�@X�0�U�\pj��_\�z�y�ʎ� F�X"#�D_�̛HQ4�W,3oiF�������lߚqC��|n=�Y	��D$(�e=�����"�WU�2��� ��Q՝��2ՈZ��O�M�W�y������Ԫ�h�o�	����ܐ�Z�%^ �Y$C�{�5]��'&k�\���/�`APۋ��AT1��=��B��%��̰E���̈,>dD��Dstk�/�M��d���e0CT�����zs�Rp	�y=������6V���٧�;{�f�1Qn�𒸗���(���b��U���m�X�}���48��/�o��o6V0��<s�'��G�Q�Ťu�l��Qy���pSkr]�Sh�%�B�?i����#/�;?�Й9��� t�'�����#�d��}a����~2�v�X�S�S~�^4���s�e�!���x��"p��]-�	��<����y.Ed)���xq@�ݩy�g)�T�[���=B�B�f	����	��d�؜D�Fm����w��<Vk]�l�1��|�u�㿌�ܲp�CGZZbB+��_b$+��jr&�!���2<�7�!sV�����ܺ�Ύ-���~jC8ة��-yZe��^���&��Y�ؐ�2���cX�Ihl~u�����n�����&�ω�	!��V���H�$�u��|��
�5�WQ�L�ͻ5~�S�Ŝ=�U7�1����;��=��=�G���`؆<� �!ڹ!�o+�	_}�D��D���g��zX�K�8Öj^X2$�t��,7����W�%�V��h=ھγ��E�~�=��-���je��˂�*&�Y/�Y�lH�B��G}���K�M �"����4Ѩ��k�Y|�Y�`�F&h��M9xK]���h�$��/�"�	K��VK�&�$��)nB��1js�?�{ʲ:�|t_��-�P�[�m�_���#u���"a�a��3�j�l>��x�L�9��z�&x��\��.����6�Ɯ(���c��OJ{/YxG2o�j��f�����+.�Lz��c����0�"$P^����B�-�R� ]��I��>n;;���-��]�;A����!�����҉�#�l4��y�����u�v�xK4W4ae�*���e�A��&8d�-����}\C���G�zp�shT��bX��	��BJObN��r_P�����vB!+:�>��S�9�k�{d;>��~z��)Jv砘������
���S��	y�8�捯xƦԐ |j.@�iQ�m�0�S����5��~��W�K�gs�:='��!q
�B_RA:#��������]w��=���vܼ�Փ{z���0���yx�{��<>��6+�ԍ��mAƥ>\��ٯ���m�ּ��~Q�����K	���^�~|��(r;}��+A$u0k0<T��$V�~(%}?�/���R�DO �#��8��7w�h��������B���;E��= ��`�z�Q�or�k���tﰙV����J���FB���!�L^7��3�`�S+J��`�A�-8r�bn��l�i�L����7�������5d��V��xq�־�$ͷ��r���`Νz��:�4�ks֦I����d���(�te*��"��c��s���09�t�l9ނ�����t�������,�]�Шh0�"|��:�@�4��5������o|��kw�a��X$4���b^�It\X��]Ug(G�Nv'_R���W%?
���NW��G/sCAK�Zs08p'0�����Z�$.Ԫ!��퐨j���U~�FZ�L�!)Ĵ����*��4gx���}��nw쀹g���	�*�δ*{�*MA;\�/C;gQ�́�8l_���\9\��Ηs�nE-.J9�;
���J{|խIx����p^\*��;T��'R*�߄�+�x,����Ts�%����'��G���:�<vuögS��k�.��I��ϐ_�F�Q�j.�l@��N�<�    �4-A��֛ڹ�&��I�q�.#�����g���-Q���քy~48cࢌf6|�F�� �Jj��n��<{�J[{��Z�n�g�vL��ɦ(A��0E�R���ho��:{�����ģ��y��	�X�2f�!����0'�u��'��!�Ir��.�o�Ij�����7 ��,LV�:��=���r�Z�I�x(`v*Ӭ&�ǈ�rX:a�XfL���J�!=���m�FY��Q����y��iQ!뿷�FC
��6�B͢���+�}8r�FȘ_�t	]0+V�:vr�p���=�t�Z��d�����e9���+�	��;� �nBOe�Ȅ:�_q⁷���H�>yn�9	|�&:T�~u�Ca�OtI��P�8�=�J�0�6u~���6E� �A�'����=��`�����'�iـ����Di#V��|��Y.��N�o䬯\]$O�e�����[.-�����M���x��U��_))cI��#�9K���[1� '�ҧ,��3ZTؘ�/>����Ƶ�����䕆h���[�Vb�4H������iY�8����o�1��� A8"D$qc�e�.���u"̘�w.x4^)��H�|�P�#�ݤùaHn�� h�WT A�rH�(����t��qȡ�7Ym��2݅Иt?�QJ��K�F^��&�����4���g���Um/�I�Kj�90����N�-���r�L,v
"m_xV�7�Q�R|,*Tc�m<\Oފ�z�ўw	C���CBtZ~�p�D���w�?�І��	k�$�#fU*p���F�Q-cW��>�)�Vݒ�ŝ�F��R� j�*������Ü"�)�F�k�x��sd�a4��sj��Q3��v��A�}ViT�a��|p�y�+U��Fu��%���4%��ЙB��z��x�8���9�����%�J���B�����4����E@>�`µ��|vĻgN�%�=Z`�H\�3|^�t;�QmE2a�M�j{7Ӿ����0�>����b�.�hވT��_���m��A�%�#�/���]c�C���ʲ�`���E��P}������d�`�q�<���U�]���䰶��������f<�1�F��]..����gc&B(�������\p�Y%u���l�?H�Dklu�[�l�I��}�j\2�7�4�{�F�M	m��p��v��4��q�w>$ wU	�/�x	���_,Z��[�q��|ۨp��w���RUʝ��%dK��g9���/����YS(�V$1��ST�ݲPR��B�u�O�������[�W������t�8��Yɔ�t+�ggab��ƙ��/YV�����L/vq��خ����e�S�X��+�-N�P�9~�yBC_�4��F�q^v�n��BB+ C���	����*��Y��<�S�2��Su�Ӎ:H��9mB�usfb�cFjҮ�_��8��dK�[���)eѽ��<��XW��e�뤇�b�,��f'+H$�7��N�r+_C,y5��+���2�J�*�29�}(Q5�lw:n*A��'Ѭ�nP����琒���\A!����+V$��Q]EH��{c�ѕ��Hz6��H�yR��Wwь�ze��,���m��7q/�d�ĺ��������%�OIGW]�AOy{XwVg�E��<����f��Xv:���ŷ|�.��@���{�uh��$�+8#���A���j�r@��[�GN�P��5lg�oq���]���77����}�1qg2q>c����a&ܼ��=��@6�g*:B!�F�s�x��zx�XM��$�9�xr\�q��]���C	�]��^x�02��{�N��l5��[	JwTFA���r����R����
�P�c��l�=����R����ۼq�Um�ݥ��֨:4�7LAjx�����N��<"��	���b㳗Q��+o��nGX�2�\�3���Q�Z�	��-�����3<I��^V9�ux�ϙ�E,�0�����/������n�I����=Q2}⽡D�8�+~�U2�5��<��!�`�+��ۖ�H�Вk�}�(��£Ǜ�9o/��'�ڡeJ��؞�7{�5��$.�Lhm-Jz��*��|�����Έ�=�gj���l3�-��j��C=��ŧ���3�X����X���%ѳ\��l|����JA�!���V�˰��yb�K�n�RZ�U�*�m.��"�N���|Rp���Y��wF�k���`��gl/�����[�M�V,}��螤���P1�-�0~���;�ۘ����I?�U���u>�6���'���}�ޝ����<M���/"ͧ@m��-ة{~��mk���͒�Y׺jϹ�ߴ�hu���h<tq��}}��i�^�y�(�z�h�,'���^	�~օ0��ȧ�ڃ:��.�Ŕһ���i�/��v�ܽ����9�[փ���tdU_�a���5���&��LÁ����$K�i*!D�2L� =D߾,��D?�'�.����)�k�=Ƃ�eu� ^TJ��E�]s�G�),�%C����=j}z�J�kB	z0�E��^�{��R�!y��~Z���,C����zxޠ����Ԡ�l.dP��\V��-������W
�ý.a1es������M�&���	�/�J��+j��׬_�.}b[����B�'�b�����j'�;M}}	�GYO	F��W�ޖ�.ߚ�����7 ��oԜ��C߭��Z��86���Q�[l�⭐6)���9�Sc�Jh�,�a�1�)�}�Y�"�ޔй#��T���#Y/� ����ה��ERX	\#xۊ+ӈ����:*������׽7�u&�Y�=�Y��N���m&�B�k^\{�'�L]�iY|^^�,=�W3I W#��Ó�K�ֹ��&�̃d��.�,1�-���2�4��?��>e�%N�oVK@�,ڡ�cUu��.�S��4�],D��d�dU�k�`��ժ�E|-FF���{rP���\k����\��<�OT�z�X.f�� �4�Q�l8�8s.� ^	Ma�~4�	�����)(R��U4�m��CH�cڞ]�ǌ$�-��h_��]�5�L��VW{!�Y"�k���f�*�����d'&qWPDB����`t�*��@ؖ�-�j�UKO��ܸ� t�B:7�˭@?S���I?�>C���j9�}Y�	�����ע�j9`����W@��4iKd�!�c�5\�b�efqz���]��կ��%i�S'2W�O�D����F�c���ҷ��!�Gt�t (�6�����x����5�R-���>D����{�U}T�y�G��z� �s�Wnr~���j36f���m�~	n�ވ�+L���Uqo��Hz���#�/m�����0��et��"��un����]��tڸK�X'���	�n,��pb���[�'>u�roq��/�}|��'5�l�t�N>�_��K�kl`h��ױ��$H���o�!�Sz|�A�k�J��-f�}Q@�k�p҅��^�p�oͪ(���A��1�)S��9W�9�ļ�c��)�Ahp3�����Y��f��uiᗇ\KhY��]�$����&���҃��,��dJ�b`����ń'|tF�I�5���8�e��8�E�M�xz�-4���ם�N{'�����8����J��QT����t�K߬4݄�)�ڋ����/�pJ�:8�\��>������BO9�.�X��ѯ����Ra:k�ӥ��;8&��Q�1@�vf$�,v3�K5g�SH_ζ�PԦ~БH����o�P�Mhy�/���}6wsA��yj��oR�5
���xV�L�lѻGI����sȋ�5a�����~�:�� *���J����p��﯂_��ɓ�(�>1��
rǆ�^F;n�]�y���آd�I��������^������ZA��B�d�-�������5���Ҳ����?���MX`�u�C�fub�s�W��X�9'�ߵ��Q��̲����>��B����jyY��SA��}�b��X����Ǐ�O)Wj��+o���ɳ�����BO ��<Ank�"    �Ր��ȗ��_l�����IX�8/__�×CP�e�������'�&/�P�^��V������{p��v��d��Fu�����S�c�MR:��U04��9�AOM2�}}�(�0�ar��E��Ӿq%ֳg��y)���
M�rZG����#g����)ֲ85�d�Ij��z��l#�����+u����Jե� ѽI�|Q���{ �|�I@��7�\G�-i ~M��;���ͪ֊�\�J�����x���w4yi�|��vp.��b�i�krl�����^�fRv.�i,�V�����t<4i���%2Fx}�u��"�^���H)83�~��� ��	y���[r�׶C�쐷�4���8ƖJ�("�hmw�+xXgL�m��R^�ua�<wgNY	6U!�@�]`;��Vo�r����43���ɲj�5����Ƭ7����f#����7Jz����<m��tk.W��h� dbuA�^�p����"&Ԛ�__�5��Y�r��;�ms���������rTj-"�	['�a٥G=J����L��i�O���r�C���Ʉ�,,�j�մ�Q���؉��C0�)ꕰ��R
�e��kaF������P�T��q�������Xf�����~�!E��&U�m�L���K�sI-Bq������MNpbq�,"&\��S
OT�F�c��/�M�Q�6��j�
ė
c%��^Ec��1��t���f�	��)���>�Xi�_"�,���u�=#x_]�FO���`���y����"�޽��?K�Ҧ����������P�/��Hj|w��C��0{��ŋ���F߇4��N�������
� R��b8�ok�{��L��W���Z��n
�+�҉x~�əъ
����gz�a��?�����)y�?���Z�}}W�<����f_�*7�ΕGB�3�Ɨu�0Ǹ�AN���,��.��z���և��G�c������z9�z�
����,_�Y_%�����-�LecV�fhx���[n���m*Y}rm�2��=��f�:�T��=����C+
��2�oZ��Sf�ԮHڧ2�9�2����wʎ.ؾ|>�4�֜0�!��)*9�n|
�PCz�I��[�ȚM�4�p���z:�;������S�_:f��~J������6��SgF׫�CBK�ډn��޳��1N$��˸�`�W�w�s!鐐~B̷����KH�M��mԞ?��\��\��^u���O����H�2x?hj�����u���L�x�y�KM��4W��2�葶�6r��a5�,��uS��bO�fS����v����Z�ʚ�2����ΓP�S��&=3�#3�E�V�g��	S�w(I�w�L�%	�Z�� �D��c�]ZD@�]W�����`1h�4EUɬ��	e�!=X��4'��_8g8/x�e5�:L:B<G���[��xS��|�U�.�da�Fo�^�
���~�g8��}�E�_%O.�nx��x��(�X�%/��}5�gy�$
�Z���L�N^�t� ($�c�")��½r35;���\Rq�|��g�ap���e���vM7�f1Jt�+�*�s|�~4'�56�����wx�(�oj`�=�2���V���G*|�24O��;��v��Y�l��~^����N�֏�+��~�0ӉP�������1��<'��bbDS<'A���բF��M�qPuqZ�:���k�ۂ��P�9՛�j��!g������t0�/e���}AX�r�H�J�,�U�� PY*O�Ժ�I"D��#{L���D¼]�}��1'�է�IC�G�����C���}�b�7���xe�=N�}!ؠ�!X�d�<�"B7�f�(}���	t�����G�	�Ypu`��0N��Sw;'�b�7���Y�~IN܎�J�[y�w�POII̗�IN.b���*w�����x��%W Ġ}F8��U��EtT�7�2��>�ҕJ>#���}�+mlqQ(��6���B&�pE3���𴐯��NA�x�Js䓍���{��{�nug���H�* ���F�G�d���0���3�71�}^�GH�e���<�ʔS+X3y�.t��`b�mW�����1�A��O9�t=Q��9�'{`h��(Dhq	�u��ZR8Ǩ/J�i�"�F���?N��'��H�(h�d��^b����s��Vt�Y�}9�!��߶�1���-;��R�]D�P��F�r�� 	�~8=�;s�o6k����̀k��v C�;T>��MR�
�ĩ�cf���\�r�8`�D`�ٴ�}�o���k-�nZG��%iq�KqR:�9�f�u}t��E���V}�t޳�a��O�@M^��pP�k��Z;=HؼY�q[���F4mFI���)�8�)	�+���T�Sۄ�R��$a�Cg_�����퇝�mB���#��5<�W�9���ֱ%$����
���o1��wOՎi�[Ђ���/�ѽ\��Ѩ�0s���S�t����<�t-K�A��c�$qɉ��5���3�t(�I����|�a�m"u
"<A}�x�a��|.	�\���cgU`��]\��/�7�?�P�SJ}y׎��'�����������~O�[�����/mz�5�v��EYu{o���ʞ����1��
$P�5�Kk!$��$��������Ԯ��|&@1QKa�&�~ ����@ј�f�{���K�����`A�/-xUl��I�\�-��uE~Y����f)��]M��^�;;!eކ(�����l���0�4�����>�!��	��4�7�ޠ�X���kwZ9�����V���)X^�{��K�g8�t#�2[<�������ep?�$�q��;�^Y�u��Ms�'�LaBd�Th��~_w�^�v���#��Ixܓ&l�JX�Č��2F����9�`��^�ugt^�0�X��N!��nLg�QԬ��g^�t��;�m��m߁=ru�Y_��6Q�ws�W�����{��u��-�ܪ�
�&n�	]�����k�!;���4�4pqxhvu�r�}PU#j�xg�\��h���Qf}n�v�)�����B���g���5�Z��	�T')δ;����n��8����~�k4��~E����p���a9{
�,����ԸN��0t4�18�,ID�K������ ��գ���ӁE����P�����Ӊ��ee���1�6�����8��N�_�Rmѽ����j��J�0��~3��zQcV��R��;���$�N,��G��$h��s3������{���C�ľïP���:��k��ɴo"��1c�5�{Ʀs	y�����҃���}��	�I�C�W��X�[Q%Kƾ��ݳ\�G��h@.B��	i���l�E3�q��d7��G�G�u�^NK�����}xM%~����"O?ф�)�GV	�vV�d2�@�ڶ��mW��O��2cw#��ށ@S�����2��� �m'4�`�?�Q�����3�K�?�B6�Y=^�-9c�_�'0��؈��l�1�-_�
)�\�-��v����-H��YͰ�j���ű��|�A����G�]eRK;Lb�%x��7��)7�/'i[�0-�_�}���FzbTz�o(�P���!���J�d�#a�kW;m/铖�{Ϧ+*����Jo\�����#iZ�ܓ(�9I���z+�ct[#�^/�O����-��b�;��N��}L��>77���	ے=N�w��n�K���џ_�i�����O��Y�@	�<.%�(���(TgH��+������*=�m?�\���A��&����Ud��w�-���ˤ�~nk�ܳ� �Qt�����,���WH�rg����by�
'��6r�Jgߪ��Xy֠�(�Gtd���Mq���3y�h����r7�̤5�	
�I�>��)���E;E��P8	˟ptI��	-�MI�y���+�.�V���t�{q��o��#�Z��rx���	�f9�����u�/#��T�on|o}����i���~9�#&ngZo0�O%rFٷ�`�ϛ�8���T���CPF�۾����r�    �R|_~(�ۦ��- 6ᗂ��4��ԑ��Q ��BWE����Ir��"��� ��#���嫵�R?��dM��1�x�ى��a@Z@�2y�+��,·`��t�co�\�D���� hH�w����7��u-�2�� �G� 8	�j��� Y�3�-�|����E֨QS�f�	��	�&DQ�C�Ᏻ����>�
Q!�p-a�S���IŽ�R��Y4zu����+W^�e���" o),��Mt��t����!�̥6���ĥ��G �3�������f�Z�}� �wm��Z��ƕɖ'>���c��t�DX�5��]��>�N�x� y� xq�'�޲�$�7���w���\�DR�
�ͬ�\��s��a�8�>$�͉}>������{��p���+"�7]G�����⟏}�ס��K�&mQ��h*yڤ�����[_Y\z]Ӭ��MbE�u����]�v�(n�R����i���ڹy��:���Z�ʭ�bUe�����ۉyF/X�=��������\=q��j���,x��@pv�5�L���� R��_��?XTH{����ِ5|ދ}|�eэG����;�9BD�n�韽@��u,B�����Y��������y���Z9l<��;
o։�Ji�u">dt�������Q�SE�Ӫ̀�h`B�K��5��$RӼ&���]qO��w�	2k_6�9���)�jaNM�>Xhy��ݱ�3H��W��˾wo���l���_��i�5o!�H�ڃ����tH���7�C�e����Mҋ�V����]�_�v��Z�ԧ�|�l��]I��Cet;�D�)qy(�����='��T�����k1*��:����}���9$Gd�fQn~JA�\��\6#��9�$N���2{�XD�(�E�,�ɔK+�i�0��y_7��l'3f-��{�����O������%�<zd��+�_<-Kq�9�C�������і���<������Z��]x���&N�5R���E�/m��t�ë��2�x�盓��/�6Ry��Уaގ�G��U=N��ю��y�_�����cO�Mk���a�B�U����tq�>�M��s�a����۟���R�0m��K����T
�&�̫���Я����=�,0�?��D/rͲ�Y���-���c��h]�T�/A������9�9�V֦�s�~pS�����PT���%�'���'!2cnE�P���浏��GN��[@:Kķ���{w+k���ش,0�U�6�d�|�␡�����^�ٍ-�p+�WJ�3~z��z�_�/��� 0�ز�\�)�^�<}��QI�B���L:���L������Y7�5��z�R+��_��~�y ����xT��[����+U!(��7�k;�����?�\q?ͲX%��@k�n���M� �~�o�rU衆���_�Lӡ�I\�0A��ѭ�9�ׂE�ˏ�5�HGR�|����5��^�M���&�����a�3{��atS	?�_�ٽ5���=E-��|b�E���%�M��ی���F��0������^�N�߉�x8�3ƻ���.É�i^��2�?\�����c�[�ժ�J��`z����/"���q�L���U�s�)r�F\sb�>Nx�'-�%�]��Ue������F��/$p �n�V���I������Z*<�!_u�����w�ʔ� ���pl����#4y����XՅ�u��9b�w��/��j���؈�����9f��	���b�6��t��$�۷�ɬv�<�å�Q��	�*�p��0��4��|�СÓ�q5���.O�쑗l�
�Y�š)�)t���(��D���k�^��?������~c�������qbx���O�R�=�g���t�Pf��1
��G��i�fpY}�~;��$25wh�$��{��}�:^?Y��x��ԝ�#痥�[Q��_��R�~�/�����^��Ŧ�S-u��S� ,Dl2�E�,$�z���!A~�������l5GD����D�_4��y�OW����f��4���M!��V�v�B�o��:;�͇�Y��޶⧳B�`a���V��Z�n!�G�dxX���Z����b�\���a���7;!��xO��'���2j���W�Բ��V���p?�Ǿn�=�C�:��鲙l�\"�M��ԫE��Ox��h'�"+bܝ�h�oq�����|�e'!�%���D4{L���_�_��%uD���w8l��s�3�1
���N�"|����) `�G[�������c��]]����fll*���a/��j���Ws��ްWݑ��<bZ�c��U��EE�y�V~.Ό���{��yl �g��ЋmvM�	��fU�{���e�����[zn�b�<�
�[��k����|�#Q�h G�Vy󄘢���8���g���@�B�3,ΕU���
`V�x� Y�g?�����3�il��"Aפ��!���5zE� ]�ћ�����n����5���d����Z�W+Pf��lUۣ"�S_�#xb0{5nh�V-gZ�t<iXڍ[��ޜ'�%�y��;ims^��}B��X��@��sĺ��Y�0^s��3t������Tߢ��B,�>:���Ѽ��x�x$��)4����D��>�%���l~� ��W;y8�u�	���jZ���|O�g�˻���/cC2�%i�I]��#K����"��1Iz�/_;v�5Z=�u�g�����S�(©̓M�e��#������0�(�arG���"q��+��Nf�����`��S-�$�QE�jj/w�E�j�W�>/�{0����R�Tdӂ|�O:����.�"i��! ���[F��wtYw���b�屃��	V�̫t���k	����AR'�MHW��5(t���}y`��E^����R�H�1�[�]g��\��`P�9��C.j�,��	%����Z���tkC(k���~�(0P��!n��%��ǶŎJ�,,�`}U%hIqw��|��I�c�I�$���o���FI��v�w����������NI��gO�.Oh�R���l�<�/�#���#H5���qn�@^���ϒ���VU�>��g>Yn�}��a� �R�'Β'ު�Ѧ�}�&Vt\�m��g�:��] s|�;T{��`zO���xӢ�U��T���߯@�_7�x��W��YX�i�Ǫ�Wu��@�L�U��U%��u離%����6���ⷓ+��-�fxu-D6�X?��c�|X�8ϒ	^�~$I?�"P4�B
�i��u��Ŕ�Y*32%<��}h!����P��X5�-Ǖ]�{��y�N�*�[n��G�)��y��޶��nu�}�W �N��Pk���ş�d��8:�]{,tMf�p��]�t�o(�����W�9�A�fټo;S$����4�)��.u�lE����>`Mq>^���;�&f��O�ܬ7g�o|{c��N�<����FH#����j0�M+p5]���g����!��]Ǡ%�T��	W��\� �]x䫫��]d��r����0ǃgpF��]��殉�i�5��צD��bq_��>z�+��(���L|�Z���OԸJ-EmY�gl�fe|e�(��zq\�I����֯�*/]��Z�*I�˲rf���̎]�����4>6Cs�a�X9���4�a�]�^猣Z~��"�^^�?��K�-�<�Vf'�hi��z���6�`z�c{�'vMR�=���:g��@�1�����V]VM�GQ��d��V�v�m��Ľh�Cx4B����/Pq�fqn��^h�}N���mgf6���GC�F��j���aN�B��O�b1x��H��ۛL�ǻ�9�����ooQ���7�/+d?�;*�cM��d`�C4��8s�h[��W�*�y��2�{xwV��34?�d>�6P�q�K?T�v�$T�W?���a��s}L���wu�5�V��x�{��%aۿo�Qr�����T�`@�7m��S�|x��7������cr��2�/0��79Pd�Xb�Lb�Dd�Z��Br�Bf�Dr�Df�F��E>�    \�V�O��[2j5�e���/�+H�>�u{��/_����o_�-S��Ϳ|��gr��1��&���D�R��i}<c�"M��}�4�>+������	L�KϿ�6{�Es���|�r'TL�_Y$:��>W+k�h�}����"K��p�MsK�l��i��s�|�A��	��O',u�Mڴ�<K�75���n���#W�-0�%_^ ��2m��oj����ҲC�<m\�D���S�W�9x¤��=JO;�}q��ʸn�Fٳ~��>m�Z$��A��.��=�����?�nުb+Tv��[�<�vf˩�U!�t�}������jbɡ��HIC�e��H�%_'��1���K��g)Js#� Lx��Q��͢��&��>˚m��˺3�gѥ,3�Xsq��f�⹎����j�F[��G�h*o{V��3�W,UW�KS�7��]l�����%���`�m� �V��!Ӓi��7eȩ���g_�gw@Ez�DCR"�+����������q�q�ܨR}�U�bŅ�J��q��y/{C2R{p%����Rb�ҥüu����ܹ�Nt����^K�:�ŵ�z�{NӇ�'_O��=[��1�Ģ�/I)�be��BpA�&�Z������g���v��N�/����ʂR�"x*^i���u bw2��VT�p=q\ۭ&ڛt䉤�hB�{|6�#p���Ŭ�#�X��R� ��V�s�f���R#�%�L�!�Ҧ%s�Ԩ����x�_��2��mS)��GE�]�o�IZ�����v`3�P}[L���HE�OU ��>�!G{�;��㕋/,PXa�;;z���?1�/�E��f��#e��FjK�k��@'6�y�6e�I�b���S��q-�me�._0iN������x=	�7���E�'�T똒���c���L��� X�+�  ���n���~�~l��N+�V�%O
S:U���-�r�sVJ� ���櫚�:�*?h/�Hz�oxWJ�s�z�1�|�=����:0�s-�^ϷP��L_���Yb{eВ��@��w�Wz��B�n�6n� X�N~��ĳyŨ��k^g%�M_�}��9n�Bk�m�xP��S��l�=z&����r�(����FC4��;�u8:�Xi�s�J�����Z�KĦm�v��VG�M����jV�S>��!$۾:��W89ɞn�+��CW߲+��Z�f[])H�xj/v�>��:�e�O����i�jA�v����1�'6�x���ٴ>N٨�!F�;�V�H�]�X�X�vp����3�I�8�1[��$��`���[ݡ�Q��66��K�{��T'���w���®���ړ���{p#y�{���Ϲ�Kib6�s�E�}ؕ�@���Cf���e�"
���:�e0 �9J�*M�G���h���_Fv��N���^6�uY�2�J�`SE�3;�_�8�)�v�����N[�̫D4�ѝ\!�@;�2u�+�]�K|ޤ�D
��@?~a!Ђ�/5��J�����]�h4�� 7O4	>>pr
[�`���b�y���dɑ_dxٖ^|$M�67����?�kwv?\�i�MY� ��`wϑt�7�i�w��(N˫��c����4�N�?�R�p�̫�����Jc^���X<����X��M8�N�����⤟�.b��_~�/zo\4��1�F�t�PuW�������y��Ub��%@e�㥼�~�W�OG�fY�A��ev���V�Wt����?����Z��%��IT��b\BOjXO�	�N0��p�N0�36�
�WԾ��l������щ�lE���G�i��������|W���+ظAg��|���k=E�e�ɬ�͡��R��Iw�����`Š���B(���3�l�?55O}��oz~�U������}�6jI���% �}�cA۽O����UqZ�R�&Y&�	*֍JUmF�r;��ّ|@[���Ѕ�rkMO�:�#w�z5*�mt~�}9vX�I{$��^�G�����MSX��]-13YEg&�8=�c޽;��骧��I�߬M��=�v�%չ¤�{�c�2}�c^`��(���z�SQ�i� �F���]�Cx|ో�J�䵦)_�-�_"hW�����CAkB�ÆL�rW�1�o����SM��x�g����mCb5 �$�L����jw;v����oIb;�&6h�7s���r��z��U���
�	�mJ��1�+P�����J�a��=]ƶ4>ߝ#*���gD�#�C�b���Q�S?��C(V�8�WoI�[M��n���-����Bn(�)�t���#O
')����Y��g�T���4�y����Z��eJ��t�S�?	��O��@dd1Ʋ�	)	�9G�<����I�W�Ye�X�ZtX,���YX:�A|I�������0��lF�)j�y�miO������ �u�.��~[��J�eY����o��rI��x챶~���G�`ݽ,�s���u�;#۪��-!���:a���^��	�V|�WUt,L���+�;�n��*�nq7#��4�: �Q�z+߫qx���!˂�6��[${`�`�/
b�<B���̓ +4~,*��N�2;R����'HAC�_�c&�doR>M-�uLb+�C�*nG���~=2�k�~��e+Dp&��A�Y�/��I����+Fu�ʻ����[���/jK�vLct�#k����@���U9��n*�����`,����\�N] �!�t����n�R &�_ �gS�0s.��~yr殼�\p�|,��g-������軺���^%�0"�,��V�N��+Z�9���kD���Z��h�*:�����1�viJ�êK��z��x�%i$�v�c�
p^��+PWQ���*1򉭿��[q� ]�
�7�S�[s9^�ȶi_e���B7�=J�w�.vy���� O%n���d׮�t���T	B�)!��b�,H���B@s�'i�Wh��0�->A�/E}6����S�W�@,�Eo��+]$�T��y��JL ~V���r{�W�N&����1x?,�8��I����oa��z)z�Q�z5�ڻ�O�6��M���'ZO�����EVz��y�{��sG�9�����ϗE�� �J���6|��Y��
l�����4��8^��7�����5�K�O[2�ȼ��n�YB{�ν���*�	-l5��L7������鱉����z�A��~�%���_�*Vy���,%��~��a�;���4�Hڸ}���$+xoD2T���kj�e���/�Ve�ˏl�$��S#*Kߚ���p�| �ةy�ۏ	l�����T��#�����}6,DW:����}5�q���@�	�޴�;问��&ܶ
��~��GY�u�JĨ�/�WT�
���F�(��	�u=���l������=����+���%�����A��ILKXDz*��A���4��u��-�^����XUye{�tH�@Y�)S��yv�����'ԯp�~K�:��Mڠ+�����E\2�F��q95Ϋ��z4,YI����W9�k y#y����������-�}ܮ�ذ9�ʾJc���]P/ۙ4J�����hR�Q��\&{,�P���'<+�_�IF"i��{���F(F�Ml���M,��M���*���ƣ��Ij�?��f��S�/�)E��~L��+��iJs,eF�a�fF�#;�9�X�	rw��='/��ݴ�/>����]i��7J���dQ[R��}O�0�ݞ[flJ=Ύ��Mw��[N�秅W7Z]3/>�$<�� P!�U���7��VXIu�qc�J'��8(ݭ��|,Gg�w:���d�Q�}�~�����	]iYb�6jo���ѻq�(�Tk���	Dʽk�z�� T������N���{A�P-�PQW1Q��yI�b����g�����%oUj���[р��(�O�~1ǺG����5b[m�	er;��e���#~]�Zp_�R���I�ku� �؉��:^m�T�ؾ�ּ�/��.���K��rU<��4R�&qu<��8$�y�24��Y��Y`�:�dyƠ���[Kh�n    �ݥ���!N�dYu�yT�7���TĔ��dx2��G�@Q���5����4k����>�9B��&�C�A|L�mS������ ��7�x�wT/�����q��.�@����;�bi@u�;����,�C-4�r�)�\M��P�+����N�8�����%ݫ=)usy�D��D��z�B�O&�g�&��/�15+��ɣ@�W��1����I�A&e-\s���e�`����dZm������l5��i�jS1��Y^C��b����a�0�_����$��j�؞d�.�B�o��c���n�'6�����B��p�T��
RS\�6Ւ�	=�>���jVbx_�@?��B����2 �9���\�yp��@bE�C�99�]>\^�26�3����Q��JmS����fHn^Ͻ��W���8-�+�e�������n�3n��/\�����S�������#�S���Y߷��>�u��ݙ���-�R�.ğ�~6�M�h3�?�@~`L45�nhՂ�6\��h�QT�7�z��!�|6���H�|�]��ѷ"�PKڣ������@��0���%^Y��" ���r
N�Fg�y*�F�n�ndaX����r-�F�u�_ЯX3�*(��|��$�`BOd����tm��C:J^}�ECDa�vYM� /�5J��
S1��MQ4�h�	ع;���Ĝ}�$s0��T�s��e�
 ϵ;
7�Y��<ȓn~�]���)M�^�԰���e.�_��38d:(�D7��S�%��I��ZǝoX��[��jo��5�!3W&u����T`����ܮ�ó� ������Gɒ5��9�G�=���=p}�w,�6(V#B%��"��*ʞ8cS�A_<2�?���t�@����&�b�+�Q���p��T�:b-�*�;~��8ߵh2�x����?y�E�ˣ�ڝ��_�e�|XO���v~��[�ο�z̄e���tp�Q��&�J1}��*��s+{T�>�9��	��0y�bt�9�[���k��E�����/��IuNO�����`�F�F���+oԸP���Y� "e�),No;c�8�|LǴW�{̓L�^�\ړ�<�=,�v3��)�S�ԅP���{Z�֙g����0�*���dՃ��=��Q��lD5�)1)���f"k�E�t���b�$���g~�>MC�J{����<��7��g���L%YQY��?��`�>���{#���دA��u�\r�g�7}K��L[k��
��p{�Fp��) �)KlC)R��Sc̨d��ǵ/�*���D�����ԭ�9���ޔ؞���A\�T��~�0�8;��6��ʪ���]��d���DP���-ϒ�&<{F�
�|ͪ)��6
Km+;y�����80�^��J�f]�SN�y���@/?�^���fa
����� |o=i.^U�����F'�S�����UT��B#{0�-܏XI��Wq�g�B�39Ki�¿�P����i�H���9��Z��Rh��!UV{��W�\zj��Lig�BIK5�ܠ{�yy�}j׾�b���y��߉t��ϴ��7
�;��l�׮�Կ����O��S��o�6Z �G���a?��b���]o�V*i�r�Uz5�r�$u6M��NB�@�?�(u^\�f.A	\���
d�0���vb�����a������3�r�Q��R%Y:��C�H��a�]��R4�yV�Vi�Hb��LEH_��8B�ƫ��ng������5*{��d,�ZǬgߪQ	�t�m�`h,�ZhgGz�ɦ�hu�F�m�5�C�C$�s���
�Y9{'�˦�O�u�k��=f��h�w�I���� ���|���#��yp'-������V%����|�����Q%��+*G�)��r!Y=-�����Q�
-�{�_ �7{S�žY9���aQ{�E�f��ad��Լ��Q[�ɐMwE�&��Wd�Y�7�Hwьn�������AU�	b�5�-Y��� =g���>v�'[�=�B}����>i�{������A���;IW����>�9 ��"Jxb�Iܒ���K�X?�`��#����n׋Qe�λ-�P�.z������\�g�Ҥ�>��^l���ĺ\�"ӳSb�QS��Ѫ����Z<�==M��{����5�?w��~����Iy�
��>�g��j�N���=�/�#��]��fG?�_��9V˅�5��f9�l���#
C\w�3�h�\K*<�W4�DC�y
ln��7�w�K���?�l�#P���3��&�EԵW�T;W0!U�o������� ~��A���i[�ý�Ew"�����"��Z�>Օ䃮��˾��������)��ƶ��nx�%�Z4O0Կ(�TX����6D8z�5|��R��ơ��P�[��Тi��E�������ҪHY8D�$��\^��-���M"��6X�������S�P|�/�������{��2�՞mf���Q~��sߚ��#d�9ɨ�@�e�;�H.�����b͓��j��K�@���� �J�f�e�%�-�N���n4�bN���O^9�J�6�Q9��ϖ��K�DѰ��g�vO����<���K��a=3��+D�K�.!�:�0P�c{���ֻ=j���$�͕�jx
�Ox��/����w����_��?�E����`Q�RPd���W���؏��3<�H�]�&�(�u'+2�*�X�'c	:�FFޕ̙s:�ad#����~b��`��|�4"e")�$q�e�L���n�aǘJ��	��V׊�+®�E�_T�x�f�3MAQk�¥==�H�'��D}z�/��"�@��{�Ͱ�HѥW��)h[|Բ�b����
�B�8Q��Zc�E	���i��K�K��������o���Zi*��N��9d���d3?����'�w�u��K�0j^��,�X%ÛH�>ԟ�&��,������^��ĥǗk9ge����V�U�Iw�ն[|�����s��옢�!j�O)dݎx����բMB$��D��	Q�yu=���/C!��'8�����k����K�8��&0��K翢�A=�J�������m��l��EE�x�J�����l9V�k%��B�Z��m�S׮��N�U�B�V�ʢލ��O���
�����7$\��H,�.>�U�JT�Ig��>ź��d#'%���uk����ϲ�ξ�iNtZ���?𩔽�i���� ����ɍE��|W�;w�s}uj����F*�L��f�8�7�E.%yn����W̟Z�=�ah1���T�!hy=Ѻ�W��0�]X�����D2��9�'����S~���;�k�'�η���)���*����4v3���8=�Q�Dl��y��䍲k�[$�>�G� x�E�-ȩ⛷e[�g��.Y��M�s�����&��}F���~lOu�_r�0Nh�&=��c���t�Q���.�h�S ���f�/�N�9n���:j��y�9�1�5�&��Y���[zC��oD������|t���$Qr�Ӂ:yܐ/�b,�2i ~���[�ë�eH��·��w^��LA�O8�*�'��&q���lf����Q Jv��z�<���P�Ɔ��~!7KE����������w��*}�^ϕ%�1��[00TW�����PO�A�IYHZ}��&<9IU��hИDA���2�8tV^�z<��Y�VO������)6��*���S���&b���������~y�F�Q%Kv3jLC����H�-JX��|��f��Ma�/^�?z�:P���^�Ͼ��%f��`�ZC���_d;3{����~�4��|䯩����,��`��^IN	RUG'˧7�c�ˣ>ק�j=����]�d�%�]� {x�>�������3#��]Z�<�L�fwI/G���u�)���y>��'u�Շ����I�Kڴ�V���y_�pj�uD	W]�2~V�6�ݍ���X��3]�d1�xA��c�냷ȓ����L��<��]��^�&��t��h������jױ�NOǿ�[5��"�ٯ��OLv�O�ނ�����ܶ�[�絏h����z��,��b��:�Z��"��^?�Ǡ�%u ����Z���j��6    j��=�h�h�*��D�,�C��7�o������n��sYm�_�����p��������~}�7���F
��in������@
��e�؈dK���wS<���>� *�~��:T6�/���նٍ����	�_�u=0"	�Y�.Fr�0o�ެ��ȕ�u���=���Ao}����Hb��68<����|�|���3 �7mJV;�O����;Fo �E	���?�r>�M�Զ����iNGp�7q�j��ɓ��l5@�l�����U�,�t����������cYȧlh��p�#wm����+����"<2d����Z߇p٭�Mji�tn�g����&�h��@ܓ�L�/�.iZ�iY�ST����NBDޕ�>���j|�~k�;�Onz���^G�ʭ3��E0񟅯�!t,��P�^5��2��qX�����D��]��\��+@�xd�1���tn��@T&��U/��Y�2�ՙ}�:ʀJK�F1p�Wdo����K��֝Mb݀CA��<�㏭{j�x^���*ʩ��Ҿ�9�}��*ހ��K��cj�8�鮌�a���#�@�W��Z7=@C����\�{�ig��S��0�8d�;�'>`p<�P�B�����@�k� D���I_��c%��u���o'��AY�G}y*j��g9�M�Ƞ��J_�����l�kM�c��\��{��؆#���bV>ʻ���9��'�J�%���Th�p؁CA�����%2H�+~(!�E	Jef���b��z�B\�ӊT4�����?1��L���P@�2�1Ԗ���1�Yz}�|T��(��e����g�ѢR��Eぬ�,�����j!��<�kȊ���F�C(��,,y�~P$��$�����X�����Oc�&����蓱��'�[G���fzL��-��J�YF���>a	Զ�s]쓫Q�Ӧd�й'��먝e�fff-9��F�ە�X�e%�-���F����8��x��q�⫥��ϛHM�5z*i�=����� ���+��*�K������{�
9��F�9<#�N�+�&�>���7A���ώ�M��Wv��sA�ՖH���ݒ��=���`�JkW'��e�Ş�4�ȾM���|�=��s\
E3����~�O�hN�uA�����P��.{��x�rJ@��}�@1^-�Hgy>��V�a��S��D/pE	 ������\C�ĝ�ߧ�����_.B�!���3�2�'*��:-������Y�4� �J\^� ���Yq%��#,��b���ȵ�&�i�:{�����l��x$����f¹o.b�	@`J�'���7�����fG�����	Kf{��N��v�Z'��z�#htJ�Qk�ݗ͈��P��Fe��S;�'��&�F��" ����W�^v�b���(+�[�T�K��a!����Y:���3�(�q�h���������*�
����!��Q��P��)嘭��DY�+����S}@����GY[����i�h��{�����C�LXF>z���|�� ��$����w����-�>}Ӓ�-"�����Sj2*�{>"1%Ӕ�h�UgfU_���h9�l?�O ��# v�q�lM����}pHKI�G�,�0��p\��enPyfPNYP�HXeHMM9?U���q�h9��lŲfH)���N߹�{� �A�y�8�mY��0�sfF�9��M�WW�j����JEY�᜽ַ��/kzC�s��l4�R�Z,�+jM�� Ota`_���%Hj_-&P�R�s�u�-V�d92{��I�p�R�Ezm\�rc��d$ҕ|�{bv?���AXP#7���fY5��Mw��HBp;F�x�2;ԁ��	���ݲ�y�(���w�Y�~v��0z0M��Y��M�"��k����{L�[L<��C�\�ޘe��n@iNqp��\�v��W���"V������̀��4�1[.;������*z�P�zR��U�NrWI�cF����W�Mz�=��3#�_���*J����Z{��S��5�NŎV��S�S'�U�_�G�������4�w5��f�\'ﵷ�����GĹX{P�'J~�Pz�{[��d��7�6���t��);�d�ʬ�xz�j֫x�~��#����2@��F�b&Џ[U�c��[��O��#1���Lqz4O�Л\Lb�]��>-r���
��#�2*=Ȝ����P��U�H�r�V�����!�ӕ�[Ny�s�Z��	�"L�^���[l��z�OQ!�f�܅ͭ'��M��H/&��Kfɵ{I@L�]ex��J��fe��H@t��M�A<�[=3��}.`^>|Lu�+��g�6K�-�=�B~Z�5i�ί��^���+�<����!7��$52^��g��\\�q�*��ȥ���o��O�ZB��EރI�Ї7��o1뜓�Bo&�a�	��CB~R���~���Ћ�.��~))��`/%y�m�+J�
W
E���f 1�8��~k���zIp����"�v��ۼB���1��L�\����{� ~{����pV(K�cN7�G�e���L�V�m�u"��k��=�])�R�.TY�6��0Y���.�
9��ҏ��#��ܺ������9������qZ01�Ǣ� ^j�G"��'p�L����8D��ipm��p����	��{U��+��^r���˒o"�3Rț�!�)����R*fpu��j!��oh� 2��lL��i����F�g	��$2�T�X|hѬ��-?U^�g���4Ɋ�p�����^2I��^�]�c+��p�(�4͞}���;J|c���+!O��)n� ��0�P&��t����e��ƕ:�9�)P�c��8�X^��������e�G�Y��-��u��ShSE8|�!���sm��s�^!���UG̢�[����/���SF �X�9��<M�TP)R������I$@Kܹ�K����RrVm�{�N��Ex�3l�n/%~1�R��2�:gR��2�7��������h$���l)� ���X2)��&i�'��yX)%I=!> ٘f�;��|T3�%�G��7"۰���#���	;���+�$���Չŀs����E��2�f�n��F�&/���qn�a]�s>˲=I��n d�q��x��j�V�W]��Hr5϶t�H��X��ΔFN�M��g�ep�T�(�O�7ua��l�hҾH�@���� ׫��!�lvՠ�u�W��r��Nϔ%�'z��u!��lD��S���uUtg0�Xc�^�Q�mN�3���$���L�����aE9�+��K�~,�>2L��˯Oo\t.�K�[��7AT���|��#�%��ae�7�"s4.��_���/w�����9e�F������c�{G�Π��ѝ��o�D��a>	�}�uPeji;���%�t���*om��#���I�7z�S�\��<�
��0�"��e�B�-V���Y�ϖ]M�87�7#&E6�e����-�L�Fu�7��vė�*�[v��\�nXM_�G�uHs�V�؍��]�ӭ�7���YC�>��-��z����{��.�&�c�V��Sx�!�O�+��/jܹ�H�{�p槺ۜ�׈��5��3A������p	�]R=��P� YF��bl=ꏼ�+S�q�#��߭t�rq2�yj��e-��ƨ_�t��F2z��Z�W���3�^fp�\z�Ț��p7կ
�sL��#�ĸ��<���b@��S�����A%�h5m?���N�г�I{�R��U&���B�燋��6Z�Û�@ߥ����K�n�Z���dyj�i����Tv@򙾖���$!��w"Ǌ���{�"UPCQ�޽��z�\�b1ʷ.�'s�n��q:�{\pα5���ȏ�����NѼrqג{F3�jW���-����4������KJg^�c�0�C�	~��<�~�%\ѿ�5}q����
cˎ��%{i3� ��\(�u�x�j��+��2�- pf�u/`��w�۲.�䪩�iٲ�]r>�D������+?�c�0'��Bۂd*��A�Rmc��:�
�w$�[�X���    m^��W�ʶ�xW�ҍE�:A��}�Q�������������m�| m�c�|M�a�wE|�hL7`m��Xj*)�#J�B����:4�i�c��W��KV��c�s@����+ �P�f�1_?�3-ܮ���X��ײ2�����v��r9]������T#�=':T�aΨ��i���� �^��8~�0�����Hnz���k�
�W �z����"V18	��Ks(�tx�[����q��#kݳ������I���)t����<!̗n#�TFÉ}���E��V��<l*n��{s��MrMG M�x�uة���S����6���n��&�zd`����~U4��Xًl yN��z7q9MH�2#���N�~i(������(y��Z�՟ݾ��ͽo��ǀ`�0�k���X����������ts�\5�;~�:��kg��o�I�2���V�K��+��l��ji�e����60�l�������O7�y*�k��jM�kM�:Y��3���'�,d�1����m���f��"j4���Y<�?�,X1���B��z|4�+�������F������B.)��?w���X������K���Żݥ)ӤI��_�Y�f��{$���f!B�J�[�S�o��DA��fq�u�X��L0�������fr$
],�w��;�{���],�(�2=�C�c_`S����1��.I�<��������r<=��
\l88Y��	�^�.��t¨B���SK�d����g���B�AzA���4,�M�Q2���]Z���&pz��;��(��o?���Ҿ�z�\� �!�U�RK�24�D� f�sq�>w�m���� Fh:�u�.y�:�����
���|�y:ƫE�u�µb#�+@���1T/(mNq��Z���ZI|�,�d�l�Q[��>SN��I��9oD����V1Ƕ�k28W�/���dꗍ�Q4祿hP@Cۍٴ����x�Ǘ�Pű�^\f+�#�a9��j؅O�B�o9J�mP51P�K��ï�M�����X����\\?Nv��TX�Pj�:�1� �� ݁�<J}j%ɑu��Aaȩ�Z5�h |SC�%�!e���=N,5�<���I�KB.sxh(+vۧ�
{�Mx[���iw+�����x%m<��~zR��=�H�-B��2����_�W���b~$	�񦃠b�4�#��@�31zi|g�&g�Y����(y�>ŷ���9,�؟�J��H�_�v�c3"�LZ�ۨ}�Ζe�qMA��I������*�	/�٧�/�K�ط�gf�L��ݠ�x�)���r^�1�Jٮ�T=��KI�"����������-��FzQj��pϒ�U��a*���0_W&�i�' ��}��?��5�W]���X�yn��9�� �L�VMy��w|��D��#�&�5٣X��w-���Lmmi�}K=D<v�;�H��.�چ��ƺH�Ҕe�-��:��
^��X]�^�q5�_�㥮�����RtF����H�gBɜl�5"���j�����h%�E�h�����-���!��Sv����+�A
Ej����[�Y��1S��ӗ�I���q�_D�vg��6�rlک��r�a?����t��|�/�O�m�}&=�p��S��+����u����`To��jx1�޽����~���nʟ���I����ѡ��,
�;�cLw1��I��Z������0�&n�K��]&6�>S'���0��J��M�љ�քY�!�-�w�eE��53�}_�tYLEk1�"�*<"�'u�14\�
���N�C+x�Dã2���p��\���N�Oځ�AY��VɘQ����<T=?l�6�����j�_�4���A#����>�㸧|�P��"�N���d�|8��|���$����;��D�#7q����__��f�7���͉�fKK�����R�x���x�@�PZ^�<��� w
��TO�/�;�=������*ֲ�)����mH��uO����L!w<Q�h����iq���X_�ݪ^�V��|��0�a����79g}e�/�m� �v�_�I�-b��n��t�m�?/�������o��S�%w���瞳�q�p���8S�f��!�ez�wMy�P񫧲W\o��Y��(n���_2;�?o���޶#�U7RO��|��։�/i&,��e��+����9�����g���s�����Oq��5��e%$ߣ�}Qd��ö2^�1c�$�pv�L]�K6x7��h<� nf��v�P1�+Ğ�,�&`g�,�Kб��2�n�3s�a��H��}HW��L.y�X�A�ʋ�q�r�*LQz���#����'nm�M-�m#�
�A��P&�1TB7F�E�/�gF/�Y�1���|)M���1�3���ԑ��k�r�}�[a�f�WFvC:A��b_q5kV�جWՔ�
�-[�gm�X���WHS[n�f`?_^�nGAѺ9T~,ϩI�=#�mU]ŀ�<H��r�K?H���j��%Թ%�l�@���7�dCjO�����!w�O�H�'��t���êѽD)�M������܌E�So���:�fY�Q\DTZ��2�u�ܲ�M�?�и�T�&��wR6��/-&f7���Z�f��{ 4A3E^E]�a�q1@U{�����8#Uk\R����~�N������SC����ƵsTit:��BL�����7yK�)��\�@��If��N:^���C�wXr5�m��U~!��;dLY�^& e���J�����{� A�o����٠ӊ�.�� L���������x7�[����9�õէ�u�}����Z%� _���`�l��H���BM�`�M�~�̷�^F����{fS�U�L���v�S8��B
�k"�����H����t�f�b��y*׺�)���f�� ˞�C#�w�܇R�Zȧ}�<ǘ�'� g�ʎ�D[�k�76�r���nJ�r��a����%l�(���8���#�.����>�LQ��,Pl�Ò��p-_��P�g��'��^��"����ҽ��]4ɰ����j7��z��v���u4N�ź�zv�q^Q��b%���o��j�0���k��8�
2��d�1A�f���>���s� �uU��ɍP�&IH�(Լd��kr�D^���:<h��g�VPg�]�닚�b�K���e�=++�_"��n�D=���d���BZ��cد�@5��H�]�R���4a	y��m;�IQ�A*�S�y��4�'���^R9����L���T5��u�Y���r�[}t�.9�|J��;�䎞��S���S��[�
���YI-1�V���k��a�%߾���	����tgJJub�,�٫�	���H�K8 �<}��ӽ�j�&�u���� �?ʽ���mbD�e��.Z���U#@<E>�I�;��2�K�*gX�"X��P��M!GZtv����Ke�9�!d�Z��1�?n&�ba늟'?d��F�b`m�#hQD�4�r[�ŨZ�W$����'W�������ڧ+��=��wM�箁77;�߲�D�yOTa�@O��ho����6Pjc0)0��6$�Y4�r����٢��+��W�
�h�<7������*LCg�l�v�y$"��CW��OF��0Lf���.{x���Fa�߹ƅ�����L��	�D��b�+��y/�d��ʃ?w���$A��|� j7�-��9��ŮM����t�C#?&K�%'E�!��S"d�uL�8��	����:��ׄ�r�{蟇vmA�A�!i���o��΃���I����yȝ�)��&��ٯ��~B���k����{�3��HF��A��f� �(Ԕm�QثS!ݵ��S��_ QY��m�/1]�Y�O�o�w�R�j��Ae/>����^�u�T�zxˆ����w���jQ�b`F���Q;\�fK��x+n�:��u7�n�O�Q	<H�:߿)��I�>q�,�U���H
�18�tIR�> 	^T��S��:�LGI��)��)�/����%���Fʏ��
�&A��    ��y�m�3��4u@�5Yi��
��9�X�ձ2�nT��(p�l൑�N�3��Yb�C�_(/u�IT���[����/���V��ZV �囼�_��s	w������&�5dJ������ƔK>ei5Gݝ�棒���wj�~�Z%mw�2Nx�@�g�䢊b�E�L����@0~S�(���x�xݘ��w�^�w��������|����V�AN$_�bO5n�a�~�Mr����/�:�������ߗ�R+l�����B�ʽWܣ�NA5�Vx]�e9}9ޭ�����E���~|��܏bs�f3�؏G��n����]i��S֍�Fog����dL�l4��R��2(�:��ٵ���)��aZ��c�һ-Q�/�������qܙWb���̔Tm�'V�IgM'�v>�"�Ҡ��	���*D��v64G�u2�	*?Un���]~��ۅmGG��-t����?Xymx<�� ~*���h�=���e��1#Q"�2�P���(T��[3���ׯceɮ�9i��Z��_�f�__��Hǒ���,��]%�!�\]��8WpT��Gn�#-�%�jw���Ơ+�dW��E�JUT�v��M�����97�^K8qCC<_���M�J�I�!w=E���=�����	�&�LJ������4Ũ�T�Hᙁ����'g�tzP�x��%Y@A�[�X��D�1��!�(�UB
�����#����� 'MoV�/��Ƙ�*�k^���c�W���H�9y1R�8r� �>s��	vV���z���t�dg��M� Uɿ-;1� �
ٺ�}Ә� �͏9�1�B3߷��Y+�w�GO��Z�ƾ��lx�%��F9�jR�ݸ�V"�h��~V�����Q���ԣ��R��m��w�] �Ru����� �Q|&;�i�)�-��
*����wMq�����N�����>�|�J�sq�?t���v\�*.W��J���-2-�A����5v_�Q��d��H>H+�>�/��\�n�n*+ۗ=d�)��5���P]��h]V^�v����^ݨ��CnR�M*�Hb�jjB���81(5Rb��G���\|R�l�,�,"������މ5�����5JİEɽ��N'i�[��ض3)�o���7��'I���L#���z���ܬ��>P�n ��W�Un�8Sz��� �2~�3S�)_+�ܸa֟�5AO�Tm��z����b
�"��5���?�mw��-l����O�S��}�n�w�����]!k?��Դ���B޻؃��� �L�5G��N����Ρ�|HZ����~
P��)1���O3+1��᱓����5mӄ)C6�NM������ R~f��5��Rfv����7�ͤk�g:��ӀT���Kq�xW�Gh���F����Z�opu}��QӨ�w��5 �z�`���
�tkE������&y̾j��@�`�Ӹ�ʤ(&UQ�S�H��	��x���D�-2Ð+�Kt�������mo�Q��ӑ�d����@�(�}hI��>R;�8��j�Rp��9�v�j�k��OFڝ[���u�J�n���S��.��|Kc}b��ް1�o��{`��5���a�E���*R]����F�H�����4��
�?�%�l|�w�ew�6��\��OC9k c�l�:9�j�Ķ�+�����q��w6������"�b �xBT:�z9��� ¿�_�p'��m��Y�{p	xzHRtu����gq
g� c�v�<U����Q��P�ۣm�4
e�1���{��<U3�Wv����u۸'vQu=ٷ���	*�1M����x�S{�M:��b�	���A��Z�?��F��Qt�l�# �����g����J����+��ܮ���%o^fݩ{�9�D8�yv�FJ��LZ���
��/c	E�U3�$l��j&�F�y&�(K�L��K])�<�;2�Ղ�a��,(��mm1�9\�N�yXr얱��A�Xڐv�* ���eY!@Uפ���`f�������/�K���l�K�3Q� 0 #0�z�b�����I�Ht'~��+{�6�Y޲ࢻ;[����[wU�諀��!��ϭ��ߊ.L����H�Z�kX�+�E�9φ���򯯬}��4�ƃ2Y���'t�R���
�-�eG��7�#���1��g�i�^�ۇ��4bƨ�,3�}�&��ǳ���T��j�4;;�²k�* �xh��A��stzS߸��ȾS��%�%��n?�C�&Җ*Ш�:$���=p��V�����@�L��^�H)���)Fy�-�mj����7�����2���|�i�\�X� ���\�cZ�(mL���<�gw1��G�!����U�U�ڏ+
�V��"{H���G���Z��d�rwd�{W璍��G�t��% �lv�T�6���k<�iC�t,��N#s}��7ѧL8�r{
aV��(���?�����O}���j��J����{�
)蘫��g2�754b�p�y0����۽H�4olS:/�ș�ˑ�� 9S�[���o��9Z»avc>xb|X1��Y��T�����.�u�ZY���=6㨾Ҧ:�Bs=2��\��	��.�[�Y�V%���$��I�fi/�[w0 _���_H�\�]����u��q%K�MH5�*W���d�6^��G'�i����c��j��lZ�^W�S�e��`Yŷ.�ȣ&�ޑ�lU`w�*x�A:�3�塉�+q�gy�GJ� t�]|ȗ+�
�ˮ�J9To���	��ո�G[�E�^�E�ִ]�1IƢ%ds�+F�h���=4 !V�)�q����������}������S�,�-���w�UP_�q����4��΢��r+�V:��+H�NGu{��!����Er[��'=��7q�B�U%�MmWW%霅S=�xA��B�$(C�=�@^2R@po�������X��3���N�?�����/lD�����꼠�z�!���	A/�;�C�U:��(�SԎܭ����HƱ����X�x-H(f��q
� ��4�&%����������\��#��)}i�˄�Z���T�-���x�H�28�;�-���D��������ӑ�|K6�J4�+�0J7�,���<��ƚ���s��"�gnb�~43��d	]����6l����zr�R�Ce�x;Me���+�h.�_�N��d���:.��Ƈe��=5�cì���/���C6�A�#�����k��B�N$	�l*஻Bn���iei+���p�����I"�(s�ƃag%�*E�g��M,����C�;	������0���ڎ������dz��q�I����wڷ�{��l�h�$�����R�˒��s�����JL��r����g ������}�;ZYQBŰ�d�������L�6��p��|3�U��Ds	��[��d�	Dr� g�l��"J|��!kbPX�-�!��`)��s�NmH���ʯ"-���2d���BY]�g��:�Iѥ�+-���3o�����m�]
�$�@$���ym��^���r�L���j*}eR�6S��zl5�<F�=4%����i0�_Z.b��G�\�G�t��3�w]�+*�m=;'.XbB����Y�m۪��2	u�x?Lم�j\6�?[,���BM��ڡMN����]�����3̕��|z�#��\ɯ�R펊�W�8'J�7��z{�E	`yU`U����z���d� �����a��Hw��q��|dQ�nw3�����c1�6/h���ćlI�%�xC���^�&�pԮ�?���<Np�6�����-ʁK��Ժ0��$u���&��^���처e:a˖>�7���!r�=�3r_h�򠱷�������d�"]��}l���������q`�3�+�5�>��M ,�'JO�K����.ǝ �2hX(��Q{*�%5�Ro�SҝH{�I�ۃ,8��(jAJ���HĨ]<���>�N��$�%N ��ܜ���I�� �Ӡ��M��w�$�E���Nf�#�    �^+�s{�phʸĲ�Ė�F80���%Ym�)J[f���.�z�H�p��玉�v[b�Q
��!9��MvNTv�����Z��t���c��q�[�"G��Mak�����%�JN���)�$ʴ f�#��%6�|� ~�.�؏��JR*i`ȑ鲝�Y;5=��V��)3݄�2P�>��zj�B���W<�	*q���P*�l���C��9���Ί�����_���S��ۮl�p���( }j�\��L���x�ܩ���~Zb�9Q���뱤�_�)kZ/�a�:���\�J�-u⊻�9\K�O��Z�z���$��D��B5�1�Đk|��!,��fi���װ�֘�Y1Z��EI�
_#ٸ-����5�c�>�O��tݨ�⻪��N���'4�����Ms�)͂�(��x�2��g��[>x����PQ��K8r�t�/`�����p}�8�꛱��W���$-^�kZ���*qo}�g��;5%���3��/��W<��L�e��J���:��gTiδ�(���yi)z�l�����.d=*��~vn�I"������_�Ϧɾ���9�)�F�_�:�/פ!V�=�������@���ٓ]�����DB���M���V;�7�Xܺ4R_�|��;�)�W+(�e�k�R�x#�7>���������bW��o�
zD0t�
Bꉺ]z�Z+�O)��"����B��ּ��S�i�|>�mVz���UL]��ș�G�P�zC����-i��+:#�ء�2 ���co�ޱ���%�&�^^���x��;l �g�z[�)\^N�&�����Ϸ;髞�
�������w�9�M:ɛܟ½��3���J�.�0��6(��mȦ�����u)�6���Ѡ�YȃO\٬|�9hvW| ���Haw��3�OƑ�~`-�*3]�v��ѣ�=��g�[��X6d+��H'p�#WŘ��}KL@��S�:�/PS��#1�<.�CŹ-?S�ث&=z�'*tEn���J���~(�b�M5��Q?�^@�Y3��~�����B���gO�_�TWR�����o91Q�<���a�Q�.�7��r�������>�<]voW�_̎������"N�f�w�ӣ�P�F�J���d�>�����Swz-)�ތ�j>�� ������\��i1,�XWI�E�,����`W����|R$Q�F��#&�6d�����=��d��\��-�����m,����xc^r?=�~�����G7H5$ʹ�3^��Z�m��6>���W��S������
¼5+z�������K��N��s��I��ær�@�k��x�\���t�:v��5�&�r��L{NRA�Ox#ge�Kb�W��K��|j�/['H��q�y�)�����m[O!?�G�����;j�(��i���(K&�b!~?K0��k���NqԷ6�_W1l�����^3���!�1I��d����%�l���<�,3J";�3�ωs,� ~u�^{�A��:�@6�+�׻��~����vU3��ړ牮�Mwg�^Q& M�����ܥl�a"�7���pO2�W.{���%�+�G̈́\�Wҏ^.�����]�I���S��(J�Nd��R�[�����c����V~����MTYδ�D����7�D�Rcgj��Z0�9���>@W�@U�J[
v���A7�u�~���}w믭�z�H��d����}���VrQ����d� �x]\�t����i��ɩ��%"q2�k�}�[�Io�A~�bj�NӪ��-
�2���)�{��OB��e���21:ׯQ�5�Az-���F���cIxa�9ɲ�H��k�?Ny	v������)���3�il��hjol�h�Q�c�A�n�"�	��u ���ZI�@T���X\Ԅ���h��GXS�`�z�%��V���\�,%�l���k����Tlp%۵�v&uw���S1�h���;���M�\%�L�t<��芠�,�%��g�����>;0�`�}��QO

�����Ҿ��ݓf_a.7�'X�H�U�,��B%���Og�/�`��)R��X��P��l�`�X�~�$�`��NQٗ���Y��C���_�Q��߿S��NQ$*��Ŝ�&|��Fр���,�<��٪��C�.���PFF�� �_x�@��B�x��K|R�v��K�����IgY˜�?�$��;Q�	j�q�(-o�=��%֎* ����(��I��SRE0	���.U���	W�O�S@����G�%x�NY��S�Т�Z��~�i�=�֢�M&�������A�q��w�^I�&$X�H$:3��l�D��Aw����R3{ �����\λ$ NP���'�s��~Rc�Uk��$�L�L|)�����i��Ֆ��џQ��i���I�In��%:|�e�A>�r�Ի���ͧX���h�e�W_uVu��`䅁���0����Ӷ��,�3�@�B�=O�{e���|nUQ���`�op�*��tc�`��"Bv[�s�o�VR�H[a�kЀ;ڽ��~�4��<��E'�$�;�/3�_ipl�\	���7[�TٲC������P&'7=2;VAt�z���>�����%�c�>�����:�r��ӛ9�������p۽}��SZ"z�;����ߟ�bi��hd��@$��H�
�i��K�Ϳʣ����U�?�۹ڀ��X�He��,Xj��V���hNl����qDQy'�^T���TW��\��:�16>4k�b>.�c<�C�����ن�+���d[bs�����f�Pǫ;�S�ki�/��D3��D�t����Ne��WE��p����}�"���@�v��hX��4��O�*=�����@dT�fY��F�2�H�#zJ����|�꺡��q4���1���t�q���4���е9OVg����E��Ps�0�%)\!x�Q����w�+�B2�P������u���^'���mro�۪��r�g���8k�Ϋ�:�=�?��i@dd���9��,ط�8����~�/�>)�C�x���{	�+�z=<�5�mć"�N)�[�2YW"�#l�w>�pّZa���ַ������dn�t���.�V� Ԇ������'L�Ѱ����T�&~������E�ZQf���$!Ux6�z!�ie_�T��GYW5��y�/���t� k��ɾP��Ӑ�'H��2�d�k^t��Kg����YωVm��8R��}����l���s���PiՁ�Iꅭ,+��x�&�K�f\�U@D�Wȭ�SV ��[�c��0��6>UV�	$-�R�O.��B �6�����
�ۛr,��3��مW�w�~���T5QE�S+;�Q1@��kL�_��"�qļ�V�V�}<]Bx� ��]�@w�nH�}�Ipk1�ه�V���3{�3k�̣�*]�O�'}4�J�P{C���.P��="%u��@��;�E^�ه�Uc$d�H*�΅�3yɍ i���~! ̓a�ك
�������'��'�
2G���?KI͠ƥ����ʺ��v*��B�ξMW���L1�f�\���N��I7���a`폭����Nw'Td�s�����-*O=���ϙ�@9�	����V�^z�ʪP��7'�9�j��D�X�q���[�Ӆ5����b�Z�<4qSⴍĀ���3��ƃ�y�E�'�Ȋ�P%�6��J(�RN@�O��e���8)�8z�I���`���;w}�f����}���W�C�@Rp��E��P��X>�F�I:�P��V=/��<Q�4���Ս�@tG��	�川���3�_M����������~۹���	��v���/z��~��g������������_P�������?��w���nڲ#�L�/?���z�0��cɺp�+��3�r�e/f��ű�Ϸ��i�T��.������O}���ӗ���^0?;��w�
?w����lٴ8��>��9[?���ع�x>U�x��r�
ϙ/n,/�� �C/�p����~΍��U�
�4 ����?%���H�s�-��(    ���k�]8,p=htg��ӿj��Ypس2�i�'z�v����q�j���ͳ���f!�v{�`
r�'p$
:��L�XI�$�q�,;-�����"s�i'���,m��!���c��� u���w�:	�Y���-G�;~}%>^O� �����4b�˳9�r22J34y��n ��W H4�o��,��,0�Z�+��zY�ڊ���)�ϼ�`^Z0Q���|fQ�IVf�,�l�3���{o`����~���S�)B(_�{9w�Y�3����}WM�`��[�^G�-�{�yI��5ao&�ԙ����j�5'��U͜��)�8-ԛ�)�z8��8���Wx�)��$ޓ�4��o�_�tY
:!q�(x�*��\�BA�F���R�j֤3�`�)!��`���u�:�.Vr(R���è�r-�,�#��uO�!��F�Q�:v[+m{vme�<ͬ�C��]ǃ*��\=��x-F[�=���@�a��Hj�~M��.�te�byShw)��k��=��3�)!ˁ4Ё��?����)�#�P�geH�P�0�����9*�t#�H��YY ��[^�w6c�����<����s��mz�p�D�n�y�c�1.��j�CR�8�~;��*�C��˕t�kKm�{�D��d��rX�x�����M�l��?P,dQ�O8��3�F�
���\Dw (V�,I��#���K�!��^_��'Zh�;��"��Z�z�����,`�[�4Z���C�T<��pW<5�W��Ӿ.�w��<�����?���(6_V������=	C�����M�xqI
z9@�����ĭ�w�Ō���z'C���.�*���7�0�,���z���%]b_;�}8��ΩƺӒo���V��S�qyxw�Fp�]�j�R�H��ȸ`�MS-ACsn�*�qw���j���7��4$6�g�Y��I�'پ��Ҋ-�k�=T�%wb*�0��#���S�7(�a
�9��N�� �� �Cm�*3���ﻟ~��E�����5p�+����C�߫{J,�I�q~m��bz>v���S0�;\��	�G���XO��,ʾ���S�������.�y��S\��Q!D���裕D����k�+vO�"��������k݄�<�����2Uk�YƝ]����r��_�E�c�=����2�/KO��Q��Vv����'� ���w��WU"���HKV�3��g�Tm<\��v�-}m�Le��5ݒ��s�P_zL魐5��
g���˞�\OF��ԍ�r��b��ŷ$�8�3�GwC�Omk2�F8Xw͂4%f���ҡ���l�/��MS_�O%;�N7vc7� �9�%��
ޗ^@I=r
�����@]�|�2�e��Kz���H���9��{ џ7OJ�LFޫo�� J��u�˒�p
���9� �^�'`�@���s�2�KDv�	���!�*�-�y ��E�P�?�����`�)!�!)ra�^i�f(H��(� ����KzڷN�c:�z��c;�A���2S�f{��Ȑ��X��34z���4w2dV����3�=�g%�\��y��T.������� w`e�Sh1!~��F�ޗ���������)d���v���%]�� �Q�=�^�ur)�KZ�ʬ-��CV�\n_߼�p��\��Lx�U����*
�>#~�:�0�
Rv�� I�lNjA���B� �k{%��y�(:�u�����N���s]��t;��kTu�E�Mc)�S�J�B��6�)�����U�k�����)v=�֓]�7M��-@�.[�u�fF��Z�<~�c�x��x�)5@$b�􂚦���Ee�3V=������JIar]e���E@y��IQ���z&���}z��\M�nMn���3qֆ'��֋�V��9a�9f'_W�=N Te�G�RgG�Ɉ�śz(��a(���4u�:&�7%�'X�;�\����Ŵ8<�'
�55� y���vZ��2����-�w��l�a+R��s=k�Ӵꪙ�˝��y!@
�ww��*��D�<?AN�ʲ�E������7kz�7��&��;ՔI�98�?�#����k�ʴ3�3/��:s�Zڜ;&�%!$�vL�}ּ]�햱�s��6!���&Pk�c���Ic3�X�˪d�۽���-�[�mh���J�*��H͔2�-z���,Օ1j浦��.!u��z�i��DȹvQ���3�pO����W�AEʹ��"$	a� �/Нb0�j)-���K�_ez���ݩ�k��2�/�i� ��0�mu� �K�){M6t��z��Q��>�U	ø���Qq��ĆV(T
��H�UTo��Js�f�l���=Ę!?��ժ�HI�"�5mHJ%������ۛzi��x�<ȷ*��{���*~6.��7�C�u6L���r>��&V[_^#��H��"��uT��L�/�� *}/Ώ4�G��~H`�ݳ�:���k�x�yl�r�d�5~$7d�Ɉ����VA���pS�W��i��������@�2[F;˂,"T ��F ���pO�Q��,m'��G�LEV�y���Uu8\mc��Ж�U�vޚ���ZE�u:^
*�X�e�d=��f����WȰ�F��#��Kِ�B66�����A*�B��Y�S�V��x|�_�r�-8���������s�����p�/qMe�L�6Z� �Ϋ����!����	��j�^�Z�L�")GGy��iS���5EZ2��''�|��X=����%�*��I��~����G���qI52f��<ߡ�[�i�)qzt�"&.T��#-�����_�g���YӨ$��;�j;N�����rͼ�A�^�1�8��"4��J���^'?�S���m�2b�I�|k�,�x��y�$ �4犤�_�vV����/�n��8���9D_�����C����""�z�aw���]/�ÿ�W�e_v��޿%W�`�G��R � ؎�r�%j2��H���F��{Ֆ��=�L�žmy���Vc��M�����T=�d]�ns^������Gӻln�-����o1���~�q�W&�#�r���������k�=���e�0��`��c�y�f��Z�@��Ons�F�I1�W���-������ �HY�M��m��{�h[���iZ�t^;�	@|��9��*ɂ:!n���b��������~�b�����C��J2��`P���f�Hhgv�)y����=�����x���Ne:=7k�>�D���uR�d��܅�'롚 
��B�!nHh��E��'`�	-�к>{�zћlHm��bιM=��NL�Z�V��BZ��c] =�>"�`,�Y5��9���VֿgB���䵣�-�T*�*,P�I�k���t�.�(^U�j���ڢ�wӦTיo�}��3W��s8�x�2�Є����p&e-�E��Yt;�"�EiEq��c߆�[ e��z�S�DC�e;�D�jE=����G<�����97�*���'D��Յa��0���9��A؁�x�<d�?���v9�ig�#�@�=3�4_ӭ�V������o\0;��f�)���.6��DP]�yHq�x�筡�Ψ}gwmZ���٘�}����;�_d:g�J0{5�]DU]N�Ќ�����!C��ElR�?[�*�-&�p������Wj�x�e�wh��DΗ�X1jh�z�&����s{��`Ѽ��VL"��jkWa�Ff�2��W|O�Y�~찜ϡ�l�:�s�=|n����cuʩ��/{ �3�� �U%�b�筲�zy�R�Ej���+~�����x��X	&���v�굍Q�i�:�y���g��G�2�  V�l�J;I��dB� ���E_�j�E�~ (b}Kn��]Ӷ��[�\1P��.Y��L���$�k��8e�o�Q��L&M7�IZ7�,���rX��:�E�ފ�?�����p�����;U���u��n;��E&Щ��%!��A4�y��0���*�ҧ�Ԑ�o�P��Ȉ��7nSp�/ZN1�xm�#��9I    廥���DRT��.b�ߎ�I�J�Ya�����#�D�
{��4L2�|`3��k�V���}]� H��H��P��@r#m0)}��Ҝ��NȚR=Yj��R�=\J�U�Q��ݿbD�H�RSkKZk8�|��=XE�,�	�V5��;�b�O�{-��y���ޠ�n���"f�<��UOC��X�?��̳���`��_�F~l�����>��ZwgC���6I�4~s������X�
�a�e��H�R����҆��/Hs����"�g������K�DI���;l1���s]�>]zCZd/+��C��+A�e��7gR�8j��8���$$�N��Q�p��%���i���#i�2�U7�9U���ۉ�P�W�QS5����f<o�fd�V(��4��7㩝�q:l%�,2��eQ�*���^�xE��Z��o�[�!t9�ɏ7���*>�\ۡ�ɐb���ۋ�$�;�mj�-���b��5>8�PCR���D��`[9J�x� �F����ȡEs>���V>u�ͺ�(�/��N��H8��|>q�F��7~�w��K��f�6��r�\b����,n���$���"k��݈��i&��fϠQ���\Iϣq�zڜ�div��a��<�Ep��E��s��d���V��nL��H�yB���U&<��[`\��9�1�1Uu��`m�e��a9��2�ڃ��f*��{�-f��$3>ޗq4me6P�%�Y�q�˴x��Z�zQ����v��@��7w��<h4A$��B��Cz�L�%btr�%ϥ�9�k<�������!�o�{�.��9ϋ��pW��o� �*��[e�H&O/�@�kz-��Y1����1�@�����n)���a�����M�翀o�c/̷��[א{��;R�tE��Z�|���)�W��;����L��뱴H ��|�R5�k�`���X������!&B�.;���9a�-��2�@�E��
��r�u!
�筞�!��3C�8p�%�lD
�ii��q*������S#̋��*1�N�J1$]�@߲��Q�Yݣ.��p��4�a`D�s^z%�?O�ޞ��ACr���������<׹�Dv����4���8���-ׁ:,j��5���'�N�^yλѵ��M��
�^Q���x���D����E�4%L�Q�����Ck�?A|Zz5zx��|O䍠TΗw��{��5�.L���@wn
���V���	�b*,c���'o��XI/�*�XDVq����t�gx8PUUW��ڹ(�`t0[��ҳ��ҵn��_�Lω��ݴ��(0$��ȉ�T�b#�yj����ї¬�x
�J�A̲�p�
�:b�h b#g�tw��3��o�$�l˜R��۩EH?��� ذ���u�.�Jϔi�q=^�A��{�;$���<h�X�3�8�+H�� �d���b�!�V�c�!�eYR������B�5rB+�;�@�Ѽ�i�0��Y酰�κO��OC`*���(PHI|�T[L=�-Hީ_AX�b&ؿ�%N�N��7XS*5E����n�R�#��G���EL�8:��K�ސٳG��n�@���?ݥ~x�~M��)�LKCp�#�1�f�a�eO� ��!���B�\,tu��]Vq�z!���
�@�(��&���h:�.a4�8k������{k�[C�V���s���cBIt�E��ꖥyFG+̖d�:�m��9_gsǌ�u�#)��2��]x�PTw\��� �7C�*�;Ea]�1KU�Pl%@�d�1k��c�^/�5t�i��H�p�kqu�eZO�7��i�����Z���W߬d��V�`�#�ÑRt��ю(ƷU}Ѝ[1�{�<�H��@[y����-/G�jtF;� Z
��bf��~���DsRf�<٨%�&�)#?��=���">+:����Nތ�F�,�y�4���Am������%�}�[�6�}� 9��:�A��q��Q@��E��z����i{�;N�V��ZH�f�w�@'����i~o�W�.-����IR�����I]��t�c��@5���G2���)vLIA���Un�� @GuMaw��1yk4Ztv}�r��e���\K��z���h7H��i$���͚~�2�3a�H����~�1ZO��[�q��D3�k6���tQ�����v���x6��e�K�����:��E����G���+�r��G\)B1u�3P��@��<�����2t�XaJ.u-���Ў��F=r_����y���vB7��Zj"���3��x{(r�xO@�1^d���{8!i��Z?�HV��<��w@�=��Fl�R,n�:��҅���!lW�*AҋV�0�X-(oP\CN�E�����[�3�2z�'����Qu��`������3�a�Je�]x8vt��v)Y��s�8�-��jc]E0WD�� �a]��z�c��={�[/�<�hbGȏz�-� O/E�޴��If�W��Fv��W'�F���M���iLmU{���O���&R��(*S�dE���%A����"���ޙ���ͮ+U$Wt��c\��v�El��d����vr��g�|���o̬VMR9��kv7�E2+a(��n��UC�9Va���*��ȨHF���{}�'O	^H��a���m��q�fDFJ�_;+������DRMT'Ɲ���M
>N^�'��S���N�q�to��Y�����^%�p�`V��Y�NFQ7�.r>�@J��6K�n{*�+S�x�Y9��ѥ�b�$P��!1�ӈ_�{3(�b��W&4Iz�Q�}
����p&�NLݍ`J��u�!Z��ֲͥZ�K4�Q��g��p�3��v��t7�"L&��WC�f�d��^y=.�w� b��}7먴l.H��Z�j�yF��l��w�A��s<�%e��b6���)��+�� �|�]�{�:ݥ����^ڭ������)H%�eЀ���^��;�Qc��\�i"�y�L�i4l��~��gc�Ev�,&���7%-��:�w���L�%}WM�_MO�n3����
(��$f1��l,��}��:m�r�}��z6���N��aVx�+����_�#���(ȕ< ��17�Q��^�_D9�.�\�5>�^a=5F��=Mz-������[r��ɴ��_�=�c�52V����PL먫��$����b�v9�L�B���t�Bȸ.b B�*{Zة�R���U%��,^�[���j#,���b�N�D�Ar�_B���#&������f�&
o�Ŕ/o�V�9�i�O��w��/��]Մ�� ��/��O�G#�"��/ 8� �ϡ��q���O�皕�1��D���k���b�+�ߗy��֤`
�������:��f�/_��]CŴp�e{���(��e�����\@R�a��?��Fpߺ���䱅s{ma��36�63,�<:^kP�:�4�~j��5�TRSlC@[UA#�,0<(�.s�ήFEE�Y>|�ʜ��S�-�
j�U�<6�r�=�����$}�EO�B��Pn3[�I�em��E�3��P�hǦd�vW����:/����H	���~'����?�!��-��s�h�x|~)w�o�����F�w��������/K��Ŭ#ʆ��&�Ơ�"H�d���T��v������u:/0�>�?UG
*����h�r�V#�r�����V�[9U�h����<�"�`8s�`�Y,��w1����5r�$����X;��&X���I<0��2��&Q�Y�V��3�H��v��7�r0g}�����}_�v�N|[m�,v͊�y)�B6��n�ǟ�7:���oa��X�����K���ՏDI�~�a�&C�j��F0V�@&�(�\7ؙ�H��Y9R��\�R=ABy��X&K�x��]��c���0�x{Z���M�T$����ʄBɼW@��f�:ޛa��ލ
w_�䀰����S����H�s\.&�"�+dږ�
ݦ�l|����8�o��Q���wܘi!^��󉩂�5,wL�M3|�o��@���@Kbθ�Pa]C��i��KI�H�L�q��B6!^p9�   Ԡ$4�Z�U�k��vp
�0�^�Ic�MfR����
G��	vt����$�e`]�[��'�[ ,��Y*5Gl��a��ٕb��<v]���gK�f���ENmt��J���x�a��-��\�89��ѭ�'BE�C�C�f���-�5�+Or�K}��Z��H��3�7��4����V��6��S�а���Ϫ���v���P������,� �Z��K$e�!���D���Ʈ]|];o��
�Ս\�ǔ�����%���_�е@�m�R���
�<��.� �O�J����iX�����'��.�Q��Y������"=	_��O��]b^�qɉ[� -	x�W�@�u���)��l�C����ǝ��r�,��JV�6s`oo#�R�����S�h���ϗ:|�e�#`4vHb��}0�&���.��dvc��X��߫��-o��j�rV Sqz� �A�V�!/X�f>4����nF<R���z������fb�b�L�4��=q���c��P�^7=�����]B!s��Nn�|��+�n`s*m�vJ��ݤ}?��z�cn_�,�d�Zt�0;T���<���6/�$�ܞ�<j|�f���A�F���(��q���@��(�����HRq{����@1�7~/�� T��%˹z�b�"��NC]�ԇE�d��B�;G��,)}��}�)-�[�L�i�e�?�p|S�Y�+�,Z�|������`�ڛeN����P�>��Fh�k��k�f��m�Y�
�_S�Qz#�܎浘��v�:�߉�구�n|�Gؔ����u��P{�����ܪM�����}�͒��5�X�����W,эo��|:� � ͯ$�^�u%!�}܁��|S'�U-���)�.��=�JX7��Lz=j�0e-�ý���c���E�v���N��	���4JLl_8V���f�"i��~�V�H[H~� +�G v�1<n����w�������X��e�m̬�$�I�K5�k�)id[�Y�ևt�k����(?w��|��^��/�e)���k/V�L�	���2����%�����A��s��j�J(���y˔[H,�l�mz3�4�M^���z+�y�B��z�3�0)ɧ,m9�<!<{*a��4��[��>�o�^�o|d3���	vvp��K��s��nG�q�ݰ�����9�w���8x�2��1 PT���)�\6��47�I��a�N ���*?^��W���THԐa�od��D�o|�<n6�ʦɠ9�p�v�v��1;��}\�����s�Y. �9x>���NV��D|���MW�8 ^�(��
�|���]��^�gh!o���������2��Š�g�o�}�&`�|�>S�Ѳmu�2�"�f�<$����������M�u/���J�%\��[��������Rv�__�����+�_a�|-�4�q�������J�,K��[�ⵜ�.����d9u=��ՂK��?�������|��D����S���_e�L�a7�)06�O�M�vq,,S��K����n������v_e�����y��\���|��h���o�!�h#�M�4l���k'`7m�֮��iN���_�_�e��
�y���7p3��!�ұ�j�_W����#J_H�'��t�qY~�o��S�6M��G�t�.S9��V���kܷ?��C�/��FQK�8�����~4eӜ�VC��?��7� �~c���
(O�#Ϳ�(�>��0%y�v��a%��~���	F��,O,B���qӯI6���k�.�: �Jf�{��u����e���rA	��F�.��aI�K�!�����2��k���y�#8�_Y=a�ؚQ�w@��vG$�����b��-$��ҩ&��͋v���?q��r+���x8�������_(����÷{W���;2��e\|���5L�V���l���+����>Q�Y����K�~;���u���p10Jp8d���)�2�~9�O�_I����&��;�f��?��?��,©�����>�cv����P�4���Rfk������˩��W:i\�?���O��ր�4�о;3�Y�Ɵ0��mʼ =�V�W@�T�fxAx���r���� ���;��2|t~ͧ�'(��)��|���c�@�f}� ������E����M(6��M|W�TD�0��DG)�Y�`A��o���y��OB3�ጄI�ϭ.���f0��8
#(L�pNI�}����é_l�<`=)���<j*������X��{AW���� ]�/v�� �n��A��ݯ_��>N�q����5� \�1=��� ��	���x�O'�n��W�a���\��_��/^���O���hA�����_~������� ��b]�4���Z���? @�' ���0��ƒt�ӟ�ʁMpb�?e�7��������o������x|�����`�I�~��oQ0�`F@�7a���NC�a���/�uI�+A:��/Kǵ�ω���?C��'��Ҵ���(,�_?#������/��O��Z�.���'䄿�X��������,���eM�������o|�_L����_\8�� v����� ��6��u���.I' P ���l>S�hM?K���I��o���ڴ���A� ��i��������~�.̢K���O�����o�l-ߐ�'	��������A��/�?jݕj`
�eZ5/��I�.l�������a@E2.�Qp:�#
��'��y�#�!�?�����G�����NbI`���|:�	��-:���O����󧉻�k������/��m#����/�}���¿>n8��a� 4��N��?��m@�4Q��I~����4ek���t~��w�,`?���~c��v�/��OAd6߷�7�G�� d�t���7 j���1~H��"��}��@�p�r���)���j���YV��?�Ћ��������&B�<p��J~���e/zP��_C�M@{Sڄ�w����`:���I�������`�᐀��V=X�@W� �1����`���]�`2��N�+�T,��d?�������I�G��I�{���ﱂ� k
��j������P�<��|� i���.�l7�`��?�=��\����~����,�4P\�NYս\���"4��0��ɿ�v��[�����_��;����# ����D�������V�vy��O���72|şxPQ���b�˶�>�������hN��v��C�|���Ov�'��-�� �d�����MV2 23`�C�0��5,�_���Ё�;?8}nC$�c����9]����v�o،���}�=!t�O���,�ύ��:�L8#$�O�ؐ�`��ߔ�煀� �	�-X���F����L�u@� ����I5��sߣ)��o���"�M�˟�H&1 l � ԧ��g��d��}����7�Ͼ���FX���1���q����Y�_~��>�>:p���z���{>s�A��'�F
8�w���?�+Kw��&�]��ǡ���ɿÿ��������П�      y   �   x�Mбn�0���)�v !c�X��f��r$V0	vt���}7�:X:��O�d���Fc;�k���A��� ��֓��l�)؅�X��.��n'�R�1u�i�R	5�OZ���-]�9���QP[�8;�$�P�i-�a���޵Mu��zt�'T��>T�<�!�ԽI���5�d�#���r88���_�*�����o���1T	�z�ϓ���`O���LFao�&o����������4���?�q�      {      x�3�4�46����� ,�      }      x������ � �            x������ � �      �   v   x�%�;�0��z|���hr�4�`���ml!nO�)�ѯ��a�2���!�w����'R���,Ϡ��@<���pS�J�p�J&�Ժ+��*�7�j[��]���=K��i�9��R�+�      �      x��}�r�Ȳ��
��T����<ܷ���R�T�LYm�@���IHB�k���6�6+�uE���/iw� �D�۽g�n���p��#c����׼e�v��2fs^i7Mś�>j���4�5Y��p-̓��u�gGZ>�֋8\h5|?ͫZ��M���k+V�p�Vůx�,�궀�઒��2��w��⪎�yWi��YiqFߐ+�+z5/�֓���>���႕,�y	���i��p�Y�qx�:/�)˪E\��x¦y�j�E<�?`�'�3��hQ�E��_�U�M���y����,W�(�'v��y��̓_SVT�����Kt��ogs�ͧ���Ot��M�0uW7�`d'�eX�o{�縆�s4�F�g�KXȉ�O�K���}��P,�|�Y3`�CS.��G��˒g@��W�<,�w
�+m͓�e>Ð��3䊸��y(�9k�,�����h�m�'щ�[�����O���w|���Z���
��	�`'U��D��|��nE�/y��<*�1ɲ�t�b0�}�I�{q���W_�����'&ٖ��8���l��]��l��\slX#ya=���q�M�z(:۟ E�(X{��9wD�oj�U����N���H�b�2>7�8��K���q\(��l3����Y�76|_�&�'�ŊguÒD\>m�$������A؅��]�5�F�����H��/���򡊿��nu͓�Ւ� 'C;6u���_�?���E������7��}���_���c��i ~�ϱa�nI@%�����E"��ū8�_�?��\��B<ƿ�
��%�.B!\�D
q���+��M�>���f�����̷�T�Q S	R�n-+,�)�f���˅N��y�Z�.��Z� �uNߑ+�"8�>fy�T�%��k�5�T\r��*��e--UOˏI���P5��c�o��d�X�]��n�����|Y-��]�cu�1����ځ�
!�M3t�S30���蔕���u�R���~�@��GBe�^>dR��[��:_��� �IC*KًP� ��~�
��0\a-�/��8�w�*
�2m��"�/�!uS�Ô�3^
���%��=祖�	��\ISNa��B�z��8/r����ٮ����K�I��6,�]����r�}70A����m��e���� n��p�C�$���#2b@ Ώ��x�༅%�E��]�G���h�t�����`"�Y�ܥ�u$ ��D
�MH�hK
o��;��$�Á�`쁓������%j���\
:Z\��넧AG᡻TMY��r'ɴ��b�x�{x�Z�A�8~4�p�z�;�6ϭ}��x.f���}ܱ]�7����$�m���0}���跰Χ��o����l�L�?�DɷTj�V��N</"�E
U�z��}����u�M��r�����!�g@PHSV�@|�Xh��n�����Y�!�{h��[pG��� vqe�
b3�M�`�G�P}
�n?yTK���C\�Ӎ����^`x�y���|z�˯k��y��Z�m��DBe"(Nڎ76&ǓW �M^Mh7�+"0���@��3�vI�	�Bf�cJ�j� �:0�r���<�c�7��#���U��D|œ� _#�YMf0�$¨ �c��I;d�k�&C7B��!��\��}`���6�m|�J@�pZS�,��o|�ߥx��p�K�a?ά������t-��� 8�m��شG����������l��
RU��Cj�*�������
�8p%f�� �d#��
&J���d�ҒDI^��Ƅ�x�i4�1�~ "Y����L�yS�-+#)Dp��u�e`�JX@�&�P2`���8Q=3ӝe�^cn��}����c����0�X.}�t��<���u�t��:����T��ÿ�n7�C�@�@n#X�=m(=���j����N�B�ɪ(��7y�)k*��@�7͂�)C�3�7X�H�����:�n��u�e߰��@`��I�j��:S�k�VCHƁ�hH�F��pϐ������I�-Ŝ������!N���͠�+K�~�c��^����Jj/�\���X0<g��mG�yc�@�ݲ*.{"JN"�$%؛�� x_ 0�A􌆯�	��v�8F�6e��V'����^��Th��&����!�:\�4��+Y�'����(���H2�q+x�r��/�]^�1�΢d-G�Ы��)ba�W�r �^�Y�� Y�+���H�\�0� �d ���(����3��GZ�jw�@	�Z�0��b��S6�6��~q����<F����_n�hm�s-ϲ��,�� '�v��c������-@� p�1����~��/X.�T�Ⱥ� ���LBN%"��"P���i���о�ڝF��؋�ͭ1�>����ˏ\z��8�k��#�FN �����՚���G����8e�6�3�)�7�-86����
u�����,�Q_>c@�#)d,ҁ&��[5�:��V�ܥ���PA����^|-��):���AB��J飻�i�]��+�p�be(d.z/���	4�����5E@�]o�߂4��o��CxZ�dj���l0Ut�l���Ց<=���'���[,�:��6��v>�~]�G<c�s<O�@�M�I-����+Kq7>h_�:W%��hݣ;*��۷q�p� \H~]��|�����}%��3���f�x�S<�7PAH��?�Ӹ{�;��a�I���� �M�k�Z^��"e����j�T��v1X6zT�� TK���e'[4�\H�� �DhNZ���8/V�����ti��\�fJ>�%.d���7���\sz�n��@��#:>H [P�ԉ�#o@�p�����d-w��+��a�-��݉���[��5�)���{oO�E/Jđ��aN6I���H;'���x 9����l��Q�ڹ����8,I�j���zo8qvf�?O�L�:m��c02�̌�9鐲�8�����t����>�+����ZHI�L�v���O�j�^���A�8�()U4/1'��
.�]gA<������Y�}�(��xV!W��Q�w���V�%��0f3.B$��Sp��&��s����@-�Z�	�u�|�q^4�dXhN�S��P�_�h�a~�D;�\/��]g{V��u�b�7��G�<ʐ��YXQ_wMC �3Q%�n�c��V�)8�A�ɚ_���-6e�ǀ�$�%��BQ0A�G�-@�I�� G"Iƅ(��܈��3q&����&G+I�U�[pRp���d�c̒h~% �@���R����Y���aX�
JCTM�n�~��"m�s���=����?���L���@���p��,���[ވ(������t��<O�9q�=)��$ث��b�@[�U�z��m� �T��9��#�'t-pLH�<.�lKH�_��eRrf�K7)u\���y�n�#k�#v}��̼������ǲ�J�ir
�:�g��o��X$~;�+3�~�C}�A�=�/�e*7GQw �&�"��C총}�;��VV�p)�6���C��N��L2)��A��J��q��8�����^�#��l��u�W�|=��y|}�*���g�v|�V�3v\�2��bY.��õ���D�kL�����w����rS5�bf�N(�B�(k��Z@���@������E�ӌ̓XWA�����@p����:�cr��/�
�Qbh���t��!V�f_x��<Ch�TQHi=���]��p��\�f��v|�|��	�O7g�c�6W
�0�L��o�O��7�F��R/^K���ٙ�s7�a^�.���Ct�2��uQq~)�#�S���脰��1���0c����B�s���K8r *u+1 �*��yfR�U�ș��y�r$n�5 �k>-���)#���M��c�X���!�mBh�0'3,�>�u�Y�������    }��ǳy�����L�9�a�"b���0�jjp���h���E`�Đ��i��Q�YZZA�(e�M�v'J{��Psu�(�
�� ���r�����'p%)%�/�u�4��+���x>ż�EBKN����P Vxkx����G*�D�Ũ�❈1~�� ��!��\��.�Fi^n<�����h97n/b����:	_7+�ֳ-��o�cgt�9e���Rz�1���L�G@ �9�T��<�'�*��0��]
��1R!���J���F�B�I�eSVŀə0��A�QRH.L�|�7Gr!�z�+���*Q�N@q 3� Q�AaiÍ��l�{������zrqz�93�O�� ̚���c{�����A`Y��XcI���r7b]�H]�e��-	�$3���+�׏�Q�H�iC_cG}��)(��79��0=�i��t6XNޔ#�)��AU�#\�2TS07@see�\������["L<�g�� ��Ҕ5���ooYv��TQ���_��.SN�"ax�;9?�n��z5��j^�j����������s��`��\�r�v�6�]߷u�������p�k�[2��$"�����T��b�g��3<�\�Ǜ��9QH_T`�����\:���S���I��$	Z�9�THMeNk�@:�E�������%�)+�:�̣&TKv��\�8���w��a�U$�~��ʕ$��2�~�v�6��є������ }h!bWT�C�u#]��.9�TI˭PY]z��X�u:������%8��ny�H��5�"����}÷���E��	��40�g�c���	F�x9��Bcu%ӵ�G=�H��#�����-J���i��2���$=�Dy��8Y59��gI�G�Ӡ��B���]�������J���.��*�MOVA�i��i�s� P߀�9�Á�+s�T�8|�|��A����E��X;��8`��\�%oE����^S*�H�&<�פ�-][�IR9Y�f��$�[�~��闋������
l߳����XX6� � �1�`��صF����vE�H�>�P��?>��q�a�';�9�zsa���6^&c���ܩz_�	tF���*F�ϳ�9��/e�3p[��jc�}ѐ���M��c�x�9ؿm�\a	a�u�u���x,�@����>���(� o
d��-p�/�o�4&ԃ��"�=�V�ET�Y��6��!���<�AG1�1����IK��(�X��O��.��*����0�X�Wa\� |Q��v�����+\�ֽ0��t8���l�<��d���#��_�D`e�|��
�3PM������H�ǁF��������l�O X��P8�\]�����j�������W��%�����Vdײ����k�r�  ��K�������q��,�������`�q4i����3u��f�xޫ����k���7�Ǎo9�DB�
��,�2$�,���x>{�s�� ,v���o
I$`�"!�����4�����7�-�T����&��!��6!ݪJs��^�2�]Ժ�E� �T����T涡�0a�������YmJ@y.�����|���m�S�#�]��Cv�i��ϟ���>j}/pM���d��勔�����p�=w���k�d��XG}=�^GT���E����i���z��dU��e�C>;aE����#�]RL�#Y������� �3�[�E�2�H�	�p7?��yc��{cM��*d7_ʏ�F���1 ����UB�Ű�i3����5F����ݑ
�A;uu���;�~� "�a)*|w�՗���4����.�9��P�X�)�<����y�(��9�A!�hR�dB������7뷰S��߻��X`9�~yH��9��}y�x��շ���᥹l�H�9�Ⱦj޴��lx��[�i�8�cC��!�p� �HJ|x/>Te���&V5ʔI�m�	O��\VI��BO��Dy
��I��&_�`)�!�9�_M���9���#=_��;4ԂY� kXRDT���h�ѠP�]����+��e�z�.��_�g��^����r=/��y���y?�J���a�Zs���ﮎ��96�ѧ�i�c�7��ﾖ%�B�L�+Sͼy�~� k�,�2��c��m�(q�(��K�JbD6�(CO��Y�}!j��	��"G�CAHV�w��XF�;��V@�)Ǵ���D/������@DH1�T��R���\�V����LU�&!��d�!�E^��^��j��� ���K6�Oj�R�U� �E��X_V������:;�2��������$��q��K���EAa%A�Cj޲^=�����]q]��������S�r%��A����lK� �M��7�p��#��͂�i��Z��x���?~G�a@Ў5*����'��ܻՏ*X�a-
Ǭ3ab�}c6�hp�ٺ����sVN174�fXB� 7�-��Z��|u!St*���>�.Ҳm_�����y����������6j��;��y�m;��I�[�oz�n���hX)p�Ӓ�g�ѭ�A�R>I?��m�2��ÉE��jJ*��Ȣ��.�N8�*T֘R7��7;�0����ª ���ty�HwS>a�
\���C$_�������Pti-�g�/1[�e�|��1[Y���aX�/}�L,�(Ӳ,��H����Է)/�6����pϥ�:����?4Ç:9�J���C�V4VU2���n�=�c��)T.�䍓���(|@ݜ�O��f<4�Ũ�㼔'\� �3٪����n��U2���^}�P$� ]s.`�� u^��\����k-�=c^�7w߮&��,k��/�o���1O(,'��U�ۅ��V����Y��1`�<��)%���� �ʢnyх*�5QZ�]Kd�:\�%H0��,I݇�FD���K:i?ہI��u\4��/��w�Tw���i�;����y�\�(����;塃F��9Ĺ�]|�M�Lҳ�����b��Wy���r���ON�������h� ]�E�*%��-a[H�� VW䵥j$�\��B(z��zI���=#	 �k��=�W$�]eZ~�7WX��"��X�U-P�*�#*��F<�0V�7��;��>���0�_�ڙ�jn������Ѻ_o��8 Ju��1@��;�0]����
O��a���O�DgfP��_D���/4<��Rl��<�5�����4`�E��Ld���39�a�]��`ExT�$0J�����:!bU�i�����lV/6�뽐������M�զ���x��p�p Lʡ�?z &�i��Q_��'	�˩��ʚx�:���w��9L��*�3�O�ct!Q��W��J&��L�����aq�JR�"hi�V�����A�!V`���r\p=E;�C�	�����X�b����b�*��E�cXD�^V���^D�#؆�D�e�x��g;~�!BKD��1���@��dU��4g�D
���v�}��Ќ���в�m@I�H%AD)8;�`���W��+���2բ>@�2�$PQ�'�b�7g����tx79Ѳ\�~�zN�uQWƥ(�AoҬ�jRU�����)r�Q��<�WloĶv�>��7���W���T�7<,s�m�<#�U鮃������qƑ�aE�;G�MU!RL�)E�0��;Pxi�R��i�h]�)`��]0غ�-1����I��-h-�v��y���"����5�!��`E��r�Y/G�I�.+~__V��d�,�~���ʤ�㺺��3=�V���,߶}sl�#��n3��ӢKÕ۲M�B~{��pD]��P54��28�v�]������*�����P�����Ӑ>|�|�(�k��'@�s^)���J�<֊��D�J�HzA����+hk��|�m�0	���4�R�ڳ��UK	�a�<�� �ۡ��{�vu�~�x��?�����ũ'#Ęl�� ���~,p�ܱe�N�/[��@��_�؁\    3lk���h"�פ3@|r썗��Zd�\����>.]��mR��z����Bq��P�Ԉ[Ԑ%4-Я*J�&�	�T>�n������e�FE���"�.G�:c�|.S8E�dsه~3����ޗ2�`��d�>��/������	
���۶Eo�ax�eX#�[�h2/��Fʑ���a�᳘��P��d���J�%��@�U�/��OI�5��7
SP���YBö@@�0f��T��A�(�)+�b��ĳ�	�dP�Nզ$#q7�	��R���n�t�9���w��%}�ܾ�ec��ݜ?����@G��g���4 UJ�V �e�&��	Xh��ʾuM�o�pUD�p(�)�$���;H�xE�·0��U�|���2>�a�� ��n�O(�zjJ٘=S��b�&@C��oИL�t=�2�s�m�I�u���/o>?<>��]�>���5%�� ��;��'����M��j\��=��&+8�l��(�Vr��e"��HJ�X���հCpG�+ 2�?r��c�K^U�l��8հQ�~Q�V7�Dn���1U�a�l�/��E�"ﲊ��4��B|M��	�c������������QJ�|�A���(����w2�?d+�l������� ��OO�����,�o���3�|��j8�c[�i�32��c�Md	 ڼ�}�^���.��f�^��;�57K��t�lw����������v&yJ݋��Z�;u�ʨw[��3�2ѝ�ן�Y�2tT��g�~JS։�u[O9x�����}7^�ͼy���f�я��̕���\���Z�l�	t�a�a��m{c+u#D�5�o
vt!��a�=k�8b��6&�/�y� wd�笏��+��o��N2!Q�W�ռ�.L�۪��x#��=(��6�cbI͐5��C��t������tf�~�?��Ys�B�A�.0Ñ��a�g���ms$ʞ�x��Z�0Z��d�X I�E��Uu�L�7w��^=18�|)�3G�*��[� ��x�d�H�Cuk�;U ��t���	���"��"$��/KjV�ج�*��ˋ�������;sj�#9�R��C۲e� D�
p�e�m0�����OD[�y�]��`����8p����2.؛�u=�{�H��b��2��mVa�QF�߲� �n���� W�ӵ��m���k��:��_�����$�_��&%��ތ�N��O*#������3����0Z�g���E ]�)˖]�������R��2��ۍ��=��57��N�+]��lx�$X�,?��&���jo8�p>=����_��Ww�~���\Sw��ܱeO  ]��7M��;���NW����{GC�^�d��$ݶ��������jOM2c/E�d[�b!����1s�]6"m��Tt�S'�/2H}���J.ڙeG���Q�T�AR�*�w%�{��c[c���k�M-�����߷9,�[q��֗E�/�>�8f\�5/��AÎ�'n�k��X��`�#�R��ۍve,Je2t�5�@�.y�u4��R�Z�1�4�b��?5���pM�#�N�������}��R������	v���q��KY&�������`�T�# �}TL��.?%"��@/�R�1�3;�H��h�ׁ���K<�Z�H�R�нEO�<ڜ�C���2�,y0���i.�@8*�������P�-���ȝ߮����k>>4�$���!ݴ,��E�Uɻ�A��� �ѥ�X�H6��������
�"T���５�}�_J�!S��E�������YcF;)��\N�Es�vA�5�=+�Bq�tn�8]�Xwu��4�SDg5��b��H7�sp��ȷՇC�odh-�>�y����RE�����|)w��4��NH{�1;�}�<?���V!uі�=E9�td���	����b��T���XE���%z�!ʹ�cՍ���TB��E�g���/]E��l�#a(���+�Ӏz�:@����ñUu� #}�2���*�i,��c�_ �qg�0U �v�Q���G[��W��8�_���r�����M�̓8k7�]��P��]���T��Uf��v �+U�31UP)�E�1��eb)����"x�����t�t�5~j7��%~x�����١ؾ��X
���iG�u�3t�l�tƶ�S�i��X	p�8�of�P4�kR��&�#���{j�O���,}P�7}��"M�TK��*a�LGǉq2�%���1�'O���N���Ь�Lә�ګPg�˿�������a-��Q���8А��,�uD�(Tt���'T��w��4�%ǟ�2���e���F�x�p5� �L*��b�D���|�����D�8�L�i��n7��)��]e�X�����?l���9��ɩLTf7m�p��1}F�I�2��33?�MLmX"Dv���R�8C%sH�õ�Z���>�_�<V�W������TSC85�m��Ȩ��aݭ㸁��`t�T�����SU�uWRE�M��2W���� ��� ���#0-�O�膠F`҈�X���b��4U�������vt�����85�����R��I�JjR���բJ��\��Wͬ���K�v�?�^����.��ˉ��ZƱ�n�,x_�i�0)�6ݱ�o��"�%ΏD/�%�C��[��C�s�i���P���>�cJ�ޮH��5۩�5g�� ��z�Y�t_��m2�d�4��r#�"B��D���l�x�uy55_x�|����������[��x�<�<���N�Dѐ"���+���:������^L�<P�h���Z�U3|ӗ�☹C�&+�mH�*?���R"�h�o"�+�A[K����/���]������br��s�
�8�c�b�
�P¯�VY�ώ��~7�v�A�f�^־|o���V���l6��#�y#�u��T������5��رD���� [�±��!�l���'�vCRjtǺ�E�����Y�)Xm��$�cN/��b�V�<�؈ �5�{���ȻĔ�rvU)��Â�rW9kR�u��@3���.&'Y��+�o� o��'*��SQ#���\�.����UY�B�	�(��d,i���P���.�6e�F��,Uǈ�os_��Gl!��YtDA���v~�
|�#k1�OM��:�_bq�:H4�G�}"8}$��GL:�4"'D���q�M۫t����^�x�+���q߼6���TI�cyV ��d��5���]���Á7yF�v;����8��h���]{�3ú�������#g"�9���я"�Y����� ��q��\��b	��]�L?+��]"L��R{b�)K��/�S�d@D��cF�D�;)���#5% t�a�ei</E]����n��`�9�/ ]'�%ܞ�5�� �K���l݊RԐ��n�BE�ST���"��1)�j]ĳߨ��j�҈dȇ,����H<���Œ�u�P���E���a�\�p��ݖ;�iК���wDm����TXE j<�xd�M_�M;�8�gQ��;3�k�<�𦝫F0l��Β�G��b�n	`D̍��dŒ���*�O�1 a�DtE$�<�]�C9�*����;z� k	X@��夲�qI��d��d������f+���B:�ax�%J�щ�-�k� ��A�V�c��n��&�����Gcs��w���� �ŋ��n�ibJ����\�|(�6�7P�w�O�������M7����پh+�ؗ���ͷ�@?�EU�� �O�(p����]J��Țȁ�݀�����?f�5i����V��;� ��vv���v�?.�Hɘ�*�ޭzC<�C2�
AЈU9&��J�R�-Q8ԄW��Ac"��?�b�WX3j��v��Q�x,��%)'	Z�JM9���ݥ~����c�G�Rѻw��~�|*vỀ��4����=�]?����'�i�ߟ�	�w�9ŝ�B�,_������>����u~�j���oփ�Yݷ���ߕ-�I#y=p\Pk0:
<5k'L��� ,  ��U�0@���H#b
G�����Gy�R�r��A�C
H<��d֎)���/]UGD�pH��]u���%@8}��>F�@e-��}�;_���.���c��RU�%�O��e)�E��Ev��rA��t�3&'�휜�3Q��T��\6u�8�N�#��jV�k���S�̏��	]�>���j�I�����6�7]���l(T�S"D�U�<�ʆ?LE���I�g��/��;EMUSMes�G<��"���~l��}0�.��n��8����9�[�u���r�Oyxzс'��q2��?����      �      x������ � �      �   .   x�3�t�+I-*(J�+M-�2��/-�,.�2�tL�������� �Z      �   *   x���	 0��l1�ո�:�T�$}`Z��0�iO�gH�      �   f  x�e�Ks�0��u���P�]/h�܄�L7#E���W;�2��Y��|s(��=�%�
��%�x��xϑ��+D�*�n��=ϸ?�ro�H��J�}D�ण>��ˆ���Y:4-�/Y���s�,fU}����[�Ԟf4�]Y2��J�/�㹗��_��ls�ޭ��a�vgv�j�7�/�MT��(��3�gV��fM��ܫ��[%���@�L�'_#�rv�*d���"4wY��w��y 1�=�O��ڒxE0��)14
�1��}Cw�^��aD����v�\���k�WрhY�>2�6��p�n5r�Z~4�NU��=ohZ��j|�B��+�&Č�|KG^��bȷ�0!���G��j�     