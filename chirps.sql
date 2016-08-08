--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: friends; Type: TABLE; Schema: public; Owner: ShandaKennedyAir
--

CREATE TABLE friends (
    id integer NOT NULL,
    peasants integer,
    queen_king_id integer
);


ALTER TABLE friends OWNER TO "ShandaKennedyAir";

--
-- Name: friends_id_seq; Type: SEQUENCE; Schema: public; Owner: ShandaKennedyAir
--

CREATE SEQUENCE friends_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE friends_id_seq OWNER TO "ShandaKennedyAir";

--
-- Name: friends_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ShandaKennedyAir
--

ALTER SEQUENCE friends_id_seq OWNED BY friends.id;


--
-- Name: tweets; Type: TABLE; Schema: public; Owner: ShandaKennedyAir
--

CREATE TABLE tweets (
    id integer NOT NULL,
    content character varying(151),
    date_ date,
    author_id integer
);


ALTER TABLE tweets OWNER TO "ShandaKennedyAir";

--
-- Name: tweets_id_seq; Type: SEQUENCE; Schema: public; Owner: ShandaKennedyAir
--

CREATE SEQUENCE tweets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tweets_id_seq OWNER TO "ShandaKennedyAir";

--
-- Name: tweets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ShandaKennedyAir
--

ALTER SEQUENCE tweets_id_seq OWNED BY tweets.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ShandaKennedyAir
--

CREATE TABLE users (
    id integer NOT NULL,
    username character varying NOT NULL,
    pswd character varying
);


ALTER TABLE users OWNER TO "ShandaKennedyAir";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ShandaKennedyAir
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO "ShandaKennedyAir";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ShandaKennedyAir
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY friends ALTER COLUMN id SET DEFAULT nextval('friends_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY tweets ALTER COLUMN id SET DEFAULT nextval('tweets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: friends; Type: TABLE DATA; Schema: public; Owner: ShandaKennedyAir
--

COPY friends (id, peasants, queen_king_id) FROM stdin;
201	68	3
203	21	63
101	8	41
102	29	17
103	70	83
104	100	3
105	15	96
106	43	56
107	72	81
108	16	30
109	61	68
111	68	43
112	71	58
113	4	11
114	101	83
115	95	83
116	79	11
117	24	60
118	63	21
119	80	5
120	45	31
121	94	78
122	91	8
123	66	66
124	96	3
125	4	4
126	76	47
127	101	6
128	61	94
129	18	10
130	28	20
131	43	80
132	65	23
133	93	81
134	17	10
135	3	24
136	73	27
137	33	92
138	96	20
139	22	22
140	77	34
141	68	87
142	8	45
143	57	36
144	97	17
145	87	92
146	73	28
147	50	31
148	73	92
149	36	96
150	35	36
151	97	57
152	35	44
153	37	24
154	74	32
155	20	4
156	98	50
157	40	11
158	41	44
159	55	13
160	46	63
161	35	65
162	71	48
163	101	41
164	3	7
165	7	77
166	80	15
167	46	92
168	90	24
169	41	8
170	49	60
171	80	89
172	4	16
173	42	18
174	23	99
175	19	66
176	14	92
177	6	11
178	61	15
179	66	89
180	49	20
181	101	75
182	95	93
183	75	98
184	101	14
185	42	15
186	59	47
187	67	73
188	52	86
189	6	30
190	29	34
191	50	67
192	92	14
193	28	52
194	14	32
195	17	96
196	25	48
197	101	91
198	78	53
199	45	93
200	48	98
202	3	7
218	3	68
\.


--
-- Name: friends_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ShandaKennedyAir
--

SELECT pg_catalog.setval('friends_id_seq', 218, true);


--
-- Data for Name: tweets; Type: TABLE DATA; Schema: public; Owner: ShandaKennedyAir
--

COPY tweets (id, content, date_, author_id) FROM stdin;
101	Voluptas distinctio at tempora asperiores. Soluta harum dolorum est praesentium. Maiores quos quam est laudantium distinctio cum ea. Autem soluta volup	2015-07-27	86
102	Iste qui ab. Incidunt sapiente nihil omnis.	2014-02-11	72
103	Id quo aut. Velit aut amet aliquid voluptates minima quis. Et pariatur porro et nihil. Enim vero ratione animi magnam. Quam ut in culpa iste qui illum 	2013-12-25	20
104	Qui et omnis atque labore harum. Ipsam quia doloremque. In et ipsam consequatur. Vitae inventore dolores dolorem natus eum error dolor. Nisi labore vol	2012-10-18	21
105	Voluptas ipsam deleniti est illo esse. Vel dicta aut qui sit. Magnam quaerat ipsum numquam. Modi dignissimos sapiente dolorum et nisi nisi quos.	2015-11-09	67
106	Amet tenetur repudiandae nihil. Ipsa consequatur deserunt iure possimus odit sed. Perspiciatis voluptas suscipit rem est quaerat. Provident error dolor	2015-10-01	70
107	Consequatur et est adipisci quo voluptas dolore dolorum dignissimos. Aut mollitia et eum numquam molestiae occaecati rem architecto.	2013-01-25	57
108	Ullam modi aspernatur quidem nam nihil soluta esse quos. Explicabo aut odio temporibus veritatis. Quia quas voluptatem iure quasi deserunt necessitatib	2013-06-14	5
109	Quos molestiae harum nostrum tempora illo rerum. Veniam ut incidunt repudiandae vel ipsum et eos cumque. Omnis illum aut aut labore optio minus exercit	2015-03-26	59
110	Nisi qui repudiandae similique est et ad qui et. Maxime voluptates consequuntur ab. Culpa dicta nemo eaque alias temporibus est.	2013-08-22	36
111	Natus accusamus nemo excepturi veniam autem. Ut soluta voluptatum id optio voluptate. Beatae animi magni tenetur. Asperiores quaerat et rerum ea offici	2012-05-11	36
112	Eum et incidunt molestias sint. Accusamus perspiciatis dolorem suscipit eligendi temporibus consequatur et. Iste praesentium laboriosam in voluptas mol	2013-03-16	10
113	Architecto commodi non. Ut ut dignissimos accusamus atque.	2016-05-11	17
114	Ipsum et eaque voluptatem ut assumenda. Quia ea accusamus unde esse fuga reiciendis ut. Aperiam consequuntur aperiam eius non quos commodi et. Est repe	2013-07-19	43
115	Itaque sit dolorem cupiditate nisi. Cupiditate labore cupiditate similique qui pariatur sit autem.	2015-11-16	8
116	Non laborum illum. Molestiae saepe ea qui. Suscipit omnis quos beatae facere aut dolorem omnis. Id doloribus enim. Animi unde exercitationem eos laboru	2015-07-14	37
117	Reprehenderit distinctio quo dignissimos ut temporibus. Qui cumque quia id. Dolor sed dolore magnam dolorum iure consequatur rerum minus provident.	2014-08-08	13
118	Et et doloremque officiis possimus expedita vero provident. Laboriosam qui ut laboriosam. Repudiandae vel sunt quaerat. Non sit itaque qui est perspici	2015-07-26	43
119	Consequatur aut magni cumque ducimus pariatur. Sapiente nemo excepturi enim qui repellendus doloribus expedita rerum ab.	2013-01-10	62
120	Dolores nesciunt officiis voluptas. Eaque voluptate optio itaque nulla. Consequuntur ut natus saepe eum quia.	2013-01-09	40
121	In possimus vitae ducimus iste ea aut voluptas accusantium omnis. Aliquam dolorem in aut rem ipsa veritatis voluptas repellendus. Fugit tempore sapient	2013-08-20	83
122	Quisquam dolorem et molestiae suscipit ad a nesciunt distinctio. Cumque est consequatur magnam illo. Sunt aut maiores qui animi qui adipisci est. Fugia	2013-12-08	22
123	Quasi ut ea id vero omnis aperiam rerum quod. Est atque quis placeat nisi eaque inventore. Qui doloremque provident cupiditate quis eligendi.	2015-01-29	95
124	Id at libero cum et rerum dolorem voluptates ex et. Recusandae et beatae voluptas est corporis sint exercitationem explicabo. Et earum quasi minima. Qu	2014-05-14	29
125	Odit veritatis temporibus ullam soluta temporibus. Quos fugit aut sequi corrupti. Tempore tempora ullam amet voluptatum.	2015-12-05	43
126	Voluptas labore eaque ut est rerum maiores. Illo et nesciunt vel.	2012-07-21	25
127	Eius inventore blanditiis. Blanditiis ipsam id laboriosam sed voluptatem qui non. Ducimus voluptatem qui vero qui fugit aliquid quam.	2014-10-28	43
128	Omnis sapiente voluptates animi accusantium aliquam. Et sint tempora sunt numquam debitis eligendi. Praesentium voluptas nam cumque odit esse explicabo	2014-01-14	69
129	Sequi numquam est numquam quos sapiente excepturi ipsam dignissimos similique. Et aut consequatur deserunt voluptates perspiciatis. Voluptatem vitae et	2012-01-21	31
130	Saepe esse cum quos corrupti cumque accusantium dolores porro. Soluta ullam harum. Ut maxime doloribus et.	2015-12-14	68
131	Odit eligendi porro est recusandae vero quod sint magnam. Eaque sapiente magni. Nam ut debitis reprehenderit.	2012-07-10	19
132	Sit necessitatibus et quis et ad quisquam maiores ut voluptatem. Ex enim possimus qui aut doloribus repellat repellendus nemo sapiente.	2014-10-13	39
133	Ex aut et eos. Voluptate esse voluptatum odio accusamus. Dolore et amet dolores. Asperiores vel voluptatem ad aut assumenda. Assumenda cumque eos nobis	2013-05-14	43
134	Et aut facere architecto natus mollitia fugiat exercitationem quasi distinctio. Similique dolores itaque aut voluptatem deserunt qui reiciendis rerum p	2016-07-11	88
135	Et sunt velit voluptates delectus libero quibusdam. Sint illo quo error nihil hic vitae qui optio.	2012-11-23	41
136	Minima eum quia iste est. Corrupti deserunt eos incidunt odit molestias consectetur. Iste nobis voluptas ipsum voluptate. Delectus ea aliquam velit ass	2016-07-14	70
137	Qui a molestias a et dolores fugit ut. Perspiciatis expedita molestias modi odit enim. Quia et hic ut. Est omnis quas veniam et id illum dolorum impedi	2013-06-30	88
138	Qui vel atque qui. Ipsum temporibus tempora quia cum eum delectus quas. Qui veritatis ducimus quibusdam dolor maxime.	2015-07-30	42
139	Est magni quidem aperiam. Ut enim aut facilis odit repudiandae. Libero aspernatur saepe nostrum dolor iste et exercitationem. Nam nam culpa odio quia m	2013-07-11	33
140	Assumenda ipsam officiis ipsam saepe autem veritatis expedita ut et. Iure et magni molestiae est consectetur praesentium similique asperiores nulla. Et	2016-04-08	2
141	Non harum velit voluptatem ut et deleniti. Qui ut ut. Ut distinctio qui dolore possimus sed. Sunt nemo totam. Ipsa earum iure et modi consequuntur. Est	2012-05-04	81
142	Qui laborum quae eos aut velit. Quia possimus omnis quis blanditiis velit similique sed. Iure adipisci consequatur voluptatem facilis quibusdam aliquam	2012-04-30	32
143	Magni fugiat inventore et nihil quia sed. Magnam ipsa ut.	2015-05-22	8
144	Ad repudiandae reiciendis iste reprehenderit fuga in quisquam ex soluta. Sit neque quas suscipit veritatis. Voluptatem tenetur delectus ipsum in sed ne	2015-03-05	21
145	Consequatur commodi quaerat ratione aspernatur sit qui quia natus. Harum at eligendi est laboriosam eaque provident quo aut. Quia debitis aliquid praes	2012-02-09	45
146	Voluptas voluptatem nulla. Est modi commodi libero assumenda debitis deleniti et ut sit. Corrupti omnis voluptatem nulla odit. Quasi amet ea hic et sun	2014-11-02	78
147	Voluptate beatae est iusto omnis deserunt consequuntur iste expedita soluta. Eius architecto est quam voluptatem et nihil aut a.	2015-06-20	70
148	Architecto quam in tempore itaque consequuntur quo debitis. Facere natus sunt.	2015-11-25	85
149	Et eaque quos voluptatem quibusdam voluptas in velit dolorum pariatur. Nemo sequi officia iure dolor cupiditate quibusdam et dolorum.	2012-12-24	70
150	Qui alias rem deserunt est architecto. Quia cumque eligendi nostrum. Eaque voluptas blanditiis. Corporis quasi debitis qui placeat.	2013-01-14	23
151	Sed dolor et est voluptatem facere numquam modi molestiae. Qui repudiandae qui ad veniam sunt enim hic quam. Sit vel dolorem.	2012-10-14	92
152	Ea totam dolorum officiis. Asperiores sint ab quam inventore facere quos tempora. Debitis voluptates itaque quae placeat. Et ut dolorem eligendi aut in	2016-07-17	97
153	Dignissimos quis voluptas sapiente expedita adipisci quo. Nulla ut quidem alias quaerat laudantium alias illum quo tempora. Ut velit impedit expedita n	2014-09-28	73
154	Ut voluptatem accusamus quo tenetur consequuntur possimus. Et sed enim perspiciatis dolor repudiandae sunt animi.	2012-02-28	72
155	Id qui sit occaecati eum iure ipsum corrupti. Quia veritatis aliquam repudiandae. Sit voluptas ut suscipit vero mollitia reprehenderit et non pariatur.	2016-04-29	96
156	Et repellendus excepturi dolor illum similique voluptate assumenda excepturi autem. Maxime nihil aperiam eos doloremque ipsam iste facilis veniam nisi.	2013-10-20	17
157	Itaque numquam quae. Quia molestiae quis nulla. Perferendis ab rerum cum quia totam in quasi. Consequatur tempore a asperiores dolore illum velit.	2013-05-24	66
158	Dolor velit facilis. Ipsam omnis ut mollitia distinctio. Perferendis assumenda possimus veritatis qui dignissimos et. Ipsa sed eius est numquam. Doloru	2014-02-03	65
159	Vero iste enim non sint iure suscipit aliquid. Voluptates nobis soluta quam consequuntur rerum voluptatem beatae consectetur eum. Ut totam animi volupt	2013-12-24	89
160	Unde qui enim et enim ipsum totam corrupti itaque et. Voluptas molestias accusantium optio dolorum dolorum ratione. Quam hic mollitia nihil molestias q	2012-04-07	22
161	Expedita dolorum minus molestiae. Mollitia corporis sit itaque magnam ipsa ex nostrum. Commodi sit alias praesentium sit quos error.	2013-09-12	20
162	Distinctio sequi alias veritatis itaque reiciendis ratione qui vel modi. Consequuntur incidunt aut aut mollitia similique. Repellat repellendus odit.	2013-02-16	56
163	Molestias reiciendis aliquid tenetur neque et eveniet et maxime. Consequatur harum voluptatibus maiores dolor cupiditate totam corporis reprehenderit. 	2015-08-11	46
164	Sed atque dignissimos explicabo rerum. Est possimus qui cumque quidem. Quibusdam blanditiis eos eos tenetur voluptates blanditiis occaecati earum digni	2015-01-01	42
165	Modi velit aliquid repellendus neque error illum repudiandae itaque. Dolore ut laboriosam qui ea. Distinctio quos voluptates blanditiis ad tempora mole	2016-02-02	50
166	Excepturi vel tempore beatae eum incidunt rem at dolor. Voluptatum perferendis dolore ut esse rerum. Qui dignissimos id quod eum nihil sapiente. Mollit	2013-03-06	95
167	Inventore et quas enim voluptatem. Facilis soluta omnis qui et. Laboriosam ut quo suscipit sit aperiam voluptates quasi aliquam.	2012-07-18	2
168	Est laudantium nihil perferendis fugit sint et unde. Omnis et quos blanditiis. Corporis eum velit.	2013-07-21	29
169	Earum libero harum eos facilis qui suscipit consequuntur cumque. Minus consequuntur cum tempore est voluptatem commodi. Et et ipsam neque. Ut possimus 	2012-10-04	8
170	Cupiditate et sequi porro. Nobis recusandae deleniti ut sit sunt.	2012-08-21	20
171	Ea et est inventore dolores. Et aut quidem quaerat accusantium vitae quisquam necessitatibus cumque. Illum enim non officiis repellendus mollitia. Et q	2012-08-04	19
172	Et minima fuga repellendus doloremque. Nihil dicta vitae. Et perspiciatis est. Praesentium in quisquam molestias perspiciatis. Eius est pariatur except	2016-05-26	20
173	Et quisquam ut explicabo ducimus excepturi. Voluptatem voluptas unde vel aperiam numquam minus sequi quo.	2014-12-11	10
174	Velit et officiis aut possimus tempore sed voluptatem dolorem earum. Et ullam rerum.	2016-03-22	81
175	Mollitia blanditiis assumenda est culpa dolore. Laborum pariatur soluta ullam. Tempore molestiae vel aperiam explicabo in. Cum non et commodi est. Et r	2015-09-07	39
176	Voluptatum quia ipsum in. Quia qui esse accusamus sed. Et fugiat aut eum quasi voluptatibus et. Voluptatem et quibusdam eaque aut. Amet suscipit ullam 	2013-09-11	75
177	Ea reiciendis voluptates aut animi voluptate inventore sit eum ut. Sed consequatur rerum. Placeat consequatur assumenda et cum labore facilis cumque qu	2014-05-12	76
178	Est rerum cumque. Perferendis dolorum ut suscipit et sed sed.	2016-05-10	86
179	In saepe voluptatum qui totam veritatis. Facilis reiciendis nulla sed error molestiae vitae autem. Doloribus dignissimos est inventore voluptas tempori	2015-10-27	25
180	Non voluptatem voluptates. Reiciendis suscipit saepe ratione. Quas impedit porro natus voluptatem error quibusdam laudantium. Earum fugiat et earum.	2015-05-24	57
181	Eum soluta nihil voluptates labore voluptatem deserunt consectetur laudantium. Vitae id sunt incidunt id quia quia culpa quia voluptatem. Dolor ut adip	2016-01-25	91
182	Alias ipsam est. Rerum deleniti odit id similique fugit rem.	2016-04-16	91
183	Incidunt exercitationem sint quae voluptatibus quis provident vero. Consequuntur saepe doloremque.	2016-02-10	71
184	Possimus pariatur quam enim ducimus enim voluptate. Harum nesciunt omnis mollitia cum aliquam rerum sapiente sed eum. Consectetur a dolor. Nesciunt eni	2014-12-25	49
185	Velit aut eum aut quas placeat. Est ut est molestiae autem deleniti sit neque. Similique sequi aut et consequatur non quis harum dolores. Enim qui a op	2014-10-22	54
186	Molestiae autem voluptas. Incidunt et dolore dolorum magnam tempora sed quis similique. Sunt quod soluta. Et et nulla qui in. Rerum sit possimus quidem	2014-12-25	34
187	Dolor in soluta deserunt ad molestiae. Occaecati laborum ut rem unde et sit saepe ea non. Tempore laboriosam laudantium dicta quod molestiae veritatis.	2013-10-13	65
188	Accusamus dolore sit veniam. Consequatur sed ex nisi totam sit. Odio est enim voluptatem vel non debitis. Fugit sed maxime rerum vel voluptatem dolor r	2012-12-21	6
189	Exercitationem cupiditate sit. Minima rerum voluptas nesciunt voluptas voluptatem iste possimus maxime. Eos optio minima reiciendis eum perspiciatis ex	2013-05-29	65
190	Velit rem error neque reprehenderit. Quidem tempora ducimus asperiores ad quo ut architecto rerum. Quisquam quaerat quisquam. Error maxime occaecati su	2012-09-04	83
191	Aspernatur quasi deserunt et corrupti inventore voluptatem et vitae. Nisi dolorem labore repellat praesentium corporis labore eaque dicta. Sequi qui es	2012-11-09	53
192	Magni doloribus ipsum aut aut dolores minima quos in. Illum ut ducimus laudantium deleniti incidunt. Perspiciatis consequuntur saepe.	2013-02-05	72
193	Voluptas minima alias voluptatum quia. Autem ratione nisi quia et quasi rerum soluta et repellendus. Dolore dolor sit ut. Quibusdam nobis qui. Facere e	2014-05-22	53
194	Quos iusto voluptas itaque molestias eum. In consectetur ea quidem deleniti vel dolorem. Nihil aut aut repudiandae. Quis esse beatae cumque eligendi do	2013-03-21	13
195	Quis exercitationem nihil consequatur libero. Quaerat repellendus maxime nemo. Temporibus sint eaque nulla nulla. Enim enim dolorem excepturi. Molestia	2015-03-20	74
196	Id dolorum voluptas fuga fugit. Minus exercitationem voluptatem quo nobis unde reprehenderit praesentium voluptatem. Minus qui et sed recusandae qui is	2013-08-24	7
197	Amet et ut perferendis. Iste modi ea doloribus aut perspiciatis cumque numquam.	2014-02-02	83
198	Est voluptas quis maiores qui vitae temporibus. Impedit architecto neque praesentium corporis aut non amet quae dolorem. Sed ea similique aut temporibu	2014-06-07	49
199	Cum perferendis non deleniti quo quod tenetur voluptatem. Nisi eum ipsum magni est dolorum ut unde ut quidem. Odit corporis accusantium debitis consequ	2014-11-16	18
200	Ex non repellat nemo qui excepturi expedita nihil et. Aut optio iusto quis. Itaque eveniet sed iure. Delectus reprehenderit atque autem amet. Omnis und	2014-01-04	62
201	shanda	2016-07-27	3
202	dbgiubdfg;ifdj;agf	2016-07-27	3
203	yup yup	2016-07-27	3
204	yup yup	2016-07-27	3
205	another1	2016-07-27	3
206	another1	2016-07-27	3
207	kennedy	2016-07-27	3
208	,gjvb,jgvb	2016-07-27	3
209	chirp chirp	2016-07-27	3
210	uhgjyhjryt	2016-07-27	3
211	dsgasdgs	2016-07-27	3
212	fdgsfdgsf	2016-07-27	3
213	dsadsgadgads	2016-07-27	31
214	chirp chip good ppl	2016-07-28	105
215	1st chirp	2016-07-28	103
216	rgd	2016-07-28	103
217	sdgsdfgfd	2016-07-28	103
218	khbnm k.n mk.nkm	2016-07-28	3
219	hj.v,gcv,jhv. jbnk.jbk.j	2016-07-28	3
220	ghc,gbvj.	2016-07-28	102
221	dsgadsgasdgadgadgasd	2016-07-28	3
\.


--
-- Name: tweets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ShandaKennedyAir
--

SELECT pg_catalog.setval('tweets_id_seq', 221, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ShandaKennedyAir
--

COPY users (id, username, pswd) FROM stdin;
102	Shanda	$2b$12$IlGJAjy/xUjzQNdad.RoDu/f52p5hVAYywUI.1MHcV3uMoktlnPIu
103	kennedy	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
105	Q	$2b$12$lAPM7faJyxPsXjCQ9jzLQenU3hhP6tBJY9dKfTTbj..GhjDSHmw.m
2	Adriana Mosciski	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
3	Marcellus Anderson	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
4	Leonardo Cruickshank	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
5	Linnie Rippin	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
6	Perry Fadel	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
7	Amani Schneider PhD	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
8	Gage Murray	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
9	Claudia Robel	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
10	Birdie Kunde	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
11	Mrs. Camylle Parisian	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
12	Nelson Runolfsson	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
13	Savion Mertz	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
14	Ola Schaefer	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
15	Verner Waelchi	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
16	Clinton King	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
17	Adele Johnson Sr.	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
18	Miss Trace Hirthe	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
19	Kolby Harris	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
20	Dana Greenfelder DVM	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
21	Callie Sawayn	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
22	Jaron Mertz	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
23	Winifred Nicolas	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
24	Keven Marks	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
25	Mr. Leonor Abbott	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
26	Margarett Cronin	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
27	Karl Marvin IV	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
28	Timmy Beatty	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
29	Katherine Block	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
30	Francis Koss	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
31	Ms. Camilla Gerlach	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
32	Margie Bogan	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
33	Raleigh Jaskolski	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
34	Tyrel Farrell	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
35	Lenora Bode	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
36	Vaughn Schamberger	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
37	Gladyce Little	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
38	Ashtyn Ziemann	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
39	Tod Dicki	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
40	Alvis Toy	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
41	Dr. Madisen Hintz	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
42	Ms. Annalise Koss	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
43	Emmalee Schinner	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
44	Barry Brakus	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
45	Reva Dickinson	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
46	Irving Dibbert	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
47	Willie Schuppe	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
48	Rozella Hegmann	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
49	Samara Cartwright	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
50	Cali Leannon	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
51	Bailey McClure	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
52	Lauriane Koch	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
53	Destin Smith	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
54	Josiah Klocko	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
55	Grayce Johns	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
56	Reggie Jakubowski	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
57	Luis Kshlerin	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
58	Ryley Cronin	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
59	Norval Hackett	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
60	Julianne Graham	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
61	Alvina Blick	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
62	Trinity Friesen Sr.	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
63	Rosemary Murray	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
64	Jeanie Waelchi	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
65	Antonia Spinka	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
66	Mrs. Garrison Bradtke	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
67	Shana Gibson DVM	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
68	Kayla Graham	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
69	Bertrand Baumbach	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
70	Zelda Block	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
71	River Kling	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
72	Alysson Schiller II	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
73	Gaylord Feest	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
74	Hanna Wunsch III	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
75	Arely Gaylord	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
76	Fatima Kertzmann	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
77	Easton Lakin	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
78	Cleora Farrell	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
79	Josie O'Kon	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
80	Nedra Stokes	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
81	Aurore Schamberger	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
82	Ephraim Nitzsche	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
83	Verda Kuvalis	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
84	Anthony Mante	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
85	Minnie Harber	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
86	Yvonne Hauck	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
87	Kurt Hettinger	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
88	Mozell Okuneva	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
89	Augusta Hettinger	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
90	Dr. Meghan Huels	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
91	Mr. Cheyanne Keeling	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
92	Monica Zboncak	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
93	Alana Halvorson	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
94	Deontae Boyer	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
95	Obie McKenzie	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
96	Clemens Metz	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
97	Jamir Considine MD	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
98	Clementine Lang	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
99	Dylan Bogisich DDS	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
100	Samson Schuster	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
101	Joshua Cremin	$2b$12$yAVlgMFerGy4LY8PSBShxuoDnflQ863K57iTz6klQlrNx7wXmFWHq
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ShandaKennedyAir
--

SELECT pg_catalog.setval('users_id_seq', 105, true);


--
-- Name: friends_pkey; Type: CONSTRAINT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY friends
    ADD CONSTRAINT friends_pkey PRIMARY KEY (id);


--
-- Name: tweets_pkey; Type: CONSTRAINT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY tweets
    ADD CONSTRAINT tweets_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_username_key; Type: CONSTRAINT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: friends_peasants_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY friends
    ADD CONSTRAINT friends_peasants_fkey FOREIGN KEY (peasants) REFERENCES users(id);


--
-- Name: friends_queen_king_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY friends
    ADD CONSTRAINT friends_queen_king_id_fkey FOREIGN KEY (queen_king_id) REFERENCES users(id);


--
-- Name: tweets_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ShandaKennedyAir
--

ALTER TABLE ONLY tweets
    ADD CONSTRAINT tweets_author_id_fkey FOREIGN KEY (author_id) REFERENCES users(id);


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

