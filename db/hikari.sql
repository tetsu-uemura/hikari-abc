--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: hikaris; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY hikaris (id, name, docomo, softbank, au, ymobile, flets, tel, tv, path, apartment, created_at, updated_at, provider, priority) FROM stdin;
1	ドコモ光	t	f	f	f	t	t	t	docomo	t	2016-10-28 15:42:34.401734	2016-10-30 18:06:40.339213	---\n- plala\n- So-net\n- BIGLOBE\n- DTI\n- excite\n- エディオンネット\n- SYNAPSE\n- 楽天\n- 01光コアラ\n- ANDLINE\n- "＠ネスク"\n- hi-ho\n- GMO\n- ic-net\n- Tigers-net.com\n- TikiTiki\n- U-Pa!\n- AsahiNet\n- "@nifty"\n- "@TCOM"\n- TNC\n- OCN\n- WAKWAK\n- "＠ちゃんぷるネット"\n	0
2	SoftBank光	f	t	f	t	t	t	t	softbank	t	2016-10-28 15:44:05.009031	2016-10-30 18:06:55.539488	---\n- Yahoo!BB\n	0
3	auひかり	f	f	t	f	f	t	t	au	f	2016-10-28 15:45:23.461695	2016-10-30 18:07:08.821697	---\n- "@nifty"\n- "@TCOM"\n- AsahiNet\n- au one net\n- BIGLOBE\n- DTI\n- So-net\n	0
5	コミュファ光	f	f	t	f	f	t	t	commufa	t	2016-10-30 17:13:58.107499	2016-10-30 18:09:10.07399	--- So-net\n...\n	2
7	OCN光	f	f	f	f	t	t	t	ocn	t	2016-10-30 17:16:39.797419	2016-10-30 18:11:12.23318	--- OCN\n...\n	1
8	BIGLOBE光	f	f	f	f	t	t	t	biglobe	t	2016-10-30 17:17:37.911291	2016-10-30 18:12:07.118692	--- BIGLOBE\n...\n	0
9	U-NEXT光	f	f	f	f	t	t	t	unext	t	2016-10-30 17:18:17.970415	2016-10-30 18:12:34.775363	--- U-Pa!\n...\n	2
6	So-net光	f	f	t	f	t	t	t	sonet	t	2016-10-30 17:15:20.745459	2016-10-30 18:21:34.454848	--- So-net\n...\n	0
4	NURO光	f	t	f	f	f	t	f	nuro	f	2016-10-28 15:46:21.269107	2016-10-30 18:39:46.736559	---\n- So-net\n	2
\.


--
-- Name: hikaris_id_seq; Type: SEQUENCE SET; Schema: public; Owner: vagrant
--

SELECT pg_catalog.setval('hikaris_id_seq', 9, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: vagrant
--

COPY schema_migrations (version) FROM stdin;
20161028143408
20161029152107
20161030180133
\.


--
-- PostgreSQL database dump complete
--

