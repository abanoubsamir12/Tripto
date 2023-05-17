PGDMP          8                {        	   tripto_DB    15.2    15.2 t    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24669 	   tripto_DB    DATABASE     �   CREATE DATABASE "tripto_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "tripto_DB";
                postgres    false            �            1259    32783    enterprenuerToActivity    TABLE     �   CREATE TABLE public."enterprenuerToActivity" (
    id integer NOT NULL,
    "EnterpreneuerID" integer,
    "activityID" integer
);
 ,   DROP TABLE public."enterprenuerToActivity";
       public         heap    postgres    false            �            1259    32782    EnterprenuerToActivity_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EnterprenuerToActivity_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."EnterprenuerToActivity_id_seq";
       public          postgres    false    235            �           0    0    EnterprenuerToActivity_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."EnterprenuerToActivity_id_seq" OWNED BY public."enterprenuerToActivity".id;
          public          postgres    false    234            �            1259    24758 
   activities    TABLE     �   CREATE TABLE public.activities (
    id integer NOT NULL,
    name character varying,
    description character varying,
    place_id integer,
    location character varying,
    image json
);
    DROP TABLE public.activities;
       public         heap    postgres    false            �            1259    24791    activitiesToPlaces    TABLE     u   CREATE TABLE public."activitiesToPlaces" (
    id integer NOT NULL,
    place_id integer,
    activity_id integer
);
 (   DROP TABLE public."activitiesToPlaces";
       public         heap    postgres    false            �            1259    24757    activities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.activities_id_seq;
       public          postgres    false    229            �           0    0    activities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.activities_id_seq OWNED BY public.activities.id;
          public          postgres    false    228            �            1259    32995    activityToPlaces    TABLE     s   CREATE TABLE public."activityToPlaces" (
    id integer NOT NULL,
    place_id integer,
    activity_id integer
);
 &   DROP TABLE public."activityToPlaces";
       public         heap    postgres    false            �            1259    32994    activityToPlaces_id_seq    SEQUENCE     �   CREATE SEQUENCE public."activityToPlaces_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."activityToPlaces_id_seq";
       public          postgres    false    237            �           0    0    activityToPlaces_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."activityToPlaces_id_seq" OWNED BY public."activityToPlaces".id;
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
       public         heap    postgres    false            �            1259    24790    placesToActivities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."placesToActivities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."placesToActivities_id_seq";
       public          postgres    false    233            �           0    0    placesToActivities_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."placesToActivities_id_seq" OWNED BY public."activitiesToPlaces".id;
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
          public          postgres    false    224            �           2604    24761    activities id    DEFAULT     n   ALTER TABLE ONLY public.activities ALTER COLUMN id SET DEFAULT nextval('public.activities_id_seq'::regclass);
 <   ALTER TABLE public.activities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    24794    activitiesToPlaces id    DEFAULT     �   ALTER TABLE ONLY public."activitiesToPlaces" ALTER COLUMN id SET DEFAULT nextval('public."placesToActivities_id_seq"'::regclass);
 F   ALTER TABLE public."activitiesToPlaces" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    32998    activityToPlaces id    DEFAULT     ~   ALTER TABLE ONLY public."activityToPlaces" ALTER COLUMN id SET DEFAULT nextval('public."activityToPlaces_id_seq"'::regclass);
 D   ALTER TABLE public."activityToPlaces" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    32786    enterprenuerToActivity id    DEFAULT     �   ALTER TABLE ONLY public."enterprenuerToActivity" ALTER COLUMN id SET DEFAULT nextval('public."EnterprenuerToActivity_id_seq"'::regclass);
 J   ALTER TABLE public."enterprenuerToActivity" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    24776    interestsToUsers id    DEFAULT     ~   ALTER TABLE ONLY public."interestsToUsers" ALTER COLUMN id SET DEFAULT nextval('public."interestsToUsers_id_seq"'::regclass);
 D   ALTER TABLE public."interestsToUsers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    24702    placeTypes id    DEFAULT     r   ALTER TABLE ONLY public."placeTypes" ALTER COLUMN id SET DEFAULT nextval('public."placeTypes_id_seq"'::regclass);
 >   ALTER TABLE public."placeTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    24714 	   places id    DEFAULT     f   ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);
 8   ALTER TABLE public.places ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    24743    placesToTypes id    DEFAULT     x   ALTER TABLE ONLY public."placesToTypes" ALTER COLUMN id SET DEFAULT nextval('public."placesToTypes_id_seq"'::regclass);
 A   ALTER TABLE public."placesToTypes" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    24694 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    24674    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    24686    searchhistory id    DEFAULT     t   ALTER TABLE ONLY public.searchhistory ALTER COLUMN id SET DEFAULT nextval('public.searchhistory_id_seq'::regclass);
 ?   ALTER TABLE public.searchhistory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    24726    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            |          0    24758 
   activities 
   TABLE DATA           V   COPY public.activities (id, name, description, place_id, location, image) FROM stdin;
    public          postgres    false    229   +�       �          0    24791    activitiesToPlaces 
   TABLE DATA           I   COPY public."activitiesToPlaces" (id, place_id, activity_id) FROM stdin;
    public          postgres    false    233   �U      �          0    32995    activityToPlaces 
   TABLE DATA           G   COPY public."activityToPlaces" (id, place_id, activity_id) FROM stdin;
    public          postgres    false    237   �U      �          0    32783    enterprenuerToActivity 
   TABLE DATA           W   COPY public."enterprenuerToActivity" (id, "EnterpreneuerID", "activityID") FROM stdin;
    public          postgres    false    235   V      ~          0    24773    interestsToUsers 
   TABLE DATA           F   COPY public."interestsToUsers" (id, user_id, interest_id) FROM stdin;
    public          postgres    false    231   +V      t          0    24699 
   placeTypes 
   TABLE DATA           7   COPY public."placeTypes" (id, name, image) FROM stdin;
    public          postgres    false    221   HV      v          0    24711    places 
   TABLE DATA           L   COPY public.places (id, name, city, image, description, rating) FROM stdin;
    public          postgres    false    223   �V      z          0    24740    placesToTypes 
   TABLE DATA           G   COPY public."placesToTypes" (id, place_id, "placeType_id") FROM stdin;
    public          postgres    false    227   �p      r          0    24691    ratings 
   TABLE DATA           +   COPY public.ratings (id, rate) FROM stdin;
    public          postgres    false    219   �r      n          0    24671    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    215   s      p          0    24683    searchhistory 
   TABLE DATA           +   COPY public.searchhistory (id) FROM stdin;
    public          postgres    false    217   Us      x          0    24723    users 
   TABLE DATA           w   COPY public.users (id, email, hashed_password, is_active, age, country, username, role_id, geolat, geolng) FROM stdin;
    public          postgres    false    225   rs      �           0    0    EnterprenuerToActivity_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."EnterprenuerToActivity_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    activities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.activities_id_seq', 1, false);
          public          postgres    false    228            �           0    0    activityToPlaces_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."activityToPlaces_id_seq"', 1, false);
          public          postgres    false    236            �           0    0    interestsToUsers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."interestsToUsers_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    placeTypes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."placeTypes_id_seq"', 1, false);
          public          postgres    false    220            �           0    0    placesToActivities_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."placesToActivities_id_seq"', 1, false);
          public          postgres    false    232            �           0    0    placesToTypes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."placesToTypes_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    places_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.places_id_seq', 1, false);
          public          postgres    false    222            �           0    0    ratings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);
          public          postgres    false    218            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    214            �           0    0    searchhistory_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.searchhistory_id_seq', 1, false);
          public          postgres    false    216            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          postgres    false    224            �           2606    32788 2   enterprenuerToActivity EnterprenuerToActivity_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."enterprenuerToActivity"
    ADD CONSTRAINT "EnterprenuerToActivity_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."enterprenuerToActivity" DROP CONSTRAINT "EnterprenuerToActivity_pkey";
       public            postgres    false    235            �           2606    24765    activities activities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_pkey;
       public            postgres    false    229            �           2606    33000 &   activityToPlaces activityToPlaces_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."activityToPlaces"
    ADD CONSTRAINT "activityToPlaces_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."activityToPlaces" DROP CONSTRAINT "activityToPlaces_pkey";
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
       public            postgres    false    221            �           2606    24796 *   activitiesToPlaces placesToActivities_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."activitiesToPlaces"
    ADD CONSTRAINT "placesToActivities_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."activitiesToPlaces" DROP CONSTRAINT "placesToActivities_pkey";
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
       public            postgres    false    229            �           1259    33011    ix_activityToPlaces_id    INDEX     U   CREATE INDEX "ix_activityToPlaces_id" ON public."activityToPlaces" USING btree (id);
 ,   DROP INDEX public."ix_activityToPlaces_id";
       public            postgres    false    237            �           1259    24789    ix_interestsToUsers_id    INDEX     U   CREATE INDEX "ix_interestsToUsers_id" ON public."interestsToUsers" USING btree (id);
 ,   DROP INDEX public."ix_interestsToUsers_id";
       public            postgres    false    231            �           1259    24709    ix_placeTypes_id    INDEX     I   CREATE INDEX "ix_placeTypes_id" ON public."placeTypes" USING btree (id);
 &   DROP INDEX public."ix_placeTypes_id";
       public            postgres    false    221            �           1259    24807    ix_placesToActivities_id    INDEX     Y   CREATE INDEX "ix_placesToActivities_id" ON public."activitiesToPlaces" USING btree (id);
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
       public            postgres    false    225            �           2606    32984 3   enterprenuerToActivity EnterprenuerToActivity_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public."enterprenuerToActivity"
    ADD CONSTRAINT "EnterprenuerToActivity_fkey1" FOREIGN KEY ("activityID") REFERENCES public.activities(id) NOT VALID;
 a   ALTER TABLE ONLY public."enterprenuerToActivity" DROP CONSTRAINT "EnterprenuerToActivity_fkey1";
       public          postgres    false    3270    235    229            �           2606    32989 3   enterprenuerToActivity EnterprenuerToActivity_fkey2    FK CONSTRAINT     �   ALTER TABLE ONLY public."enterprenuerToActivity"
    ADD CONSTRAINT "EnterprenuerToActivity_fkey2" FOREIGN KEY ("EnterpreneuerID") REFERENCES public.users(id) NOT VALID;
 a   ALTER TABLE ONLY public."enterprenuerToActivity" DROP CONSTRAINT "EnterprenuerToActivity_fkey2";
       public          postgres    false    235    225    3265            �           2606    24766 #   activities activities_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_place_id_fkey FOREIGN KEY (place_id) REFERENCES public.places(id);
 M   ALTER TABLE ONLY public.activities DROP CONSTRAINT activities_place_id_fkey;
       public          postgres    false    3260    229    223            �           2606    33006 2   activityToPlaces activityToPlaces_activity_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."activityToPlaces"
    ADD CONSTRAINT "activityToPlaces_activity_id_fkey" FOREIGN KEY (activity_id) REFERENCES public.activities(id);
 `   ALTER TABLE ONLY public."activityToPlaces" DROP CONSTRAINT "activityToPlaces_activity_id_fkey";
       public          postgres    false    3270    237    229            �           2606    33001 /   activityToPlaces activityToPlaces_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."activityToPlaces"
    ADD CONSTRAINT "activityToPlaces_place_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id);
 ]   ALTER TABLE ONLY public."activityToPlaces" DROP CONSTRAINT "activityToPlaces_place_id_fkey";
       public          postgres    false    223    237    3260            �           2606    24784 2   interestsToUsers interestsToUsers_interest_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_interest_id_fkey" FOREIGN KEY (interest_id) REFERENCES public."placeTypes"(id);
 `   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_interest_id_fkey";
       public          postgres    false    221    3255    231            �           2606    24779 .   interestsToUsers interestsToUsers_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."interestsToUsers"
    ADD CONSTRAINT "interestsToUsers_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public.users(id);
 \   ALTER TABLE ONLY public."interestsToUsers" DROP CONSTRAINT "interestsToUsers_user_id_fkey";
       public          postgres    false    3265    231    225            �           2606    24802 6   activitiesToPlaces placesToActivities_activity_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."activitiesToPlaces"
    ADD CONSTRAINT "placesToActivities_activity_id_fkey" FOREIGN KEY (activity_id) REFERENCES public.activities(id);
 d   ALTER TABLE ONLY public."activitiesToPlaces" DROP CONSTRAINT "placesToActivities_activity_id_fkey";
       public          postgres    false    229    233    3270            �           2606    24797 3   activitiesToPlaces placesToActivities_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."activitiesToPlaces"
    ADD CONSTRAINT "placesToActivities_place_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id);
 a   ALTER TABLE ONLY public."activitiesToPlaces" DROP CONSTRAINT "placesToActivities_place_id_fkey";
       public          postgres    false    3260    223    233            �           2606    24751 -   placesToTypes placesToTypes_placeType_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToTypes"
    ADD CONSTRAINT "placesToTypes_placeType_id_fkey" FOREIGN KEY ("placeType_id") REFERENCES public."placeTypes"(id);
 [   ALTER TABLE ONLY public."placesToTypes" DROP CONSTRAINT "placesToTypes_placeType_id_fkey";
       public          postgres    false    221    3255    227            �           2606    24746 )   placesToTypes placesToTypes_place_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."placesToTypes"
    ADD CONSTRAINT "placesToTypes_place_id_fkey" FOREIGN KEY (place_id) REFERENCES public.places(id);
 W   ALTER TABLE ONLY public."placesToTypes" DROP CONSTRAINT "placesToTypes_place_id_fkey";
       public          postgres    false    227    223    3260            �           2606    24731    users users_role_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_fkey;
       public          postgres    false    3244    225    215            |      x�Ļײ�Ȗx]�;��%�_0az�CGx��::�	�Wz����ӓLr�9ݭsF3�:�?��M�\i��L�u��.�|�������_���a�J��O_�R��w_{�U_{��_�֏�T�K��W�����կ���u�w�u��_�8�?�coy�U_[�Uy�l_c�����/6���k��4��F���+�%���[�\�a�����W�=����~2�U}Z����A��5߶z(���y����O�-�r�]�ʗ�k 3�	��ڶi�G*��粃�xZ!����흭��9�B�F\������m?���۽�9�}���������S���u\~N���Mո�?F�!*�
B1(���G�Y�������?!(�C�O?�X�	��?��G! �
�1S!
������� H��̓�B�������?�u�� 󗟜mɷ��d^1._؟������O�i����_˧�o���K�}ݸ�_�2�_5��>n@��\R��j��_~�n���}yzI?	��.�:�?��YV_^	��w�Y<��ߪz��}�b�e�@g�X�/�<�����D� �*-������,ʬq=�	�eljA�?�,�nJBY}�Տ,�z��&��U���E�{�<��D�����y���˘��w�O�|�x�� wv��~r��;����@�d���K���k�ή^��W><�z����r��S��K>4���� ����eTv����{=����c��C�.��̾�1m���S}j����{`��u���������_Kl�j%�x�\�MG�?�tK��P���@p?��#P�Bp���߃|c ׿U,"�s�W��t������8?��M$"�?G��A�����WK�|�G�N�%�������o/~�1H��W�_�ᣂ��}%���'�������]�p]��M:��J����>>'�t~L�z@y�#��PiO0��������|v���� ������_����S�1�5.���-@(�J��}�G�?E�]Z/i���?���5PqC�(Dwŏ�G6�?��f0 ����<ޟ�\P�=�;H��� a��ӧ���F�_`���)}M����T���,��#/�g�~�9�ළs]�g��ꛊ�D�c!��٦,�?����JW@��w��� �e�謯ț�1�V�^��ȟ_h`v�'�@y\aǡ,"�� ��4��!9�#�%؏��1�ȒC�O���������{���Y�|�����*�_@䂨*~��"nP�g��(�/0�/%�x��^�+��_~�4�%�A���Ŀ����1�~l� �\�f��j ]���O��?�zF	��gW&h�mN��5���Ȏ�~�#���Z��\��X����
	�iJ�V�7�ݽOۄ�ʢ�x�Z�1�ޟk35����&��ܸ�����?���w�OB]l_N5N? ��iܾy�Y[��א��1@^�����z)L��ԭ�d_w�捏�}��C@έ?��:��������o�/c��7������?ť���% �
�9��H���M˘=�m�/�_�W�9��*����,�4��u�X��>y�O�ï [/���� �� 8&�E��U�8����F�u�Y�s �}��k[�qZ������ �����?���߷d���~At�t �  f����� N ,Z%�/���S��������~l�͌�v
X��w������n��]����_)h���#��w��Y�5,6�����	� ���Y2�|��1K����`����m8@m��.���VΏ<}~���	���sN��5
C(��qѦ�~��b�?����T�o�B�wn}�1��֏�;��p��O��6}���-�'-^�%N��@���y��Gi���7k�Ӹ|R p�g>�������?�����t�������ӏ��;������?�`������9W�9�"�� ������S�o��}r�|2m����w�щ��sX��B>W��I���I֟s�����o'j?~�~-��A=���9��>{~� rT�
�(�~��O����ѿ��� �y �Q�I�}�$m�~���ѷ��i����2�n?�s j~o�}��E�c�^�Tr�A��s
F�>����d��f�2�_f�9��k'}v����sa����b��]A/�w������O��G��w)h�巙��%��,��X������w�����	��_����c�*@�&���/-�w�~�쯕���)�Ś/ܨ	e��ű�� �Џݺe
��e;|7��.�?��A���Ы^�g��(�ҁ��+�?m~������ ���Z���fj�')�G��n)����pB\�k?ⵍ�x8���O�JI�N����ό���0��o���O`��3���5@����o@?_�G@�|����j��HA5g?����Z���C
���ox�`��%:|���_����}�vP�`v���?�����?1?�t��
�1?? �w�w�d�F���8�؀EO��|n�j���}0�۪��w��s���_��o��}��~`t������Ǐ�:���}�[�.>���k��2�9��~����~$/Q��pg[����O?>�?����<(
�R�����:".k�?��������[�Mo��.��﹂� ����o���&��Q�?��7������P�7�!�~?����Z]�c~����"�4��� ��]�<���,,L@��v�w�.?V  q�����﨟��K� ��~�������G=����=�_������^���K?e�ѽ��d�i��IQȟ~���k�K��:�s�M�����w5`C��?G���nՒ���d�_�G@��_�o������x��e[�+@U����g�V ]��+����a��8����βؕ~O�O�ȯ��`��j�?���d��'�/b��D���ˠ g沿�aY����}�5S^�oQ�c���h�r�H�K��-�iBw���Q`��л3��~�����P��`Å���x�h�d��x��=9�'�Jo�������!9<j��ݨ�]s0��W��1S�y[t�Ar�]�h��ZC��9�׿�������_�i��h�dRKc��fy��xK��N��������iZ�:i��L��-��w�g�Pdv���KW<'Y4�7�]jy�G�U�*L�+\Т�(Ξ��g����ӛWY���%�u�j~��1p�g,�������f�-0�Rc�8���ml����]�����{�(Tk$2��BhIk�fQ}�NC���蒩�K/��6#5��Ȓ �xR�9�Y��.Fҳ�@���tP�Y����� ��Q�u�0Hx��N2q>ca�{є�ӥPq��f��-Al)}y�a�J�������݈���NKa� �6DQ�$Bn	�6�3q���!VM��I��{�.�D��&��~��\�΁��毝���f����ae���׷ ����6)K =�i��-�a��~n����Tq/�GBi2E���˕��^@vZ-/ZRk!)�ap?M����.��\�Mo�H|_��x�)v�@i�+\�y"�R7v�¼eit��Bwu�ȑj�LF��;��ج;�>�na�6�	���P�] p��|)e�G�v�.�l�^���M��#t|UoFط�r�`�'G9�t�]!Z|�.��=o+�l �;�媅}y����nCq�,����|�PU��o�=0�7�zW"���k���qM��xt(���q5��ủʏs�q��m��t}n�f��c8�
�䒗x�fYu[�1���\�|��L�&��w�F�z>��;�t��G�%]Α$z�o��_�}�S]���}�����:	6Y,]�B	��΂�u�#�^%�fn�ؑ!��/%z��W��oK�#��t�"�# Z�D^7UE����_��Ʀ�2�mL��#���\�=c�!��&I�`Yiv��.�=���� ���b� ��j�    G'x�C͒��Cq�=ф� Z��2ݯz�Ou>���_}�^
,\���iq).�E�l��&[���mƏ�������W�5���:�f��C�Ś+Ij��+�OS�͐I+Μ>���L��|��H��*��WB���W�\Q�a���5ٗB�lǐ��Vs8ԧJhA�B��$Ȥg����Ak:,W�ZfDk���p������ٸӁe�Y��éqo���P^��
��JT��K �M�(��C���֌.���Gbם-[3n��8��1�p��@�KF��Y ��)��qU�+��Q�@,�>�@"���X�Q�3N�SvSd����������ٷ.B��RW��9~H)-�/��,���]�� k�b]'N�L� C�2Fq1.:���<�'5��"��{�|	qʗ\�3�=�I2#�Tt�1���ѭ	F�{�n�&��_,�����ޟ�7�+���h��3S�<��J1�=�qg���W�"��wI|����7<o�?CW�[[��}1_�T���3�~(>cE�r����,��#>�\�}C/lZ�`�^����q����Z�|��Zd@�D](�Fo�� �"t�c:3g�xiP&@���ar�x�Ցk	��Ԇ�0R��~>2��(��̇�R��ԫhr�o5���0C��k�63E2��ʓ�ZZ%
�	��8��RD��-}?�'O۝�|�"Lw/K�Gʂ[��,�lvxG����0�؜D�Fma���w��y�ֺ��fc�9�[���U��d�-�<t��%v!���%^!�b���&{a�8�S�(`ǀ|#86g�Ej�
���wvl�UE�/�6T1񠝛���P*� �y.�ۛ�f}�C����� a�&�q���[7�
z�5q��1�~N&l�� [���b��t�q����U�p`�fu)��m��e����Ti1g�hՍc��iΡ��0�N��=�{����%pu�#��F侭'�h��Uc�	�����5HP�/�[���ɐ�{��eyS�p��	=E�]�nh������u���)"�9�rߒG/�V�<N�,��^��0+��у�b�^�%��ᨏx�{ɲ	p"Z�2Wo7M4�z��kOk�&�~c2�U��<���u����[�$�@,�R"�	K��VK_&� ��(n´�1js�?���euP�$辠][���ݪn��|IxN �y��)��fQ�
:����͇5y��ͮ!�H�B��ф��e����S}���E��M�X�McN}V�M��'��*9�e�������am�3jON\6���a��%�u�Q&��@�D��>
u�\Z�0t��#a��O�q��Y/�6W!���|�4���ph�����x�,�H@�f�Y��%�t����fw��DsŐV�b�.�L<npB &�Bj!���5A�?t���,�p��	U�}��Q(	(�dL-��A�-ܢ]t��Nhl��GC���z�w!���ً)�ux��+J��a1%-��?��R�:�N&���^D��ob��#6����Cs!P^��n3����u�����K��佤<6���s"�r��!�^�K*HGs��xzAR�|��^a�,�p��a��Փ{�^�𙰀Yw�<v��=�r �\��
6u���Z�q*FG'M�|���?�k�d�5���d.�a���<�RBx�1���?��(r;B�`vspk0"T��$W�?h%}?��;'���� ���]�-_����ѐ���J�+45*����S�Ύ�NWo"9
�M�cw�'��:|f�*�����6yc!G����t�]7��1�`�S+Jz��&��l[�4�܄��t�����7@��_���5l��Vێxq��>�I�o��{ރ9w���������km��4U�ҕ
��1b��L���7s�}x\���K�^�r�C�t��_mu�q���RP��9B;�Q�`IExL}ā�hzej�}��˒_��V��� ��X�[fť�^f����J�?�.�&X�$��{Is��_��Pxe_LU�p��2?���E0�#�!����89�^���EZ5�p��]m���r���H��My,E�v�VQRE���߲~i/����;v�ܳ��Ď��*Qδ*�}����R��9��gJ�a{Y]�s�pmHz:.Ι�u+jxQ*�a�Q(�s�4��nM��)��z΋K��-�v�=x�@Z�6���
������j���5�Sx�A�hp�SQ`��Nrn��\J�D��ev u�V��k��x�S�e����	�G���%H�}�zS;VӼw��E�����^����Q�C�>˛}qk�=?�1po�f6�B�0�9Cʗ����x����䕶��[�n�o�vL��ɦ(A��(M^wQ���o��:�{���{�Ľ�����xвf�a�Ҡ�0'��L�[���'}��`^�&�A��i�π5Y���u��{V�3夵P�D(�v*3�&����rX:a��8vL���K8=���m�GY~��fE5W���gpX�	Y�|��hH?�&F��/z�Ji�Z�F�|�ʘ/�t
]�+^��m$���'�{ʺ��If*����h߷�J��4�=-�Pts�<!2»��2�s���Y@�P��S܂x�[Jm�ʽH�>[�gN�A���O]��P��$�u����ɞ�g�V�:?���6E� _��@���g���C��8m]�O��r�]�Hi#W��}��9>��:IcG}��"y�/+�������KˬjCk�q�_c� tU���EJ�XRzu�l��_����\@��ҧ-��3FT��$N��w;�ki'�O蕆	�H�������i� ���Q93����*���a(0KsA9&��d�I��x�N�(�(���D�1}��x� ׀�S�C��}m���p,7�Z�4�+*��V9$��E�a:E r��Iy��Bjl�:�QJ�ޗ��]"�J-�{+��x>_��j�V�=Y'$>�Q�mȁQ쟞�([�k��2��)��[{!°:�	q�N���R�C5��v��ŉ���7��0��n'Ĥ�c`p���A��m���@3�í�gn�,	�]�
�#��oۨ���R��;S䭺%��;��}�@	�&A�˫��B/�] s�bͦ��#U��ů'T��E�Ѽ k^=@3��^~';�E�Yen�����A`�%�є\��4������KS
(��l��ܨ@�7�gIP�Y��Ÿ�"�_D�T��pB[����M7���"`�T0�Zqzt�g�%��
pnd�λ3<.��v":6�ڊd�x5	�����]~&����!�+�.�����I�x����<Ģ�$���R���8a��Fo?w�eY_��I��&�h�����B#n2��P
0R���*Ϯ���6�=�]3������L�s#��H�����0��ј������n����\�h�[%}���x���M�5�:��-w��I��}�j|��3��[�[�|��.3��tۡ{A�,Od��B�yP��U%|=��"@���ģE��W|��o�&���*��T��N����V����z��F�}E��)f+��m�i�@�ݲ�RMpB�u�O�����y�� �Z�
ֽ��t�4��Yɔ�r+��gga����3oӽ�8Ͳӓ�^��~S�z����.㮼�źU�x�nqr���1p��-d��� ���4~c��N�M޵��0
�2�3x�費
*��:��T�|�H۩���F&/ל1��G�93��1#5i�ËOUIg	U�%��D㕲�Ob��b��}1e�딇�b�,���&/(,�7��N�r+_C<�4��+���2���L���4��D�$���qSIF��8�fEu��\��A�R7�����s]�"�0͍�(BZͯW���*�E1���/PB�������x˨�W�H˒�ػ���&�r��,�X'���ӞB_X�����!��~[�AO��p��
:�7D�H���h6	��pf�e��*�wDe��ܫ�]�'q\����wxR6�TU[��ջey��p,�]�uV���0��л�KL��͍���l�kLܙJ�ǘ��3>�	�7�*s�oO�K��ᙎ�P�Q�%^ƪƐ�#N��5	^    �Gx��d�nbE�f���';��t�垦S�A
L���CO���;*���^u�Z�	�TuU���SyNn�Ё�����>:�;��~#��m޸���ݥb�֨H&4�+J#jx���z{�+�hw�T�t['���a->���:�_�F��^�O^�K7c�'=j|�A�\c�>w��$�-���Ӝs�7i�)\Ē�
s�>�yap�f�Ǉ��"���������%��i^���Y%�X#Cͣ��2�<��k�my� ڇ�Z��E��* <ޜ͹zq-0w��F�5�)���ٛ�y�'��f"kk�H�c�V٥Wq�_= Q�o~��3���`��zD��Q��}!=���.�,�l�t��cqV�D�r��f��܀W*H�b��nE�뵟'�6+���Q�^E�m�cыZD��o1�
�o�D=x��ѺٵŞx0th���x#vַ:��X���{�Jr3C!�q�����;`G�6�a62z��`��~o�����C1�_uF�|�y9�����0e2`&��4��������R��Kn[�\�n���:�Uy�\�o�1T;�⡋c܈�����{�cd���ECd9�Ծ�J��.Di������'v�.Z\)�S{�y-�ط{��6����/�9�[�C��{t�dUO�a���7��8��&��l�ð ��$K�a*�}�Pe�@#=�]}YN$x�L�`��������8��(TǼ�4�2l����ܛ���x�K�o�
����X�<ք�`|a����/U�R��
��e������9fb\��rq����V��E�.B�j{�7����X�i�+����.�1m��w��M�&���	�O���IT����Y?-]zĶ�����(�\�]ƚ�SvW;�}1��K�Z�-���P�z��m�Xb�Y�o��|�
��F�IJ"��jl��F��bY)�x�MR\j�'�~��i���X��7�aYu�Z�@2��)��:wD|�/�u����R2�@��Իp
+Ih�ݶ��4"�|�Ŧ�
��kb�2�t�۝s&
�9�=�9�����mY6�R`껸�6�Oꑺ�fxlU�y� ��_�&�\���w���:?3�d��0����(KL�C?�h��7�7��2��'�oVK"�,ڡF�U���K�gx�X��y�����V%�
&��ͳU�|Z� �֥:�l��� ���s���YDsu-<B�p>n2���r��	(��r���pۄ�����O讄���G?D؄U�t��4���*���"�Ӊ��`ǌ=�0�E[���k��v���2�R[]킉G�a�^��?St9w��67����"w�IV�[���҄�;j�9�7���^H��w��G����b��3b	�˻Ye��h�}����jш^j9�����W�P��eKT� ���k���\������\���ϕ�%i�S'2W�O�D�����F�����ҳx�!z��+\��Ɯr� �>[�re�ϙ^�H�A�>�Dv����u�U}T�y�G��F8�M/=�a��斮�ؘI�G�[�_���Vꍷr�ɻ/%nU���y%���}#��/m�����2�`����45d����܏GKtM�3i�.-�N�����XNK���N�oAX�|�&��V^���pKĞ��>ds��u����/����b�npJ�R�8{V8v:���G�ư|�[�Q|����»(`�9L���^�p�ߚU��ݏ5Ƹ�\%{䜝�x{E�u8����!̨�O�%���ތ�@_N#-�r��ai-kS��A$�Q��$qZ]z�͂�N�%)��X�>�	@|tF�I�9�"N��r�d�"�&G.wf�[�(�_wF&�pb���"(���U�l���W]��fgҗ��J�MX������L�N��g����C����'�~�x��Vz�;u��*B�~���E�
0Yl�.%�ޡ1iL�F�Y��4#氰�o�T�ױe���l�Mo��6ށ�-��зF��&�w�/^�D�=�\�悄��Ը�p�)����(�� �ZeC�a��{���u3pyu�M���=0��}Ⱦ�u4�aVB-�8(YH��ḓ�G�����g�]��Ni��B�UF/��]����b���'���'�=���;3�;������N�L[b����W������c�K���m��b�+�5�/ ��֯~�1�(���Zi�iJ`gY~`�T���I�n���jyY��[!��?݃b�ϱ�HG��O)_j��+W����^I��p ��X�G� �5zR��iX���ō{y���X�PX�8/ڽ>q�^A�M���eSDY�L���A7�Ҿo��p[��ll�W�l}���N3�q}hR�N�\�,����堧'��~SH�|��C�Bq��M(ٰ=��p|���Thb��:R���4�9/P���X��H�4���&��r�~]��������%��.*U�2@bz��EuI&�T�pc���1��b[�@|8�����s.�Z+��N1h�ǸJxŀ�o��\��K�䩽��υtZ�8�hM����֋�L��鳍E�ʳ��=+��Mڽc��Q�p]-B��9?�
����8~LL<�<Yc�-9z׶]���n/i��I��-��^Dx)0� �����1����VH{%ޅe\��w����aSb
��	�3�v��
W�5>WY�f֕<;YV-9��\٘���^)�٘c�õ�F��,�9��i7ݚ˕�y�& ��L�.�ܢ�#���q�jM�����.�9y	�߶���l��A�w�ވ�rTz-�{�Nޣ�ˌz�����Û6oʘ��ݓ�kf�@����V�]�V�^F��#�&�g�ɪ��g�-�E)��ծ��;8][{��o���%�?���h'e]��2#̈́d����E�E�P�$�T�1���ZD���p��MN�b��&&|��S�NtFF�cK�J�Y6S�j�
r/�J�i�Y�v
4�[��0Z�z��] ��C*97�Xi�:E^)8Ԉ��=+xO]�FO���Q�A�yߕ��E�]{���ĥM1	)e���r�@Ay���"󨉗�D�mx
��.^���������(��h�I�w���!�B���E@����5��Lx���K���Z��m
uW�5�xē3�*:���s��YG5��x��?��7��\/�u��瀞�4}���Q�&Ϲ�(�q�}��%p]2ʳncPS�>��r�(�j,/��"w �1����en�E=G�n>F�,��s�J4}�B���Jp�s�iX}4�����>_5x�^�WS��o{���4s���J}�ׁ�f�[Q����2r�2��vE1>�Y e~1 �%�)7�p{����愑�ȴL���t�C���I�4�j{�l��Ƀ?��i���z�,��N�LI>�����!��擧�[��gN�]���a-�j�m���+ۊ�E*<O��;e�R�J̋�]D�%�C��yvֽ*�Q|ӳ	�f�OwNSHN�s�:x�£�.��H�2�kj���݅��z�G����.=�)����K�Xf3�=�o��zDXA=Kwd���-�q�'Q�ij� x;<�b��pe�q���H�I�h�)d����Ȍu�z�w��Ƅ+�5�$�{�J�%��Zs� ��u�������?#��6_ǂ�x���U%���'l�ń�`Y�f0P�H/�\�9#[Vc��ÆH�c$�8zl���>���7Sױ����,&���m��`.!��xٿ�ن���>�������y�����w��h�\_K^t5wi��r�Tj�R�6��:�43�3��" i���B����
:3sI���R�Z��ׁ7�,J�U�n��b*���"�WPU�xQ�hNkl��/�.��1ĢL]=�A�����S͵�Eiy���,#�^��C�酔9�b�Mt��x6��D���"���f:������\�z��-q;tN��C�	4	�<���f4��4� �.�Bk>Uǖ�\��޻m��p�hٜ��^�f��!o�x�����[��=�qL���4&����FS�`Y��쵁h��T�h�u���ȄcFn�b��	    {u��,�pe�99F�>x<)1=�T���_�k�+F�F����L4�����=��
�*"u�o^9���y�)�<?�z(�2!P<���I����ݎɣ���(@֯J?%� ߎ�J�-F<�;S���$���IN-b���*�����m�6vsK�`���霊W9{1Q���˔I\��ᖮt�o��Ϫ������:ns`x��V�$�hf69@	��8�4����T���6�O����=~���:��z�l,TZ{��z�k2Zg�K����$�M�?ו~D��^f�{{��0F�rjk&/�y��>������+Lu�O���,Z��Wׇ������՜�;��-t�Bjq��8�n���	�U/�\3fE.��Cν8����W"ǐ���e2z�=��f��r[�qg�s�̒]�o����M���S���	�Ȃ�d�+y5vNhP�U�C�;s�g6k������kВ�v�B���{(o��$ċS5d��}ݹ4��q�Ή�2�i�u��"X�s-�nZG��%i	�K	J:�9�f�u}t��E���Q}��w���у�6��\�!h���0g�vx��y����M=A���%�2����$�� JoӍOonXKm���S��=M���>��7/�t�<Fbejtr϶s�!ɭcKX��#�%����3���t��p�
í�j����E���z���7��8�i<�|�I�4�	sǝ�ad��i�<b��$>9�wCgM�!��F��	fʇ��g�p�H�NAD$7��/k�>*�O1�i��s�*�it�.������� ��-�
��\k�o��N�����������N�U7��6��L��ai�Vݾ7 ��rǹ�C>y,�^À�ɛ|��̥���z�kg}4�]j�fׯ��٨��j?��ԁ����H���?f�����K��X�f Xp��K.7�$KNږ���H�d}	��RF�t5M��}qV�mxîbz�6���B�f��9M�@8Gń 9�G=!���f��O�y^P�VN ���^�
�;u
�ֽ�K�gy�t#�2["�_/=�x�,���'���y�� �
��-n�#iB���P	V�b�~�_���^�u��]���_&�'C�<�p��)�*�3W!�yO0Z�U�ugt^���X�)��;�t�/|���UGQ���M?�b�G�a\C�W��#_w�5ݫ,=xo�r�?������u��-�ܪ��;C�m't]��A�׼Fuȓ�e����j���	��F�y�X���-Ԇ?��z�U�ݦ����Z����<�N\���
����ęqgߕ��حp]�㡺]?�Gp�涾/'D1��m<8ޞ�E7���75���f�,M:i,�'I�������K��h�����N�י�b��׉X(�LP����mr1�2fk�V�����1�$�_���iA�-�7�Z\a�6ج/K�B`��Ѥד�b�����/�+X�x�� ��$h��s3�<�����{��P?q��)�ϩf�Nd���ٹ~��L=r�8��_⁶�\"�8]fA5������ �� �رti��}+�d�x�t��߳\�{����Z��Eʾ]@n��f~ŅJQ�<����[�rFb�ױ�n�><��8��zx������+$ ����r�InV�d2�@�ڶ�T`mWhG��3��F��]��%T�M�'◙�6;y�^��,��{>�����@����>#���M#tN��ɖ���O�XwF_܈��n�-O�i�\�-G�v��䃷Z�bE�����i�c=1��,I4B���7����إ�q���K��)n&WSn�O^Ҷ����z�(���U������fw�n
A!2x��F<��)T���N���"�<���4�_f�� �bxo~�ރ0�~Ȏ����,�*�B����/�0+Ci?�g��S�����l|��K��i8����(�9͜�����30��_��u�	�V��w�;�� ��-�⾰6Ë���ڒ;N�]Ĵ�%3����]g�:�_��	�^��p�iH&��HJY�޴��}i3�M�U$�s�m��v�n�2԰K���8�7�+����0� �e��p�����K!����E4q���W)�vg���G��������9:���ι5C-��!�I�P
Tw�e�4]� &�ah܏mw��\^#	��`�/��\e=��8�Ѵ�_�rėL�<��)M�PW�i1Crb�uOf����K�N�p�/����. P=t�XG��J 0Q)�Ƨ��~�8rI4��	���sjY�h���Γ���3c48Ώ��Q��'88>���~/*�;x�l|�WU?�[L--�eHS�6mh�m�{Qa�r	Ȃɀ��،yoJi�x�j�5>�8� �>� ����8�q������e�� k�B��Me�V&�
������OXǯ�œ0�[�5𐞟�7.�o4d�u-Բ�
\�6�@|���"-SGX��sL؋�̖�� ��7Z�T����>A��)���C��dq���}z�t#�����(�CŽ���.:��oR�*�Wt��B���[��q�@���l�ٛ�a�|[Km�B?MJ���Px3���>~h���������#D����k\�|y��%�-�дn�ʱ��T�����;���2�Q��ō���!����O����Z��?�[yӹ0B�s�1�{>}H�H|y�����(���g��hJ����.|?L/k\�#�����z�˽�w�d-�t8C�O���R_�t+�CKo����n;�$U�TC���y���N8��;���-��'��?o�����̙Mk���vU�ڑ~K�A"��x!:�N�xl%>Z`$�������f���WP��f0We�g�޻��o����1>��`��}�"j
�"��/�QL�0����� (k������?{����X�t����EQ�/�L��P��Y�-=�r8D�w:|�� �wU�sm��	�ѕ��K'"��B��?�]YI3�	{K|�g�0�-S��5)]�8�J��zw�`���P��x,��O�׾��$أ���i��~�Ә�J�B��Q���0lox��>�-L�Hҿ ��� E�I�y����y�!�x�Ey��j~09��g8�@?�!�iQ�/[���&�,�������)����<����δ��Fq�����쵘���������~*��Ƀ�@k}���h�SJÝ�fd���/E�C�xf���Wm�]T��_�o�T�gڅ?�
~�<D/��#Wq���<az��@�v�k6=2����n��\� �)��Z����0(N�;��`	!3��~�9ɚ�b�j#��;=��N{D𷽷�}�#�p�����z���ؓ{Ӛ7aX��wUE���>]��Of�G~Fp��0�����j�i�6}ȥ����ȃ�i*�ytZ�UU�h�WK�r�i���l"���f��DJ��s�±�^q�.~*�g﻽`0|NN���i����<X���W(*�������c���[�;",�y�����S*������-q=� ����Ś�����w����,"���8d�9�ꓭ�kvc˷�J��R�^c����K(uA$ ̄"��+�e���3O�rzRR����IGԓI�TpU�?�&�F�Y�]j�?�u��?�����*�z�}�y�*���frbmzy`4���B�+�Y�$Vh�׭����������P�
=���3�W0�t�oW"LP�vtk}N�ǵ`���yM&ґT)��v��|�E��m�d�I@,"���x����e�T�6��F45���e�O���� _�Ĺi<��~��wF4�0��݋�)�;q!�|f�xw}u�e81�9���^����4дyl|˽ZuC	L�=���E@��_6��)�`ձ�z�1E�ԈKbNL�g��I��3��.a�2��އ��xU���8B���~��]�$VY�rC]-�∐��:����׉;UeJv�~q8��~�H��<_D}`��������S��H�Zz�pl�[�DwG�����q��F�svj:VE���[�dV;j���    ��Y��	�*�p��0��4��|�СÓ�q5���.O�쑗l�
�Y�š)�)t���(��D���k�^��?������~c�������qbx���O�R�=�g���t�Pf��1
��G��i�fpY}��~;��$25wh�$��{��}�:^?Y��x��ԝ�#痥�[Q��_��R�~�/���O�����MǧZ����'�AX��4d��ZYHh��?cO�!���c�����j��O9��h��󬟮����/�,iTY+�B�g��T������tv�;���@��m�Og�,�� #E��c���B�j+8��F���-��Z�(3�����ovB<4o�"��Of�|e�\�����e���F!�-�~P�}ݾ{�C�:��鲙l�\"�M��ԫE�ď<O�ډ�Ȋw'?�p��[\>��Be?�g�IHf����'<�f�	PV��K��5���H�6���v�z�9F�CYܩ\����^#�L�h���aw�q�zl��k�˖��֌M�M%�b>~�b�Q�fYQzQ�z5'��{�I��#��:��^e���ZT��i���̨���׻���|f�!��f����hV%�W-\V�{�����,6����U�>��z�(��;e>���q�a�7O�)
��#19�z�0;K��!�1�r�\Y%�  � f�
�ez�c_~�]0�0���/tM���n�Q�Wdҕ�ٹz�-��'��X��A辨N�)���}�e�z�V�=*�8�u>�'�wP�F�Vl�r�ELǓ���؁�����yRP�GH���6��L�G:�Ԙ`6�24�jǞ#�u_�Z؇�sx�:C��.Y���H�-j�*4�"��Sk�X���G��B�����H�y��S^�ۊ��� �}����Yי�_����qZ��dy�I��H����/I��K�j��Y7��0����Iғ|��ر����	�#?Kl�H=6p��GNe�lڎ(�M�e7�o�AD��[�8��,u���^�v*�0��]H_�O�<�jQ&ټ�*�VS{��/�U��R�y�m����e>��J�"��;t�X��������K� �'�oQsK��eI��������޶'lX92�ҁ��5$Ls�GI��6!]�^נ�5z��y�Q4�xQnoK�"�g`�B�:3��jO����ir�P�fхN0(�����ږHM�[BY;���[E��R\q�e(q�8�-vT�fa��*AK����0�H�sL���#����s%����K�/��c[Ӌ;%�:�A<�<Қ�2M!�2y�_�GjWg)F�j^����:��02����%83����}�+*�|\n�}��a� �R�Ggɉo��h��>{+:��6��3|�i��.�9>���V�k0���WL�i���n*��u��W ���b<�ޫ��,���c�竺LS V��k쪒U���SՒ�QiqeXy�k��ɕ��s3��"l����c�|X�8ϒ	^�~"I?�"P4�B
�i��u��Ŕ�Y*32%<��}h!����P��X5�-Ǖ]�{��yON�*�[n��G�)��y��޶��nu�}�W �#'�Y�5�T���S�F]�Ů=�&�W���!�:�7��3��W�9�A�fټo;S$����4�)��.u�lE����>`Mq>^���{ZM��b�Yo�V�����ŝ�%xBu'���F ����`�&V�j�@g��@�78��#C�׻�AKh������p��vᑯ��w�){��9�˓o������s�u�&~���$�^��?|��}�6�|�W��+P��5љ�쵂Y;��q�Z�ڲ���������Q ��⸸�%1�_�YU^�����U���e��
_ٙ7���+6'mi|l���À�r���ivæ�(н�G���/E���\�/�$ZXy>��N���}=���mt��h��\O욤6{]u�&+�Pc�۽�7����"O�Be�๭���R!\�{���h�x�߹_��������Њ���9�����l9IO�ЍxW���]Ü���ǟ��b�Z�"mL~no2���>�&��E%�w�h���}�h�5EߓY���|x�q��a?ж�?���)U���e<�����'�gh~��*|�Ym�|��~"�l��I�^�~�)؇�ܡ� ��(���4(kt��3�����K¶�<5��Ba+o'����.o��������o��������΁�x��d��΁"��3f�&"�b5�2�&�3&2{4R-�y�
�*�~����Q�)/�~���9�����\�����������e�2���������e���S�oG�R����x��E��%���i�}V�gZ���R�������d�����N��J��HtFO}^�t������ʶ�,�?>Px�=6�-1�A;����s0�s���`H�cw�R�ߤM�̳��4�м���>���}ɗ���L����i�︴��'O[�%�a����q�TP�G�i�/.�_�m�({֏��}�ѧ�P��W>�V�V�g4��v�'��[Ul�ʮ��`k�'��l9ս*D���r}��[�&Ƒj���4�Xvo�]��u]�ko`��0Op���47R�)P�Z�,��j2�������9��;s{]�2c�5W~o�-��q��_\M�hK��$�A�m�*?q������ʢy���v*����������9����ʵ<dZ2�ߝ�9��B������H1$%"���>��9)э=1�`4�U�O�JU��pV)�8��7�eocHFj������WZ\�B�P�t��.��_�;w�I�N�p}�kIY'���TpO`�i������x�г�#J,��_�r���)V6[/�kR�u�����~r�N~�)�寰w�SYP�^O�+���u��@�N�b�݊
��'�k��D{��<J���&$츹�g=��1�N_�Z?2����p+�`qXo�<gov|(5�NQ���dB-mZ2�N�J�h�G��-.� �)�6U�2{qT���V��uK�.��i6�շe�D0�@�p-�Tt�Tp�31�hO8s~睁`v�r�
+�vgG�B5_�'���ߡ��ެ�}��_�H-cI�a�_h���:�Ӧ�3�W��A"{��6�������%�&�)ò9ؘ}��@yco�n�y\��Xǔ<�8����#�ud�/t��^� �A�~_���{~s����!�G :��[A�<�t��qq[���/欔�& <?�A�W5=u�U~�^����𮔰�*��cF�*{\?u`��Z4н<3�Vd@ub2}��[?<d��AK"v�O�;ޥ^�]N5�]۸�`�;��[���z7�y��\7}m�I���u���A�[�N}�fk��3A��n�sG�h�W�4�9~P����i�J����W��n~oײ/X"6m#���:Jo�m�� U�ʞ�&!�����@0���I�t;]!����]����7��Jq@��S{ٰ;���!/�~<��R�qC���v8^+Ǵm��
5�i!|��Q�C��w�*�ڻ�ڱ6������:g^��3p6�c4���I~����ɷ�C�"�m2l�Z�&�\�N��)V����]�i���'?b�w���F�����{�s����l��^��+Ӂ~c��H��+��E6?-t��` �_&r��U�j�Ri�!�p)C�����(���^6�uY�2�J�`SE�3;�_�ƔtP������Ӗ-�*Mat'W�1Ў�L�Ji���7�0�B�$Џ_X���KAM���*�l�pW3M�=��M������os;��z� (>Yr�W� ^��I��ͣA�us����]���`ڥ�ES�� �?���L:��4»]Y��U�Ա]�FO@��r�v8y�U
r�i�ҘW�`�υuŁ�.}0�{��b����-�E���8�g�����틁���p̆��1=T�U�?z�E��u^{�z�ؾb	P��x)o�_�����Y�g��v�]E������)����p��n�k�^�$��X1.��V��q£���(\���    ���/�yY6������щ�lE���G�i��������|W���+ظAg��|����k=E�e�ɬ��CYO��������7p��A%��u�
P*}�gp��j8j8�
�P��,����=�6v�nv�ڨ%=� Po���m�>��/z,bW�i!K���2�OP�nT�j3j�۱_̎��r \䘅.��[kz�׹��cիQyn���˱�
��4v{ys�ڮڛ7Ma�v���Ld��$������OW=ՔNj�fmz\G(��&�������3�3<F�|�Ճ���M���6��������]tU�&�5M��oa���@���um�@P
�X:P6d���ʌA�|˞��^8�jb�/�>����l�(�$Qe�͠���{�v�c�/�Zq:����!�chb��&{3G{�(-���~X%�]����~�ơT����U�����Xy���J�����elK��sD�w?���p$pH\�� c�5jp�Gup�J��-�zˡ�4�m�^=��UY8B��"��<y rd�I�$E}`<��r���ʾ���#/_5bt[k[�LI�3��{*��'����)���,�Xv>���K�s���w�NZ���*�Ǌ�Т�bi�?`���)�K:D��]%4���d�0OQ;�mK{
]?�Э�`u�]���V.��D]W�~{u�KJ���c����D�=z��e�[E� �C��Vun9�� �	�}H��
8L ��k��ڠca��E_1��wS��Pyu���/g�����jP�[�^��öP�YL����")���~Q���ʼ�nY��cQA��uR�ّ�$��?A
Z��3�%{��ij��c[qb ХPq;:o��)�Y`_���\�-[!�3�:P�zw|��0�Mbg�^^1��U�m����Oܒ��~Q[Z�c��Y����p��������vSi~���ci�ܴ��t�x�������v�0���>�"���s�n��˓3w���;�`),8k.wPF&�F���5���*I�9d��RwtJ_�
�ч�ޯ]�Bk%�y\����z�Ǽڥ)E�.E$/(�)��e��E8�x۝��*�yq��@]Ea��/���'����n�̓tU+T޸NunM��x�"ۦ}�M�[X
���(e�Q��]��_�<��-����]����ջ�S%������-f`� ��w�ͩ��e�^��R���(�����٘�r�O^����K�t�hS�f�]+1�YAK\3��)^�:�hg�������{�F'��;��S��i��%WD��yԀk�v>���
7Y�΢�h=룟�xY����J���4�.Z�#?_�K�P*=�k�� �f}�+��N�p�nЄF�x���t�wc�� /<m�X"�j�㻵g	�:�jD�ߪ�&��Ռg 3��۷{.�gL�/��+7z,��-y@me�2T��3j���R��g����3�nNc����� �O����F$ C�|����^�:���oU������Ob�8E�1������;}�������������SY��{�Q]���φ��J��4}�W��:Id�p�M빓~��n�m�`h�7I{�E[w}�D��B}E�� ��P	kԌ���\�����/O��*ٳ-��=0|���*9�P�.��@�����E���>�O�?]�i�������U�W�W1nJ׀�	���2E~�g�����zB�
����z٤*�"x�gn^�%Sl���)��y�5]���@"+i�t��*x �`d ��c!�sRp�޴����6'Z�Wi׼���f;�F�t=~��M
5
T�k�d�9�k�F�gE�+=�H$��u/�"����Q���M������i�<_P� �xT=Im����l~*�;��ۏ���`��3n��K��o�����Ȏo5�d��]?vO�ɋ#w7������iCZ{�����9Y�V��{�0L1F��Ö�R���if��ݧ�Ö$��i�ՍVW�̋?	+/TH{a&��M�V�C�~����m*Jw+qw����N#&:�jTg�{�����7rBWZ���+���[�bym�n�<I6՚�<q�r�Z��+�+ �!��m�S��A>�^5T�-T��ULxu^Ҡ��G/����F��g3�xc�[ՆZ�:�V4 �9�����/�X�h��`tP�Fl���;a�Ln^��ܺ~į�X��T�=�;i|�.;|\g���A��۷ښ�����a;#qir}�C���6��B�|�$����C�8V��8�>Q��c�g��^���&��]� ���J�U7�GUys��L�HELi[H�'��|�uOQ��k0�@�FN���cq�#�*m�:��Ǥ�6e98/}�=pÉWyG��i]�G���	Tj�J�S(��Tw��j��;�B�,ǐ���E�d��2I�A���N�-�]ҽ�PГ�X7�gw��ה�Qc[/ЂC���D�l��d��E?C�
5~�(�UypL�+,p�~�IY����B*���xb��V$�[�y��O״i������,/���Y���f�ˇЯ��yC�8�-=��'�'١K�P�[�6���ц���X�2n���]Aj���ҦZ22���G�B{]�J�K�6�^��z]Xĺ!'��z�;�Ḥ�|�0'���g�˫XƦuf�:Jv�RI�mj�3R<������
�%~e��4P��u�-uƍp�����c��:��ͮ����z$~J5_2����'�.�C�;ӓ���!�B����!���a�����H�l��������Zp҆�3m=���W�v�1d�����ɔ��%X}+B�
���=j����)k�	yoP�����,�8-�����otp���"h���F��랹^���ȹn�"��k�^%󑯽��L���1��T���aHGɫo�h��(,��� �I �e��B��QaJ ���)�&m:;w������`�d�V���s�?���\�vG�F7����y�ͯ�ks�3�i۫��}�����V�s�Le��ƻ|�q�$�:	�]���ut�R[�M��&5d����.;_��
t�:��uxV`�0?W�(Y�f��"g�Ĵ�7y�������jDH�d�P�7ZE٣�16U���C�S����n�0W��Wlse=j����A�jTG̢_%�a�/Q�M��"r����w]��<
�ݩ���^6����)i�ǁ>�e����`�B�0aY;;4t�����RL��J�i����p�w��,tBf7LާX��Vi�z��f�y<G��K?dR�ӓ~�ux9X�ѽ�����J�5.�a?�n�2���1ŀ��mg�p�g��P�1���GD� SG��W#���:��A��݌�a���(uaԤ<�pOK�:��V�__��┬z0�'�9
����3%&�r�Ld�H��1�]��D7Y��Oԧi�[�b��AɃ}}ӻ~fQ�T���h�c���1��c��a$]�5����KN�,��oi��ik�P]��n���U04e�m(E*�}j���~�`����Re�v��(�t�t>���3gq���ܛ۳�\:���jX��ag��ۦ�RY�;����֖,Vב����Yrބg��C���Y�#��Fa�me'/x�Z]�f�k�S�߬K��;ﰗ������ߏh���)��	��֓��U%k���jt�;e����]E��/�1����������yF-��7���v)��
i/Hߑ���k���l���,�v^�Re��yz�ͥ�&Lϔ�p&(��T���g����o���[lWV�7o5�;�������FAp��-�����7sw��I^yj���F`��H��4�GB�V,�����۪A%�Vn�t�J��[n��ġΦ�}�I��g�Ϋ����%(��"Y����"?�N�#���ۀ?,3ôP�s�^1�CcV�$K�b�� c(I��:̷+�W�F~7�j�*MI�<���h��6G��x�U����>1���FeO�Y�^raB���[5*a�N���e_-��Ho�7�t^�.�h~�ͽ&u�z��    w�\@�3�PA=+g�d�`�T�	��xMа��uM��9��� � ��ؖ��Y�`���8�E �}bV��Ъ��9ߟ��R�{>��8uE�H�#E�C.$��e��;x"
�C��z}���foj��7+��A�7>,j���(�,��#̀�����>i+�8r�鮨�ıc�,?�&��/�э�0c����5�
7AL���%�s�����������dk�g��D���(E�OZ��)����]�䍎�{���������>�9 ��"Jxb�Iܒ���K�X?�`������n׋Qe�λ-�P�.z������\�g�Ҥ�>��^l���ĺ\�"ӳSb�QS��Ъ����Z<�==M��{����5�?w��~����Iy�
��>�g��j�N���=�/�#��]��fG?�_��9V˅�5��f9�l���#
C\w�3�d�\K*<�W4�DC�y
ln��7�w�K���?�l��
�����p�r��"��+a��+O��޷�x�vb�xS ��� W�ٴ���^ݢ;�Fer��fB`�j��J�AW{�e_U�T��~X�Ooc[�g7<�_-�G�/
� ��b� ���n_�s�q��:��V)"�h�&f���*`�3��*R���x��,~{b�,p�H��E>CANԀ����B(������~��=Kw�j�63�x�	�؋¹oM|�2��d�e ²۝k$[���}��IW�\
	���%i��s{w V�@��2��]�L}^7�\1�^�X�'��X���̨���g����_"�h�wF�3g�G�=�;������dX�L9�
�R�KH�!���^���n�Z�/-I�js廁Z �:�j�K�82���&�פ��r��el7XԴ�+��k��)�#�@��"�l���<��y�Ɋ̠
8�q,A���Ȼ�9sN�?�l$��{�O����F�L$%�$�l�	4���7�S��<�U��Z�0cE�U�h��j���v�)(*`MT���' ������O/�eaZ$�4pO���)���J�8m��Z6X�{x\�׫ *����[�5FX�0�x�Vo�����M�������̯���_��D.��CfKy�@6��ܟ~�z�^�\���%��R�U2����C��m����z�Љn��U�K\z|��sV���^�*�j<�N���v��\��t�Ö�S�4D��)����=��Z��I(�d_�(_1!
2��'�=�2�z�3����ֹk.�T��S��o�-�t�+j��ĺ�̯�-ߦo��m\T4��d���}̖c��V28/T�%�H?�і=u��,���t>Z�(�kժ,����d��M��@�ݭ��kw�E���'^���@_�
;����ڧXw��ld�ļWY�n��_��-+��+��D�U���J�˜�=��h�߻��Xd��pE�s�8�W�.虑�0�H��i1ތ���f�ȥ$��<?����S�'1-沺 �*�4-�G�kze*
��%�5���<O$#���c�[h�:��[ڹS�6{R�|��8�"ˏ��K�xMc7��QnZp��#EH�V[�G�'o�]�"��y?b. �{/ZnAN߼-ۊ<;\v�R�_�h�П�=�0���k`0�_��ckx�+���#�qB�4�q��ŵP�s��|ww�F[�qL/�5+h}�urG�q3�.�QCn�[ΡϠY#hb��5?���0T[��G�__YJ�Gwk�J�%GQ9�����-�R(��w;(�U<�jZQ&�d.|���Տʹ���íb|��oN��f&����d����7�3��5`l�N�r�T�,��ꉩ�i�~)����	�����8�Y}��JZ��Q�:��")I��c݄'� �J~�(�UU�U���ʫ��S�Lem��ӥ2��;�Dʅ�%��-d�Ta�?2��)� k*��"��F^�Ķ�fTɒ݌��7�$;y��m+_�$��'S��W쏞��?1E@����/?.�'�g#��P=�����(�a��7�4�(�k�id�,�#���W�S�T�����������Z�)�%a�;l�sU5���g'8h��r��vx��97�b�Y�]��Q~~kb
�}u�O��I�p����n��6-��%�v�:�Z|Q�UW����ow#�~(�=�L*YL"^Pf��X���-�x���P��6�g��+��+��Dp�Nc���#[�>W�:�����y�ƣ(B�����d����-h{Xn{q��m˸�~^�(с�@��.�~�b�.+f����E�+r����L����d0�~[˰�"��@��ަ@�U���C��} -Y�W�țp����m��ܛ��ݍ�~.�̀��K� �||�.?6�:���ޯ��&��!c�H�1M�W��!�B����l�W�qS�n�����@E�\����Ŝ��6�q�9a􋲮F$a"K��H��ڛ5u��N�>�ǖ�=���|I�����Sr�/�����tw �M�jG�)��p��D�(�y��AU��)��V�8�9��n�&�Z�65yl���V���IZ8�\e�BN����{_nIN���x1��|ʆ�v��=rז��Q/��n�-�#CF
n���}����٤�6K�6|��INnr��)�=Ng�|itI��O��7i��� �f����Y�s��H&�̯�����h#͢�jڲUu�s��-������}_� *ymÕ���d�Q�)��Cjb덏t��z�֙�̂3q߅����N��F�k'������a})���O�LwY<[c��mܯ.^�� ��ҹ��9�,Ӂ׮Z�a����1����#ƖD\b�kdC8Y�F盡�x	WS���̫��c���-=G��k�'�����E9��#���a��z�ww��B@�Er��1vj�����!���3��8��Fs�nz���eK���
U�v��o1�0d�'�'.�1	<�sNG�Q,f��AI�s@���*}�"��C�vY�,L�AYqg}{
b0�w��M`�H���L�\�� ;Ke[����)�����<� ]�C�#W��Wyw�*�_Njk����m�	c̗(e�8mf`�WP*=`,v�t��	?L�x��R�ig�8�lH�z!�ZiEȪ
	 Q#�j�}�	�/<l�Y$�R{��'�3�K���Ϫ�dy���܇ 8z�i5*�1�\L�_Ȋ�"��� `��{���]�MWC7rB��%�D 8�H�I�]�~ֵ����q�귱>6jJ
�5�f��`���Ch��L��ܸ%�;��%�Y�m��h�����j��)i*����:jgI�x���YM����q�9�%I�}��y���w�*9΢*�l��n�nư��SCu��Lڣ�F;�`��!m��:W%X)��mSs�����[mD��2\�d�"j���{�Ëw�s�y��$�\e7��U,�� 3P>�#���<��t:��v���FF]��N��vɷ��x��y�7t�K"HF���Yo�)iծ�.��G%�>z�,v�m�B��Uj�ҡ�޿�u ��M	���D��t��DCg���{��:��M��,��B��߼ǜ�?�;sǷ����]?*B����o������P��^�:f�PaC�k �
9.�r gG�a�ϻ�M��b������'�tu�9}��b�����*GY�E���`���a#��Й�Mm~��$�L��ё!���a�h�S��ɿ>�]��2Soz8�L�=�mwP}ٌ��l7
�m�ґ����a�9&�8*�q��mu�^��:e�v�jX)�=�G�ߚ���
Ҿ���l�����v:������J͂���k{{�r���,�ʕ��Z:J9f�)�Q��0��z��hc�9����XY�ek������bO7����R���<��7?��D_F�z��좨@�C��O?�hDe!�}v����L��G$�h"ͱbό��s��5�3��7�������;��J�&M�]�9Y�%E��V�(��P��.td�T��S5V\�O���ȳ.�<�M�⓭X�.yl"�Ԩ'74�щ�e�OoJI!r��rFW�M��ZW�/(�]:�~�u	    R�WOH�59�]��GC}�Sr<�J�xC�$CL��!�>�xy	���ҕBe�R~?���I�P�4���n�5�Mw��DAp;��x�
7ԡ���d��ߊ?�%�$UY���9Ra���I0~p]ʅY��M����kU�ɹ{L��M�0C�\��Xe�[^H������
���D��,��E"�j+c�7 �j�	!$h�iDg�Bq5�7��O4�o	����B�������%׊kUC'�B����{�GgN}�4/��)L/T��w��=���!���kh�~;Z!� �p_��W5�N�g1�i��jf��2�N�kCI ��D����&�q3Pvf{[cC���j�Tjw��ό
*�.@|��t�U�l���Q�r��L�X ZQ�{)�ǫ*�u�`)l�&�����`y���=��
W�M.9&Rv����FESߑ�Y�^���V(W��G��By;�s�P��)ԭd�C�L��|��^��-��u=�O�o�����A�e�@fUޥp��J�,"�í
<W�j��~s
�	_$$;��}�W�J���׆� �\� ����n[���<���5y�ϯ�j~Txܫ9	�X�I��^�R���DQ:����(����p�xL_���,���o��O�VB��������G7��`6x7Uh��,t�Ih�����>נ ��K���C���R3�U�^N����W�X�T��/��@j�I>���|�G�����E���@p��h�bB깨{0[M�9��Ib{�y���v�ȌkM7��G��Q�L���sc��x�^𥮔9���$G����`R�ltyY]�h���[�G��ȶ���������^��=�y�\���W� ��#SɎ�<�Яm�)q�v:�B��%\$������W5Z��sڥ�kyx�&"�Ģ	Y�����*�b�p;��Z�Ff"s�*�FZ��xfb�GR</S馉�@�n�_��婊�x�%�(c(Nb��g��z��PtK��5q=���׊Rj����;��ڻ��7Aj�ѻ��<����O�m1��dk��X���HT�e^�;�ES"�	��ЅC��޹���@Z��{�䯰*kwDP��lC
:���R@��ܹ��9l��	M���j ֯wZ����/���i$[� ���9�>"C�tX�r�Ջ�7�I"A[��aJ����RNk�{��N���E|�3j�n/ea1�R��s�>gJ�����7�J��h��c��~��	]��Oo,����P#P*H��<��Q�����\�rʛ�`?�ֲ �/0cǴ���c�I�	?��f��d��M�Չń��퍅M�M���7���P����8�ܰ.�9��m;�,�"W7��т�ȵ�hӫ����5G��8)�l�uW"�Zg�#�1���ϱ��І4 dЛ�p�M7y��@�
 �G�HK ���H~��!�luՠfu*T��r��0nϖ%��F��u1��|D��W��Ǻ*�s
$����WRa����̥#%+XH0�e����0���JrLI1�1G�˴s�鏀���v)IK_@�&���yF��H��6�x���(<C(������D�˟M��hyN��3�Cu�4�Xao��9Tc�ߩaS.A�i4��묃��K��V���ek_�H}���?��l����W?U��-��h*�����N"V�b�ƸX�`�����{a��	%q	�0�Em9�*4jӽ��#�,U�߶È����t�jJ0�h(@V���&^r�t�q�n��aT���zϩ��xQ&�g�G��˰�qm��=.�h5�M�:b̽r����]Ȉ�H�_= o}��-�d���]&>S��c�vs��	2�Gi��ᣂ��d����؏�Q�T�ef�!�sp�[JG���.Yd�t�P��f�Ƶ����C�w��������̩WX �ޤ��%�-����d�<[��H�	��=���"�2��l��z�tdX�@3�a�8�q�������Tڞ��{�t��c�P�����A+ix�H�\{Ѣ���|ū3���� _�}]�A��H?��6���e�`� �Իn�'R�5��݋�id6�~��rT!9�_�ngt��ޠ��>�Q	�\��5�\ܵ���q�U�e�H��!$��;�f.�q�����T	�8N�� r��>��3!�����K�}gv��N�Z�!;K��?2���V9oL6�FȨ�
E�!S�B�`����6�ͰFx-��K�Y���-�ߵ)#���̀��i�Azb�A��y�}T�eK�� 
�j'T�ׁ�H<�#�����^��ͽ�W�uƻr�n�5��a��e^,�?ُ�iL�������-bxL����,����JoM�L�M�[�dUfwD-Q�>�bB2��}]q-����Bp��x�{b�Y�8�?��3�����\������5�.��lQ�������B�W�/�`~Ƈhcn�;�<��nω��x�sz4�i�y�_}��e�0_�S(������P��uN��+
�C;M-��B��Y����L�9�C}�I"ls��8D��Q��ٜ߂I�t+V���;2h
k��˴�`���&�1�����ktk��::i��sd�OJM�GM�xku�i���Sd����6���������zdaҊT���yU4f�D��@ʜ������eF��s���2P��\es�Q
h3 ��h�Ӿ��-��h�cA�}����@li��ڥ�_�����Sz����]?q���kw	����˰���v&�ǖ�+�%\��Zi�e&���6��l�������O5ۋ:��k̅jM�kM�*Y��s��秐��md��1�ݨS���f!�j6���Y<�?�,8
��U�B��z|t��*�������V����P�B)i��?W���X��S���G����{�ch�b(��_�YdV��{%\���f!A�jE��S�o��$Q��fq�U�X��L�������;f��U,�W����=3���*��tY>WG�s/���hK_��Y�!L���F��{T�M}(%�E�D>1]�*-�O?�������8jP:�`��r,;Ed����E�w�?� ��L�@��&9(�Mzc�^�-��<�^N�6�$ɠ�'fs�`�����6d��Wj�pU�����r��k��g[�+�?�Y�dߥGݭ��()!'��o��}����FU÷	����U< �]�i�5'�xk-W}ɭ,=b}� ��j�a矩`
�����7��n<F�����ٳX�/������*�F�h��3,�CБ��.�U��C|�(��Ӥ��^\f;�c��x��j�E�O�B<�I<-2�Y8�%y��W��K�ig�j|ec�]�x]O���n�5Z�M�D��Bo徍��⩺�`P
���w��W< 1F���2�P����'�:\�{NK�$1%��<4��x��V?g�-x[��,o�*������%c���~�,RSԇ;�HK-��:���j�PyWFX�j}dr�����2Y\�03��f�R������ L��>[�7Z���~�zh�oqX
I0��`��_�v�c3cZ ,F�۸}G��(l�Y�xߓ��F�M$��� �%��/S�4�A�;�gv�-��Mä�x���XsB��2�se��To����$oQ�IZ����\�6��b�W���Βu4�S`
+���0_W.�e' ��}�L0��7�T]���XEa��9�(fl�UMy��|��B짣��Htŧ9��w=���-}m�}K#B|n��;�Xd�.�چ�����X��Lxe�mꆝ:��
_��9C�^r-� �P^��U��͚�3tF���P�ʲ�bɞ\�7����2�X���h%��q��+Zʏ&�W"��������PߋI�\!�����B�mce4�g ;�:���������6�XR㹬�N?�%�0���o:wf?̗1&˱��9�zx��n�~h}(ɺ�%�o�Ûg��^�o��,ip�ul���-��^}'-=#�;&�	�C!e�1���#Ϟ����zQn��}����{�e��3ur���	#^��B?1��yaO����
A�]v|    O~3�Wt�P�L�+�ESE�d��a`1[A�����9��>�Jti<<���s}P��X!$����d��M�k��9�����C��&����z�F�Aݨ�i�k��]�;���J�;�B�DLcL'(�C���)�Oڻ��G|E�Fo���0j���k��%��n6zc��a�bMt7�z&��Ɨ
���:��mcBeE��.��i"0���_XoVz�`���5��F#V寿��Or ���=�:�GrT���%Yf@�&0�ӓ��v��������,���'>`��3t��^z��ʒ_A߂��,.F�`����z�_����b��1?�B�a��\Bo��S�eo��杳���pn�?A�l�Z1wG����5Y��b%���]I�9�f�j�z�B�_aɝ$����NIgێ�ּX;e��Z'��䙴��P`��7Ү��r�p���w�]�S�.��8��X�H�������EU,����|��J<�z��E�;uE!;�ݔ4�Ɍ����&�b��^!����ѐc�"~��y$�H�����<3��y���E�GLI��Qƙ,BT~��c\�<P��;oG�ח"�jSkj�heU�
������S�\�1�.|�<7{�̣��TH���Ki�n5���<e����6xs���4؊?�v����؉J%*6����+x����彦e�Tl;�3�ρ6?�B�9JS6��
�؟p;���͑v/\�q�=g�����Uu���A�ߐV�~�A�E�W�$/�.lE���Jd��١z�z�1��@���~�G�0�$ef_c�H#���%J�lz�����bo��26���s���Y4��B��!�ڢΗm����o������2)�@,��|�`,�M�n�k)���J��Ah�f����T�2�� U�7�m6��IŚ�x�6�?b���:y�g���"��S��Ƶ�
Tm&���B� �S�۽=�[�i��=�D��I��NQ��#��,��G�6H��ৌ�7�lY~."e�&&������^9@P��B���ҽ��#S��8d�}t��7�˝�47� �dN�hm�)�~���f�Ѩ),���>xG�i��ŹP?XnS:���v@������r�ڽ�肩>��©1���/$�`���EM/�:��X�LSj��*eI[�z����ҾhF���E14�qw�h���z�G.riL�d�Ipp'ڤ��O������zc���q���릤�D9V�=Q�8�Q~e��O:>D��4�O*7"���4U�����g(ZO�*q$�3��/E@1�U�L@�^B�.��l:t'lk5D�˽�vx�B��>'��]�}'�y�W�b����o��z�qN��k�S9���� ��lZ	��a����Y�䈲9j˾*��N��G��&IH�hԺ�tjj�RD^�.B�:|h�g�VP�x]-��R��J�.�e�;+;�_"#�n�%#���d�%bV��c:��@5��D;!S[�(LC�S�`y��0� (IV@:�S���uW ���_Ry�f��mL���4� ��u��]���CjtZc�R��JX���wR)3���>�/\3��-������Rzj)��]G�z�4\�&�K�����=�Β����Y��W�S�i�i�h@fe�h��{���O��(��!\�{w�>��J����kUg�W���|&]�����\)틮�a)�!ú�*?���9rd������{b�� �5��Y���5�g��-\]	�D���8�"�-gm�lՆ_n��YM����

���*�u�^�S9����qƕ��i��3��o���m�K֡�Q�D��w�m���Ai��7��� ��F�h�3��ya�pw�"��p�����W��$�~���)���!e��MZ{��<�	�}�a�W�'3Z���yz�;|s�
��4��o�� ��z�q���n".��fXBt%�Y��L�ݮ�y?�'Q"�糆q�9\)�(����x�u/=z�vGfqL�GM��@F�dd���Z�'3	jR����w���� R�0��v����G&��)�Ƨ��x�ụ'��4P;��-O^�p_O .�(U8�׆������H���C���� �(Ԕm�Q��SU1����S�,��������߬��ַ�{�%ҵa �r��$B_�/�*FP�b=�Æ����w#�
��H5q��:��C�W��C�Ւ�%ݪWrn+��-xп̬DdI�olJkR}zeN�=�e՜.����o�SR4kHJ����&�&^u��J��\��	�v����j�p;�1��x�J�iX�@u�?󼝶��>�,Ѕ����s�?�+x䷪�5jcej�h{q�
� �##��g��O'q�ȳ�j�P^H�jN��긗3
_�a��~%��l@�7y�X��pI{]�܄SW�1dɿ;0�7��O􍥔B)�j��7��G�~ߙ)�k����8韉W~U����Rn�L�W��D)B:����ƍƸk�
	�+Ͻ���@�gL���L\��ud���)�t�%E8��#m8��I��S�
�
�WG_p��u�7�r��vfGm>4J�@td؅��{�3�"j��Ԫ`ȅ�d/�{=��1�����O�?�Rqbm�l�R�Ɉ�"I8M6�X�'��r*��:��}
�z)%W.;�\=ԇ
g]��9�G���
p0�EfEI@ݖj�Ew��Na�$�+�N�@r+�4��3Dg28��]H����,��/MA� ��o�5���1m�lg�*��M �}c�+ε����89���p4T�c�UЇ��;�_�����/u4��6fc,ɔZ�*��G�R|k�}����u�.��2'��6_�S��Z��լo�t����9�R���Ss2��j���@E,;
G|�e%(�W��lG6]����Z\o?�itE�P����l9�d�Dυ��zʛ������?\�TRA�y��Jݶ�%�y=�^I�7��r�� _�:��V"*-����a�@%I4���e
 7�x6
�+@oa�H��\��E�e:�\r +!%%�RJ<�USLOI���<� 8mz�r��t��V�X�_�:;N}E_���S�bmMb80�s�}�B�awUp�� �W����7Sc)hj�m�����P��E����p)}~�9H`�����#�(ٵ2�+;z��֒>��Yχ�_ȹ��N(��M\%1��B��?�������D��,#�<3���y����>�V����IH2e�-䊫YV�q�ߜ�aEp�
���i >\�^��i���b��'UnO�0� �� \\oǵ��rU?p�&X~G�/��dێD;���U��O�zi�¬ҝ���ǅ�ա��ɠq�s9C>��K_K<5T���eTG�N��Ջk�;�&�ޤR��h�.�P{����r#�Vh�},��c�7 u��ϊ��ri���_��X��9���P"�#�ޕtw��u����m^���fX�9���
�ݏ[3��ѷ���zsƃ}�2� a����U�il�����xXυU"�t-S�vy�/\��xV�}#�2�M�#���\/%��(���נ�_��}�3��x�Z��M�1��<�7��-�ӳg{�:"jn����RW>��r�B0�E���B>�C8!��*�?�_v���C1�,e�����7HM�w�`��۩i`�H���oMn��XL���uZv����p���D��3s���<cg?yXz��Ly�7��f�dZ�w|F�T(x�0"@#|.6��?�ծ�5$���oW��2T�V�֐B�U���+�6��;6��{dQ�@0�6�5^"3��#�n㑠�P��V�Z��Fn�N�f�L�`d�m���Bu_���ׯ�n{ۏ��8؎�8$G��Da��������:Qγ��8PG��CZ�ۃ���ec>9�t^����q+�y-��nU>���N�-��I����`�9T"��ٟ�#83�.���$��}XP���Zx5J�7zEz-l��]�i�4�ȗ\���ߖV���hv
I�?�������"��+�Uw�4q�^]fc;�}���jR���khH ƈ��|�(=�+@��_���MZ8us�2(
̐f��j�%�?��U�� �*�    ��T��t�N�`pC�����0(�?�K��s���b�]���~�����_�����Wۊ��ސ����嚯�>�8sF�b�%E���i��T�k?	��vhĿ�����c ��XB�O��G�+��_P���7�u}u�G!��2nm:S���;쳛R�v�ô5��~9G�J�Y.�+=U3Y4z"��D��g��]�J)ܕIۑ)�<���P��o�H��r|�����봬�`�6`�@��i T�r��?�r���e�7q;,��'�g�>9].. 4'[�5ɟ³�  0�f�^yf8�싔�t�����飕-.��s�&����uW�����z��b^���V�`rD���j]��H��,r��E>\�ue�{��`uT��w8��7���
Ov���[vt�s�g�ó�=3F��l�׋N�p��A�u�eF�/݄���Γ�ƛ�G��f��Q\v�D�ݜ}U{��n��4����w*>�̷�3�gvi�B�R��A�B�]����}��Z���ݶH�IW֋iպ�!q�� �v�t,�5�X�Q2rQ��B�7���KD��V�Y(���م1|Z�:��H��[�lk�g/�A�CaM���C�U?���$Ҽ���Gv}����J{��
ɿ����y��hy�N2}6'�T���5��i��)w�S�1����3�	�\�}���ՏI�#Q'�j3O�V��>�FY�l�@�he�&��;��SK�3Y��q8�|�O1��v/���۴�)Jw
�F�r +D��n�V�Zj���n�����N
��zc7�U���߶��`߆^����u�@m3�{�������^ZW���.^�Q_�_�k��l�����?X@�Wt.�C.���ee�Z��R��!���+�=omrz� �	(�cP�4�&���1vE��T>-t�H�eF�v��85�/�,� �ޕ�l\5�`��*|�A>��p��I�+���E��GF�(v���P/W���]��$rh�*P�^��q���j���x-��x�ᲂ�K(��T�61���34 )U�%	I�E|��?��8�����yJ�?3��;$�YE�ZO���h��������i`��%�U�Vr�l �W������vS>m6��E�Z��'#�[��o�����������rϟ[=�tA��A�4,#�;�PYrJD@
	s�*����ڶ���ca'9�{�h�6b���iAT#�~᜔d�:���a�*�x�ɋ�F����C�ǋ(���� �Pqm�u�$U+����y�P�0P�Ғ��E�Y5�_����=���`�B�)h}i��˂�Z퇬4��A������ep��-iF^!�m#�F���b�OG]�-;�&3T�Ұ���H��8�(4��i&�7�t1�1�
ef�&��G6�}M�4�	�\�5Z4��'g/T捿3t>	繒������d�O��	c"q��i~8n�����$1��L��]���
~(V7�Rv��t8�,�["��I)�M�u�SZ�x��<ke'ZY^T؞2rYb�e���0��T��8�-�t��tx��M����iw8ݍ�E�mG�� {#p�5Y��v�FcS ����N��\���������Z��8��{>�^�"R�ĵ;)�@�b@_�o�}� ��c�%�H�*Z�A��O�h�K��d*6�!8��-���ȍ8�5~���Dm<ஶ�S]LK� �xR̛�xKw�fiX�����S�t�:�
�Xgd��ٜm�P�P癪��;%J�����B6�,Z�E@cds��{��/� K���cQ[Ĭͫ ��	[��Z��\�u���f�|���B'�������,��/����G�<aF���ڻ.�����]��<��[�0�$
No۶ꦩL#�����bV5�՟-E��]���\��!��va��G�+�Lk����^b&�"mO꥔%����U?ލ��� ��>{�"X^X�m7X�#I�:�B��4W3^,��^;���Z����n%>5��A;�\�f���Mz���^��7��0��m2��*�N:�,��׆�=*��(�A9��Xz�A����ӷ���:�+��S�f�I��eNi#,�s�C�o|F�Mt6��ѴR�x��vl(뵏����������ϊ��~����4`<Qf�_R��@�x���E���،:�O[bI7@>�78���r���d�=�� ��-H�{�<���hHg��*DՉR1�Ċ̋`��a{����r
���B�3c6�ܢ�2�q�M�]�}���;�����=�����K�xOb�o�Ӌ~8������e;���j�1%���m2�ޘz^���0y�r�Q�w9T��eg=Yƪ׏�ĉ��O��D�8ѻ)j��xϒ��]-h�y�7E^�L[N$�z��Y�c$t.4�"���l�$eR���[׹���Ӄ���u�Z
�M� ?�1��\O�r@�$�_f����d�j}�/Ԁ*�8dn�Ъ�K��z���i����m�o
��ڕ��:Y��D���/]�i4�̧.����S�,�ZrFX[�%��jM�3����չGRW�mi��+�������i����5��T-��d�gyT�:KM,�&����c��ɛ�1�7��a�ٛ�Ex8���5������L]�6�����Fm��5Հ<nZ�:���]��Z8:L8������؛X@�O8�D+�o�����~2��;��Xt���\_&2έ�f,�Tk�yYOV����>�J�ۀ��v����u�s&U���J��Q(���1XB��_Wg�x�j4�������?��~VJ��[�o.o���Y���u���rRHdl�`a����49779�[�rd�q�5����M�?L4�h�j�����O���39��ϡՙ�$C丹Ѵ����|��#�K��̇�ФӞ�x��8���+#�7���cX8�{���@�B��2��B#�&���GC�r����e������Ւ�m꺜�l��m��,��p8��>_�uuo��B����rhg�d-�茨R���t�֧����w'����M���{�'�d�8@ĸ����:S��S���<MP�0�N�~`�N�W=4p_���wU�r�7�??�f�!n6y;�D�����A�Lm@5����K�s�.��E�BB�)V� �C����F��덝qr��2�g�W�b�+4�>��)Ɲ�a�
b;��L�| %����=g3�l)��2-���|�@M���vN�x� ��m�,�⮚򙹘�ȓ�-��+���C����o�I5��8f%vͩ_���~f���>{��r%�y�ve�l�A�K�������vɾ�|��e����p
���w{��bv,T�e�q�7󿽝e��t�R3]�d�X����oN����7��fvv�yO� ������������~���}�ԑ��ͱZ��C�V����i=�$
�$Z?R�nC�?	H�ݍޓ�C�ܞ��q����>�@��$�7�8�]�,I�tY�غ�)>�b6���1k��Z����:��Ȫ�p�C.HfZ�� �������N�	��F��o���f:|ٛ/��p��w!��oޠSQ��f�U�}}V���=kI�(���ɒ�s2ص˕Q��z@����A}[���w{Q[�q���3E{�Le/k����S����-�	h|K�-Mvo�}�c��w_�}�)Pl��6]�̑0g�2����u���0^O���I�-���߳�m�U�qm���l�UW{}������UXW�����9C�⤶���L(Ƃg���� �Wǵ��T`�Ӫ;�Z�qͼ+������ kbtaK�����	���U|��e��E����EF��4�nxK0�/(��.IQ��8��Zu�8��+�O�h�_:Uw���|T��P�����
</���R1������v�/�(n����d�PӴ�_�R�����%��$���WG�JR�>Y�ۭ2����<��j=N��'g������&���b�*ۍ�U����~��2.~߇ڭ90 jG�������2%�P�    �ȝ챒b�U+Ibɶz�-����u�W��RXט�R��2ُ�W����TK���\�oS����O@;�w��\��$�±��v�s^N�-�(��������`uJ.�,�d�����)��I8/}��Y�c+t'��X�X���yrY�`�����a�Nk�@'�yq��w,��ރߨ���bH����Ѧ����<Jք�_���6��[b{��G��R�����]~Z�����G:�B�V�&�z�~�Q⃹�ɂ�[<��gI�ST�W{3lC�~�Kߖ(�3�-K���П�XY4G�lfB��OG��P���K���3lԔJ�u��_w�S������Kw��U9�	?W>)�f�Z2�?6u�_
D�S��*����a�c�Ċ^����R��WU�N����y� ��8QL��F��؃�k�[�h�G|;�a)��w�`����U �v~�]��XCE��dB�Э�2 TY����۔���.������m�@�W�fe�S�� sN\!T�}�Ź�}.z�܊.�Yll}��
k^�Z��_ȣd~������:�����ٴ���>,�tWp�z�u�L���q�8���!\}PS���W*����d/��>�4v�Ch�-���Y�Ht.;�W�H3����W���k�>�y���JWQ� f�\zY~?�V��00kG�S�`d�0�g���N��X�kG墫�מ��N��`s]��/�~���4od�q'A9��X��OП��D¡Q��)d��4�wԎ�.a!v����
�oK����$�Y>�l��ŘT��=���F��$-l[��&g��!��v��S����&�,�K�if�G�QK����AWû����{�N����b!VY���t��Y��a��/"��d��±_�^�P�3b�%�a��������K��I(xQ0OK˖M�j��dvK���nfc�t�}�i�.���!�z ���C��+�4�>6��-�K��Ì����_R$?�aCo���ʼ��/�ώ���t3-Gl� @�E�]��~�`"�P�<���/#;j��>qy<����Ԏ�~��;R�k=Ԉ[zD�&��a
�0_roD�Aq��Ȥ�U��C��@��G�
U'�u=�����u
��6ĺ�Y�(�8��] �?��iAE����V*�6�=��hGɕ������R��s�R�8�9;5��a��C���Q�t���?���d�8,+��^s>�Å�8�[~�=��~#��|��~��vؒJ���2u\�)���x�v5���>r(��Y��8T[����G����-�1�NgCܿ7\.���;;���S�{<Y������.6� ����S��?0�V��5
u��앹Ҿ���bc�A�(�幺%�`�<=�|Q��)�K���a �BP�pz;������������������a���	�#-H�uJ��/SN�`w��f�2���г�:
�e�������b��/��v�Ĳ���)�H��P���`X�o�G�_�C���e6���X~��Q(A�X�%[V=:�Ě�nɱ��Ԋ�}�wN��9H�6�`�/#{���s����E-H��Qv�%��dY���1Z�Z��z}^*ZAk�)[��g �11���z��k��g�IiK�[�)����F��F�iti+A���h��U��3���fżK�P�DQ� �<\@��m����.*ԯ�����N��7wP,3;��<�9�o|C��a�R�?�Z<��$�Lt�pf�!5�Y�+����|a���;�\����\Y�(���{��������y���JMb�2��/�"1���D�(ڷ�ѓ�n����2��v�r��;����� I
�\��E)��4t�M�h-xRh!�޲w`��%c�҉FԶ^~�Ek]Cu4���!0{ɚrx���'�NL(����++*�s���s-���Y_��z��t71�J/A0N@�o�}jxv���|��3w#�����ܭ"���W�������=���2�A{��V�����޺�ABc˫�
�.G�ԥq��?3w�Uv6Xg-��@�������>f�����_N��)s7���ޯ�1s��y%��"����>Z��2|�sT��5������G|�^�,Gr9޲��o���\mj���-�/m��O�Yi�M
2R����z?ߛ��Ϳ,��?���?���������8�/��߳x������kS?Α,��j�o/z�v�����d������G&
�mL�S�4���&�����wmy?�ܴ�o���P;�ߙ�����T4�֤6ͫ���~ͻ��~�+�(/�"�U!o��~�=�(���jB'��ߦ������	�`(�uM���T�ɿI\�{	����EXDAѬfԪ,_L�S��^(����z�'�;d=�6��R�׬��wՂ*����k�^��yy=V������g���i�����,qm)���&���|.J8^A���P֯��Q�~���؆}�CT�~�G�9�Oe�o\�w\�w�������߃�Q�xѮ�ѣ8�j��������;`��%a?]��:�+��	�*_�]ծ�����������C��I;�q�²�!l'�����^����FnD��go���FGT[OGG��-���~���r(��p����#RM�&*o3��^9����AY�z�u�e 0�����"��&>���=�.ތ�m�~�L��T�I2�� �K۷��e�#zաZ�n����i��V;�qh��֍R*@�Nv��Z��֨��c\�^��n[�W�(�ѭ���#'rH����5ӏˤS&�������h��`��5ǚ3���	��)�����* ��&�'�4L���#ꐼ����w^��A����R��:���Y{���+�u�1��}�n�O�IKr�""n�Zh����r����Ԯ�[��s�:��eaA���d�2��;��2 ��V��P��N��,p������kF��k��E�ڡ0,y-����}��j`|Pl�S�%��Si�%�.ӛ
%��Ɓ��'���	M�
���f���£�������Ń��V�6#�У�-�>9d?`��ߺ� ��Ƒ}����Ǹ�.H��kb��h��Yɠߊ���H�P�3	S�.�]@<a��"I��u5>X|nC�E�_�w]���J��3}cB�K����kj@���.�̚�X���
.;�9>��<��烬�����������;xUJO-��[%��} u�A3��.tm�$��#H����{�	`��;Z2��4@&�2��D[�֪��u�������TZ��U�ؗXj�8�#����Z����UV=�P"�P<���-}�����p��΢��G.��q�]�N��|�*�?�.���+<� �%0���୳1��W/�l[���B�^���� ��֍+�1�k<�l�*K�)��mr/��sΝY�_�����1�s�����c�BT�^\	^rM�Nm�s�"�8`��g�0�v���6Ծ�nl_�
	הy��f�
C�h�����^��;�J�SO�u�ٟ�c�+��|��ό�s�h�6�{��k�	G���4��VI����Ʌs	o�0��{����J��S�����Gݼ����p�/,�^3��Jʨp��	F��Q�'I�V�a(��l'EU�c�B't�o�Et��|*%�wD6D΂X
㸇����[+�Wolx��w�^��M/P
��1W�m��Q^�n&.���A,m3ǶHo~���9� r�(Ug0�C�S BT�L��D��F�6N,�\ƸW��0���Ïǽ:ftl#���f���R�����+�wR�ݕP��=�c]XB(���WF��9�\�>�_LD�?b!5����ffu'ﯹ�y�
``.3B�W^v��Lu\Ҿ�[1�N�X�;ް���pE�c>&����<6(�˿��-�C޴*��@����.���a��"mz����+��2qx)�أR�q�yG�b���k�bCU��1���x�A[�ps��N�l]�@+�\-�+�U	Udb���� fC���3U���l}ߜ¼g�Y��@�'l���O�8�c��}<    �`#�O��َd��#�Y�N\��g ���!��P�)H�i�гg�{\Lr��$|w4���WY6�1��" ����=���vR{�|�M�=�Rx�A��-'�-�67B�-��A�8:��`���Pe3��0ĸ�?�}׆�a�U�`���3�2qEǔP�cF��i��쵯81�L�w�����	K�s>�.!\����3���x::д�լӧ����C�7��:/(��G9��mYf>��ćM6�2m���Hx�iW��FŒ0�}�O��Q6jw.�uW��˭��h}���ٺp*�^%�#J *2�kY��1N��0p��l���8�:�h�C'�dC<��BD	��'�*}/���n%ԇ�]d�{� ћCbB�p[e`����Yf,{�[�)��5ʁ.������6��g��+B��T
�����N��͡h!gN�g�Wd�b���s]���9j��!�ҝ��Qڽ�_�~ۊ���˾���Ι�J����Rj��f��y�]\�"hIA'=�~.��4��R|6!:�$��J��-�yfj�w�������/n�_��4!�����\=}�k���".��'X�9���u��!UΩ���3�T)ļ�VA�W
y�/�p�y����9�����@G��������.m�gÄ��a /~��0��)a�G��p�v�%��s*m\���Ʉj�%YY��9���/�%�+ g�K�/�Xk�5�|��sD��X��M�/NY��;u �/!'O�����K�q�'���M!P��~��|�si�}#��-~����!��G�@ p�w(C�O��*�թ��%�M����i����IiTɔ�Z2OkT	|nܫ2��9�(��dX�Y?�'V_첗�=̆�m8C�zF��pR`��-�d���b���F����ǫv{!�Fɣ�����_Q�*���F�c��/ou�[���x�/Sn�짗�%H���ٺ�m0�lmW�N���Y���ph������˫G7zF3��a�r�Ů�+,��w3�M`^���"��ʸ��hBXї��J��&�!6Yb�&�5���ۢ5��]���$5frH��d�@������@ϭc/i%h_��E�M�:�����ё���u4��q쿂����J���錴�%����kT��_|�">g͚̍�6�~���vl���$F�i_J�����i�p���M0�N6�s��{�u�S%�?Bɢ�)q�5��tY -�䷪���\bB+��~;���P�!|���s=um>K�Y��\<7�6����>$c"r��O��/�6|�F���/�h������N"{ֆ����6�FFOU��HIz�ʳ��?u4��e1�9�u/Az�Q���+>��ڰ�4X�? ��y��wI�`�$�	��4����jL�sA���(4;(�WL�S%���S���O-q^I:�L�o���?�㶖;��|�q�їP�>V��O�| ��u�� Ҹ��t|�+A,LF�ʢ齌]��=�?�K�'�J�Sp}�}�uB����N�~J\�ЋVl�B�ͩ���.Zm���\��.�߆r����lUd��ۤ��>��)7����hiv(����6:�p~�P��h����0/�s_��i�m�s$����)��ݕ�(cxiQ�6�_W� n� \�E7��g����LT��x�50���1�mE AO���E��Ǟj>ӝD�޺�x ���Qv��w>&�a�i��	H�{7xn{` 9�����3��B�@u�^	ZV��-�b�!��?��F]7׭�aw�4n�b��X�_ώ�o�PG'�itFn.O�E,��!b���lD�]��g3�v�Hѥ�L�l��%�\ �蘊֙��0�0^�;T���"�GT�!�ѐ�ɚ��X�(۾{}dj(���~��卙��TM8�1���{�N�?0ir&�tkn356���̥舆L�aLeݶD3"z逞v2e��	��W�J`�z�ok耟 8$��1T�;���̻���A��vK�l�|�ϥF�ȑ[�� ��ia�}��_��ZGj�Q�2�~5���X.U!�?*!r�{�tN�=�W��3>�NmJ��bz-��cb�Zn�~��r������V�~��(�"�������jYz9^������o��E�i�-�C�f�_ۗ�'ݐ�����u��D�*H_�@{���F@ʤh|��j�=&F��L�4�#�_��		��e*f�KJ�Z2*�.[��KL7������������!�i�:��#���=�^�U� 3;$�=Qª�1Ư�H͂�(�\��E�4��P�k'�:�+�|���u5ٛ���E��+bat0�є���S���GU��O��_0a���/6x/�v�֨���u�k��V���Ћ$P�	�'#�m����Xm�#v|na6�q���7��q�'�_d��ͻ���{�C��#�RB���H����FL���R�	A$�`ϲ����P�SU� �N��-�4������d��F�9�s*�Ɇ��j������Ё�D�S���0�O-��'X<j����{@'�����DVF��E�oe��C�� 	��4�����H�g܏����C@��!@�\x�Ӟ�pF�@�2��+�q��(����RN�m�m|�: ڟe���/��i�4�a�#,��>����y��_:[cG�ݹg���L%��(=p�����w����T��]h�����`
�<m�����~^��e�j_������ǜ�:]�@4�1o?���<1K��|#�F�'P�"�f��{�YL�X	�����s`A@ ~��VEXc��ë��.�p�_=�5�w�m2J8��)W��3�%�w��q����2y��Ǒ><H��1��Pt7��wn�}.�yvS��ޘ_�
jĢ:��չ�7F.�����.�u`9���>�D6H�J��qr�y%��[�{[ �Uq�q':,T(�]��-d@3hu���ĸ�2��i��^`.�t�������a���i�"*��M�����r[���Y}�����r��1Q������/���+N��Q�/���/㪭��e� 	GB{?PE�P)� �ѡՉ�T;�<R���5�'*��L����>�} c+$^41�$�����o}̘�@�!�\��Q9ڳ�O����W���?P�W�.��t���=���(Tɹ1n�����4�^}�X����L,?�*~�|a�9c��:p#��շT(q:�htu;��[�=Ϥ���9�쓜���E�Jx�4���ZC�ْ=�ª|-n�S3vR&@�u���t��uW>��m|����#i1Fr�"��y����>W���P[\�B�f��W��92�f-��5'c7���|mp��!�1���kKk�[1��S��LV'��4Y�8���2EUzMlώ|{2�]&� �B����ȦN�\�|,��v�f'P��.�	?�킯�j���чp&ʘ<S��!����3��Fl�C�j��s�0��r��&��s?���5a}�Ĥl�A=�:��R��w�S��e@\,�KlD��Q�ɭd�/�\lm�D����N@^����A��&��Q��K�ȦhH4��ůs���A�Q��M���.�X�ɠư�	��8r!��$Cb4�Q�x7�~��ĽzP�L\釲�����2�����t;�"�IH/����h��*Ɛg��/�ϗ�e �E�sx���n g�����>$�O����˝~<��p��N$F�?�sAXlD*�6�$���F��P�����Y����q�Q纋�̆���Z�-���Ͼ�|JD�Y�Z��(*�/��� H�pq��u�"֕v.IA��]Fq���ڸI��'�e��|�*�g����IY��)?�x��[��E�b���NW�����{�6[4��m���gc7��8T��.�R�����zo�LC�����5M�F�(��a_�&Y��{�߻��ԝ�Cp�Wl���6��.��Pw�CG�uŌ�8`~�S`���e    F%�����@���b�ߒ��Uo�Ő�	;���7��z�w���xђSO���ca5����*L��*?�<W�m�(�+÷�+x-�|	����x�� ��6�&_,4F`h�m�a����xf���py����W瑐�j�^F��*Ҵ�ubvԮ�r��'O�cAѿ	*/|)N�J���>�����p�ߥO���Y���:�)2A!��������L8��(Cmo��Uf�{A� tM>��i1�b��G܇������-|=6�>�L��y]P6�Mӿc	��G��?�tL0��,��3�6N� 5�g�5�Yˇ�0<4�vكj!�Ja߅h�~�{��z`�E���T��0�Eu"cxM)�`eW��U����+�i��KFhia����p�Tr�!����l�b������Za��U����W"�ʞ%�㽠A�T�B���	fN��y�\�Y��9t�K�+���+��C ���pD���;�����,Ί���&!��d�Ve�G�)���tN	�KВS~F����+m�	�w�Y!&����5h�U�?�}A�]{C9��<M#?�J!E[�6��u89x�)<�Ѧ��f޳�L�3����V�M� � Q:Q?�y��[�S��#w�Hq���Ǻ	��oo
cz�K�(���'�x���^�g#|)�+��թ�Q�oY!m�s�nҪ��O�����뜅fd��=;�مl����^��<��ϴ<����j�*635�H��j��Q"~^����s�L
<\ԅ"q˒�"�f��6j�`�5�����y����e�����_�W��D���Ր�/�|�B������i��,kPTye
э�;��̀,p̑Ǟ��Ӫm.�|��4>J��pK��v��)b1/f~m�	LH0�T��(�`����b��ᔣ�S낰��ϲW�������2;�x��#Bf�+��9g��f�jf$P���C�~رO��0X�OLN�k 
mQ¿�:a�U5�:�Wc���#���V��"fj��f�E��c����qq}-;���[#����^Jk*�#�1p�vo��!L
p �r;��Q^�d��iΟ7^�_X-}w���3��K{�e5x%�~l���M�%?q�P���h�d��U	��Ca���3	%=���y]�:I>S0�88�rќ9�1�^�V��yK��0;��96�K	�s];t~�/�<u^$wS/�ف�)��P��������8Q��1����J�:X�4�䊨�ܘ<t�e���G���O�O�s0$�$!s$@��4J�o��aR��d�tB���.⮊M�g��'�u@"$��@���B,�Kp�D+��C�L��70�GPM�I8�Z����:bYWg��ҳ�GA����f9�L��C���J���4@���M*����ܥ��vjp�|;��v{b[:�ԧ	|-��3;�҈���<'�����U���i�^�]_�5��� !G���}|o�z9� er�;ʆ_�1h-��n�s� w�:�<�������W�a�iT^?�.f���0ґ��t@���f;��Ǩ/�3�J�3L<��KR�ȴ&%�C�����z�{�����ԣ�����Ps[�`pf`�M��(���E�i)W � 5��k� ��j�S���Y6���F��I\k��ě�|h��#>�r�6���
�-��ߖ�s��7!�Ģ�>��Ex�ڵr�O��dϑ8�X�}�1�#�x)�σj_Z�RN@1�#L���
�H��g �����2�ʪ=*z'�g�9~(է#d��V��w//��tP>G89ɜ�08�Ū
��N6�$?#&��q�w#t2\Ek<��)�	�{Wv/v���U�>�mg��|���-����O��$����F�%$p3��-��-%�N��1��L��5��u���A��-�g�����<e��{�
Y�"M�pX��~���������$$n��W~_e�7:���cßК)��Ƥg��M�#JQ`��a����GI;�C����+=;����}��1�Pt?��,�ހ�M���{����T�i�V�$�������Z��^^���&�!W����=++��G��!u��"~��o ^�+f꫰�K�͂~��k�٢�Bv �c�7������=U�V����6��?�B̍�ݝ�][@:����|<5�E����k84.�!z�D,T��p��t��=���m��|C<�"1AB�h�i�O�,�Vh-.�5�n��f8P�9��p𗙴�`D�"P�e���i�����|���/Zz��Sob��BO�$���%��ٿ1��쾖���t��ߦ}qlR��Gm�'vɘ����9�t���������[*ݞh�޴��?�$�P��J���k�e�L��'w���%�(&��5T.�$�ǎ�L�������l=񊵓ς��!��Љ	oen6�*�A��T,Sh΃n�p`v��c�Vj�J9��6��1M���I�Q� lv4��-��<p�{��)��ط<o(�i|�%�2r˴G�خ'ʉEٷ�K���p��`:��x�H��&*���3F�����w_-rH˴Ҍ11 �k�r����֖X�2%��BYF��:X�1��b���9P|�O9�Sa�C�����ci�|��I0��`t�7Ą�Ϭ+�)y�e^Ӗ��OW���|V���ZGڮ�}䗩�\��,g �Q����pR�(2�%
6_̌X]�Rl"��(ssH��R�eT���l�����s���@29���j�O`�e��3�֢ߦ���5�S������8��]����U3�iې��2�:�2]�����5���A�ms������Y�*�#�7�и�y9�_��M6_g�g����+b'3/��X,��^�8��հ.f�T��D�eT��H�_� ���%O��m�������(����z�sD�c?��$��IP�3�d��֦٭/�6��l��W�p�_b'����XO�o�l�@�A8�a�;2I��	脓$�âeP��@_P�	�?�܎Q��/4e������^+�G	�^��h?EށKqA�=u�9�U���9��&��Q��pEjHK����2"� ^�E��b��~8�7�d�3}�v�OWu�WP2�ڼ�y)���/+,r�_gfR�����"�>��i��SӞ�p!w"�>�IO����V�@�� ���,����;l#��5~d��%I���ߒl�I]$?s��>gW�j���&�c���H��%��Κ��E�.�#m�14����u��*-�$۲��2�ﲜ��a;�H�#1y�Z4���E->����
�b�Y�|���f��
6f�-c����5���e�'�|V0,�I�Y� �''�x6�}ei^��i.�{���7�#�t��i��-rfk?�	��?�Q֖<�
�ޢ�!�t�H����|E����:�����Ȟ#�P��'PQPრ��;��Q{��\k�K8�^���9�gj��<,��$��#>�&����*�i����,d|�W��g�?��`Ÿ��u÷)��@��[֟}E��TT��F��B���o�YU:��K-j��^b����|`��/�����p}M����LM�o7bj�Ȗ�=�j�A�?bi{
K@mM�-~���O���
��Eo�����bۓcM�}�����y��������������?ɘ���d�?{����>��'oʲX�q�';�����g����8�e��[�Y��z�٧����ӼMT�{~�;����iƷ���l2.G�6���4�'ǘ�o�����L/���8�Ʒ����j2���E�������(�5��w}<���噎o5y���Q�5��E2�3������[��cs�V�������y�_>�j��U��!����Ȼ�k����,�fS��!����V�>�}���������I�-���k3'��l���l���g��}���A8�d��>��l��7}���������^Y��캮�|������*����_0a���S�"�t�Es�~Y�<p
��e�t��:����b��kZ���������g�Ӓf�7G��BQ�� X   �����"��=�U���M��]���]��{����2{���}��qF4�b������W�B�X�|���>^���:������_���Z�3i      �      x������ � �      �      x������ � �      �      x������ � �      ~      x������ � �      t   v   x�%�;�0��z|���hr�4�`���ml!nO�)�ѯ��a�2���!�w����'R���,Ϡ��@<���pS�J�p�J&�Ժ+��*�7�j[��]���=K��i�9��R�+�      v      x��[�r�Ɩ��<*U�8U���*��\[q�8�o��4�� 4�E�����׻O2�9� IY��&K"	4����,&�s����N�ʹ�[ٗ�y�<���3ﺺ���nD��BԢ�M;�d��j7�U'����B���B?=ᕼ������M?����Z��ۺ�d�9�Is!u��*�S�k*��BeY�D۝9�ʜ\�ss!�--�ꢐi�t���6�ЕJqy����S��.��M�Mڔ}N�ں�W;��jՍ<^��EU�j�l]�"oq�}��oe�t�t�?y��T��t��^4b:��滐E�JT[Z�Y��������i!u-�FHV�{�;��������.t����޸�qUR��pעu���o�λ�髾�I�̵lp�BO�i�?D���IzUt���DJ�lE�;�G��sȍn�F����E��"sv��!�_q�3]�������66���T)~$���;A�ONhx%�k]�N:o��3�©Ɋ>�d?N��J�@F����J��T$�����+)e6y*���F8�P�Vo{yO)�$�kZʲ�U{P[�� ��xqeN�o�K��v��1V�/Z��'�x�W�����
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
s�)�~��w�x�{h      z   �  x�-�˕ !��`�a�7��?��b悄2mL�_Eg�Q�'�׿�q�b<�3�|��e��̵l�O��m�} �շ��;�b,6�G�o��Ā},&�x��E$1: 4�����F�z����N�h8!���6@pqN>���QW�G�+���/�I<��N0���,q��∙b�D�ib\ɍqDRmq�@�'�X��)��8��w����+���nn��G,|��b�}%�b������Hn�-�XKܱ�_{KعD�a�3�G��Qa� L��!��=Kd>��~U=%A�E)�8M����F��wIN�)θCqKD�Q l"�W$�i/��rd���Hh��%�x[���n>�(.��^c�#���DM�p�+����J'fB�dAJ�+��)!9y�����H��H��+H��-}Z��D�#�qKp���D %!=���d�|ϛgݞᕘ�HL�%&]��#۟��K�� ��땅�ߧ�%��IT��&���/"����      r      x������ � �      n   .   x�3�t�+I-*(J�+M-�2��/-�,.�2�tL�������� �Z      p      x������ � �      x   $  x�e�ˎ�0 ��uyׅ6���q�� d����"^�O�N�cbr����@�7�Ƕ��
�mF8!<�2��}�e�ndOӿm��;=�Nh���M��;i��}��8 ��|;��ݲ ��u��A��M{LzE}�t1�([F4wmI�{� �l�/\�����=ٔ$,�����;��nI�?�C��ϱ/�w�(gq�5՜�Ʌ+h�,��2��&����B�V��^b�hU�Q��뱿���$��wƩ>Y���"N��:��J!�N��h�>��#b~Q�̆�2��SYCA�A��     