--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: person_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_data (
    id integer,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(50),
    gender character varying(50),
    ip_address character varying(20)
);


ALTER TABLE public.person_data OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    userid integer NOT NULL,
    username character varying(20),
    password character varying(20)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_userid_seq OWNER TO postgres;

--
-- Name: users_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;


--
-- Name: users userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);


--
-- Data for Name: person_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.person_data (id, first_name, last_name, email, gender, ip_address) FROM stdin;
1	Daphene	Biggerdike	dbiggerdike0@washington.edu	Genderfluid	173.14.161.120
2	Emmalyn	Belfield	ebelfield1@scientificamerican.com	Agender	217.178.223.134
3	Phil	Gerdes	pgerdes2@hubpages.com	Agender	127.40.188.108
4	Jennee	MacKill	jmackill3@kickstarter.com	Genderqueer	245.94.240.92
5	Maggee	Remnant	mremnant4@hc360.com	Genderqueer	141.21.239.244
6	Andreana	Rout	arout5@trellian.com	Agender	201.108.97.124
7	Carlen	Spall	cspall6@clickbank.net	Bigender	138.50.11.172
8	May	Dossantos	mdossantos7@independent.co.uk	Polygender	219.184.12.223
9	Douglass	Binge	dbinge8@biglobe.ne.jp	Non-binary	110.154.191.12
10	Martica	Girtin	mgirtin9@chicagotribune.com	Polygender	42.71.100.24
11	Felecia	Macauley	fmacauleya@seesaa.net	Female	239.23.175.24
12	Nickolaus	Dillingstone	ndillingstoneb@google.de	Genderqueer	69.168.185.89
13	Tymothy	Piborn	tpibornc@blog.com	Male	89.174.76.81
14	Jordanna	Peschka	jpeschkad@prweb.com	Agender	218.83.23.237
15	Corabelle	McAvinchey	cmcavincheye@printfriendly.com	Polygender	1.197.83.224
16	Gordy	Poston	gpostonf@ovh.net	Agender	237.178.171.199
17	Letty	Hartil	lhartilg@loc.gov	Agender	204.30.9.52
18	Anabelle	Stapele	astapeleh@samsung.com	Agender	3.133.134.224
19	Brena	Peasgood	bpeasgoodi@ow.ly	Non-binary	217.145.58.97
20	Hali	Roskams	hroskamsj@photobucket.com	Genderqueer	86.236.200.26
21	Beth	Pettifer	bpettiferk@psu.edu	Genderfluid	255.246.68.136
22	Dwayne	McOwan	dmcowanl@bloglovin.com	Male	83.180.144.210
23	Bev	Skillicorn	bskillicornm@globo.com	Genderqueer	34.255.201.167
24	Griz	Brinsden	gbrinsdenn@cocolog-nifty.com	Female	95.158.236.205
25	Alma	Ginty	agintyo@japanpost.jp	Polygender	235.190.19.14
26	Efrem	Simounet	esimounetp@drupal.org	Bigender	6.219.57.12
27	Myrle	Traill	mtraillq@taobao.com	Non-binary	14.209.237.60
28	Vikki	Collete	vcolleter@fda.gov	Female	227.70.143.230
29	Guy	Raoult	graoults@arstechnica.com	Non-binary	153.206.109.159
30	Maurie	Balderston	mbalderstont@army.mil	Bigender	52.202.43.107
31	Wilhelm	Matthew	wmatthewu@xrea.com	Male	94.229.137.82
32	Denys	Odney	dodneyv@ifeng.com	Bigender	220.226.85.87
33	Tiphany	Hulatt	thulattw@godaddy.com	Bigender	142.23.66.237
34	Law	Trail	ltrailx@baidu.com	Agender	192.160.52.115
35	Ramon	Gawkes	rgawkesy@independent.co.uk	Non-binary	26.238.228.65
36	Janeen	Hattersley	jhattersleyz@sina.com.cn	Non-binary	154.111.183.139
37	Orrin	Madoc-Jones	omadocjones10@discovery.com	Male	181.98.7.105
38	Rory	Worpole	rworpole11@cafepress.com	Agender	59.232.92.233
39	Lolita	Durtnell	ldurtnell12@livejournal.com	Non-binary	37.171.229.47
40	Aeriel	Hullock	ahullock13@wp.com	Genderqueer	154.136.165.51
41	Osgood	Delong	odelong14@craigslist.org	Non-binary	32.240.165.105
42	Silvana	Midghall	smidghall15@java.com	Female	9.113.63.180
43	Noelyn	Waring	nwaring16@smugmug.com	Agender	155.210.115.124
44	Sandor	Spilsbury	sspilsbury17@privacy.gov.au	Polygender	209.129.28.81
45	Barbette	Warrell	bwarrell18@eventbrite.com	Agender	151.40.70.8
46	Cleve	Birkin	cbirkin19@rambler.ru	Polygender	98.159.168.220
47	Barron	Slayford	bslayford1a@lulu.com	Polygender	92.164.244.123
48	Filmer	Vasyutochkin	fvasyutochkin1b@toplist.cz	Female	151.112.155.213
49	Amelia	Triggle	atriggle1c@weebly.com	Female	66.182.35.71
50	Manda	Balentyne	mbalentyne1d@newyorker.com	Agender	89.226.175.249
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (userid, username, password) FROM stdin;
1	admin	password
\.


--
-- Name: users_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_userid_seq', 1, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);


--
-- PostgreSQL database dump complete
--

