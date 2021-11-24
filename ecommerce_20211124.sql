--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Cart; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public."Cart" (
    id integer NOT NULL,
    cart_id character varying(250) NOT NULL,
    date_added date NOT NULL
);


ALTER TABLE public."Cart" OWNER TO ecommerce;

--
-- Name: CartItem; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public."CartItem" (
    id integer NOT NULL,
    quantity integer NOT NULL,
    active boolean NOT NULL,
    cart_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public."CartItem" OWNER TO ecommerce;

--
-- Name: CartItem_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public."CartItem_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CartItem_id_seq" OWNER TO ecommerce;

--
-- Name: CartItem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public."CartItem_id_seq" OWNED BY public."CartItem".id;


--
-- Name: Cart_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public."Cart_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Cart_id_seq" OWNER TO ecommerce;

--
-- Name: Cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public."Cart_id_seq" OWNED BY public."Cart".id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ecommerce;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ecommerce;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ecommerce;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ecommerce;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ecommerce;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ecommerce;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ecommerce;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ecommerce;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ecommerce;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ecommerce;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ecommerce;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ecommerce;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ecommerce;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ecommerce;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ecommerce;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ecommerce;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ecommerce;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ecommerce;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ecommerce;

--
-- Name: shop_category; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.shop_category (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    slug character varying(250) NOT NULL,
    description text NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.shop_category OWNER TO ecommerce;

--
-- Name: shop_category_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.shop_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_category_id_seq OWNER TO ecommerce;

--
-- Name: shop_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.shop_category_id_seq OWNED BY public.shop_category.id;


--
-- Name: shop_product; Type: TABLE; Schema: public; Owner: ecommerce
--

CREATE TABLE public.shop_product (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    slug character varying(250) NOT NULL,
    description text NOT NULL,
    price numeric(10,2) NOT NULL,
    image character varying(100) NOT NULL,
    stock integer NOT NULL,
    available boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.shop_product OWNER TO ecommerce;

--
-- Name: shop_product_id_seq; Type: SEQUENCE; Schema: public; Owner: ecommerce
--

CREATE SEQUENCE public.shop_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_product_id_seq OWNER TO ecommerce;

--
-- Name: shop_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ecommerce
--

ALTER SEQUENCE public.shop_product_id_seq OWNED BY public.shop_product.id;


--
-- Name: Cart id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public."Cart" ALTER COLUMN id SET DEFAULT nextval('public."Cart_id_seq"'::regclass);


--
-- Name: CartItem id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public."CartItem" ALTER COLUMN id SET DEFAULT nextval('public."CartItem_id_seq"'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: shop_category id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.shop_category ALTER COLUMN id SET DEFAULT nextval('public.shop_category_id_seq'::regclass);


--
-- Name: shop_product id; Type: DEFAULT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.shop_product ALTER COLUMN id SET DEFAULT nextval('public.shop_product_id_seq'::regclass);


--
-- Data for Name: Cart; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public."Cart" (id, cart_id, date_added) FROM stdin;
1	79mcznzr9hw7vecbppvjgbs0rhvnonh3	2021-11-23
2	0ezy9wfogjulbjzfd9rhx01ofv7b4jtd	2021-11-24
\.


--
-- Data for Name: CartItem; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public."CartItem" (id, quantity, active, cart_id, product_id) FROM stdin;
6	1	t	2	1
7	1	t	2	4
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.auth_group (id, name) FROM stdin;
1	User
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add category	7	add_category
26	Can change category	7	change_category
27	Can delete category	7	delete_category
28	Can view category	7	view_category
29	Can add product	8	add_product
30	Can change product	8	change_product
31	Can delete product	8	delete_product
32	Can view product	8	view_product
33	Can add cart	9	add_cart
34	Can change cart	9	change_cart
35	Can delete cart	9	delete_cart
36	Can view cart	9	view_cart
37	Can add cart item	10	add_cartitem
38	Can change cart item	10	change_cartitem
39	Can delete cart item	10	delete_cartitem
40	Can view cart item	10	view_cartitem
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$VKGofAUApes5$Hz+YHCJo7YD/cNL4Xu+bZLcGMoSiKXRyk/Dp2VLVz44=	2021-11-16 09:48:07.62736+02	t	vlad			kolesov0703@gmail.com	t	t	2021-11-15 17:50:15.795731+02
3	pbkdf2_sha256$150000$Mz7Uqp5HHdFh$arXT7XWBYYWgVFUeQgneCHDwpr36uV1P+HTstF29dko=	2021-11-24 18:00:05.485043+02	f	vkoliesov	Vladislav	Koliesov	kolesov0703@gmail.com	f	t	2021-11-24 16:32:17.654067+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
2	3	1
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-11-16 09:49:36.297857+02	1	Toys	1	[{"added": {}}]	7	1
2	2021-11-16 09:50:49.896476+02	1	Lego	1	[{"added": {}}]	8	1
3	2021-11-16 09:51:25.712757+02	2	Happy	1	[{"added": {}}]	8	1
4	2021-11-16 09:52:08.726354+02	3	Teddy	1	[{"added": {}}]	8	1
5	2021-11-16 09:52:46.975159+02	4	Beauty	1	[{"added": {}}]	8	1
6	2021-11-16 09:53:37.20349+02	5	Minion	1	[{"added": {}}]	8	1
7	2021-11-16 09:54:57.742335+02	6	Black Sheep	1	[{"added": {}}]	8	1
8	2021-11-16 09:55:39.314566+02	7	Sad Clown	1	[{"added": {}}]	8	1
9	2021-11-16 09:56:34.780375+02	2	Stuffed Toys	1	[{"added": {}}]	7	1
10	2021-11-16 09:57:14.163116+02	3	Puppets	1	[{"added": {}}]	7	1
11	2021-11-16 09:57:33.850197+02	1	Lego	2	[{"changed": {"fields": ["name", "slug", "image"]}}]	7	1
12	2021-11-16 09:57:51.48494+02	4	Beauty	2	[{"changed": {"fields": ["category"]}}]	8	1
13	2021-11-16 09:57:56.516184+02	6	Black Sheep	2	[{"changed": {"fields": ["category"]}}]	8	1
14	2021-11-16 09:58:02.834689+02	2	Happy	2	[{"changed": {"fields": ["category"]}}]	8	1
15	2021-11-16 09:58:06.202097+02	1	Lego	2	[]	8	1
16	2021-11-16 09:58:30.176972+02	5	Minion	2	[{"changed": {"fields": ["category"]}}]	8	1
17	2021-11-16 09:58:39.495576+02	7	Sad Clown	2	[{"changed": {"fields": ["category"]}}]	8	1
18	2021-11-16 09:58:44.9179+02	3	Teddy	2	[{"changed": {"fields": ["category"]}}]	8	1
19	2021-11-23 18:26:29.612519+02	4	Beauty	2	[{"changed": {"fields": ["stock"]}}]	8	1
20	2021-11-24 10:05:20.690053+02	1	User	1	[{"added": {}}]	3	1
21	2021-11-24 16:31:31.454522+02	2	vkoliesov	2	[]	4	1
22	2021-11-24 16:31:49.449692+02	2	vkoliesov	3		4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	shop	category
8	shop	product
9	shop	cart
10	shop	cartitem
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-11-15 17:48:45.660101+02
2	auth	0001_initial	2021-11-15 17:48:45.723852+02
3	admin	0001_initial	2021-11-15 17:48:45.750841+02
4	admin	0002_logentry_remove_auto_add	2021-11-15 17:48:45.760626+02
5	admin	0003_logentry_add_action_flag_choices	2021-11-15 17:48:45.767082+02
6	contenttypes	0002_remove_content_type_name	2021-11-15 17:48:45.783557+02
7	auth	0002_alter_permission_name_max_length	2021-11-15 17:48:45.787479+02
8	auth	0003_alter_user_email_max_length	2021-11-15 17:48:45.793122+02
9	auth	0004_alter_user_username_opts	2021-11-15 17:48:45.79896+02
10	auth	0005_alter_user_last_login_null	2021-11-15 17:48:45.805078+02
11	auth	0006_require_contenttypes_0002	2021-11-15 17:48:45.806477+02
12	auth	0007_alter_validators_add_error_messages	2021-11-15 17:48:45.811961+02
13	auth	0008_alter_user_username_max_length	2021-11-15 17:48:45.820752+02
14	auth	0009_alter_user_last_name_max_length	2021-11-15 17:48:45.828081+02
15	auth	0010_alter_group_name_max_length	2021-11-15 17:48:45.833943+02
16	auth	0011_update_proxy_permissions	2021-11-15 17:48:45.839279+02
17	sessions	0001_initial	2021-11-15 17:48:45.843078+02
18	shop	0001_initial	2021-11-15 17:48:45.856484+02
19	shop	0002_auto_20211115_1757	2021-11-15 17:57:29.768081+02
20	shop	0003_cart_cartitem	2021-11-23 10:44:01.974492+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
0ezy9wfogjulbjzfd9rhx01ofv7b4jtd	ODdlNTZkMTE4MjkxMDFhNDZlOTgwZDdlOTZjNmI2OTczOWY2ZWIwYjp7fQ==	2021-12-08 18:05:18.989147+02
\.


--
-- Data for Name: shop_category; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.shop_category (id, name, slug, description, image) FROM stdin;
2	Stuffed Toys	stuffed-toys	sfhb	category/happy.png
3	Puppets	puppets	dsbgd	category/beauty.png
1	Lego	lego	lkdngkdg	category/lego.png
\.


--
-- Data for Name: shop_product; Type: TABLE DATA; Schema: public; Owner: ecommerce
--

COPY public.shop_product (id, name, slug, description, price, image, stock, available, created, updated, category_id) FROM stdin;
6	Black Sheep	black-sheep	sjkvndlv	14.00	product/black-sheep.png	1243	t	2021-11-16 09:54:57.741688+02	2021-11-16 09:57:56.515414+02	2
2	Happy	happy	jnsdgkdlkgv	13.00	product/happy.png	500	t	2021-11-16 09:51:25.712147+02	2021-11-16 09:58:02.833919+02	2
1	Lego	lego	hdbvhj	19.00	product/lego.png	1000	t	2021-11-16 09:50:49.855011+02	2021-11-16 09:58:06.201335+02	1
5	Minion	minion	hbdagjvdbl	17.00	product/minion.png	457	t	2021-11-16 09:53:37.202885+02	2021-11-16 09:58:30.176147+02	3
7	Sad Clown	sad-clown	jdsgvjd v	23.00	product/sad-clown.png	459	t	2021-11-16 09:55:39.314043+02	2021-11-16 09:58:39.494785+02	3
3	Teddy	teddy	sgdsg	14.00	product/teddy.png	300	t	2021-11-16 09:52:08.725711+02	2021-11-16 09:58:44.917093+02	2
4	Beauty	beauty	cxbcvnc	15.00	product/beauty.png	4	t	2021-11-16 09:52:46.974556+02	2021-11-23 18:26:29.579268+02	3
\.


--
-- Name: CartItem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public."CartItem_id_seq"', 7, true);


--
-- Name: Cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public."Cart_id_seq"', 2, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 2, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 22, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: shop_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.shop_category_id_seq', 3, true);


--
-- Name: shop_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ecommerce
--

SELECT pg_catalog.setval('public.shop_product_id_seq', 7, true);


--
-- Name: CartItem CartItem_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public."CartItem"
    ADD CONSTRAINT "CartItem_pkey" PRIMARY KEY (id);


--
-- Name: Cart Cart_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public."Cart"
    ADD CONSTRAINT "Cart_pkey" PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: shop_category shop_category_name_key; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.shop_category
    ADD CONSTRAINT shop_category_name_key UNIQUE (name);


--
-- Name: shop_category shop_category_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.shop_category
    ADD CONSTRAINT shop_category_pkey PRIMARY KEY (id);


--
-- Name: shop_category shop_category_slug_key; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.shop_category
    ADD CONSTRAINT shop_category_slug_key UNIQUE (slug);


--
-- Name: shop_product shop_product_name_key; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_name_key UNIQUE (name);


--
-- Name: shop_product shop_product_pkey; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_pkey PRIMARY KEY (id);


--
-- Name: shop_product shop_product_slug_key; Type: CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_slug_key UNIQUE (slug);


--
-- Name: CartItem_cart_id_dded4aaa; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX "CartItem_cart_id_dded4aaa" ON public."CartItem" USING btree (cart_id);


--
-- Name: CartItem_product_id_733636f4; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX "CartItem_product_id_733636f4" ON public."CartItem" USING btree (product_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: shop_category_name_11b68823_like; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX shop_category_name_11b68823_like ON public.shop_category USING btree (name varchar_pattern_ops);


--
-- Name: shop_category_slug_4508178e_like; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX shop_category_slug_4508178e_like ON public.shop_category USING btree (slug varchar_pattern_ops);


--
-- Name: shop_product_category_id_14d7eea8; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX shop_product_category_id_14d7eea8 ON public.shop_product USING btree (category_id);


--
-- Name: shop_product_name_b8d5e94c_like; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX shop_product_name_b8d5e94c_like ON public.shop_product USING btree (name varchar_pattern_ops);


--
-- Name: shop_product_slug_30bd2d5d_like; Type: INDEX; Schema: public; Owner: ecommerce
--

CREATE INDEX shop_product_slug_30bd2d5d_like ON public.shop_product USING btree (slug varchar_pattern_ops);


--
-- Name: CartItem CartItem_cart_id_dded4aaa_fk_Cart_id; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public."CartItem"
    ADD CONSTRAINT "CartItem_cart_id_dded4aaa_fk_Cart_id" FOREIGN KEY (cart_id) REFERENCES public."Cart"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: CartItem CartItem_product_id_733636f4_fk_shop_product_id; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public."CartItem"
    ADD CONSTRAINT "CartItem_product_id_733636f4_fk_shop_product_id" FOREIGN KEY (product_id) REFERENCES public.shop_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_product shop_product_category_id_14d7eea8_fk_shop_category_id; Type: FK CONSTRAINT; Schema: public; Owner: ecommerce
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_category_id_14d7eea8_fk_shop_category_id FOREIGN KEY (category_id) REFERENCES public.shop_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

