--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    flag text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: data_rows; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.data_rows (
    id integer NOT NULL,
    data_type_id integer NOT NULL,
    field character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    required boolean DEFAULT false NOT NULL,
    browse boolean DEFAULT true NOT NULL,
    read boolean DEFAULT true NOT NULL,
    edit boolean DEFAULT true NOT NULL,
    add boolean DEFAULT true NOT NULL,
    delete boolean DEFAULT true NOT NULL,
    details text,
    "order" integer DEFAULT 1 NOT NULL
);


--
-- Name: data_rows_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.data_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_rows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.data_rows_id_seq OWNED BY public.data_rows.id;


--
-- Name: data_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.data_types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    display_name_singular character varying(255) NOT NULL,
    display_name_plural character varying(255) NOT NULL,
    icon character varying(255),
    model_name character varying(255),
    description character varying(255),
    generate_permissions boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    server_side smallint DEFAULT '0'::smallint NOT NULL,
    controller character varying(255),
    policy_name character varying(255),
    details text
);


--
-- Name: data_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.data_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: data_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.data_types_id_seq OWNED BY public.data_types.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: image_graphs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.image_graphs (
    id bigint NOT NULL,
    caption text NOT NULL,
    image character varying(255) NOT NULL,
    space_port_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: image_graphs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.image_graphs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: image_graphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.image_graphs_id_seq OWNED BY public.image_graphs.id;


--
-- Name: image_places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.image_places (
    id bigint NOT NULL,
    caption text NOT NULL,
    image character varying(255) NOT NULL,
    space_port_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: image_places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.image_places_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: image_places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.image_places_id_seq OWNED BY public.image_places.id;


--
-- Name: image_rockets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.image_rockets (
    id bigint NOT NULL,
    caption text NOT NULL,
    image character varying(255) NOT NULL,
    space_port_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: image_rockets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.image_rockets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: image_rockets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.image_rockets_id_seq OWNED BY public.image_rockets.id;


--
-- Name: menu_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.menu_items (
    id integer NOT NULL,
    menu_id integer,
    title character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    target character varying(255) DEFAULT '_self'::character varying NOT NULL,
    icon_class character varying(255),
    color character varying(255),
    parent_id integer,
    "order" integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    route character varying(255),
    parameters text
);


--
-- Name: menu_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: menu_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;


--
-- Name: menus; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.menus (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: menus_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


--
-- Name: permission_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.permission_role (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    key character varying(255) NOT NULL,
    table_name character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: providers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.providers (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    logo text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: providers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.providers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.providers_id_seq OWNED BY public.providers.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.settings (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    display_name character varying(255) NOT NULL,
    value text,
    details text,
    type character varying(255) NOT NULL,
    "order" integer DEFAULT 1 NOT NULL,
    "group" character varying(255)
);


--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: space_ports; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.space_ports (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    country_id bigint NOT NULL,
    description text NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    target text NOT NULL,
    about_place text NOT NULL,
    first_send date NOT NULL,
    area bigint NOT NULL,
    logo text NOT NULL,
    provider_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    about_history_country text,
    other_info text,
    create_port date,
    present_state text
);


--
-- Name: space_ports_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.space_ports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: space_ports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.space_ports_id_seq OWNED BY public.space_ports.id;


--
-- Name: translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.translations (
    id integer NOT NULL,
    table_name character varying(255) NOT NULL,
    column_name character varying(255) NOT NULL,
    foreign_key integer NOT NULL,
    locale character varying(255) NOT NULL,
    value text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.translations_id_seq OWNED BY public.translations.id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    avatar character varying(255) DEFAULT 'users/default.png'::character varying,
    role_id bigint,
    settings text
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: data_rows id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.data_rows ALTER COLUMN id SET DEFAULT nextval('public.data_rows_id_seq'::regclass);


--
-- Name: data_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.data_types ALTER COLUMN id SET DEFAULT nextval('public.data_types_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: image_graphs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image_graphs ALTER COLUMN id SET DEFAULT nextval('public.image_graphs_id_seq'::regclass);


--
-- Name: image_places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image_places ALTER COLUMN id SET DEFAULT nextval('public.image_places_id_seq'::regclass);


--
-- Name: image_rockets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image_rockets ALTER COLUMN id SET DEFAULT nextval('public.image_rockets_id_seq'::regclass);


--
-- Name: menu_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);


--
-- Name: menus id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: providers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.providers ALTER COLUMN id SET DEFAULT nextval('public.providers_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: space_ports id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.space_ports ALTER COLUMN id SET DEFAULT nextval('public.space_ports_id_seq'::regclass);


--
-- Name: translations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.translations ALTER COLUMN id SET DEFAULT nextval('public.translations_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries (id, title, flag, created_at, updated_at) FROM stdin;
21	Россия	countries/February2024/J95l7xEnzyjdfeuUMUTs.jpg	2024-02-20 19:29:16	2024-02-20 19:29:16
\.


--
-- Data for Name: data_rows; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.data_rows (id, data_type_id, field, type, display_name, required, browse, read, edit, add, delete, details, "order") FROM stdin;
1	1	id	number	ID	t	f	f	f	f	f	\N	1
2	1	name	text	Name	t	t	t	t	t	t	\N	2
3	1	email	text	Email	t	t	t	t	t	t	\N	3
4	1	password	password	Password	t	f	f	t	t	f	\N	4
5	1	remember_token	text	Remember Token	f	f	f	f	f	f	\N	5
6	1	created_at	timestamp	Created At	f	t	t	f	f	f	\N	6
7	1	updated_at	timestamp	Updated At	f	f	f	f	f	f	\N	7
8	1	avatar	image	Avatar	f	t	t	t	t	t	\N	8
9	1	user_belongsto_role_relationship	relationship	Role	f	t	t	t	t	f	{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}	10
10	1	user_belongstomany_role_relationship	relationship	Roles	f	t	t	t	t	f	{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}	11
11	1	settings	hidden	Settings	f	f	f	f	f	f	\N	12
12	2	id	number	ID	t	f	f	f	f	f	\N	1
13	2	name	text	Name	t	t	t	t	t	t	\N	2
14	2	created_at	timestamp	Created At	f	f	f	f	f	f	\N	3
15	2	updated_at	timestamp	Updated At	f	f	f	f	f	f	\N	4
16	3	id	number	ID	t	f	f	f	f	f	\N	1
17	3	name	text	Name	t	t	t	t	t	t	\N	2
18	3	created_at	timestamp	Created At	f	f	f	f	f	f	\N	3
19	3	updated_at	timestamp	Updated At	f	f	f	f	f	f	\N	4
20	3	display_name	text	Display Name	t	t	t	t	t	t	\N	5
21	1	role_id	text	Role	t	t	t	t	t	t	\N	9
22	4	id	text	Id	t	f	f	f	f	f	{}	1
28	4	updated_at	timestamp	Updated At	f	f	f	f	f	f	{}	7
29	5	id	text	Id	t	f	f	f	f	f	{}	1
33	5	updated_at	timestamp	Updated At	f	f	f	f	f	f	{}	5
34	6	id	text	Id	t	f	f	f	f	f	{}	1
23	4	name	text	Название ракеты	t	t	t	t	t	t	{}	3
24	4	image_rocket	image	Картинка ракеты	t	t	t	t	t	t	{}	4
25	4	height	number	Высота	t	t	t	t	t	t	{}	5
26	4	space_port_id	number	Космодром	t	t	t	t	t	t	{}	2
41	6	about_place	rich_text_box	Местоположение	t	t	t	t	t	t	{}	9
38	6	position_x	text	Позиция по x	t	t	t	f	t	t	{"hidden":true}	6
27	4	created_at	timestamp	Created At	f	f	f	f	f	f	{}	6
90	4	rocket_belongsto_space_port_relationship	relationship	Космодром	f	t	t	t	t	t	{"model":"App\\\\Models\\\\SpacePort","table":"space_ports","type":"belongsTo","column":"space_port_id","key":"id","label":"title","pivot_table":"migrations","pivot":"0","taggable":"0"}	8
30	5	title	text	Название страны	t	t	t	t	t	t	{}	2
39	6	position_y	text	Позиция по y	t	t	t	f	t	t	{"hidden":true}	7
31	5	flag	image	Флаг	t	t	t	t	t	t	{}	3
32	5	created_at	timestamp	Created At	f	f	f	f	f	f	{}	4
35	6	title	text	Название космодрома	t	t	t	t	t	t	{}	4
36	6	country_id	number	Страна	t	t	t	t	t	t	{}	2
44	6	first_send	date	Дата первого запуск	t	t	t	t	t	t	{}	11
45	6	area	number	Площадь	t	t	t	t	t	t	{}	12
47	6	provider_id	number	Корпорация	t	t	t	t	t	t	{}	3
46	6	logo	image	Лого космодрома	t	t	t	t	t	t	{}	13
48	6	created_at	timestamp	Created At	f	f	f	f	f	f	{}	17
49	6	updated_at	timestamp	Updated At	f	f	f	f	f	f	{}	18
92	6	space_port_belongsto_provider_relationship	relationship	Корпорация-владелец	f	t	t	t	t	t	{"model":"App\\\\Models\\\\Provider","table":"providers","type":"belongsTo","column":"provider_id","key":"id","label":"title","pivot_table":"migrations","pivot":"0","taggable":"0"}	19
37	6	description	rich_text_box	Описание	t	t	t	t	t	t	{}	5
40	6	target	rich_text_box	Цель	t	t	t	t	t	t	{}	8
94	11	id	text	Id	t	f	f	f	f	f	{}	1
95	11	title	text	Название корпорации	t	t	t	t	t	t	{}	2
97	11	created_at	timestamp	Created At	f	f	f	f	f	f	{}	4
98	11	updated_at	timestamp	Updated At	f	f	f	f	f	f	{}	5
99	11	provider_hasmany_space_port_relationship	relationship	space_ports	f	t	t	t	t	t	{"model":"App\\\\Models\\\\SpacePort","table":"space_ports","type":"hasMany","column":"title","key":"id","label":"title","pivot_table":"migrations","pivot":"0","taggable":"0"}	6
100	12	id	text	Id	t	f	f	f	f	f	{}	1
101	12	caption	text	Подпись	t	t	t	t	t	t	{}	3
104	12	created_at	timestamp	Created At	f	t	t	t	f	t	{}	5
105	12	updated_at	timestamp	Updated At	f	f	f	f	f	f	{}	6
106	13	id	text	Id	t	f	f	f	f	f	{}	1
107	13	caption	text	Подпись	t	t	t	t	t	t	{}	3
110	13	created_at	timestamp	Created At	f	t	t	t	f	t	{}	5
111	13	updated_at	timestamp	Updated At	f	f	f	f	f	f	{}	6
112	14	id	text	Id	t	f	f	f	f	f	{}	1
113	14	caption	text	Название	t	t	t	t	t	t	{}	3
116	14	created_at	timestamp	Created At	f	t	t	t	f	t	{}	5
117	14	updated_at	timestamp	Updated At	f	f	f	f	f	f	{}	6
118	12	image_graph_belongsto_space_port_relationship	relationship	space_ports	f	t	t	t	t	t	{"model":"App\\\\Models\\\\SpacePort","table":"space_ports","type":"belongsTo","column":"space_port_id","key":"id","label":"title","pivot_table":"migrations","pivot":"0","taggable":"0"}	7
114	14	image	image	Подпись	t	t	t	t	t	t	{}	4
120	13	image_rocket_belongsto_space_port_relationship	relationship	space_ports	f	t	t	t	t	t	{"model":"App\\\\Models\\\\SpacePort","table":"space_ports","type":"belongsTo","column":"space_port_id","key":"id","label":"title","pivot_table":"migrations","pivot":"0","taggable":"0"}	7
96	11	logo	image	Лого корпорации	t	t	t	t	t	t	{}	3
102	12	image	image	Картинка	t	t	t	t	t	t	{}	4
108	13	image	image	Картинка	t	t	t	t	t	t	{}	4
124	6	about_history_country	rich_text_box	Страны	f	t	t	t	t	t	{}	14
125	6	other_info	rich_text_box	Другая информация	f	t	t	t	t	t	{}	16
119	14	image_place_belongsto_space_port_relationship	relationship	space_ports	f	t	t	t	t	t	{"model":"App\\\\Models\\\\SpacePort","table":"space_ports","type":"belongsTo","column":"space_port_id","key":"id","label":"title","pivot_table":"migrations","pivot":"0","taggable":"0"}	7
115	14	space_port_id	text	Space Port Id	t	t	t	t	t	t	{}	2
109	13	space_port_id	text	Space Port Id	t	t	t	t	t	t	{}	2
103	12	space_port_id	text	Space Port Id	t	t	t	t	t	t	{}	2
126	6	create_port	date	Дата основания	f	t	t	t	t	t	{}	10
93	6	space_port_belongsto_country_relationship	relationship	Страна-владелец	f	t	t	t	t	t	{"model":"App\\\\Models\\\\Country","table":"countries","type":"belongsTo","column":"country_id","key":"id","label":"title","pivot_table":"migrations","pivot":"0","taggable":"0"}	20
121	6	space_port_hasmany_image_graph_relationship	relationship	Графики	f	t	t	t	t	t	{"model":"App\\\\Models\\\\ImageGraph","table":"image_graphs","type":"hasMany","column":"space_port_id","key":"id","label":"caption","pivot_table":"migrations","pivot":"0","taggable":"0"}	21
122	6	space_port_hasmany_image_rocket_relationship	relationship	Ракеты	f	t	t	t	t	t	{"model":"App\\\\Models\\\\ImageRocket","table":"image_rockets","type":"hasMany","column":"space_port_id","key":"id","label":"caption","pivot_table":"migrations","pivot":"0","taggable":"0"}	22
123	6	space_port_hasmany_image_place_relationship	relationship	Картинки местоположения	f	t	t	t	t	t	{"model":"App\\\\Models\\\\ImagePlace","table":"image_places","type":"hasMany","column":"space_port_id","key":"id","label":"caption","pivot_table":"migrations","pivot":"0","taggable":"0"}	23
127	6	present_state	rich_text_box	Текущее состояние	f	t	t	t	t	t	{}	15
\.


--
-- Data for Name: data_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.data_types (id, name, slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) FROM stdin;
1	users	users	User	Users	voyager-person	TCG\\Voyager\\Models\\User		t	2023-12-15 21:03:38	2023-12-15 21:03:38	0	TCG\\Voyager\\Http\\Controllers\\VoyagerUserController	TCG\\Voyager\\Policies\\UserPolicy	\N
2	menus	menus	Menu	Menus	voyager-list	TCG\\Voyager\\Models\\Menu		t	2023-12-15 21:03:38	2023-12-15 21:03:38	0		\N	\N
3	roles	roles	Role	Roles	voyager-lock	TCG\\Voyager\\Models\\Role		t	2023-12-15 21:03:38	2023-12-15 21:03:38	0	TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController	\N	\N
11	providers	providers	Корпорация владелец	Владельцы	\N	App\\Models\\Provider	\N	t	2024-01-27 18:59:39	2024-02-20 19:32:12	0	\N	\N	{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}
12	image_graphs	image-graphs	Image Graph	Image Graphs	\N	App\\Models\\ImageGraph	\N	t	2024-01-27 19:06:07	2024-02-20 19:41:33	0	\N	\N	{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}
4	rockets	rockets	Ракета	Ракеты	\N	App\\Models\\Rocket	\N	t	2023-12-15 21:35:30	2024-01-20 15:33:59	0	\N	\N	{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}
5	countries	countries	Страна	Страны	\N	App\\Models\\Country	\N	t	2023-12-15 21:37:16	2024-01-20 15:34:46	0	\N	\N	{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}
13	image_rockets	image-rockets	Image Rocket	Image Rockets	\N	App\\Models\\ImageRocket	\N	t	2024-01-27 19:07:01	2024-02-16 16:25:03	0	\N	\N	{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}
14	image_places	image-places	Image Place	Image Places	\N	App\\Models\\ImagePlace	\N	t	2024-01-27 19:07:18	2024-02-16 16:27:40	0	\N	\N	{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}
6	space_ports	space-ports	Космодром	Космодромы	\N	App\\Models\\SpacePort	\N	t	2023-12-15 21:37:25	2024-02-17 12:04:06	0	\N	\N	{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: image_graphs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.image_graphs (id, caption, image, space_port_id, created_at, updated_at) FROM stdin;
2	Сводная диаграмма пусковой активности космодрома Плесецк (2000 – 2023)	image-graphs/February2024/U4UKVvKVoxkUTCzwt5Yj.png	70	2024-02-20 19:43:47	2024-02-20 19:43:47
\.


--
-- Data for Name: image_places; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.image_places (id, caption, image, space_port_id, created_at, updated_at) FROM stdin;
10	Схема космодрома Плесецк	image-places/February2024/wIfTS9kZlnXyeNJAxyqO.png	70	2024-02-20 19:47:04	2024-02-20 19:47:04
\.


--
-- Data for Name: image_rockets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.image_rockets (id, caption, image, space_port_id, created_at, updated_at) FROM stdin;
1	Ракеты.	image-rockets/February2024/sy2VECvYfpSiRmGFtF7Q.png	70	2024-02-20 19:42:46	2024-02-20 19:42:46
\.


--
-- Data for Name: menu_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.menu_items (id, menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, parameters) FROM stdin;
2	1	Media		_self	voyager-images	\N	\N	5	2023-12-15 21:03:39	2023-12-15 21:03:39	voyager.media.index	\N
3	1	Users		_self	voyager-person	\N	\N	3	2023-12-15 21:03:39	2023-12-15 21:03:39	voyager.users.index	\N
4	1	Roles		_self	voyager-lock	\N	\N	2	2023-12-15 21:03:39	2023-12-15 21:03:39	voyager.roles.index	\N
5	1	Tools		_self	voyager-tools	\N	\N	9	2023-12-15 21:03:39	2023-12-15 21:03:39	\N	\N
6	1	Menu Builder		_self	voyager-list	\N	5	10	2023-12-15 21:03:39	2023-12-15 21:03:39	voyager.menus.index	\N
7	1	Database		_self	voyager-data	\N	5	11	2023-12-15 21:03:39	2023-12-15 21:03:39	voyager.database.index	\N
8	1	Compass		_self	voyager-compass	\N	5	12	2023-12-15 21:03:39	2023-12-15 21:03:39	voyager.compass.index	\N
9	1	BREAD		_self	voyager-bread	\N	5	13	2023-12-15 21:03:39	2023-12-15 21:03:39	voyager.bread.index	\N
10	1	Settings		_self	voyager-settings	\N	\N	14	2023-12-15 21:03:39	2023-12-15 21:03:39	voyager.settings.index	\N
12	1	Страны		_self	\N	#000000	\N	16	2023-12-15 21:37:16	2024-01-20 15:37:34	voyager.countries.index	null
13	1	Космодромы		_self	\N	#000000	\N	17	2023-12-15 21:37:25	2024-01-20 15:37:43	voyager.space-ports.index	null
18	1	Владельцы		_self	\N	#000000	\N	18	2024-01-27 18:59:39	2024-01-27 19:05:01	voyager.providers.index	null
19	1	Графики		_self	\N	#000000	\N	19	2024-01-27 19:06:07	2024-01-27 19:08:04	voyager.image-graphs.index	null
20	1	Ракеты		_self	\N	#000000	\N	20	2024-01-27 19:07:01	2024-01-27 19:08:13	voyager.image-rockets.index	null
21	1	Карты местоположения		_self	\N	#000000	\N	21	2024-01-27 19:07:19	2024-01-27 19:08:27	voyager.image-places.index	null
\.


--
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.menus (id, name, created_at, updated_at) FROM stdin;
1	admin	2023-12-15 21:03:39	2023-12-15 21:03:39
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2018_08_08_100000_create_telescope_entries_table	1
4	2019_08_19_000000_create_failed_jobs_table	1
5	2019_12_14_000001_create_personal_access_tokens_table	1
6	2023_12_10_100539_create_space_ports	2
7	2023_12_11_135846_create_rockets	3
8	2016_01_01_000000_add_voyager_user_fields	4
9	2016_01_01_000000_create_data_types_table	4
10	2016_05_19_173453_create_menu_table	4
11	2016_10_21_190000_create_roles_table	4
12	2016_10_21_190000_create_settings_table	4
13	2016_11_30_135954_create_permission_table	4
14	2016_11_30_141208_create_permission_role_table	4
15	2016_12_26_201236_data_types__add__server_side	4
16	2017_01_13_000000_add_route_to_menu_items_table	4
17	2017_01_14_005015_create_translations_table	4
18	2017_01_15_000000_make_table_name_nullable_in_permissions_table	4
19	2017_03_06_000000_add_controller_to_data_types_table	4
20	2017_04_21_000000_add_order_to_data_rows_table	4
21	2017_07_05_210000_add_policyname_to_data_types_table	4
22	2017_08_05_000000_add_group_to_settings_table	4
23	2017_11_26_013050_add_user_role_relationship	4
24	2017_11_26_015000_create_user_roles_table	4
25	2018_03_11_000000_add_user_settings	4
26	2018_03_14_000000_add_details_to_data_types_table	4
27	2018_03_16_000000_make_settings_value_nullable	4
28	2016_01_01_000000_create_pages_table	5
29	2016_01_01_000000_create_posts_table	5
30	2016_02_15_204651_create_categories_table	5
31	2017_04_11_000000_alter_post_nullable_fields_table	5
32	2024_01_27_135550_create_image_tables	6
33	2024_02_17_113636_alter_space_table	7
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: permission_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.permission_role (permission_id, role_id) FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	1
9	1
10	1
11	1
12	1
13	1
14	1
15	1
16	1
17	1
18	1
19	1
20	1
21	1
22	1
23	1
24	1
25	1
26	1
27	1
28	1
29	1
30	1
31	1
32	1
33	1
34	1
35	1
36	1
37	1
38	1
39	1
40	1
61	1
62	1
63	1
64	1
65	1
66	1
67	1
68	1
69	1
70	1
71	1
72	1
73	1
74	1
75	1
76	1
77	1
78	1
79	1
80	1
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.permissions (id, key, table_name, created_at, updated_at) FROM stdin;
1	browse_admin	\N	2023-12-15 21:03:39	2023-12-15 21:03:39
2	browse_bread	\N	2023-12-15 21:03:39	2023-12-15 21:03:39
3	browse_database	\N	2023-12-15 21:03:39	2023-12-15 21:03:39
4	browse_media	\N	2023-12-15 21:03:39	2023-12-15 21:03:39
5	browse_compass	\N	2023-12-15 21:03:39	2023-12-15 21:03:39
6	browse_menus	menus	2023-12-15 21:03:39	2023-12-15 21:03:39
7	read_menus	menus	2023-12-15 21:03:39	2023-12-15 21:03:39
8	edit_menus	menus	2023-12-15 21:03:39	2023-12-15 21:03:39
9	add_menus	menus	2023-12-15 21:03:39	2023-12-15 21:03:39
10	delete_menus	menus	2023-12-15 21:03:39	2023-12-15 21:03:39
11	browse_roles	roles	2023-12-15 21:03:39	2023-12-15 21:03:39
12	read_roles	roles	2023-12-15 21:03:39	2023-12-15 21:03:39
13	edit_roles	roles	2023-12-15 21:03:39	2023-12-15 21:03:39
14	add_roles	roles	2023-12-15 21:03:39	2023-12-15 21:03:39
15	delete_roles	roles	2023-12-15 21:03:39	2023-12-15 21:03:39
16	browse_users	users	2023-12-15 21:03:39	2023-12-15 21:03:39
17	read_users	users	2023-12-15 21:03:39	2023-12-15 21:03:39
18	edit_users	users	2023-12-15 21:03:39	2023-12-15 21:03:39
19	add_users	users	2023-12-15 21:03:39	2023-12-15 21:03:39
20	delete_users	users	2023-12-15 21:03:39	2023-12-15 21:03:39
21	browse_settings	settings	2023-12-15 21:03:39	2023-12-15 21:03:39
22	read_settings	settings	2023-12-15 21:03:39	2023-12-15 21:03:39
23	edit_settings	settings	2023-12-15 21:03:39	2023-12-15 21:03:39
24	add_settings	settings	2023-12-15 21:03:39	2023-12-15 21:03:39
25	delete_settings	settings	2023-12-15 21:03:39	2023-12-15 21:03:39
26	browse_rockets	rockets	2023-12-15 21:35:30	2023-12-15 21:35:30
27	read_rockets	rockets	2023-12-15 21:35:30	2023-12-15 21:35:30
28	edit_rockets	rockets	2023-12-15 21:35:30	2023-12-15 21:35:30
29	add_rockets	rockets	2023-12-15 21:35:30	2023-12-15 21:35:30
30	delete_rockets	rockets	2023-12-15 21:35:30	2023-12-15 21:35:30
31	browse_countries	countries	2023-12-15 21:37:16	2023-12-15 21:37:16
32	read_countries	countries	2023-12-15 21:37:16	2023-12-15 21:37:16
33	edit_countries	countries	2023-12-15 21:37:16	2023-12-15 21:37:16
34	add_countries	countries	2023-12-15 21:37:16	2023-12-15 21:37:16
35	delete_countries	countries	2023-12-15 21:37:16	2023-12-15 21:37:16
36	browse_space_ports	space_ports	2023-12-15 21:37:25	2023-12-15 21:37:25
37	read_space_ports	space_ports	2023-12-15 21:37:25	2023-12-15 21:37:25
38	edit_space_ports	space_ports	2023-12-15 21:37:25	2023-12-15 21:37:25
39	add_space_ports	space_ports	2023-12-15 21:37:25	2023-12-15 21:37:25
40	delete_space_ports	space_ports	2023-12-15 21:37:25	2023-12-15 21:37:25
61	browse_providers	providers	2024-01-27 18:59:39	2024-01-27 18:59:39
62	read_providers	providers	2024-01-27 18:59:39	2024-01-27 18:59:39
63	edit_providers	providers	2024-01-27 18:59:39	2024-01-27 18:59:39
64	add_providers	providers	2024-01-27 18:59:39	2024-01-27 18:59:39
65	delete_providers	providers	2024-01-27 18:59:39	2024-01-27 18:59:39
66	browse_image_graphs	image_graphs	2024-01-27 19:06:07	2024-01-27 19:06:07
67	read_image_graphs	image_graphs	2024-01-27 19:06:07	2024-01-27 19:06:07
68	edit_image_graphs	image_graphs	2024-01-27 19:06:07	2024-01-27 19:06:07
69	add_image_graphs	image_graphs	2024-01-27 19:06:07	2024-01-27 19:06:07
70	delete_image_graphs	image_graphs	2024-01-27 19:06:07	2024-01-27 19:06:07
71	browse_image_rockets	image_rockets	2024-01-27 19:07:01	2024-01-27 19:07:01
72	read_image_rockets	image_rockets	2024-01-27 19:07:01	2024-01-27 19:07:01
73	edit_image_rockets	image_rockets	2024-01-27 19:07:01	2024-01-27 19:07:01
74	add_image_rockets	image_rockets	2024-01-27 19:07:01	2024-01-27 19:07:01
75	delete_image_rockets	image_rockets	2024-01-27 19:07:01	2024-01-27 19:07:01
76	browse_image_places	image_places	2024-01-27 19:07:18	2024-01-27 19:07:18
77	read_image_places	image_places	2024-01-27 19:07:18	2024-01-27 19:07:18
78	edit_image_places	image_places	2024-01-27 19:07:19	2024-01-27 19:07:19
79	add_image_places	image_places	2024-01-27 19:07:19	2024-01-27 19:07:19
80	delete_image_places	image_places	2024-01-27 19:07:19	2024-01-27 19:07:19
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: providers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.providers (id, title, logo, created_at, updated_at) FROM stdin;
22	Роскосмос	providers/February2024/u3HDBLgruJU4S2QDsSNb.png	2024-02-20 19:34:03	2024-02-20 19:34:03
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.roles (id, name, display_name, created_at, updated_at) FROM stdin;
1	admin	Administrator	2023-12-15 21:03:39	2023-12-15 21:03:39
2	user	Normal User	2023-12-15 21:03:39	2023-12-15 21:03:39
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.settings (id, key, display_name, value, details, type, "order", "group") FROM stdin;
1	site.title	Site Title	Site Title		text	1	Site
2	site.description	Site Description	Site Description		text	2	Site
3	site.logo	Site Logo			image	3	Site
4	site.google_analytics_tracking_id	Google Analytics Tracking ID			text	4	Site
5	admin.bg_image	Admin Background Image			image	5	Admin
6	admin.title	Admin Title	Voyager		text	1	Admin
7	admin.description	Admin Description	Welcome to Voyager. The Missing Admin for Laravel		text	2	Admin
8	admin.loader	Admin Loader			image	3	Admin
9	admin.icon_image	Admin Icon Image			image	4	Admin
10	admin.google_analytics_client_id	Google Analytics Client ID (used for admin dashboard)			text	1	Admin
\.


--
-- Data for Name: space_ports; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.space_ports (id, title, country_id, description, position_x, position_y, target, about_place, first_send, area, logo, provider_id, created_at, updated_at, about_history_country, other_info, create_port, present_state) FROM stdin;
70	Космодром Плесецк (1 ГИК МО)	21	<p>Космодром &laquo;Плесецк&raquo; - 1-й Государственный испытательный космодром Министерства обороны.</p>	56	31	<p>Космодром предназначен для запусков искусственных спутников Земли, испытаний и пусков баллистических ракет. Космодром обеспечивает часть российских космических программ, связанных с оборонными, а также прикладными, научными и коммерческими пусками непилотируемых космических аппаратов.<br>В настоящее время на космодроме эксплуатируются ракеты-носители лёгкого класса &laquo;Ангара-1.2&raquo;, &laquo;Союз-2.1в&raquo;, среднего класса &laquo;Союз-2.1а&raquo;, &laquo;Союз-2.1б&raquo;, тяжелого класса &laquo;Ангара-А5&raquo;. Технические средства космодрома позволяют проводить запуски различных космических аппаратов на все типы орбит, включая геостационарную.</p>	<p>Расположен в Архангельской области, в 180 км к югу от Архангельска, протяженность с севера на юг &ndash; 46 км, с востока на запад &ndash; 82 км.</p>	1966-03-17	1762	space-ports/February2024/jEoc3inGbHeqbBhtTL84.png	22	2024-02-20 19:39:50	2024-02-20 19:39:50	<p>СССР (до 1991г.), Российская Федерация (с 1992г.)</p>	<p>Космодром представляет собой масштабный научно-технический комплекс, состоящий из объектов космической инфраструктуры:<br>стартовые комплексы с пусковыми установками ракет-носителей &laquo;Союз-2&raquo;, &laquo;Ангара&raquo;;<br>технические комплексы подготовки ракет-носителей и космических аппаратов;<br>многофункциональная заправочно-нейтрализационная станция (ЗНС) для заправки ракет-носителей, разгонных блоков и космических аппаратов компонентами ракетных топлив;<br>кислородно-азотный завод;<br>измерительный комплекс с вычислительным центром;<br>аэродром;<br>вспомогательные сооружения и объекты энергоснабжения.</p>	1966-01-01	\N
\.


--
-- Data for Name: translations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.translations (id, table_name, column_name, foreign_key, locale, value, created_at, updated_at) FROM stdin;
1	data_types	display_name_singular	9	pt	Post	2023-12-15 22:26:53	2023-12-15 22:26:53
2	data_types	display_name_singular	10	pt	Página	2023-12-15 22:26:53	2023-12-15 22:26:53
3	data_types	display_name_singular	1	pt	Utilizador	2023-12-15 22:26:53	2023-12-15 22:26:53
4	data_types	display_name_singular	8	pt	Categoria	2023-12-15 22:26:53	2023-12-15 22:26:53
5	data_types	display_name_singular	2	pt	Menu	2023-12-15 22:26:53	2023-12-15 22:26:53
6	data_types	display_name_singular	3	pt	Função	2023-12-15 22:26:53	2023-12-15 22:26:53
7	data_types	display_name_plural	9	pt	Posts	2023-12-15 22:26:53	2023-12-15 22:26:53
8	data_types	display_name_plural	10	pt	Páginas	2023-12-15 22:26:53	2023-12-15 22:26:53
9	data_types	display_name_plural	1	pt	Utilizadores	2023-12-15 22:26:53	2023-12-15 22:26:53
10	data_types	display_name_plural	8	pt	Categorias	2023-12-15 22:26:53	2023-12-15 22:26:53
11	data_types	display_name_plural	2	pt	Menus	2023-12-15 22:26:53	2023-12-15 22:26:53
12	data_types	display_name_plural	3	pt	Funções	2023-12-15 22:26:53	2023-12-15 22:26:53
13	categories	slug	1	pt	categoria-1	2023-12-15 22:26:53	2023-12-15 22:26:53
14	categories	name	1	pt	Categoria 1	2023-12-15 22:26:53	2023-12-15 22:26:53
15	categories	slug	2	pt	categoria-2	2023-12-15 22:26:53	2023-12-15 22:26:53
16	categories	name	2	pt	Categoria 2	2023-12-15 22:26:53	2023-12-15 22:26:53
17	pages	title	1	pt	Olá Mundo	2023-12-15 22:26:53	2023-12-15 22:26:53
18	pages	slug	1	pt	ola-mundo	2023-12-15 22:26:53	2023-12-15 22:26:53
19	pages	body	1	pt	<p>Olá Mundo. Scallywag grog swab Cat o'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>	2023-12-15 22:26:53	2023-12-15 22:26:53
20	menu_items	title	1	pt	Painel de Controle	2023-12-15 22:26:53	2023-12-15 22:26:53
21	menu_items	title	2	pt	Media	2023-12-15 22:26:53	2023-12-15 22:26:53
22	menu_items	title	16	pt	Publicações	2023-12-15 22:26:53	2023-12-15 22:26:53
23	menu_items	title	3	pt	Utilizadores	2023-12-15 22:26:53	2023-12-15 22:26:53
24	menu_items	title	15	pt	Categorias	2023-12-15 22:26:53	2023-12-15 22:26:53
25	menu_items	title	17	pt	Páginas	2023-12-15 22:26:53	2023-12-15 22:26:53
26	menu_items	title	4	pt	Funções	2023-12-15 22:26:53	2023-12-15 22:26:53
27	menu_items	title	5	pt	Ferramentas	2023-12-15 22:26:53	2023-12-15 22:26:53
28	menu_items	title	6	pt	Menus	2023-12-15 22:26:53	2023-12-15 22:26:53
29	menu_items	title	7	pt	Base de dados	2023-12-15 22:26:53	2023-12-15 22:26:53
30	menu_items	title	10	pt	Configurações	2023-12-15 22:26:53	2023-12-15 22:26:53
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_roles (user_id, role_id) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, avatar, role_id, settings) FROM stdin;
1	Vova	your@email.com	\N	$2y$10$t594WimT3/WShXemxMY6zOGO8UXu1IJmPF0GwxYE4rfBopflMrLY2	3X6Tp0Um3r7S13Vs58WwIJVgJMjTIq2L1igA3SaDIhiVBMQbDw0XKc577y0D	2023-12-15 21:06:49	2023-12-16 16:37:15	users/default.png	1	{"locale":"ru"}
\.


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.countries_id_seq', 21, true);


--
-- Name: data_rows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.data_rows_id_seq', 127, true);


--
-- Name: data_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.data_types_id_seq', 14, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: image_graphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.image_graphs_id_seq', 2, true);


--
-- Name: image_places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.image_places_id_seq', 10, true);


--
-- Name: image_rockets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.image_rockets_id_seq', 1, true);


--
-- Name: menu_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.menu_items_id_seq', 21, true);


--
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.menus_id_seq', 1, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.migrations_id_seq', 33, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.permissions_id_seq', 80, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: providers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.providers_id_seq', 22, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.settings_id_seq', 11, true);


--
-- Name: space_ports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.space_ports_id_seq', 70, true);


--
-- Name: translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.translations_id_seq', 30, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: data_rows data_rows_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_pkey PRIMARY KEY (id);


--
-- Name: data_types data_types_name_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_name_unique UNIQUE (name);


--
-- Name: data_types data_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_pkey PRIMARY KEY (id);


--
-- Name: data_types data_types_slug_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_slug_unique UNIQUE (slug);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: image_graphs image_graphs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image_graphs
    ADD CONSTRAINT image_graphs_pkey PRIMARY KEY (id);


--
-- Name: image_places image_places_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image_places
    ADD CONSTRAINT image_places_pkey PRIMARY KEY (id);


--
-- Name: image_rockets image_rockets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image_rockets
    ADD CONSTRAINT image_rockets_pkey PRIMARY KEY (id);


--
-- Name: menu_items menu_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);


--
-- Name: menus menus_name_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_name_unique UNIQUE (name);


--
-- Name: menus menus_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: permission_role permission_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_pkey PRIMARY KEY (permission_id, role_id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: providers providers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);


--
-- Name: roles roles_name_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_unique UNIQUE (name);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: settings settings_key_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_key_unique UNIQUE (key);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: space_ports space_ports_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.space_ports
    ADD CONSTRAINT space_ports_pkey PRIMARY KEY (id);


--
-- Name: translations translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (id);


--
-- Name: translations translations_table_name_column_name_foreign_key_locale_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique UNIQUE (table_name, column_name, foreign_key, locale);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: permission_role_permission_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX permission_role_permission_id_index ON public.permission_role USING btree (permission_id);


--
-- Name: permission_role_role_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX permission_role_role_id_index ON public.permission_role USING btree (role_id);


--
-- Name: permissions_key_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX permissions_key_index ON public.permissions USING btree (key);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: user_roles_role_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX user_roles_role_id_index ON public.user_roles USING btree (role_id);


--
-- Name: user_roles_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX user_roles_user_id_index ON public.user_roles USING btree (user_id);


--
-- Name: data_rows data_rows_data_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_data_type_id_foreign FOREIGN KEY (data_type_id) REFERENCES public.data_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: image_graphs image_graphs_space_port_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image_graphs
    ADD CONSTRAINT image_graphs_space_port_id_foreign FOREIGN KEY (space_port_id) REFERENCES public.space_ports(id) ON DELETE CASCADE;


--
-- Name: image_places image_places_space_port_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image_places
    ADD CONSTRAINT image_places_space_port_id_foreign FOREIGN KEY (space_port_id) REFERENCES public.space_ports(id) ON DELETE CASCADE;


--
-- Name: image_rockets image_rockets_space_port_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.image_rockets
    ADD CONSTRAINT image_rockets_space_port_id_foreign FOREIGN KEY (space_port_id) REFERENCES public.space_ports(id) ON DELETE CASCADE;


--
-- Name: menu_items menu_items_menu_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_menu_id_foreign FOREIGN KEY (menu_id) REFERENCES public.menus(id) ON DELETE CASCADE;


--
-- Name: permission_role permission_role_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: permission_role permission_role_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: space_ports space_ports_country_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.space_ports
    ADD CONSTRAINT space_ports_country_id_foreign FOREIGN KEY (country_id) REFERENCES public.countries(id) ON DELETE CASCADE;


--
-- Name: space_ports space_ports_provider_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.space_ports
    ADD CONSTRAINT space_ports_provider_id_foreign FOREIGN KEY (provider_id) REFERENCES public.providers(id) ON DELETE CASCADE;


--
-- Name: user_roles user_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: user_roles user_roles_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users users_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- PostgreSQL database dump complete
--

