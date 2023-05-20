PGDMP         (                {        	   tripto_DB    15.2    15.2 r    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33050 	   tripto_DB    DATABASE     �   CREATE DATABASE "tripto_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "tripto_DB";
                postgres    false            �            1259    33051    EnterprenuerToActivity    TABLE     �   CREATE TABLE public."EnterprenuerToActivity" (
    id integer NOT NULL,
    "EnterpreneuerID" integer,
    "activityID" integer
);
 ,   DROP TABLE public."EnterprenuerToActivity";
       public         heap    postgres    false            �            1259    33054    EnterprenuerToActivity_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EnterprenuerToActivity_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."EnterprenuerToActivity_id_seq";
       public          postgres    false    214            �           0    0    EnterprenuerToActivity_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."EnterprenuerToActivity_id_seq" OWNED BY public."EnterprenuerToActivity".id;
          public          postgres    false    215            �            1259    33086    PlacesToTypes    TABLE     s   CREATE TABLE public."PlacesToTypes" (
    id integer NOT NULL,
    place_id integer,
    "placeType_id" integer
);
 #   DROP TABLE public."PlacesToTypes";
       public         heap    postgres    false            �            1259    33055 
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
       public         heap    postgres    false            �            1259    33060    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    216            �           0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    217            �            1259    33061    activityType    TABLE     ^   CREATE TABLE public."activityType" (
    id integer NOT NULL,
    "Type" character varying
);
 "   DROP TABLE public."activityType";
       public         heap    postgres    false            �            1259    33066    activityType_id_seq    SEQUENCE     �   CREATE SEQUENCE public."activityType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."activityType_id_seq";
       public          postgres    false    218            �           0    0    activityType_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."activityType_id_seq" OWNED BY public."activityType".id;
          public          postgres    false    219            �            1259    33067    interestsToUsers    TABLE     r   CREATE TABLE public."interestsToUsers" (
    id integer NOT NULL,
    user_id integer,
    interest_id integer
);
 &   DROP TABLE public."interestsToUsers";
       public         heap    postgres    false            �            1259    33070    interestsToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."interestsToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."interestsToUsers_id_seq";
       public          postgres    false    220            �           0    0    interestsToUsers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."interestsToUsers_id_seq" OWNED BY public."interestsToUsers".id;
          public          postgres    false    221            �            1259    33071 
   placeTypes    TABLE     w   CREATE TABLE public."placeTypes" (
    id integer NOT NULL,
    name character varying,
    image character varying
);
     DROP TABLE public."placeTypes";
       public         heap    postgres    false            �            1259    33076    placeTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placeTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."placeTypes_id_seq";
       public          postgres    false    222            �           0    0    placeTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."placeTypes_id_seq" OWNED BY public."placeTypes".id;
          public          postgres    false    223            �            1259    33077    places    TABLE     �   CREATE TABLE public.places (
    id integer NOT NULL,
    "placeName" character varying,
    description character varying,
    address character varying,
    image character varying,
    rating double precision,
    location character varying
);
    DROP TABLE public.places;
       public         heap    postgres    false            �            1259    33082    placesToActivities    TABLE     u   CREATE TABLE public."placesToActivities" (
    id integer NOT NULL,
    place_id integer,
    activity_id integer
);
 (   DROP TABLE public."placesToActivities";
       public         heap    postgres    false            �            1259    33085    placesToActivities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToActivities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."placesToActivities_id_seq";
       public          postgres    false    225            �           0    0    placesToActivities_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."placesToActivities_id_seq" OWNED BY public."placesToActivities".id;
          public          postgres    false    226            �            1259    33089    placesToTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToTypes_id_seq";
       public          postgres    false    227            �           0    0    placesToTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToTypes_id_seq" OWNED BY public."PlacesToTypes".id;
          public          postgres    false    228            �            1259    33090    places_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.places_id_seq;
       public          postgres    false    224            �           0    0    places_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;
          public          postgres    false    229            �            1259    33091    ratings    TABLE     K   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    33094    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    230            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    231            �            1259    33095    roles    TABLE     S   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    33100    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    232            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    233            �            1259    33101    searchhistory    TABLE     ?   CREATE TABLE public.searchhistory (
    id integer NOT NULL
);
 !   DROP TABLE public.searchhistory;
       public         heap    postgres    false            �            1259    33104    searchhistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.searchhistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.searchhistory_id_seq;
       public          postgres    false    234            �           0    0    searchhistory_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.searchhistory_id_seq OWNED BY public.searchhistory.id;
          public          postgres    false    235            �            1259    33105    users    TABLE     1  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    33110    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    236            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    237            �           2604    33111    EnterprenuerToActivity id    DEFAULT     �   ALTER TABLE ONLY public."EnterprenuerToActivity" ALTER COLUMN id SET DEFAULT nextval('public."EnterprenuerToActivity_id_seq"'::regclass);
 J   ALTER TABLE public."EnterprenuerToActivity" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    33118    PlacesToTypes id    DEFAULT     x   ALTER TABLE ONLY public."PlacesToTypes" ALTER COLUMN id SET DEFAULT nextval('public."placesToTypes_id_seq"'::regclass);
 A   ALTER TABLE public."PlacesToTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    33112    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    33113    activityType id    DEFAULT     v   ALTER TABLE ONLY public."activityType" ALTER COLUMN id SET DEFAULT nextval('public."activityType_id_seq"'::regclass);
 @   ALTER TABLE public."activityType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    33114    interestsToUsers id    DEFAULT     ~   ALTER TABLE ONLY public."interestsToUsers" ALTER COLUMN id SET DEFAULT nextval('public."interestsToUsers_id_seq"'::regclass);
 D   ALTER TABLE public."interestsToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    33115    placeTypes id    DEFAULT     r   ALTER TABLE ONLY public."placeTypes" ALTER COLUMN id SET DEFAULT nextval('public."placeTypes_id_seq"'::regclass);
 >   ALTER TABLE public."placeTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    33116 	   places id    DEFAULT     f   ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);
 8   ALTER TABLE public.places ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    224            �           2604    33117    placesToActivities id    DEFAULT     �   ALTER TABLE ONLY public."placesToActivities" ALTER COLUMN id SET DEFAULT nextval('public."placesToActivities_id_seq"'::regclass);
 F   ALTER TABLE public."placesToActivities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    33119 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    33120    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    33121    searchhistory id    DEFAULT     t   ALTER TABLE ONLY public.searchhistory ALTER COLUMN id SET DEFAULT nextval('public.searchhistory_id_seq'::regclass);
 ?   ALTER TABLE public.searchhistory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    33122    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            k          0    33051    EnterprenuerToActivity 
   TABLE DATA           W   COPY public."EnterprenuerToActivity" (id, "EnterpreneuerID", "activityID") FROM stdin;
    public          postgres    false    214    �       x          0    33086    PlacesToTypes 
   TABLE DATA           G   COPY public."PlacesToTypes" (id, place_id, "placeType_id") FROM stdin;
    public          postgres    false    227   =�       m          0    33055 
   activities 
   TABLE DATA           i   COPY public.activities (id, name, description, place_id, "activityType_id", location, image) FROM stdin;
    public          postgres    false    216   D�       o          0    33061    activityType 
   TABLE DATA           4   COPY public."activityType" (id, "Type") FROM stdin;
    public          postgres    false    218   xV      q          0    33067    interestsToUsers 
   TABLE DATA           F   COPY public."interestsToUsers" (id, user_id, interest_id) FROM stdin;
    public          postgres    false    220   �W      s          0    33071 
   placeTypes 
   TABLE DATA           7   COPY public."placeTypes" (id, name, image) FROM stdin;
    public          postgres    false    222   �W      u          0    33077    places 
   TABLE DATA           `   COPY public.places (id, "placeName", description, address, image, rating, location) FROM stdin;
    public          postgres    false    224   >X      v          0    33082    placesToActivities 
   TABLE DATA           I   COPY public."placesToActivities" (id, place_id, activity_id) FROM stdin;
    public          postgres    false    225   ��      {          0    33091    ratings 
   TABLE DATA           +   COPY public.ratings (id, rate) FROM stdin;
    public          postgres    false    230   ��      }          0    33095    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    232   ς                0    33101    searchhistory 
   TABLE DATA           +   COPY public.searchhistory (id) FROM stdin;
    public          postgres    false    234   �      �          0    33105    users 
   TABLE DATA           w   COPY public.users (id, email, hashed_password, is_active, age, country, username, role_id, geolat, geolng) FROM stdin;
    public          postgres    false    236   *�      �           0    0    EnterprenuerToActivity_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."EnterprenuerToActivity_id_seq"', 1, false);
          public          postgres    false    215            �           0    0    activities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.activities_id_seq', 1, false);
          public          postgres    false    217            �           0    0    activityType_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."activityType_id_seq"', 1, false);
          public          postgres    false    219            �           0    0    interestsToUsers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."interestsToUsers_id_seq"', 1, false);
          public          postgres    false    221            �           0    0    placeTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."placeTypes_id_seq"', 1, false);
          public          postgres    false    223            �           0    0    placesToActivities_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."placesToActivities_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    placesToTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."placesToTypes_id_seq"', 1, false);
          public          postgres    false    228            �           0    0    places_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.places_id_seq', 1, false);
          public          postgres    false    229            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    231            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    233            �           0    0    searchhistory_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.searchhistory_id_seq', 1, false);
          public          postgres    false    235            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          postgres    false    237            �           2606    33125 2   EnterprenuerToActivity EnterprenuerToActivity_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."EnterprenuerToActivity"
    ADD CONSTRAINT "EnterprenuerToActivity_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."EnterprenuerToActivity" DROP CONSTRAINT "EnterprenuerToActivity_pkey";
       public            postgres    false    214            �           2606    33127    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    216            �           2606    33129    activityType activityType_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."activityType"
    ADD CONSTRAINT "activityType_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."activityType" DROP CONSTRAINT "activityType_pkey";
       public            postgres    false    218            �           2606    33131 &   interestsToUsers interestsToUsers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_pkey";
       public            postgres    false    220            �           2606    33133    placeTypes placeTypes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_name_key";
       public            postgres    false    222            �           2606    33135    placeTypes placeTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_pkey";
       public            postgres    false    222            �           2606    33137 *   placesToActivities placesToActivities_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."placesToActivities"
    ADD CONSTRAINT "placesToActivities_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."placesToActivities" DROP CONSTRAINT "placesToActivities_pkey";
       public            postgres    false    225            �           2606    33139     PlacesToTypes placesToTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_pkey";
       public            postgres    false    227            �           2606    33141    places places_name_key 
   CONSTRAINT     X   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_name_key UNIQUE ("placeName");
 @   ALTER TABLE ONLY public.places DROP CONSTRAINT places_name_key;
       public            postgres    false    224            �           2606    33143    places places_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
       public            postgres    false    224            �           2606    33145    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    230            �           2606    33147    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    232            �           2606    33149    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    232            �           2606    33151     searchhistory searchhistory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_pkey;
       public            postgres    false    234            �           2606    33153    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    236            �           1259    33154    ix_activities_id    INDEX     E   CREATE INDEX ix_activities_id ON public.activities USING btree (id);
 $   DROP INDEX public.ix_activities_id;
       public            postgres    false    216            �           1259    33155    ix_interestsToUsers_id    INDEX     U   CREATE INDEX "ix_interestsToUsers_id" ON public."interestsToUsers" USING btree (id);
 ,   DROP INDEX public."ix_interestsToUsers_id";
       public            postgres    false    220            �           1259    33156    ix_placeTypes_id    INDEX     I   CREATE INDEX "ix_placeTypes_id" ON public."placeTypes" USING btree (id);
 &   DROP INDEX public."ix_placeTypes_id";
       public            postgres    false    222            �           1259    33157    ix_placesToActivities_id    INDEX     Y   CREATE INDEX "ix_placesToActivities_id" ON public."placesToActivities" USING btree (id);
 .   DROP INDEX public."ix_placesToActivities_id";
       public            postgres    false    225            �           1259    33158    ix_placesToTypes_id    INDEX     O   CREATE INDEX "ix_placesToTypes_id" ON public."PlacesToTypes" USING btree (id);
 )   DROP INDEX public."ix_placesToTypes_id";
       public            postgres    false    227            �           1259    33159    ix_places_id    INDEX     =   CREATE INDEX ix_places_id ON public.places USING btree (id);
     DROP INDEX public.ix_places_id;
       public            postgres    false    224            �           1259    33160    ix_ratings_id    INDEX     ?   CREATE INDEX ix_ratings_id ON public.ratings USING btree (id);
 !   DROP INDEX public.ix_ratings_id;
       public            postgres    false    230            �           1259    33161    ix_roles_id    INDEX     ;   CREATE INDEX ix_roles_id ON public.roles USING btree (id);
    DROP INDEX public.ix_roles_id;
       public            postgres    false    232            �           1259    33162    ix_searchhistory_id    INDEX     K   CREATE INDEX ix_searchhistory_id ON public.searchhistory USING btree (id);
 '   DROP INDEX public.ix_searchhistory_id;
       public            postgres    false    234            �           1259    33163    ix_users_email    INDEX     A   CREATE INDEX ix_users_email ON public.users USING btree (email);
 "   DROP INDEX public.ix_users_email;
       public            postgres    false    236            �           1259    33164    ix_users_id    INDEX     ;   CREATE INDEX ix_users_id ON public.users USING btree (id);
    DROP INDEX public.ix_users_id;
       public            postgres    false    236            �           1259    33165    ix_users_username    INDEX     N   CREATE UNIQUE INDEX ix_users_username ON public.users USING btree (username);
 %   DROP INDEX public.ix_users_username;
       public            postgres    false    236            �           2606    40979 >   EnterprenuerToActivity EnterprenuerToActivity_activity_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EnterprenuerToActivity"
    ADD CONSTRAINT "EnterprenuerToActivity_activity_id_fkey" FOREIGN KEY ("activityID") REFERENCES public.activities(id) NOT VALID;
 l   ALTER TABLE ONLY public."EnterprenuerToActivity" DROP CONSTRAINT "EnterprenuerToActivity_activity_id_fkey";
       public          postgres    false    214    216    3243            �           2606    40974 B   EnterprenuerToActivity EnterprenuerToActivity_enterpreuner_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EnterprenuerToActivity"
    ADD CONSTRAINT "EnterprenuerToActivity_enterpreuner_id_fkey" FOREIGN KEY ("EnterpreneuerID") REFERENCES public.users(id) NOT VALID;
 p   ALTER TABLE ONLY public."EnterprenuerToActivity" DROP CONSTRAINT "EnterprenuerToActivity_enterpreuner_id_fkey";
       public          postgres    false    214    236    3281            �           2606    33207 #   activities activites_places_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activites_places_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 M   ALTER TABLE ONLY public.activities DROP CONSTRAINT activites_places_id_fkey;
       public          postgres    false    3259    224    216            �           2606    33166    activities activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY ("activityType_id") REFERENCES public."activityType"(id) NOT VALID;
 K   ALTER TABLE ONLY public.activities DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    3246    218    216            �           2606    33197 "   PlacesToTypes activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 P   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    224    3259    227            �           2606    33171 2   interestsToUsers interestsToUsers_interest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_interest_id_fkey" FOREIGN KEY (interest_id) REFERENCES public."placeTypes"(id);
 `   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_interest_id_fkey";
       public          postgres    false    222    3254    220            �           2606    33176 .   interestsToUsers interestsToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_user_id_fkey";
       public          postgres    false    236    3281    220            �           2606    33181 6   placesToActivities placesToActivities_activity_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToActivities"
    ADD CONSTRAINT "placesToActivities_activity_id_fkey" FOREIGN KEY (activity_id) REFERENCES public.activities(id);
 d   ALTER TABLE ONLY public."placesToActivities" DROP CONSTRAINT "placesToActivities_activity_id_fkey";
       public          postgres    false    216    3243    225            �           2606    33202 3   placesToActivities placesToActivities_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToActivities"
    ADD CONSTRAINT "placesToActivities_place_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id) NOT VALID;
 a   ALTER TABLE ONLY public."placesToActivities" DROP CONSTRAINT "placesToActivities_place_id_fkey";
       public          postgres    false    224    3259    225            �           2606    33186 -   PlacesToTypes placesToTypes_placeType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PlacesToTypes"
    ADD CONSTRAINT "placesToTypes_placeType_id_fkey" FOREIGN KEY ("placeType_id") REFERENCES public."placeTypes"(id);
 [   ALTER TABLE ONLY public."PlacesToTypes" DROP CONSTRAINT "placesToTypes_placeType_id_fkey";
       public          postgres    false    3254    227    222            �           2606    33191    users users_role_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fkey;
       public          postgres    false    236    3273    232            k      x������ � �      x   �  x�-�˕ !��`�a�7��?��b悄2mL�_Eg�Q�'�׿�q�b<�3�|��e��̵l�O��m�} �շ��;�b,6�G�o��Ā},&�x��E$1: 4�����F�z����N�h8!���6@pqN>���QW�G�+���/�I<��N0���,q��∙b�D�ib\ɍqDRmq�@�'�X��)��8��w����+���nn��G,|��b�}%�b������Hn�-�XKܱ�_{KعD�a�3�G��Qa� L��!��=Kd>��~U=%A�E)�8M����F��wIN�)θCqKD�Q l"�W$�i/��rd���Hh��%�x[���n>�(.��^c�#���DM�p�+����J'fB�dAJ�+��)!9y�����H��H��+H��-}Z��D�#�qKp���D %!=���d�|ϛgݞᕘ�HL�%&]��#۟��K�� ��땅�ߧ�%��IT��&���/"����      m      x�Ļײ�Ȗx]�;��%�/�0��P��;��x�A��bn���$��eN�tZSG��޵I"�+�Z�I�n?�Ŗ/_|]Vۿ|����p�߭_I���5.uYq���[���K�o��NU��_�}�Ko_]�ʿ��Z�_qZ�y�ՍC�˗:��g_��U�W����5_ٸ��b�z��zH�Oh�+^��_�/����%��PM�~��3�����!�_է� z����Z�m����_F�3̶~�nq����W��_��O�O�Y��ڶi��T��/e��B��-���;[�#�S:V��䍸��d9�q�~�����{�s��:���Y�H��m��8{�����=�}��q��CT!�bP��Ώ���4S���DP��� ���#��?���B@�"c��J�OBA��A�<���!���������.��A�/?9ےoi�I�b\��������������������r�ǥ˾�n�ׯb���i7��u|.)�\5n�/�N7P���<���uIK�Ɵ��,�/���;�,~�ⷪ'pߧ�q�*P������/�i�/>#��2��b�A=9y�˿]e�8����26��ԟ\a7%������� ��G=�xNx�+_��:�#f���c"vL��<S��a��;�'��L��d�;�ql?��I����� ��{��xv���ngW���+��W�~�Pg9Hߩ���%���Fn �@��J*�x����@�I���1��!K�O�f_阶[\ک>�bm��=�_S;�������I��(�Ws[i�Z�,'�m���F}��(C!�>��0ݏ럽����}v�� ߈X�o����U������#��:��o	���/��z��;�'�P����R/_�^��|��z :����ů2Y��FK>|��7�/�jPA~)���=߅��uޤ� j�|�1���0����
TP:����s��_�����g/_Y|�����s�j>���ҍA�q���GxZ������߃�)
 ��zI��?��^��@��g�`U�?������ǀ�˗:��x�rAQ�`�` �
���w@5N�Z���>01~�-����5�; �S=�_ӳ(���L�]���@���u͟�w��ĩ�IT<�qz�m���O?
u��'; _6���z����l��e�����&h~2
T�&p��:)
RI��#?�[������,�1�d��������?��(�j�;|uƔV9H�r �DU�|�q��>�gE���.����
_1�F����������B�`�$��x��.`)��ǖ�/%��`F߱���?����GZ�(!����ʹ͉<����C�ٱ�o�`D^?\���<�#K{��"Y�"�=M��*b�ƾ���a�PZYOZ3���cm��T���d����v������������I���˩��'$�:��7}�k����rPc�g E(�^�Oj�5�^
�#u+E/�ם���㣉nYD��v��}�c,~����_����'���o�E�����Oq���q	�Bqa)r��p�2f�t[�K�׭���x��(��$˻/�r�ag?�O��������#� � k�H ��flU��TA�E�ߡ+���G�M�_���z����ږq�֯���
�> ,z�70�����-Y�)�_q��2����~�}8� W�V��+������7�*�����'|�c���Ѓ�6���'=K���[�h��1��7"�g�aJ@7��:}e������u~�- �p�a��� ��_�Rg��"��_c��0����#��#O��A�yvC2���l"��*� ��ȸh�]��D1������d�o�B�wv}�1�d׏�;��t��O�7}2�ߐ]�OZ�VK� o+�J������X���o��q�$ ��&|��oI>v�ǡ�r?�����QA�ݍ�w�YS�~����{����r%�󗃯�s:E��n���/C���׷d�>�J>��V�w�;����߆�9=��"���E��U��$�����kX��#�����ߊ�3GP�q�}����ʞ�1�l���=J�?���{�U�o(��@~TuR�iۮߌ�G�_u� �PZ���@��[�O�(�?Z|��duQ����W$�\0(��р�Ͼ��g���f�:�_f�9'��k'}v��:�sa����b��]A/�w������O��{��w)h�巯��%��,��`������w�����y�/_����c�+@�&���-�w�~��p��q�q��7jB�oqC(�B0td�nه��|��ߍ~+M�O*~��Cq�$����w?J�z�6��+���_c&0�e 2�5��{���Z��_���a��_C�i'H�F�W�ڏxm�.�?�x�(�R��%���3�*F*��1�{@�_�����u�L�|���Au�+��W��3��,s ��y��RP��/��?��񐂼P�;�DX�qɀ�~�~���G��T>�]��hA�Oc�yP���O��=]���B~��N���3Y��*�<b-6����o��۪e�c��,����T�������q����6�q���#m���?gp��������?�sE�*�h��}N���?�w����A�9���� �Ǻ�ӏϡ����q�B�Bc(����ԟ�˚w�p=��*`�Va������{�`�?��~?����D��i�ɥ@m�����M�q��"�T��Mpd�����V@]��`���1Mq�9��cW?�2�&PF@��]���ˏ� Hܿ:��;�'��R*���_u���"���=��3��g|�h�|k35������Oe��8,�sZuT����x����?b�����d ^�!F��cȿ����3ޭZr`������Q	H0�����s{=�z���7�l�s�Jw?����ׯ���G��zz?� )�����|����/0��@��W|( �_��
�����[��a�zF�eP��3sٿcY�����4
j����>��~���h�r�H�K��-�iBw���Q`��л3��~�����P��`Å���x�h�d��x��=9�'�Jo�������!9<j��ݨ�]s0��W��1S�y[t�Ar�]�h��ZC��9鷿�������&D�/�Rɤ��H%����4���1���:ǿ��Ӵ�1t(�V�12�4K[O�ϔ�������xN�h�o�����ܫ�U�6�=	V��EQ�=���rQ���7-��pm�KJ�2���%c���X���g,�O����8J	�E������w4�w��?��y�P������%��;�E��;Ѻ�K��/�0hXjg�p�Ԉ#K�X�Ii��gٚ�XIH�^)�C�Aeg-K�N3��zF}�֭� �YT�;�������ES�N�B�a��-6�P����M��+ɒ�zDv:�v#R�K;-��j<@!�E��%�����5g�X5!�k'���y���^����s�;2�+��v
;�ޛ�,^d��o._߂�;R��+�<,��(�9[���}���}>T���RYĽ$	a��U�B.W�z�i��hI������4M**W�@;s�7��"�}D�㡦�!�}�py#��J��q
��U"���Y#G��2����Rc��,��x���ۀ&H*�Cuv�����Z󥔅}"�u���zyK�7�����aT�a߆s�5����\�	w�h�a�l>X���H��L�薫��O����$R�r��BU��c�i,�����]��2'�"�Z�5��ѡ8~���T��1'N(?�A�N��g����������s�Ἷ*�K^�E��e��e\Hl��\f�sa�3MD��F��v����J���K�}f�t9G��M�me��fLu��B@�m�>�$�d�t�!$�J:27�͏(z����bG������_	b�5,펌�}�,��hy�T��~�&���з1ѷB�L��r��A���$]�e��}�G�    �K���K �07[�]�T��!��!5K�RT��5L�D^v ��o�t�^�?���&��{)�p��ť��A�]��`l�*÷?j?�0�Wl�k�^��D���hN���>�k�$��&�d>M�6C&�8s�t��3u��]�#%b�D�_	=�_�^pE)��.f06�d_
��CF�[��P�*U�m�
��� ��Q�	��\j��roý���R_d�N�1�f���6l�Ž�20�Cy�.+�*Qd�.�|7��hЧxf�oX3��o�]w�@l͸��� ����qDVa.	JgY 0���>nX �U�l:G5���H���NPc�nD��8�N�MAT�y��#{��:pҫfߺ�
`H!\-&��!��4K�@γHFܗvރ��u�8�C0ix<���Ÿ�$��؞�hPGHx�������i$�)_rY�[�h&Ɍ�R�]�ĎJ4G�&���i��L2�v�
ӷ{V�|�TZ�q^�L����+Ũ��Sĝ=g3_1��n��%�UJk��P��+�]�nm����|MRU����	������J��4�G���ry(���i݂ezytޣ��q�[x�k�]p<[h=��u�|?�y� ����I�̜A��A� u�J��5�VG�%��S���H�����ȷ���2H�JR���M��pğ<�F$�%���hG+O�ji�(�&ȃ�z��~KY
����<<mwj.�Q�0ݽ,Qx)n�"�t������#��0cs-���F~N�y��Z�Jg��!�po�/[W�����,���Q��؅�Jk�x�Ȋ!��	�Omp����؜U�+�['�ٱ%Wѿ��P�ăvn�7jK@�L3 ��p�no2����	#���E����gGoݬ_*���<�Ǥ�9��!�l��g��N�Y�5�_�W�Áٚե�j���5>�S�Ŝ=�U7�5��9����:ݓ�h�ٳR���5�!��0����b��1�KV�M&�?�z�� Ae�d�#l��'CrH�!V��M��1�&��v����"�*Z ��y�������}|K��Z�8Ų��{�ì�'F��-{	7�tbpg��>�m�%�&��h��\��4����k�Y<�Y�P��M�8,V9���薺�5?oq���K��&,=[-}���d���	�^ƨ����S��A]����vm�t�w��mP�b�%U�9P繯�Hx��Ey*��s��6��	>T6���J ��3D:"@�%�ˣO�}���6�c�7�9Y�YM�6!X�������y�S;7ˇ��Ϩ=9q�0l��+�t��G� ����(��rie�Х���Y�>��mgg���b�\�Է�E��"Cá�n�F��㽳t" ���f1�����Λ�%��CZY���
��n0��	��T��``~�H,��н����&DT1,��[G�$���1��K�p�v�MF;���6\��S�9�e���g/b����"�(�;�Ŕx@�v�Ȋ;RH��8d;���7`zAan��Ղ�ؔ
FͅhH@y-��|B�~�֕�^�k�/�������\�;ω�z�a���{�/� ̍ns��I9�]w�{�=��:_���WOJ��z=�g�f�!�؉*�t�<ra�6+�ԍ��j!Ʃ1�4��ѯ���m�ּ�Ї����K	�Y��/����R����K�I�����P�P�\����<��x>��B$z�ރw�|�w��rDCj>�*��Ԩ ��f�O@;;�/8]���(�7��ݵ{�T���Q����Z��䍅�cG�CЙw���\4�1O�(y譇�
�m!��s�g�M;00��� A�{~�2~ְ-�Zm;�ŵ[��'i�5��y�ܩ���[��ǯ�9j�dT�KW*|vƈi�w�2�?_�A��-p�[gl/e{��Q��i�~����I�/�JAƳ��,8�FE�%�1u��Y蕩�=_/K~�G`Z���,[ b�n��{�M:`��*E���8�`9�t�;�%͝�o�C�=�}1U-�����P0R���p��j���z��iՐ��նKt��v�ʁ*_`#-Z6�a�MZEI�I�#|������n��؁s�.v;nd4�D9Ӫ�2��24�BK�bh�,��9(��eu�Εõ!��8g�֭�E�E���F�`3̭� ��5�����q8/.���U��Y i���gr�+h�Fjfb���R;��O�T$ɣ��OE��k;aȹa�s)��j����[�gį��iO5�Y6�O't}n�� %�M�M�XM���I�_N#{]c ��G���,o��!�	��hp�������5�)_�k_Gh�E�ۓW�`�l���O���1��{$�^���4y�=D�vb����mS�/�5��^�+?x@��A˚Ն5K�VÜX|x�3�;nc�R��!_�y��6�����>
�darZ׹��Y%ϔ��r@M��j��۩�p�\�#��a����1�G/5��$Z���e�����\}g��a�&d���ޢ!E�T���n���+�=xja��*c���)tA��x�[�����N��)��'��Wk3�}�*���Ll��B�����;�0�mBOg	`B�Oq��n)�!*�"Q�l�9	z�&:t�>u�Ca��ے�ס�3r&{f��e[m������%|8�Q#ߟ�4w �u�?�N��vmv !��\��a������$������䩾�t˳��[.-���%�M~����U��_))cI��=�yK�׫brA�J��<6�Q�b�8et��E�4���c<�W&`xT"c��j����!�0���G���ϋ�f�X$>뇡�h,��Ɠ!&�3�-;�p��6�i���� �\�Ny�G��I�cñ܀k�L��`�Z�l3X4�3��`ȡ�o��&�i������F)�{_�6v��+�$����|qf�YZ��d�D���F��!F�zv�l鯽����� �n���|&��:�K�՘>Dہw'����d�Ο�*�������=��v��k�͌����	o�$�#vU*x��ξm�Z��K�^��L���T.��B��%��p�/�"[�w�8�)2�5�rNk�T����PRF�z��y� �d?{��x��f��I>*6��5��GSr����Ȣ~#_v,M)�:��Br�]�T,�%Aifi�^���vP|IRe.�	m!�rD_�4��ߟ��=R�Dk��!�ёמ=�g��N�*���28���4�ۉ�،j+�I��$���f�w���<�~���������#�+&���W�zt����~���J1�K�]����y6�e}�'�w�\��z�#l����
�[@)�HyB8g�<�dH�[ۈ�lhv�xLv�����3ύ�V#M�.d¼�Gc�&F*wW����sM�=o���#X�-�6������ٺ'[�A��I����nP�o5�mZh��D��^�ql��M�<�Y�	�AArW���$�� -���=��g\�A;�훰�o���RU�;-WKȖZ�rH��5^��9��P��Hb�٧��w�BK5�	ɣ�e?����[����j�+X��V�O��>g%Sʭ����5�7μM���4�NOhz���M�_�-T�VB�����VY⥻��
B4��9O��!�+��/#����O;m7y��B�(0˸��	���*��[�� �S��}#m��:�u��\s�DJ����GǌԤ]/>U%q�%T����B7�Wʢ�>�y<����Ŕ��S�?�ͳ�����x������:�:m˭|�����8�2��|�oL�2a.S�؇]���N�M%���$���~p�.IJ��ۋ/hl���uŋ$�47�ˢi5�n\1�2�P��擿@	=�C
�����-��^#-K�b�6V֛��ʅ�Xb�H�{O{
}a�CÇ����m=��c���:+#��!#]�6��$ĳÙ��]<˫������r��v�r��qg$C��1H��SUmQv�V��Q�ñ�ft�Y�UO��D/C�.1��77�����1qg*qc����`'޼��=�=a.X��g:�    C!�F�s�x�Czt�8M��$x�	t\�񲓝��9p	����D�2��{�N�)0�l=�Ϸ���z��j$�S�U�NO�9!��k@��n�{����T�����y㪫�+w���Z�"���(������푯 ���SY �m��������2���{a�?yx�G.݌�W����-=�r����<Ó����*Os��ߤ�s�pK�*�}d����]��ޛ��rS`&Zf�7�H�y%�{g��b�5�2�����ʯ���EC hZj���� �xs6��ŵ��)�v��l�,60��fo����Ǜ���e"I�][e�^Ž��Dmg��=w���׃�f�YG����X��{�8ĳ<���i���iX]=��ߚML�s^� �w�9���2��~��璮۬��.G�{�	�E/jE����*8���X��wF�f�{���1�m/����=X��lj�b�?D�I*�����Rc�
���ۘ��� �I߃U���u�6���'~����� �ﾏÔɀ��"�|�F�ւ�J��/}�m�s�Y�2�\W�-seD/�U�Pm�|��.�q#B��gP��e��S���DS��+�Ϻ��{tt��{��Żhq��N����c��~��{˳#����o9�����U=}��*��G,�B����0B�,�����=B�a���v�eA8���N0}��2~�����F< �(��P���Pʰ�O��so2C�I.:l��*�@��cU�XZЃ�]����#�T9GHE�+�����.C瘉	p=:o��URckXI61�~D�-���hF~&W`�ݯ�����Ǵͯ.f�5v7ٚ ߗ'�>��W�'Qћ^^f��t�ۂv�/*�<r-vk~N�]�����/k��@�CB1x�է�%bA�ųfѾ!�v��*��5')��w��=5��e�tT�-6IqU�	���y�9�Sc�Jd�,�e�1#h��hV�H�oZ���:��ב�W�J�P�i�R�b�)�$��wۊ+ӈ����:*�������}owΙ(l��7���x?�^��9d�T
H�����ۘ>�G��o��U!����~5�r52�wx܉{���<�q��T�2.�,1�/�d�2�5�����hb��K��Y-��h��W�[/ɟڞaX��b!r�M�ZB��Z�8+�k6�VU,�i��0Z�6����f�W �Z��E��g�յ������|/��.'��r��s�m:�:r><��&���haV�?ҍ��H�
\g�h7�n{��O'"�3��?ful1G�U+�E^��Jmu�&%��z�V�L��ܹ����&�
�XH���&Y�n�v�c\K�s6����tn��J:z!��V��JZF���Έ%�/�f9�}Z��������E#z��C^6N^�Cy�2�-Q�D���zs-;�P�s	*N?WZ��aN��\U?�E�
m��SnJ��!��eo�pI�s�=�H�l�˕=>gz�Z ������sX��!V�Q��-�}�'�<7����a�C�[�6cc&]�n-!�{BX�7�ʕ&ﾔ�U�W��H�2����s���[��ˀ�I�.����i�ss?-�5yϤ����:�6v�vc9-�78}�a򩛔�gXy���-{R���͕���#���ȯX�7�ul��)IJ)��Y���{p����o�JD�-f��
��0����{E�e~kVE�w?d��p�x�sv��M�������0��>1�0k�{3�}9����].��	��M	ܮs��GYo��iu�! n4�:����b%�& ���&y�X�@8��	ܓut����ܙ�nݢ,_|���w����W鲱��^uك��I_�3+M7a=~
|��bG3!;1�ӟ5���+۟ �!�Qr[]�)�ԥ�=����]*\�d�q��xz�Ƥ1=1d�vҌd���n��R�[\ǖ֗��c4����xN�ȦC�����ޕ[�x!��s����S�����FÛ�O��j���-z�Q�_����9�yg4a��3�� ;�-\ �z�Ѭ�IX	��S�d!���N~_t?�'�Uv}b;���W���w���j�-ZV�
,���6�h�����8���
rL:%3m�1��K_ݺƯRTZ��.�����
����+֬���[������ O8�k���)��e-0h���S}6'��9l�˫�e�3Kl��;�0t��[>�2#==�>�|��z�\.w,�g{%���E� �c�y����I��a��S76��_��`��^@a��h��ĝ{9eX6��k�Me=2m�ݼJ���"<�m�����/\u����:�d�����c�J�:�sU���c����d�{�7�L!����!
�};�7�d�z��2��]JOP���N�H}^�|b�@�??�b-�#��0N6���ʭ�u�6JKK��R��N໨T]� ��MZ��%�<`�KPM�>z�D�:�miH��h�'�3�ι�j�x�;8!�\���*����r�&/����z;�?�iq�4�55��J�SzXX/N3%;��6a+�r����7i�20�%6FD}�u��"�^��H+;�~��	00��d�����]�v��û��q''�Ƴ�T�{��h��⟂�w��چ�[!�x�q}���F�VB�MU�)��'���ۅ�+\���\ei�YW��dY����sec�Bz��fc����7J����>l��tk.W���  ��2���r�.�p���>�EL�5E\��k�3� ���%Lt~��.��!*u�z#z�Q鵈�M�:y��.3�Q��.oڼQ(c�SPwO^��yM��Z�v�zXMx������%$�b��	���ZV����tm�]�:4�j�p��Rs|���u�>ˌ4���RA�Bm�dR�D\��Oj�Cxv8��669ɋ�s���]+O):�!I��-A\�+�dA�HL���*ȽTX+Y�ug��)�n��hMG��sv������PDb���y��HX\`P#�����=uU=]O��G���!|W&yv�]'o�Y�6�$��m��O����Rˋ̣&^���)�^�x��_C������]'1�u~���� J��b4�����0�z�/���skY>�)�]!�N���O�|��`zZ�yffՌ��ok�xD�C��s�p�m��n���q�/D��<�ʣǙ�Y���u�(Ϻ�AM��|,��-��z�������G�;���r����w�<o���z(��}y��*�U�1�a��hF�K{�|��m{}^M%���UV7��mֳ(�=^ؚ9 nE�3c\f���=zȜ����tf�|��ŀ��x�����ſ���ۚF6"�2M'�ӍAjD�'E�L��Y�I�&���"�R뱳��:-3%A�dbV�ꇴZ�O��ni��9uft���!�t���R��l+j���<�2�x�}K�+1/�wi��"��Y��DKD�M�&�=?<�9M!9-�=���
�2�܃"���
��m*rv���	ϯ����D�C�/�b�� �([�5r�a5�,ݑ1����ŞDͦ��������5�e�g �'�5�<�M3�#3�E����l�P�8�-(���jͥ�$��K��"�b����[6�|�6KST������2�eɛ�@q"��s�猸�nY�Ū"���@��{��`𻊫�L]Ǫr/�_��0ң��������e��g:��|G�&�'��n�RO�%Z�r}-y��ܥA�5�nP�%J�J�d>������tCD� �-R"
-�%7S��*���%gϷJk�«^�(�(MW�k�!2�q�Т���^AU�E��9i��Y�l�0�����2u����^FO5ת�告���̓ze�m�R朋=6�I��|@4��j��,��W��d(��7��rE�Ƿ���9��.F}'�$(�4�ڛѨr�܃8��8
��T[�r��zﶅ���es�7x��e$c ��}�9���F�oA�C�T�1)>�ӘH�z�M�g�e����i    ��Ry���
#��}��L&��%�G��1����0����(NPUnt�[u�y��a�W�2� lF_6l���K*t@��ԍ�y��^PX�����Dd��ʄ@�,�:�\'��Sw;&��o|� Y�*��<�|;jn( ��8�L�����^�S$9����3<����sgg�%���-����g�s*^��]�D��f/S&q�އ[���c�9�?�F��J[|
�́�7[��p8����x %�����S�ڈ?qF{������<����PU`<h��z���h��.iZ��3��71�\W��{�%����mʩ���d�m��`b��ֲ�0�	>!�c�h5�^]r<#�z�zVs>�@{��en��%����U֒&xV��r͘�4B9���4.<>B_�C��N���%�LZ�9��mEǝ��q2Kv��m;�6M�[vO�>�&�j n��;����9�A�V|z���m�٬��k3�AK>ہ
%oWm��T/NՐ�3�u�Ҵ��;'�̦�M�`�ϵT�9hy���%T/%(��l�U�-�5�%Z�u�:F��{��=0G~�jr9T�4��..Ü���!��͢O�j7�=��f��'��Kp���(�M7>�M�a-��JNw�4I���C?ܼl�p�������=��i��$��-a�㎜�N��[����ӵcZ��*�������^/�uoT ��C����T�&%�lL;$�w:���r����c��� ��5����#�t$�)���A|x�m":��|v��a��|>	�\��7�ͪ�����R_h�� �C� �*`�r��ɏ;!XrT&v�f��>��:�W���_��23~��E[u�� 2�����䱴z&o�5j�3��BHB/�)���	��v���]���f��ƫM8�@�Rn>�> Ec/h������~,��bE�`���/-�T\ܼ�,9i[���3"�Ӓ�%�7K�[��4��
��MX�����鹋�h���}7�4y�L�8��PlÛeoPG<q�yA�wZ9���{m+ ��)��Z���.���ҍt�l�$��x㵲�#��:n4�E_W� +�.��i��	�&B%Xu�q�q���{]v��w=��~���i�t�q&n� S��f`�\� �=�h�WQם�y���cy��[������vVEͪ�7����}�qu^�w`�|�u�t�f�L����%��ob�����M��ls��gh(�����u�s��^��!O�f�a��'B#��ݖ�'��Y�5c嚺�P.H��2��Vw�r��Zk-�{�S�c:q9���+\rg��gƝ}Wz�b��u����v�l�9����D�H�p���x{
�ݨ���ԄO�ŲL4褱�,$EF���R/�ϣ�z��G;�\g�Y7_'b�3A������0���}Zm*�n���8���ħa����jq���`�R�,!
��oF�^Oz̊�RJ�f��`Yv�!Z������\���W�g�C��]çP?���;�	�g����W2��1�i�ڦs�x�t����C��� t�tP`�nХUW<����%���%��r����jRM(�v��*��*Eu��>f�/o���_�~����J∏��E�~�J7�� �:ʍ'�YI��p�j�VS��]�=�ό�Y�v��P�947Q���_fZ���m{�o�����������3�K��8�B6��9��_&[r��?uO`�}mp#���'��<<:��rM�%�A�O��Fh!��j�V0��-��\\� �$�����<�*c�Z�a�.�K��,��\M�!?yyH���2��Is�\|d&VnC/���U�)�p��}��/�Σ�Q(K��e���.f����w8�=��예��Y�"��*=���9)�`O�y
Q�vu���ì���EWL��&W�+��zH.�:O�������4snf�J�����F|�^��֕'�[ѯ����r���m�.��R����/��&jK�8t�
���/�?w�m��~%.&�{ag|�Y�!��")e�z���q�Ͱ6�W��ϥC�U~$�y���P�.AxO4�L�0��:d~�G�p�ЖI7��џs��/�� �o"�Ľ
_�t۝��f�"��C �~��tгW;����˳��'!B	(PY���t���KNB��q?��M/sy�$l��iR��vr�5�$���G�
3|A�	'_2��Ėߦ4�@]���ɉ��~�=��Λ/�;��1�X�Wc��@�Н>`!Q*��D������1�X�%��&����]�e���N��:ON�Ό��8?�jFŷ�����Co����L���1(��_U��ny0��З!Mu۴�u��MD���% f$�vb3�)�}㑫a��,�$p\��R��aGW��o����n(����g<�d�1"6��KX��+��"�_�>-`�.O�@n���Cz~޸Tv`�ѐA׵P��+p!ڈ�b
��La��1a/r3[pBl��o�hqSV����	���[�N<�����U��ҍ�2��L�nF�S���
�/�I�P_�ek��7�n9�ƑYد��fo����m-���4)��}B�̈́�;���Onn�k�úO��]x�޾�qe���痨�HBӺAZ(ǺS]�+�#��K �TFF7~��V��?��~>�b>��je��TXo�M������@����!�n �=�BgT�6�(rN����)1��P��0u��q1�(�����u�.���M������>m��J}�m�-����#
��ēT�R���J��.~;�4?�t.��tZ���~����73g6����UYkG�y,������G:E㱕�h��|��'/線���_Am:��\��N�Y{�>B�%������
�MG����p�)��8���'FD1Q�|�_�_��&;w�O��EZ��c�-r��CEپt2�B͓gͷ�����7����f��U)ϵA&'@GWJ�w|�/�����*��ve$ͼ'�-񩞹V��L�פt��+��>��i���W�Cyj�G?�^�ZS�`��^��w��9xgLcJ+�e߻7F9*�ð��/��4�Z�0u�"I���3���&���C��͇@���J����D�����Z�̧E�z�l�˯�������NB������X�L/;�z^ũ�R'��bV��w����B����'*��-7?�aN)w.��5��A㙥޲�^��vQՋ~پ=R�Uh�HR(�Q��p~�\�Ig�^�K����y�aC������7��Ss͂T��Cj�Kà8���jj�%��,���$k���T��4�h��c:���>�߮ߺ�ю��y�_�����cO�Mk���a�B�U����tq�>�M��s�a����۟���a��!�>��#���M�i�WU}��_-5˹{�Y`Fx��^�e��)�[
���.z�Ѻ���A������9�9�V֦�s�~pS�`��_��ӛK@O����!2cnE�P���浏��GN��[@:Kķ���{w+k��nlZ�ޅ�kp��x>O�␡���O�^�ٍ-�p+�WJ�3~z��z�_�/��� 0�ز�\�)�^�<}��II�B��q&}PO&�R�UQ�����f�v��ȯ�U��<��B�<���-v�m番Rۛɉ���ш�
E���fY��Xa��_��v�&�k��?�߷C�*�PC@kϴ_�Lӡ�I\�0A�O�ѭ�9�ׂE�ˏ�5�HGR�|����5��^�M���&�����a�3{��atS	?�/����p�螢�]l>�ڢ�|����m��U��
#�m���LVv/R���ąT<�	��E��y��Ā�4�o{����@@���-�j�M%||0��p��_ٸF�T�U�*��9R#.�91e�Ix�'-�H�������/{&��U��_H�@����vѓXe�-u�Tx�#B�:�4�[_'�T�)�A0�����Y#�Gh�|������B'sĆ�N1H_#�j�ño���s���-f    ��mة�XI��o��Y��y��K�g�&'<ԫ��Y����`���B�OV��&�7�<�G^�E*�Rd������Qb'�X�v�a�Ϯ�{Q���B������3d,�O�����vgǉ�	`z?mH��������9C����(��Y�c�u�e�e����(K���ܡ�c����/�-�x�d���M�nRwb��_��nE���{KY��� 3h�>m���/6�j��s��z!`!bӐ�(je!��K��=��竏��~7g�9"b<�$Z����γ~�rn�fG��0�,�Qe�l
)��G�R�3B#o��q�l>��5��?��������RwaX<2��� ���Rl��k��\�O���	�мŋx�>�}6�Qs�v����e~X��P\����A=�u��q��t�:��f�a�s�ȿ6��S��?�<=j'�"+bܝ�h�oq�����|�e'!�%���(�=&@YY�/ѯ��:"���;6{ع��eqp�p>�VH{��?0ɣ�OӇ�Y����殍.[VZZ366�̊��q؋=F��eE�EE�՜�C�7�Uw$�'����طz���kQQz����3��c�^�j�󙭆,�b�]DSd���Y��^9�pY0��#4���۲� ��V���Z��!�,_�H�� @C���U�<!�(�Gb4���$���,1P:��w�ˁse��|���U$^(H��ُ}��w�p��Ld[8�H�5�"hȫ��G�^�!HWn�f�굶�[�D�~c�v���j8��x��V��
���%[������������A�Z�U˙1O�vc�V �7�I}@�g!�NZۜW3q�Sc�� �@�Ѡ�{�X�}=ka�k���]`f�d��"շ��� ����N�=p4o`)�;I�s
�n�/�C Q�A�Oy�n+&�/�h��N�g]g����iy<ߓ�'��. i�slH�$��/��{cd	�4���7C_D�!&IO��c�.�F�'���,��"���a*E8�y�i;�l7}D������:Ln��h���]x@$.Zz�Sة ��v!}�>}l�p�E�d�"�ZM�县�W��J��E�aO ��^*��lZ���ѡc�^.�+�&/��L�eD�-qG�%q��+�_;x۞�a�ȼJ^ػ֐0��$uۄt�z]�B����F�hZD�E�y�-��$��}��̴��=��>�}t�C�E:������Rk["5�nme��^�oJq1ĭ����q��ض�Q隅����-)�v��^�#	�#`�1)��x���a�4�o'/qW\���:�mM/�4�x���Hk��h 4�d��Y~��]��A�y��s������gx�4��,������<�q�o�M��A��J��%'N�U��M_��M����h���1t��@���w��Z5����z_1�E��޻����U�_��n��z�&k���Ӻ�U���2M�X�ƫ���JV���OUKF�ŕm`�i��o'W>;[<����Z�l��~F�M�a��<K&hxE��$���@��)���l�uSrd��Ȕ�|�����+C��c�h�dWv���w�=9��<o���-��fz�-f\{��*��!o�u?\�菜<g��,�3R�?O�uqt��X��^�?���\�P�� /^q0���~`�ad��L�h����dC� H
�����B��l�5��x)��i517~��f�9[}���wz��	՝<6B��7�W�!8l�X�����?������q^�:-���O�:>�E`�څG����E��A+�P�/O��s<xg�N���U�o�����[�H zmJ���!���<��\Y&�@	(~�Dg��
f�|��Uj)j˺>;`37+�+�G��׋��N�Č�~5gUy���"VI:^��3+|egv���Ư؜����S��������@�:g��ۿ���r�q��X�,ha���2;�FK[���c$���] ӣ�s=�k���1t�9��B��n��ߴ�j�<�
�%��2�snK�p%�m@;£z�%~�~��C4�s��wC+�s:��n;3�a�$=
@7�]U3/�wsr����3h���1����d|�k����������y���B�񣹣b>�}Off;D��1ƙ+��@�����z�TA������û�zh�����'��9g�����_�����k�'�z����`s����c�쾫Ӡ�ѵ
��h��ۏ.	��x�Ԉ������z��iS����+~������?�;J,����;�LK̘IL��T��XHT��HΘ���H���+\Ԫ ��~K@F���,p\�E�s��JR�Or�^z#�˗v��ۗq�Կ?�_�~��s��1��vL�K��w��[iZ����Y�eh�gO`J]z��{�s,��]��[^�;�b*��"�=�y��!��v��?*�.�4��@���4����&{?����9����!���	K��6�2����x�C��?���#W�-0�%_^ ��2m��oj����ҲC�<m\�D���S�W�9xdRA����þ�h~e\�Y��Y?���AG�6r@-�_� [AX������ٟD7oU�*��w��E�`;��T��Y��>P��Bn���Gr�%2R�Pbٽ1RtI��Itu̯�����`<m�Yʆ��H5^�@mTjy�h�G�� ��²fG[������Yt)ˌ-�\\��ٶx^�U~q5y�-�ғ\4��=����+���+��%�[۩����.6�_Z����`0Զr z+��i�4w��2��Smp���³;�"=xĐ���
�e����,�D7�L�8�ѸcnT�>�*U���Y���O߼���!�=����_iq)
�B��a޺d�~M��Q':Y��e�%e���ZS=�=���C����Cϖg`�(�(���ARʧX�l�\�I���-��3^�3��Y;�m�ܗ���UNeA�{<�4�N���: �;��v+*P���8��V�M:�(i�3������M��h:}1k��&֮í�2��y`���=�Ԉ:Eɣ�u��iɜ;5*!h�1�׷���l�TE��!�QQsW�[e��-��@���:Tߖ��)õ R��S�!��Đ�=����w�����(�0ڝ��|ٟ�����z�J��2]#��%���~u����N�2Ϥ^1xj��G۸Ӌ��O��/�4���`c�u�卽����q�jbS��@?��z�t֑���{� `z1�}�F.����g�ǆ��贲o]�X�ҩ���m��C_���R�� ���5_����W�A{�G�+fxûR�����q\P�ԁ��k�@���|[�Չ���jo��%�W-��	�>A�x�z�w9-��vm������nM<�W��ݼ�uVr����'�����/������o:�����'�ջ�Y���_��h���Au�G�+�Bz.^�3���U\˾`�ش�Ԯ���(�i���6�T�*{�G�<�d�W'W��
''���t��s��[v�:`[�c�l�+��O�e���'\��l����J�����ow��x��~���+�̦��q�F1Z�ɷ�Dj��k���ʷ���g�,�yM��1�8���
�&���'��u�����ɰy�_h]��s�:�G�X���Gv�]�מ��߅ރ��{��}ε^J�q�[,z�îL��u2#�o�(Q�p���	@.��=��QVi�=J�m�Då�:0��w�$�cz٤�e=�@+�Mu8����~ytS�A��Ƕ��N[�̫D4�ѝ\!�@;�2u�+�]�K|ޤ�D
��@?~a!Ђ�/5��J�����]�h4�� 7O4	>>pr
[�`���b�y���dɑ_dxٖ^|$M�67����?�kwv?\�i�MY�O ��`w�3�o��veQ��WES�v<i �Fȥ���	�W)�q����Jc^���X<����X��M8�N�����⤟�.b��_~�/zo\4��1�F�t�PuW�������y��Ub��%@e�㥼�~�W�OG�fY�A��ev���V�Wt����?��˻���;Jx���cŸ    �kXO�	�N0��p�N0�36�
�WԾ��e��3Vb.�G'F�q�"i�IN.\�JKTb���]��f�`���nl�}�[~����]&���e=��N��?��+�l��*@��͞�ecp����x*�C�~��������!���wh���h�_@���:�����豈]��,�o'�D?AźQ��ͨ]n�~1;�hˁp�c�pZn��)^�BpD�U�F幍��/�+<�G����-�y4j�jo�4�EX��33�Utf���3p̻w0>]�TS:�����q�g�N��:W�{{@�c�^��p���E�UWz*�7M#Dۈ���v��<v�Ui���4e�K���K��
�7ֵA}(�bM�@uؐ�^�*3��-{��{�t������~�s�mH����D��7�����ݎݾ�k��{�[R�؎��M����%������a���v��vB�a�Ry�k��
T%�sGc�z�+�B>FO��-�ϟ�O���3"�!q�Yר����!+IЫ�$�-���T�mz��~Te�!7芔^:��ȑ�'��]�]��ѳN*�Vd��|Ո�m�m�2%��d��l���r���dg 2�c��HJ.AΑ���U68i��J;�l+2C������1K�4�/�uWw���^�M�<E�<�-�)t1�\"8<@�n���v�o��Z	�, �u]1���].)�"�=���1������{n��ugd[�}�� d�\'L�!U�+0�0�׊���j�����}� pg�M�C��-�f����_�:�AYo�{5�B}?dY0��~~��`���E�C�_�G(��yd�ƏE�IYfGj��6�)hh��{���Mʧ����Il�}��@�B����ݯ�@f�}M��r}�l��T|#�@=������7�}��zyŨ.Vy��ׂ�?qKv�Emiَi�.{dm�R��q�Vb�*�S�M��ٻ����rӞKө�5��N���m\
�d���l��f�����/O�ܕw��/���p�E��A��}Ww��#׫$F䐥�J��)|E+8G{�Ft�
�����q���ʻ�i�j��=�������X��]��@�mw:�� �ŉ�u�!ʾ�#������7b�U�Py�:չ51���l��U6na)t3ߣ�}G�bw���~�T���Jv��Z@W�ZO� ��"�*������_�q/4�~��Qz�&J!�
������R�gc�Zȱ?x�t�2X��/��E�M5��w}���g-q�,��xe�d�������"�#�t P����FLQ�����\��Q����tjs+�dQ:�~��d��~�j�Yd���W�7(=w��Ә�h��x�|Y�/	B��̯m�G�x��ɮ�&:����A���z�Mލ}_�d�%c�̫A��֞%��ܫM����V3���t�o�친�1���[\��4�|Џ������\P�*Ϩ�7K	t��%�GX����9�=�6n0�,>�
�����q���{���K�U���#?�a��ƈ�ҷ�_��9�&�>vj^��3�ޏ~Oe}*b�Gu�n�>�+N��yl_Mz\�$!�a¥7��N��k��	������$�Qm���1j��է�įC%�Q3Jcl�r]0<��<�d϶������J��C	�j�|��e����
'~P,�$>��t�kK����;VU^�^Ÿ)]R&PVz��u����"�	�+\�����e�6�Ċ�9<䟹y�L���{�����t=����U�}ë�5�<���<S���J�I�]�zӖھnWhl؜he_�1\��.����L%�����G4)�(P}��=#�P���G�կ�$#���ֽ��P[(F��&6���&����|@I|�QA�$�џKo�I����"nl?&��^ϸiJs,eF�a�fF�#;�9�X�	rw��='/��ݴ�/>���]i��7J���dQ[R��}O�0�ݞ[flJ=Ύ��Mw��[N�秅W7Z]3/>�$<�� P!�U���7��VXIu�qc�J'��8(ݭ��|,Gg�w:���d�Q�}�~�����	]iYb�6jo���ѻq�$�Tk���	Dʽk�z�� T������N���{A�P-�PQW1Q��yI�b����g�����%oUj���[р��(��k��cݣAo��y@���6�2�x�2s���.b-8�/P)�`��h|�D�q��6]�rl�jk^�Vv�u�ĥ����*��h�)�Y��:nu�<X��,��,0D��Y�1�?h{����[hw��,7t�S+YV�lU��E�3="1�m!��w�	/P�=a D�c�����9�f���u�����z�b۔}���9d��'^��8�u5wu�'P�A�*�N�XCP��~�57�PͳCj
2E��/T��$)�ƾS6�:yd�0vI��CAO�;.`�\�	��_S"G�m�@!�'�]�]��5+��ɣ@�W��1����I�A&e-\s���e�`����dZm����m-��j>]Ӧ�
�b*��� �rg�23���.`@�����$��j�؞d�.�B�o��c���n�G�f�~c��d�U�Ow�)�K�j�Ȅg�
�u5+1�/I��z���ua놜�r�.�<8DZ 1�"���.�.�b�֙e�N�(�qK%�����H�@3$7��^`�+`L\������@eg��e��7���.^������6�z?�c��)�|ɬ�[�O������LOR~DK����'�����&c4��ן�G 	?�����V7�j�I��x��(��\=ڍƐa>\JN$S>v�`a��9+�����>j��P0'L0�AɂWVf��� �����߿���v���Q�ۺY�{�z�J#����/�W�z��G��~n0�'2���P�6P�׃�!%��͢!
�� k���&a ��Ś%BF�)��ަ(�p���ܝ�N\b�>�u�9�[�[��9��2�r�����,JR�
�I7�®�}Δ�m�JjXP���2��[q�2�q���Ɖ���$Tw���7,��-Jm�7m��Ԑ�����|�G*0���`n���YI��S��\ţdɚ�����Ӟ����>�;x�!��]B�he���Tu�O�O>��M��t\}j\�͕��I�O��m�Q1�|���DY��Z4C���M����u���(�v���Gz�$_��?���������
=Äe���tp�Q��&�J1}��*��s+{T�>�9��	��0y�bt�9�[���k��E����/��IuNO�����`�F�F���+oԸP���Y� ������1�U>CǴW�{̓L�^�\ړ�<�=,�v3��)�S�ԅP�����=-Q��3[�~a|�ӋS���d�h�(�F6�̔�Z�q3�5�"E���v1V�d�3?Q��!n���cE�y$��M���Ee,,SIVTV����>��_��b��
��tqh�� ��:�N.9ٳ؛���f��5Bu�^_��b#�V�Д%������1fT���q��ڗK�y��j�|�q��t�VϜ���soJl�fs� .n�a}?t�U��vn��JeU��ڮZ[�X]G"(VFȖg�y�=#�Z�fՎ�kd��������ju�K�m��O%�.�)���^^ ���?�Y����7|' �[O��W��1~"����!�w��v�o����v�#VR��U������L�Rڥ�/*�� }G�?��%j�����y�{H�����6���0=SZÙ�P�R͇67�Eh^���k_o�]Y�߼���D�W�g�����NX��k�[����i�'y�}�7D-�q�#}�Ӱ	][��~ގ��n���[�	҉*��o���:��n�M'!x ןI�:��k3��.\�Ld2Kʊ�t;1����o����BMHΙz9Ĩ�EX��,��K���\$��0߮�^)��<�u�4y$�����	�/�@!O��Vm�3o���f��=g	{2xɅ	�cֳoը�i:�6b04�}-���#    �u�d�yM��H���6��ԡ�!��9s���B�������eS�'��5A���e4�;�$���GV`[>Sg탑[�<���D_�Ym�B����|��KY����t��#A�U�������r��q�(����=��/盽��b߬��q�����Ǣh��g�02��j^J�����dȍ���Nǎ�+��,��t����hF7���{�֠*�1�ޖ��IB �����R�'�����B}����>i�{����v���7:^�=v�:������怼V�(�y&qK���/�c����O��F׻]/F��?8ﶴB���i^�N�;�r���J�v �0�{�m�O�r��L�Ni��FM���B��/��k�4��4Ś/�5`�6��P����u�C�'�+�z�b�-��;A�O�$�HP�`cstU����e6��X-�׼C��`��
\�ޏ(q�y�ē�r-��\_�|1�)���T��y/	7G��s���G(�»�g��M����k���v�`<A�z�z4 ��ۉ��M���\�eӶ&�{u��D���u�5D���}�+�]��}U�S���aES<��mQ���K|�h1Կ(�TX����6D8z�5|��R��ơ��P�[��Тi��E�������ҪHY8D�$��\^��-���M"��6X�9Q�������_Kww����,�eȫ=��4㉣&�b/
�5�YG��s�Q���nw��\l-Ã�Ś']5p)$�Jۗ��f���X���˼KJ[t�2�y�hrŜz5�c���rb�>l0�r6k�-�ߗ~�0�a��Ϝ�����<���K��a=3��+D�K�.!�:�0P�c{���ֻ=j���$�͕�jx
�Ox��/����w����_��?�E����`Q�RPd���W���؏��3<�H�]�&�(�u'+2�*�X�Ǳw##�J��9��0��@�}P?�{d0Xl�n�2��P�8��i&Ј�w7ܰcL�G�V]�k�ÌaWŢ�/�Y�V�������5Q�Ҟ��`����s�>�x��U�i�t �t�=׋fXP��R�+y��->j�`���Qp�_���P�3N�n��aQ¤�aZ���j(�5��zG���3�V�JE���f�-���O(s�I�]z�s�R<���0vK5V��&��g�	�7��C'�q�W5;,q���Z�YYr{e���;�j�->Hr�{ӹ[bvLQ�5X���nG��xk�jQ�&��}q�|ń(ȼ��@���P��	��42�Z箹d�RA2N�C�	L�������aP����2�j�|��1۷qQ�(�����1[��F�Z��P���"��F[�ԵkĲ�.���h��P�U���w���7�aw�r�m��]$M�xŪ
}%*줏��k�b��c�����^e�5L~�������h��V���|*e/sZw�0:���~�zrc�a(����]�\_�Z��gFz�|#�n��x3���"��<7����+�O-̞�0����H�������镩(Lg��h��<����n���n��ꔟoi�N���IE�����x�,?�J/��5��*G�i�%N�`![muU��Qv|�d�����  �h�9U|�l+��p�%Ku~q��B.�W����v�����~�ۏ�ᩮ`�K��	�cҤ�u{��B��5j����mu
�1� ׬�����1��t�\G�=o9�>�f�����p���^�Pm��Q~}e)a ݭ��*�C�E�t�N7�K�K�L�����V��iE��}����F��W?6�F������I8�;�����t�������,�tv?����a:�_��R�~���'�����D�J߇'���ʒ�f�9,�+Uh	�GM��� J��,$�>H�u����*�i4hL� WU�V�n:+��O=3��Y�VO������)6��*���S���&b���������~y�F�Q%Kv3jLC����H�-JX��|��f���La�/^�?z�:P���^�Ͼ���$f��`�ZC���_d;3{����~�4��|䯩����,��`��^IN	RUG'˧7�c�ˣ>ק�j=����]�d�%�U� {x�>�������3#��]Z�<�L�fwI/G���u�)���y>��'u�Շ����I�Kڴ�V���y_�pj�uD	W]�2~V�6�ݍ���X��3]�d1�xA��c�냷��SĿCQ��H��߮xg���Y:�az4Z�l�O@�\��Xo���_���u�kh����S�����am���A'�-�V�y��D颻��!�������N��%�ȵ��O�3�cP�:��H�m-�N�؋5�{��W�j����d_U"o�!��ƷE�soww7n���6��/yH�p��V�����|z�{�>��b��yT#L�47\}d�[�X 
w�2nlD�%O\��Mɻ)N�_K y?Pp*�sz�j���AD_��/ʺ��i�,E#9g��jo��I���:���[~���>P��u$1vt�O�]�s>K�� ě6%�ݧ�~G��7u������U9��tj[����4�#�ٛ8k5���i�#[P?�'i��r�=9.d��}�%9�6F��X�)ځ~<��][�3G��ʻut��)�E���!\vk;g�Z�,���Yp{'9���7i��� �f����Y�s��H&�̯�����h#͢�jڲUu�s��-[����Lg \�wI�b:Y���������6\I�oM���b;��v ���H��Wn�I�,8�]��9���l��v���L�o֗�+k�4��tq�ų5:������%���R�*��ٚ#�2x�����yyӉ�>bly@�%v�F�1��%ot�Z[��p5�ٛȼ
�96	��st����)q�y]>� X�S?9r�Y�>��{ww�q�)�]$��c�𫛞Jߪ�^�=CωC�n4W��h_�4�-�a�P�j7J��	C|�}����<�t���b�ođ��:$��.bh�1T]a�u�����wַ� ����֋t
I������T�5��	�Rɩ���c�� ?�=r��|�ww�B�夶��ٖ�0�|�R���fy���b�H'̟����9(�v��#ˆԮ�b��V����� 5r�6�W�0��3��& �e@b�-�7|}b:3�������jM�[���}���V�R������,���j � ��G����%�t5t#�!�ZXrL4��������g]��:jG�~�cӡ�� Z#o�^� Fx1��0�&���Ԙ΍[��a*^bhQ���6��&`�>�y1o�F�gN���B���ު�v��������Jz�W�cY���7���*�~G���,�������f�<5TW�ɤ=zk䰣�//Ҷ?��qU��2��65'��:
)��F�X,ÕN�+�&�>��79�xG=���N��UV�psA)_�	2�=���-�s�J��JmW;�m�a�Ś�4�lב|������G}cAg�$�dT�ɛ�Ɵ�V�
�^~TB�7��b���*���\��)����[�ܔ��k ^A��HכM4t�^��N��N�$Z��r :-�	Z��{̙k�3w|{����C�"�l����@˜�<�	�Ah�%�cF��0�����.pv��V��;ܤ�(�o~��\�.p��AWg��w�+&�/Y�rD��^��ظf�~6b���)�����ސK2��4*i �����>�����cߵ8N*3���SȔأ�v՗͈ A(�v�0��)�ɱI���c⎣b�@��VǠ�E?�SVl�^���"�C|����Y:� �+�H�v�h1?�o�c;�+K���,Hj<���'.7�|�ɒ�\٩���c��2e�Q�۽���:�6�����ڊ�uXv����-o-�t�
x1�/e�a��#�|��
�A�%a��n�.�
�:����C�FT����g�/L�I_��o}Db��!"�+��(�<'�/Ps0:�zC�pz��s��dk�4��u���[RT��`e����BG��A�A9eAQ�a��5�i�<���c�Ѵ+>يe����&�=A�zrC���_�����";h    !gt�ؤ��u����E�s�7_� ���DQ[�#�%Zx4�w�:%�S�ԋ7dL2D������3���� �ON!])T�/���?-`��5J���P�]�,�t�hJ�c̍G�pCz�	X@ƨ������Z�HR����~�c!�f�� ��ץ\��yݔ�!���:�V����Ǵ���$34���U��兴���ሯЁ�N4��28\$©�2|��~����B�ƛFtv+Wsx#��DC@�� Z\O�!4�J�I�*Yr��V5t�+��Ho�Gyt���K�ʛ��BE�|7��#{/b*����鷣����IzU�Xq��q��f�,��70���H���a��7eg��56��>���I�vg��̸���L��7N�_������)Wm�d��5���r�y��R]��&-a��i����g��ѣy�p���b�c�!e�i��\mT4���՘A�>�mo�rժzD~/����Pq@�1G���B�J& �;���O�a�%`���]��~J*�4��-\a?y�^�dv�Q�]
G����"b9ܪ�sE�v�7���EB�#A����A��TQ)���}m�p�e����l��U�~����X������G�w�������D��.��L�Sɪj�2��9�
�������B^�1�vz���ah%�x[�?��}t3��f�wS�F��B7����z((H�s
 h�$z�0��/5�^�崈�M|E���J�ɑ���V���oͷ4?O)�_\��.GPi��� &T������T�cϚ$�ǚ�))oG�̸�t��xԟQ�%)�Ti�A<7&1h^�G�_�Jّ�l��Jr��\�&��F���o�Vȍ��y����l;�I	�j���
����J����i���r<2���S
��v��j��-�YZR��@bɉ��9{U��+�<�]J����Qo"!rJ,��%�)����R*v���k1��od 2��l��Y�g&��Hp$��2�n�x,����uZ�Q������Z�2��$V<~�����^
E��Q[]�c+��x�(�6Ͼs����J~���+!_̓)i� �$0���
L����ˌDu�P敹�9Q4%�J����]8�8A��Q��e�O�
��vG���6��sС����.�ϝ닠���
��丟�b�z��Z=.�����^�F�eR�}��M�#2�H��*�_�H}��$��Л����.����gp��d�8X��=�F��Rs�!u��<��s���(iK~���8��M<� ����gK��x��ƒI��0��������E)�����(��I ��Ya-�b�3vL�h�:����c9k氋N6J�d_�XL���X��ߔ�ܰ;}>�u��^�s��R��	ض��-ru!kA�-��\;�6�:詼OQs����B���Zw%�u�<�c�L?�K� �mHB��7�t�G�	$� rxt��`�^��WM2�VWjV�B�z/�	��lYr{j�oX��G�]}ը|���;��@�{~p%vxM��\:R����[v�JJ�T ǔ��s�L;WP��x�\n����Do��h�g�_1�4�n��]�X��3���i(a�K$�����T>/����:�>T�K�P���ȝC5
�j6��ﰐF㊾�:h
���n��Q[������wl��#*��˛?z�S�|��ˉV����H��$b�/vj��U��(��m���P�
��]ԖS�B�6���;�R��m;��.~�O7�V�c���d�hj�%�L���VȁFU뼿���
�e�|Va����{צ��2�V�n�D�#V��+�/j܅�ȍ���֧�ۂN֘��5a�3E~>�m7��� #y�v.>*x�N|@��AI��huI^f��:W���t�z�
�EfK�
�-Qh�h\�|p�N�?�z�kz_�O_Ϝz�%j�M�j^P��ҾLH&̳u����.��c�l.�J!S��o��J��OG��4�֌� w���@�ɠK���Ƚ��LW�<f
���H����7)��˵-��˗Q�:�A�Y����%�����3}mSNYF>v�I���{�!UXCq�ݽ��F�^�j���-A�����vF�x�\�j��sQ�����_���]����_�^��|BR���m�r;8�OK�`_��(
"�1�c�q?2��͞����wfG��Īe�����#ÚZh���d�k���P�2�-$	v� /`��kt��r���JY�r�]�2r>�����Ƒ�'��q���GeQ���	�0~��qB�zȎ��;�̭|l��ȱ.��+}�Zg�+W��_Ӻa&�}P��������Ɣ[��o�� �"�Ǥ�Z����9����фi��T��LVevG���C-&$s�����-�������'��������`|<#����z����h��X�_�EȺ0�+��.�y��r�g|�6��3�S�����H��9�G�`���������z_��;����@
���^�4���8���n�,�ۘ%(���D�#9ԧ�$b�6G�h�Ct�E���-��H�b5p@q�>N�#����	a�L�:�n�����F�V��á����7G���Tx��D��VG�&\�?E�8�(o��9J�q�i�h�G&�H�ؘWEcFH����������!�`H�_fZ8���/���UQ6w���6Rk��9�����FJ1ۇM^[�Ė��`�]z�e=N~xh>�7X+�i��������v� �������9ag�|lI��Y����Zf����nC�������Yx�T���H��H��\��T�������;�~
�9[�F&�sٍ:�AοjB-�f�����#�S͂��_�,�Y��Gg��RP��N�����a%H{��,��V��s5����?,�*MpԿ�Y��=��,������EfEn�W��j$yѠV��=����M��j�_����KY�����cOQ��W�B�w����3c���ba��@K��suq<�똉��.���?pIi���G�w�ԇR��QdO��%���,��c��Iqߠ����C�n-ǲSD�_+���^dx���ʔdQim����٤7v���ȳ���o3N��{�a6���/��*9A`C��~��
Wuhx�q �)�߽�}�5������J�]z��8��r+,�
���X�jT%0|��)]�R�U��vAYs����r՗���#��'�`�x��v��
��N�
�y!
�f�c��Jx��=�%�RxI=/ݡ��l��fx?��9DY/�_��=��?�¬?M���e�S8��wޮ�_���/�c���"〚��zQ��}�n
�t�v֮�W6�߅�����)趀�P��)��H.���Q��H/)��;š�|Ǫy��c��J/S����xB`����4NS�JY�CCۉ�>m�s�ۂ��*΂���b���]�_2�)^y��"5E}��İ�"L��S/ݮ��we�%��G�!�h:�-c��u3CjF.�/�oO��,?복x�u!�����������E��sPI	�K�k�963��b����w�9��6�%��=�[`D �D�A��"�Q��2�L�Ľcyf��B��4L�����N �5'T*�;W�(N���^J�����k�O�%�aC.6~���L�,YG�8���yZ� �u�0XVq ������y�^I�5���Q�]�s��b�V\Ք'���W�(�~:
l�DW|���{��m���זA޷4"��&��cp�E&�"�m������)˄W��ѦnةS1,���.�3��%��� �?A�Z�z�ج	>Cg丈eۡ,�� ���z#���(�%��V���w�p񸢥�hbx%��~�)9���H�D��\�?+��6VF�Qy�3��z�1n�����l3X��!5��:��3^2���i��sg��|c����3���G��F�և���]b�V�q=�y�����F|ϒGZ��\��R>��w��3��c"�`8Rvc-o1��)/�Z��6X�!�(�'~M�K��[&.�?S'g��0�%    j/�Ü���ې�x�t�e���73�}�@�E�${��_4UDLv	A�4|ɉ���O�èD��ã��:�	��B��ɪOց�I�ĸV�����<T�0l�>a��_N�.iTԍ��`�&��Fʞ�u�S9	���/�O�4�t�b8�z�������|�Wtn�&��/�6i���FX_��f�7{)�Dw��g��}`|�0A�黬�>��60&�QV���2:��F �J�)���f���	�h}�_�[n4bU���\�$R/y�Ӫs|$W@U,\_�e�ns;=�o��K�[͏��R�A(�yb��
�1C7P���l�,��-����b����m@����-�.v���+�/��%��F�J;�[�69�a�9���F���֨sw����]�ž/V��kܕԛcm��6��/����I�ϛ��t��Hn͋�S����ub�K�I;�
f��x#�z��!���پp��e<%�~�SZ�e��hYI9�k_T�b�����l�ĳ�7�]$.�SW��Mi@3��(HX9jr�!V��b_�96.�g�,�G2���
�m�3��a��HX}�T��Lua��"D�'�8������v�{}Y!R�6�����QV�ϡPih�Y:�Ʌc�b���s�W�<��N���|��&�V�Z�Y�Sv���j�7w9(O��8�h�x�i���T�bs��x��7+h�\�kZƀM���c8�>�h��+���4e3p�� ��	�����i��U'�sf�IϊY[U�o@Nd�i�g�Z~�O���V4�?<�D�ݟ��!�'s
	��;�'z��LRf�5&�4B1`��^�T�ɦG����/�6n�!c���?�\�E��,��"�-�|��>
~Y��Xl<,��	ĂN·Ʋ����р��B�_���&h�i���K5-#�PU�~á�f�X��Q��Gi��3!������~ưi�p-�=��n\��@��`�o.�
p=5���K���6I�CH���T�y�de[a>½�Rhyn����
~�8yCΖ���"Rkb2�<��N~1���a+��n+ݻ="0��C&�G�j��iIs�H�d��֘"���)nn�Q���b	�`�Áw����Z�����6���YhT����*�+�ܡݫ�.��#;,�Sy��B"
&k*Y����ʎ��4�v��R���u�׺{�+�f�� �^C#�w��V�^��}�"�ƄK&�w�Mډ�T[��|�76J���nJ*J$|��a��Ո#�W6k���G�_�KC���r#B9�N�Pu8ȈJz�����G�=�1�A�R�\����%��)ʦCw¶VC����Kl��+����q2-ޅ_�wB��e ,v�-��f8�G��daߌ�V>���AP����˦��Iv^�w��ň�@�(����RO�t)~�~o��D�F�K�N���)�@�E�"��ÇF>z�ou��Ղ�hy �����[�������%2��\2��;J֡YB fe�>��jT�� K�2�����4�9u@���	�q
��d��q:�[��\w��%���h����t�p�8@�
pJ^'	�U�.>�F�5F/��ߡ�U@+zy'��1��p����5sJL��[�
ع+������u���O�5mR��;P�<a��ѓ�,Y�N�.U8�V��v�dV����7_�伎R�x��G�w��`�M�����:�Vu�}�I�Ȑ�g�%�o�̕Ҿ����1���Ө�M�P�#G��l_�'���
�_#Ȟ��(^c�0~&���Օ0OA�i��/���rFЦ�Vm��K���h�(��`�O�2]��9�sNOg\Y���1)<�h���߶�d:uO��!��x��f
��6Pzcq��B�mD�6>sh�w�+��
�z�w��O|UXL�P�繑���ޯ�Q��䠵�<�#��W�zu~2�E�a*o�����7��(>H�|��Xb[�GP�8X�&��o�%DW��u/�d��*������z� �|>k��Õ������\��PX�ң�mwd�D�Q�pԤj
dtJFFl����2��!���?~{��
r!u��h���>�}d��ޑ�m|�y0��7�[z�<O�����u���"N�R��zm�\��:�ۍT><D�Z�P�BMٶ��:U��[�:>���B��k|o�`I���*A�l}{ ���P"]f R(w	I"�%�r�b�*��;lX���{�0ªP��T7����;D�pJ;DZ-Xҭz%�2�݂�����J@f���Ʀ��&էW�$س\V��r� 9�&��1%E�ƀ�į:�o��h��Qg��D���ʙ�Na�iA� ���#�)?�Ǩ$��ET�3��i��S�2 ]�i��8��s��G~�jX�6V��̀������>2�|�9�tG�<k���a!��!���x��{9������WR��$�|�W�%ߺ�	������M8u�C�����p��D�XJ)$�"��hx3�|4���RP�V�8��!���x�Wŉ�J�*���E ؠ)A�"���@�n�h��֮�0�����|�d@���ĕ^�aA�_�RO7^R��?҆�X���=�� �@zu�Z�Q�� G+igv��C�tDG�]����=�-�f�J�
�\(J�r�W�#�C�����*E'��V(eI��h/���d�.��{��,�b�����ЧЯ��Qbq�r����C}��w�EQΞ�}t_�P� �ZdV���m�f~Yt�����H�κR��$�2Js��Z8Ct&���0߅d�(����X�V1�[��9����v�b�!�2!�7���\[��ڎ���_�GC�;0X}x|��a�U-n���RG���kc6ƒL�e��m�q�-ŷf�'Y��_'�_/s2>n�>uX��zP_��6H�Q���,U�<5g �\=��Y�P	TĲ�pķ]��Q�y���vdc�UH������FWt���N�͖��JvL�\XJ����x�)��a���eH%T �7I���m�^B���-��~�h.���ů�No%��B�ߨ&T�D��[� r�g���fP�d��%]@�0Z�X��%pp��RR�*�ăZ5����4(Yσ
�Ӧ�*'��Mg-nU���E����WQ�L�9)��$�� �>��,TvWw.B}��+:hq3E1�B���ߖ��jP���|]����G���ǚ��Ma��;�]+���g�o-�c���|x�%��N���r�߄�U��.�ZA��X|�+I���2�*�3���W\oM<��3m�]����$S���B���e%��ͩV��������k�6�-KR�����?���v\�*)W��j��w��r=,@��H��Y-�^�Q��䮗(!�*�9�/�p|\�^J^��8�3�㐫������QCe�x]VA�wD��^����Ci2�M*�H�f�b���	(7rj�������<|R�l����,!������ߎ5hΙcʚ%b:��]Iw��]g�I9ٖ�%��lƁ����ͭ�I���5�}�]`k�7g<�*�����_U����|�9���\X%��Mג1�k����E��g�,�7�.��48¯��X���RB쏢):{j�՟�ѷ;�A��������cz�ء�<={���#��V�ޏ/u�=-�+�X���/�@8�rͱ����CZ�e��|>#��PƘ
�<~��z�fH����։�������Z�e���X[�e��,��MM)?3�*z��3vv񓇥7�͔gQ3�n��@�%y�g�K��g#4�W�b�H��Z�[CB[�v�,.C�m5o)�^uX8/��h�^Q�cso�Ge(�o�Z�%2�98"�6	z
%Ii���)k���Div}��F&���a(T�%����z�:�����~�����CrTQao O�?��Okk��<�Y�u9<���=��Z6�SN�U��o�2�ע-�V�c(��4��\�$�7lƛC!���9:�3s�r�ZJ�*LчU���W��}�W���VM�e��сI�a�|�5�miś��f�������*��X/�οYu�J'��ef1�cݷ��͡� ��i�Ⱦ���a�H���W��ѓA�$��k�ѤՁ#P7��!    ���i����\���l^�`����O�IG�T� G0�	��X�B�@�DP9�;W�o�*����x퇍���U��'�Pm�|%�����	+�q]����Sx�3g4,&�PR�k)���Ae���0�m�F�[(:
H>1 B�%��y��2|��ݿ�qC^�W�}�?/��֦3�<m!��>�� ��a'=L[P��s���U�2��S5�E�'O��~&N�宔�]����j��(�KN�i����<!ǧ�,�N��v0h����@�-�y��*�k�[Ƌqq��rkz�yV�����@Cq�%.X��)< 0 #0jF���a��;HL'}����>Zy�r�bx;Wj���[wU�����)�.��_)h%&Gt�1�z������"��\����P�WWֹgqV@��y��:h���`����eG�7g~f<<��3c$}Ϧ�p���9�JP�]fT��MHX��<	j��lq��mvn�e�MD����هP��즿I�����c�|K�1�~f�&,�-5��t)�۵9z.��W˭����mہd�te���V��bW��mGK��_S��h%� e+�+�~�m?���AT`��"?�]ç�1��+������� ��|��R H�8֔j?�84Z��H�M"�;�?zdחߺl����{����{�:�j��?���4!�gsR��A��p=,X�K ���l��rw:U#���>c�����WI�Z�H�$9u�0��o��l�U�v�VnB��SQ)��=��?�����a'��·���o�"�ۼ�MK��t7�`k�)G�B���l5����v�����K���ᤰK�7fq�[%�O�mk��m��/QN�qXW�63������
AO�u��n������%�&^�6[Y�~���zE��B:��z_V����O*E�R��L�R���&��	�>�Osmr,~cWTL��B���Zf�!/k�?�S�r�"n
P�]���ƅ Psqvo��8G���RoQ�I^$�xdP�b':��re^�J�5zI"��5��U���h��( 1K����Y��.+x�Āb�N�jq��;C�R�[���Z�~�����s8�}�����}�3��C�U����n�k?�^>�v�Y�[Ei%��P~i1��n�l7��fӿY$���}2�����y�*�oj���*)����SK��M�2B���%�T@���7ǫ???�m�;K?1v��'a`��ya#v\=p��DU1B��IIf���M殲9�G���o��N�m=t|��B�(I���Y�oAR�RX[H�W9 e .-Y �_4�U���!._�͍6*T��6ї�[�,(��~�J���~ ��XYXwxےf�r��1�nkT|*6�tԥܲCk2C*�?����3�B�Y�f�}cM��9�Pfn�~�`���dIØ�O�5\�E��zr�R!@e��;C��p�+�>�_�O��䯜0!�ؚ���|-OӪH����U_z���bu�,eG��A��b�%���D�b�T�]w?�e�G1�γVv���E��)#�%�[Q��M ��NuM�cߢL�\ Mw���~�$~�ߜ�v���(^��v�	�7��Y��k�k46�k:+�tn����ٺ�i;H|��+��������c�)"�J\��r�> f �������}p:F]QR����������̀6��hJ�b3�S��Bk�܈[�'+ J���j;>�Ŵ� �'żI@q��t�h����O�	?�!Mg�S����pFf�ʑ�ٖ�u����S�$�����.d�΢U_4F6g��w9�R ��J_<�%@�zѼ
R˙���x�5h̕�QG:�oƁ�G`��,p��)Y�_���2�/Q�}T���fD,�����[Q)j�مxi�S�UcN����m�n��42���a�.fU�qY��Q����Uz:�Չrp�oF/�z��RϴV�9��%fB�!���^JYr::._���8��`A���-��U�U��w��:����+�KAHs5�E�l߱�Q*��ȡ���V�S�����5/h���٤�j)�%�|C�h�Q�&�pܮr0�#�A��zmx٣2�������wQ�JI8}�L�ý��+;�oV��+[�6¢1;G>Ԡ��g��Da�lM+uq��+>jǆr�^�8j;(���̍���8�ߞ�Ț]@�' ��e&�%����O �X4����ͨ3��%�t�3�3ʛ(g�I&ڃ����q܂���S�Y��t�1;�BT�(�H�ȼ6^�'��]-���-�:3fas�-�.(�wޤ��P��Na�#��^��s��p��$��$��F80�臣8}�iZ_f��*�FS2H�p�&�u[����*�5y�Cun\v�#�U`�z�(L�X������; ID�����L��,y[�Ղ��|S�ȴ�4@®G��%>FB�A�-�؏��JR&�Yh*��q���;==i�^����݄0
�c���+�L2�eq_ɸK�&ч�B�2�C�&q�z��Џ�7���V�|]܆��`}�]�z᫓%ID��������F3�|�­�.�1=uʂ�%g���X��֔=���_�Kpt`!u%ߖ� ��9ZK�Ϛ�Z�~X��Lբ:L���A5����Rkr�n !n8Vi���p����Y1^��C)��^#��-O���5�kc�!`zH�n���]S���!����Ρ��Äs�)�ъ�	��*�S�1A�B�K�_� Ƚ3m��E�:N��e"��jo�;A�����d��i��3����j'/qyzJQ';gR�^8��d������%�N��uu�7�F�>���#>�g��_�5���\����h8Z��)'�D�vֿ~�O�ss����)Gf_�:�/�d��D#��������@�,�9�Sz�Z��H2DA��MK��^��7�8¾tJ_�|�M:�)�W+h�c�k�2�x#�?>���~)�*�h+ï(4bl�*z�0tP*Aډz]vYz++_-�٦���z��Fo����r�@����h��[�Q'���Q/���,�vvK��ΊΈ*uh�H�h}�:�K{w,�aK��8�˱�xO���D��lZo�3%]<�������	�N�T����}�s�A#������yWu(7}����.�a��f��3��K4*�����ԶTS`�w�9��O��P�,�!��bU�<4{+1P��m�����''�*s?p�{��!v�B�����bܙ6� �C ����R�	\���p6s���R�.��n��TN��l焏�����2.�)�����<��;���|?4�����T�i�cPbל�Eo�j���`!�[곧�/W�'kWv�V���jP�`�H��jk��ɇp9�P�]��ס����x��/f��B�_f�7~3��ۙQfiI�(5ӥM���O�~����^O\ofg7��d�I�\ߊ0Z�]��7,<��WI������1T�`UO����J�P�A��#��6����$���=I?���ٽ>������X��ɶ���>�'4Aw<
�`(�w��{�����IQ�4�9'�"���Y�vfG�}V���K��z�~����o�����}R�r���
Zm8��雐�W��O�))JY����*�>6+����������~���:�����aK����|����`��䗸ps��E{�D�=/k���'�Q����Kb0����K��z.� )�4ޖ��S _�5�۶�Ba�fa�4]��j��a��!چ�"[��G�ۢ�Qǵ����}�S]��M�*�kaa\��b�o���Z2dP3����up��-���/R�eF�b�tb��9�H�2 ���r0��lЅ-���]��c?V���ja΋3�'�SS����H?N�tI
�<�~���
~�F����r�o��,߆j��L�U�~\��+%3���_�+}yBq��opa%������D�/��Ɇ���L�_^�#P��#�b�*��v���Uv��(R�a�,]88f6�D���qeo �eѬ��W�����Mg]D��}S�    �!;�5���a��u�L(TK0sr+{����|V
E�X�.v��f���V���%��T��&�����^��j��0���L�Qy���{ʔWB�.��e_����\?������\�7V%���ٓ*�Y������n��=4B{j�����{��6�:��Vl��� t0��hqE"/n�k�wC�-ݭ�6=��偏d�H�F9K�`�~�%��V��i(�J����wC^�[��|�����\)N��E�� ��TV�A������T	�Ѐ�:3nlE�n�ߖ(�5�K��}ӯ�XY4�'>$�����Ӿ0�ݗ�@e//�'ب(���l���B'�����w��T9�?>.�z��lj?����NQٗ�C��]>]�}FV�𼣿�p��ם��tR'�G��M��Dрb��v0Ⱦ��\UA�G�.���ԡ���q%8 �|��
|ޭj' (V_R೘�&�˨�U�zv��:&�m/s&�AImIwbA�!�+h���1���9'��T]�E���Nzlݒ.>�X����%Vϼ8����4���$|�A�1a�?���vvLhfh�z��[?;�Ӟ�	�Q�&E�z�D�� �u�Pp�^MP�'��P�DvV*{�8t1�%���B㬱�e�@�s��<�\�(@�����2�왞[�J�=��Wڒ�z0}g҃�����p��4��m������xG��t��:Y�#`=���.W_�+�;�|������?X���y{�gā���0}�0�L��3�@�BJ�@y{�8��Ʌܮ�d������n�H�z��b�V��*1"��|�F*���ZA�� I[?hr��{{Tl3X�!P�[r�H�й�~�YA��u�Bl�j��Y�.}�������h�65[�UTd8ޭlk��jX�;��L~4�D��7f��G�#d�9�a�����vX�}U���(�%�e�&�,�ɿR;�%gv*7�1EZ����f�E���x ��C?�+	w4�.V-�-�M�Ìx���/)�o�L���������<��/�׆_��n'Z��A��_�F����D��y�F�)*^�v�T�ѿ�b���7;�������`H��F\�-����3�� �Kx"�����&�3�0��E=T�<��5yi�,��m�}�{����ҋӄ��	��}S:��T��(��+��.�޲�7��\9܍,W���: ,�K9,1����C��֫�w���@w��k�]����Go�>Ei���λ������w��2��;�]��*�l.jR">�GS��O��Yv<y=��u�/��`|�i{���T��-�R���vŽ�"���le��N�~���O~����������zjT�� ����]�9{aΤkF��l��qZ/H���\�E���P�(Hu��b�X3e!
��8��[Y�SX.�A���Z�z��x���=a����B-H�:��xRo�i�n-�M�W�ݡ'�q�ͬeWX���F"-*o����d5ăS��*�h����H�$?���R���J>s���[�#��lY��H+�$��FS�7�i�9�k� YZ��)ތ쩶�Na��T� �ks��U���<�jd���hɣqo�y)o���tyǯ5 L�/�؀N��0��^�}���&�5q.����+u�+e���&���;�E���%k�s@���o�;��6I>R� �JIP��pUV4R�NB���Pߒ��ɋ��/<j�Hf6�q�X��rP��(~���KU�5{��I4ښh��*f}bv����'lg����6�br�u�ca#��j�������7�fǋ<U�j٧q����Ĝ�tcY�h�.[D���	��ۃ��Vڙ��.�:p��8�����p�	ii��kFC�[��ր����[~��d,o:ֈ�֋�=k�k��&wiW#��XSvo�8�`���HU�d2�Њ���8�XriG�Y������[�:��!�	��WO�#�a��+������]�+s�E���:�B��u.T�s��"}�ҍv"�-�5�rS����t׃��"~۫�7
�.G�ԩq��_���";+���|��s������,���k�r�����������>s�7^���P���y���_��SF�!O�#O�����s���x�
��𭕺�(TV'�k*�o��~��R����Z�]����7f-��,��_���}���ח��ߑ�~��e�r�������/�H�MK��;����*����]�����|O�^ἕ�x��Ftz���=!�W�ʢ~���C�u��v���+���<��z�4���G�Z�3���wr��<�=)/�B�a!O��y�)����Q���i��uh��a>M0r����`|���_$���=��Wn���EXDAѬz��4�M�U(�u��z��;d5�6������q��rFw�.��dO��d!�zp=V>N- F0����U��eՋY��\@�1L��q~���?�D3Ǿ���������Ȇk}�?6����G�9�Od�7��3/�3Q���L�3���7�/��3{g[uwٿ�~n���?��X����]ſ
]��菫�ULq��>�٨oӍ>������(,;/�vO(k\`���Y���J�7�q���ާY鐊`K��p�ޢeY��w{�X��'fG\c�,��D�ޱ��L�r��UD�!�`PV�p]r) ��G�U��~�J��ƍ�6~�C*�@�\$�t ���n���=�����[�g�h^:��vxC�8f#-+����|�J��Q�-ǸP5;2�]��Q��]�{�{Fd���ŋ��/�J�L�[M?���ނ����'̄&�F�z��W�[pl�+��,���0����C�z~\Yuu;�Ps�/�S�
�o�S��{�\����8��� �(�t�n�AO��q]�\�]/����e&v�\���>��3A_kk:D�?#c�֞5��������C9��8��������ѳG�N�)�jk���b�CaX�hde��3��h`�S���L����2"�J(m��%J B��N�F4	K�^���0���
����7�.cmB�w��+d[Fupȶ��Q�8���k,@@M�#��n^��:#�;���z���u(�~#~�"%�]A�8�IL���ui��1k��IzE�����S��i���9�[ۖxg��:�;"��`K��F��X��ˬً���0�����C�=JLS��~���u��K�`���ͅ@]����B�+!���"9�0o��������>v�K���� �;�Z� &�e�oi�n�� ���
cmI�$�ƙ�3�[�Ӊ4VWe#_b�a娗���6j�n���iyW}�B~���������$���8���9���%7�<�6d��˰��p<�R��6���܁�t
 
��LƘ�D���M~���	Ur~3����X7.�@DO��|����(�{�$_ߗ�=8�۽�8s&�2|m���ĸL	�TcPgD��Q	a�yQ)x�9�26M�E�x�`�5������Қ}:�����7�`��PH���K�E6�
Ec��D��j��S���4>uk���A�<&������Z�H�,�i�6+c��);��p4��L3�l���(ϱ��9���v	3��G����2V/O.n���<-�	wn�%s�+&?�2Jn�h�Q��|�J���G���F��zER����_���=>������9	b!���E���J1@�|b�Lߛ��o|\�P��2M]���Xv=r���bI�:�Ez����s c�Buz��e8B4G�0�:@M$�m�i3����d�{�	C�w~;� p��c�6>�u��$�������R#�v%��*��J�߻����%����<Sg����	��G̥zT��Zʹj��Q��%Om,̥���݇�=Q-7�}�̬�2Vd��o�= \^��O~��	lx� Q�f�z~��.��%`� G��e��7o7�]�&ٛ�MՅ�.�ؽ���A�̨䓼�=3�X��ӵr��2Dc�Yt��[���ns��y�ZF�AֶA���φ��,��S�@r�ΈJ�>qp����{4�o���    c?����ď��]3Q�G =۰��J*����I�1G�3_�8�T�O :'�A�% }� I��]O[�3��q1��]��U�8ДfB_dٜ�d$󀈾w@�WO����A�Ξy�6y0D%�(x�n�kF*kƭn"|X�;/��JD���$��H�-XF�L'@-`�qw꺶�܆��]�������D%QB))!L������ 45��[&ܖ�SxG��Qz
���wGMG������ҁ�5�f>}s��F���:_�yA��.��[n�"��� ^l�B��h#o/F�3w��U8(����=�"��A�2�ڢ��Nn,����^gm?[_��"�/QQ�!\�꽖q*Ņ��6�yMt�!�AEK�[!#���f"���>iT�{��~�FA�?�Yv�'�S����&�K�n�L�B_�K<%��Z��v�n�[�]���,��SI��J��<1�I���#�ĩ�D}��C�D�ϳ۸,C-��<pg��J������wS�1q�!���9�� 5Z4|��f{�~�ZR�EqG4��mW� ��Lȃv9�Ӧ��WCz��Z%�@�b'n��������j��������T�]�k�7�".3�/���n�yf�.�Ρ�3����	�<�VA�W{
�w�T��<B�_���X��}{�J���o���,o���6��{ń��� �7af��L�0F�L춍g���0�k��1U+����2\#�aK6V ���(\8^��V�k��@gG���3��6;E��ҁ\<��<P�%�btR3/���"���B��׹@q|P�����y5�ܤ1�Dh[	�`m�>@k����\�Nx|�eWQ�J<여7����b�/'�P�%S�*�<�A%�y DH �a+�D��zo�0��a�zyٯH}|�=��>c6�����{@�~	{.V��l�V�NF��l��P�m��p�l�ǥW(�W�`�����KjY�1�hq,Ҳ�7�%�I�WS��n|�^l��yM�.������z&!너���9 �����ٲ"�0?|t�'4E�x�IbC���7�E��O�'��2˙�0n'�ډV�f���,��:����	lI��k�&ong�0��[;H�7SY1�C��m����}��Z	�0�d�~U�֨Ƿ�+G�g.�z-�[�a���~ǻ�P� ��b:�����m�l��=���7��!��fEfF��\=��A;6|I}!�+$��p[�;��.�����0��6�u��{�u�Q%v_BIí.p�1��tY -��ײmw�.]bDf+x~3l�S)�!|�l�}�Ue�%Kfi�\<V�W�����%c$2����7?:|M/F��i�7�h��w�6�N"[�|TM�P�����聑�&t:������`����"�s�j�t���N��|
��b���
�zM�'������L�q*R�	���D	PhrP +�L�
rF��PG<�<��8�dj�_�o{�\�m,w��iϢ���"lx_�6;`��Ժ���H�Bi�g�X(;���E�{�f[��~Hݖ^�����{ˈ���6~��j��[���o�2.N��u27�j��=��_v1~W��l�9!�OEj��+�벌3���\#j-IwEû�{�Fkη�s|���+�EQ�k�y��=Mx���(cxJ-+w� ��X�9���W%!�� �w֍5���n�(%0nũ@̶�B}zZ�^�.��zu���Gt+�~�7�p ��o�r�������O?�4�� ���ؼ<��HFm���v�.:S2P�W���Y��m0��ֆ�/�Y�.��V�^����5l�NY$l�eG��;5��Ie����Ck��:�Y/��!Pf�(�^M<���<NRt)7c+�f�;'��:��Uj�&�x=�W�Uq��ȃ��O��5d�Ӻ-(�KJ���V�F
��}��v@_B���DM
*G	���ET�<pRz���/�9�T��}R5�W���ԥ萆L�aLeY�X3Bzn��vRe)���g�(J`�z�Okjh�� �%1����85�,r	�w9p��l�������\�9�
��<C.�T�ƻ��+��nz��8R��������{�r�
!�p�^
�c�h_c��s�y_�)�?D���Iu*S���s�P�b+�b]��$�+�a�,ą������F�ߗ��� ��Z�҃�B���Z�S��Fn~�R8q��<�=n��Lu�]&׬
��%Z�QAz�ڹ�[7R&�@���c�01�x�	d2`&A��]·�rX�"F;�Į$����u.��D�t�	�o��q���[ -*R�Ʈ2�3ٞp�êeZ�21�C�|�ӽƬ��C�P���ɐ�!ʥ�H�M3�`1��Tm���dXKp��m������[R�8R{�,��Fך���޾� =x)�JQ���T��	�3&��R~����Zw��z�N�8����!Q��z�>��h�ߕ���Eq��͸G�����9=0�]����O� ��L�1�Y�uawM�����.��D�43��6���vz��x@	�ر���>x Tt�%�A��9�s7���ƥ�>_6�}�A����m�a����_�:�:��8Qw�ʻ�<�Iߏ�]��Id1�'���=Њ���"�e�&n�n�k+x��;@�46M�K�86��)�%�`�W��n.�Sg����Q��ѤH,��ظ�s��@L�w�	'��:}W��
- m�����mU7�oͽ���q�����d�~#�����X�:w����)S�1)L�� �x9�Uè�<�5Q��nf��۸+�ؙ�7�/[A�?VCߏ��y�*_�������2�PO�uo���K�Rxd���Z�?"�@Y����*n�f1b�$�^�I�����g��2�jk^��X6�q7���X�{��Q¹�V9۶�`..�3���]������ýD?3�sEw?�����ME?m�ή
y����BA�HT�c�Z��7������c�մ�<���)����Y�����IS���NF1e]yq/`�2�4��D��*�����h
-����uw�S���9���+&��+�ݧe�d!t;�����9nU�1<��Xg,�dR���U�-l�L~�T���n����7�{��^�߿���8+�yi/@���T�'T�,H��pת�b�an�em�w�b\`&Փ�`��փ���/��bl�Q�ػ�'�:����2�Q��(�^���F�|O������(�CN����J�������1�Qɩ6.���Z�$�~Z[����L�_�̿'>�a�w9e���q#���T(Q��`�U3��Y�=M����)|m���]�B�żgHEa-�Y�-�>e�h���"6$f�$L��jY+�&��\�L�'���5j:����ɬ����^Os�3�XHϟ*Bmp=�pp:����ői:i��,Ѹ�T/�mh�;#W�`H��N�߶����Q\q_��Meu��V�U�#�ߗ	(��Kl{v�ۣ�l2��O+D��-�����yL�܈ٮ�T�J��Y�"F�;�\�aU�P��>��D�G⯢W9D���g~�r%�̌ M�l�*�m9qO�\�/C}ژ�>�b\4X�W�X�	@n���>�e@3���lD��A�ɵ`�/.\d��D�M�}�V@���@��:��A9�S�:�I4mg�ķs��A�^~��𡷝{�H�A�a7D9.q�
B8�J��hp���f� }S�mˉk�P����J��v����k�u��x#!���7jw��.�A�	�/�^o�����E���^�Q�������B��Ԭ���9���Znq"&�O��gʩ ��P���{_4�;��8s��"v��#�Lw��Y���A��9�?z���"�W���5IV���/Ee����) �џ\!�]8�te��SR�}c�B\s<N��_t�������_�G�qo�YP��3	5嫁7~#��(Q̜�"��b�öu^r��j���?�m�_�x��j��}�6��������*p�Ǉ�-����
P;Wf���m-��x�Ћ\�,t��-��M�|^��;/�ષXs��sm��Y    ]"���� �����������ݎ�~j�e�8�C{��N2)r�At~C��[�P?�D�	�&�i�����Z�������hRr�YMg�" �(��|+�t�$�D�L�uz^C�o�ft�A0�<[H��ߡ�����q���e��.�_��uD;�3?��Y��瑐�1�h9�
�a�I����G젝}��W�f�(���#�T��R�ڥ�j�z�"�a�q�6<�Wg�󫐦�����t�V��?�3�Ԝ��5���W��X�q���k����h�I��g��V?|�>�yϬދ����{�#��Ęa��e� ^5�=�`��*˪���z�2_=El�`P3;�Xb��|�	�}}i�ݫR,���ZꖫÎ��V� �IDy�Jd��d�Q���UJ X�T2xa�af���~]�@��X.š5�� �aH]���[6|2�q|мQ-�@�,�sfHq�3he˂�A��� q�X�Qʿ�3�yo=b��ݬ������n��R��mza8"�I�����gE@����J�jH[�-��7S��/�O��!����5igҰ#mj�@L
��MKPˋ�V�귚rn��g�F���@�6�M�$p2pxh�U�>�yM�<B�����]�6����H}���*�Zf��9�@�3u�_֍����)ɾ̹�h��?��{u�>��>d�Z��j�yg���z��UZ������]w��XhB�k�����M���&��	���}��Tˢ/�̬�,b=�����`䎚2����ze� ��%��U�H�<'98ˢ�������$Xd	�e�,�og�Nx���):�fpƕ�sR"�Ѳ��[�`�	�B���Y�EF�%�ˬ4�hxӝܙ'@f8��}�|�i�&&>yQ&X����S��z瑘�����&$�էP��,))g���b��ᔣ�)Qˌ���M�WM��I�	Ͳ�qev���6�L�VN3Z2�b����Ԉ�ZU���m�#���a����GAڢF��u�Ћj:U�-8��!"MK���f�	FDL� ESL+��v�,�Tɉ���Z�k��#�,[/%����8E��Qo&8�R��� /1a�̃4��/�7��;��~��]Q�^�,�@q5q�x�O:;d�0�� �Ka�BJ�E�PX�/�DBq$�w{^��B$N�M������GƮ��W�Uh|��b��iz��\��TU��1�����{r�xLR����r�ۅ��W���s�}�E,�$���^g�=t�d�ŮG���O�W	�S���(!S(@���J��ӟ�JRI��"�@?���*6^����P������B�$fb��N��9\H	�e�[=��߃r�M©��L)`S���� ��U����)<�����/F������ӣ]�ߠ5��=�IeQ3y}����ʍ�]![���^��5vI�oKz�V��$$�1/���@����Q�5�����qӗq	 d�<��^�7U =k�0��E���4Դ�޺�f��u�T��X��Nً˰��*��j��U��'ԑ��@�l�j;��Ǩ7�1�
J�3L4��R�дF%�>J��_]��
�x��Qۨ[�^��ʻ�%��:�A�L� �:�R�ǐ���
.|F*�Ɨ�n�D�POÓl��Nۑ
$��L1�7M;y�6��|�2��M�]
�%������.g��B �E}X���"�iE��*�Ɏ#qz����#���H�z���i5M8Ř�0��GK��<�˯�Ó�j �� �GV��W�+��-���E�>"�7�"�H�[q*ժ��8��I�}�X�̠@��`�W�5"������W��
��n`~_�݉�4|u����Q/���|	���>�E�]����d�ay
1\����|I��e���� �E)r��F�A]���b�ﵳ=��J��*CC��;O�.���\֠PS��砣���'������!��%���y��ߕ�/�F~o�06��X�R�wL4I��� 
��_,�?x��3�^�����ГS؛hۇ]�-S�Ew���	(��u�Y0s��Ku�vmE�H��yώ���K�]�c��Xg8䊖�<��e��|IR5��4������ꌘ��-�.3��y{[x:k�����2���D������t¢����:�a�뜈�\��S�KH{\����f�ȼ�0yN�F�ч�����c�6�b�ѧ#��5O�';cE$&������� ���Z|���'�zY�͔XL8��L��7z"j(|�`tB��U�h`�Q<��.�p��V��\�#/�Z�������e`v[���z=:[�w��8����&�b�`Lf~��ye���ԥ�ewư�v�J��C�W��W0�T}[��=�hk}^^#���k�`I_��(q�(��U��eGT*V��@q���X4�xF���AKE�_��؄�"��Z�`["�)�7�A�a80;��>k#5`��~K~�&T��԰E ���AЖeo��������7�O(�h|�%�42˴!_�;̈Y�֫�����p�aڍ*��P��:����RF�����s-rH�4҄1 k�r�ź���H�b2!��DYF�*�Y�0�[#������W1�cn�}s���ncc��|F���X0:F+b��kҕ�<�4�qMe��ǳ��i:�N�A�%mW�^�T��Pa�S~)�T~78����7f���[	�!���$�~!d2*�~N6d����3���@< 9���jۍ��K#[gN�Y�L'�i�k�@��q�K�Pw�����uEv>M�sǊd��C졓S_�� ����	����� Jgiˤ}�?�EL�~����x;3?X:K6�!;�Y.�lIT�0ƞgΚu1�B�)�.���DR}��Me+x:j/�h�����p�&��FN�g0�s�='��r�%y�W�¯����V�n|�c
�x�G��qC�h�%QR�� ���	4�=�7�%��J���9Ib9,l�Q)��	��P�Ӄ�ey|��&l�S�0Q��K�=�(�35c���p*.�7�3��Ș�5XE�PZʵo�Hi(t��@]�D� �C��P�������F�툘����Ƴ<s��J(�Em^���?���,�5r�ogbR�����$j�>�����S���p!sB���Q����n�>A�,�>�4����;l#���5�d���q{�����Am(_s��.cᬕ��&�c'�{���%�;����Y�N�Cm>���ƶU�[*�%ٖ�E������ېO�
�)㻼��A��|����=���P�����Ƭf�r�`e��r0V]�,_�Ag�\Z�z��g	�b>c�$%�y Rxr��'����+K���Hs���
?�?8���W� �w�1k�2��Ӧ�a^Pxf�f�����"�����q(
�F`EVq�<�\`Hv�I�
�^���
��\��6�é���c�餐ȌCx��.��?Ų��p�'ܸ��ZD!��������a{���y,w{?f�4#E����u��-�_Ea.����o�?}fU頋75�9[x�~_���n����K�M���HL�w��1�߇d�|o��}��/��=�$��F�_d��������oz��Ժ����������������x���}��������O<d�|Y�4��UOA5v��OVE����'������!�^��S�O�<�g��r�l�S���O����������:˯�x���i(�6����VO�g�V����O����ϭ�ß:�����ϋ�_�~���z{����W��ӷGF�k4[��3�xy�ͻ?�P�����7�����oնM�|��q�Gٽ�xZ_���"�b�m7;�a��%��o�@��G�r��m����?���}�����l�Ƕ�S��:.�H���w^S5n������/2}�����]w���������2��^�y��x O����KDݗ�����p�+�%� ҍ�W5������'���Gڍ{V,��cȷ�>=� �  ����R�֗�����z�;�����(��	͇t��-���%���Q��N�յ���e�Oϝ�H�)��
)��X��h�)�<��<�\V�
�kb��A�R�p����.����C�4�J������h�=E��I��/�zTq)�,�oΪN�?g�������}}�l_��O�(r�H�Y�ou֟voU�����O�oUK��Q�g���G!�?�1���d��ǭ����l��iW]�_6�>
�Oy���U��?	G���O��.?U��)��������I���=���2��O�NyZ?��������4���3��:��E��?3����zz2��º?��q�j�����_-������p�~u�v�|r�U<u��?���N���?ݘ>����b��Q���ǿ!�w��wp�A¡p����"���������Y����4������iȫ�^�_�n��/�|!��^8�*�%ˇ�$�o����������;��B      o     x�=P�n�0<�~_Pņ��%i�K�(z�e��������D=XώvfV,aG�A�E�vU� _�L��m��Mr�Sv�׆ܔx�og�B��5��X��/�׸���n�of7��L��xEp5kᣴ�M��c?����p	'��,��S�)��3�dǲ,+�!�BW��Xr�,ȃi�J��Us��]���u~D)`��:v�ʞa
E�e��P�1��ܒ�3�\���Q%�y��_�礯���@n��hO�c��=�����������ӀN      q      x������ � �      s   v   x�%�;�0��z|���hr�4�`���ml!nO�)�ѯ��a�2���!�w����'R���,Ϡ��@<���pS�J�p�J&�Ժ+��*�7�j[��]���=K��i�9��R�+�      u      x��}�r�Ȗ��
Xn2ӌR��Ȫ5�BRJ�B
���	8	1	Ah�V�Ћn�j��^�WD�I~I�� )�Y�n�z�B$�p�~�sϽ�����eXcoo,�:L�2�xp��j��YIgv��������8I-����R��4S^j��:�Qj���s7�`��5�����Y[����"NZ��^�o-�Ga�� �l�0<��%�l˃_*�[Y�*�}����_Z»+b����ѱPqh�2�-K��փ��ܥ)�9�F�ԥ�eqтG�ՆY_y"��j�0:~iސ����7�E7M�����#UA��޾��E4\�q��X>0�����/�䏷��0y��w��ͩ5��	L�H�S���b�m<�
D:
������S�JX���`��$EYɕ�#�	�
i�Q
��3�J�_Zu,�O=�kO\��l*��V&��؞Џb��ðk�u��0�
�L�Zz"��>OPW@��J<�jI,�5�4���NګN�ZMA��Oexv4����������^�u���'�^��r�,ѫ5[l��"Qa�K/%������l=m9-5L%�g�HQ��=j���~�k�[L=���^Ƛ�@�|�5lH�X��֭�@)Fq諠�q35'�tCz	c�q�w1^��%�2V���]2I��f�+ȸ�����a�ΗO���a����&���m�58I�O��O´��#���k�A�� BPYXa�ٶL�)�0���5�<����	�P��`��s������pP�͋@3�Ox�������,���5�2�~k�,�'���\����"������#�00��z�J��M㢟���Oe���Uqܹ��_<\<�C˺�@QDF�X� _L.�vc�2�i��V�o�
�&�����C�a���4(��k���<)
j&|Pv�y!C/��!��_Wj�m�}���/�c)R����a {S{��;��� &����q<���;�r�v�u�]����p�h۫s[\�ŗg�Qp\���Qc"���6���HV��, �}�ٗ��@�q���0e�:a���kY�ҏ\���m( k_zn���cѤ22��ל��`�����7��PY͈���UKP��-5;j�)�b��r�j�[�\�//��|z-^޲�l�5��c�#=\K"<�	RB�B��r�_��E�y��-S��X�CKo�i�sRh�{�JZ���Dh�i � ����u�i*|�,\�@s}���f3eg�V�/�����}�+�,�i���}�?U��`E`�0Ox9�nc���W�P>مJ��}����[���"ߪ�7����<:��GW_;�٠�n����v�Xı��ԃ�z� �*ĵp���l�Ztb���h$1�7Q�&f�$c�鵶ym��qᏌC^8}����g�5y��cO�:ZzZ�hw���;4-H�3��pY_��"����e�ր���� ��j�X.���T���lv�\/Û�|0���v�1�:�nBJ�4�gK8��)�(?Y�p(�[Z�C/@>�S�b�����<`iW�H�Lr	�b�:J�q�"�� p�e���5� 3�ף��(��C��V�0�%�K��!z��&�_��W�S4�/	`�)\�.h���x{���ݎ?]�h��/�����ߵgG�a��mh��e�8�k��7h���Bd�=a���r�ʀl�nR�s�@<��g�O�����$B���|}�!�r���������[�K�G����1�"��	&)mЃ.�Ѳ�,&����_j�n<@o]H�����%�g�V��u��O.;Ygt�\���9O`%��).8�jSʨz���B���n�O��������v�E��H1Ǳ��P)]��z��k�NC[H c,֦eצeP:"0�9{9
��"@}@+��'�X����y� Mk�o�9�&b )Ц�S��=���\�/�՗�W�|ߕ��d�֜�f��;�Q�}4U�
J�Y%���Ggb�[�3@%}�A3���9�]�z�i�˸�H,(K��8�R0=�p�A�NY�����_@6l_�R�r�Q�o]@���4K�� ̐1����(}���S�~=��砚�A1���^{��p�5E�7v$oc18L�\@L�z@���M(�3��2�%�c�LX�8a�`IK6BB0<�|�A�g���)u/� �5P�{�f:7!rL� ��iF_S3%$�:T���3�W��i���e`�$�#�$���L�0���X��#�%��0e����࿮^���}�5�M�Ap	�?l|u�����=0�Ϳ��95��w!X{ yx�~���?��)m�b�ַ��)L��a;��]���,�o�?@i����l��� )� u�S�c��1<�J �e
�A(�G���Ѫ�"6��F;B�HRv��"�Qi�A5&=�UT.CX"4F@8��a�!rz�:+:Y�PJG;3�v�6=�*�@Y�psǌ<(0�?��&.��2R�W,�O�S&�k�)���H���u�Q��Ѳܡ���E�|��B���"�|z�:O��K��:'Z��RN2W������D�6�G�����P�U)u�I`	�;����i`��5�IbdWҶ�Ao����ֳ��A�� �,r�MD⡬ND<�?���L�HL���R����H�t��hF�l܏����V�1꿩Qrz~���)��Р+|H�@��I�:2'�_O��p b�ft[`:K��^�ZP4�� �[��͉�����8�ˁ0��B�N)r��F��F�"�@ ��\�T�]gd9��� ��	i�8��ר�ݼi�]���b��\�8ˮ�F=%������9X��.���ހ�|"wԦΠo�/��/�R�W�+d3�̇XNr~���A���h�@G�_ '����$~i�;Ȅ%�9�Ct��E"�^o)��*��^�?rP�a�������2 �&��������j��������j���Њ;�YpXt��d+6k/ޣ�ۧ���<�i4lvڍ?�4��$�@woE ��/L�����M�ѪS��H���w&�Y��>+��H���1z��0Ɯ��%�Q����@�zL#�w.Z0�@�`odҠ�!2
:�w ��#�^A%iRM��Pj�oY��?��4\�$�L�绫=�ϧvg�S�\-�?�/���>�}��Nc����<Q�H�4)Rvx!��Y�(1+Қ/ �sN'��>�=V8�p�V0K�0� F��l�R�9ԑ ��j"Q� 0�Y�|�ɂ���X�`�\��e|q�U=�-�N4��j(�Vj��/&Q��8���qw��t��l] T���=}_%	���c<��MZ�`�F$*6#p���䘺�QY��BcI��f�j,j&�eb��1���n��u��@ ѓ�<uki�A�ګ0��M�:�� �R�@6���ﯟ��T�.�c.슽uS������1�����ar������1|X��$#�ڔ�v�f�S�������u�����{Yy��%��q�%�!	��'��8fJa�++AQ7�2շ=|��;��
��|R�\:�D�݀�4�K�ɫ�fA�ݯ�O��o�?/�e�^��~c�0t�	�/p��cAB5��ږ�Y�>h�{[�D�1�]Å-(�zeږ�9�������T�cR�3U2��� X=�&)'�[�ɕ��.�Ԁ�X��/ҷ�X�Z�k0�_�`��^<$����h����|�r������Թ�O�1�F��W꜎/��7�:iİ�F�QY��H��?dh�)�>fKd�!8ffLfV��5p�g4q�Q�!�Ә��X��@朦!b1�f�(,�j���,�kD�*E�Y���!���tҾs��r�t��9l�"�7���Cf�|�SRo6�=P3uS��,�Q��8[a!��q� �\*�n	\����Dr��dQ��8j)�t]�ՔMJ,�Hf���$����a�����e�[��&����hvfǎtD"��?�
���v�|}[������I�MH['�*���R3��>��T�$    N���*�G��j��=�4̠6k�F��ړڝN�V���P���6�b�`f�aN����r,�R8`�����8�c���N(f��5��EL�J4���p�`��6���Ξǰ����J"�� f��Rl����C�~ݛ��<|�� 7��T*�%��N��O�o�?
m�B`���b�i��GH�)�G�Y���SZ���ĊZaD-�(6�L���*KY"e�d-/�]�qh�a�TП��|���A$,f��ыW�|���>��,\�W������y0jvBnRV����K�ϯ,�OO���_i�:�!Ĳ���(���籈\f�͗�kf����P>�����&�ߘ�H#a�+���Lk���P?V��/�}����e�&c�r-���(�S�초[gij�E`=�b���gw���-9�-������������m7�8RU�O@�I��f�
Hb&SN����t@FZb�����z�@�����g����,�DY��f�5�}��-!,�ǚy!l9m�����$�AD,�8�wa�9��i�H�ϔU��]Gt�$��pLI{*��)<=��ۮ��>s{�|[�ѩX�㥸�gwË����م�tS�M@+��d��FH�>����o�ast����%~��r��E�)�ȕ��[|�Cd�K6��X�(!%<�" �[��|!�~Q� �6�'����o�z�٪�م�ͤت�O�/��K�E�/�>��Χ���_�7�r�u�o�OF�f��O3�*���1�M����z0�H��u'��x�P#��0�TK�-<�3%O��a�i�+���Ĵ�o�鉿��w�nZ(w�!gK
���
P�>��O��u�-P;d\D+�f���������%����k�>�Ad�=�PQ$�`K�1u�"~CƯ��u��He�2)6dk#0mE�=&�Ԗ&	%|�.RQ�^u/|��_� �L��3�#�M�\-) �		!�CB�"�]	P�y�mS��E�����_���������yN�`�4�(E�-a���m��]N��{��}�;�\��e�ry���ƀ�{Hbݫ����y7?��6q��5�,��y$O��������0'��j��{�|��� �N&�K���#��95c�R�/��޵pb�~��Rc���E��p��
��ڭ��w���S[�eY�#S�kKE�#�J��RةĽ�(�ʿ\����s>�9?�;�����k�V0�U��֤��(><���u'<�gAm��.��ڽ�����%��j�v[����kD\����g��[{h���%�T{]K�B4ZRV-�H�Hq[��,V�nBD.d�F�z����1v����h�lf�u�u�_P�X{�M��z�1@7]VE_��ЂtiUix!z���<_o�n����oo������C��t�Wv���A�,�
ܑ��[���#����t�Vry+C9AX0B�dK�	3=D�=�5W;h�À����g����!o�&��^}6S�)g䛼C3����	}j���`WPE0߇�f+P�MH�r�L X)��t�ђ��i�v�a�,N+���s�������M���i?�_~;s.�6�Fج{X9�a�M'������:��D��b/��ZYHGQ�(w9�F���X\�%X0r��`����z���Bm�3�Yn&&F͠p�Z?v����BL�S3p%���dP�ɸ
J�yl�Y� N%�ʵN� l\A𢦱����KZeߺ��Q�������x�P�� Lºo=��8(��s��#�6�:��������D�xƪ8��"��֟��--B[�[�?lN�7�G'��?��t�/���03GU�hY�$�XNb����i�:�[fǽ����yG.��i�8jr{�&C�Ek�_j�XWD6�ڪ5������g�*��T�e\,�؋�Y���Io+i3a�24ނ2���;n�X��N���{��xg�V1�ٶ�G[Q�������k7���̾5���Y�\S)0�Ih�Zf�����R7(e��#�L�&�S�(���zp�Ej?���ر�t0uFw+�-�o���k~�P��]>��f���;6a
���Y�%!�@-$����(h�f�I�E�݇�� s��dTT(�]1�g�2'`�vA;(�r$e���q��ꮣ|A���p�k��kRuE�a߄�J��B�'
F�C�ꆋM~�U�3݄��ȝ�{��j������^�\Wb��6��#ȢN�!����9&3�Ǝ>
�Q+�����Ǐy;�H��\BB	�ʢc��'�MX߄�n.Lّ�H��"��������:o�����H2n��-����x0gO��/�4��T�����c]f����D���M@��aA��XE��Ɣb�؅��+��z��&Wϯ�������f�_�A܊x������l���"�`,�R��i�`!*����X9/�=$yԙD�M�J�xf�4�+�S�b!I�M���& �t#�-f��`	�3j,�K%�-���,
�j�<}QRdIr����x>����\ƥOkWg��^{i�՝^�/��n����(��
Ww��3F�p�!'wN���1O�3�C]ai�!��l/5{�yDPpq�Vc��˛x��^�*��r�S���l��I�厚]�B,��t�q������$ha$Jf`�T���c�9�*[����d�{
^ۋoߦ�W���u��a��'�����3��&`��;�d�LЭwp`� ��&^	Q��j.��$`Ē���X��t��T��@l�J��r<*�AC�S~٫\�^��na6.N޲�����q_��t��Y����~�1�#7I��g�鵀��M��B�����@�	�b�#$�=S��#��gV����^t�������X}��'�6eq�J��[v��v���/�J�p�Թ~�|���~@MG�����!m~Ȓ.{=4��!�(
倪K�)��j�N��Cg�GT���e=�}t����_�y>z����Jq+�n��Ks��S�d�.Dқ�"�����팊���U;�>SJ��N�/k P���a v	p!rAZ�zTF4XJhHW~e�W���ߓ�Mv˝����G�3�c��J��a�nT���\*�l�b�0��	�*���TlOո�KE�k�D|���9}��|k?���3m��a�����ɯ$6�@���S�a�����D��{�� V��&�ުx_9��V@�D�O����ji�	��8��:��g���"���e�����}�0�S�?��5'�؛��
~���� s m݋E���%*�]MS��a+g��D�����k �G�Hy��Ӥ1� 
��Z�	�d+tn�����ɷ�o�������߸سW�?T���ZuaA:�cACKdMۣ��!k�s�~Y/�7o��C��iXk���,���ľu�q�;�#_-�0��QJ�HOg�&j[�A��-���H_R����g~��Q�8�0O���[�;=n"I:k3Z������|��v����+!�%�0j+��")���1bQ�2��C�*�,da������x�.���߬����	�&���`cagʿ& ^�Ͽ����H;A6裑Ȩ�t���_����]���	B0�7Do�p�}h�t�~��T@oL=XeZ˩U��n�{d�G�f`�&��c0%�1�<t�߼(�=ozO�.��λ�"Es��������A4��¡�������#��!{=�4�8�����w��[���$�ZI�q n�8�L2�A��^727��ȩ3Hb^s$�@�2x��n��E�2"���#�AAyNLi�ji�?�A�|	F�)B�T�C�z�����0�X��lC�Q�[�r���n��^�!���p�m�G
2{T?[��N�D��n !j�>���)�Ng3`�XB� �Q_2"�H%(iD�3�<�~j��X��)Ly"C�g:?ɔ��G�j;Tҥ��M�C_?\j�=X�Pi }��'00b��q[jC�t��N�� �2;&gf�2LPAN�H�;��øh~�+�/8O�o��uXW���ݪ5��wvpZ�^-��t�;�nVA�� =
  ���h�I�V	��<�'+���L;��I�nֈi���_9��A_��=}S������ը�;�g�e:��,;T�E|��wVu�]˪���T��$U-Il陒�������S�!��?��n�/�������/(O-io��/���ku1���l���g��@�������!���a���{c��),����T��}U�J=U�ߙ|ו���t\����Daj.C7��߃q��:��%q�Ψ�J=Lʖk�=`�����PC]H�]HU4pse3J{��{�l���,7�@�t�:-
��6nDb.�Cd*@ǰKu_�|�t��.������|�ܞ�\����5X/x2]m�U�#S;���$�u���p<d�[{x��k����[���U�=:h�BG:%��e�D�:Q��Y%�a셥S��(@��\��ܙN/��oXh�FS$͇u��sx�L▉�G�ew�%�uߋí�,V����B���[�dg�f�`�R#�3l��T	��݃�q�$�[�N����ȹ`\��h��.�MC0�z�.�"2݉���+�/����<O�Q��Q�&�?���vd���f�O;o2�������o7JS{�s9Fb[>�9^XR����W�>��q(�׳��V{��v*l�Eԣ�.:\1
���[m��-��A��.p�:3���cU�^�I7��v���Hٚ%U:��."���d|Hu����^1J��غkoߋ���x9��l����.�_1�� ���
&���Q�A[V�R�C�o��O��N!�q�3m&�{eS3W���z�@����8�	){��&�3W:0Zd�j~>�e>��i
x*��PЏ���+S{�%�#c�z�J��9���9��s���q7�1O��t�@1�>'J]��5�X�#�LD�a�	U�Kߨ�.�Ok.)q«0�Y����Ř�����&	Z�(�F������3<ٗ+�3�ڼ��	���.�J*'ژBHS*��ɡ������ۊ�Nd�;:�<O�����~9j�{0ತ&�.�ܑ�*'ʧ�]�yt��mk�O�{��}|��6��������:���.��R}��|��9�y;gJ��r"��eۄ.�\��=3���zө����f�R���2�ׂ�M�6$b�R�K ���js������l���S%�e�:���9�>sK�h/�����.���0L�����n[�e�t��{�j��)��&u,�T��@�t	c�ߑ��[藀�(�f��l��Q��_��I��������N��Y�\�U�[�<b�G;rT}9LՁG+ՈO��u�33>Կ�Gy�y<h���q�9B�o�\�y9��L#F��,����p1X%���H]GgO�b�ɒ�k��c��*�����S�����d�>a��{J)��X�E����Xr�Fʅr e�L�<�H#��27 K9�ËU��ή)��Q�Ym-��W�Yx�$ﾃ�Go�P��jk"���L�j�v���et��r1�_��7�x��c�U��~��Ԫ�2�/U���7�XPV\�jZ>E}C�ٷ&�B��0 $�[Lo�n&��c}W82;T��%�� �x!����!!t�&��m��J��Gҫ���T��1�O�i��;��w�$��|J�����	[g.*�3«��B"�ue���e���0ˎ�c��1�.�_>�E9I\^�v���r�0����
������U[�n�5�qʝn`���#̝�� �j<��?�m�e0�\ h�-���6�k�o\��`8�H���Es�����%�F=�������]?�*���$T�(_�ɇ�$�_�F��B���T�n�;v?{ݪ�o���F��Իs7l�7��Pc\��"<L�,KXA}�541=��A%Õ �,�(�<ux殤`���S3�'P#:�#s����Gqok]k� n�y�yk����q
?lLD!�Rv�t��BԾ �_��V>���ƫ�����t�*�*�<�!��Ф%.w�o-	`s��>!]��gZje��"�}kgj�#�>x}�|H�ֶ�ڵk�7�}L�t1ǴM�GK>�WH`�d(Բ�m�j��+=$�h�1F� �1���'�Rn)���b���6��ѫh�x�lS��⸋��AQmt�2��|�X�+?�~8�S�4ۅ�B�S9�0����T�Xxet��֯��c`j`���2Q4���<��{���xm��'��G���ݓ�e���>u�<G�#X�K�K�	�oQx�v�N��� ��'�.у��>_$a��RQ�G���/����dx80��=*�I}�i�����mj�.�w0����YFl�n�d�\�0f�/�|!O���X4��H!e�ꫫ
�H^j�pyD��!R��B���l�'0E)�3gY����Q�$���R�+,C	���/�ޯ({���?��]b����)��=�|��Mc5%AT�
9U�r��=���"G"�9Qox$�}PJ}J�_�S��IFutG���Ί�c�?����N�	;�N�0�m��Oꟓm�����2Ny-�MeVչ�%�a�����}}Rse�*@�K��)�*��Z�;��{dw쭑qu�NG����i�z����7������5      v      x������ � �      {      x������ � �      }   .   x�3�t�+I-*(J�+M-�2��/-�,.�2�tL�������� �Z            x������ � �      �   $  x�e�ˎ�0 ��uyׅ6���q�� d����"^�O�N�cbr����@�7�Ƕ��
�mF8!<�2��}�e�ndOӿm��;=�Nh���M��;i��}��8 ��|;��ݲ ��u��A��M{LzE}�t1�([F4wmI�{� �l�/\�����=ٔ$,�����;��nI�?�C��ϱ/�w�(gq�5՜�Ʌ+h�,��2��&����B�V��^b�hU�Q��뱿���$��wƩ>Y���"N��:��J!�N��h�>��#b~Q�̆�2��SYCA�A��     