PGDMP                         {        	   tripto_DB    15.2    15.2 p    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24669 	   tripto_DB    DATABASE     �   CREATE DATABASE "tripto_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "tripto_DB";
                postgres    false            �            1259    32783    EnterprenuerToActivity    TABLE     �   CREATE TABLE public."EnterprenuerToActivity" (
    id integer NOT NULL,
    "EnterpreneuerID" integer,
    "activityID" integer
);
 ,   DROP TABLE public."EnterprenuerToActivity";
       public         heap    postgres    false            �            1259    32782    EnterprenuerToActivity_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EnterprenuerToActivity_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."EnterprenuerToActivity_id_seq";
       public          postgres    false    235            �           0    0    EnterprenuerToActivity_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."EnterprenuerToActivity_id_seq" OWNED BY public."EnterprenuerToActivity".id;
          public          postgres    false    234            �            1259    24758 
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
       public         heap    postgres    false            �            1259    24757    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    229            �           0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    228            �            1259    32790    activityType    TABLE     ^   CREATE TABLE public."activityType" (
    id integer NOT NULL,
    "Type" character varying
);
 "   DROP TABLE public."activityType";
       public         heap    postgres    false            �            1259    32789    activityType_id_seq    SEQUENCE     �   CREATE SEQUENCE public."activityType_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."activityType_id_seq";
       public          postgres    false    237            �           0    0    activityType_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."activityType_id_seq" OWNED BY public."activityType".id;
          public          postgres    false    236            �            1259    24773    interestsToUsers    TABLE     r   CREATE TABLE public."interestsToUsers" (
    id integer NOT NULL,
    user_id integer,
    interest_id integer
);
 &   DROP TABLE public."interestsToUsers";
       public         heap    postgres    false            �            1259    24772    interestsToUsers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."interestsToUsers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."interestsToUsers_id_seq";
       public          postgres    false    231            �           0    0    interestsToUsers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."interestsToUsers_id_seq" OWNED BY public."interestsToUsers".id;
          public          postgres    false    230            �            1259    24699 
   placeTypes    TABLE     w   CREATE TABLE public."placeTypes" (
    id integer NOT NULL,
    name character varying,
    image character varying
);
     DROP TABLE public."placeTypes";
       public         heap    postgres    false            �            1259    24698    placeTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placeTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."placeTypes_id_seq";
       public          postgres    false    221            �           0    0    placeTypes_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."placeTypes_id_seq" OWNED BY public."placeTypes".id;
          public          postgres    false    220            �            1259    24711    places    TABLE     �   CREATE TABLE public.places (
    id integer NOT NULL,
    name character varying,
    city character varying,
    image character varying,
    description character varying,
    rating double precision
);
    DROP TABLE public.places;
       public         heap    postgres    false            �            1259    24791    placesToActivities    TABLE     u   CREATE TABLE public."placesToActivities" (
    id integer NOT NULL,
    place_id integer,
    activity_id integer
);
 (   DROP TABLE public."placesToActivities";
       public         heap    postgres    false            �            1259    24790    placesToActivities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToActivities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."placesToActivities_id_seq";
       public          postgres    false    233            �           0    0    placesToActivities_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."placesToActivities_id_seq" OWNED BY public."placesToActivities".id;
          public          postgres    false    232            �            1259    24740    placesToTypes    TABLE     s   CREATE TABLE public."placesToTypes" (
    id integer NOT NULL,
    place_id integer,
    "placeType_id" integer
);
 #   DROP TABLE public."placesToTypes";
       public         heap    postgres    false            �            1259    24739    placesToTypes_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."placesToTypes_id_seq";
       public          postgres    false    227            �           0    0    placesToTypes_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."placesToTypes_id_seq" OWNED BY public."placesToTypes".id;
          public          postgres    false    226            �            1259    24710    places_id_seq    SEQUENCE     �   CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.places_id_seq;
       public          postgres    false    223            �           0    0    places_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;
          public          postgres    false    222            �            1259    24691    ratings    TABLE     K   CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate integer
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    24690    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    219            �           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    218            �            1259    24671    roles    TABLE     S   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    24670    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    215            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    214            �            1259    24683    searchhistory    TABLE     ?   CREATE TABLE public.searchhistory (
    id integer NOT NULL
);
 !   DROP TABLE public.searchhistory;
       public         heap    postgres    false            �            1259    24682    searchhistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.searchhistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.searchhistory_id_seq;
       public          postgres    false    217            �           0    0    searchhistory_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.searchhistory_id_seq OWNED BY public.searchhistory.id;
          public          postgres    false    216            �            1259    24723    users    TABLE     1  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    24722    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    225            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    224            �           2604    32786    EnterprenuerToActivity id    DEFAULT     �   ALTER TABLE ONLY public."EnterprenuerToActivity" ALTER COLUMN id SET DEFAULT nextval('public."EnterprenuerToActivity_id_seq"'::regclass);
 J   ALTER TABLE public."EnterprenuerToActivity" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    24761    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    32793    activityType id    DEFAULT     v   ALTER TABLE ONLY public."activityType" ALTER COLUMN id SET DEFAULT nextval('public."activityType_id_seq"'::regclass);
 @   ALTER TABLE public."activityType" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    24776    interestsToUsers id    DEFAULT     ~   ALTER TABLE ONLY public."interestsToUsers" ALTER COLUMN id SET DEFAULT nextval('public."interestsToUsers_id_seq"'::regclass);
 D   ALTER TABLE public."interestsToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    24702    placeTypes id    DEFAULT     r   ALTER TABLE ONLY public."placeTypes" ALTER COLUMN id SET DEFAULT nextval('public."placeTypes_id_seq"'::regclass);
 >   ALTER TABLE public."placeTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    24714 	   places id    DEFAULT     f   ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);
 8   ALTER TABLE public.places ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    24794    placesToActivities id    DEFAULT     �   ALTER TABLE ONLY public."placesToActivities" ALTER COLUMN id SET DEFAULT nextval('public."placesToActivities_id_seq"'::regclass);
 F   ALTER TABLE public."placesToActivities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    24743    placesToTypes id    DEFAULT     x   ALTER TABLE ONLY public."placesToTypes" ALTER COLUMN id SET DEFAULT nextval('public."placesToTypes_id_seq"'::regclass);
 A   ALTER TABLE public."placesToTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    24694 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    24674    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    24686    searchhistory id    DEFAULT     t   ALTER TABLE ONLY public.searchhistory ALTER COLUMN id SET DEFAULT nextval('public.searchhistory_id_seq'::regclass);
 ?   ALTER TABLE public.searchhistory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    24726    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            ~          0    32783    EnterprenuerToActivity 
   TABLE DATA           W   COPY public."EnterprenuerToActivity" (id, "EnterpreneuerID", "activityID") FROM stdin;
    public          postgres    false    235   2~       x          0    24758 
   activities 
   TABLE DATA           i   COPY public.activities (id, name, description, place_id, "activityType_id", location, image) FROM stdin;
    public          postgres    false    229   O~       �          0    32790    activityType 
   TABLE DATA           4   COPY public."activityType" (id, "Type") FROM stdin;
    public          postgres    false    237   O      z          0    24773    interestsToUsers 
   TABLE DATA           F   COPY public."interestsToUsers" (id, user_id, interest_id) FROM stdin;
    public          postgres    false    231   4P      p          0    24699 
   placeTypes 
   TABLE DATA           7   COPY public."placeTypes" (id, name, image) FROM stdin;
    public          postgres    false    221   QP      r          0    24711    places 
   TABLE DATA           L   COPY public.places (id, name, city, image, description, rating) FROM stdin;
    public          postgres    false    223   �P      |          0    24791    placesToActivities 
   TABLE DATA           I   COPY public."placesToActivities" (id, place_id, activity_id) FROM stdin;
    public          postgres    false    233   �j      v          0    24740    placesToTypes 
   TABLE DATA           G   COPY public."placesToTypes" (id, place_id, "placeType_id") FROM stdin;
    public          postgres    false    227   k      n          0    24691    ratings 
   TABLE DATA           +   COPY public.ratings (id, rate) FROM stdin;
    public          postgres    false    219    m      j          0    24671    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    215   =m      l          0    24683    searchhistory 
   TABLE DATA           +   COPY public.searchhistory (id) FROM stdin;
    public          postgres    false    217   {m      t          0    24723    users 
   TABLE DATA           w   COPY public.users (id, email, hashed_password, is_active, age, country, username, role_id, geolat, geolng) FROM stdin;
    public          postgres    false    225   �m      �           0    0    EnterprenuerToActivity_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."EnterprenuerToActivity_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    activities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.activities_id_seq', 1, false);
          public          postgres    false    228            �           0    0    activityType_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."activityType_id_seq"', 1, false);
          public          postgres    false    236            �           0    0    interestsToUsers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."interestsToUsers_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    placeTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."placeTypes_id_seq"', 1, false);
          public          postgres    false    220            �           0    0    placesToActivities_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."placesToActivities_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    placesToTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."placesToTypes_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    places_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.places_id_seq', 1, false);
          public          postgres    false    222            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    218            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    214            �           0    0    searchhistory_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.searchhistory_id_seq', 1, false);
          public          postgres    false    216            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          postgres    false    224            �           2606    32788 2   EnterprenuerToActivity EnterprenuerToActivity_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."EnterprenuerToActivity"
    ADD CONSTRAINT "EnterprenuerToActivity_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."EnterprenuerToActivity" DROP CONSTRAINT "EnterprenuerToActivity_pkey";
       public            postgres    false    235            �           2606    24765    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    229            �           2606    32797    activityType activityType_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."activityType"
    ADD CONSTRAINT "activityType_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."activityType" DROP CONSTRAINT "activityType_pkey";
       public            postgres    false    237            �           2606    24778 &   interestsToUsers interestsToUsers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_pkey";
       public            postgres    false    231            �           2606    24708    placeTypes placeTypes_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_name_key" UNIQUE (name);
 L   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_name_key";
       public            postgres    false    221            �           2606    24706    placeTypes placeTypes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."placeTypes"
    ADD CONSTRAINT "placeTypes_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."placeTypes" DROP CONSTRAINT "placeTypes_pkey";
       public            postgres    false    221            �           2606    24796 *   placesToActivities placesToActivities_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."placesToActivities"
    ADD CONSTRAINT "placesToActivities_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."placesToActivities" DROP CONSTRAINT "placesToActivities_pkey";
       public            postgres    false    233            �           2606    24745     placesToTypes placesToTypes_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."placesToTypes"
    ADD CONSTRAINT "placesToTypes_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."placesToTypes" DROP CONSTRAINT "placesToTypes_pkey";
       public            postgres    false    227            �           2606    24720    places places_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.places DROP CONSTRAINT places_name_key;
       public            postgres    false    223            �           2606    24718    places places_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.places DROP CONSTRAINT places_pkey;
       public            postgres    false    223            �           2606    24696    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    219            �           2606    24680    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    215            �           2606    24678    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    215            �           2606    24688     searchhistory searchhistory_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.searchhistory
    ADD CONSTRAINT searchhistory_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.searchhistory DROP CONSTRAINT searchhistory_pkey;
       public            postgres    false    217            �           2606    24730    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    225            �           1259    24771    ix_activities_id    INDEX     E   CREATE INDEX ix_activities_id ON public.activities USING btree (id);
 $   DROP INDEX public.ix_activities_id;
       public            postgres    false    229            �           1259    24789    ix_interestsToUsers_id    INDEX     U   CREATE INDEX "ix_interestsToUsers_id" ON public."interestsToUsers" USING btree (id);
 ,   DROP INDEX public."ix_interestsToUsers_id";
       public            postgres    false    231            �           1259    24709    ix_placeTypes_id    INDEX     I   CREATE INDEX "ix_placeTypes_id" ON public."placeTypes" USING btree (id);
 &   DROP INDEX public."ix_placeTypes_id";
       public            postgres    false    221            �           1259    24807    ix_placesToActivities_id    INDEX     Y   CREATE INDEX "ix_placesToActivities_id" ON public."placesToActivities" USING btree (id);
 .   DROP INDEX public."ix_placesToActivities_id";
       public            postgres    false    233            �           1259    24756    ix_placesToTypes_id    INDEX     O   CREATE INDEX "ix_placesToTypes_id" ON public."placesToTypes" USING btree (id);
 )   DROP INDEX public."ix_placesToTypes_id";
       public            postgres    false    227            �           1259    24721    ix_places_id    INDEX     =   CREATE INDEX ix_places_id ON public.places USING btree (id);
     DROP INDEX public.ix_places_id;
       public            postgres    false    223            �           1259    24697    ix_ratings_id    INDEX     ?   CREATE INDEX ix_ratings_id ON public.ratings USING btree (id);
 !   DROP INDEX public.ix_ratings_id;
       public            postgres    false    219            �           1259    24681    ix_roles_id    INDEX     ;   CREATE INDEX ix_roles_id ON public.roles USING btree (id);
    DROP INDEX public.ix_roles_id;
       public            postgres    false    215            �           1259    24689    ix_searchhistory_id    INDEX     K   CREATE INDEX ix_searchhistory_id ON public.searchhistory USING btree (id);
 '   DROP INDEX public.ix_searchhistory_id;
       public            postgres    false    217            �           1259    24738    ix_users_email    INDEX     A   CREATE INDEX ix_users_email ON public.users USING btree (email);
 "   DROP INDEX public.ix_users_email;
       public            postgres    false    225            �           1259    24737    ix_users_id    INDEX     ;   CREATE INDEX ix_users_id ON public.users USING btree (id);
    DROP INDEX public.ix_users_id;
       public            postgres    false    225            �           1259    24736    ix_users_username    INDEX     N   CREATE UNIQUE INDEX ix_users_username ON public.users USING btree (username);
 %   DROP INDEX public.ix_users_username;
       public            postgres    false    225            �           2606    24766 #   activities activities_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id);
 M   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_place_id_fkey;
       public          postgres    false    223    3260    229            �           2606    32798    activities activityType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT "activityType_id_fkey" FOREIGN KEY ("activityType_id") REFERENCES public."activityType"(id) NOT VALID;
 K   ALTER TABLE ONLY public.activities DROP CONSTRAINT "activityType_id_fkey";
       public          postgres    false    3281    229    237            �           2606    24784 2   interestsToUsers interestsToUsers_interest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_interest_id_fkey" FOREIGN KEY (interest_id) REFERENCES public."placeTypes"(id);
 `   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_interest_id_fkey";
       public          postgres    false    231    221    3255            �           2606    24779 .   interestsToUsers interestsToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_user_id_fkey";
       public          postgres    false    225    231    3265            �           2606    24802 6   placesToActivities placesToActivities_activity_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToActivities"
    ADD CONSTRAINT "placesToActivities_activity_id_fkey" FOREIGN KEY (activity_id) REFERENCES public.activities(id);
 d   ALTER TABLE ONLY public."placesToActivities" DROP CONSTRAINT "placesToActivities_activity_id_fkey";
       public          postgres    false    3270    229    233            �           2606    24797 3   placesToActivities placesToActivities_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToActivities"
    ADD CONSTRAINT "placesToActivities_place_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id);
 a   ALTER TABLE ONLY public."placesToActivities" DROP CONSTRAINT "placesToActivities_place_id_fkey";
       public          postgres    false    233    223    3260            �           2606    24751 -   placesToTypes placesToTypes_placeType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToTypes"
    ADD CONSTRAINT "placesToTypes_placeType_id_fkey" FOREIGN KEY ("placeType_id") REFERENCES public."placeTypes"(id);
 [   ALTER TABLE ONLY public."placesToTypes" DROP CONSTRAINT "placesToTypes_placeType_id_fkey";
       public          postgres    false    227    221    3255            �           2606    24746 )   placesToTypes placesToTypes_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToTypes"
    ADD CONSTRAINT "placesToTypes_place_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id);
 W   ALTER TABLE ONLY public."placesToTypes" DROP CONSTRAINT "placesToTypes_place_id_fkey";
       public          postgres    false    223    227    3260            �           2606    24731    users users_role_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fkey;
       public          postgres    false    215    225    3244            ~      x������ � �      x      x�Ļײ�Ȗx]�;��%�/�0��P��;��x�A��bn���$��eN�tZSG��޵I"�+�Z�I�n?�Ŗ/_|]Vۿ|����p�߭_I���5.uYq���[���K�o��NU��_�}�Ko_]�ʿ��Z�_qZ�y�ՍC�˗:��g_��U�W����5_ٸ��b�z��zH�Oh�+^��_�/����%��PM�~��3�����!�_է� z����Z�m����_F�3̶~�nq����W��_��O�O�Y��ڶi��T��/e��B��-���;[�#�S:V��䍸��d9�q�~�����{�s��:���Y�H��m��8{�����=�}��q��CT!�bP��Ώ���4S���DP��� ���#��?���B@�"c��J�OBA��A�<���!���������.��A�/?9ےoi�I�b\��������������������r�ǥ˾�n�ׯb���i7��u|.)�\5n�/�N7P���<���uIK�Ɵ��,�/���;�,~�ⷪ'pߧ�q�*P������/�i�/>#��2��b�A=9y�˿]e�8����26��ԟ\a7%������� ��G=�xNx�+_��:�#f���c"vL��<S��a��;�'��L��d�;�ql?��I����� ��{��xv���ngW���+��W�~�Pg9Hߩ���%���Fn �@��J*�x����@�I���1��!K�O�f_阶[\ک>�bm��=�_S;�������I��(�Ws[i�Z�,'�m���F}��(C!�>��0ݏ럽����}v�� ߈X�o����U������#��:��o	���/��z��;�'�P����R/_�^��|��z :����ů2Y��FK>|��7�/�jPA~)���=߅��uޤ� j�|�1���0����
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
�c���+�L2�eq_ɸK�&ч�B�2�C�&q�z��Џ�7���V�|]܆��`}�]�z᫓%ID��������F3�|�­�.�1=uʂ�%g���X��֔=���_�Kpt`!u%ߖ� ��9ZK�Ϛ�Z�~X��Lբ:L���A5����Rkr�n !n8Vi���p����Y1^��C)��^#��-O���5�kc�!`zH�n���]S���!����Ρ��Äs�)�ъ�	��*�S�1A�B�K�_� Ƚ3m��E�:N��e"��jo�;A�����d��i��3����j'/qyzJQ';gR�^8��d������%�N��uu�7�F�>���#>�g��_�5���\����h8Z��)'�D�vֿ~�O�ss����)Gf_�:�/�d��D#��������@�,�9�Sz�Z��H2DA��MK��^��7�8¾tJ_�|�M:�)�W+h�c�k�2�x#�?>���~)�*�h+ï(4bl�*z�0tP*Aډz]vYz++_-�٦���z��Fo����r�@����h��[�Q'���Q/���,�vvK��ΊΈ*uh�H�h}�:�K{w,�aK��8�˱�xO���D��lZo�3%]<�������	�N�T����}�s�A#������yWu(7}����.�a��f��3��K4*�����ԶTS`�w�9��O��P�,�!��bU�<4{+1P��m�����''�*s?p�{��!v�B�����bܙ6� �C ����R�	\���p6s���R�.��n��TN��l焏�����2.�)�����<��;���|?4�����T�i�cPbל�Eo�j���`!�[곧�/W�'kWv�V���jP�`�H��jk��ɇp9�P�]��ס����x��/f��B�_f�7~3��ۙQfiI�(5ӥM���O�~����^O\ofg7��d�I�\ߊ0Z�]��7,<��WI������1T�`UO����J�P�A��#��6����$���=I?���ٽ>������h��	��sϯ�8��`��5[��Z����:=Q���r�<���,�����e�#z��t��Y�������Ǎ���~�&/�t4.��7_.(h��8���Bj�%޼A��(e͎7
�(�����{֒�Q>��Ǔ%��d�k�+��-�6�o����R�������?���-�g�����^�FQ�/x�c�[0����[����n� )�2����S�؂-m���#a�ve�4]��j��a��d�E�"[�K�g�ۢ����D�}�>ܫ������5˵��2�`[	�s���Im)1��P��f�99A���k����*�U1v":���yW$"6��9��6�p'���������v5�0�������i���`�_P&]����q����q&�W�����t��B������-x^H?�b�������*_�Q���\Bɴ��i��Х*�og�Kr�I���
#����}���[e&s��y@7��z�zKNΆ��%$�MR�; �tU�c��=�G��|5e\���    [9r`@� �!+��eJ@�:�	�+�;�c%���V(�Ēm��[4�!0��ίBͥ��1��ҿe�k�z��5(���~���ߦ�;)��v�� C��II؅cS���缜[�7P6�A=�����\Y|�"{QU3S"7�p^0�2���|�V�NB-����u/�䲖�2g?a�ʝ�\�N���-�X�Ž�Q���Ő�+D�[�M�M��ry ��	I�(g)7lگ����Iӏ4�P	[?����|��ȏ.tb�p�8M������s92X���x��ϒR��B��f<؆b�"��-Q�g�[�л�?��h��s[���*�$;�����4�×�@eo/:fب)���|���J����������׫r�~�|R��n�d�l�8�����q5T�+��]þ�9���!<���M��2�6����l!q<��b%�����W�з�Ѯ��v��&RP�5���_�@���H� A����Ʉ4�['e@������)�m{]r	*jO�ڰ�X�������7�A朸B�>���s�\�Թ]��������,�8���4�G�,��Q0a-BAu2e{;!43�i�ћ}X�������ҙ"'=j��q���C$����(Ӊ3�T,����^>�}bi�b��:[bk�� #��\v2�.<
�f�탟�,>{e�}2�4{畮��̾����~t�.x8a`�:���`���a�3��:L�#����׎�EW��=��^1/������_����i��>�N�8r ౱e��?Ƒ��C�jS�\Ii(��]�B(�:N7����ߖ����I.��|��.W�1�x�{4R{u�6
��'IZ����M��CP��h�@!_�MbYB����
"����b�U����w�S<��ĝDS/���B��&���d[�|W���i_D2��S�c�����g�JK��Xm#�����a����5�P�0�`���-��;�&�����ũ���	��Nӆ]V��C�� k�~9W.h.}lZ![Ɨ6����U$F��4�H~�+Æ�J?$�yի_r�����fZ���A���>�F����D��y��7�+*^Fv���9|��x��ٷ����m�w2��z���vM�	�a��ވ*��&i�I9�5L��{�Q�F�N��zBM?=�~�m�u�W�Qq��+� �J'ӂ�>=rO�T�m>{^�ю2�+G��*4u��r+爥�q�svjV��z��3��T�v��M����MqXV�ӽ�|���q���N�zF��F���^M���E��%%"�BM]e글SP����j>��}�P��d�q�� s���XIc[�/b؝Ά�o�\`'S?vv������x��kϗ�/]lhA�U��ƥ
`����Sk�z��+s�};!/����i� Q��suK�6yzB�� �R����#`�@��(����v:_e=.a���5.kQ!����1%�{�`-/VGZ��M�xQ_��h��,��ReP�ág�u��lU_X����"-*_����e5ēS��*�l_����J�$���R?)�lb#߱�٣P���`K��zt,�5�ݒci��;����s�,m���_F�T[U�(tSy�Z��u�	7��*�K�3�4��ٙc��������T���JS�~�� &�Wcb@���{�>��`�Җ:��S���э����#���V���Ѫ/֫�5�9!f�/П��y���+��RA�y��*+)�'��]T�_���ɋ���o<�Xfv�y,)�rP��(�H�À����x��I4ڙ�p��&�Cj���5VuK���s�w2��ӹ׹��Q4d='V�"���͏��"OՕ���e��_�pEbNq��,Q�oW�'C���Aez��/�p�w�+D)���� -�Rz�i�t���Z��B��e���'K�����m��ڋֺ��hr��B8`��5��F��O杘P�;$��WVT�� -�q�ZH*/r��*����nb��^�`��@�����58L�����f�F>oW���[E"���:%B�q!��{�%"}e҃�"���=%r[��u׃��"��W7�]�f�K��f�Z��l��Z���������_}��?3w�����S�n���_�s����JmE"u��}���e���*��k�ˣ�}����rY��r�eE��𝕹�$�V/7[&�_���T��l�d�Z]��~�7f#�Y���C��M]}I��;q�_��g�r��=���צ~�#Y6-���^���w�����5<O�_/�L�ۘ��iB�=L�x��-����~(�i����v��3/��#��h�Im�W�����wq����VzQ^�E��B����{8Q�WՄNϿM3��#@��-
4�P��f�ɩ.�����܅��!%�����YͨUY����.�g�P ��.z�FO�w�ztm�����Y���U�c����*��6�#���z�zA-!F0�����<�m5�Y��RB�1L��i�\�p��D3���_�����>B'G�7�d�6��>��s����߸*��@��;����(�]��Gq�����7��%��w�TK�~���u�W���U���]'�7���1;�k�ɇ���v���e�C�N�	U����?2/��܈�a5��r�ۍ���$���Z�-Z����v���P��	;���G���MT�f"�+��&ry������ `<1?sCEh7M|��{"(].�������\�r�d ����o��˲G��C�p�;��h?:��vz��:f+��T���r�Jo�Q?ǸP�82�����Q�[S��LGN���śk��I�L�{C���b��h�k�53fB3�r�S̫�#86�U@v�M�O@i����G�!yW=?��z�9�W��R%5t�%<ϳ�.\=gW��Rc�"J�ݮ�Г��$EDܶ���K��,��]#�����u&m�&���ɘe��w�'�e@�߭"�ڡ���zY�������׌.�=}7�.��b�CaX�Zdm���ҷ�������\K����2"�'J(]�7J B/�Q�Od���F@��̀?�G�#�[����mF�o�Gd[F}r�~��Y-8�u�{	,@@M�#�P7�ُq]�����~��߳&�A�y��Ρ�g<$�6�]Z��x�Z�E�^��j|��܆�7����g�
�m�#g�Ƅ2�l����Ԁ �]|�5�4r5\v�s|@�y�3��Y�Tu	l7B�{s!P�9w𪔞Z�-��J+,� @��f(��]���I��G��_k���2�w�d�=h�L,eE����Ui�,�K�ө������/�Ըq�G8YU[�@�����z�D�x���[���9���y�E�i�\��㒻|�|�2��U�=~4]\%XOWx�A�K`z �[gcJ��^ٶ�Xͅ:�~�ǇA���W c ��x>�vU��3Rl���^�E�Q��;�p�6cU��'bZ���5�+�ƨ��ʽ����m��6�bE<'p�ZM��Ma�q��!��m�}��$ؾ,�)��m�ͼ�"�X92�.�;�kwV�֧�r�V�?	��W�]��:\'���6�fm��<��:�&�i&���PV��8�6.a&?��#�r]�����㏺y�����m_X2'�f"1|��Q�p��Z5��O� ��P�m�N��z�R�N�������TJ��l����qmQ���VP��������^(���c�L�TQ����L\�q�X�f�m������s��Q��`2��@��%�@�����m&�XX��q�`5a��-��{u���Fh��3̂-�ߥ^�5�_W8濫�+���{�Ǻ��<P���+s6��}п��~�Bj&�˩���N�_s�?���*�\f�v���>�긤}%�b���2w�a�����|2L�7��xlP�Q���[4��i;T�]�]9�\�ٽ�4wE��hG7SW��e��Rf�G�6��/����r�;Nתņ��c`ѱ����+���=j�,ٺ�V��Z�W�����)|;'jĂ���g�������9�y�    ������O�O}�0q�� =��x,�F*��ӳ�~	G�5�ܝ�<T�� :�C�% ��S�$��g�F9�����!I�&�hJ���l�c:�E@Ŀ'��{�;��;�����
�6{0D��$x�n/[N*[�mn*�,�[��U%"�Xqtҿ�H�=X'��f@-a�q����B�����ygVe⊎)��ǌf�w�w�k_qb����k���|�]B$���S�Yf4k��tt�i-�Y�O?�}�7��o�O�u^P���r�۲�|h?��l�e:��۫���Ӯr��%a��̟w�l��\���)��[�)����}��u�>T��J�G�@Tdײ�c�Zqa��s�2]quP�R�N��*�x��OU�^lg��J �W����"*��7�Ą),���T)���X���SR�k�]`跣ûm�	�J7W��{����s�4śC��0BΜ��ԯ(Ƞ�8O�����s�B!�+B�;�e{c�<h��+3�}2�3ÕP% ٩����s�4���PEВ�>Nz��\l�i��lBt�I�����[����j�{qg��O_�&��7�iB&D55�ɹz���Zo�E\ _O��s���ʩC��SQB3g�R�y㭂���_R�n����s>a!"���E���� 	`U=+]�Tφ	��� ^�va�S�L�(A�\�K��Tڸ<[��	�(�K���s\	#_`K6V �З8Z9^����k��R�RG���r_����w�@�^BN�(�>	:���&�FN^� b�B�8>����������f	�Fh[	Z�d_k�C����@�X�P���^s9T�S�K֛�Ie�v1�����6�)i�d�֨�2"$ܸWe*�ks�Q�LɰX�~�O���e/{,�)�p�v����/�(���V[�Ɋ���(���>*`���W��Bz��G-���'����U(Q��b-_��f�B{��_��2�O/�K�s�-�u��`:�(ڮ4b��$w'� А8�#_7�W�n�f���41䘋]qWX$�f
����=��E�ݕq{)�.���/뵕f�M�Cl�� M`k
%\[�Ekp�F9<�Ij�䐸�)Ȇ�0�'l��/��[�^�Jо�����uF3}5\9�#w���hP���;�%�79���V�i=K4��#b#������6E|Κ5�9pmr�������-I�|Ӿ���m���Ӻᰳ2�`p�l��H�*�l�4J���E{S�rk�	.�@Z��oU��S�Ą,V�=�v܃%�2C�ٗ�z��|*�̳�e�x:n�=mz�G�}H�D�:��6L�_~m��?��;<�I_ ѐ��ym�=�D��UM�Qm���������&�:�g��~�h���b�s��^�����M�W|
��a�h� zK�'����I�L�i.3�	�՘ �D	QhvP ��\�JrA��T'<�=��Z⼒tn���_w\�m-w������/�`6|�J��0T� j=��Q�q�I���W�X(�8���E�{�f{�~D=�^O�����������6���n���8����Sp��]��~qO7���]N������٪�@��Iq}��Sn����5����P4���Wmt6��������I��a^��]�1��ۄ�H�B9�SjU�+Q��Ң�)m�o��A�A�~�nl��tu~I��(��(Nj`��7�c�ۊ ��rQ�����=�8|8�;��+�u�� \�ڷ��$5�|L�è��O��r�n�����@rj����grх���L���p�[��\C$:Vg��n�[�G���3hܲ�6籰���߮��N*���\�Z�X��[C�z	?�و2�D�f�9��y	��K��X��5K޹@,�1�37a�`��w�^��E&���xC\�!˓5]5B�\Q"�}��02��P,4;, ���3�3)��$p�cQ=��Y�6)~`��L�s���fj�l"G�K���Øʺm�fD��=�d�Z�*}��5��$����6�?ApHbTc��3v85,r�w;p��|�������\�K�6H�#��*������d?� +����(fe~�j.�_�\�B�9~TB� ��4`'�l14z����g|V�ڔ��/��Z0Tg��
���6�4	�NX'Kq�>�j�QhE��m/�]�ղ�r���듹��G��ӂ[\�͜��/sO�!73�q��5�#
��T�������Ս��I)�����X{L�,z��i�G&�ƷR�T�h��ڵdT^]��E��
�n����3 :���?rdemCj��u�G.�3{X�Ϋ�Af&vH�z��U�c�_���Q6D�t��i=,�J5�&.N�uW���)���j�7%�� uW���`�I�)�-ݧ"�Ճ��5�9M��R��`�p��o_l�^���Q�ׂ�)y����I���OF��J9?�Y��NG����l���#�;o���rO0X��<�3�wy��̇\G�o��6v煑������v�ץ��H(���eD���⧪�A��, �[�i>d.�������s��T��x���ٷ�ӡŉ��6�]�9K�a2�Z4/"O�x�X=m��Nt��YW���0q�8t��D�#�����i_�ձ�Bϸ;�����p{C����=�����ejWh���Q"1A���4������'t �?���_vu��h��GX��}|_��'��#�t��*�лs�f7M�J�IQz<���Ǒ�F=�����M��P�?�S����y�|�	�Z-���	&��վ1��3k�9�u���h,8�c�~8�+�3xb����F�C�O��ER�L�T���&JG/˥����@�6�������W+7�]z�&�zk|���d�pn�S���g�K�����+d���#}x��cFK��n/��X�\��즐�1�1�(ԈEu<w�s9xn�\��7]M;��-
\���r\MQ|ԉl��	��{���J֍��� &��^�8NtX�6P���[Ȁf��*{U�q�4<e��^���\�	�&?!�>-�����,ET��q��M�٧�`�����}M��}�`;c�(\]S}�_*��7BW<4���^_x-���_�U[?�����~����RdA2
�C���v�y����k�%OTp��LO_�}�� �"VH�hb�I�-�0a���17�&2CȹV�/�r�g�>���;c��K��ȯ8]���j�S{�Wz�%P��sc�����i����x7�X~tU�.|�0�jr��u�$F�ǫo�"P�t����vF�1�,{�I�չs��'9��V��/��i ����<�%{b�U�Z��?"6�f�L���fY���|.3~���=�G�b���E<A�l�9�}����5������*�xusd��Z�kN�4n��G���.��C b���ז��b<�+����N\�i��qd��e����؞��d �L�*,`������M�0>���XZ1����4N�d�]$!$~��_UՎ���� L�1y��&z�C4�͇�g
ɍ�r3�4ղ��a0���M=<M
��~Yk���I�"`�z\u`5p� ����ˀ�X̗؈�3��
�[�L^\������!�����#*q�s� <�Mjӣrq�<�Mѐh�-,<�_�*+���
���]x�H�A�a�.q�B8�I��hp�,�n& �P�}/�{��H���e%u;V]e��3q�vPE���^�����V�U�!τ�^��/��@����&��c� �8�Q�}H��H%5�;�x��ᾑ;�H6��
�؈T(m�I���@3�~��	n��D//b���9��u)����:[��k��}%)���ܳd���QT_M����J���E�+�\��0������5�q����O<f?�D���U�n_%�]���OS~H�p�bE��,9.	���=�{���m�h:���f��M��n��q�v)6]�'���Ձ��8>�l��.�@\��k�t��Qx�%� �tM����̿w1?��;����p��sm��Y]"����$    �����q�����2?���*J�+�#'��9� z�%E���(�!;v���o>�=t���_-�%��@����j:;�1U�D�U~�{y��ۤQ,ZW�o�W�Z"�4��-����A*�m:M�Xh���N���$u���̠#�P��"g����#!94�x���U�i��4��]C��O�v�(��<T^�R���ga}�A10�ḿK;����ډ�uDSd�Bګ�:@�\�?�pj�IQ���~ë4�,���,�"|�-�b���͏>��߅���9[�zl�}z�3N�l������P�y=~��`B�Y�g�m��jfϖk����axhn���Bʕ¾�H�z��9��&�:�(/ݩUa���D��R
�ʮ���;3W6��裗2����r%���?����C�36	�_������A�E����4��!Ž�D��=J�{A�ԩ�F)�v̜�����s讗>W<��WH��.@��ሄ�$-vwg�;Y�1$��LBJ��:���ԏvS���.ܗ�%�����3kWڲ�j�BL���k�ȫ����6���r�y�F~��B��tm���4pr�Sxl�M��ͼgq��g�����
��j�t�~��������F��!��B]ُux!�����X��Q4��O6�>=�'���F�R�WLQ�S�����Bڠ�:ݤU�������9��r/{v8��=�4$�1���pQyl��iy��ߑ��Ulf�)k�#Ԕ��D���k����(�x��E�%-�E���m�$�"k %(����83w���L��K���L�E���C�!�_n���&(+�o?g�VY֠�����]w
g�=X��#�=�u�U�\���Ci|�bM�8�N�b�S�b^��&ں��`�a� �UQR�v-:�+Ŕ��)G32��a��e���1L����qev*^��5G���V.3^s�b�����H�FU�.���c��	�a�򟘜��@ڢ&��u�Ыj:u��8�"mG>���&D�� E3�j����"Tŉ���Zvh+��FY�-���T
G�c���F�C��@F�v���&��2/Ӝ?o����Z���m�g�ۗ���j�Jf�2؊����K~�ȡ�1�����\K�2-;���c�gJz %���" u�|�`�oqp��9svcT�^�R��P+`vN�sl<���v��d_�y�H�^<�'S�����76%?q���c�1�u��i;�Q�-�1y�� ��/��ɯ�r�
��`H�IB�H�h�i�J�4&�äNRɠ�&�@�]�]�����O��DH�/t�3��X
���f�VF2B�|���o`����d�p��"3
ؕ3�uĲ��^2��gÏ��{����(r\�\S�8=ٕ�:3i���a�TV5��7�K!W���
�v���Ķt��O�Z��gv
��aOEyN~?���۫5?���O��Nk��B������\�rnA��w��$c�ZP��z�6�A��uPyL3SSUe�2,úӨ�~�]�"V)�a�#���z���v���Q_ g��$g�x������iMJ4�J��?]��x��I۩G�?��)��#�涸����(�:�Q�ב���R
� |Aj����^m��=�Poól��ߍNד
$��B1�7���6�G|�2�m��'
��[̗�-�!��oB ��E}Z���"�k���:�ɞ#qz����c�=F�RH�7Ծ�����b�G�.�ã�G[����@���g3�ee�-�U{T�N,n�(s�P�OG�����7��^^J��|"�pr�9ka
p�U9�5b�l�I~FL����8F�d���x�S ����^��(t}8���fm�tS�[��A/��
�I|g��KH�fR�[ė[J<,'(���c�J���%j�/�*���|�[��67K�=x�va���E�z�=-��!$�#��)U#I4H��ǯ�����ot��mƆ?�5S.%�I�4A�&G�
������% >'��vև�׭�WzvJ{m��+�c*7��~|IY�ś����2yu��Ӯ�(IR�ى������^ًM�C�h���{>VV���$UC�.�E��� ��W��Wa�p��,��³E�� ,ǖ)n<�7�ϟ{�H/��h/m
΅��e�;���t$��/�xj��,��,ph\�C�j�X�H?�3�: ^{:S�۠���x�76Db������,��!X&��Z \�k���c�p��sj0��/3i����E��˂�-�^��Ag����'^�:�����Fs���IjM�K��W�c���}-_���bM�M���:�꫏�bO�1���sV�Vqs�����"T�=���i-��I,���a��ag������]O�B�GK�QLL�k�\�OI��S�X?R%���S�z�k'�C~�����l�Uh����X��<�݆��옱�l�Ԃ�rb�m��c�Pc�P���6h A[��y��'�^|S2�oy�P2��,KDe�i�B�]O���ow�PO�}�F��tu�8sMT�+�g�$xYCg�
Z䐖i�cb ֠���ϭ-�F%dJL˅��4yu4�X;bP����3s����r��6�����%��4�>��`0c��o�	��YW�S��˼�-����v����zq���]Y��/Sq'�F�Y�@��\s���(Qd�Kl����n��D�cP�搬���˨P�ْ�6�������drŅծ����b[g.�E�M'�i�k�D��͵q(��p}���fNӶ!�e�u`e���)�ũjn��$��?~�� ��vU�G>oF�q�r�����l6�����-�-W�Nf^��XU��q���a]�x�P����l!�ֿ�S�K����&:���	6>��{�Q�L����(�t�~mI�����g`��íM�[_
mB�#�������0�NVS%����� ��p�.wd�ޙ�	'I,�E�2ʠ&Ł���J~���/�_h�%�'W)�V�K���23�~����|{�0s����?s��M�K��\�� �Ԑ�B��4eD$)@�2@�Z1 �0b��p�o��3f�.�v���*�a��
d�y��R_VX>������\�˵�E4}:Ӑ���=��B�D�}����1ܭ�s�bUps�Yf���v*�F,��=<j����K��῿%���
�H
~�FI}ή��(�7>bM.R�N���Kt�5����]-F6چch
_c���+UZHI�e�qex�e9)��v$�?�>Gb�T76�h|���6Z|@[���Ŷ���ݙͬ?�l��[ƪ��k2荃��CO���`X,̓ĳr@JONZ�"�l���Ҽf�'�\���G��o�F����0��[���~��'ģ�-y��9�E��B�� ��,k	x#��Bw1X�uR���7�=�Fҡ�O����A+!w���~55��">�p�3��s����;xX��I� G|�Mjku�Ut�_�'Y��ʯ���&����q���o3R�z�?��?������ʕ��}��L�/�9�>��t��ZԂ-������_4������D�ՙ���n����-�{������0��ښ�[�����������7}����?v��ɱ&�����p��do���x�?����=�O2���ź&Y��^�'�����ɛ�,�b��Ɏfk�b���Ye��3No����������-���4o����N�o���-��5���Q�%}�M��1f��¾&y�7�˲�)η���������4y��_�����?�o�0�]�fky���[M޾�u��k��L�?s����?�؜ź��/���_�}������ߪ�3$��9�ysm�=��%��l��;D|1�_ޚ������_�����P�M�Y>�۾6s���6���M�\����O��} �矬���g|�_���k������+���ϕ]��o/�������f�>�_�B�9�|��h�H?]�S�Ƴ_�4����߲~:�r�����b��k]��� q   �����g�Ւf�WG��BQ�������"��=��^ڛ�?��W��������J�9)d�)��z��h�)�2o!Y�?.�d�(4��� s�}��������o�����;/�8�      �     x�=P�n�0<�~_Pņ��%i�K�(z�e��������D=XώvfV,aG�A�E�vU� _�L��m��Mr�Sv�׆ܔx�og�B��5��X��/�׸���n�of7��L��xEp5kᣴ�M��c?����p	'��,��S�)��3�dǲ,+�!�BW��Xr�,ȃi�J��Us��]���u~D)`��:v�ʞa
E�e��P�1��ܒ�3�\���Q%�y��_�礯���@n��hO�c��=�����������ӀN      z      x������ � �      p   v   x�%�;�0��z|���hr�4�`���ml!nO�)�ѯ��a�2���!�w����'R���,Ϡ��@<���pS�J�p�J&�Ժ+��*�7�j[��]���=K��i�9��R�+�      r      x��[�r�Ɩ��<*U�8U���*��\[q�8�o��4�� 4�E�����׻O2�9� IY��&K"	4����,&�s����N�ʹ�[ٗ�y�<���3ﺺ���nD��BԢ�M;�d��j7�U'����B���B?=ᕼ������M?����Z��ۺ�d�9�Is!u��*�S�k*��BeY�D۝9�ʜ\�ss!�--�ꢐi�t���6�ЕJqy����S��.��M�Mڔ}N�ں�W;��jՍ<^��EU�j�l]�"oq�}��oe�t�t�?y��T��t��^4b:��滐E�JT[Z�Y��������i!u-�FHV�{�;��������.t����޸�qUR��pעu���o�λ�髾�I�̵lp�BO�i�?D���IzUt���DJ�lE�;�G��sȍn�F����E��"sv��!�_q�3]�������66���T)~$���;A�ONhx%�k]�N:o��3�©Ɋ>�d?N��J�@F����J��T$�����+)e6y*���F8�P�Vo{yO)�$�kZʲ�U{P[�� ��xqeN�o�K��v��1V�/Z��'�x�W�����
Z��n2:̨��]\���UG-�t�1���e#��s`	PIr���\��|��|܂���ԝptC�����ƛW	V]��J��icd��	R-�������,��b'�P`��ݙ�nD)�3��>���;	�he�C��A+R�����6mTݵ�8�f�'��f�v���S����ă���۶Pk�h�߿<�'?��d���o���G����o�j�����c��o��u�y;W�/�p��o��O���̎���J��>%\�Q̯�]9�neBb���ur]������):s�w�R4�1n�{C�jr3U�0Y���c��%�W�NF� W��.zuw' a���h7�M�	�K!pՑ�4��漅n��(yP;[�xZx >@�W��'|%�œK,�T4	��a�#�Mn)3%�4���Zd7��k�?��\w��^�z�ƛ�^$�TԄ��?��{2��G9�l�����/a�ݰ�ŢF��$R��nA89�[Q�FKY���cݳD "�L
������D�������ʺQ�`* |�b�T┷gv#x}��[�#X�Pm���5��}]/3��|b�gb�=Ѳঝ �):<��Z�"�T�W���m�=?�7_x�p�'���wY�(���]>�����#. ��'1����")T�K��h�rC1�#�4|����k�P��F PՑ7j�~�k^�k��jRgs#��:�{1y.����T�N^B�Ŋ�Tu.R�I+�������+T�QHl��}m�b[��%�DRh��1�jgΦ/�=_͘DK����N�=3D	��� @8��1�P#pH��;:�,
�����8�#������3��d����7����-6V�d98o�R��B1te�S�ʘ#B�G�j6F�l��"/�=��ʮr�^�G��������=\Y�_����\�dW��JDz�m8����%���vh��gc���;'��R�{�x��ȌqiIz�,���.H��~�v��|-���^)2�g���s�#��c�d�@WP��/��AWdLÛk1؝ \E1*����\�/_ x��`C����ߦ�a���J�\ؙ���\k:��\����H�F=?�%;����?n �N%ӆ��WGs ;�8s.�2�|O��+P��v�?�u��K�y����:k�CI>0�8����GP�������0Ʈٳ.f��.�N��� �'j�G`8�2�����+U�6��kPӆ��¹���j$@�	����A����ҝ��v9L���'Tc1��r��� �Uj��)�*
�m!�Ϝ�����Q�DI������uj�1���5���E�E��e��5�[_������Zr�1���O��Qڿ��v�T� s(�Ru�a菸�'�O��~��z��Dv���CC~�m2R�2�����#y���d����h�%���/���8l�<b+����:�$���>>V)@_*ބXCZ7�&��*Q�;Yۆ�=?��NN1I� ~�C|�Je��'Hh����8�`���	����3�v&2
2A����٬i��M�y��v{�ƺ��U����0dh���K/-[/�����[E�m��n�ƾ���t1_e"��tf�2��M��e�A	��9�����̹��M��_z�D���ı�f����c"3P�w�o���(@Q�P�bs����D�?z�iqB^bI����lX��qaz͑�>o8
V��R1��T&�oX�|�'N<�<�0a<������G�AD�h ��î���QD{f���р�	����?����OzT�)�Hw��yF���*�g��;J����t얭����6����1>�쫀O=`�7,T'���=�e�w���@�;��nW��H j6�9H�I�x%���%���y{� I!����(}�U�Q��VP�O��� �Ֆ0��	/\��'�}��~����]�Le�-7�,΢ğͳ8]īU�I��QCf3tJ��*o�;'���Ϝ�}s��S�������Z�8�e��:�1�	GC:�)Ճ�̝���Q�G��)�]�֧��&^��A�@���ZV�M���H��
���-�W�����Q_��0�	�_��fk+G����v�B_�;��V�L������^-*M��8�L?񧡿\��(c(q5��gxw6ǟ�r-�(���O�[�g�|	Ň���F��I-
�0�G;�u�RQ�Ȥ	O�p����'�lF!�6��bǮzzȡlt¦G"q��=Txm�Wz8�4x!���V�6 S�=��S�9,��-U[��.���~>u^�P���n'��9��Ĕ���d֟a�3'�γȺ�C�Y'��2g��P�:1���tc�,$�;�k���0y�ۍ�;!Ћ�1R���!h!�Ti\���<T7TN2�#" 6�Z��!�Kh��S��m�G��#��:危Ӧ��nX5��ꤜ�z!f�f%I���:�
j�x�%�d3����\��P��%&xZP�s���܈����<�$�b��0���v:�� ݷ֕\T��+.���\�V�@��lY�*i��pXs�����|�����z$�$�p=�^UǮ1޶n��T($,c'!l�x�5��+k����O�P��(�X��� �@�)�&råfc��Աd��v��\7����I�+t�"�z;H��������e\��ƍ��Bf�Ԯ�\�/3uuI�ǥJҔ*s����`��z��u��L,[2�U͏w��#v`7g���'�A��+�ݹ�T�5�Ž��ڇrhk	�%�߃��I���ߟ�3��'a��@�hHv yY��mV��쫴)�H�:Wkf�(�>vX�5�3����-�5*��Q=D")�.85؞��C��Į��)=�?������=���.��5-����*�����ă�Shn�-�k[fdN�SE*_;�T�o8����\߶�}��6�Qj�t{$]#��}Շ9ݢ�3�t	�����"�q0[�$5}��dc`ᤒn���<��p�2ۗ�A��n��p���Cﰎ��x5K������g������I��AfD0�ӎp5l�!�b�n���εu!��d8�W �c�$ m!�$�[ {r��;�/b��%kW��k���n7Pb��A۷�R�ojK.j��U������9��X�}|�����`�^�`ӡ����\c)K]��l�5?�3Y�$�N L"3��E��]8�{s�ŵ��TŴ�%��|�!e�!�zϚ٪MǄ�Jhd�&Y���P����d��4��b��.l �%F�h;#��"(P���js�:+<®e�#�J�fCU뜫|<sX*���b���'�A�z�I%�d�G�oC\�7�\& �gz���̗�dk���7����4R�>U������n���̼���x��t���=��>��qfܑ���X�ϧXvD��ݺCX[8��xDΦ 
  ��;ZcS�K ���'�7T��L칦�n����\��V���˶1��"��YVC�@��КT�*��Z���]r�ٶUY1�Y�󢤬��P��T+^"�"zڊ�v���6����wE�a�K�.]j�I$b�2H�b$Y�?[�?�qVE���̧�l5�S�g@t7\öc��C۰���f;cl@վ�6�l�Cʅ�Sؙ�j��aP��F �l�-�C��\��)�C�lG�B��ri�3t�.۝�M�-����9��a���M���L�������o.^<��_�9ͼ���kJ$��U�5�R{�ke&#N�4�p��9��I�PmO��lm}c�h���q 9R�sgFix����];�E�ʫ*�|-���=�/�ة�'��d��>�n���MbMh:�<i��f�u�� �<���E��w��e�wS5��j�C��sk�L ^��	 ������Si^�������h8*"����kڭ�4%u)r@�K|���-���oƦ�R%�{��-�����N�ͺ�&��P쉇��}��:�{n����I[n���<���n�^\E��17]M�zr����dkC��~­8�-E��n&!���T2ۧl����9�����Q~ �ʑ��hս�8�m��jS�vS콺O
����{A<���*f�P��Ut.ù?K�3�J�&�b�}�[�H����n�Sդp GS�ks�����K�`&��0W5ǒ��v<9������n�*<�EU_Ї�8S[7bǙҜl��`KԈ�.��d��)U�$��Җ���ȭ�'�,MY��ß�z+`�}�`W��N3݀l+7�n*1�$�ߢb���Vә�`�ν���Y�WQ���>h�jy5W�p6���tb��GWf$�J��O?~��ɓ�]<����?���r�K��O~y���U�����*o�/o�3���H�O|�j�y����ݫ:�R��&��%i����?�|޿��>��������u��oi����E�$��SZ(���0X[�%4PAN1:�%b�23��4�R�m#�܄�����l��~��ֹn�h&��/? tl�i�P��J�O��4C�u���B��?����CG�n;�9��p<��.8b#c��z��X�+�k[�Y}���L&����5M�`�ũ'g�l�����W���j����JN����_zE�g�?|8���+�zG%����>�{�m�A�Z�$��i��i�ǚ&�0��1�h8�Q�rrIeV��6��v�k��V�'3_-?'���i���x;{9���XI��w'[S�@���4;�m�������3�9�����q0%1�KªI��>�����7��������:$��/��8n��l��E��D�.�Ô��4���0��y4�ݕ�\�W�"�_�fq����h���h���ǳ����h���5����WF����]ܖ�ƭ[�Jo�����E��c��?���U�rq��0��������V�����������j5{n������ju����U}H5|��U�*��!����n45�[������Fלm�ʺ���pLo�Z��涪zs��0"$�ߥ!@4AK��S�c�3K���Eo�%�C�h�2�5,�3&57�k�q�A7'Jer�N���;��L� wۙ�D�=|{�!�a���#���oZDf(Q8�O�$S1R;X��}����{"St|�=Y��H��u� �"�4EU\3��t�j���|W����O��]��@i�a �h� �h ��U��$�r�p�dCI�oc�u}�h��W�b���h���xT*6��v}�u�؎�\�FJ���p�w�=��9��h2C���D��w
9�3&�[y(�"�؉��8`#܏P45F�R;�Ĵ�<Q�vjN�!�l��aF;~Nd!��~0��c0�y�*�f�У�t�·�-�R��Rʗ�G��a���z2��M7���d̜ŏ� ,�y��N�a�f�lJ���1)P;��3���~�Rl��R}A]�vL
n���Ƈ���lr��mK��P�-���$���\.�E�c���K�5�4��-?���Q.��_�ݬ*M�R��B�1�d�f:iv�C�YW�Aٵ=���۩in������E�q��C�-y#�
��;�Ac ��U������BV[ʟ�j�Pƴ�5Sl##�/��pfW	���3Sʉ��&��8���d�r��ns��$�3��T���/<�z��� ��!.���&X�̺݀I7oB�i�Z�<1�G��{�//p��y�?4ߛ���/��EvU@.�:������<OLC�T����9��[�C�.�P|1��*�~�u#�R eBjʥ@����fi�M{�s��5����T%AJ7PJ��|�<�@Q��}3v����U�Q���S������1H��?���شbP�SV��yB3���]��}�W�X�A��K�Ȇf����wj#�ɛu�[�y&�4<o��o�{\c.5��д]i��^�6�z
s�)�~��w�x�{h      |      x������ � �      v   �  x�-�˕ !��`�a�7��?��b悄2mL�_Eg�Q�'�׿�q�b<�3�|��e��̵l�O��m�} �շ��;�b,6�G�o��Ā},&�x��E$1: 4�����F�z����N�h8!���6@pqN>���QW�G�+���/�I<��N0���,q��∙b�D�ib\ɍqDRmq�@�'�X��)��8��w����+���nn��G,|��b�}%�b������Hn�-�XKܱ�_{KعD�a�3�G��Qa� L��!��=Kd>��~U=%A�E)�8M����F��wIN�)θCqKD�Q l"�W$�i/��rd���Hh��%�x[���n>�(.��^c�#���DM�p�+����J'fB�dAJ�+��)!9y�����H��H��+H��-}Z��D�#�qKp���D %!=���d�|ϛgݞᕘ�HL�%&]��#۟��K�� ��땅�ߧ�%��IT��&���/"����      n      x������ � �      j   .   x�3�t�+I-*(J�+M-�2��/-�,.�2�tL�������� �Z      l      x������ � �      t   $  x�e�ˎ�0 ��uyׅ6���q�� d����"^�O�N�cbr����@�7�Ƕ��
�mF8!<�2��}�e�ndOӿm��;=�Nh���M��;i��}��8 ��|;��ݲ ��u��A��M{LzE}�t1�([F4wmI�{� �l�/\�����=ٔ$,�����;��nI�?�C��ϱ/�w�(gq�5՜�Ʌ+h�,��2��&����B�V��^b�hU�Q��뱿���$��wƩ>Y���"N��:��J!�N��h�>��#b~Q�̆�2��SYCA�A��     