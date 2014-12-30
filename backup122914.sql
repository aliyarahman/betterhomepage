--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: app_contact; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_contact (
    id integer NOT NULL,
    first_name character varying(15) NOT NULL,
    last_name character varying(15) NOT NULL,
    email character varying(255) NOT NULL,
    interested_in character varying(300),
    notes text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.app_contact OWNER TO postgres;

--
-- Name: app_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.app_contact_id_seq OWNER TO postgres;

--
-- Name: app_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_contact_id_seq OWNED BY app_contact.id;


--
-- Name: app_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_contact_id_seq', 442, true);


--
-- Name: app_fellow; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE app_fellow (
    id integer NOT NULL,
    first_name character varying(15) NOT NULL,
    last_name character varying(15) NOT NULL,
    where_from character varying(300),
    current_job character varying(300),
    cohort character varying(100),
    post_2014_residency_q1 character varying(2000),
    post_2014_residency_q2 character varying(2000),
    post_2014_residency_q3 character varying(2000),
    post_2014_residency_q4 character varying(2000),
    page_text text,
    github_username character varying(45)
);


ALTER TABLE public.app_fellow OWNER TO postgres;

--
-- Name: app_fellow_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE app_fellow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.app_fellow_id_seq OWNER TO postgres;

--
-- Name: app_fellow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE app_fellow_id_seq OWNED BY app_fellow.id;


--
-- Name: app_fellow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('app_fellow_id_seq', 11, true);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 24, true);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 2, true);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 8, true);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_contact ALTER COLUMN id SET DEFAULT nextval('app_contact_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY app_fellow ALTER COLUMN id SET DEFAULT nextval('app_fellow_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Data for Name: app_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY app_contact (id, first_name, last_name, email, interested_in, notes, created_at, updated_at) FROM stdin;
2	Michael	Stefans	michaelcstefans@gmail.com	[u'application']	Hi my name is Michael Stefans and I'm a highly motivated student at the University of Arkansas at Little Rock (UALR). I'm of Latino descent with a 3.0 GPA. I've taken IT classes at UALR where I've become acquainted with web concepts but still lack the ability for a job in the tech world.\r\n\r\nOnce I was given information about this program I immediately became interested. I believe I would be a successful student of your program and hope you consider my application. My dream is to create/implement the next big idea that shakes the tech world. With your resources I’m confident you can bring me that much closer to that dream. \r\n\r\nall the best,\r\n\r\n\r\nMichael Stefans\r\nLittle Rock, AR	2014-12-09 18:36:19.121737+00	2014-12-09 18:36:19.121794+00
4	Nicky	Coutinho	oncoutinho@gmail.com	[u'application']		2014-12-09 21:45:54.503619+00	2014-12-09 21:45:54.503677+00
5	Michael	Suyeda	michael.suyeda@gmail.com	[u'application']	Would love to give this a shot! Thanks.\r\n\r\nMichael.	2014-12-09 22:14:08.647681+00	2014-12-09 22:14:08.647741+00
6	Mark	Toth	marktoth@centurylink.net	[u'instructor']		2014-12-09 22:30:57.623442+00	2014-12-09 22:30:57.623538+00
7	Ryan	Gladstone	Ryan.gladstone@gmail.com	[u'coach', u'instructor', u'email_list']		2014-12-09 22:30:57.627984+00	2014-12-09 22:30:57.628024+00
8	Nicole	Castillo	nicole.p.castillo@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.630228+00	2014-12-09 22:30:57.630268+00
9	Briana	Brown	brown.briana.nicole@gmail.com	[u'application']		2014-12-09 22:30:57.632252+00	2014-12-09 22:30:57.632292+00
10	Erin	Armstrong	earmstrong@crimson.ua.edu	[u'application', u'email_list']		2014-12-09 22:30:57.634748+00	2014-12-09 22:30:57.634788+00
11	Angie	Tran	angietran10@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.636816+00	2014-12-09 22:30:57.636855+00
12	Jasmine	Merritt	itsjazelle@gmail.com	[u'application']		2014-12-09 22:30:57.638889+00	2014-12-09 22:30:57.638927+00
13	Liz	Keith	lkeith@probono.net	[u'email_list', u'other']		2014-12-09 22:30:57.64085+00	2014-12-09 22:30:57.640889+00
14	Tim	Chambers	tchambers@deweysquare.com	[u'other']		2014-12-09 22:30:57.64344+00	2014-12-09 22:30:57.643478+00
15	Sunday	Bitrus	sbitrus@outlook.com	[u'application', u'coach', u'instructor', u'mentor', u'email_list']		2014-12-09 22:30:57.645605+00	2014-12-09 22:30:57.645663+00
16	Doug	Richmond	dr@vt.edu	[u'email_list']		2014-12-09 22:30:57.64747+00	2014-12-09 22:30:57.647624+00
17	Constance	Ip	constanceip@gmail.com	[u'application']		2014-12-09 22:30:57.649444+00	2014-12-09 22:30:57.649482+00
18	Komal	Khan	k10kk022@gmail.com	[u'application', u'instructor', u'email_list', u'other']	I am in the Bay Area. Are there any events happening in the Oakland area ?	2014-12-09 22:30:57.651418+00	2014-12-09 22:30:57.651456+00
19	Aimee	Castenell	castenell@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.653401+00	2014-12-09 22:30:57.653438+00
20	Deanna	Kosaraju	deanna@globaltechwomen.com	[u'other']	Hello!\n\nI would like to discuss a collaboration. Please contact me at your earliest convenience.\n\nKindest regards,\nDeanna	2014-12-09 22:30:57.655314+00	2014-12-09 22:30:57.655352+00
21	Neetu	Jain	nutshi@gmail.com	[u'coach', u'instructor', u'email_list']	I would love to explore how i can help .. I am a techie .. passionate about social change	2014-12-09 22:30:57.657303+00	2014-12-09 22:30:57.657341+00
22	Carolyn	Anderson	caronique2002@yahoo.com	[u'application', u'email_list']		2014-12-09 22:30:57.659255+00	2014-12-09 22:30:57.659293+00
23	Maria	Beltran	beltranm16@yahoo.com	[u'application']		2014-12-09 22:30:57.661191+00	2014-12-09 22:30:57.661229+00
24	Michelle 	Vo	emailmichellevo@gmail.com	[u'application', u'email_list', u'other']		2014-12-09 22:30:57.663201+00	2014-12-09 22:30:57.663238+00
25	Maiya	Edgerly	maiyaedge@yahoo.com	[u'application']		2014-12-09 22:30:57.665119+00	2014-12-09 22:30:57.665156+00
26	Steven	Leon	Steven_leon@live.com	[u'application', u'email_list', u'other']	Hello Code for Progress,\n\nDo you have a NYC partner office? The systematic bias here is a real problem as well.\n\nThanks	2014-12-09 22:30:57.666988+00	2014-12-09 22:30:57.667025+00
27	Leena	P	Leenap8563@gmail.com	[u'application', u'email_list']	I fit the description for the ideal candidate and would like to apply for the next round.	2014-12-09 22:30:57.668946+00	2014-12-09 22:30:57.668983+00
28	Matthew	Yeung	matthewyeung.student@gmail.com	[u'application']		2014-12-09 22:30:57.671233+00	2014-12-09 22:30:57.671271+00
29	Matthew	Parker	matthewaparker@icloud.com	[u'application']		2014-12-09 22:30:57.673246+00	2014-12-09 22:30:57.673284+00
30	Zaynaib	Giwa	zaynaibg@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.675215+00	2014-12-09 22:30:57.675252+00
31	Monica	Oss	monicaoss@openminds.com	[u'email_list', u'other']		2014-12-09 22:30:57.677178+00	2014-12-09 22:30:57.677216+00
32	Monica	 Peters	monicapeters24@aol.com	[u'application']		2014-12-09 22:30:57.679136+00	2014-12-09 22:30:57.679173+00
33	Christine	Elasigue	celasigue@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.681094+00	2014-12-09 22:30:57.681132+00
34	Aline	Anders	Aline153@aol.com	[u'application']		2014-12-09 22:30:57.6831+00	2014-12-09 22:30:57.683138+00
35	Marie	Tran	mariet1129@gmail.com	[u'application']		2014-12-09 22:30:57.685113+00	2014-12-09 22:30:57.685151+00
36	Robyn 	Stegman	stegmanre@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.687888+00	2014-12-09 22:30:57.687926+00
37	Mia	Campbell	mr9525@my.bristol.ac.uk	[u'application']		2014-12-09 22:30:57.689881+00	2014-12-09 22:30:57.689919+00
38	Angie	Chamberland	angiechamberland@gmail.com	[u'application', u'email_list']	Dental Office Manager in DC interested in getting involved with healthcare IT and coding in order to provide better patient services. 	2014-12-09 22:30:57.692007+00	2014-12-09 22:30:57.692045+00
39	Karen 	Hambro	khambro@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.694423+00	2014-12-09 22:30:57.694461+00
40	Nina	Armah	nina.armah@gmail.com	[u'application']		2014-12-09 22:30:57.696929+00	2014-12-09 22:30:57.696966+00
41	Emmi	Bevensee	emmicb@gmail.com	[u'application']	Thanks CFP!	2014-12-09 22:30:57.699135+00	2014-12-09 22:30:57.699173+00
42	Mi	Turn	m_turner@ymail.com	[u'application']		2014-12-09 22:30:57.701075+00	2014-12-09 22:30:57.701113+00
43	Lauren	Payne	laurenpayne1012@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.703028+00	2014-12-09 22:30:57.703066+00
44	Zakia	Soomauroo	s.zakya@googlemail.com	[u'application']		2014-12-09 22:30:57.704985+00	2014-12-09 22:30:57.705022+00
45	Juliet	Camp	juliet.camp@gmail.com	[u'application', u'email_list']	I am changing careers.	2014-12-09 22:30:57.707048+00	2014-12-09 22:30:57.707086+00
46	Catherine	Frost	catherine.frost@pomona.edu	[u'application', u'email_list']	This is an amazing program and I would love to hear more about it! Thank you for your time!	2014-12-09 22:30:57.709482+00	2014-12-09 22:30:57.709649+00
47	Jacob	Chavez	jacob@affezi.com	[u'application', u'email_list']		2014-12-09 22:30:57.711666+00	2014-12-09 22:30:57.711715+00
48	Alex 	Aguilar	aaguilar82@student.rcc.edu	[u'application']		2014-12-09 22:30:57.713671+00	2014-12-09 22:30:57.713719+00
49	hannes	schneider	hannes.schneider@mail.de	[u'application']		2014-12-09 22:30:57.71612+00	2014-12-09 22:30:57.716158+00
50	Gina	Del Tito	deltitog@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.718643+00	2014-12-09 22:30:57.718694+00
51	Camille	Burner	camilleburner@comcast.net	[u'application', u'other']		2014-12-09 22:30:57.720891+00	2014-12-09 22:30:57.720929+00
52	Brian	Grover	bgrooven@hotmail.com	[u'application', u'mentor']	I'd like to offer professional mentorship to individuals learning to code.	2014-12-09 22:30:57.7229+00	2014-12-09 22:30:57.722937+00
53	Gwendolyn	Holbrow	holbrow@hotmail.com	[u'application', u'email_list']	This sure sounds like a great fit for me. I look forward to learning more, and more, and more!\n\nRegards,\nGwen Holbrow	2014-12-09 22:30:57.724906+00	2014-12-09 22:30:57.724943+00
54	Makda 	Aman	makda.aman@gmail.com	[u'application', u'email_list']	This looks like an incredible opportunity, I'm excited to learn more about the fellowship. 	2014-12-09 22:30:57.72692+00	2014-12-09 22:30:57.726958+00
55	Erick	Chavarria	erickalan.chavarria@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.728955+00	2014-12-09 22:30:57.728993+00
56	Kaitlyn	Martinez	kaitlyn.martinez1885@gmail.com	[u'application']		2014-12-09 22:30:57.730987+00	2014-12-09 22:30:57.731025+00
57	Chris	Gerdes	cgerdes714@gmail.com	[u'application', u'email_list']	.... I really do not know what it is all about, but I would like to find out more because this sounds interesting. 	2014-12-09 22:30:57.732955+00	2014-12-09 22:30:57.732992+00
58	Dawn	Walker	dawn.walker@mail.utoronto.ca	[u'application']		2014-12-09 22:30:57.734997+00	2014-12-09 22:30:57.735034+00
59	Satenik	Margaryan	satenikm@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.737017+00	2014-12-09 22:30:57.737055+00
60	Nettie	morgan	netlucia@umd.edu	[u'application', u'email_list']		2014-12-09 22:30:57.739017+00	2014-12-09 22:30:57.739055+00
61	Nicoletta	Bortoluzzi	nico.bortoluzzi@alice.it	[u'application']		2014-12-09 22:30:57.742189+00	2014-12-09 22:30:57.742252+00
62	Cynthia	Sanchez	cyasanchez@gmail.com	[u'application']		2014-12-09 22:30:57.744933+00	2014-12-09 22:30:57.744991+00
63	Timothy	D'Agostino	tim.r.dagostino@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.747032+00	2014-12-09 22:30:57.74707+00
64	Jennica	Billins 	Jbillins@gmail.com 	[u'application', u'email_list']		2014-12-09 22:30:57.749+00	2014-12-09 22:30:57.749037+00
65	Kirk	Tolliver	Kirktolliver@yahoo.com	[u'application', u'email_list']	Hello, this program sounds life changing! I am eager to apply!\n\nSincerely \n\nKirk Tolliver	2014-12-09 22:30:57.751378+00	2014-12-09 22:30:57.751416+00
66	Vanessa	Johnson	Johnson.vanessa.m@gmail.com	[u'application']	What a wonderful opportunity- I look forward to learning more. Many thanks, Vanessa 	2014-12-09 22:30:57.754061+00	2014-12-09 22:30:57.754099+00
67	Iris	Xie	ixie@ucdavis.edu	[u'application', u'email_list']		2014-12-09 22:30:57.756158+00	2014-12-09 22:30:57.756196+00
68	Natasha	Chapman	tasha.l.chapman@gmail.com	[u'application']		2014-12-09 22:30:57.758312+00	2014-12-09 22:30:57.758349+00
69	Hannah	Le	hnnhnle@gmail.com	[u'application']	I have friends in HIPS who suggested this to me!  The time wasn't right before, but it is now.	2014-12-09 22:30:57.760847+00	2014-12-09 22:30:57.760885+00
70	Dominica Yasmin	Wambold	Dwambold@stanford.edu	[u'application']	I am looking forward to applying! 	2014-12-09 22:30:57.762827+00	2014-12-09 22:30:57.762864+00
71	John	Olson	jwolson@mac.com	[u'email_list']	I am a professional programmer and HS technology teacher. I am interested in your organization and want to learn more. Thanks!	2014-12-09 22:30:57.764909+00	2014-12-09 22:30:57.764947+00
72	Zavi	Smith	zavismith@gmail.com	[u'application']		2014-12-09 22:30:57.767456+00	2014-12-09 22:30:57.767631+00
73	Iris	Cano	iriscano27@gmail.com	[u'application']		2014-12-09 22:30:57.769603+00	2014-12-09 22:30:57.769655+00
74	Whitney	calk	whitneycalk@gmail.com	[u'email_list']		2014-12-09 22:30:57.771771+00	2014-12-09 22:30:57.771809+00
75	Jessica 	Burstrem 	jessica@burstrem.net	[u'application', u'email_list']		2014-12-09 22:30:57.773771+00	2014-12-09 22:30:57.773808+00
76	Teresa	Hodge	teresa@mission-launch.org	[u'application']	Excited to apply for the 2015 fellowship, with a passion for working on returning citizens issues via tech!	2014-12-09 22:30:57.775821+00	2014-12-09 22:30:57.77586+00
77	seshat	walker	seshatw@gmail.com	[u'application']		2014-12-09 22:30:57.777914+00	2014-12-09 22:30:57.777951+00
78	barbara	d	barbara@studiocityweb.com	[u'application', u'email_list']		2014-12-09 22:30:57.779942+00	2014-12-09 22:30:57.77998+00
79	Moises	Calcano	moisescalcano@gmail.com	[u'application']		2014-12-09 22:30:57.7821+00	2014-12-09 22:30:57.782137+00
80	Alba	Villamil	alba.n.villamil@gmail.com	[u'application']		2014-12-09 22:30:57.784385+00	2014-12-09 22:30:57.784425+00
81	Niquita	Taliaferro	taliaferro@languagedept.com	[u'application', u'email_list']		2014-12-09 22:30:57.786805+00	2014-12-09 22:30:57.786842+00
82	Sean	Jennings	sejenc@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.788861+00	2014-12-09 22:30:57.788898+00
83	Rahwa	Berhe	Rahwakberhe@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.790862+00	2014-12-09 22:30:57.7909+00
84	M	Orange	morange1999@yahoo.com	[u'application', u'email_list']		2014-12-09 22:30:57.792855+00	2014-12-09 22:30:57.792893+00
85	Tanner	Huggins	athuggins@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.794925+00	2014-12-09 22:30:57.794962+00
86	Jaime	Schatz	jaimelynschatz@gmail.com	[u'application']	Code for Progress sounds amazing! I can't wait to get a chance to apply!	2014-12-09 22:30:57.796846+00	2014-12-09 22:30:57.796883+00
87	Lee	Keeling	keelinglk@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.798884+00	2014-12-09 22:30:57.798921+00
88	Starr	Goldsberry	starr.goldsberry@outlook.com	[u'application']		2014-12-09 22:30:57.8009+00	2014-12-09 22:30:57.800937+00
89	Jasdev	Singh	jasdevism@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.802871+00	2014-12-09 22:30:57.802908+00
90	Crystal	Anderson	epitome_17@yahoo.com	[u'application']		2014-12-09 22:30:57.804902+00	2014-12-09 22:30:57.804939+00
91	Magdalene	James	mrjames1@ualr.edu	[u'application']		2014-12-09 22:30:57.806842+00	2014-12-09 22:30:57.80688+00
92	Richelle	Cohen	ricki.c.18@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.808906+00	2014-12-09 22:30:57.808944+00
93	BriGette	McCoy	milvetchica@gmail.com	[u'application']		2014-12-09 22:30:57.810993+00	2014-12-09 22:30:57.81103+00
94	Jan	Rieman	jan.rieman@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.813042+00	2014-12-09 22:30:57.813078+00
95	Harold	Moses	hwmoses@ualr.edu	[u'application']		2014-12-09 22:30:57.815097+00	2014-12-09 22:30:57.815134+00
96	Reginald	Pearson	rhpearsonjr@gmail.com	[u'application']		2014-12-09 22:30:57.817139+00	2014-12-09 22:30:57.817178+00
97	Juanita	Britton	juanitabritton@yahoo.com	[u'application']		2014-12-09 22:30:57.819141+00	2014-12-09 22:30:57.819179+00
98	Edward	Jackson Jr	eljackson@ualr.edu	[u'application']		2014-12-09 22:30:57.821182+00	2014-12-09 22:30:57.821219+00
99	Charles	Flay	cflay1@gmail.com	[u'application', u'coach', u'email_list']		2014-12-09 22:30:57.8232+00	2014-12-09 22:30:57.823238+00
100	Le	Nhu	Lenhu2605@gmail.com	[u'email_list']	Open info	2014-12-09 22:30:57.825247+00	2014-12-09 22:30:57.825285+00
101	Linda	Ellis	lmellis@ualr.edu	[u'application']		2014-12-09 22:30:57.827294+00	2014-12-09 22:30:57.827334+00
102	carrie	henry	cfhenry@ualr.edu	[u'application', u'email_list']		2014-12-09 22:30:57.829326+00	2014-12-09 22:30:57.829363+00
103	DeLesslin	George-Warren	delesslingw@gmail.com	[u'application']		2014-12-09 22:30:57.831238+00	2014-12-09 22:30:57.831275+00
104	Folayemi	Agbede	folayemi.agbede@gmail.com	[u'application', u'email_list']		2014-12-09 22:30:57.833416+00	2014-12-09 22:30:57.833454+00
105	Seth	Pinckney	seth.davis.pinckney@gmail.com	[u'application', u'coach', u'email_list']		2014-12-09 22:30:57.835833+00	2014-12-09 22:30:57.835871+00
106	Tracy	Meriweather	Lilly_lucia@yahoo.com	[u'application']	Thank you!!!\n	2014-12-09 22:30:57.837805+00	2014-12-09 22:30:57.837842+00
107	Georgette 	Walker	georgette.walker@gmail.com	[u'application']		2014-12-09 22:30:57.839902+00	2014-12-09 22:30:57.839943+00
159	Krystal	Shakespeare	kshake01@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.784085+00	2014-12-10 01:03:53.784123+00
160	Makda 	Aman	makda.aman@gmail.com	[u'application', u'email_list']	This looks like an incredible opportunity, I'm excited to learn more about the fellowship. 	2014-12-10 01:03:53.786646+00	2014-12-10 01:03:53.786684+00
108	Teresa	Gregory	ms_teresa.gregory@yahoo.com	[u'application', u'email_list']	Hello CFP,\r\n\r\nYour program appears to fill a very important unmet need. I am an older female with economic challenges in obtaining "paid-for" training and certification. I have studied on my own extensively and continue to do so. I work in a part-time IT job (that I am told will never become full-time) in a very small city with few opportunities and great socioeconomic challenges. I would love an opportunity to be considered for this program and later to be able to give back.\r\n\r\nI just received a very prompt email reply from Aliya Rahman asking me to submit this form to test the server corrections (relative to this web form) that were made. So, this missive is part of the test. (:\r\n\r\nIn case you like to follow such things, I was referred to your organization by Mark Wilson of the YearUP Program. He is a member of the Washington DC Non-Profit Salesforce User Group of which I am a member even though I reside in Surry County, Virginia and work in Petersburg, Virginia. I have some limited experience with Salesforce System Administration and would love, if accepted into your program, to work in Salesforce.\r\n\r\nThank you for your consideration.\r\n\r\nBest Regards,\r\n\r\nTeresa Gregory	2014-12-09 22:40:18.703856+00	2014-12-09 22:40:18.703915+00
109	Ilyse	Kramer	Ilykramer@gmail.com	[u'application', u'email_list']		2014-12-09 23:28:46.747346+00	2014-12-09 23:28:46.747403+00
110	Allyson	Lam	allyson.lam@gmail.com	[u'application']	Really looking forward to hearing more about this. Thankful that your organization exists!	2014-12-10 01:03:49.714216+00	2014-12-10 01:03:49.714275+00
111	Mark	Toth	marktoth@centurylink.net	[u'instructor']		2014-12-10 01:03:53.684441+00	2014-12-10 01:03:53.68453+00
112	Ryan	Gladstone	Ryan.gladstone@gmail.com	[u'coach', u'instructor', u'email_list']		2014-12-10 01:03:53.68874+00	2014-12-10 01:03:53.68878+00
113	Nicole	Castillo	nicole.p.castillo@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.690889+00	2014-12-10 01:03:53.690927+00
114	Briana	Brown	brown.briana.nicole@gmail.com	[u'application']		2014-12-10 01:03:53.692885+00	2014-12-10 01:03:53.692928+00
115	Erin	Armstrong	earmstrong@crimson.ua.edu	[u'application', u'email_list']		2014-12-10 01:03:53.69489+00	2014-12-10 01:03:53.694928+00
116	Angie	Tran	angietran10@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.696897+00	2014-12-10 01:03:53.696938+00
117	Jasmine	Merritt	itsjazelle@gmail.com	[u'application']		2014-12-10 01:03:53.698836+00	2014-12-10 01:03:53.698873+00
118	Liz	Keith	lkeith@probono.net	[u'email_list', u'other']		2014-12-10 01:03:53.700804+00	2014-12-10 01:03:53.700842+00
119	Tim	Chambers	tchambers@deweysquare.com	[u'other']		2014-12-10 01:03:53.702756+00	2014-12-10 01:03:53.702793+00
120	Sunday	Bitrus	sbitrus@outlook.com	[u'application', u'coach', u'instructor', u'mentor', u'email_list']		2014-12-10 01:03:53.704645+00	2014-12-10 01:03:53.704683+00
121	Doug	Richmond	dr@vt.edu	[u'email_list']		2014-12-10 01:03:53.706694+00	2014-12-10 01:03:53.706731+00
122	Constance	Ip	constanceip@gmail.com	[u'application']		2014-12-10 01:03:53.708685+00	2014-12-10 01:03:53.708722+00
123	Komal	Khan	k10kk022@gmail.com	[u'application', u'instructor', u'email_list', u'other']	I am in the Bay Area. Are there any events happening in the Oakland area ?	2014-12-10 01:03:53.710674+00	2014-12-10 01:03:53.710711+00
124	Aimee	Castenell	castenell@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.712665+00	2014-12-10 01:03:53.712702+00
125	Deanna	Kosaraju	deanna@globaltechwomen.com	[u'other']	Hello!\n\nI would like to discuss a collaboration. Please contact me at your earliest convenience.\n\nKindest regards,\nDeanna	2014-12-10 01:03:53.714467+00	2014-12-10 01:03:53.714611+00
126	Neetu	Jain	nutshi@gmail.com	[u'coach', u'instructor', u'email_list']	I would love to explore how i can help .. I am a techie .. passionate about social change	2014-12-10 01:03:53.716905+00	2014-12-10 01:03:53.716947+00
127	Carolyn	Anderson	caronique2002@yahoo.com	[u'application', u'email_list']		2014-12-10 01:03:53.71884+00	2014-12-10 01:03:53.718877+00
128	Maria	Beltran	beltranm16@yahoo.com	[u'application']		2014-12-10 01:03:53.721111+00	2014-12-10 01:03:53.721147+00
129	Michelle 	Vo	emailmichellevo@gmail.com	[u'application', u'email_list', u'other']		2014-12-10 01:03:53.723005+00	2014-12-10 01:03:53.723043+00
130	Maiya	Edgerly	maiyaedge@yahoo.com	[u'application']		2014-12-10 01:03:53.724955+00	2014-12-10 01:03:53.724993+00
131	Steven	Leon	Steven_leon@live.com	[u'application', u'email_list', u'other']	Hello Code for Progress,\n\nDo you have a NYC partner office? The systematic bias here is a real problem as well.\n\nThanks	2014-12-10 01:03:53.726893+00	2014-12-10 01:03:53.726931+00
132	Leena	P	Leenap8563@gmail.com	[u'application', u'email_list']	I fit the description for the ideal candidate and would like to apply for the next round.	2014-12-10 01:03:53.729833+00	2014-12-10 01:03:53.729871+00
133	Matthew	Yeung	matthewyeung.student@gmail.com	[u'application']		2014-12-10 01:03:53.731837+00	2014-12-10 01:03:53.731873+00
134	Matthew	Parker	matthewaparker@icloud.com	[u'application']		2014-12-10 01:03:53.733783+00	2014-12-10 01:03:53.73382+00
135	Zaynaib	Giwa	zaynaibg@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.735751+00	2014-12-10 01:03:53.735798+00
136	Monica	Oss	monicaoss@openminds.com	[u'email_list', u'other']		2014-12-10 01:03:53.737643+00	2014-12-10 01:03:53.737681+00
137	Monica	 Peters	monicapeters24@aol.com	[u'application']		2014-12-10 01:03:53.740061+00	2014-12-10 01:03:53.740097+00
138	Christine	Elasigue	celasigue@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.741946+00	2014-12-10 01:03:53.741983+00
139	Aline	Anders	Aline153@aol.com	[u'application']		2014-12-10 01:03:53.743901+00	2014-12-10 01:03:53.743938+00
140	Marie	Tran	mariet1129@gmail.com	[u'application']		2014-12-10 01:03:53.74581+00	2014-12-10 01:03:53.745847+00
141	Robyn 	Stegman	stegmanre@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.747768+00	2014-12-10 01:03:53.747804+00
142	Mia	Campbell	mr9525@my.bristol.ac.uk	[u'application']		2014-12-10 01:03:53.749678+00	2014-12-10 01:03:53.749715+00
143	Angie	Chamberland	angiechamberland@gmail.com	[u'application', u'email_list']	Dental Office Manager in DC interested in getting involved with healthcare IT and coding in order to provide better patient services. 	2014-12-10 01:03:53.751592+00	2014-12-10 01:03:53.751632+00
144	Karen 	Hambro	khambro@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.753418+00	2014-12-10 01:03:53.753455+00
145	Nina	Armah	nina.armah@gmail.com	[u'application']		2014-12-10 01:03:53.755745+00	2014-12-10 01:03:53.755781+00
146	Emmi	Bevensee	emmicb@gmail.com	[u'application']	Thanks CFP!	2014-12-10 01:03:53.757691+00	2014-12-10 01:03:53.757727+00
147	Mi	Turn	m_turner@ymail.com	[u'application']		2014-12-10 01:03:53.75944+00	2014-12-10 01:03:53.759476+00
148	Lauren	Payne	laurenpayne1012@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.761387+00	2014-12-10 01:03:53.761424+00
149	Zakia	Soomauroo	s.zakya@googlemail.com	[u'application']		2014-12-10 01:03:53.763379+00	2014-12-10 01:03:53.763415+00
150	Juliet	Camp	juliet.camp@gmail.com	[u'application', u'email_list']	I am changing careers.	2014-12-10 01:03:53.765261+00	2014-12-10 01:03:53.765298+00
151	Catherine	Frost	catherine.frost@pomona.edu	[u'application', u'email_list']	This is an amazing program and I would love to hear more about it! Thank you for your time!	2014-12-10 01:03:53.767245+00	2014-12-10 01:03:53.767281+00
152	Jacob	Chavez	jacob@affezi.com	[u'application', u'email_list']		2014-12-10 01:03:53.769181+00	2014-12-10 01:03:53.769217+00
153	Alex 	Aguilar	aaguilar82@student.rcc.edu	[u'application']		2014-12-10 01:03:53.771407+00	2014-12-10 01:03:53.771444+00
154	hannes	schneider	hannes.schneider@mail.de	[u'application']		2014-12-10 01:03:53.773309+00	2014-12-10 01:03:53.773346+00
155	Gina	Del Tito	deltitog@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.775273+00	2014-12-10 01:03:53.77531+00
156	Camille	Burner	camilleburner@comcast.net	[u'application', u'other']		2014-12-10 01:03:53.777595+00	2014-12-10 01:03:53.777635+00
157	Brian	Grover	bgrooven@hotmail.com	[u'application', u'mentor']	I'd like to offer professional mentorship to individuals learning to code.	2014-12-10 01:03:53.779592+00	2014-12-10 01:03:53.779632+00
158	Gwendolyn	Holbrow	holbrow@hotmail.com	[u'application', u'email_list']	This sure sounds like a great fit for me. I look forward to learning more, and more, and more!\n\nRegards,\nGwen Holbrow	2014-12-10 01:03:53.781438+00	2014-12-10 01:03:53.781474+00
161	Erick	Chavarria	erickalan.chavarria@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.788592+00	2014-12-10 01:03:53.788633+00
162	Kaitlyn	Martinez	kaitlyn.martinez1885@gmail.com	[u'application']		2014-12-10 01:03:53.790587+00	2014-12-10 01:03:53.79063+00
163	Chris	Gerdes	cgerdes714@gmail.com	[u'application', u'email_list']	.... I really do not know what it is all about, but I would like to find out more because this sounds interesting. 	2014-12-10 01:03:53.792602+00	2014-12-10 01:03:53.792641+00
164	Dawn	Walker	dawn.walker@mail.utoronto.ca	[u'application']		2014-12-10 01:03:53.794392+00	2014-12-10 01:03:53.794429+00
165	Satenik	Margaryan	satenikm@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.796398+00	2014-12-10 01:03:53.796435+00
166	Nettie	morgan	netlucia@umd.edu	[u'application', u'email_list']		2014-12-10 01:03:53.79881+00	2014-12-10 01:03:53.798847+00
167	Nicoletta	Bortoluzzi	nico.bortoluzzi@alice.it	[u'application']		2014-12-10 01:03:53.800697+00	2014-12-10 01:03:53.800734+00
168	Cynthia	Sanchez	cyasanchez@gmail.com	[u'application']		2014-12-10 01:03:53.802634+00	2014-12-10 01:03:53.802682+00
169	Timothy	D'Agostino	tim.r.dagostino@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.804456+00	2014-12-10 01:03:53.804614+00
170	Jennica	Billins 	Jbillins@gmail.com 	[u'application', u'email_list']		2014-12-10 01:03:53.80641+00	2014-12-10 01:03:53.806447+00
171	Kirk	Tolliver	Kirktolliver@yahoo.com	[u'application', u'email_list']	Hello, this program sounds life changing! I am eager to apply!\n\nSincerely \n\nKirk Tolliver	2014-12-10 01:03:53.808309+00	2014-12-10 01:03:53.808347+00
172	Vanessa	Johnson	Johnson.vanessa.m@gmail.com	[u'application']	What a wonderful opportunity- I look forward to learning more. Many thanks, Vanessa 	2014-12-10 01:03:53.810196+00	2014-12-10 01:03:53.810233+00
173	Iris	Xie	ixie@ucdavis.edu	[u'application', u'email_list']		2014-12-10 01:03:53.81211+00	2014-12-10 01:03:53.812146+00
174	Natasha	Chapman	tasha.l.chapman@gmail.com	[u'application']		2014-12-10 01:03:53.813979+00	2014-12-10 01:03:53.814017+00
175	Hannah	Le	hnnhnle@gmail.com	[u'application']	I have friends in HIPS who suggested this to me!  The time wasn't right before, but it is now.	2014-12-10 01:03:53.815937+00	2014-12-10 01:03:53.815975+00
176	Dominica Yasmin	Wambold	Dwambold@stanford.edu	[u'application']	I am looking forward to applying! 	2014-12-10 01:03:53.817856+00	2014-12-10 01:03:53.817893+00
177	John	Olson	jwolson@mac.com	[u'email_list']	I am a professional programmer and HS technology teacher. I am interested in your organization and want to learn more. Thanks!	2014-12-10 01:03:53.819866+00	2014-12-10 01:03:53.819902+00
178	Zavi	Smith	zavismith@gmail.com	[u'application']		2014-12-10 01:03:53.821768+00	2014-12-10 01:03:53.821805+00
179	Iris	Cano	iriscano27@gmail.com	[u'application']		2014-12-10 01:03:53.82371+00	2014-12-10 01:03:53.823747+00
180	Whitney	calk	whitneycalk@gmail.com	[u'email_list']		2014-12-10 01:03:53.825676+00	2014-12-10 01:03:53.825713+00
181	Jessica 	Burstrem 	jessica@burstrem.net	[u'application', u'email_list']		2014-12-10 01:03:53.82787+00	2014-12-10 01:03:53.827906+00
182	Teresa	Hodge	teresa@mission-launch.org	[u'application']	Excited to apply for the 2015 fellowship, with a passion for working on returning citizens issues via tech!	2014-12-10 01:03:53.829733+00	2014-12-10 01:03:53.82977+00
183	seshat	walker	seshatw@gmail.com	[u'application']		2014-12-10 01:03:53.831807+00	2014-12-10 01:03:53.831844+00
184	barbara	d	barbara@studiocityweb.com	[u'application', u'email_list']		2014-12-10 01:03:53.83373+00	2014-12-10 01:03:53.833767+00
185	Moises	Calcano	moisescalcano@gmail.com	[u'application']		2014-12-10 01:03:53.836107+00	2014-12-10 01:03:53.836143+00
186	Alba	Villamil	alba.n.villamil@gmail.com	[u'application']		2014-12-10 01:03:53.838009+00	2014-12-10 01:03:53.838046+00
187	Niquita	Taliaferro	taliaferro@languagedept.com	[u'application', u'email_list']		2014-12-10 01:03:53.840015+00	2014-12-10 01:03:53.840052+00
188	Sean	Jennings	sejenc@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.841947+00	2014-12-10 01:03:53.841983+00
189	Rahwa	Berhe	Rahwakberhe@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.843868+00	2014-12-10 01:03:53.843904+00
190	M	Orange	morange1999@yahoo.com	[u'application', u'email_list']		2014-12-10 01:03:53.845865+00	2014-12-10 01:03:53.845903+00
191	Tanner	Huggins	athuggins@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.8478+00	2014-12-10 01:03:53.847837+00
192	Jaime	Schatz	jaimelynschatz@gmail.com	[u'application']	Code for Progress sounds amazing! I can't wait to get a chance to apply!	2014-12-10 01:03:53.849732+00	2014-12-10 01:03:53.84977+00
193	Lee	Keeling	keelinglk@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.851729+00	2014-12-10 01:03:53.851766+00
194	Starr	Goldsberry	starr.goldsberry@outlook.com	[u'application']		2014-12-10 01:03:53.853683+00	2014-12-10 01:03:53.85372+00
195	Jasdev	Singh	jasdevism@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.855468+00	2014-12-10 01:03:53.855612+00
196	Crystal	Anderson	epitome_17@yahoo.com	[u'application']		2014-12-10 01:03:53.857374+00	2014-12-10 01:03:53.857411+00
197	Magdalene	James	mrjames1@ualr.edu	[u'application']		2014-12-10 01:03:53.859276+00	2014-12-10 01:03:53.859313+00
198	Richelle	Cohen	ricki.c.18@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.861189+00	2014-12-10 01:03:53.861226+00
199	BriGette	McCoy	milvetchica@gmail.com	[u'application']		2014-12-10 01:03:53.86304+00	2014-12-10 01:03:53.863078+00
200	Jan	Rieman	jan.rieman@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.864905+00	2014-12-10 01:03:53.864943+00
201	Harold	Moses	hwmoses@ualr.edu	[u'application']		2014-12-10 01:03:53.866819+00	2014-12-10 01:03:53.866856+00
202	Reginald	Pearson	rhpearsonjr@gmail.com	[u'application']		2014-12-10 01:03:53.868745+00	2014-12-10 01:03:53.868781+00
203	Juanita	Britton	juanitabritton@yahoo.com	[u'application']		2014-12-10 01:03:53.870664+00	2014-12-10 01:03:53.870701+00
204	Edward	Jackson Jr	eljackson@ualr.edu	[u'application']		2014-12-10 01:03:53.872445+00	2014-12-10 01:03:53.872482+00
205	Charles	Flay	cflay1@gmail.com	[u'application', u'coach', u'email_list']		2014-12-10 01:03:53.874402+00	2014-12-10 01:03:53.874439+00
206	Le	Nhu	Lenhu2605@gmail.com	[u'email_list']	Open info	2014-12-10 01:03:53.876384+00	2014-12-10 01:03:53.876421+00
207	Linda	Ellis	lmellis@ualr.edu	[u'application']		2014-12-10 01:03:53.878808+00	2014-12-10 01:03:53.878845+00
208	carrie	henry	cfhenry@ualr.edu	[u'application', u'email_list']		2014-12-10 01:03:53.880672+00	2014-12-10 01:03:53.880709+00
209	DeLesslin	George-Warren	delesslingw@gmail.com	[u'application']		2014-12-10 01:03:53.882911+00	2014-12-10 01:03:53.882948+00
210	Folayemi	Agbede	folayemi.agbede@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.884826+00	2014-12-10 01:03:53.884862+00
211	Seth	Pinckney	seth.davis.pinckney@gmail.com	[u'application', u'coach', u'email_list']		2014-12-10 01:03:53.886784+00	2014-12-10 01:03:53.886821+00
212	Tracy	Meriweather	Lilly_lucia@yahoo.com	[u'application']	Thank you!!!\n	2014-12-10 01:03:53.888728+00	2014-12-10 01:03:53.888765+00
213	Georgette 	Walker	georgette.walker@gmail.com	[u'application']		2014-12-10 01:03:53.890802+00	2014-12-10 01:03:53.89084+00
214	Rodrick	Randall	r.o.d.trillogy@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.892791+00	2014-12-10 01:03:53.892828+00
215	Michael	Smith	masii73@yahoo.com	[u'application', u'email_list']		2014-12-10 01:03:53.894747+00	2014-12-10 01:03:53.894784+00
216	Terrance	Jordan	lacellxl@yahoo.com	[u'application', u'email_list']		2014-12-10 01:03:53.896674+00	2014-12-10 01:03:53.896711+00
217	Jah	Boule	micwill5292@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.898792+00	2014-12-10 01:03:53.898828+00
218	Daisy	Bermudez	D415Y@me.com	[u'application', u'email_list']		2014-12-10 01:03:53.900756+00	2014-12-10 01:03:53.900792+00
219	AbdurRabb	Watkins	mr.ab.watkins@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.902728+00	2014-12-10 01:03:53.902765+00
220	Wanjiku	Muhire	wmuhire@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.904737+00	2014-12-10 01:03:53.904773+00
221	Rahwa	Behre	rahwakberhe@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.906646+00	2014-12-10 01:03:53.906684+00
222	Christa	Avampato	christa.avampato@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.908472+00	2014-12-10 01:03:53.908618+00
223	Stacie	Whisonant	stacie@gopyt.com	[u'application', u'email_list']		2014-12-10 01:03:53.910481+00	2014-12-10 01:03:53.910646+00
224	Monica	Garcia	monica@mail.harvard.edu	[u'application', u'email_list']		2014-12-10 01:03:53.912658+00	2014-12-10 01:03:53.912698+00
225	Audrey	Foronda	audreyforonda@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.914688+00	2014-12-10 01:03:53.914725+00
226	Lindsay	Harris	sirrahyasdnil@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.916728+00	2014-12-10 01:03:53.916763+00
227	Johnny	Garces	garces.johnny@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.918974+00	2014-12-10 01:03:53.91901+00
228	Jessica	Yoo	solyanka.love@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.920961+00	2014-12-10 01:03:53.920997+00
229	Samael	Bowens	samaelcsb@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.922878+00	2014-12-10 01:03:53.922914+00
230	Marisol	Franco	franco.marisol@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.924838+00	2014-12-10 01:03:53.924875+00
231	Karen	Marbury	karenmm2@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.926763+00	2014-12-10 01:03:53.926799+00
232	Klas	Almen	klas@blomquist.se	[u'application', u'email_list']		2014-12-10 01:03:53.928727+00	2014-12-10 01:03:53.928764+00
233	Ij	Ihiasota	ijeoma.ihiasota@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.931024+00	2014-12-10 01:03:53.93106+00
234	Layel	Camargo	layelcamargo@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.932985+00	2014-12-10 01:03:53.933022+00
235	Duncan	Spencer	duncan.spencer@vaxtrac.com	[u'application', u'email_list']		2014-12-10 01:03:53.934943+00	2014-12-10 01:03:53.934981+00
236	Keira	Albright	keiralauhiwa@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.936891+00	2014-12-10 01:03:53.936928+00
237	Matthew	James	matt.a.james@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.938864+00	2014-12-10 01:03:53.938901+00
238	Sophia	Ng	sophiang0808@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.940784+00	2014-12-10 01:03:53.940821+00
239	Lena	Palacios	compalena@hotmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.942708+00	2014-12-10 01:03:53.942745+00
240	Carrie	Thomas	cathomas87@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.944765+00	2014-12-10 01:03:53.944809+00
241	Adalky		adalkycapellan@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.946832+00	2014-12-10 01:03:53.946871+00
242	Alyssia	Beverly	alyssia.beverly@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.949025+00	2014-12-10 01:03:53.949067+00
243	Kim	Rescate	kim@alliancesd.org	[u'application', u'email_list']		2014-12-10 01:03:53.950958+00	2014-12-10 01:03:53.950995+00
244	Kelli	Jones	Jonestkelli@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.952899+00	2014-12-10 01:03:53.952936+00
245	Kristina	Welch	kristina.welch@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.954834+00	2014-12-10 01:03:53.954871+00
246	Farheen	Malik	farheen.m.malik@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.956854+00	2014-12-10 01:03:53.956891+00
247	Zawadi	Carroll	zawadi.carroll@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.958743+00	2014-12-10 01:03:53.958779+00
248	Claudia	Triana	claudiana89@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.960649+00	2014-12-10 01:03:53.960687+00
249	Thenmozhi	Soundararajan	dalitdiva@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.962418+00	2014-12-10 01:03:53.962454+00
250	Amy	Rothbaum	amyrothbaum@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.964328+00	2014-12-10 01:03:53.964364+00
251	Yesenia	Ramos	yramos11@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.966245+00	2014-12-10 01:03:53.966282+00
252	LaTonya	Brooks	laxonyaj@yahoo.com	[u'application', u'email_list']		2014-12-10 01:03:53.968184+00	2014-12-10 01:03:53.96822+00
253	Trish	Sung	tricia88888@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.970076+00	2014-12-10 01:03:53.970112+00
254	Shani	Banerjee	shanibanerjee@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.971942+00	2014-12-10 01:03:53.971978+00
255	Alexandra		aekyerematen@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.9738+00	2014-12-10 01:03:53.973837+00
256	Cena	Sutton	cena25@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.975777+00	2014-12-10 01:03:53.975817+00
257	Sara		smunzinger@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.977889+00	2014-12-10 01:03:53.977927+00
258	Beni		b.vargasmontoya@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.979849+00	2014-12-10 01:03:53.979887+00
259	Cecilia	Long	ceciliajazz1517@sbcglobal.net	[u'application', u'email_list']		2014-12-10 01:03:53.981811+00	2014-12-10 01:03:53.981848+00
260	Rose	Myers	rosemyers7@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.983908+00	2014-12-10 01:03:53.983946+00
261	Marena	Bridges	marena.bridges@asu.edu	[u'application', u'email_list']		2014-12-10 01:03:53.98581+00	2014-12-10 01:03:53.985847+00
262	Ari	Damasco	ari.damasco@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.987802+00	2014-12-10 01:03:53.987839+00
263	Daysi	Garcia	garciadaysi@live.com	[u'application', u'email_list']		2014-12-10 01:03:53.98981+00	2014-12-10 01:03:53.989847+00
264	Tania	Mattos	mattos.t@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.991882+00	2014-12-10 01:03:53.991919+00
265	Davida	Jackson	jackson.davida@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.993776+00	2014-12-10 01:03:53.993812+00
266	Michelle	Huey	mkhuey@ucdavis.edu	[u'application', u'email_list']		2014-12-10 01:03:53.995751+00	2014-12-10 01:03:53.995787+00
267	Rafe	Chisolm	rchisolm@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.997727+00	2014-12-10 01:03:53.997764+00
268	Selly	Thiam	selly.thiam@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:53.999688+00	2014-12-10 01:03:53.999724+00
269	Emily	Loufik	eloufik@praescientanalytics.com	[u'email_list', u'coach', u'other']		2014-12-10 01:03:54.001783+00	2014-12-10 01:03:54.00182+00
270	Kamau	Walton	kamau.walton@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.003751+00	2014-12-10 01:03:54.003787+00
271	Delma Catalina	Limones	delmacatalina@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.005819+00	2014-12-10 01:03:54.005855+00
272	Peter	Lin-Marcus	theleanforce@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.007793+00	2014-12-10 01:03:54.007831+00
273	Ngozi	Williams	nwilliams@polarisproject.org	[u'application', u'email_list']		2014-12-10 01:03:54.009747+00	2014-12-10 01:03:54.009795+00
274	Islanda	Khau	islanda@artseastudio.com	[u'application', u'email_list']		2014-12-10 01:03:54.011654+00	2014-12-10 01:03:54.011692+00
275	Clara	Jacob	clarajacob@sio.midco.net	[u'application', u'email_list']		2014-12-10 01:03:54.01346+00	2014-12-10 01:03:54.013603+00
276	See	Xiong	ms.seexiong@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.015353+00	2014-12-10 01:03:54.01539+00
277	Krystle	Sanders	sanderskrystle@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.017236+00	2014-12-10 01:03:54.017273+00
278	Antonio	Jimenez	jimenez_temoc@hotmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.019253+00	2014-12-10 01:03:54.019295+00
279	Maryell	Hernandez	hernandez.maryell@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.021235+00	2014-12-10 01:03:54.021275+00
280	Andrew	Pryce	andrewpryce@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.023152+00	2014-12-10 01:03:54.023194+00
281	Samira	Farah	farahsamira@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.025252+00	2014-12-10 01:03:54.025289+00
282	Christena	Williams	christenawilliams7.2@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.027162+00	2014-12-10 01:03:54.027207+00
283	Mary	Pryor	mary@marypryor.com	[u'application', u'email_list']		2014-12-10 01:03:54.02906+00	2014-12-10 01:03:54.029102+00
284	Jacqueline	Oliva	jackie@tellitmedia.org	[u'application', u'email_list']		2014-12-10 01:03:54.03124+00	2014-12-10 01:03:54.031277+00
285	Gracie	Aghapour	gracieaghapour@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.033182+00	2014-12-10 01:03:54.033219+00
286	Cheryl	Butler	cheryl.butler1122@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.035835+00	2014-12-10 01:03:54.035873+00
287	Jessica	Canepa	jmarlena.canepa@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.037962+00	2014-12-10 01:03:54.038004+00
288	Nicole	Hermez	nicolehermiz@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.039975+00	2014-12-10 01:03:54.040014+00
289	Juana	Guzman	jmguzmanmata@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.041984+00	2014-12-10 01:03:54.042024+00
290	Jeanette	Millard	millardjeanette@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.043969+00	2014-12-10 01:03:54.044008+00
291	Dominic	Swain	dominicswain@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.045951+00	2014-12-10 01:03:54.045989+00
292	Olivia	Cueva	olivia.cueva@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.048108+00	2014-12-10 01:03:54.048145+00
293	Breeshia	Turner	blturner@standford.edu	[u'application', u'email_list']		2014-12-10 01:03:54.050179+00	2014-12-10 01:03:54.050216+00
294	Neimy	Escobar	neimyescobar@college.harvard.edu	[u'application', u'email_list']		2014-12-10 01:03:54.052164+00	2014-12-10 01:03:54.052202+00
295	Dana	Ebert	ebert@casaruby.org	[u'application', u'email_list']		2014-12-10 01:03:54.054177+00	2014-12-10 01:03:54.054214+00
296	Ashley	Patterson	apatterson83@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.056193+00	2014-12-10 01:03:54.056231+00
297	Adrian		adrianhdzelac@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.058171+00	2014-12-10 01:03:54.05821+00
298	Brian	Danner	bedanner@comcast.net	[u'application', u'email_list']		2014-12-10 01:03:54.060289+00	2014-12-10 01:03:54.060346+00
299	Anna	Hovland	anna@fissionstrategy.com	[u'application', u'email_list']		2014-12-10 01:03:54.062326+00	2014-12-10 01:03:54.062365+00
300	Latoya	Coleman	colemanlatoya@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.064462+00	2014-12-10 01:03:54.064616+00
301	Ayush	C.	ayush92@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.06646+00	2014-12-10 01:03:54.066659+00
302	Louisa	Radice	louisaradice@tiscali.co.uk	[u'application', u'email_list']		2014-12-10 01:03:54.06844+00	2014-12-10 01:03:54.068478+00
303	L.J.	Rhodes	ljrhodes@hotmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.070439+00	2014-12-10 01:03:54.070477+00
304	Teresa	Gregory	ms_teresa.gregory@yahoo.com	[u'application', u'email_list']		2014-12-10 01:03:54.072417+00	2014-12-10 01:03:54.072456+00
305	Ilyse	Kramer	Ilykramer@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.074306+00	2014-12-10 01:03:54.074343+00
306	Michael	Suyeda	michael.suyeda@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.076285+00	2014-12-10 01:03:54.076323+00
307	Nicky	Coutinho	oncoutinho@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.07841+00	2014-12-10 01:03:54.078449+00
308	Michael	Stefan	michaelcstefan@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.080349+00	2014-12-10 01:03:54.080386+00
309	Juan Sebastian	Velasquez	jsebastian.velasquez@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.082325+00	2014-12-10 01:03:54.082363+00
310	Alvin Aalim	Turner	aturner@premierecg.biz	[u'application', u'email_list']		2014-12-10 01:03:54.084316+00	2014-12-10 01:03:54.084354+00
311	Ann	Taylor	ann_taylor4@hotmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.086361+00	2014-12-10 01:03:54.086399+00
312	Andrea		anmk215@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.088625+00	2014-12-10 01:03:54.088665+00
313	Carolina	Hernandez	carolina@sunfloweract.org	[u'application', u'email_list']		2014-12-10 01:03:54.090615+00	2014-12-10 01:03:54.090655+00
314	Elias	Lyles	elias@southernersonnewground.org	[u'application', u'email_list']		2014-12-10 01:03:54.092593+00	2014-12-10 01:03:54.092641+00
315	Leah	Miller	leahmill2003@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.094687+00	2014-12-10 01:03:54.094724+00
316	Andrena	Anderson-Bedi	andrenabedi@outlook.com	[u'application', u'email_list']		2014-12-10 01:03:54.096729+00	2014-12-10 01:03:54.096766+00
317	Mamadou	M'Baye	mamadoubmbaye@hotmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.098718+00	2014-12-10 01:03:54.098754+00
318	Breeshia	Turner	blturner@standford.edu	[u'application', u'email_list']		2014-12-10 01:03:54.100744+00	2014-12-10 01:03:54.100782+00
319	Jose	Torres-Don	jose.torresdon@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.102777+00	2014-12-10 01:03:54.102818+00
320	Rosita	Lopez	ralopez27@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.104806+00	2014-12-10 01:03:54.104844+00
321	Olivia	Cueva	olivia.cueva@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.1068+00	2014-12-10 01:03:54.106842+00
322	Mary	MacDonald	mbmacdonald@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.108824+00	2014-12-10 01:03:54.108861+00
323	Hashim		hashimruan10@hotmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.110818+00	2014-12-10 01:03:54.110857+00
324	Jessica	Canepa	jmarlena.canepa@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.112837+00	2014-12-10 01:03:54.112874+00
325	Mojdeh	Sakaki	mojdeh.sakaki@slcc.edu	[u'application', u'email_list']		2014-12-10 01:03:54.114855+00	2014-12-10 01:03:54.114892+00
326	Sofia	Aleman	alemansofie@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.116855+00	2014-12-10 01:03:54.116894+00
327	Alejandra	Martinez	domingo7894@sbcglobal.net	[u'application', u'email_list']		2014-12-10 01:03:54.118877+00	2014-12-10 01:03:54.118915+00
328	Sarah	Kaufman	circlerk@hotmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.120946+00	2014-12-10 01:03:54.120984+00
329	Capital		capital@wegalogistics.com	[u'application', u'email_list']		2014-12-10 01:03:54.122911+00	2014-12-10 01:03:54.122948+00
330	Malik	Thompson	malik.thompson85@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.124873+00	2014-12-10 01:03:54.124911+00
331	Maoti	Gborkorquellie	mrmaoti@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.126865+00	2014-12-10 01:03:54.126904+00
332	Adalky		adalkycapellan@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.128807+00	2014-12-10 01:03:54.128846+00
333	Elle	Pfeifer	pfeifer.lauren@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.130816+00	2014-12-10 01:03:54.130858+00
334	Jehiel	Oliver	jehiel@hellotractor.com	[u'application', u'email_list']		2014-12-10 01:03:54.132807+00	2014-12-10 01:03:54.132845+00
335	Kevin	Barrow	kevinbarrowjs@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.134821+00	2014-12-10 01:03:54.134862+00
336	Sana	Javed	sanajaved7@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.136796+00	2014-12-10 01:03:54.136833+00
337	Madhu	Rajaraman	madhu.rajaraman@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.138812+00	2014-12-10 01:03:54.138853+00
338	Yanet	Aguilar	aguilarcus@hotmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.14176+00	2014-12-10 01:03:54.141797+00
339	Ann	Opeyemi	annopeyemi@Gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.143832+00	2014-12-10 01:03:54.14387+00
340	Ashleigh	Maddox	maddoxashleigh@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.14585+00	2014-12-10 01:03:54.145888+00
341	Ladan		ladangm@gmailm.com	[u'application', u'email_list']		2014-12-10 01:03:54.147773+00	2014-12-10 01:03:54.147811+00
342	Alexa	Burrell	givingknife@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.149738+00	2014-12-10 01:03:54.149776+00
343	Gino	Wilson	reggaeone@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.151807+00	2014-12-10 01:03:54.151847+00
344	Tyler	Smith	smith_ty12@hotmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.153848+00	2014-12-10 01:03:54.153886+00
345	Michelle	Huey	mkhuey@ucdavis.edu	[u'application', u'email_list']		2014-12-10 01:03:54.155878+00	2014-12-10 01:03:54.155916+00
346	Alyssia	Beverly	alyssia.beverly@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.15785+00	2014-12-10 01:03:54.157887+00
347	Nisha	Patel	nisha.g.patel@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.159848+00	2014-12-10 01:03:54.159887+00
348	Barbara	Moreno	bmagda.moreno@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.161839+00	2014-12-10 01:03:54.161877+00
349	Angel	Carter	angelncarter@ymail.com	[u'application', u'email_list']		2014-12-10 01:03:54.163908+00	2014-12-10 01:03:54.163945+00
350	Michelle	Bernardino	michelle.bernardino@mail.com	[u'application', u'email_list']		2014-12-10 01:03:54.165807+00	2014-12-10 01:03:54.165844+00
351	Eric	Garcia	ericgarcia@berkeley.edu	[u'application', u'email_list']		2014-12-10 01:03:54.16779+00	2014-12-10 01:03:54.167826+00
352	Electra	Telesford	telesford078@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.169796+00	2014-12-10 01:03:54.169834+00
353	Elena Karen	Medina	ekmedina@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.171793+00	2014-12-10 01:03:54.17183+00
354	Crystal	Shaw	crystallenor@outlook.com	[u'application', u'email_list']		2014-12-10 01:03:54.173779+00	2014-12-10 01:03:54.173816+00
355	Devina	Lopez	dylopezz@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.175751+00	2014-12-10 01:03:54.175807+00
356	Estefani	Morales	ezanoletti.morales@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.177785+00	2014-12-10 01:03:54.177822+00
357	Alaa	Mukahhal	alaa.muk@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.179902+00	2014-12-10 01:03:54.17994+00
358	Vilma	Uribe	uribe.vilma@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.181834+00	2014-12-10 01:03:54.181872+00
359	Anay	Bickham	anay.deshawn@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.183863+00	2014-12-10 01:03:54.183901+00
360	Precious	Jenkins	preciousjenkins@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.185844+00	2014-12-10 01:03:54.185883+00
361	Kristina	McElveen	kristinamcelveen@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.187896+00	2014-12-10 01:03:54.187934+00
362	Manju	Rajendran	manju.rajendran@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.189872+00	2014-12-10 01:03:54.189909+00
363	Christina	R	christina.rms@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.19186+00	2014-12-10 01:03:54.191897+00
364	Monica	Alvarez	mmalvar13@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.193815+00	2014-12-10 01:03:54.193851+00
365	Leslie	Martinez	lamartinez1225@gmail.com	[u'application', u'email_list']		2014-12-10 01:03:54.195795+00	2014-12-10 01:03:54.195833+00
366	Cecilia	Long	ceciliajazz1517@sbcglobal.net	[u'application', u'email_list']		2014-12-10 01:03:54.197763+00	2014-12-10 01:03:54.1978+00
367	Kim	Alfonso	alfonso@www.codeforprogress.org	[u'email_list']		2014-12-10 01:03:54.19972+00	2014-12-10 01:03:54.199775+00
368	Erik	Nordlof	enordlof@gmail.com	[u'email_list']		2014-12-10 01:03:54.201786+00	2014-12-10 01:03:54.201823+00
369			ghokial@hotmail.com	[u'email_list']		2014-12-10 01:03:54.203877+00	2014-12-10 01:03:54.203915+00
370	Timothy	Lambert	timothy.k.lambert@gmail.com	[u'email_list', u'coach']		2014-12-10 01:03:54.205819+00	2014-12-10 01:03:54.205856+00
371	Indrani	Das	indrani@coalitionforqueens.org	[u'email_list']		2014-12-10 01:03:54.207775+00	2014-12-10 01:03:54.207812+00
372	Deen	Freelon	freelon@american.edu	[u'email_list', u'coach']		2014-12-10 01:03:54.209714+00	2014-12-10 01:03:54.209751+00
373	Carol	Watson	carol@tangerine-watson.com	[u'email_list']		2014-12-10 01:03:54.211687+00	2014-12-10 01:03:54.211724+00
374	Turner	Willman	turnerwillman@gmail.com	[u'email_list']		2014-12-10 01:03:54.213705+00	2014-12-10 01:03:54.213742+00
375	Nicole	Newman	Nicole.newman@dcpni.org	[u'email_list']		2014-12-10 01:03:54.215657+00	2014-12-10 01:03:54.215695+00
376	Rodrigo		rodrigito@gmail.com	[u'email_list']		2014-12-10 01:03:54.217643+00	2014-12-10 01:03:54.217682+00
377	Aja		aja.gaddie@gmail.com	[u'email_list']		2014-12-10 01:03:54.21946+00	2014-12-10 01:03:54.219616+00
378	Malena	Lopez	malenalopez5@gmail.com	[u'email_list']		2014-12-10 01:03:54.221398+00	2014-12-10 01:03:54.221436+00
379	Courtney	von Bostel	cvbostel@gmail.com	[u'email_list', u'coach']		2014-12-10 01:03:54.223354+00	2014-12-10 01:03:54.22339+00
380	Nina	Armah	nina.armah@gmail.com	[u'email_list']		2014-12-10 01:03:54.225311+00	2014-12-10 01:03:54.225348+00
381	Katrina	Hussain	katrina.hussain@gmail.com	[u'email_list', u'coach']		2014-12-10 01:03:54.227244+00	2014-12-10 01:03:54.227281+00
382	Leandra		lmtejedor@gmail.com	[u'email_list', u'coach']		2014-12-10 01:03:54.229167+00	2014-12-10 01:03:54.229208+00
383	Sarah	Lauden	sarah.lauden@gmail.com	[u'email_list', u'coach']		2014-12-10 01:03:54.231116+00	2014-12-10 01:03:54.231153+00
384	Romona	Foster	adtechconsults@gmail.com	[u'email_list']		2014-12-10 01:03:54.233013+00	2014-12-10 01:03:54.233051+00
385	Juan Manuel	Contreras	juan.manuel.contreras.87@gmail.com	[u'email_list']		2014-12-10 01:03:54.235879+00	2014-12-10 01:03:54.235917+00
386	Ugochi	Ofoha	uofoha@thoughtworks.com	[u'email_list', u'coach']		2014-12-10 01:03:54.237848+00	2014-12-10 01:03:54.237886+00
387	Mayowa	Tomori	hi@mayowatomori.com	[u'coach']		2014-12-10 01:03:54.240862+00	2014-12-10 01:03:54.240899+00
388	Gloria	Zhu	Gloriayzhu@gmail.com	[u'application']		2014-12-10 01:27:23.361129+00	2014-12-10 01:27:23.361208+00
389	Uri	Lopez	Uriel.jr.lopez@gmail.com	[u'application']		2014-12-10 06:48:20.407248+00	2014-12-10 06:48:20.407304+00
390	Christena	Williams	christenawilliams7.2@gmail.com	[u'application', u'email_list']	I was introduced to this organization from the Lesbians Who Tech- Queer Women Who Tech summit in NYC. I would love to be apart of the program that equips people with the tools to use technology to evoke social change. If I'm fortunate enough to be accepted into the program, I would like the chance to give back as a guest instructor to the organization.	2014-12-10 13:56:13.88083+00	2014-12-10 13:56:13.88089+00
391	Patrick	Jean-Gilles	patrickoncall@yahoo.com	[u'application', u'email_list']	To Whom it May Concern,\r\n\r\nI am very interested in participating in your program. They say make your vacation your vocation, and given how much I like computers I think I would be a good addition to Code for Progress.\r\n\r\nSincerely, \r\nPatrick Jean-Gilles	2014-12-10 15:51:09.149232+00	2014-12-10 15:51:09.149306+00
392	Mary	Pryor	mtpryor@gmail.com	[u'application', u'coach', u'instructor', u'mentor']		2014-12-10 18:55:18.528224+00	2014-12-10 18:55:18.528283+00
393	Shayontani	Banerjee	shanibanerjee@gmail.com	[u'application']		2014-12-10 18:59:52.744435+00	2014-12-10 18:59:52.744518+00
394	Jose	Ogaz	Ogazmunoz@gmail.com	[u'application']		2014-12-10 19:00:00.518065+00	2014-12-10 19:00:00.518121+00
395	Claudia P	Granados	cpgranados@yahoo.com	[u'application']		2014-12-10 19:21:02.980966+00	2014-12-10 19:21:02.981023+00
396	Lia	Brown	lia.brown123@gmail.com	[u'application', u'other']		2014-12-10 19:58:20.48972+00	2014-12-10 19:58:20.489775+00
397	Lorna	Campbell	lorna463@gmail.com	[u'application', u'email_list']		2014-12-10 21:10:30.131434+00	2014-12-10 21:10:30.131516+00
398	Aaron	Dial	aarondial14@yahoo.com	[u'application']		2014-12-11 17:35:39.364762+00	2014-12-11 17:35:39.364819+00
399	Dalia 	Hamooda	daliaahmedsalah@gmail.com	[u'application', u'email_list', u'other']		2014-12-11 23:06:23.422325+00	2014-12-11 23:06:23.422382+00
400	Verone	Bernard	veronebernard@gmail.com	[u'application']	Thanks in advance! 	2014-12-12 16:23:11.665784+00	2014-12-12 16:23:11.665896+00
401	Brittiany	Washington	BrittianyWashington@my.unt.edu	[u'application']		2014-12-12 17:53:57.860541+00	2014-12-12 17:53:57.8606+00
402	Kamesha	Lindsey	KAMESHA.LINDSEY@LRSD.ORG	[u'email_list']		2014-12-12 18:35:17.743132+00	2014-12-12 18:35:17.743188+00
403	Danielle	Arnold	dxarnold@ualr.edu	[u'application']	I would like to receive any information about all opportunities. 	2014-12-12 18:48:39.853025+00	2014-12-12 18:48:39.853094+00
404	Ralanda	Nelson	Ralanda.a.nelson@gmail.com	[u'application', u'email_list', u'other']	Would like to know about how to become a partner or affiliate with your organization?	2014-12-12 23:36:27.829314+00	2014-12-12 23:36:27.829372+00
405	Chuck	Wongus	charles.t.wongus@gmail.com	[u'application']		2014-12-14 06:34:13.410302+00	2014-12-14 06:34:13.410399+00
406	Todd	Smyth	toddsmyth@cox.net	[u'other']	I saw one of your presentations at Rootscamp and I had met one of Dolores Huerta's Nieces while knocking doors this past cycle. I talked to her for hours and she had some great stories. She works for Fairfax County Public Schools (FCPS) and was very excited to hear about your organization and is interested in talking to various people within FCPS that might be interested in setting up presentations from your group? Many FX schools are Metro accessible. The trip from Huntington to China Town is just 15 minutes. Is this something that your organization does or might be interested?	2014-12-15 20:42:50.97388+00	2014-12-15 20:42:50.973938+00
407	Carlye	Lauff	carlyelauff@gmail.com	[u'application']		2014-12-15 21:26:53.941762+00	2014-12-15 21:26:53.941818+00
408	Mary	Ortiz	mjo9x@virginia.edu	[u'application', u'email_list']	Hi there!\r\n\r\nI learned about this fellowship through Vanessa Hurst. I would love the opportunity to pursue this fellowship, and look forward to receiving the application.\r\n\r\nThank you!\r\n\r\nMary	2014-12-15 21:59:38.390893+00	2014-12-15 21:59:38.390949+00
409	K@ (Katherine)	Martin	smartinideas@gmail.com	[u'application', u'email_list']	Kindly keep me updated when applications are made available. \r\nEager to learn, and eager to code for progress!!!\r\nHappy Holidays,\r\nKat Martin	2014-12-15 22:46:01.329577+00	2014-12-15 22:46:01.329634+00
410	Lauren	Parker	parkerlaureng@gmail.com	[u'application']		2014-12-15 23:41:28.17389+00	2014-12-15 23:41:28.173963+00
411	Teresa	Hodge	Teresa@Mission-Launch.org	[u'application']	Testing from home for Aliyah. 	2014-12-16 03:12:26.049289+00	2014-12-16 03:12:26.04935+00
412	Jordan	Quigley-Jones	jordanqj@ngpvan.com	[u'instructor']	Hi Code for Progress,\r\n\r\nI'm a Product Manager at NGP VAN, where I work with a team of engineers to define market requirements and manage products through their lifecycle. \r\n\r\nAlthough I've been an internet admirer of Code for Progress for some time, I was thoroughly impressed by your team's pitch at 2016 Disrupt at Rootscamp. \r\n\r\nWhen you mentioned that there are ways for hiring companies to be involved throughout the fellowship program, I started thinking about how I could help. \r\n\r\nI am not a full stack engineer, but I work with them, and I have experience across the political and tech worlds at NGP VAN, Facebook, the DCCC, and at The White House.\r\n\r\nI would love to come work with the fellows as a guest instructor. I am curious if there are any topics from a PM's perspective that you would like to be covered in the fellowship that aren't currently? Some topics I could see being useful:\r\n- Delivering user stories that have business value\r\n- Pro's and Con's of development processes: Waterfall, Agile, Kanban\r\n\r\nI would love to be involved with the project at any capacity. Thanks for the awesome work you are doing!\r\n\r\nJordan	2014-12-16 16:18:30.602956+00	2014-12-16 16:18:30.603025+00
413	Ladan	Siad	ladangm@gmail.com	[u'application']		2014-12-16 18:39:49.00727+00	2014-12-16 18:39:49.007329+00
414	Jacqueline	Kamara	jkamara@breadforthecity.org	[u'application', u'email_list']		2014-12-17 15:57:46.556941+00	2014-12-17 15:57:46.556997+00
415	Shirita	Turner	Shiritaturner@hotmail.com	[u'application', u'email_list']		2014-12-17 17:25:12.352612+00	2014-12-17 17:25:12.35267+00
416	Nathan	Woodhull	nathan@controlshiftlabs.com	[u'coach', u'instructor', u'mentor']	Hey!\r\n\r\nWe're a small progressive organizing software products shop. We'd like to help!\r\n\r\nNathan 	2014-12-17 21:57:38.118036+00	2014-12-17 21:57:38.118095+00
417	Sarah	Nixon	sarahsmile68@gmail.com	[u'application']		2014-12-17 22:43:45.661959+00	2014-12-17 22:43:45.662016+00
418	Christopher	Rudd	educatetoelevate@yahoo.com	[u'application']		2014-12-18 03:23:51.374888+00	2014-12-18 03:23:51.374946+00
419	Asan	Anarkulov	asan-anarkulov@mail.ru	[u'application', u'email_list']		2014-12-18 03:28:30.498608+00	2014-12-18 03:28:30.498671+00
420	Lucy	Menon	qualityworks360@netscape.net	[u'application', u'email_list']	Good morning Code for Progress:\r\n\r\nKeep up the wonderful and progressive work! I heard of Code for Progress at the RootsCamp 2014 and love to be able to be involved in the movement and action by learning to code, and give back to the community through mentoring and teaching to continue the progressive work. 	2014-12-18 11:34:27.543351+00	2014-12-18 11:34:27.543407+00
421	craig	hargrove	hargrov2@gmail.com	[u'application']		2014-12-18 13:46:45.395309+00	2014-12-18 13:46:45.395394+00
422	Josef	Scarantino	j.scarantino@gmail.com	[u'mentor', u'email_list']	I recently learned about Code for Progress from a current fellow and was interested in learning more about mentorship and what it entails. My background is in technology and I have over 15 years of experience in the nonprofit sector. More specifically, I work in the disability sector and have considerable domain knowledge that could be useful. Please let me know more information and if I might be a good fit to be a mentor to a fellow in need. Thank you!	2014-12-18 16:35:45.512411+00	2014-12-18 16:35:45.512469+00
423	Sandra	Khalifa	sandra.n.khalifa@gmail.com	[u'application', u'email_list']	sending lots of love. 	2014-12-18 18:26:08.817721+00	2014-12-18 18:26:08.817804+00
424	Jessica Hyejin	Lee	jess@handstack.org	[u'application']		2014-12-19 17:32:03.618536+00	2014-12-19 17:32:03.618594+00
425	Brittne	Jacobs	Brittnekatelyn@gmail.com	[u'application']		2014-12-19 23:34:30.232683+00	2014-12-19 23:34:30.232739+00
426	Robel	Tekleab	robel02@gmail.com	[u'application', u'email_list']		2014-12-20 09:34:03.674652+00	2014-12-20 09:34:03.674708+00
427	Jasmine 	Williams	jwill1204@gmail.com	[u'application', u'email_list']	Hello. My name is Jasmine Williams. I recently received an email about Code for Progress from a professor at my former university, the University of Arkansas at Little Rock. I am an African-American female and I am interested in applying. I received my MA at UALR in technical writing during which I built a wiki for students in my department using widgets on WordPress.org. I have been searching for an opportunity to learn more about coding. My knowledge is limited to codeacademy.com and text books. Please contact me when applications are available. Thank you for your time.	2014-12-22 16:58:53.878614+00	2014-12-22 16:58:53.878689+00
428	Crystal	Shaw	crystallenor@outlook.com	[u'application']		2014-12-23 00:10:57.063645+00	2014-12-23 00:10:57.063707+00
429	Curtis	Edmonds	edmond_c1@denison.edu	[u'application']		2014-12-23 00:35:10.414001+00	2014-12-23 00:35:10.414062+00
430	Carly	Fleming	cjfleming51@gmail.com	[u'application']		2014-12-23 16:14:58.822069+00	2014-12-23 16:14:58.822126+00
431	Jessica	Yoo	solyanka.love@gmail.com	[u'application']		2014-12-23 16:49:22.58856+00	2014-12-23 16:49:22.588616+00
432	Je	stewart	solostew@icloud.com	[u'application', u'email_list']		2014-12-24 05:34:29.818338+00	2014-12-24 05:34:29.818395+00
433	Sara	Skolnick	sara.skolnick@gmail.com	[u'application']		2014-12-25 19:37:16.084669+00	2014-12-25 19:37:16.084726+00
434	Elazar	Nudell	Elazar.nudell@gmail.com	[u'application', u'other']	Dear Code afor Progress,\r\n\r\nI heard a radio story about your program, and I think it sounds great! The website says it's targeted toward women and people of color. Are there specific demographic requirements (gender, age range, etc.) for applicants?\r\n\r\nThanks,\r\n\r\nElazar Nudell	2014-12-25 23:37:19.605647+00	2014-12-25 23:37:19.605705+00
435	andrea	mack	anmk215@gmail.com	[u'application']		2014-12-26 18:12:16.731849+00	2014-12-26 18:12:16.73191+00
436	Brittany	King	brittany.king127@gmail.com	[u'application', u'email_list']		2014-12-26 20:29:36.362962+00	2014-12-26 20:29:36.363024+00
437	Geme	L	67cdn1982@gmail.com	[u'application', u'email_list']		2014-12-28 02:59:38.904762+00	2014-12-28 02:59:38.904818+00
438	Sara	Peralta	sfperalta@gmail.com	[u'instructor', u'email_list']		2014-12-29 01:10:49.55286+00	2014-12-29 01:10:49.552934+00
439	Laura	Litwiller	llitwiller@amherst.edu	[u'application']		2014-12-29 16:38:27.586976+00	2014-12-29 16:38:27.587032+00
440	Christopher	Crump	ccrump1@gmail.com	[u'application', u'email_list']		2014-12-29 17:14:32.215019+00	2014-12-29 17:14:32.215074+00
441	Danielle	Geong	dg5551a@american.edu	[u'application']		2014-12-29 19:22:37.068358+00	2014-12-29 19:22:37.068415+00
442	Candyce	Miales	cnmiales@gmail.com	[u'application']		2014-12-29 19:52:06.201168+00	2014-12-29 19:52:06.201224+00
\.


--
-- Data for Name: app_fellow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY app_fellow (id, first_name, last_name, where_from, current_job, cohort, post_2014_residency_q1, post_2014_residency_q2, post_2014_residency_q3, post_2014_residency_q4, page_text, github_username) FROM stdin;
1	Bobby Joe	Smith III	The Standing Rock Indian Reservation, ND	Front-end developer, NGP-VAN	2004 Spring	I built a widget and a widget generator that allowed people to embed a legislative alerts feed on their own webpage using the Sunlight Foundation's suite of sweet APIs.	Python. It's as powerful as it sounds.	Now that I know some of the capabilities of tech, I see digital solutions everywhere for common problems that plague my community. I don't think technology can or should solve everything, but I think useful tools that can be created to help people solve complex problems. Right now, I am especially interested in how Native communities can user mobile technology to learn and grow our diverse histories, languages, cultures, and values.	I went home and taught my mom how to use the command line. She's already started pushing code to her github repository. We do weekly online tutorials together, and I'm super excited to have someone so close to me as a partner and ally in developing digital tools for our community.	Now that I know some of the capabilities of tech, I see digital solutions everywhere for common problems that plague my community. I don't think technology can or should solve everything, but I think useful tools that can be created to help people solve complex problems. Right now, I am especially interested in how Native communities can user mobile technology to learn and grow our diverse histories, languages, cultures, and values.	bobbyjoesmith3
2	Dago	Bailon	Phoenix, AZ	Developer, United We Dream	2004 Spring	- Demographics app & Progress CRM reporting function it was great to see the skills that I learned put into practice	The language of LOVE (LMFAO)\n\n- PYTHON it allows you to do so many different things from web scrapping to web development\nplus the python libraries are very useful, makes things easier!	- I has changed dramatically I had no clue what programming or being a developer meant, now I can see the possibilities and tools that are helpful when organizing.	-Post-Residency I went back home to continue to help out organizing with the Arizona Queer Undocumented Immigrant Project ( QUIP), currently working on building a website for the organization!B4	Post-Residency I went back home to continue to help out organizing with the Arizona Queer Undocumented Immigrant Project ( QUIP), currently working on building a website for the organization!  [My view of coding] has changed dramatically - I had no clue what programming or being a developer meant, now I can see the possibilities and tools that are helpful when organizing.	dagobailon
3	Mariella	Paulino	The Bronx, NY	Full-stack developer, Fission Strategy	2004 Spring	Being able to create the front end or "prettification" of the final community project was an incredible accomplishment for me. It was the perfect manifestation of the transfer from idea to execution of design.	I have a deep appreciation and respect for Python and HTML. The way we interact with something and everything that may be going in the background that we don't see, I think that is something as powerful and interesting.	I see the potential of new software and new technologies in everything. From the moment I open my eyes eyes to the moment I go back to sleep, I have thought of at least 10 new applications I can create in my personal life that would improve how I interact and move around in the world as a woman and as a person with hearing loss. The fact that I could create these applications and create something that would have a positive impact on someone else, I think that is really powerful and empowering.	The last few weeks have been spent job searching. I have already got a few offers but want to make sure that wherever i go next is somewhere where i can contribute my master's in Public Relations, continue to develop tech, and contribute to social activism. A bit of a demanding and picky combination. I am waiting to hear back from my top choice program which combines all three *fingers crossed* so I shall see what happens.	I see the potential of new software and new technologies in everything. From the moment I open my eyes eyes to the moment I go back to sleep, I have thought of at least 10 new applications I can create in my personal life that would improve how I interact and move around in the world as a woman and as a person with hearing loss. The fact that I could create these applications and create something that would have a positive impact on someone else, I think that is really powerful and empowering.	mariellap123
4	Pam	Davis	El Cerrito, CA	Statewide data coordinator, the AFL-CIO	2004 Spring			I would have never thought after being illegally fired from Walmart, that I would be working for Making Change at Walmart here in DC....#walmartstrikers are FIRED UP and WE CAN'T TAKE IT ANYMORE! Thanks to Code for Progress, I'm using my coding skills, to help low wage workers' voices be heard all around the world, My dream is becoming a reality.		I joined Code for Progress to encourage, educate, and connect low-wage workers across the nation. Employees need to know they have the right to ask questions, and report problems without fear of retaliation or losing their jobs. We need tools that can give rapid response.	pam2071
5	Terri	Acker	Washington , DC	Junior developer, ECMC	2004 Spring	Something that I worked on that I am proud of is the Bread texting app	The program that I like the most is VAN	My role in the tech community is to share what I have learned	I have been learning new programs and looking for a job and\nfacilitating meetings at bread and doing my work at church and taking\ncare of family.	The issue in my community that I would like to help solve through code would be housing. Long time residents of SE Washington DC are being pushed out of the neighborhood, needing to find other residences. I want to build tools to help low-income tenants find the housing that they need.	terriacker
6	Selina	Musuta	Washington, DC	Front-end developer, the Democratic National Committee	2004 Spring	I'm building an app for promoters and music adventurers looking to diversify their line-up with women identified djays. I'm super excited to collaborate with others on this project.	I don't have a favorite. But my first love was python. The community and the resources it offered opened my mind to coding.	The fact that I think i can build tools to help my communities is a big vision change. The technology is definitely not the end goal so that hasn't changed.	I went on a road trip to Nevada with my friend of 22 years and counting. Reluctantly, got my drivers license for the adventure.	The fact that I think i can build tools to help my communities is a big vision change. I'm also building an app for promoters and music adventurers looking to diversify their line-up with women identified djays. I'm super excited to collaborate with others on this project.	selinamusuta
7	Aurea	Martinez	Costa Mesa, CA	Organizer, Detention Watch Network	2004 Spring	Spinning world map/globe using D-3	HTML & CSS	My goal is to continue working on my app that I started developing in the program and I want to pass the knowledge and help others learn to code and encourage people to code and support CFP to take over the world..jk...to keep growing!	Visited family & friends in California. Ate homemade food and enjoyed the beach life!	One issue that I want to address is finding people after they have entered the deportation system. It is very hard for family members to track them down, because they are constantly moved from one center to the next. Also, families don't know where to find resources or legal representation for their loved ones.\nThough ICE already has a website to locate these people, I want to make a more people-friendly tool that will include both government data and updates from social media. I want to provide information on trusted lawyers, bail bonds, how to get a hearing and community resources or organizations that are able to help families get their loved ones out of detention centers.	aureamartinez
8	Elaine	Kamlley	Brooklyn, NY	Innovation Specialist, 18F	2004 Spring	Building an MVP of ProgressCRM's Reporting Application. I felt incredible to see it integrated into the larger project.	Seriously, Python can crunch some numbers, scrape a document, and handle some intense data. Its no wonder coding feels like magic because when I get it to work, I may or may not have called myself a wizard. Please call me out if you have heard me say this.	I am a coder. In just four months Code For Progress given me the tools to build dynamic web applications. What I have been able to accomplish is beyond measure! I have built a data reporting application for a constituent relationship manager, written python scripts that cleans data and exports to a CSV, and can even make a button change colors just by hovering over it. Code For Progress not only taught me syntax, they have shifted how I want to be in this world.	My parents came to visit! They haven't visited me since I moved to Brooklyn from the Bay Area two and half years ago. We ate our way through neighborhoods, used our elbows in crowds of tourists, and took many cliché photos. I love them and was so proud to share my life with them. Oh and I was applying/interviewing potential employers!	I am a coder. In just four months Code For Progress given me the tools to build dynamic web applications. What I have been able to accomplish is beyond measure! I have built a data reporting application for a constituent relationship manager, written python scripts that cleans data and exports to a CSV, and can even make a button change colors just by hovering over it. Code For Progress not only taught me syntax, they have shifted how I want to be in this world.	elainekamlley
9	Jason	Towns	Washington, DC		2004 Spring	Getting an opportunity to teach some of the skills that I've developed in Code for Progress to young people at the #YesWeCode youth hackathon was an amazing experience for me.	One, Python has a strong on and offline support community. There are tons of resources & meetup groups.\nTwo, Python has a really wide range of use cases - from scientific research to web design. So, the chances of someone out there having some experience doing whatever you're trying to do are pretty high.\nThree, Python is (relatively) easy to learn. Had to throw the relatively in there because it's not easy but it is easier to grasp than most other programming languages.	The last four months have really just solidified my feeling that the world is changing... quickly.\nThere are some really exciting new ways to work, think and build & certain communities just aren't getting access to that. \nI'm dedicated to helping to build that bridge because if we don't do it now, we're going to regret it in the future. So, getting clarity on that has been dope. \n\nGetting an opportunity to teach some of the skills that I've developed in Code for Progress to young people at the #YesWeCode youth hackathon was an amazing experience for me.	I haven't had a chance to relax yet! Since the end of the program, I've been working. \nI'm going to take a break soon. i promise. A week in Nairobi is well overdue!	Getting an opportunity to teach some of the skills that I've developed in Code for Progress to young people at the #YesWeCode youth hackathon was an amazing experience for me.	jhtdc
10	Angie	Brilliance	Chicago, IL	Data coordinator, AFSCME	2004 Spring					Mass Incarceration is enslaving people of color at disproportionate rates. The prison industrial complex has created a profitable system that is funneling our people from schools, foster care, hospitals and other institutions into the prison system. We have to deconstruct this system because it is unjust, corrupt and purely for the profit of the corporations invested. There are more restorative and transformative alternatives to policing and incarceration.\n[I want to build an] app that would reduce the flow into the prison system by helping us to navigate the way that we interact with police on the streets. This app would give you a full understanding of each one of your rights as a youth, person of color, or member of the lgbtq community. It would also give you a direct number to the nearest free defense legal aid available in your area and a pre filled form of emergency information.	angiebrilliance
11	Katherine	Ortiz	Brooklyn, NY		2004 Spring					A problem that affects my community of Red Hook is repairs that need to be done in the apartments of public housing. Months go by and NYCHA doesn't respond to repair requests. It creates the feeling that the housing authority doesn't care about us, the tenants, so much so that we feel we can’t take pride in our community. By addressing this communication issue, peoples’ apartments will be more livable and the community can feel heard. I want to make tools that allow public housing residents to report issues and contact maintenance.	kittylee
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add contact	7	add_contact
20	Can change contact	7	change_contact
21	Can delete contact	7	delete_contact
22	Can add fellow	8	add_fellow
23	Can change fellow	8	change_fellow
24	Can delete fellow	8	delete_fellow
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$WESIX0F4AB7i$ySE/QZpfWQCkditGhUNtDUW5i4biDaddSXAGs7y1FCk=	2014-12-16 18:25:43.380528+00	t	dirk			aliya@codeforprogress.org	t	t	2014-12-09 18:14:33.281818+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2014-12-09 22:17:49.975936+00	1	7	3	Teresa@Mission-Launch.org	3	
2	2014-12-09 22:17:49.97995+00	1	7	1	aliya.rahman@yahoo.com	3	
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	contact	app	contact
8	fellow	app	fellow
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
mrg6nmxch6s3m4myzoetya5jg1gr2mhc	ZWYwZjU4NzI1MzhlMzFjOGIyNGMyODY3MjIzMjE0OTg2MTA0YzAzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2014-12-23 18:16:23.446587+00
mh4cdxxewah33zjnmgbb46pxl853lqnv	ZWYwZjU4NzI1MzhlMzFjOGIyNGMyODY3MjIzMjE0OTg2MTA0YzAzZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2014-12-30 18:25:43.383955+00
\.


--
-- Name: app_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_contact
    ADD CONSTRAINT app_contact_pkey PRIMARY KEY (id);


--
-- Name: app_fellow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY app_fellow
    ADD CONSTRAINT app_fellow_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_93d2d1f8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT content_type_id_refs_id_93d2d1f8 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_c0d12874; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT user_id_refs_id_c0d12874 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

