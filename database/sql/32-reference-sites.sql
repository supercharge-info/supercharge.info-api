--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)

-- Started on 2022-07-14 17:03:01 EDT

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

SET default_table_access_method = "heap";

--
-- TOC entry 3209 (class 0 OID 73693)
-- Dependencies: 277
-- Data for Name: address; Type: TABLE DATA; Schema: supercharge; Owner: supercharge_user_test
--

COPY "supercharge"."address" ("address_id", "street", "city", "state", "zip", "country_id", "modified_date", "version") FROM stdin;
1000015	681 Leavesley Rd	Gilroy	CA	95020	100	2019-05-05 14:48:44.662+00	9
1000070	1900 NW 6th St	Grants Pass	OR	97526	100	2019-05-05 14:52:56.309+00	6
1000100	4601 Keystone Crossing	Eau Claire	WI	54701	100	2019-11-01 17:37:30.479+00	2
1000020	2751 Park View Ct	Oxnard	CA	93036	100	2019-05-05 15:39:14.54+00	6
1000010	555 McMurray Rd	Buellton	CA	93427	100	2020-01-04 17:45:14.272+00	5
1000085	3939 Interstate 35	San Marcos	TX	78666	100	2019-08-16 02:37:59.174+00	5
1000075	1030 N Center Ave	Somerset	PA	15501	100	2020-03-30 04:37:03.445+00	4
1000045	7200 Harrison Ave	Rockford	IL	61112	100	2019-11-01 17:39:00.099+00	3
1000005	1451 W Main St	Quartzsite	AZ	85346	100	2020-07-04 03:01:01.782+00	6
1000055	4200 Sierra Vista Dr	Farmington	NM	87402	100	2020-02-09 20:32:50.001+00	4
1000191	Sports Park, No.129 Baishi Rd, Xiacheng District	Hangzhou	Zhejiang	\N	115	2022-07-10 20:55:06.638+00	2
1002176	5121 S Westnedge Ave	Portage	MI	49002	100	2021-07-02 23:43:20.344+00	9
1000040	450 Martin Luther King Jr Blvd	Macon	GA	31201	100	2021-07-03 04:26:06.766+00	3
1000000	416 S Watson Rd	Buckeye	AZ	85326	100	2021-12-26 15:31:13.264+00	3
1000030	1 CT Turnpike S	Milford	CT	06460	100	2022-02-10 01:20:48.473+00	4
1000090	16 South Main St	Moab	UT	84511	100	2022-02-10 01:42:01.511+00	3
1000095	9384 Old Highway 99	Burlington	WA	98233	100	2019-05-05 15:02:27.922+00	3
1000144	E18 South	Lier	\N	3400	105	2019-09-08 19:35:56.523+00	3
1000120	Doesburgseweg 39	Zevenaar	\N	6902 PL	104	2020-02-18 00:56:25.493+00	4
1000163	24 TOTAL Autohof	Mühldorf	\N	84453	103	2019-08-29 05:56:12.571+00	4
1000115	Zum Raukler 1	Hohenwarsleben	\N	39326	103	2019-08-29 06:09:06.704+00	3
1000110	Am Waizenhof 12 (Autohof)	Aichstetten	\N	88317	103	2020-03-05 15:31:19.624+00	3
1000139	Graceland Randers Vej 3	Randers	\N	8960	107	2019-08-30 16:37:57.195+00	3
1000175	1 Boulevard du Général de Gaulle	Sancé	\N	71000	110	2019-09-02 17:37:11.592+00	6
1000149	11290 Donner Pass Rd	Truckee	CA	96161	100	2021-01-07 05:16:17.907+00	6
1000181	Harmony, No.16 Zhonghe St, Yizhuang, Daxing District	Beijing	Beijing	\N	115	2021-02-08 12:03:10.016+00	3
1000169	Atlasstraat 7-9	Tilburg	\N	5047 RG	104	2022-07-10 20:51:59.144+00	4
1000158	Herrestads Torp 310	Uddevalla	\N	451 98	109	2021-06-25 08:23:08.766+00	5
1000197	385 Southbridge St	Auburn	MA	01501	100	2021-08-16 21:20:05.333+00	4
1000207	4414 SW College Rd	Ocala	FL	34474	100	2022-02-10 01:21:44.155+00	3
1000125	Brokelandsheia	Sundebru	\N	4993	105	2022-07-03 12:13:27.217+00	8
1000237	6-3-3 Roppongi, Minato-ku	Tokyo	\N	6-10-3	114	2019-10-02 06:02:57.322+00	3
1000242	4310 Airport Way	Denver	CO	80239	100	2019-05-05 16:34:29.419+00	2
1000278	3310 50 Ave	Red Deer	AB	T4N 3X9	101	2019-05-05 16:57:25.962+00	3
1000288	Turkey Lake Service Plaza	Turkey Lake	FL	32835	100	2019-06-18 14:14:31.714+00	4
1000255	4901 Indiana 26	Lafayette	IN	47905	100	2019-08-07 15:36:52.162+00	4
1000201	Swiss Heidi Hotel, Werkhofstrasse 1	Maienfeld	\N	7304	106	2019-08-29 05:35:31.968+00	4
1000272	Maria-Gailer-Straße 38	Villach	\N	9500	102	2019-08-30 16:12:23.281+00	2
1000303	Shell/7eleven 1 Kometvej	Rødekro	\N	6230	107	2020-06-23 09:09:21.084+00	6
1000245	E. Leclerc	Metz	\N	57280	110	2019-09-02 17:21:22.247+00	5
1000212	By Fru Haugans Hotel, Elvegata	Mosjøen	\N	8651	105	2019-09-08 19:21:29.485+00	2
1000283	Marché Relais St. Bernard by A9	Martigny	\N	1920	106	2020-08-22 10:08:29.27+00	6
1000227	By Elgstua, Trondheimsvegen 9	Elverum	\N	2406	105	2020-10-02 10:08:59.928+00	4
1000260	Gottesrain 2	Mücke	\N	35325	103	2020-12-25 13:47:29.101+00	3
1000343	Taihua Jinmao International, Yanta district	Xi'an	Shanxi	\N	115	2021-02-09 08:32:39.646+00	2
1000221	Euro America Center, No. 18 Jiaogong Rd, West Lake District	Hangzhou	Zhejiang	310012	115	2021-02-09 09:08:06.964+00	4
1000293	Fountain Valley, No.699 Qingzhuhu Rd, Kaifu District	Changsha	Hunan	\N	115	2021-02-09 11:37:53.8+00	2
1000251	5930 Huntoon St	Topeka	KS	66614	100	2021-03-22 23:52:54+00	3
1000308	8 Donaustraße	Hengersberg	\N	94491	103	2021-10-24 16:50:53.632+00	4
1000232	by Aksdal senter, E134	Aksdal	\N	5570	105	2021-11-23 14:32:08.972+00	5
1000328	Lee Gardens, 2 Lan Fong Road	Hong Kong	Hong Kong	\N	115	2022-07-10 20:56:54.854+00	3
1000363	No. 3162 Yan'an west Rd, Changning District	Shanghai	Shanghai	\N	115	2022-07-10 20:58:22.34+00	2
1000368	Dr.-Reimer St 2	Malsfeld	\N	34323	103	2019-08-29 06:03:35.61+00	2
1000383	1568 East Saddleback Blvd	Tooele	UT	84074	100	2019-05-05 15:05:50.846+00	2
1000393	Grange Park, Junction 15, M1 Loake Close	Northampton	\N	NN4 5EZ	108	2019-09-05 16:05:49.65+00	2
1000333	1200 - 12th Street	Golden	BC	V0A 1H0	101	2019-05-05 16:57:04.444+00	2
1000323	Euro-Rastpark Achern Am Achernsee 1	Achern	\N	77855	103	2019-08-29 05:38:33.281+00	2
1000378	Verona Crowne Plaza, Via Belgio 16	Verona	\N	37135	113	2019-09-04 16:25:08.421+00	5
1000358	Eclipse Park	Maidstone	\N	ME14	108	2019-09-05 15:56:12.261+00	3
1000353	9400 Overseas Hwy	Marathon	FL	33050	100	2020-03-13 17:19:46.034+00	4
1000478	Am Mittelfeld 5, by 24 TOTAL - Autohof Sangerhausen	Sangerhausen	\N	06526	103	2021-03-18 08:58:24.424+00	3
1000338	Kanalvägen 16, 194 61 Upplands Väsby	Stockholm	\N	\N	109	2022-07-10 20:58:10.404+00	7
1000373	1627 Opelika Rd	Auburn	AL	36830	100	2021-08-16 21:18:37.576+00	5
1000508	3145 Saline Rd	Ann Arbor	MI	48108	100	2022-02-10 01:27:40.346+00	6
1000398	No.1 Huxi Rd, Quanshan District	Xuzhou	Jiangsu	\N	115	2022-07-10 21:00:24.877+00	3
1000458	2-40 Suehiro-cho, Kita-ku	Osaka	\N	530-0041	114	2022-07-10 21:05:11.309+00	3
1000298	OKQ8, Lästringe Sillekrog, Nyköping	Tystberga	\N	61174	109	2022-07-11 13:23:05.85+00	5
1000388	4361 Granite Dr	Rocklin	CA	95677	100	2020-03-04 03:57:34.839+00	4
1000423	2755 Mountain City Hwy	Elko	NV	89801	100	2019-05-05 15:05:59.682+00	2
1000468	1301 N Airport Rd by Lucille's Roadhouse	Weatherford	OK	73096	100	2019-05-05 16:23:49.144+00	2
1000473	2516 Historic Rt 66	Santa Rosa	NM	88435	100	2019-05-05 16:25:30.482+00	2
1000513	612 North Main St	Sheridan	WY	82801	100	2019-05-05 16:58:20.303+00	2
1000433	2021 Zumbehl Rd	St. Charles	MO	63303	100	2019-05-05 17:18:25.687+00	2
1000523	595 Taylor Dr, by Festival Foods	Sheboygan	WI	53081	100	2019-11-01 17:33:08.492+00	2
1000438	West London Tesla Service Center, Park House, Horton road	London	\N	UB7 8HZ	108	2019-12-25 16:23:11.694+00	6
1000463	18001 Bass Pro Dr	Independence	MO	64055	100	2021-03-28 16:18:49.033+00	3
1000453	Highway A22	Affi	\N	\N	113	2022-04-01 18:16:14.292+00	6
1000443	Bredskiftevej 20	Aarhus	\N	8210	107	2022-07-10 21:04:59.342+00	3
1000488	103-117 Bremer Straße, by Ochtum park. Exit 57 from A1	Stuhr	\N	28816	103	2022-07-10 21:07:02.063+00	4
1000493	Maggstraße 19	Graz	\N	8042	102	2022-07-10 21:07:41.962+00	3
1000579	Huangshan Yuanyi Baizhuang cross of Xinan Ave and Yanghu, Tunxi District	Huangshan	Anhui	245000	115	2022-07-10 21:09:41.35+00	2
1000609	1288 Lujiazui Ring Rd Pudong	Shanghai	Shanghai	200120	115	2022-07-10 21:10:55.791+00	2
1000498	1000 Front St	Crescent City	CA	95531	100	2019-05-05 15:51:24.939+00	8
1000574	2811 W 10th Ave	Kennewick	WA	99336	100	2019-05-05 17:01:00.667+00	2
1000548	200 W 1st St	Duluth	MN	55802	100	2019-05-05 19:19:00.425+00	2
1000518	Länsiportti 1	Paimio	\N	21530	120	2019-09-04 16:37:32.832+00	5
1000584	Bishops Stortford by Welcome Break (M11)	Birchanger Green	\N	CM23 5QZ	108	2019-09-05 15:55:54.663+00	2
1000563	By Glasshytta	Bygland	\N	\N	105	2019-09-08 19:37:04.251+00	2
1000528	1641 Westgate Circle	Nashville	TN	37027	100	2021-01-20 21:56:15.371+00	8
1000639	Furong Road on the 18th. Wujiang District	Shaoguan	Guangdong	\N	115	2021-01-28 13:28:16.614+00	3
1000684	Yanan Longhua Hotel 1 Longhua Rd	Yanan	Shaanxi	\N	115	2021-01-28 13:31:07.206+00	2
1000674	Zhongshan Baihui Plaza 3rd Unit 8 Huoju Rd	Zhongshan	Guangdong	\N	115	2021-01-28 13:36:22.94+00	3
1000649	Gesäuse Str. 14	Liezen	\N	8940	102	2019-08-30 16:08:50.453+00	7
1000634	Welcome break southbound M6, Keele Motorway Services Area/Whitmore Road	Newcastle, Staffordshire	\N	ST5 5HG	108	2019-09-09 14:59:08.105+00	4
1000604	Topaz Lodge, 1979 US-395	Gardnerville	NV	89410	100	2019-05-05 15:50:11.138+00	3
1000644	171 Main St	Tonopah	NV	89049	100	2019-05-05 16:02:50.047+00	8
1000553	925 West Westwood Blvd	Price	UT	84501	100	2019-05-05 16:18:45.22+00	3
1000629	Kingsland Welcome Center  1190 East Boone Ave	Kingsland	GA	31548	100	2020-01-01 23:04:12.594+00	4
1000679	Mercure Beaune Centre 7 Ave, Charles de Gaulle	Beaune	\N	21200	110	2019-09-02 17:25:42.17+00	2
1000654	Hotel Barbarossahof 10 Eselsfürth	Kaiserslautern	\N	67657	103	2019-08-29 06:06:03.675+00	2
1000659	Horstfeldweg 9 by Snow Dome	Bispingen	\N	29646	103	2021-08-10 14:50:51.054+00	5
1000624	999 Yulin Road Nanchang Economic and Technological Development Zone	Nanchang	Jiangxi	\N	115	2022-07-10 21:11:33.144+00	3
1000589	55 route de Douai Lesquin	Lille	\N	59810	110	2019-09-02 16:58:44.243+00	4
1000719	668 Jiefang 3rd Rd	Sanya	Hainan	\N	115	2021-01-28 13:26:22.953+00	2
1000729	157 Tingjin Rd Ya'an	Ya'an	Sichuan	\N	115	2021-01-28 13:30:35.656+00	2
1000759	near Split. Exit from A1 highway	Dugopolje	\N	\N	121	2019-08-30 16:32:06.06+00	7
1000704	108 Bailey St,	Lima	MT	59739	100	2019-05-05 16:06:24.781+00	6
1000749	2612 E Malone Ave	Miner	MO	63801	100	2019-05-05 17:17:56.001+00	8
1000594	34 Annie Pyers Dr	Gundagai	NSW	2722	116	2021-03-18 01:49:08.158+00	4
1000724	10 Pleasant St	Lee	MA	01238	100	2022-02-10 01:23:44.913+00	7
1000699	590 98 Edsbruk	Edsbruk	\N	590 98	109	2022-05-24 16:24:22.429+00	7
1000714	岡山県倉敷市笹沖1209-1	Kurashiki	Okayama Prefecture	\N	114	2022-07-10 21:23:45.527+00	2
1000739	Calle Nueva Condomina 1. 1, 5T	Murcia	\N	30009	117	2019-09-04 15:59:15.396+00	9
1000834	151 Hansen Blvd	North Aurora	IL	60542	100	2020-09-26 12:19:27.409+00	8
1000844	No.300 Huai'hai Mid Road Shanghai, Shangahai China	Shanghai	Shanghai	\N	115	2021-02-08 12:36:43.471+00	5
1000130	Universal Business Park, No. 10 Jiaxiangao Road	Beijing	Beijing	100015	115	2021-02-14 11:38:46.513+00	6
1000854	Via Guido Rossa 11	Moncalieri	\N	\N	113	2019-09-04 16:18:51.405+00	4
1000839	Aire du Caylar	Le Caylar	\N	34520	110	2019-09-02 17:04:58.233+00	2
1000809	29541 Stockdale Hwy	Bakersfield	CA	93314	100	2019-05-05 14:49:16.31+00	11
1000804	44 Michigan Ave NE	Bandon	OR	97411	100	2019-05-05 15:51:49.234+00	7
1000824	Hilton Hotel, Kingsway W	Dundee	\N	DD2 5JT	108	2019-09-05 15:41:06.207+00	8
1000789	4 Lavendelheide	Drachten	\N	\N	104	2019-08-29 16:18:33.982+00	4
1000784	L´Aldea, Spain 43896	L´Aldea	\N	\N	117	2022-04-16 07:07:12.894+00	3
1000819	213 Payne Turnpike	Berlin	VT	05602	100	2022-02-10 01:43:47.984+00	7
1000779	142 Via Giovan Battista Vico Forte dei Marmi,	Forte dei Marmi	\N	55042	113	2022-06-30 10:06:28.506+00	12
1000754	6692 Auto Center Dr	Buena Park	CA	90621	100	2022-07-10 20:31:52.559+00	7
1000769	Emax 1 Trademart Dr	Hong Kong	Hong Kong	\N	115	2022-07-10 21:24:38.899+00	4
1000794	浜松	Hamamatsu	\N	\N	114	2022-07-10 21:25:09.527+00	2
1000849	Yizhang Industry ParkChenzhou	Chenzhou	Hunan	\N	115	2022-07-10 21:27:36.791+00	4
1000814	2323 7 Ave	Fort MacLeod	AB	T0L 0Z0	101	2020-05-09 04:57:31.278+00	9
1000949	M1, Newport Pagnell	Newport Pagnell	\N	MK16 8DS	108	2019-09-05 16:03:21.803+00	9
1000904	No.2-3  Bifengmen Customs and Cultural Park	Chengde	Hebei	\N	115	2021-01-28 13:11:46.988+00	2
1000924	123 Yuewang St	Heyuan	Guangdong	517000	115	2021-02-08 12:18:20.255+00	2
1000934	No.25 4th Tairan Road	Shenzhen	Guangdong	\N	115	2021-02-08 12:38:13.281+00	2
1000864	18 West 1st RoadNan'an, Gaoyao Zhaoqing, Guangdong China 526010	Zhaoqing	Guangdong	\N	115	2021-02-08 12:53:51.898+00	3
1000884	Jct 27-28 M6 Northbound Mill Ln	Chorley	\N	PR7 5LR	108	2019-09-05 15:45:37.288+00	10
1000889	2571 N Front St	Fort Stockton	TX	79735	100	2019-05-05 16:20:34.739+00	10
1000869	2415 N Main St	Junction	TX	76849	100	2019-05-05 16:21:09.188+00	8
1000879	1401 Washburn Way	Klamath Falls	OR	97603	100	2019-05-05 17:13:51.743+00	7
1000914	A26 Aire d'Urvillers	Urvillers	\N	\N	110	2019-09-02 17:23:28.551+00	9
1000944	36 Via Eridania	Occhiobello	\N	45030	113	2019-09-04 16:25:28.072+00	2
1000954	Woodall Motorway Services Area, M1 (south)	Sheffield	\N	S26 7XR	108	2019-09-05 15:44:58.38+00	9
1000899	62 Days Inn Dr	Kuttawa	KY	42055	100	2020-02-09 19:51:10.916+00	7
1000929	1 Yumen St	Taipei	\N	\N	133	2021-03-15 23:14:31.4+00	4
1000909	1 Via BonfadiniMogliano VenetoItaly	Mogliano Veneto	\N	31021	113	2022-05-24 10:01:07.462+00	3
1000035	530 JFK Memorial Hwy	Newark	DE	19725	100	2022-06-21 15:46:36.951+00	10
1000919	16 Laiguangying Xinbei Rd	Beijing	Beijing	100012	115	2022-07-10 21:29:29.935+00	3
1001009	Welcome Break Burtonwood, M62	Burtonwood	\N	\N	108	2019-09-05 15:45:52.455+00	5
1000959	No. 500 Yanan West Road	Shanghai	Shanghai	\N	115	2021-02-08 12:32:38.444+00	2
1000989	Aupark Shopping Center, Einsteinova 18, 851 01	Bratislava	\N	\N	122	2019-10-15 00:39:12.124+00	13
1001004	M54, Welcome Break, 4 Priorslee Rd	Telford	\N	\N	108	2019-09-05 15:47:04.619+00	4
1001014	800 Convention Center Blvd	McAllen	TX	78501	100	2019-05-05 19:22:04.717+00	6
1000994	Welcome Break, Northbound, M3	Fleet	\N	GU51 1AA	108	2019-09-05 15:50:38.172+00	8
1000969	33505 S Dixie Hwy	Florida City	FL	33034	100	2020-02-09 20:28:21.205+00	10
1000984	755 E Boughton Rd	Bolingbrook	IL	60440	100	2020-02-17 22:37:47.01+00	7
1000964	24-25 M62, South	Brighouse	\N	HD6 4JX	108	2021-10-02 02:27:48.299+00	8
1001044	Roseggerstraße 4, 3100 St.	St. Pölten	\N	\N	102	2022-02-28 12:14:17.743+00	13
1001019	서울특별시 강남구 테헤란로 521	서울	\N	\N	137	2022-07-10 21:30:55.91+00	2
1001034	서울특별시 종로구 종로 33	서울	\N	\N	137	2022-07-10 21:31:20.167+00	3
1001064	2201 F G AMIN ST	Truth or Consequences	NM	87901	100	2019-05-05 16:33:19.642+00	5
1001024	by Tanum Shopping center, Brehogsvägen 6	Tanum	\N	45732	109	2020-10-31 18:29:16.435+00	8
1001054	538 Jiangcheng Avenue	Wuhan	Hubei	\N	115	2021-02-08 12:45:53.055+00	2
1001049	No.1 Erli Riyuan	Xiamen	Fujian	\N	115	2021-02-08 12:48:36.867+00	3
1001094	6886 US-129	Live Oak	FL	32060	100	2020-02-09 20:27:37.055+00	6
1001084	600 State Highway 4	Sherburn	MN	56171	100	2019-05-05 23:02:22.002+00	4
1001074	D132, A31 near Langres	Val-de-Meuse	\N	\N	110	2019-09-02 17:15:05.189+00	10
1001059	Rue de Maugré59220 Rouvignies	Rouvignies	\N	\N	110	2019-09-02 16:59:08.734+00	2
1001039	A5 - Aire de Châteauvillain-OrgesChâteauvillain	Châteauvillain	\N	52120	110	2019-09-02 17:32:40.709+00	3
1001029	Moraleda de Zafayona	Granada	\N	18370	117	2019-09-04 15:56:38.169+00	9
1001170	85 Franklin Street	Adelaide	SA	5000	116	2021-03-18 01:52:46.833+00	5
1001099	km 87.740 México 57	San Luis de la Paz	Guanajuato	\N	131	2021-03-19 00:52:41.585+00	4
1001114	5015 111 St	Edmonton	AB	T6H 4M6	101	2021-08-03 14:12:12.498+00	12
1001069	1060 Boulevard Guillaume-Couture	Levis	QC	G6W 5M6	101	2021-08-14 12:05:00.343+00	8
1001109	3101 Gandy Blvd	Pinellas Park	FL	33782	100	2022-02-10 01:22:00.18+00	7
1001200	3801 E Washington Ave	Madison	WI	53704	100	2022-06-19 23:54:12.705+00	7
1001165	4191 The Circle At North Hills St	Raleigh	NC	27609	100	2022-06-25 02:15:19.981+00	13
1001134	2060 US-130	Burlington	NJ	08505	100	2022-07-10 20:34:16.927+00	4
1001160	by Eiker shopping center, Prestebråtan	Hokksund	\N	3300	105	2019-09-08 19:36:15.782+00	4
1001221	Mid South 4th Ring Road	Beijing	Beijing	\N	115	2021-02-08 12:03:39.972+00	4
1001190	66 Jinshamen Road	Chongqing	Chongqing	\N	115	2021-02-08 12:08:12.55+00	2
1001124	132 Xuefu Street	Taiyuan	Shanxi	\N	115	2021-02-08 12:42:55.322+00	2
1001175	No.20 Golden Lake Road	Wuhan	Hubei	\N	115	2021-02-08 12:46:29.185+00	2
1001129	No. 152 Cuiping Cypress Avenue	Yibin	Sichuan	\N	115	2021-02-08 12:50:21.318+00	2
1001205	170 Buckaroo Lane	Bellefonte	PA	16823	100	2017-12-15 01:52:39.686+00	5
1001155	Welcome Break Membury Eastbound, M4	Hungerford	\N	RG17 7TY	108	2020-01-09 15:09:44.322+00	7
1001139	Southlake Town Square	Southlake	TX	76092	100	2019-05-06 04:13:50.569+00	8
1001119	Doktor-Herrmann-Straße 5	Beelitz	\N	14822	103	2019-08-29 05:48:36.547+00	10
1001185	Pol., Industrial la Coba Pol., 1303, Álava	Rivabellosa	\N	\N	117	2019-09-04 16:04:50.256+00	7
1002181	3288 Pierce St	Richmond	CA	94804	100	2020-06-18 14:53:33.977+00	6
1001256	2701 David H McLeod Blvd	Florence	SC	29501	100	2020-02-09 19:59:52.394+00	4
1002171	898 W Monroe Ave	Lowell	AR	72745	100	2020-02-27 05:55:17.456+00	6
1001236	Park Meadows Center Dr	Lone Tree	CO	80124	100	2020-03-13 17:15:13.898+00	13
1001150	Vídeňská 360 252 42	Vestec	\N	\N	123	2021-11-17 21:13:11.32+00	7
1001215	Old Thorns Hotel, Longmoor Road	Liphook	\N	GU30 7PE	108	2019-09-05 15:49:43.67+00	4
1001226	Nianjiabang E Rd	Shanghai	Shanghai	\N	115	2021-02-08 12:35:38.16+00	3
1001195	858号 Ding Xiang Lu, Pudong Xinqu	Shanghai	Shanghai	201203	115	2021-02-08 12:37:32.097+00	8
1001246	Lic. René Juárez Cisneros 130	Chilpancingo de los Bravo	Guerrero	\N	131	2019-05-16 11:03:54.127+00	7
1001144	1465 Edwin Miller Blvd	Martinsburg	WV	25401	100	2019-08-06 02:31:59.06+00	4
1001180	Justins Way & Cross St	Freeport	ME	04032	100	2018-12-30 16:03:35.858+00	5
1001251	Applegreen Motorway Services	Castlebellingham	\N	\N	124	2019-09-04 16:41:40.209+00	6
1001321	Suyuan Rd	Chenzhou	Hunan	\N	115	2017-12-05 10:37:51.008+00	2
1001286	1350 Travis Blvd	Fairfield	CA	94533	100	2019-05-05 14:53:56.426+00	4
1000894	M7 Jtn 27, Coolderry	Birdhill	\N	\N	124	2019-09-04 16:40:49.661+00	8
1001271	19500 Vallco Parkway	Cupertino	CA	95014	100	2021-03-19 00:54:18.03+00	4
1001276	5725 Legacy Dr	Plano	TX	75024	100	2021-03-19 00:56:23.847+00	9
1001311	999 Upper Wentworth Street	Hamilton	ON	L9A 4X5	101	2021-03-19 00:56:47.82+00	4
1001266	440 King Georges Rd	Woodbridge	NJ	08857	100	2022-05-27 23:28:39.289+00	9
1001231	Zelebaan 100, 9160 Lokeren	Lokeren	\N	\N	112	2022-07-05 06:35:22.291+00	9
1001346	Jungmungwangwang-ro72beon-gil Saekdal-dong	Seogwipo	Jeju	\N	137	2022-07-10 21:37:40.744+00	3
1000533	By Statoil Telemarksporten	Porsgrunn	\N	\N	105	2019-09-08 19:34:41.231+00	3
1001331	9037 Pearl Rd	Strongsville	OH	44136	100	2019-12-29 21:51:44.024+00	8
1001296	6500 W Sand Lake Rd	Orlando	FL	32819	100	2020-10-01 17:36:23.986+00	9
1001421	N-V, 200, 10350	Almaraz	\N	\N	117	2019-09-04 15:52:49.536+00	5
1001316	Het Hooiveld 9	Emmeloord	\N	8302AE	104	2019-08-29 12:04:45.908+00	10
1002311	1551 E 2nd St	Beaumont	CA	92223	100	2020-07-09 06:06:11.734+00	5
1001371	7710 El Camino Real	Carlsbad	CA	92009	100	2019-05-02 11:41:04.784+00	9
1001366	322 Sowolno, Yongsan-gu	Seoul	\N	\N	137	2017-12-21 22:19:39.953+00	1
1001401	No.1 East Chang'an Street	Beijing	Beijing	100006	115	2021-02-08 12:01:05.159+00	2
1001381	1977 South Zhonghuan Road	Jiaxing	Zhejiang	314001	115	2021-02-08 12:20:36.456+00	2
1001291	CF Sherway Gardens, 25 The West Mall	Etobicoke	ON	M9C 1B8	101	2021-03-19 00:45:51.402+00	6
1001361	10 Kotitie	Pyhtää	\N	49270	120	2022-01-13 02:53:13.172+00	4
1002301	2780 S Colorado Blvd	Denver	CO	80222	100	2022-07-10 20:41:50.525+00	4
1001351	Northwest corner of Weinan 3th Road and Jingnan 4th Road	Xinyang	Henan	464000	115	2021-02-08 12:49:02.316+00	2
1001356	No.38 Dongyan Road	Yichang	Hubei	443001	115	2021-02-08 12:50:48.172+00	2
1001426	901 East Calaveras Blvd	Milpitas	CA	95035	100	2020-03-08 10:27:13.181+00	8
1002321	No. 258 Fuqian Road Section 1	West Central District, Tainan City	\N	70041	133	2020-07-09 06:02:37.465+00	4
1001456	Swissminiatur 6815 Melide	Melide	\N	\N	106	2019-08-29 05:36:08.001+00	7
1001486	Rue du Luxembourg	Thiais	\N	94320	110	2019-09-02 17:24:10.295+00	2
1002221	13201 Ridgedale Dr	Minnetonka	MN	55305	100	2020-08-26 23:00:58.475+00	5
1002191	1233 Rancho Vista Blvd	Palmdale	CA	93551	100	2020-10-20 01:23:18.544+00	4
1001386	22 Pinebush Road	Cambridge	ON	N1R8K5	101	2021-03-19 00:36:01.016+00	9
1001441	Km. 11 Carretera Panamericana, Sur Ejido Peñuelas	Aguascalientes	Aguascalientes	20349	131	2021-03-19 00:47:38.184+00	2
1002201	MacFarlane Way	Fort William	\N	PH33 6AN	108	2021-05-26 19:38:00.056+00	6
1001376	100 Cambridgeside Place	Cambridge	MA	02141	100	2021-04-01 17:51:35.559+00	4
1001431	695 Lingshi Rd	Shanghai	Shanghai	200072	115	2021-02-08 12:36:17.137+00	2
1001436	2610 Bishop Dr	San Ramon	CA	94583	100	2020-03-13 17:12:00.881+00	10
1001491	400 Inland Center Dr	San Bernardino	CA	92408	100	2020-03-04 03:58:22.75+00	4
1001476	By Coop Extra store, Vikesågata 1	Vikeså	\N	4389	105	2020-03-05 15:25:11.091+00	7
1001471	1681 3rd Ave W	Dickinson	ND	58601	100	2020-06-17 20:49:45.231+00	5
1001501	201 North Beeline Hwy	Payson	AZ	85541	100	2019-05-05 16:13:57.709+00	6
1001511	Rua do Complexo Turístico de Lamelas, 1 4870	Ribeira de Pena	\N	\N	125	2019-09-04 15:50:59.199+00	4
1002316	Section 2, Xinhai Road	Da’an District, Taipei City	\N	106	133	2020-07-09 06:10:45.558+00	2
1001536	River Village Place	Island Creek	NC	28466	100	2020-02-09 19:59:20.512+00	3
1001481	18 Sha Tin Centre Street	Sha Tin, New Territories	Hong Kong	\N	115	2020-07-19 21:50:55.797+00	2
1001461	2100 Saskatchewan Ave	Portage la Prairie	MB	R1N 3G3	101	2021-01-28 14:44:43.593+00	11
1001496	No.888 Taiyu Road	Taizhou	Jiangsu	\N	115	2021-02-08 12:08:45.64+00	2
1001516	By Øyrane Torg shopping center	Indre Arna	\N	5260	105	2020-09-12 16:20:47.877+00	9
1001466	5680 23rd Ave S	Fargo	ND	58104	100	2020-09-18 13:58:10.455+00	8
1001506	773 Puyan Road	Hangzhou	Zhejiang	310053	115	2021-02-08 12:15:46.052+00	2
1001451	877 Americana Way, Parking level 7	Glendale	CA	91210	100	2021-03-19 00:54:35.074+00	6
1000764	500 Thomas Edison Pkwy	Port Huron	MI	48060	100	2020-02-09 20:10:37.743+00	6
1000689	Nebbenes service area northbound, next to Nebbenes Kro	Eidsvoll Verk	\N	2074	105	2019-09-08 19:48:28.843+00	14
1001531	6757 Hwy 2	Enfield	NS	B2T 1C8	101	2019-07-05 04:52:16.432+00	7
1001586	No.55, Chenglin Avenue, Hedong District	Tianjin	Tianjin	\N	115	2018-07-14 06:11:41.249+00	1
1001566	255 Av. Adolfo Ruiz Cortines	Ciudad López Mateos	México	52977	131	2018-12-19 01:01:56.463+00	3
1001526	217 Harker Place	Annapolis	MD	21401	100	2019-05-01 18:39:58.793+00	4
1001576	Avenida José Saramago 7580	Alcacér do Sal	\N	\N	125	2019-09-04 15:49:27.299+00	6
1001601	8 Xiantao Avenue	Xiantao	Hubei	433000	115	2018-08-21 22:01:49.011+00	1
1001541	395 Santa Monica Place	Santa Monica	CA	90401	100	2022-07-10 01:24:29.444+00	8
1001521	523 South Shore Center	Alameda	CA	94501	100	2022-04-01 16:37:27.601+00	7
1001571	403 King George Rd	Basking Ridge	NJ	07920	100	2022-04-01 19:40:35.469+00	6
1001636	MarketStreet Lynnfield, 600 Market St	Lynnfield	MA	01940	100	2019-08-03 02:52:13.948+00	6
1001661	20 Mainfrankenpark	Dettelbach	\N	97337	103	2019-08-29 05:52:09.457+00	9
1001656	3625 Douglas St	Victoria	BC	V8Z 0B9	101	2018-12-11 12:16:18.378+00	7
1001641	15315 Washington St	Haymarket	VA	20169	100	2018-12-21 01:41:23.413+00	4
1001626	20500 Southwest Fwy	Richmond	TX	77469	100	2019-05-05 23:03:11.613+00	4
1001631	48123 Highway 1	Big Sur	CA	93920	100	2019-05-25 02:54:20.19+00	6
1001646	By Circle K Øyer, Strømshuguvegen 1	Øyer	\N	2636	105	2019-09-08 19:41:15.117+00	5
1001686	128 Mingzhu Road	Shanghai	Shanghai	201101	115	2018-11-28 01:20:31.829+00	1
1001716	Harderwijkweg 3	Gouda	\N	2803 PW	104	2019-08-29 12:04:00.335+00	8
1001731	777 Seneca Allegany Blvd	Salamanca	NY	14779	100	2019-01-31 12:16:03.089+00	3
1001621	10355 152 St	Surrey	BC	V3R 7C1	101	2021-01-07 05:14:20.345+00	12
1001616	2988 Walker Ave NW	Walker	MI	49544	100	2021-05-18 19:36:44.049+00	7
1002196	243 NE East Ln	Ontario	OR	97914	100	2021-05-12 02:22:24.183+00	7
1001611	1951 E 20th St	Chico	CA	95928	100	2021-06-02 17:58:08.858+00	5
1000669	Innsbruckerstrasse 40, Hotel MOHR life resort	Lermoos	\N	6631	102	2021-11-22 07:49:42.322+00	6
1001741	150 Potomac Passage	National Harbor	MD	20745	100	2019-02-20 02:47:40.192+00	3
1001746	Haabakken Kro, Håbakken 1	Lærdal	\N	6887	105	2020-03-05 15:20:50.602+00	8
1001751	601 Xindu Road	Yancheng	Jiangsu	\N	115	2019-01-23 03:26:39.642+00	1
1001691	3155 Argentia Rd	Mississauga	ON	L5N 8E1	101	2019-01-25 06:24:03.905+00	5
1001761	10 Route 6A	Orleans	MA	02653	100	2019-12-07 18:12:00.716+00	4
1001726	10665 Big Bend	Riverview	FL	33579	100	2019-02-21 05:00:21.92+00	3
1001756	1102 7th St	Parkersburg	WV	26101	100	2019-03-06 01:50:28.952+00	2
1000709	S/N Carrer de Leonardo Da Vinci Paterna	Valencia	\N	46980	117	2019-09-04 16:06:00.946+00	9
1001696	265 Tom Hill Sr Rd	Macon	GA	31210	100	2019-06-18 14:17:52.509+00	7
1001721	1250 Richmond Ave #302	Staunton	VA	24402	100	2019-01-31 00:56:01.182+00	5
1002216	9535 E County Line Rd	Englewood	CO	80112	100	2020-06-13 14:46:52.047+00	5
1002226	3779 Boston St	Baltimore	MD	21224	100	2020-10-21 17:00:13.649+00	6
1001681	1475 Tharp Rd	Yuba City	CA	95993	100	2019-05-05 15:51:03.179+00	5
1002236	3400 Howland Blvd	Deltona	FL	32725	100	2020-05-06 13:14:50.987+00	5
1001771	1-3 Parklands Ave	Motherwell	\N	ML1 4WQ	108	2019-12-23 14:15:18.714+00	6
1001736	70 E Goodale St	Columbus	OH	43215	100	2019-02-14 13:00:38.021+00	3
1002211	Clara Barton Service Area	Pedricktown	NJ	08067	100	2021-04-08 18:24:13.514+00	9
1001701	7289 Garden Rd	West Palm Beach	FL	33404	100	2022-06-20 00:02:34.223+00	7
1001776	382 Rue Saint Jean	Saint Leonard	NB	E7E 2B6	101	2019-02-20 22:35:12.564+00	2
1001816	Route Nationale 152 Chemin De Melun	Ury	\N	\N	110	2019-09-02 17:18:10.838+00	5
1001791	No. 1 Binhai Road	Yantai	Shandong	264000	115	2019-03-14 05:00:09.692+00	1
1001796	7940 W Irlo Bronson Memorial Hwy	Kissimmee	FL	34747	100	2020-02-04 04:30:43.996+00	11
1001851	Via Brescia, 53-63	Torri di Quartesolo	Vicenza	36040	113	2019-10-24 05:57:03.581+00	8
1001801	186号-168号 Zhen Xing Lu, Zhaoyang Qu	Zhaotong	Yunnan	\N	115	2019-03-20 20:55:29.498+00	1
1001826	15 6th Financial Street	Wuxi	Jiangsu	214000	115	2019-04-03 05:32:44.586+00	1
1001786	Hauptstr. 201	Kappel-Grafenhausen	\N	77966	103	2019-08-29 05:37:57.424+00	8
1001831	11 Court House South Dennis Rd	Cape May	NJ	08210	100	2019-07-29 16:59:19.605+00	6
1001811	999 W Century Ave	Bismarck	ND	58503	100	2020-06-21 01:14:52.527+00	7
1001766	500 Route 73 South	Marlton	NJ	08053	100	2020-09-26 00:28:21.385+00	5
1001921	1115 montée des Pionniers	Terrebonne	QC	J6V 0E1	101	2020-05-22 01:54:36.642+00	4
1001806	880 Baiyun North Ave	Guangzhou	Guangdong	510000	115	2021-02-27 22:19:29.655+00	2
1001836	4141 Morrish Rd	Swartz Creek	MI	48473	100	2021-03-22 23:33:48.904+00	8
1001846	IJsselmeerweg 3	Naarden	\N	1411 AA	104	2021-04-26 13:07:19.091+00	11
1001821	No.188 Jiafeng Road	Tianjin	Tianjin	300450	115	2021-04-26 23:23:20.304+00	2
1002231	1700 E Washington St	Mount Pleasant	IA	52641	100	2021-06-11 02:44:48.021+00	5
1001781	Essex Lane	London	Kings Langley	WD4 8PN	108	2022-07-10 21:40:57.792+00	4
1001931	106 Sidney St	Maple Creek	SK	S0N 1N0	101	2020-05-09 04:52:08.058+00	10
1001911	2801 Route 73 South	Maple Shade	NJ	08052	100	2020-02-25 00:39:27.421+00	5
1001871	255 Robbinsville Allentown Rd	Robbinsville Twp	NJ	08691	100	2019-08-29 06:52:39.132+00	8
1001861	4994 Great Alpine Rd, Ovens VIC 3738	Ovens	VIC	3738	116	2019-07-02 04:57:29.82+00	2
1001881	1115 High Ridge Rd	Stamford	CT	06905	100	2019-08-20 16:14:28.292+00	9
1001901	2905 Rockford St	Mt Airy	NC	27030	100	2019-07-23 06:32:15.191+00	4
1001886	Truby St	San Francisco	CA	94129	100	2019-06-05 22:22:05.823+00	3
1001926	경상남도 함양군 함양읍 고운로 298	함양군	Gyeongsang	\N	137	2019-06-28 13:38:53.79+00	1
1001866	Autostrada A7 Genova-Milano, Dorno Autogrill area	Dorno	PV	\N	113	2019-09-04 16:23:33.994+00	5
1001876	1147 Sunrise Hwy	Copiague	NY	11726	100	2020-03-07 12:56:56.444+00	5
1001891	London Rd, Marks Tey	Colchester	\N	CO6 1DU	108	2020-08-02 05:46:21.029+00	5
1001856	Stirling Center Dr	Lafayette	LA	70501	100	2020-10-26 20:50:03.377+00	9
1001896	890 McKeown Ave	North Bay	ON	P1B 8M1	101	2020-10-27 20:38:44.413+00	11
1001966	105 Maynard St	Williamsport	PA	17701	100	2020-02-27 05:56:50.923+00	5
1001946	464 6th St	Williams	CA	95987	100	2020-03-13 17:14:02.718+00	5
1001951	208 Vintage Way	Novato	CA	94945	100	2020-04-02 12:21:45.904+00	10
1001916	蘆竹區南崁路一段112號1樓	Taoyuan City	\N	\N	133	2021-07-10 00:40:34.276+00	5
1002276	8312 Dixie Highway	Miami	FL	33143	100	2020-06-13 00:51:14.027+00	3
1001956	14480 Wards Rd	Lynchburg	VA	24502	100	2020-03-06 22:33:16.989+00	6
1001936	7036 Grand Geneva Way	Lake Geneva	WI	53147	100	2019-09-26 20:55:23.216+00	7
1002256	Cnr Nash and Monkland St	Gympie	QLD	4570	116	2020-04-18 15:56:13.276+00	2
1001976	12300 Jefferson Ave	Newport News	VA	23602	100	2020-03-08 08:07:42.828+00	6
1002006	903 East Main St	Meriden	CT	06450	100	2020-03-08 08:02:21.054+00	6
1001991	2620 W Broward Blvd	Fort Lauderdale	FL	33312	100	2020-04-08 13:17:51.343+00	6
1001996	407 Main St	Jackman	ME	04945	100	2019-11-04 21:20:12.379+00	5
1002001	6060 Minoru Blvd	Richmond	BC	V6Y 1Y2	101	2020-01-29 12:20:15.413+00	3
1001941	165 Round Hill Rd	Fairfield	CT	06824	100	2021-10-23 13:27:02.752+00	8
1001961	3601 32nd Ave S	Grand Forks	ND	58201	100	2021-08-30 16:03:57.797+00	6
1002261	6985 Nugget St	Evansville	WY	82636	100	2022-04-01 19:49:09.023+00	8
1002026	Brekkvasselv	Brekkvasselv	\N	7896	105	2022-07-14 04:11:35.195+00	6
1002041	1181 Locust St	Walnut Creek	CA	94596	100	2020-03-04 04:01:28.801+00	4
1002266	E18 northbound, Langrønningen Circle K service station	Stathelle	\N	3960	105	2020-07-06 22:16:10.011+00	6
1001971	1970 Main St	Irvine	CA	92614	100	2020-12-31 18:41:28.428+00	13
1002271	158 Main St	Ashland	NH	03217	100	2020-08-25 21:53:22.502+00	4
1002281	Av. do Algarve	Almancil	\N	8135-182	125	2020-09-10 14:31:56.928+00	5
1002121	충남 당진시 송악읍 송악로 63	당진	48	\N	137	2019-12-19 20:53:54.818+00	1
1002101	5150 Franklin St	Michigan City	IN	46360	100	2020-03-24 12:36:13.68+00	4
1001981	651 Kapkowski Rd	Elizabeth	NJ	07201	100	2021-03-22 23:36:06.638+00	7
1002011	4657 Lougheed Highway	Burnaby	BC	V5C 3Z6	101	2022-03-15 06:05:21.103+00	3
1002046	Zápor út	Szeged	\N	6728	126	2021-12-15 14:56:58.763+00	9
1002246	12059 Cactus Rd	Adelanto	CA	92301	100	2022-07-10 20:39:35.106+00	2
1002031	SABA Parking Nuevos Ministerios, Paseo de la Castellana, 100	Madrid	Madrid	28046	117	2022-05-13 09:08:58.269+00	9
1001986	c) Adolfo Suárez, 2	Salamanca	\N	37008	117	2022-07-10 21:42:10.041+00	5
1002076	1221 Arthur St W	Thunder Bay	ON	P7K 1K2	101	2019-12-23 22:08:36.035+00	4
1002096	2404 E Katella Ave	Anaheim	CA	92806	100	2020-02-03 23:46:06.44+00	6
1002081	Calle Inca Garcilaso, 1	Sevilla	Andalucia	41092	117	2020-01-01 08:28:10.133+00	10
1002286	645 Lansdowne St W	Peterborough	ON	K9J 7Y5	101	2020-08-07 05:51:55.198+00	5
1002036	北京市北京市朝阳区阜通东大街	Beijing	Beijing	\N	115	2021-01-23 10:13:22.213+00	3
1002051	ABC gas station, Loimijoentie 89	Huittinen	\N	32700	120	2020-09-24 15:55:48.035+00	11
1002086	No.48 Longwan Road	Huludao	Liaoning	\N	115	2021-01-23 09:53:16.074+00	2
1002131	경기도 가평군 설악면 미사리로 3	Gapyeong	41	\N	137	2020-03-13 07:54:34.447+00	2
1002166	No. 297, Section 2, Wenxing Road	Zhubei City	Hsinchu County	\N	133	2021-11-26 23:38:37.942+00	6
1002136	31 Johnsonville Road	Johnsonville	Wellington	6037	138	2021-04-16 13:10:29.665+00	4
1002111	4990 Houston Rd	Florence	KY	41042	100	2022-06-20 00:04:24.065+00	9
1002116	No. 64, Section 1, Zhongshan Road	Taibao City	Chiyai County	61251	133	2022-06-27 04:08:24.652+00	7
1002016	12826A Ocean Gateway	West Ocean City	MD	21842	100	2022-04-01 19:33:38.249+00	5
1002141	19128 112th Ave NE	Bothell	WA	98011	100	2022-04-01 19:47:57.06+00	5
1002341	M6 Motorway (N) Junction 14/15	Stone, Staffordshire,	\N	ST15 0EU	108	2020-07-29 20:05:13.461+00	1
1002151	341 Hastings St N	Bancroft	ON	K0L 1C0	101	2021-01-16 00:23:13.123+00	6
1002371	No. 13號, Lane 751, Kangning Street	Xizhi District, New Taipei City	\N	221	133	2020-09-10 14:33:04.823+00	3
1000313	184 Florida's Turnpike	Okeechobee	FL	34972	100	2020-08-18 21:48:53.878+00	3
1000543	Van der Valk Allee 2, by Spreewald Parkhotel Van der Valk	Bersteland	\N	15910	103	2020-09-12 19:20:27.425+00	3
1002381	990 Avenida Vista Hermosa	San Clemente	CA	92673	100	2020-10-03 05:27:23.196+00	6
1002361	3202 Pence Ln	Ozark	AR	72949	100	2020-10-26 15:43:30.428+00	7
1002411	668 S Alameda St	Los Angeles	CA	90021	100	2020-09-19 21:22:30.491+00	1
1002146	Adda Nord	Caravaggio	Provincia di Bergamo	24043	113	2021-03-05 17:06:16.307+00	5
1002386	Skiferveien 4	Alta	\N	9511	105	2021-03-24 16:42:03.685+00	9
1002156	3000 Countryside Dr	Turlock	CA	95380	100	2022-07-10 20:39:11.584+00	5
1002406	Baktevarri 1, 9520	Kautokeino	\N	9520	105	2021-10-06 03:21:19.672+00	7
1002331	Kringlumýrarbraut 100	Reykjavik	\N	108	155	2021-07-30 16:34:31.279+00	8
1002071	910 Eastlake Pkwy	Chula Vista	CA	91915	100	2021-08-18 23:11:49.901+00	5
1002056	396 Wellington Rd N, by Tesla store	Stockport	\N	SK4 5AD	108	2021-08-19 20:22:01.261+00	8
1002391	2415 Tarpon Bay Blvd	Naples	FL	34119	100	2021-09-13 16:36:05.654+00	8
1002461	14581 US Hwy 97a	Entiat	WA	98822	100	2020-12-24 14:41:18.965+00	4
1002106	1699 Gubei Road	Minhang District	Shanghai	\N	115	2021-01-23 10:15:42.671+00	3
1002426	808 IL-59 S	Aurora	IL	60504	100	2020-10-31 21:46:05.659+00	3
1002351	2000 Crater Lake Hwy	Medford	OR	97504	100	2020-11-05 04:22:45.705+00	5
1002291	3790 Center St NE	Salem	OR	97301	100	2020-11-05 21:24:15.933+00	8
1002486	Cyberport, Telegraph Bay, 100 Cyberport Road	Hong Kong	Hong Kong	\N	115	2020-11-20 15:04:22.745+00	1
1002306	2 Koraenui St	Mangaweka	\N	4797	138	2020-11-24 11:18:30.917+00	2
1002336	7 Rust Avenue	Whangarei	\N	0110	138	2020-12-02 14:01:17.746+00	3
1002466	Adderstone Garage	Warenford, Belford	\N	NE70 7JU	108	2021-07-13 15:52:49.467+00	16
1002471	525 BC-97	West Kelowna	BC	V1Z 4C9	101	2021-03-05 05:27:26.815+00	3
1002451	1202 South Caton Ave	Halethorpe	MD	21227	100	2021-04-01 02:38:23.009+00	8
1002161	237 E 120th Ave	Thornton	CO	80233	100	2021-08-10 21:36:24.967+00	12
1002441	2656 N Elston Ave	Chicago	IL	60647	100	2021-05-31 06:15:14.728+00	4
1002326	2135 Robertson Rd	Nepean	ON	K2H 8G3	101	2022-06-20 00:05:54.709+00	10
1002446	9500 Preston Hwy	Louisville	KY	40229	100	2021-10-06 03:28:02.54+00	5
1002421	Eni	Obfelden	\N	8912	106	2020-11-20 20:47:06.212+00	6
1002186	Pfarrer-Fink-Weg	Biberwier	\N	106633	102	2020-12-01 15:17:32.441+00	9
1002511	1201 2nd Ave	Seattle	WA	98101	100	2020-12-08 15:15:26.269+00	5
1002396	Moosbachstrasse 1	Affoltern am Albis	\N	8910	106	2020-12-14 01:03:24.677+00	10
1002476	25155 Maren Way	Land O’ Lakes	FL	34639	100	2021-02-03 16:25:54.103+00	5
1002376	43950 Pacific Commons Blvd	Fremont	CA	94538	100	2020-11-20 14:32:34.063+00	5
1000483	Scheinfelder Straße 15	Geiselwind	\N	96160	103	2020-11-26 15:39:46.211+00	6
1002126	Avenue de Genève 1751	Sallanches	\N	74700	110	2020-11-30 10:55:59.952+00	3
1002496	Best Western Hotel Brunnenhof, Hauptstraße 231	Weibersbrunn	\N	63879	103	2021-01-06 14:46:44.888+00	5
1002366	Small Heath	Birmingham	Birmingham	B10 0BW	108	2020-11-28 17:40:04.587+00	4
1002506	291 Danbury Rd	New Milford	CT	06776	100	2021-03-30 13:53:35.442+00	5
1002501	9717 Northlake Centre Pkwy F	North Charlotte	NC	28216	100	2021-07-12 17:40:09.416+00	7
1002491	1038 S 300 W	Salt Lake City	UT	84101	100	2022-05-08 19:44:58.459+00	5
1000186	Kai Tak Cruise Terminal, 33 Shing Fung Road, Kowloon	Hong Kong	Hong Kong	\N	115	2022-07-10 20:54:42.391+00	4
1000999	33 Tsing King Road	Hong Kong	Hong Kong	\N	115	2022-07-10 21:30:19.265+00	3
1002091	By entrance A of Liertoppen shopping center	Lierskogen	\N	3420	105	2020-12-08 17:35:19.66+00	14
1002346	151 Wagner Rd	Petersburg	VA	23805	100	2020-12-12 21:52:24.415+00	5
1000569	City Park Hotel & Residence, Wyspiańskiego 26A	Poznań	\N	60-751	119	2020-12-14 19:42:05.483+00	14
1002356	Luitpoldpark	Wörth an der Isar	\N	84109	103	2020-12-21 02:58:30.405+00	10
1002431	533 N 1st St	Montrose	CO	81401	100	2020-12-23 13:20:03.184+00	5
1001906	23401 Civic Center Way	Malibu	CA	90265	100	2020-12-18 02:07:45.427+00	3
1002586	Wuxi World Trade Center, 68 Taihu East Avenue	Wuxi	Jiangsu	\N	115	2021-01-28 12:37:46.359+00	1
1002526	Eifel-Ardennen-Straße	Nürburg	\N	53520	103	2021-01-07 20:05:44.218+00	4
1002206	548 Monmouth Rd	Millstone	NJ	08510	100	2021-03-18 12:50:58.494+00	7
1002521	370 Commercial Ct	Venice	FL	34292	100	2022-02-15 20:27:27.63+00	4
1002541	5735 Philips Hwy	Jacksonville	FL	32216	100	2021-08-18 23:25:25.536+00	4
1002581	Cangzhou Golden Lion International Hotel, No.18 Yingbin Avenue	Cangzhou	Hebei	\N	115	2021-01-28 12:29:53.589+00	1
1002592	Taihua Jinmao International, intersection of Fenghui South Road and Keji 2nd Road, Yanta District	Xi'an	Shaanxi	\N	115	2021-01-28 13:41:07.984+00	1
1002598	Wisdom Mountain Virtual Industrial Park, Gonghua Road and Rongyuan Road, Xiqing District	Tianjin	Tianjin	\N	115	2021-01-28 13:46:43.173+00	1
1002608	Floor B2, Caiyunli Underground Parking Lot, No. 97 Shulin Street, Xishan District	Kunming	Yunnan	\N	115	2021-01-29 18:27:35.627+00	1
1002615	Area M, Floor 3, Underground Parking Lot, Shanghai Aegean Shopping Park, 1588 Wuzhong Rd	Shanghai	Shanghai	\N	115	2021-01-29 18:38:42.248+00	1
1002625	Area G, Floor B2, Changyingtian Street Shopping Center, Building 1, Changtong No. 1, Courtyard	Beijing	Beijing	\N	115	2021-01-29 18:53:05.53+00	1
1002630	Area D, Floor B3, B3, Yueyang Plaza, 1601 Nanjing West Road, Jing'an District	Shanghai	Shanghai	\N	115	2021-01-29 18:58:55.835+00	1
1002556	1808 Fort Jones Rd	Yreka	CA	96097	100	2021-05-26 15:27:22.565+00	4
1002536	500 Pointer Trail	Van Buren	AR	72956	100	2021-03-20 00:08:24.494+00	4
1002546	Redbridge Park and Ride	Oxford	Oxford	\N	108	2022-06-24 17:16:59.181+00	3
1002566	21001 San Ramon Valley Blvd	San Ramon	CA	94583	100	2021-12-10 23:05:09.524+00	5
1002561	44900 St Andrews Church Rd	California	MD	20619	100	2022-04-01 19:32:32.661+00	6
1002551	3267 Proffit Rd	Charlottesville	VA	22911	100	2022-06-20 00:05:26.933+00	6
1002620	1st Floor, Jianghua City, No. 88 Xing'an Middle Rd	Ankang	Shaanxi	\N	115	2021-01-29 18:46:53.791+00	1
1002641	Lavande Hotel (Capital Airport International Exhibition Store), No. 7 East Dulan Section, Shunsha Rd	Beijing	Beijing	\N	115	2021-01-29 19:11:11.87+00	1
1002648	Second basement of Xiamen Jingxi Hotel, No.469 Hubin South Rd	Xiamen	Fujian	\N	115	2021-01-29 19:18:45.178+00	1
1002654	Area C18, B2, Underground Second Floor	Qingdao	Shandong	\N	115	2021-01-29 19:25:06.435+00	1
1002659	A06/A15/A16/A26, Basement Floor, Longquan Wuyue Plaza Parking Lot, Dalian North Rd	Chengdu	Sichuan	\N	115	2021-01-29 19:30:44.264+00	1
1002664	Area F, Basement Floor, Fushang Development Building, No. 1219, Moganshan Rd	Hangzhou	Zhejiang	\N	115	2021-01-29 19:36:41.63+00	1
1002679	6 MA-128	Newton	MA	02462	100	2021-02-04 13:30:46.356+00	3
1002699	No. 14 Xijin West Road	Qilihe District, Lanzhou City	Gansu Province	\N	115	2021-02-06 21:34:54.581+00	1
1002694	4th Floor, Parking Lot, South Bailian Shopping Center, 7388 Humin Rd	Shanghai	Shanghai	\N	115	2021-02-14 02:31:11.612+00	4
1002689	No. 3333 Langzhou Road, Dingcheng District	Changde	Hunan	\N	115	2021-02-08 11:53:57.764+00	2
1002603	4125 N Sheridan Rd #20	Peoria	IL	61614	100	2021-04-05 03:25:16.983+00	9
1002674	65 Laconia Rd	Tilton	NH	03276	100	2021-10-10 02:43:59.857+00	5
1002709	Zone B, Basement Floor, Jinlei International Hotel, Hutian South Ave and South Ring Rd	Huaihua	Hunan	\N	115	2021-02-08 11:44:00.178+00	2
1002704	2nd Floor, Underground Parking Lot, Shangri-La Hotel, No.1 Xiangyuan Rd	Wenzhou	Zhejiang	\N	115	2021-02-08 11:45:04.956+00	2
1002720	Area E, 3rd Floor, Yintai Creative City, No. 35, Luoyu Road, Hongshan District	Wuhan	Hubei	\N	115	2021-02-09 08:38:11.732+00	1
1002734	No. 818, Ganjiang East Road, Gusu District	Suzhou	Jiangsu	\N	115	2021-02-09 09:00:47.154+00	2
1002739	1st Floor, Underground Parking Lot, Crowne Plaza Hotel, No. 1 Huizhou Avenue, Tunxi District	Huangshan	Anhui	\N	115	2021-02-09 09:16:10.778+00	1
1002755	No. 3, Nanfeng Avenue, Southwest Street, Sanshui District	Foshan	Guangdong	\N	115	2021-02-09 09:47:32.682+00	1
1002773	Area A, B1 Floor, Xixitian Street, Longhu, Shuanglong Street, Xihu District	Hangzhou	Zhejiang	\N	115	2021-02-09 11:32:32.391+00	1
1002790	150 meters north of the intersection of Shenghua Road and Tianfu 2nd Street, Wuhou District	Chengdu	Sichuan	\N	115	2021-02-09 12:00:09.799+00	1
1002714	No. 8 Chifeng Road, Heping District, Tianjin City	Tianjin	Tianjin	\N	115	2021-02-08 13:17:54.656+00	1
1002727	Zone G2, B2, Zhongbang Century Plaza, No.198, Xiangyong Road, Hedong, Lengshuitan District	Yongzhou	Hunan	\N	115	2021-02-09 08:49:53.82+00	1
1002744	Ground parking lot, No. 44, Industrial South Road, Lixia District	Jinan	Shandong	\N	115	2021-02-09 09:25:43.445+00	1
1002749	Luohong Photography Art Gallery, Exit of Yanglin Toll Station, Tianzhulin Road, Shunyi District	Beijing	Beijing	\N	115	2021-02-09 09:34:55.302+00	1
1002761	Floor B3, Underground Parking Lot of Mixc City, No. 8 Shuangqing Road, Chenghua District	Chengdu	Sichuan	\N	115	2021-02-09 11:14:00.006+00	1
1002767	300 meters north of Sinopec Gas Station, No.408 Kandun West Road, Cixi City	Ningbo	Zhejiang	\N	115	2021-02-09 11:22:26.541+00	1
1002778	233 Huaxia Avenue, Hengdian, Dongyang City	Jinhua	Zhejiang	\N	115	2021-02-09 11:44:58.049+00	1
1002785	Floor B2, Underground Parking Lot, Sheraton Hotel, No. 292 Chezhan Avenue, Lucheng District	Wenzhou	Zhejiang	\N	115	2021-02-09 11:53:05.457+00	1
1002796	Underground Parking Lot of Meiyuan International Hotel, No.343 Yuanyang Road, Jin'an District	Fuzhou	Fujian	\N	115	2021-02-14 02:07:36.018+00	1
1002802	West Area, West Parking Area, G4202 Ring Expressway, Wenjiang District	Chengdu	Sichuan	\N	115	2021-02-14 02:15:41.346+00	1
1002808	Lingyun One Street, No.280, Shangzhong West Road, Xuhui District	Shanghai	Shanghai	\N	115	2021-02-14 02:28:25.482+00	1
1002814	3F-B, 3rd Floor, 3rd Floor, No. 205 Maoming South Road, Huangpu District, Shanghai	Shanghai	Shanghai	\N	115	2021-02-14 02:39:08.093+00	1
1002819	Shanghai 889 Square, No. 889 Wanhangdu Road, Jing'an District	Shanghai	Shanghai	\N	115	2021-02-14 02:46:01.201+00	1
1002834	The second floor parking lot, Building B2, Yuexiu Fortune Mansion, No.149 Xiwan Road, Liwan District	Guangzhou	Guangdong	\N	115	2021-02-14 03:55:53.484+00	1
1002867	Xinhua Department Store CC park, Beijing Middle Road, Jinfeng District	Yinchuan	Ningxia	\N	115	2021-02-14 05:32:25.381+00	1
1002899	The ground parking lot behind HUALUXE Hotel, No. 12 Hengshan Road, Xuhui District	Shanghai	Shanghai	\N	115	2021-02-14 06:35:09.564+00	1
1002906	Underground parking lot of Wenzhou Import and Trade Port, No. 1 Gaoang Road, Ouhai District	Wenzhou	Zhejiang	\N	115	2021-02-14 06:44:35.859+00	1
1002912	Ground parking lot of Jinyaofeng Resort in Liannan Yao Autonomous County	Qingyuan	Guangdong	\N	115	2021-02-14 06:52:14.151+00	1
1002924	No. 698, Tonghui North Road, Xiaoshan District	Hangzhou	Zhejiang	\N	115	2021-02-14 10:15:34.714+00	1
1002930	No. 1107-1108, 1st Floor, Century Car City, Kuiqi West Road and Foshan Avenue, Chancheng District	Foshan	Guangdong	\N	115	2021-02-14 10:34:53.506+00	1
1002940	29 Yinchuan West Road, Shinan District	Qingdao	Shandong	\N	115	2021-02-14 11:10:57.695+00	1
1002950	Badaling Ski Resort, Badaling Town, Yanqing District	Beijing	Beijing	\N	115	2021-02-17 09:08:59.315+00	3
1002841	B3 Floor, Dongyuan Yuehui Xinxin Park Shopping Center, No. 37 Hongsheng Road, Jiangbei District	Chongqing	Chongqing	\N	115	2021-02-14 04:03:35.491+00	1
1002847	Underground Parking Lot, Huatong Hotel, Xin'an Avenue, Xixiu District	Anshun	Guizhou	\N	115	2021-02-14 04:11:39.068+00	1
1002826	Underground Parking Lot, Yangdian Building, No.553, East Road Bridge Avenue, Luqiao District	Taizhou	Zhejiang	\N	115	2021-02-14 04:11:56.682+00	2
1002854	Longteng Home Living Museum, No. 929, Wuzhou Street, Wucheng District	Jinhua	Zhejiang	\N	115	2021-02-14 04:22:28.724+00	1
1002861	Millennium Resort Wuyi Mountain, No. 106, Dawangfeng South Road, Wuyishan City Resort, Nanping City	Wuyishan	Fujian	\N	115	2021-02-14 04:47:05.818+00	1
1002874	Area B, Basement Floor, No. 518, Fengshan South Road, Shangyu District	Shaoxing	Zhejiang	\N	115	2021-02-14 05:43:05.368+00	1
1002880	Orange Power Ssangyong Charging Station, No. 6058 Longgang Avenue, Longgang District	Shenzhen	Guangdong	\N	115	2021-02-14 05:54:10.077+00	1
1002888	Zhepeng Hotel, 100 Kaiyuan Road, Huiji District	Zhengzhou	Henan	\N	115	2021-02-14 06:07:21.737+00	1
1002894	Southern District of Xilong Service Area, Shenjiahu Expressway, Anji County (Shanghai direction)	Huzhou	Zhejiang	\N	115	2021-02-14 06:18:24.045+00	1
1002918	Intersection of Boai Road and Yixian Road, Torch Development Zone	Zhongshan	Guangdong	\N	115	2021-02-14 07:01:03.063+00	1
1001104	Unit 1F020, West Yintai City, No. 380 Fengtan Road	Hangzhou	Zhejiang	\N	115	2021-02-14 09:58:05.01+00	2
1002935	101, Building 6, No. 9, Qunxian East Road, Yuecheng District	Shaoxing	Zhejiang	\N	115	2021-02-14 10:50:53.259+00	1
1003028	Car Park, B1, Basement Floor, Sheraton Huafa Hotel, Xiangzhou District	Zhuzai	Guangdong	\N	115	2021-02-21 03:53:57.794+00	1
1003034	Puning Plaza, Huancheng North Roade two-story parking lot of Puning Plaza, Huancheng North Road	Puning	Guangdong	\N	115	2021-02-21 04:02:40.77+00	1
1002970	Area C, Floor B2, Underground Parking Lot, 2229 Hunan Road, Pudong New Area	Shanghai	Shanghai	\N	115	2021-02-21 01:58:13.593+00	1
1002965	Aire de Service de l&#39;Abis	Saint Jeoire-Prieuré	\N	73190	110	2021-05-08 00:58:43.056+00	9
1002991	Phase I of Zhongshan Resettlement House, Maqing Road, Haicang District	Xiamen	Fujian	\N	115	2021-02-21 02:36:56.91+00	1
1003002	Area B, Floor B1, Underground Garage, Kaifeng International Financial Plaza	Qingdao	Shandong	\N	115	2021-02-21 02:52:00.497+00	1
1003007	B4 Floor, Block 13, Luneng Star City, 100 Kunlun Avenue, Yubei District	Chongqing	Chongqing	\N	115	2021-02-21 02:59:31.002+00	1
1003018	Shenyun West 2nd Road, Nanshan District	Shenzhen	Guangdong	\N	115	2021-02-21 03:14:22.196+00	1
1003023	Changping New First City, No. 23 Changjiang Road, Longhu District	Shantou	Guangdong	\N	115	2021-02-21 03:41:37.383+00	1
1003039	No. 1 Rongyuan Road, Huayuan New Technology Industrial Park, Xiqing District	Tianjin	Tianjin	\N	115	2021-02-21 04:12:28.84+00	1
1002945	north side of the intersection of Zhenda Road and Jintan South Road, Laishan District	Yantai	Shandong	\N	115	2021-02-17 09:06:08.75+00	2
1002955	No. 120, Yanta West Road, Yanta District	Xi'an	Shaanxi	\N	115	2021-02-17 09:09:52.259+00	2
1003054	Area A, B1, Jiuting U Tiandi, No.178 Puhui Road, Jiuting Town	Shanghai	Shanghai	\N	115	2021-02-21 04:36:31.155+00	1
1003059	Ground Parking Lot No. 3026, Yanhe South Road, Luohu District	Shenzhen	Guangdong	\N	115	2021-02-21 04:43:24.245+00	1
1002976	Area E, Basement 2 of Shuoguo Times Square, Jinchao Avenue, Linchuan District	Fuzhou	Jiangxi	\N	115	2021-02-21 02:12:35.165+00	1
1002981	B1 Floor, No. 1 Kunlun Street, Ranghu Road District	Daqing	Heilongjiang	\N	115	2021-02-21 02:20:06.89+00	1
1002986	No. 6, Hongjun Avenue	Ruijin	Jiangxi	\N	115	2021-02-21 02:28:25.314+00	1
1002996	Ground parking lot of World Merchants Center, Xuehai Road, Meijiang District	Meizhou	Guangdong	\N	115	2021-02-21 02:44:44.291+00	1
1003012	Hanhai Haishang Parking Lot, No. 32 Dongfeng Road, Jinshui District	Zhengzhou	Henan	\N	115	2021-02-21 03:07:03.573+00	1
1003044	Underground parking lot at the southeast corner of Xiasha Intime Department Store, Jianggan District	Hangzhou	Zhejiang	\N	115	2021-02-21 04:20:26.878+00	1
1003049	intersection of Tiyuguan Road and Zhenqi Street, Zhenxing District	Dandong	Liaoning	\N	115	2021-02-21 04:30:09.767+00	1
1003065	Underground Parking Lot, Longhutian Street, Minhang, No. 1000 Jianchuan Road, Minhang District	Shanghai	Shanghai	\N	115	2021-02-21 04:51:07.943+00	1
1001556	5 Hujing Ave	Dongguan	Guangdong	\N	115	2021-02-27 22:15:45.451+00	2
1003070	B1 Floor, No. 996 Qianjin Street, Chaoyang District	Changchun	Jilin	\N	115	2021-02-21 04:58:10.309+00	1
1003087	District 16, Jiuhua Resort, No.75 Shunsha Road, Changping District	Beijing	Beijing	\N	115	2021-02-21 06:00:34.679+00	1
1003093	No. 266 Qibei Road, Luodianmian Town, Baoshan District	Shanghai	Shanghai	\N	115	2021-02-21 06:08:59.485+00	1
1003098	Sunshine World Ground Parking Lot, No. 3181 Zhangyang North Road, Pudong New Area	Shanghai	Shanghai	\N	115	2021-02-21 06:27:19.687+00	1
1003104	Dongding Shopping Center, Lane 1255, Xinsongjiang Road, Songjiang District	Shanghai	Shanghai	\N	115	2021-02-21 06:40:02.456+00	1
1003109	Yuanda Cultural and Creative Park Ground Parking Lot, No. 5 Jingbo Middle Road, Yubei District	Chongqing	Chongqing	\N	115	2021-02-21 06:46:59.051+00	1
1003119	Underground Parking Lot, Fanhai City Plaza, Jianghan District	Wuhan	Hubei	\N	115	2021-02-21 07:03:46.363+00	1
1003124	3 km from Huanglongdong to Sanguansi Township, Sanguansi Township, Wulingyuan District	Zhangjiajie	Hunan	\N	115	2021-02-21 10:09:52.104+00	1
1003134	485-487, Area 4A, B2 Floor, No.163 Zhoujiadu Road, Pudong New Area	Shanghai	Shanghai	\N	115	2021-02-21 10:28:28.137+00	1
1003144	Parking Lot B1, Warner Park City, No. 12, Second Avenue, Binhai New District	Tianjin	Tianjin	\N	115	2021-02-21 10:43:57.752+00	1
1003150	Xing Shanghui, No.28 Longping West Road, Longgang District	Shenzhen	Guangdong	\N	115	2021-02-21 10:55:09.249+00	1
1003167	62-70, B3 Floor, Hejing Mofang Shopping Center, No. 1 Chongwenmenwai Street, Dongcheng District	Beijing	Beijing	\N	115	2021-02-21 11:24:37.81+00	1
1003173	Millennium Shopping Center Parking Lot, No. 11 Dianchang Road, Fengtai District	Beijing	Beijing	\N	115	2021-02-21 11:33:26.263+00	1
1003178	Parking lot of Jinhui Global Plaza, turn to Jinhutuo 1st Road, Yanta South Road, Yanta District	Xi'an	Shaanxi	\N	115	2021-02-21 11:41:59.894+00	1
1003075	Underground Parking Lot, Xincheng Wuyue Plaza, Aixi North Road, Qingshan Lake District	Nanchang	Jiangxi	\N	115	2021-02-21 05:44:59.581+00	1
1003081	LG Floor, China Resources Vientiane, No. 176, Yantai Road, Donggang District	Rizhao	Shandong	\N	115	2021-02-21 05:53:44.157+00	1
1003114	Underground Parking Lot, Baokuang International Building, No.218 Wusong Road, Hongkou District	Shanghai	Shanghai	\N	115	2021-02-21 06:54:53.946+00	1
1003129	B1 floor at Shangri-La Hotel, 66 Renmin Road, Zhongshan District	Dalian	Liaoning	\N	115	2021-02-21 10:18:42.646+00	1
1003139	B3 Floor, Zhongxin Building, 15 Yueliangwan Road, Suzhou Industrial Park	Suzhou	Jiangsu	\N	115	2021-02-21 10:35:24.195+00	1
1003155	Shanjing Outlet Plaza, No.555 Qiushi Road, Haishu District	Ningbo	Zhejiang	\N	115	2021-02-21 11:04:57.474+00	1
1003162	West gate of Baisheng Street, Changfa Square	Zhenjiang	Jiangsu	\N	115	2021-02-21 11:12:37.194+00	1
1003183	Xinglong Grand Outlet, No. 5 Yingpan North Street	Shenyang	Liaoning	\N	115	2021-02-21 11:49:49.94+00	1
1001676	55 Xin'er Road, Baoshan	Shanghai	Shanghai	201900	115	2021-02-28 00:05:53.07+00	2
1002531	Northbound Services	Southampton	Hampshire	SO16 8AP	108	2021-02-28 20:00:27.029+00	2
1000874	8910 Farrow Rd	Columbia	SC	29203	100	2021-03-01 00:46:31.799+00	5
1000065	840 U.S. 64	Plymouth	NC	27962	100	2021-03-01 00:47:15.759+00	4
1002684	An der Autobahn 1	Schkeuditz	\N	04435	103	2022-04-13 20:56:46.706+00	7
1003198	580 Union Ave	Bridgewater Township	NJ	08807	100	2021-12-26 14:31:21.162+00	2
1001841	Portagem Bairrada Center-Hotelaria, R. São Domingos 20	Mealhada	\N	3050-983	125	2021-03-23 18:37:57.733+00	11
1003188	2950 Chapel Hill Rd	Douglasville	GA	30135	100	2021-08-18 23:23:13.611+00	8
1002296	2675 Geary Blvd	San Francisco	CA	94118	100	2022-04-01 16:53:56.944+00	7
1000025	125 Wulfsohn Rd	Glenwood Springs	CO	81601	100	2021-03-11 17:06:53.907+00	4
1003213	925 Blossom Hill Rd	San Jose	CA	95123	100	2021-06-26 21:45:51.625+00	5
1000268	701 S Main St	Lone Pine	CA	93545	100	2021-03-16 18:38:50.09+00	8
1000599	5-13 Havelock St	Wodonga	VIC	3690	116	2021-03-18 01:46:46.187+00	4
1000503	650 Church Street	Richmond	VIC	3121	116	2021-03-18 01:47:20.419+00	4
1003223	No. 210號, Section 2, Xuefu Road	Tucheng District, New Taipei City	\N	236	133	2021-03-23 14:42:20.631+00	2
1000413	3801 South MacArthur Blvd	Springfield	IL	62711	100	2021-08-16 21:20:38.672+00	3
1003203	Mindelheimer Str. 1	Türkheim	\N	86842	103	2021-06-09 21:52:26.564+00	5
1003208	19920 Ruffian Way	Haubstadt	IN	47639	100	2021-10-18 19:12:19.63+00	7
1000619	The Rock 11209 Brockway Rd	Truckee	CA	96161	100	2022-02-10 01:17:08.041+00	4
1000080	302 W 5th St	Murdo	SD	57559	100	2022-02-10 01:34:25.228+00	3
1001079	1 Crossgates Mall Rd	Guilderland	NY	12203	100	2022-07-10 20:33:55.751+00	11
1000799	499 Bayfront Place	Naples	FL	34102	100	2021-03-16 02:13:09.914+00	8
1003193	Norra Svedengatan	Linköping	\N	582 73	109	2021-03-31 19:42:18.955+00	7
1000448	50 Auert Ave	Utica	NY	13501	100	2021-08-16 21:24:02.767+00	3
1000105	1400 Dell Range Blvd	Cheyenne	WY	82009	100	2022-02-10 01:47:42.474+00	4
1000060	131 Colonie Center	Albany	NY	12205	100	2022-07-10 20:24:00.283+00	3
1000318	4455 Transit Rd	Buffalo	NY	14221	100	2022-07-10 20:24:50.423+00	4
1000694	Cassegrain Winery, 764 Fernbank Creek Rd	Port Macquarie	NSW	2444	116	2021-03-18 01:47:04.708+00	4
1003218	10 High St	Yea	VIC	3717	116	2021-04-13 14:25:29.668+00	4
1001089	Autopista México Puebla Km 115 San Francisco Ocotlán, Puebla Mexico 72680	San Francisco Ocotlán	Puebla	\N	131	2021-03-19 00:53:51.034+00	3
1000744	2980 Wilder Rd	Bay City	MI	48706	100	2021-03-22 23:33:29.101+00	10
1001261	2404 Long Lake Rd	Sudbury	ON	P3E 5H5	101	2021-08-14 12:04:44.29+00	4
1003233	327 Industrial Park Rd	Somerset	PA	15501	100	2022-06-30 00:40:11.696+00	5
1003228	2576 Berryhill Rd	Montgomery	AL	36117	100	2021-10-06 03:28:21.885+00	8
1001306	39201 Fremont Blvd	Fremont	CA	94538	100	2022-04-01 16:43:14.247+00	9
1000829	600 White Plains Rd	Tarrytown	NY	10591	100	2022-07-10 20:33:18.077+00	6
1001596	1 Serramonte Center	Daly City	CA	94015	100	2021-03-23 17:25:53.768+00	5
1002960	Autovía del Mediterráneo, Km. 519 Spain	Torrent	Valencia	46900	117	2021-03-26 21:12:48.645+00	5
1001581	連航路66號台東市	Taitung	\N	\N	133	2021-03-23 16:51:53.191+00	2
1001706	1920 Palisades Center Dr	West Nyack	NY	10994	100	2021-03-28 16:20:40.61+00	4
1003253	Bulevardul Revoluției din 1989 2A	Timișoara	\N	300085	145	2021-04-14 19:28:49.154+00	4
1001391	192 Saratoga Los Gatos Rd	Los Gatos	CA	95030	100	2021-09-24 15:45:57.289+00	9
1001551	9357 6 Mile Cypress Pkwy	Fort Myers	FL	33966	100	2022-06-30 00:28:59.115+00	6
1003238	1809 BC-3A	Creston	BC	V0B 1G6	101	2022-06-10 00:44:10.193+00	7
1003248	3035 Clarence Avenue South	Saskatoon	SK	S7T 0B6	101	2021-10-26 02:35:47.54+00	6
1001591	878 Washington Ave	Brooklyn	NY	11225	100	2021-03-27 01:04:21.763+00	3
1002416	5575 Okeechobee Rd	Fort Pierce	FL	34749	100	2021-03-27 01:06:17.338+00	4
1003258	롯데프리미엄아울렛 기흥점	경기도 용인시 기흥구 신고매로	124	\N	137	2021-03-31 02:29:30.195+00	1
1003293	Al Za’eem Street	Al Ain	\N	\N	134	2022-03-31 06:52:57.119+00	6
1003298	Strandpromenaden, by Strandtorget shoppingcenter	Lillehammer	\N	2609	105	2022-02-01 14:21:58.153+00	5
1003303	5018 Summit Bridge Rd	Middletown	DE	19709	100	2021-08-18 23:46:26.921+00	4
1003268	Bornsestraat 400	Hengelo	\N	7556 BN	104	2021-12-29 13:29:40.74+00	5
1003288	198 Junction Road, Wang Tau Hom, Lok Fu, Kowloon	Hong Kong	Hong Kong	\N	115	2021-04-15 11:59:49.761+00	1
1003278	Gunnestorpsvägen	Varberg	\N	432 48	109	2021-04-22 16:25:56.169+00	5
1003283	Lützelhäuser Weg 13, by HEM gas station	Gelnhausen	\N	63571	103	2021-06-04 09:07:36.594+00	4
1003308	Blvrd Puerta de Hierro 4965	Zapopan	Jalisco	45116	131	2021-04-23 12:33:09.898+00	4
1002571	1 Henrik Ibsens gate Skien	Skien	\N	3724	105	2021-05-06 14:50:04.358+00	5
1003263	1591 Bradley Park Dr	Columbus	GA	31904	100	2021-08-03 23:46:04.207+00	4
1003273	神奈川県藤沢市辻堂神台1丁目3-1	藤沢市	神奈川県	\N	114	2022-07-10 21:43:40.066+00	3
1003243	3030 Recplace Dr	Prince George	BC	TBD	101	2021-11-03 18:25:42.452+00	6
1002401	14346 Culver Dr	Irvine	CA	92604	100	2021-04-28 15:28:46.622+00	7
1003323	8501 Laurel Canyon Blvd	Sun Valley	CA	91352	100	2021-04-28 16:45:34.544+00	1
1003328	경기도 화성시 향남읍 서해로 806	Hwaseong	\N	\N	137	2021-04-30 05:53:00.678+00	2
1003333	Landevejen 51	Kirke Såby	\N	4060	107	2021-12-20 15:50:23.37+00	4
1003338	1920 Pipestone Rd	Benton Harbor	MI	49022	100	2021-07-31 07:18:11.258+00	4
1003353	11136 CA-140	El Portal	CA	95318	100	2021-05-13 18:23:23.544+00	1
1003348	Rue des 11 Arpents	Blois	\N	41000	110	2021-06-29 16:24:37.95+00	4
1003368	720 228th Ave NE	Sammamish	WA	98074	100	2021-05-18 04:30:55.999+00	1
1003383	3810 Valley Centre Dr	San Diego	CA	92130	100	2021-05-28 17:15:27.552+00	1
1003393	1225 E Robertson Blvd	Chowchilla	CA	93610	100	2021-05-31 15:36:31.807+00	1
1003378	1007 Philpott Rd	South Boston	VA	24592	100	2021-08-02 16:56:23.637+00	5
1003318	1150 El Camino Real	San Bruno	CA	94066	100	2022-03-28 11:35:32.203+00	6
1003343	Rue Georges Méliès	Rivesaltes	\N	66000	110	2021-08-18 23:47:30.438+00	5
1003363	Le Chesnay	Le Chesnay-Rocquencourt	\N	78150	110	2021-11-11 16:44:09.839+00	4
1003313	370 N Ave E	Cranford	NJ	07016	100	2022-06-23 16:18:37.216+00	3
1003373	3500 Woodsdale Rd	Abingdon	MD	21009	100	2021-11-18 20:56:22.171+00	5
1003358	710 Jack Tone Rd	Ripon	CA	95366	100	2022-06-18 22:10:22.217+00	3
1003388	8 Osborne Ln	East Hampton	NY	11937	100	2022-03-27 22:36:56.507+00	3
1003498	Smiegata 3	Gran	\N	2750	105	2022-06-08 15:48:00.372+00	7
1003403	6900 Brodie Ln	Austin	TX	78745	100	2021-06-04 23:10:07.682+00	4
1003463	81 NH-25	Meredith	NH	03253	100	2022-07-04 03:36:13.964+00	5
1003408	975 Co Rd E East	Vadnais Heights	MN	55127	100	2021-06-07 04:24:06.041+00	1
1003438	E Ortega St	Santa Barbara	CA	93101	100	2021-06-20 17:57:05.334+00	2
1003418	8970 University Center Ln	San Diego	CA	92122	100	2021-06-12 14:49:29.739+00	6
1003453	Am Golfplatz 1	Troisdorf	\N	53844	103	2021-11-10 21:49:58.086+00	4
1003428	90 90 Outland Road	Plymouth	\N	PL2 3DE	108	2021-06-15 18:10:55.837+00	3
1003493	Trevenson Rd	Pool, Redruth	\N	TR15 3RD	108	2021-09-26 12:11:59.007+00	6
1003443	2444 Genesis Rd	Crossville	TN	38571	100	2021-10-17 00:50:18.501+00	4
1003413	DN65B F4	Pitești	\N	117140	145	2021-06-30 14:40:31.264+00	3
1003473	18, Seochojungang-ro, Seocho-gu	Seoul	\N	\N	137	2021-07-01 02:12:55.817+00	1
1003458	Portal de la Marina Shopping Center	Ondara	\N	03760	117	2021-08-26 12:11:25.507+00	3
1003478	4211 S Lamar Blvd	Austin	TX	78704	100	2021-12-31 15:27:46.63+00	5
1003433	2505 Veterans Memorial Dr	Cape Girardeau	MO	63701	100	2022-03-18 23:13:04.934+00	7
1003423	Link Rd	Cork	\N	T12 X7HK	124	2021-09-08 12:31:12.314+00	6
1003468	12750 Foothill Blvd	Rancho Cucamonga	CA	91739	100	2021-09-22 22:59:05.911+00	4
1003398	Dokter Bloemenlaan 8	Tilburg	\N	5022 KW	104	2021-12-31 11:51:44.065+00	3
1003448	231, Teheran-ro, Gangnam-gu	Seoul	\N	\N	137	2022-02-12 05:32:02.54+00	3
1003483	373 Willis Ave	Roslyn Heights	NY	11577	100	2021-08-18 23:52:49.202+00	3
1003503	Posthausen 1	Ottersberg	\N	28870	103	2021-09-08 12:33:00.594+00	3
1003488	455 Mountain Village Blvd	Mountain Village	CO	81435	100	2021-11-11 16:12:21.701+00	3
1003508	Parc Technologique de Sologne, Le Bâtonnet	Vierzon	\N	18100	110	2022-02-02 15:50:39.524+00	4
1003563	926 Carmans Rd	Massapequa	NY	11758	100	2021-09-26 11:07:46.952+00	4
1003538	85 West Wellsboro Street	Mansfield	PA	16933	100	2021-08-08 01:17:31.562+00	3
1003513	1819 Cloverfield Blvd	Santa Monica	CA	90404	100	2022-06-23 13:26:22.657+00	3
1003598	5909 University Dr	Huntsville	AL	35806	100	2022-06-14 18:34:16.937+00	3
1003553	810 US-17	Yemassee	SC	29945	100	2021-08-26 12:08:14.272+00	3
1003543	Brammenring 30	Oberhausen	\N	46047	103	2021-12-22 20:51:51.991+00	3
1003583	1780 Littlefield Interchange	Beaver	UT	84713	100	2021-08-29 16:06:23.879+00	1
1003528	250 Brookview Centre Way	Knoxville	TN	37919	100	2021-09-26 11:08:53.75+00	5
1003523	Donnington Manor Hotel, London Rd	Dunton Green	Sevenoaks	TN13 2TD	108	2021-09-21 15:45:35.275+00	3
1003593	10772 Jefferson Blvd	Culver City	CA	90230	100	2021-09-04 17:01:22.963+00	1
1003573	92 Albert St	Moe	Vic	3825	116	2021-09-08 13:00:47.155+00	3
1003558	Parkvägen 6	Dorotea	\N	91731	109	2021-10-05 23:11:05.18+00	5
1003578	Inovacijų g. 1	Biruliškės	\N	54469	141	2021-10-18 03:07:21.946+00	7
1003568	165 Old Country Rd	Carle Place	NY	11514	100	2021-11-18 18:44:30.573+00	3
1003533	Austursíða 2	Akureyri	\N	\N	155	2022-04-06 13:47:13.659+00	6
1003608	141 Borgsjöbyn	Erikslund	\N	84197	109	2021-09-30 14:44:34.384+00	2
1003588	248 State Highway 51	Mangateretere	\N	4180	138	2021-09-09 23:19:45.912+00	5
1003603	689, Samyang-ro, Gangbuk-gu	Seoul	\N	\N	137	2021-09-11 02:11:55.234+00	1
1003613	Bulevardul Alexandru Lapusneanu 116C	Constanta	\N	\N	145	2021-09-15 23:19:57.907+00	1
1003628	Bayi Subdistrict, Bayi District, Area F	Nyingchi / Linzhi	Tibet	\N	115	2021-09-23 13:40:05.833+00	2
1003618	Yulong Hotel, 788 Huanghe Road	Wusu	Xinjiang	\N	115	2021-09-23 13:40:29.727+00	2
1003623	S213	Khorgas / Horgos	Xinjiang	\N	115	2021-09-23 13:41:45.911+00	2
1003633	G318	Markam, Chamdo	Tibet	\N	115	2021-09-23 14:01:49.197+00	1
1003653	18, Gelmu West Road	Delingha,Haixi	Qinghai	\N	115	2021-09-24 11:32:10.958+00	1
1003638	20 Xinfu Road, Bingsan District, East District	Panzhihua	Sichuan	\N	115	2021-09-24 08:21:40.274+00	1
1003643	G56, Dinosaur Mountain Service Area (north)	Lufeng, Chuxiong Yi	Yunnan	\N	115	2021-09-24 09:39:20.05+00	1
1003648	G8511, Dadugang Service Area (east)	Jinghong, Xishuangbanna Dai Autonomous Prefecture, China	Yunnan	\N	115	2021-09-24 10:21:51.465+00	1
1003658	G85, Gangji Service Area (south)	Xundian Hui and Yi Autonomous County, Kunming	Yunnan	\N	115	2021-09-24 12:32:22.228+00	1
1003663	G80, Guichao Service Area (north)	Guichao, Funing County, Wenshan Zhuang and Miao Autonomous Prefecture	Yunnan	\N	115	2021-09-24 13:30:29.491+00	1
1003668	2 Qiaobei Road	Baisha	Hainan	\N	115	2021-09-24 14:35:21.127+00	1
1003673	Promenade Aoyama 5-13-1 Aoyama	Otsu	Shiga	\N	114	2022-07-10 21:46:24.322+00	2
1003683	60 Chengzhan Road, Xiaonan District	Xiaogan	Hubei	\N	115	2021-09-27 10:31:03.216+00	1
1003690	Kvartsgatan 6	Strängnäs	\N	645 47	109	2022-03-04 17:40:47.224+00	6
1003678	1800 Zhonghua Road (Level B2, green wall in Area E), Mudan District	Heze	Shandong	274000	115	2021-09-27 09:46:11.981+00	1
1003760	10691 Davidson Pl	Manassas	VA	20109	100	2021-12-14 01:20:49.624+00	2
1003700	U Planet 7, Yangji-ro	Gwangmyeong	Gyeonggi	\N	137	2021-09-30 14:48:07.285+00	1
1003740	501 Portway Ave	Hood River	OR	97031	100	2021-10-13 22:10:44.117+00	4
1003720	136, Yeonsam-ro	Jeju	Jeju	\N	137	2021-10-05 22:39:46.298+00	1
1003730	320 No. 352, Section 2, High Speed Rail South Road, Zhongli District	Taoyuan	\N	\N	133	2021-10-09 21:29:27.36+00	1
1003765	3033 152 St	Surrey	BC	V4P 1G8	101	2022-02-01 04:06:16.57+00	2
1003755	3897 S Higuera St	San Luis Obispo	CA	93401	100	2021-11-20 02:22:42.386+00	6
1003750	395 Av. Sirois	Rimouski	QC	G5L 8R2	101	2021-10-20 21:34:12.546+00	1
1003710	264 Thetford St	Asheville	NC	28803	100	2021-10-26 02:46:59.538+00	5
1003705	Kleinsattelstraße 4	Villach	\N	9500	102	2021-10-28 06:39:55.524+00	3
1003745	809 E Dixie Ave	Elizabethtown	KY	42701	100	2021-12-10 20:58:58.135+00	2
1003725	101 Mt Forest Dr	Mount Forest	ON	N0G 2L2	101	2021-12-11 02:47:37.102+00	3
1003695	1305 E Broad Ave	Rockingham	NC	27839	100	2021-12-19 16:58:34.738+00	5
1003735	2760 N IH 35	New Braunfels	TX	78130	100	2022-06-02 19:00:40.367+00	5
1003780	1009 N San Fernando Blvd	Burbank	CA	91504	100	2021-11-03 22:13:59.885+00	2
1003770	A32 km 73, Frejus service area, Bardonecchia	Bardonecchia	\N	10052	113	2022-03-19 12:45:35.993+00	3
1003785	15840 Jefferson Davis Hwy	Colonial Heights	VA	23834	100	2022-05-06 21:41:24.249+00	5
1003775	Centro Commerciale L'Aquilone, via Romairone 10, Genova	Genova	\N	16163	113	2022-02-12 03:17:43.963+00	3
1003548	No. 3號, Lane 9, Qingnian Rd	Yangmei District, Taoyuan City	\N	326	133	2021-11-08 09:02:45.073+00	3
1003795	Helbingtwiete 4/8	Hamburg	\N	22047	103	2021-11-10 16:51:17.505+00	1
1003790	17616 111 Ave NW	Edmonton	AB	T5S 0A2	101	2022-02-04 22:37:19.197+00	2
1003840	Indiana Toll Rd	Portage	IN	46368	100	2021-12-24 20:01:09.397+00	4
1003805	3615 St Matthews Rd	Orangeburg	SC	29118	100	2021-11-20 02:12:58.017+00	4
1003855	1000 Oakvale Rd	Princeton	WV	24740	100	2022-01-31 16:33:20.062+00	3
1003830	Rock Way	Lancelin	WA	6044	116	2021-11-23 08:22:28.03+00	1
1003845	Olstavägen 45	Åsarna	\N	84551	109	2021-12-01 06:54:26.125+00	3
1003870	11 Western Rd	Romford	Essex	RM1 3RL	108	2022-03-31 01:16:12.745+00	3
1003860	496-25, Sinwol-ro	Yeosu-si	Jeollanam-do	\N	137	2021-12-09 22:17:47.416+00	1
1003810	4089 S Amherst Hwy	Madison Heights	VA	24572	100	2021-12-11 02:31:46.117+00	3
1003820	200 World Commerce Pkwy	St. Augustine	FL	32092	100	2021-12-31 20:33:52.362+00	5
1003850	100 Village Center Dr	Chapel Hill	NC	27516	100	2022-01-02 17:32:09.105+00	5
1003835	310 Harvey Dr	Glendale	CA	91206	100	2022-01-26 09:03:41.588+00	3
1003800	9600 Fort Meade Rd	Laurel	MD	20707	100	2022-04-13 20:32:22.595+00	3
1003865	20635 Gas Point Rd	Cottonwood	CA	96022	100	2022-05-05 20:56:58.029+00	2
1003815	1 Ariki St	New Plymouth	\N	4310	138	2022-05-20 00:39:23.494+00	2
1003920	111, No. 465, Section 5, Zhongshan North Road, Shilin District	Taipei City	\N	\N	133	2021-12-31 04:22:59.952+00	1
1003880	8700 Blumenstein Rd	Minocqua	WI	54548	100	2021-12-15 23:12:54.396+00	1
1003890	1725 Roanoke Rd	Daleville	VA	24083	100	2021-12-22 01:38:16.718+00	1
1003895	940 NE Park Dr	Issaquah	WA	98029	100	2021-12-22 21:21:15.418+00	1
1003905	27741 Crown Valley Pkwy	Mission Viejo	CA	92691	100	2021-12-24 16:59:32.537+00	1
1003935	163 Patriots Rd	Templeton	MA	01468	100	2022-01-07 15:47:05.95+00	1
1003940	4000 Bel Aire Plaza	Napa	CA	94558	100	2022-01-10 18:39:27.25+00	1
1003950	4950 Elm St (ignore gmap link)	Bethesda	MD	20814	100	2022-01-19 23:23:42.652+00	1
1003900	8765 Fletcher Pkwy	La Mesa	CA	91942	100	2022-03-18 23:13:55.569+00	3
1003885	Rúa do País Vasco, 65	Santiago de Compostela	A Coruña	15707	117	2022-03-31 01:17:20.23+00	4
1003930	8521 SW 124th Ave	Miami	FL	33183	100	2022-04-25 14:54:14.925+00	2
1003945	Ems-Park, Nüttermoorer Str. 2	Leer (Ostfriesland)	\N	26789	103	2022-06-09 18:34:54.816+00	5
1003875	2008 Durry Rd	Sprague	WA	99032	100	2022-06-21 22:36:07.228+00	9
1003910	650 N Congress Ave	Boynton Beach	FL	33426	100	2022-07-05 18:46:17.461+00	3
1003925	3-2-1 Mikage Nakamachi, Higashinada Ward	Kobe	Hyogo	\N	114	2022-07-10 21:48:16.346+00	2
1004020	21984 CA-46	Lost Hills	CA	93249	100	2022-07-04 14:09:47.137+00	3
1003960	3501 Robin Ln	Shingle Springs	CA	95682	100	2022-01-22 23:46:05.146+00	1
1003965	1590 Bryant St	Daly City	CA	94015	100	2022-01-25 04:31:56.236+00	1
1003975	No. 89, Wucuo 2nd Street, Qingshui District	Taichung	\N	\N	133	2022-01-30 01:40:02.427+00	1
1003825	Lakeside Shopping Centre, W Thurrock Way	Thurrock, Essex	\N	RM20 2ZG	108	2022-02-01 14:21:29.603+00	7
1003985	445 Route du Nord	Montauban	\N	82000	110	2022-03-23 12:44:06.48+00	2
1003995	1876 S Norfolk St	San Mateo	CA	94403	100	2022-02-04 00:30:05.41+00	1
1004005	755 W Iowa 80 Rd	Walcott	IA	52773	100	2022-03-19 02:02:19.161+00	3
1003980	Torvmyrvegen, next to E39	Volda	\N	6100	105	2022-07-02 09:37:15.859+00	9
1004000	Marie-Curie-Straße	Denkendorf	\N	73770	103	2022-03-30 19:59:12.92+00	2
1003970	333 Strander Blvd	Tukwila	WA	98188	100	2022-02-18 23:29:14.647+00	3
1003990	2020 Olde Regent Way	Leland	NC	28451	100	2022-02-25 13:39:12.47+00	2
1004030	1015 Lewis St	Oxford	NC	27565	100	2022-04-15 13:37:04.601+00	3
1004015	10 Avenue du Cagire	Estancarbon	\N	31800	110	2022-04-13 21:00:40.431+00	3
1003955	4799 Commons Way	Calabasas	CA	91302	100	2022-05-12 20:18:37.297+00	2
1004010	100 Water Pl Landing	Benson	NC	27504	100	2022-05-08 14:03:11.664+00	3
1004025	2796 Tanger Way	Barstow	CA	92311	100	2022-05-27 06:49:40.513+00	6
1004055	5530 Sunshine Coast Hwy	Sechelt	BC	V0N 3A0	101	2022-07-09 17:37:23.88+00	2
1004035	114 Bonjour Blvd	Madoc	ON	K0K 2K0	101	2022-07-10 00:34:56.278+00	6
1004040	317 NW Gilman Blvd	Issaquah	WA	98027	100	2022-02-24 19:32:27.793+00	1
1004045	600 Executive Blvd	Southington	CT	06489	100	2022-02-26 18:55:14.5+00	2
1004050	720 Corporate Center Ct	Westminster	MD	21157	100	2022-03-01 22:28:30.342+00	1
1004085	Hargalaan 6	Schiedam	\N	3118 JA	104	2022-03-25 19:01:03.262+00	4
1004080	KT&G Sejong Tower C (AK PLAZA Sejong Fashion Hall) 20, Dasom 1-ro	Sejong	\N	\N	137	2022-03-15 06:02:04.7+00	1
1004110	Al Ain Square	Al Towayya, Al Ain	\N	\N	134	2022-03-31 07:07:56.897+00	1
1004090	Pangyo Tech One Tower, 534, Baekhyeon-dong, Bundang-gu	Seongnam	Gyeonggi-do	\N	137	2022-03-20 00:24:34.267+00	1
1004100	437 Old Mammoth Rd	Mammoth Lakes	CA	93546	100	2022-03-26 22:33:58.973+00	2
1004105	1449 Yadkinville Rd	Mocksville	NC	27028	100	2022-03-28 01:12:15.563+00	3
1004060	2100 E University Ave	Urbana	IL	61802	100	2022-06-02 00:16:57.13+00	2
1004195	7211 Elk Grove Blvd	Elk Grove	CA	95758	100	2022-05-03 03:20:59.851+00	1
1002576	Atlantic City Expressway Mile Marker 20	Hammonton	NJ	08037	100	2022-05-30 00:04:06.265+00	4
1004095	3250 E Sahara Ave	Las Vegas	NV	89104	100	2022-05-09 13:27:57.918+00	3
1004070	692 Freeman Lane	Grass Valley	CA	95949	100	2022-05-12 21:53:31.672+00	3
1004075	1350 Walt Whitman Rd	Melville	NY	11747	100	2022-05-31 22:57:57.798+00	9
1004065	2851 Highland Ave	Selma	CA	93662	100	2022-07-09 14:19:18.502+00	4
1004115	Schöneberger Ufer 3	Berlin	\N	10785	103	2022-07-01 13:42:32.433+00	2
1004120	507 Daeryeon-ri, Heunghae-eup, Buk-gu	Pohang-si	Gyeongsangbuk-do	\N	137	2022-04-02 13:03:57.632+00	1
1004160	2700 US-34	Oswego	IL	60543	100	2022-05-28 04:14:35.506+00	2
1004130	1441 Richmond Ave	Staten Island	NY	10314	100	2022-04-06 14:31:52.844+00	1
1004140	100 Trolley Line Dr	Easton	PA	18045	100	2022-04-09 00:02:47.077+00	1
1004155	2160 New Castle Ave	New Castle	DE	19720	100	2022-04-16 03:04:36.192+00	2
1004170	1621 S Alameda St	Compton	CA	90220	100	2022-04-24 03:09:12.904+00	1
1004135	2076 Bells Hwy	Walterboro	SC	29488	100	2022-04-19 17:02:55.2+00	3
1004150	Rue Georges Mazoyer	Tournus	\N	71700	110	2022-06-22 15:03:09.044+00	3
1004185	Zone commerciale de Buhlfeld, Parking Cora	Houssen	\N	68125	110	2022-04-30 06:42:15.796+00	2
1004145	3585 Peachtree Industrial Blvd	Duluth	GA	30096	100	2022-05-13 21:04:30.479+00	2
1004175	Rue des Marlettes	Fayet	\N	02100	110	2022-06-30 06:22:08.051+00	2
1004165	400 S Randall Rd	Algonquin	IL	60102	100	2022-05-24 19:08:11.031+00	2
1004190	Denbies Wine Estate	London Rd	Dorking	RH5 6AA	108	2022-05-25 16:35:02.027+00	2
1004125	202 E Leota St	North Platte	NE	69101	100	2022-06-30 00:13:02.952+00	3
1004180	25 Rue de la Désirée	Châtellerault	\N	86100	110	2022-07-11 13:19:12.318+00	4
1004265	U G/F, 28 Siu Sai Wan Road	Siu Sai Wan, Hong Kong	Hong Kong	\N	115	2022-05-28 03:22:55.708+00	1
1004220	18601 Yorba Linda Blvd	Yorba Linda	CA	92886	100	2022-05-12 00:38:01.029+00	1
1004225	192 Lathrop Rd	Lathrop	CA	95330	100	2022-05-13 04:13:11.335+00	1
1004230	7000 Oxford Dr	Bethel Park	PA	15102	100	2022-05-14 18:59:02.13+00	1
1004205	4565 McRee Ave	St. Louis	MO	63110	100	2022-05-16 05:16:02.438+00	2
1004240	809 N Azusa Ave	Azusa	CA	91702	100	2022-05-18 00:22:51.241+00	1
1004250	217 Indian Lake Blvd	Hendersonville	TN	37075	100	2022-05-22 20:55:52.057+00	1
1004255	52469 SE 2nd St	Scappoose	OR	97056	100	2022-05-24 21:07:05.663+00	1
1004275	2151 Brooks Dr	Capitol Heights	MD	20746	100	2022-06-02 19:05:02.168+00	1
1004260	N 1st Cir	Ridgefield	WA	98642	100	2022-05-26 21:03:43.076+00	1
1004245	Hemvägen 11	Övertorneå	\N	957 31	109	2022-06-02 16:37:19.025+00	3
1004270	1000 Bd Vachon N	Sainte-Marie	QC	G6E 1M2	101	2022-05-30 21:36:56.051+00	1
1004280	Sinsa Square 652, Gangnam-daero	Gangnam	\N	\N	137	2022-06-14 13:01:38.076+00	2
1004215	Rte de Roncq	Neuville-en-Ferrain	\N	59960	110	2022-06-30 06:21:28.499+00	3
1004235	140 Elm Plaza	Waterville	ME	04901	100	2022-07-10 18:50:00.515+00	5
1004285	Mile 65 Kansas Turnpike	Towanda	KS	67144	100	2022-07-10 03:54:48.849+00	3
1004290	213 Av. du Grand S	Chambray-lès-Tours	\N	37170	110	2022-07-10 21:49:48.629+00	3
1004300	Tullikatu 2	Mikkeli	\N	50100	120	2022-06-10 11:33:55.986+00	1
1004340	Kerpener Str. 150	Kerpen	\N	50170	103	2022-06-24 13:32:24.188+00	2
1004295	6150 Laurel Canyon Blvd	North Hollywood	CA	91606	100	2022-07-10 16:25:34.974+00	2
1004310	Times Stream Mall, 330 Sillim-ro	Gwanak-gu, Seoul	\N	\N	137	2022-06-14 13:01:01.269+00	1
1004305	Astrid Lindgren 11	Belgrade	\N	11231	148	2022-06-14 13:12:55.048+00	5
1004315	Strevelinsvej 13	Fredericia	\N	7000	107	2022-06-16 19:59:41.721+00	2
1004345	196 Main St	Sturbridge	MA	01566	100	2022-06-25 03:51:10.482+00	1
1004320	No. 2, Section 1, Zhongzheng Road, Danshui District, 251	New Taipei City	\N	\N	133	2022-06-18 10:01:43.191+00	3
1004370	Anseong Livestock Agricultural Cooperative Federation 833, Anseong Maum-daero	Anseong	Gyeonggi-do	\N	137	2022-07-02 13:35:26.683+00	1
1004325	Bazoviška cesta 23	Kozina	\N	6240	111	2022-06-19 20:00:49.246+00	1
1004330	1 NJ-15	Augusta	NJ	07822	100	2022-06-21 19:33:20.105+00	1
1004360	71-91 Spring St	Bondi Junction	NSW	2022	116	2022-06-29 07:21:57.623+00	1
1004210	Ålingen shopping, Myren 19	Ål	\N	3570	105	2022-06-29 11:39:36.901+00	4
1004335	1 Jondaryan Ave	Griffith	NSW	2680	116	2022-06-23 06:14:37.513+00	1
1004350	Rue Hubert Bastin 16	Jumet	\N	6040	112	2022-06-26 10:12:43.858+00	8
1004355	5218 Patrick Rd	Verona	NY	13478	100	2022-06-29 00:58:08.653+00	1
1004375	Dead Sea Mall, Ein Bokek	Neve Zohar	\N	\N	157	2022-07-02 13:55:21.674+00	1
1004380	65340 Los Lobos Rd	San Ardo	CA	93450	100	2022-07-03 00:45:04.534+00	1
1004385	IGP 19 Süd	Voelkermarkt	\N	\N	102	2022-07-05 07:37:12.134+00	3
1004390	B1/F, WM Hotel, 28 Wai Man Road	Sai Kung	New Territories, Hong Kong	\N	115	2022-07-06 13:39:14.189+00	1
1004395	1105 Gum Branch Rd	Jacksonville	NC	28540	100	2022-07-07 14:38:35.569+00	1
1004400	Centro commerciale “CentroLuna”, via Variante Cisa	Sarzana	\N	19038	113	2022-07-09 20:25:43.074+00	2
1004405	Anketell St & Reed St N	Greenway	ACT	2900	116	2022-07-11 04:03:21.503+00	1
1004410	Pista de Morgade, 0 S N	Xinzo de Limia	\N	32630	117	2022-07-14 06:35:27.25+00	2
\.


--
-- TOC entry 3208 (class 0 OID 73687)
-- Dependencies: 276
-- Data for Name: site; Type: TABLE DATA; Schema: supercharge; Owner: supercharge_user_test
--

COPY "supercharge"."site" ("site_id", "location_id", "name", "status", "opened_date", "hours", "enabled", "counted", "address_id", "gps_latitude", "gps_longitude", "elevation_meters", "url_discuss", "stall_count", "power_kwatt", "has_solar_canopy", "has_battery", "developer_notes", "modified_date", "version") FROM stdin;
2215	dangjinsupercharger	Dangjin, South Korea	OPEN	2019-12-20 18:00:00+00	\N	t	t	1002121	36.909503	126.69407466	42	\N	6	120	f	f	\N	2019-12-19 20:53:54.818551+00	1
110	buelltonsupercharger	Buellton, CA	OPEN	2013-07-13 17:00:00+00	\N	t	t	1000010	34.61456	-120.188387	114	https://teslamotorsclub.com/tmc/posts/368910/	10	150	f	f	\N	2020-01-04 17:45:14.271051+00	5
120	oxnardcasupercharger	Oxnard, CA	OPEN	2014-09-24 17:00:00+00	\N	t	t	1000020	34.238654	-119.177398	24	http://www.teslamotorsclub.com/showthread.php/23621-Oxnard-Supercharger-Station	20	150	f	f	\N	2019-05-05 15:39:14.537579+00	6
140	macongasupercharger	Macon, GA	CLOSED_PERM	\N	\N	t	t	1000040	32.8334275	-83.6255567	98	http://www.teslamotorsclub.com/showthread.php/30079-Supercharger-Macon-GA	8	150	f	f	\N	2021-07-03 04:26:06.765003+00	3
100	buckeyesupercharger	Buckeye, AZ	OPEN	2014-03-20 17:00:00+00	\N	t	t	1000000	33.443011	-112.556876	338	https://teslamotorsclub.com/tmc/threads/supercharger-buckeye-az.25317/page-13	12	250	f	f	\N	2021-12-26 15:31:13.261859+00	3
130	milfordsouthsupercharger	Milford - Southbound, CT	OPEN	2012-12-16 18:00:00+00	\N	t	f	1000030	41.246232	-73.010529	19	https://teslamotorsclub.com/tmc/posts/959087/	2	125	f	f	\N	2022-02-10 01:20:48.470564+00	4
155	farmingtonnmsupercharger	Farmington, NM	OPEN	2014-01-10 18:00:00+00	\N	t	t	1000055	36.766371	-108.144047	1673	http://www.teslamotorsclub.com/showthread.php/23108-Farmington-NM-Supercharger	4	120	f	f	\N	2020-02-09 20:32:50.000574+00	4
175	somersetsupercharger	Somerset, PA	OPEN	2014-01-10 18:00:00+00	\N	t	t	1000075	40.017383	-79.077117	641	http://www.teslamotorsclub.com/showthread.php/25319-Somerset-PA-Supercharger-(confirmed!)	6	150	f	f	\N	2020-03-30 04:37:03.443226+00	4
185	sanmarcossupercharger	San Marcos, TX	OPEN	2013-08-17 17:00:00+00	\N	t	t	1000085	29.827692	-97.979677	202	https://teslamotorsclub.com/tmc/threads/supercharger-san-marcos-tx.132803	12	150	f	f	Open date corrected per this post https://teslamotorsclub.com/tmc/posts/414881/	2019-08-16 02:37:59.173124+00	5
3780	SanLuisObispoCASupercharger3	San Luis Obispo - Higuera St, CA	OPEN	2021-11-19 18:00:00+00	\N	t	t	1003755	35.247841	-120.67193	38	https://teslamotorsclub.com/tmc/threads/supercharger-san-luis-obispo-ca-higuera-st-live-19-nov-2021-20-v3-stalls.244250/	20	250	f	f	\N	2021-11-20 02:22:42.383241+00	6
3845	StAugustineFLSupercharger	St. Augustine - World Commerce Pkwy, FL	CONSTRUCTION	\N	\N	t	t	1003820	29.983752	-81.464138	10	https://teslamotorsclub.com/tmc/threads/supercharger-st-augustine-fl-buc-ees.247172/	16	250	f	f	\N	2021-12-31 20:33:52.358929+00	5
210	aichstettensupercharger	Aichstetten, Germany	OPEN	2013-12-14 18:00:00+00	\N	t	t	1000110	47.880483	10.039783	630	\N	8	130	f	f	\N	2020-03-05 15:31:19.623013+00	3
775	beaunesupercharger	Beaune, France	OPEN	2015-12-21 18:00:00+00	\N	t	t	1000679	47.017089	4.836543	210	\N	8	150	f	f	\N	2019-09-02 17:25:42.169116+00	2
250	truckeecaliforniadonnersupercharger	Truckee - Donner Pass, CA	OPEN	2014-08-26 17:00:00+00	\N	t	t	1000149	39.327507	-120.207373	1967	https://teslamotorsclub.com/tmc/threads/supercharger-truckee-ca-donner-pass-rd-live-aug-2014-11-v2-stalls.31017/	11	150	f	f	\N	2021-01-07 05:16:17.906113+00	6
195	burlingtonsupercharger	Burlington, WA	OPEN	2013-07-13 17:00:00+00	\N	t	t	1000095	48.509772	-122.338625	7	https://teslamotorsclub.com/tmc/threads/burlington-supercharger.16921	8	150	f	f	\N	2019-05-05 15:02:27.92037+00	3
280	cnsc8226	Beijing - Yizhuang AK Valley, China	OPEN	2014-07-12 17:00:00+00	\N	t	t	1000181	39.799729	116.518017	31	\N	8	120	f	f	Name and stalls updated 2018-12-11.	2021-02-08 12:03:10.015729+00	3
215	hohenwarslebensupercharger	Hohenwarsleben, Germany	OPEN	2014-04-30 17:00:00+00	\N	t	t	1000115	52.174057	11.494488	133	http://www.teslamotorsclub.com/showthread.php/21267-European-SuperCharger-rollout-updated/page17	6	120	f	f	2018-01-06: Note: Tesla co-ords are incorrect	2019-08-29 06:09:06.699899+00	3
200	eauclairesupercharger	Eau Claire, WI	OPEN	2014-01-30 18:00:00+00	\N	t	t	1000100	44.77083	-91.43711	293	http://www.teslamotorsclub.com/showthread.php/24337-Wisconsin-Supercharger-Discussion-amp-Tracking/page31	6	120	f	f	\N	2019-11-01 17:37:30.478423+00	2
275	maconfrsupercharger	Mâcon, France	OPEN	2014-07-11 17:00:00+00	\N	t	t	1000175	46.346553	4.850173	172	\N	20	150	f	f	\N	2019-09-02 17:37:11.587357+00	6
265	muhldorfsupercharger	Mühldorf, Germany	OPEN	2014-08-01 17:00:00+00	\N	t	t	1000163	48.272557	12.549892	405	http://www.teslamotorsclub.com/forumdisplay.php/82-Netherlands-Belgium-Germany-Austria-Switzerland	4	125	f	f	\N	2019-08-29 05:56:12.570102+00	4
245	liersouthsupercharger	Lier (south), Norway	OPEN	2013-08-13 17:00:00+00	\N	t	f	1000144	59.766259	10.257838	17	https://www.oep.no/search/resultSingle.html?journalPostId=10181919	8	150	f	f	Open date changed from 1/15/16 to 8/13/13 based on https://teslamotorsclub.com/tmc/posts/3581440/	2019-09-08 19:35:56.522573+00	3
3030	cnsc9221	Xiamen - Haicang Zhongshan Waikou Apartment, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002991	24.49820445	118.0319805	15	\N	6	250	f	f	\N	2021-02-21 02:36:56.910541+00	1
260	uddevallasupercharger	Uddevalla, Sweden	OPEN	2014-07-09 17:00:00+00	\N	t	t	1000158	58.3516862	11.8116943	41	http://www.teslamotorsclub.com/forumdisplay.php/79-Europe	20	250	f	f	25 June 2021: 8 v2 superchargers replaced with v3, so now there are 12xv2 and 8xv3:\r\nhttps://teslaclubsweden.se/forum/viewtopic.php?f=45&t=15902&start=530	2021-06-25 08:23:08.76401+00	5
3850	grayssupercharger	Grays, UK	OPEN	2022-01-25 18:00:00+00	\N	t	t	1003825	51.4894519	0.2866192	5	https://teslamotorsclub.com/tmc/posts/6144503/	16	250	f	f	\N	2022-02-01 14:21:29.59896+00	7
270	tilburgatlasstraat	Tilburg (SC), Netherlands	OPEN	2014-07-03 17:00:00+00	M-F 9:00-17:30	t	t	1000169	51.606331	5.005621	5	http://tff-forum.de/viewtopic.php?f=9&t=1453&start=2350	2	120	f	f	\N	2022-07-10 20:51:59.140532+00	4
290	hangzhouxiachengsupercharger	Hangzhou Xiacheng, China	OPEN	2014-07-26 17:00:00+00	\N	t	t	1000191	30.3131265	120.1651448	36	\N	8	120	f	f	\N	2022-07-10 20:55:06.635795+00	2
300	maienfeldsupercharger	Maienfeld, Switzerland	OPEN	2014-10-27 17:00:00+00	\N	t	t	1000201	47.003972	9.525835	503	http://www.tff-forum.de/viewtopic.php?f=55&t=3518&start=90#p51275	14	125	f	f	2017-06-15: email saying 14 stalls	2019-08-29 05:35:31.967033+00	4
330	aksdalsupercharger	Aksdal, Norway	CLOSED_PERM	\N	\N	t	t	1000232	59.423006	5.44306	41	http://elbilforum.no/forum/index.php/topic,15598.210.html	8	150	f	f	\N	2021-11-23 14:32:08.970076+00	5
310	mosjoensupercharger	Mosjøen, Norway	OPEN	2014-11-25 18:00:00+00	\N	t	t	1000212	65.83483634	13.191672563	0	\N	6	150	f	f	\N	2019-09-08 19:21:29.48463+00	2
325	elverumsupercharger	Elverum, Norway	OPEN	2014-10-30 17:00:00+00	\N	t	t	1000227	60.884165	11.540741	186	\N	16	150	f	f	\N	2020-10-02 10:08:59.925472+00	4
320	cnsc9004	Hangzhou Euro America Center, China	OPEN	2014-08-20 17:00:00+00	\N	t	t	1000221	30.273066	120.137204	12	\N	2	120	f	f	\N	2021-02-09 09:08:06.963155+00	4
335	tokyojapansupercharger	Tokyo - Roppongi, Japan	OPEN	2014-09-09 17:00:00+00	\N	t	t	1000237	35.65951	139.72853	34	\N	2	120	f	f	.	2019-10-02 06:02:57.321198+00	3
385	turkeylakesupercharger	Turkey Lake, FL	OPEN	2014-11-21 18:00:00+00	\N	t	t	1000288	28.514874	-81.500214	1	http://www.teslamotorsclub.com/showthread.php/19367-Supercharger-in-Orlando-(Confirmed-)	6	150	f	f	6/1/18: Name changed to "Turkey Lake" to match Tesla official name.	2019-06-18 14:14:31.71115+00	4
355	lafayettesupercharger	Lafayette, IN	OPEN	2014-10-10 17:00:00+00	\N	t	t	1000255	40.416187	-86.814084	202	http://www.teslamotorsclub.com/showthread.php/22859-Anyone-have-info-on-Indy-or-Lafayette-IN-SuperCharger	8	150	f	f	\N	2019-08-07 15:36:52.161029+00	4
350	topekasupercharger	Topeka, KS	OPEN	2014-10-17 17:00:00+00	\N	t	t	1000251	39.044199	-95.76046	283	http://www.teslamotorsclub.com/showthread.php/32135-Supercharger-Topeka-KS	8	150	f	f	\N	2021-03-22 23:52:53.996191+00	3
295	auburnmasupercharger	Auburn, MA	OPEN	2014-12-29 18:00:00+00	\N	t	t	1000197	42.203764	-71.832954	154	https://teslamotorsclub.com/tmc/threads/supercharger-auburn-ma.34079/	8	150	f	f	\N	2021-08-16 21:20:05.33183+00	4
305	ocalasupercharger	Ocala, FL	OPEN	2014-11-03 18:00:00+00	\N	t	t	1000207	29.140985	-82.19395	23	https://teslamotorsclub.com/tmc/threads/supercharger-ocala-fl.34418/	8	150	f	f	\N	2022-02-10 01:21:44.150981+00	3
340	denversupercharger	Denver, CO	OPEN	2014-11-08 18:00:00+00	\N	t	t	1000242	39.775259	-104.794674	1641	http://www.teslamotorsclub.com/showthread.php/35644-Supercharger-Denver-CO	6	150	f	f	\N	2019-05-05 16:34:29.416532+00	2
370	villachsupercharger	Villach, Austria	OPEN	2014-12-19 18:00:00+00	\N	t	t	1000272	46.604079	13.86908	490	http://www.tff-forum.de/viewtopic.php?f=9&t=3580&start=110	8	150	f	f	\N	2019-08-30 16:12:23.275431+00	2
345	metzsupercharger	Metz, France	OPEN	2014-09-11 17:00:00+00	\N	t	t	1000245	49.216495	6.171078	162	\N	12	150	f	f	\N	2019-09-02 17:21:22.245568+00	5
410	fortdrumsupercharger	Fort Drum, FL	OPEN	2014-11-26 18:00:00+00	\N	t	t	1000313	27.601444	-80.822187	16	http://www.teslamotorsclub.com/showthread.php/37828-Ft-drum-FL-Service-Plaza-Supercharger	10	150	f	f	\N	2020-08-18 21:48:53.877558+00	3
390	cnsc8023	Changsha - Sunstar City, China	OPEN	2014-10-14 17:00:00+00	\N	t	t	1000293	28.347987	112.97953	57	\N	6	120	f	f	\N	2021-02-09 11:37:53.799463+00	2
400	rodekrosupercharger	Rødekro, Denmark	OPEN	2014-11-19 18:00:00+00	\N	t	t	1000303	55.067258	9.361119	48	\N	6	150	f	f	2016-01-03: Changed stall count to '6' to match Tesla site.\r\n2020-05-06: Please be aware that unlike Tesla we have two sites Åbenrå and Rødekro for this location with 6 and 10 stalls.	2020-06-23 09:09:21.08332+00	6
1825	salamancasupercharger	Salamanca, NY	OPEN	2019-01-31 18:00:00+00	\N	t	t	1001731	42.153067	-78.747726	429	https://teslamotorsclub.com/tmc/threads/supercharger-salamanca-ny.139097/	8	120	f	f	\N	2019-01-31 12:16:03.083788+00	3
420	achernsupercharger	Achern, Germany	OPEN	2014-12-14 18:00:00+00	\N	t	t	1000323	48.641373	8.03762	134	http://www.tff-forum.de/viewtopic.php?t=4742#p73353	6	150	f	f	\N	2019-08-29 05:38:33.280157+00	2
3855	\N	Lancelin, WA, Australia	PERMIT	\N	\N	t	t	1003830	-31.020497	115.332454	5	https://teslamotorsclub.com/tmc/threads/supercharger-lancelin-wa.247624/	3	250	f	f	\N	2021-11-23 08:22:28.0286+00	1
1755	dettelbachsupercharger	Dettelbach, Germany	OPEN	2018-12-20 18:00:00+00	\N	t	t	1001661	49.77884	10.068646	315	https://tff-forum.de/viewtopic.php?f=68&t=6133&start=4870#p581110	18	150	f	f	\N	2019-08-29 05:52:09.456198+00	9
440	cnsc8997	Xi'an - High-tech Xintiandi, China	OPEN	2014-11-18 18:00:00+00	\N	t	t	1000343	34.225265	108.887777	410	\N	4	120	f	f	\N	2021-02-09 08:32:39.6398+00	2
465	malsfeldsupercharger	Malsfeld, Germany	OPEN	2014-12-18 18:00:00+00	\N	t	t	1000368	51.087435	9.485296	269	\N	8	150	f	f	\N	2019-08-29 06:03:35.609726+00	2
430	goldenbcsupercharger	Golden, BC	OPEN	2015-02-04 18:00:00+00	\N	t	t	1000333	51.31325	-116.974152	802	http://www.teslamotorsclub.com/showthread.php/39677-Supercharger-Golden-BC-Canada	4	150	f	f	\N	2019-05-05 16:57:04.440755+00	2
425	leegardenssupercharger	Lee Gardens, Hong Kong	OPEN	2014-11-10 18:00:00+00	7.30am to 12.30am	t	t	1000328	22.278528	114.184861	54	\N	2	120	f	f	\N	2022-07-10 20:56:54.851972+00	3
460	shanghaigoldenjaguarhotelsupercharger	Shanghai - Golden Jaguar Hotel, China	OPEN	2014-12-01 18:00:00+00	\N	t	t	1000363	31.188299	121.375579	8	\N	2	120	f	f	\N	2022-07-10 20:58:22.326143+00	2
455	maidstonesupercharger	Maidstone, UK	OPEN	2014-11-27 18:00:00+00	\N	t	t	1000358	51.286224	0.545783	66	http://www.teslamotorsclub.com/showthread.php/8590-Tesla-Supercharger-network/page577?p=821778&viewfull=1#post821778	6	130	f	f	\N	2019-09-05 15:56:12.26039+00	3
450	marathonsupercharger	Marathon, FL	OPEN	2015-05-02 17:00:00+00	\N	t	t	1000353	24.725916	-81.047519	1	http://www.teslamotorsclub.com/showthread.php/38595-Supercharger-Marathon-FL	4	150	f	f	\N	2020-03-13 17:19:46.03314+00	4
485	rocklin	Rocklin (SC), CA	OPEN	2015-02-20 18:00:00+00	\N	t	t	1000388	38.800537	-121.210485	98	http://www.teslamotorsclub.com/showthread.php/39702-Supercharger-Under-Construction-Tesla-Rocklin-Service-Center	18	150	f	t	email saying 10 new stalls opened up	2020-03-04 03:57:34.837849+00	4
480	tooeleutsupercharger	Tooele, UT	OPEN	2015-02-25 18:00:00+00	\N	t	t	1000383	40.684486	-112.268818	1290	http://www.teslamotorsclub.com/showthread.php/38488-Supercharger-Tooele-UT	6	150	f	f	\N	2019-05-05 15:05:50.843312+00	2
520	elkonvsupercharger	Elko, NV	OPEN	2015-02-03 18:00:00+00	\N	t	t	1000423	40.836301	-115.790859	1574	http://www.teslamotorsclub.com/showthread.php/41175-Supercharger-Elko-NV	6	150	f	f	\N	2019-05-05 15:05:59.67999+00	2
435	sollentunasupercharger	Stockholm Infracity (SC), Sweden	OPEN	2014-11-21 18:00:00+00	\N	t	t	1000338	59.500624	17.926818	28	http://tesla.sondell.biz/?p=1802	2	120	f	f	Email saying correct stall count is 2.	2022-07-10 20:58:10.400929+00	7
495	cnsc8032	Xuzhou - New Century Grand Hotel, China	OPEN	2014-12-23 18:00:00+00	\N	t	t	1000398	34.245064	117.134447	29	\N	2	120	f	f	\N	2022-07-10 21:00:24.873933+00	3
490	northamptonsupercharger	Northampton, UK	OPEN	2014-12-19 18:00:00+00	\N	t	t	1000393	52.185729	-0.89127	81	\N	6	150	f	f	\N	2019-09-05 16:05:49.649751+00	2
2225	gapyeongsupercharger	Gapyeong, South Korea	OPEN	2019-12-24 18:00:00+00	\N	t	t	1002131	37.686451	127.49363	63	\N	6	120	f	f	\N	2020-03-13 07:54:34.446217+00	2
565	weatherfordoksupercharger	Weatherford, OK	OPEN	2015-03-11 17:00:00+00	\N	t	t	1000468	35.53859	-98.66012	485	http://www.teslamotorsclub.com/showthread.php/43155-SuperCharger-Weatherford-OK	6	150	f	f	\N	2019-05-05 16:23:49.133966+00	2
570	santarosanmsupercharger	Santa Rosa, NM	OPEN	2015-03-13 17:00:00+00	\N	t	t	1000473	34.947013	-104.647997	1440	http://www.teslamotorsclub.com/showthread.php/43840-Supercharger-Santa-Rosa-NM	6	150	f	f	\N	2019-05-05 16:25:30.480882+00	2
530	stcharlesmosupercharger	St. Charles, MO	OPEN	2015-04-15 17:00:00+00	\N	t	t	1000433	38.782139	-90.532862	149	http://www.teslamotorsclub.com/showthread.php/41457-Supercharger-St-Charles-MO	5	150	f	f	\N	2019-05-05 17:18:25.686161+00	2
535	londonwest	West Drayton, UK	OPEN	2015-07-16 17:00:00+00	\N	t	t	1000438	51.511647	-0.461166	30	https://speakev.com/threads/reasonably-solid-information-about-forthcoming-superchargers.6225/	5	130	f	f	\N	2019-12-25 16:23:11.693524+00	6
1365	cupertinosupercharger	Cupertino, CA	OPEN	2018-03-29 17:00:00+00	\N	t	t	1001271	37.324372	-122.009179	55	https://teslamotorsclub.com/tmc/threads/supercharger-cupertino-ca-live-28-mar-2018-10-v2-stalls.101106/	10	150	f	f	\N	2021-03-19 00:54:18.029408+00	4
560	independencemosupercharger	Independence, MO	OPEN	2015-02-17 18:00:00+00	\N	t	t	1000463	39.040814	-94.369265	245	http://www.teslamotorsclub.com/showthread.php/34783-Kansas-City-SuperCharger-(Independence-MO)/page5	6	150	f	f	\N	2021-03-28 16:18:49.02788+00	3
470	auburnalsupercharger	Auburn, AL	OPEN	2014-12-23 18:00:00+00	\N	t	t	1000373	32.627837	-85.445105	222	https://teslamotorsclub.com/tmc/threads/auburn-al-supercharger.39069/	6	150	f	f	\N	2021-08-16 21:18:37.574104+00	5
550	affisupercharger	Affi, Italy	OPEN	2016-02-06 18:00:00+00	\N	t	t	1000453	45.551296	10.787143	189	https://forum.supercharge.info/t/supercharger-affi-italy/1938	24	250	f	f	16 V2 + 8 V3	2022-04-01 18:16:14.288968+00	6
540	aarhusviborgvej	Aarhus (SC), Denmark	OPEN	2015-02-06 18:00:00+00	\N	t	t	1000443	56.178223	10.139406	67	http://teslaforum.dk/forum/topic/fremskridt-med-ladestander-i-%C3%A5rhus-tilst?page=1#post-17622	6	120	f	f	\N	2022-07-10 21:04:59.337049+00	3
610	sheridansupercharger	Sheridan, WY	OPEN	2015-07-15 17:00:00+00	\N	t	t	1000513	44.804565	-106.956363	1136	http://www.teslamotorsclub.com/showthread.php/44645-Sheridan-Supercharger-Updates	4	150	f	f	\N	2019-05-05 16:58:20.298199+00	2
1945	vicenzasupercharger	Vicenza, Italy	OPEN	2019-10-24 17:00:00+00	\N	t	t	1001851	45.508412	11.626038	28	https://www.teslari.it/forum/superchargers/supercharger-di-vicenza/paged/4/#post-51067	12	150	f	f	\N	2019-10-24 05:57:03.580695+00	8
620	sheboygansupercharger	Sheboygan, WI	OPEN	2015-10-07 17:00:00+00	\N	t	t	1000523	43.749912	-87.747073	200	http://www.teslamotorsclub.com/showthread.php/50958-Supercharger-Sheboygan-WI	8	150	f	f	\N	2019-11-01 17:33:08.491384+00	2
575	sangerhausensupercharger	Sangerhausen, Germany	OPEN	2015-04-01 17:00:00+00	\N	t	t	1000478	51.450532	11.304467	148	http://tff-forum.de/viewtopic.php?f=9&t=1453&start=5720	6	130	f	f	Updated power output in line with https://tff-forum.de/t/supercharger-in-deutschland/100662/577	2021-03-18 08:58:24.423068+00	3
4180	\N	New Castle - I-295, DE	PERMIT	\N	\N	t	t	1004155	39.6952	-75.5555	7	https://teslamotorsclub.com/tmc/threads/supercharger-new-castle-off-i-295-de.264185/	8	250	f	f	\N	2022-04-16 03:04:36.189271+00	2
585	brinkumsupercharger	Stuhr (Bremen-Brinkum), Germany	CLOSED_PERM	\N	\N	t	t	1000488	53.02836	8.806156	6	http://tff-forum.de/viewtopic.php?f=9&t=1453&p=116296#p116296	4	120	f	f	Closed according to: https://forum.supercharge.info/t/stuhr-germany-permanently-closed/819\r\nNew site nearby.	2022-07-10 21:07:02.061234+00	4
590	graz	Graz (SC), Austria	OPEN	2015-07-30 17:00:00+00	\N	t	t	1000493	47.037208	15.478644	348	http://tff-forum.de/viewtopic.php?f=68&t=3580&start=840	4	120	f	f	\N	2022-07-10 21:07:41.959765+00	3
645	duluthsupercharger	Duluth, MN	OPEN	2015-07-17 17:00:00+00	\N	t	t	1000548	46.784467	-92.10232	200	http://www.teslamotorsclub.com/showthread.php/38997-Minnesota-SuperCharger-Future-Location-Discussion/page4?p=1052767&viewfull=1#post1052767	4	150	f	f	\N	2019-05-05 19:19:00.423215+00	2
630	porsgrunntelemarksportensupercharger	Porsgrunn, Norway	OPEN	2015-07-10 17:00:00+00	\N	t	t	1000533	59.122098	9.707564	33	http://elbilforum.no/forum/index.php?topic=7959.2505	12	150	f	f	\N	2019-09-08 19:34:41.23061+00	3
615	paimiosupercharger	Paimio, Finland	OPEN	2015-05-07 17:00:00+00	\N	t	t	1000518	60.442961	22.605621	18	http://www.teslaclub.fi/blog/9/Ensimm%C3%A4iset+SuperChargerit+aukeavat+pian!/	8	130	f	f	4 more stalls under construction	2019-09-04 16:37:32.829215+00	5
1015	beijinglaiguangyingsupercharger	Laiguangying, Beijing, China	OPEN	2016-12-31 18:00:00+00	\N	t	t	1000919	40.031033	116.448334	41	\N	4	120	f	f	\N	2022-07-10 21:29:29.932242+00	3
680	birchangergreensupercharger	Birchanger Green, UK	OPEN	2015-08-11 17:00:00+00	\N	t	t	1000584	51.871619	0.193886	93	https://speakev.com/threads/reasonably-solid-information-about-forthcoming-superchargers.6225/page-15	4	130	f	f	\N	2019-09-05 15:55:54.662748+00	2
670	kennewicksupercharger	Kennewick, WA	OPEN	2015-09-04 17:00:00+00	\N	t	t	1000574	46.198085	-119.162734	167	http://www.teslamotorsclub.com/showthread.php/50961-Tri-Cities-Supercharger	8	150	f	f	\N	2019-05-05 17:01:00.665374+00	2
650	pricesupercharger	Price, UT	OPEN	2015-10-16 17:00:00+00	\N	t	t	1000553	39.600731	-110.831701	1207	http://www.teslamotorsclub.com/showthread.php/43959-Supercharger-Price-UT	8	150	f	f	\N	2019-05-05 16:18:45.218684+00	3
675	huangshanyuanyisupercharger	Huangshan Yuanyi Baizhuang	OPEN	2015-08-04 17:00:00+00	\N	t	t	1000579	29.702871	118.31356	130	\N	4	120	f	f	\N	2022-07-10 21:09:41.339996+00	2
640	berstelandsupercharger	Bersteland, Germany	OPEN	2015-06-19 17:00:00+00	\N	t	t	1000543	51.949095	13.787957	54	http://tff-forum.de/viewtopic.php?f=68&t=6133&start=710	6	104	f	f	\N	2020-09-12 19:20:27.424242+00	3
625	brentwood	Nashville - Brentwood (SC), TN	OPEN	2015-07-08 17:00:00+00	\N	t	t	1000528	35.969209	-86.804641	226	http://www.teslamotorsclub.com/showthread.php/33444-Supercharger-Nashville-TN	6	150	f	f	\N	2021-01-20 21:56:15.364956+00	8
660	byglandsupercharger	Bygland, Norway	OPEN	2015-11-12 18:00:00+00	\N	t	t	1000563	58.82792	7.796114	208	http://elbilforum.no/forum/index.php?topic=7959.2565	8	150	f	f	Correct number stalls Bygland Norway will be 8 (not 6)\r\nPicture taken Tuesday 10th of November\r\nRegards Arne Hoem	2019-09-08 19:37:04.249908+00	2
705	shanghaikempinskihotelsupercharger	Shanghai-Kempinski Hotel, China	OPEN	2015-09-16 17:00:00+00	\N	t	t	1000609	31.242218	121.504775	7	\N	4	120	f	f	\N	2022-07-10 21:10:55.785278+00	2
720	nanchangzhongchangsupercharger	Nanchang, China	OPEN	2015-10-14 17:00:00+00	\N	t	t	1000624	28.720737	115.794675	25	\N	4	120	f	f	\N	2022-07-10 21:11:33.140897+00	3
725	kingslandsupercharger	Kingsland, GA	OPEN	2015-11-18 18:00:00+00	\N	t	t	1000629	30.790764	-81.663729	9	https://teslamotorsclub.com/tmc/threads/supercharger-%E2%80%94-kingsland-ga.56149/	8	150	f	f	\N	2020-01-01 23:04:12.587755+00	4
765	lermoossupercharger	Lermoos, Austria	OPEN	2015-12-15 18:00:00+00	\N	t	t	1000669	47.3948	10.887553	1006	\N	10	125	f	f	SInce opening of the nearby Biberwier SuC now 125 kW on in-car map.	2021-11-22 07:49:42.313098+00	6
745	liezensupercharger	Liezen, Austria	OPEN	2016-11-10 18:00:00+00	\N	t	t	1000649	47.55952	14.251709	630	http://tff-forum.de/viewtopic.php?f=68&t=3580&start=1280	8	130	f	f	2016-09-11: email saying this site has 8 stalls.	2019-08-30 16:08:50.452613+00	7
740	tonopahsupercharger	Tonopah, NV	OPEN	2016-06-03 17:00:00+00	\N	t	t	1000644	38.069801	-117.232243	1834	http://www.teslamotorsclub.com/showthread.php/56749-Supercharger-Tonopah-NV	8	150	f	f	\N	2019-05-05 16:02:50.044472+00	8
750	kaiserslauternsupercharger	Kaiserslautern Eselsfürth, Germany	OPEN	2015-12-17 18:00:00+00	\N	t	t	1000654	49.459902	7.82134	255	http://tff-forum.de/viewtopic.php?p=191904#p191904	8	150	f	f	\N	2019-08-29 06:06:03.674058+00	2
690	gundagaisupercharger	Gundagai, NSW	OPEN	2015-11-20 18:00:00+00	\N	t	t	1000594	-35.002153	148.109873	259	https://teslamotorsclub.com/tmc/threads/supercharger-gundagai-nsw.51451	6	150	f	f	\N	2021-03-18 01:49:08.153597+00	4
735	cnsc8070	Shaoguan - Sun City Phoenix Hotel, China	OPEN	2015-10-28 17:00:00+00	\N	t	t	1000639	24.762329	113.545654	122	\N	4	120	f	f	\N	2021-01-28 13:28:16.613508+00	3
780	cnsc8078	Yanan - Longhua Garden Hotel, China	OPEN	2015-12-30 18:00:00+00	\N	t	t	1000684	36.588867	109.468124	1080	\N	4	120	f	f	\N	2021-01-28 13:31:07.196949+00	2
770	cnsc8071	Zhongshan - Baosheng Baihui Plaza, China	OPEN	2015-12-17 18:00:00+00	\N	t	t	1000674	22.55954	113.456535	19	\N	4	120	f	f	\N	2021-01-28 13:36:22.93966+00	3
800	limamtsupercharger	Lima, MT	OPEN	2017-01-09 18:00:00+00	\N	t	t	1000704	44.632745	-112.591203	1912	http://www.teslamotorsclub.com/showthread.php/63176-Supercharger-Lima-MT	8	150	f	f	\N	2019-05-05 16:06:24.779634+00	6
755	bispingensupercharger	Bispingen, Germany	OPEN	2015-12-08 18:00:00+00	\N	t	t	1000659	53.104089	9.981917	78	http://tff-forum.de/viewtopic.php?f=68&t=6133&start=1830	10	150	f	f	10 Aug 2021: Still 10 stalls, 16 was an error.	2021-08-10 14:50:51.051391+00	5
810	okayamaedionkurashikisupercharger	Kurashiki, Japan	OPEN	2016-03-18 17:00:00+00	\N	t	t	1000714	34.578345	133.769448	5	\N	4	120	f	f	\N	2022-07-10 21:23:45.52401+00	2
815	cnsc8083	Sanya - Pearl Plaza, China	OPEN	2016-03-25 17:00:00+00	\N	t	t	1000719	18.257536	109.503349	5	\N	6	120	f	f	\N	2021-01-28 13:26:22.95117+00	2
825	cnsc8085	Ya'an - Yudu Hotel, China	OPEN	2016-04-11 17:00:00+00	\N	t	t	1000729	29.989832	103.006912	581	\N	4	120	f	f	\N	2021-01-28 13:30:35.64897+00	2
3870	AsarnaSupercharger	Åsarna, Sweden	OPEN	2021-11-30 18:00:00+00	\N	t	t	1003845	62.640747	14.371052	355	\N	8	250	f	f	\N	2021-12-01 06:54:26.122242+00	3
855	splitcroatiasupercharger	Dugopolje, Croatia	OPEN	2016-05-31 17:00:00+00	\N	t	t	1000759	43.587987	16.577041	301	\N	6	125	f	f	\N	2019-08-30 16:32:06.059308+00	7
805	valenciaspainsupercharger	Valencia, Spain	OPEN	2016-07-20 17:00:00+00	\N	t	t	1000709	39.542965	-0.451521	107	\N	6	150	f	f	2016-05-01: stall count 6 to 4\r\n2019-08-02: stall count 4 to 6	2019-09-04 16:06:00.944933+00	9
795	edsbruksupercharger	Edsbruk, Sweden	OPEN	2016-10-13 17:00:00+00	\N	t	t	1000699	57.97985	16.482407	25	http://teslaclubsweden.se/forum/viewtopic.php?f=10&t=3436&start=30#p65124	14	250	f	f	2022-05-24 Upgraded from 6 to 14 (150->250)	2022-05-24 16:24:22.425965+00	7
850	buenapark	Buena Park (SC), CA	OPEN	2016-10-20 17:00:00+00	\N	t	t	1000754	33.863379	-117.99103	25	https://teslamotorsclub.com/tmc/threads/supercharger-buena-park-confirmed-by-tesla-staff-construction-starting-soon.69490	8	120	f	f	\N	2022-07-10 20:31:52.552211+00	7
845	minersupercharger	Miner, MO	OPEN	2016-06-01 17:00:00+00	\N	t	t	1000749	36.893583	-89.533986	94	https://teslamotorsclub.com/tmc/threads/supercharger-miner-mo.70042/	8	150	f	f	\N	2019-05-05 17:17:55.999341+00	8
375	reddeersupercharger	Red Deer, AB	OPEN	2015-01-22 18:00:00+00	\N	t	t	1000278	52.251899	-113.814659	878	http://www.teslamotorsclub.com/showthread.php/35537-Western-Canada-Superchargers/page13?p=777783#post777783	4	150	f	f	\N	2019-05-05 16:57:25.959709+00	3
885	drachtensupercharger	Drachten, Netherlands	OPEN	2016-07-15 17:00:00+00	\N	t	t	1000789	53.105883	6.129539	6	\N	12	150	f	f	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3530338/\r\n2019-08-29: updated to 150kW as per the Tesla nav data	2019-08-29 16:18:33.978342+00	4
880	laldeasupercharger	L´Aldea, Spain	OPEN	2016-07-05 17:00:00+00	\N	t	t	1000784	40.753019	0.606421	32	\N	8	150	f	f	\N	2022-04-16 07:07:12.882195+00	3
865	hkemaxsupercharger	E-Max, Hong Kong	OPEN	2016-06-21 17:00:00+00	\N	t	t	1000769	22.324074	114.20381	21	\N	8	120	f	f	\N	2022-07-10 21:24:38.896237+00	4
860	porthuronsupercharger	Port Huron, MI	OPEN	2016-08-18 17:00:00+00	\N	t	t	1000764	42.998817	-82.428935	182	https://teslamotorsclub.com/tmc/threads/port-huron-michigan-supercharger.71116/	8	150	f	f	Update from latest car map data	2020-02-09 20:10:37.742441+00	6
230	cnsc8092	Beijing - Qinghe Wanxianghui, China	OPEN	2014-05-19 17:00:00+00	\N	t	t	1000130	39.977989	116.481445	42	http://www.teslamotorsclub.com/showthread.php/30064-Elon-will-deliver-the-first-batch-of-Model-S-to-Chinese-customers-on-April-22nd	6	120	f	f	\N	2021-02-14 11:38:46.512926+00	6
1830	columbusohiosupercharger	Columbus, OH	OPEN	2019-02-15 18:00:00+00	\N	t	t	1001736	39.974472	-83.00092	230	https://teslamotorsclub.com/tmc/threads/columbus-oh-downtown-supercharger.139316	10	72	f	f	\N	2019-02-14 13:00:38.018897+00	3
1835	nationalharborsupercharger	National Harbor - Potomac Passage, MD	OPEN	2019-02-16 18:00:00+00	\N	t	t	1001741	38.785335	-77.014771	11	https://teslamotorsclub.com/tmc/posts/3252340/	12	72	f	f	\N	2019-02-20 02:47:40.189148+00	3
820	leemasupercharger	Lee, MA	OPEN	2016-08-20 17:00:00+00	\N	t	t	1000724	42.29571	-73.239245	267	https://teslamotorsclub.com/tmc/threads/supercharger-lee-ma.67928/	8	150	f	f	\N	2022-02-10 01:23:44.90861+00	7
920	dundeesupercharger	Dundee, UK	OPEN	2016-12-02 18:00:00+00	\N	t	t	1000824	56.466428	-3.062962	20	\N	8	150	f	f	\N	2019-09-05 15:41:06.20209+00	8
3040	cnsc9231	Qingdao - Kaifeng International Financial Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003002	36.27452304	120.2843864	0	\N	9	250	f	f	\N	2021-02-21 02:52:00.497761+00	1
915	berlinvtsupercharger	Berlin, VT	OPEN	2016-10-03 17:00:00+00	\N	t	t	1000819	44.212532	-72.576462	299	https://teslamotorsclub.com/tmc/threads/supercharger-berlin-vt.76478/	8	150	f	f	\N	2022-02-10 01:43:47.978136+00	7
890	japanhamamatsusupercharger	Hamamatsu 浜松, Japan	OPEN	2016-07-16 17:00:00+00	\N	t	t	1000794	34.840437	137.748006	91	\N	4	120	f	f	\N	2022-07-10 21:25:09.524258+00	2
930	northaurorasupercharger	North Aurora, IL	OPEN	2016-10-05 17:00:00+00	\N	t	t	1000834	41.802949	-88.370249	212	https://teslamotorsclub.com/tmc/threads/supercharger-north-aurora-il.78488	8	150	f	f	.	2020-09-26 12:19:27.407682+00	8
905	bakersfieldsupercharger	Bakersfield, CA	OPEN	2016-09-29 17:00:00+00	\N	t	t	1000809	35.354643	-119.331607	93	https://teslamotorsclub.com/tmc/threads/supercharger-i-5-stockdale-hwy-under-construction.75485/#post-1678927	10	150	f	t	\N	2019-05-05 14:49:16.303837+00	11
935	aireducaylarsupercharger	Le Caylar, France	OPEN	2016-10-11 17:00:00+00	\N	t	t	1000839	43.864589	3.313277	733	\N	8	150	f	f	\N	2019-09-02 17:04:58.231967+00	2
950	moncalierisupercharger	Moncalieri, Italy	OPEN	2016-12-05 18:00:00+00	\N	t	t	1000854	44.973333	7.730113	224	\N	8	150	f	f	\N	2019-09-04 16:18:51.403595+00	4
940	cnsc8101	Shanghai - K11 Art Mall, China	OPEN	2016-08-17 17:00:00+00	\N	t	t	1000844	31.223318	121.473305	18	\N	6	120	f	f	\N	2021-02-08 12:36:43.470497+00	5
960	cnsc8102	Zhaoqing - Country Garden Phoenix Hotel, China	OPEN	2016-10-30 17:00:00+00	\N	t	t	1000864	23.00935	112.456787	10	\N	4	120	f	f	\N	2021-02-08 12:53:51.896491+00	3
4185	OswegoILSupercharger	Oswego, IL	OPEN	2022-05-28 17:00:00+00	\N	t	t	1004160	41.699456	-88.3123	202	https://teslamotorsclub.com/tmc/threads/supercharger-oswego-il.264425	12	250	f	f	\N	2022-05-28 04:14:35.503396+00	2
4415	wmhotelsupercharger	WM Hotel, Hong Kong	OPEN	2022-07-06 17:00:00+00	\N	t	t	1004390	22.385052	114.276064	3	https://teslamotorsclub.com/tmc/forums/hong-kong.92/	3	250	f	f	\N	2022-07-06 13:39:14.188457+00	1
925	tarrytownsupercharger	Tarrytown, NY	OPEN	2016-12-02 18:00:00+00	\N	t	t	1000829	41.061499	-73.836411	51	https://teslamotorsclub.com/tmc/threads/supercharger-tarrytown-ny.78148/	12	120	f	f	\N	2022-07-10 20:33:18.063783+00	6
945	chenzhouyizhangsupercharger	Chenzhou - Yizhang, China	OPEN	2016-09-01 17:00:00+00	\N	t	t	1000849	25.401274	112.977646	336	\N	4	120	f	f	\N	2022-07-10 21:27:36.788261+00	4
985	fortstocktonsupercharger	Fort Stockton, TX	OPEN	2018-10-15 17:00:00+00	\N	t	t	1000889	30.905492	-102.88453	901	https://teslamotorsclub.com/tmc/threads/supercharger-fort-stockton-texas.81725/	8	150	f	f	2018-05-24: Updated co-ords/address based on TMC thread	2019-05-05 16:20:34.73631+00	10
965	junctionsupercharger	Junction, TX	OPEN	2017-01-04 18:00:00+00	\N	t	t	1000869	30.509233	-99.77456	519	https://teslamotorsclub.com/tmc/threads/supercharger-junction-tx.80397	8	150	f	f	\N	2019-05-05 16:21:09.186711+00	8
1000	cnsc8093	Chengde - Bifengmen, China	OPEN	2016-12-17 18:00:00+00	\N	t	t	1000904	40.988365	117.926208	386	\N	4	120	f	f	\N	2021-01-28 13:11:46.986237+00	2
1020	cnsc8110	Heyuan - Hilton Hotel, China	OPEN	2017-01-13 18:00:00+00	\N	t	t	1000924	23.767788	114.719269	41	\N	4	120	f	f	\N	2021-02-08 12:18:20.254145+00	2
1005	moglianovenetosupercharger	Mogliano Veneto, Italy	OPEN	2016-12-23 18:00:00+00	\N	t	t	1000909	45.584722	12.287137	5	\N	16	250	f	f	8 V2 + 8 V3	2022-05-24 10:01:07.458375+00	3
1010	airedurvillerssupercharger	Urvillers, France	OPEN	2017-04-13 17:00:00+00	\N	t	t	1000914	49.787019	3.335626	104	\N	8	150	f	f	.	2019-09-02 17:23:28.548216+00	9
1040	occhiobellosupercharger	Occhiobello, Italy	OPEN	2017-02-22 18:00:00+00	\N	t	t	1000944	44.918787	11.594051	6	\N	8	150	f	f	\N	2019-09-04 16:25:28.070605+00	2
1055	cnsc8112	Shanghai - Wanbao International Plaza, China	OPEN	2017-03-21 17:00:00+00	\N	t	t	1000959	31.216944	121.436203	7	\N	6	120	f	f	\N	2021-02-08 12:32:38.443617+00	2
1030	cnsc8111	Shenzhen - Tianan Digital City, China	OPEN	2017-02-08 18:00:00+00	\N	t	t	1000934	22.52968	114.031258	10	\N	6	120	f	f	\N	2021-02-08 12:38:13.280375+00	2
3045	cnsc9236	Chongqing - Luneng 13th Block, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003007	29.61217	106.5694	253	\N	6	250	f	f	\N	2021-02-21 02:59:31.002021+00	1
1065	floridacitysupercharger	Florida City, FL	OPEN	2017-06-02 17:00:00+00	\N	t	t	1000969	25.456825	-80.474341	1	https://teslamotorsclub.com/tmc/threads/florida-city-fl.88492	8	150	f	f	\N	2020-02-09 20:28:21.204704+00	10
700	gardnervillesupercharger	Gardnerville, NV	OPEN	2015-10-22 17:00:00+00	\N	t	t	1000604	38.696426	-119.548534	1579	http://www.teslamotorsclub.com/showthread.php/53008-Supercharger-Gardnerville-NV	6	150	f	f	\N	2019-05-05 15:50:11.136441+00	3
975	klamathfallssupercharger	Klamath Falls, OR	OPEN	2017-03-16 17:00:00+00	\N	t	t	1000879	42.216906	-121.756218	1250	https://teslamotorsclub.com/tmc/threads/supercharger-klamath-falls-or.81197/	8	150	f	f	\N	2019-05-05 17:13:51.741608+00	7
1080	bolingbrooksupercharger	Bolingbrook, IL	OPEN	2017-05-31 17:00:00+00	\N	t	t	1000984	41.722189	-88.037278	226	https://teslamotorsclub.com/tmc/threads/supercharger-bolingbrook-il.89554	16	250	f	f	Note; 8x 150kW, 8x 250 kW	2020-02-17 22:37:47.009028+00	7
240	randerssupercharger	Randers, Denmark	OPEN	2014-05-30 17:00:00+00	\N	t	t	1000139	56.433685	10.055412	30	http://teslaforum.dk/forum/topic/tesla-supercharger-superlader?page=4#post-5977	14	130	f	f	\N	2019-08-30 16:37:57.193999+00	3
1050	woodallsouthboundsupercharger	Woodall Southbound, UK	OPEN	2017-03-21 17:00:00+00	\N	t	t	1000954	53.314145	-1.281904	128	\N	8	125	f	f	2018-06-07: Rename to Southbound due to permit for Northbound site	2019-09-05 15:44:58.379554+00	9
1045	newportpagnellsouthboundsupercharger	Newport Pagnell Southbound, UK	OPEN	2017-03-21 17:00:00+00	\N	t	t	1000949	52.084312	-0.748467	71	\N	12	150	f	f	Renamed to Southbound as per: https://teslamotorsclub.com/tmc/threads/tesla-announcement.140571/	2019-09-05 16:03:21.802586+00	9
3875	ChapelHillNCSupercharger	Chapel Hill, NC	CONSTRUCTION	\N	\N	t	t	1003850	35.969846	-79.06356	162	https://teslamotorsclub.com/tmc/threads/supercharger-chapel-hill-nc.226439/	10	250	f	f	\N	2022-01-02 17:32:09.102574+00	5
1090	fleetsupercharger	Fleet Northbound, UK	OPEN	2018-03-13 17:00:00+00	\N	t	t	1000994	51.296156	-0.857274	67	https://teslamotorsclub.com/tmc/posts/2611541/	12	150	f	f	2018-03-14: Photos show 12.  Tesla site reports 8?	2019-09-05 15:50:38.161659+00	8
1085	bratislavasupercharger	Bratislava, Slovakia	OPEN	2017-05-20 17:00:00+00	\N	t	t	1000989	48.132138	17.108438	136	https://teslaclub.sk/forum/v%C5%A1eobecn%C3%A9-f%C3%B3rum/nab%C3%ADjacie-%C5%A1tandardy-a-infra%C5%A1trukt%C3%BAra/nab%C3%ADjacie-stanice/14432-nov%C3%BD-supercharger-v-bratislave?p=15295#post15295	6	130	f	f	\N	2019-10-15 00:39:12.123452+00	13
1105	burtonwoodsupercharger	Burtonwood, UK	OPEN	2018-07-02 17:00:00+00	\N	t	t	1001009	53.417605	-2.639522	12	https://teslamotorsclub.com/tmc/posts/2844571/	8	150	f	f	Royaume-Uni	2019-09-05 15:45:52.452829+00	5
910	fortmacleadsupercharger	Fort MacLeod, AB	OPEN	2016-11-24 18:00:00+00	\N	t	t	1000814	49.724991	-113.397336	946	https://teslamotorsclub.com/tmc/threads/supercharger-fort-macleod-ab.78168/	8	150	f	f	\N	2020-05-09 04:57:31.276993+00	9
1115	seoulgangnamsupercharger	Seoul - Gangnam, South Korea	OPEN	2017-05-31 17:00:00+00	\N	t	t	1001019	37.509215	127.06079	30	\N	5	120	f	f	\N	2022-07-10 21:30:55.907644+00	2
1130	seouljongnosupercharger	Seoul - Jongno, South Korea	OPEN	2017-06-12 17:00:00+00	\N	t	t	1001034	37.570693	126.981511	45	\N	6	120	f	f	\N	2022-07-10 21:31:20.164862+00	3
1135	chateauvillainorgessupercharger	Aire de Châteauvillain - Orges, France	OPEN	2017-06-18 17:00:00+00	\N	t	t	1001039	48.057681	4.96061	257	\N	6	150	f	f	\N	2019-09-02 17:32:40.705359+00	3
1100	telfordsupercharger	Telford, UK	OPEN	2017-09-30 17:00:00+00	\N	t	t	1001004	52.677334	-2.399552	114	https://speakev.com/threads/telford-m54-superchargers.49865/	8	130	f	f	\N	2019-09-05 15:47:04.616915+00	4
1150	cnsc8116	Wuhan - Baoshi Auto Plaza, China	OPEN	2017-06-18 17:00:00+00	\N	t	t	1001054	30.479657	114.190621	25	\N	6	120	f	f	\N	2021-02-08 12:45:53.05436+00	2
1145	cnsc8119	Xiamen - Wanyue City, China	OPEN	2017-06-18 17:00:00+00	\N	t	t	1001049	24.514809	118.161575	0	\N	6	120	f	f	\N	2021-02-08 12:48:36.862725+00	3
1160	truthorconsequencessupercharger	Truth or Consequences, NM	OPEN	2017-07-08 17:00:00+00	\N	t	t	1001064	33.15524	-107.251642	1353	https://teslamotorsclub.com/tmc/threads/supercharger-truth-or-consequences-nm.92964	8	150	f	f	\N	2019-05-05 16:33:19.640308+00	5
1165	levisqcsupercharger	Levis, QC	OPEN	2017-10-04 17:00:00+00	\N	t	t	1001069	46.73032	-71.26821	40	https://teslamotorsclub.com/tmc/threads/superchargers-levis-qc.93351/	10	150	f	f	2018-01-07: Updated name to "Levis" to match official name	2021-08-14 12:05:00.336207+00	8
1110	mcallensupercharger	McAllen, TX	OPEN	2017-07-28 17:00:00+00	\N	t	t	1001014	26.198443	-98.259839	34	https://teslamotorsclub.com/tmc/threads/supercharger-mcallen-texas.91366/	8	150	f	f	Original open date is 2017-07-28.	2019-05-05 19:22:04.715328+00	6
1155	valenciennessupercharger	Valenciennes, France	OPEN	2017-06-21 17:00:00+00	\N	t	t	1001059	50.336704	3.455931	51	\N	10	150	f	f	\N	2019-09-02 16:59:08.732938+00	2
1170	valdemeusesupercharger	Val-de-Meuse, France	OPEN	2017-07-08 17:00:00+00	\N	t	t	1001074	47.99147	5.51296	355	https://teslamotorsclub.com/tmc/threads/superchargers-frankrijk.33554/page-13#post-2173944	16	150	f	f	\N	2019-09-02 17:15:05.183996+00	10
1125	granadasupercharger	Granada, Spain	OPEN	2017-09-08 17:00:00+00	\N	t	t	1001029	37.181805	-3.928417	594	\N	10	150	f	f	\N	2019-09-04 15:56:38.168658+00	9
1190	liveoaksupercharger	Live Oak, FL	OPEN	2017-08-20 17:00:00+00	\N	t	t	1001094	30.331363	-82.961355	38	https://teslamotorsclub.com/tmc/threads/live-oak-supercharger.94064/	12	150	f	f	\N	2020-02-09 20:27:37.054598+00	6
3885	yeosusupercharger	Yeosu, South Korea	OPEN	2021-12-10 18:00:00+00	\N	t	t	1003860	34.72179	127.69945	10	https://teslamotorsclub.com/tmc/forums/south-korea.322/	8	250	f	f	\N	2021-12-09 22:17:47.415573+00	1
1220	cnsc8131	Taiyuan - Huayu Baihua Valley, China	OPEN	2017-08-02 17:00:00+00	\N	t	t	1001124	37.806606	112.547974	781	\N	6	120	f	f	\N	2021-02-08 12:42:55.314901+00	2
1180	sherburnmnsupercharger	Sherburn, MN	OPEN	2017-11-19 18:00:00+00	\N	t	t	1001084	43.66182	-94.733012	395	https://teslamotorsclub.com/tmc/threads/supercharger-sherburn-mn.93745/	8	150	f	f	\N	2019-05-05 23:02:22.000942+00	4
1215	beelitzsupercharger	Beelitz, Germany	OPEN	2018-03-10 18:00:00+00	\N	t	t	1001119	52.266782	12.922582	68	\N	14	150	f	f	\N	2019-08-29 05:48:36.545989+00	10
1195	sanluisdelapazsupercharger	San Luis de la Paz, Mexico	OPEN	2017-07-17 17:00:00+00	\N	t	t	1001099	21.294528	-100.593546	1985	https://teslamotorsclub.com/tmc/threads/mexico-superchargers.43464/	6	150	f	f	\N	2021-03-19 00:52:41.584261+00	4
1185	sanfranciscoocotlansupercharger	San Francisco Ocotlán, Mexico	OPEN	2017-07-15 17:00:00+00	\N	t	t	1001089	19.131853	-98.267274	2191	https://teslamotorsclub.com/tmc/threads/mexico-superchargers.43464/	6	150	f	f	\N	2021-03-19 00:53:51.033152+00	3
1225	cnsc8127	Yibin - City Celebrity Hotel, China	OPEN	2017-08-02 17:00:00+00	\N	t	t	1001129	28.7494054464	104.6050000142	252	\N	4	120	f	f	\N	2021-02-08 12:50:21.315225+00	2
1255	hokksundsupercharger	Hokksund, Norway	OPEN	2017-09-28 17:00:00+00	\N	t	t	1001160	59.761033	9.905583	10	https://elbilforum.no/forum/index.php/topic,7959.msg607315.html	20	150	f	f	Power is 1600 kW. Not possible to enter this value as it is restricted to 3 digits.	2019-09-08 19:36:15.780992+00	4
1250	memburyeastboundsupercharger	Membury Services Eastbound, UK	OPEN	2018-06-29 17:00:00+00	\N	t	f	1001155	51.4839	-1.5568	206	https://speakev.com/threads/reasonably-solid-information-about-forthcoming-superchargers.6225/page-64.%20Post%201273	6	150	f	f	Berkshire  UK	2020-01-09 15:09:44.320893+00	7
1205	pinellasparksupercharger	Pinellas Park, FL	OPEN	2017-08-10 17:00:00+00	\N	t	t	1001109	27.8461	-82.678114	4	https://teslamotorsclub.com/tmc/threads/supercharger-pinellas-park-wawa.94533	8	150	f	f	\N	2022-02-10 01:22:00.177749+00	7
1235	southlaketxsupercharger	Southlake, TX	OPEN	2018-04-19 17:00:00+00	\N	t	t	1001139	32.943488	-97.133843	199	https://teslamotorsclub.com/tmc/threads/supercharger-southlake-texas.96180	10	150	f	f	\N	2019-05-06 04:13:50.567488+00	8
1210	edmontonsupercharger	Edmonton, AB	OPEN	2017-08-12 17:00:00+00	\N	t	t	1001114	53.486136	-113.515746	684	https://teslamotorsclub.com/tmc/posts/2213262/	8	150	f	f	\N	2021-08-03 14:12:12.496847+00	12
1230	burlingtonnjsupercharger	Burlington, NJ	OPEN	2017-09-10 17:00:00+00	\N	t	t	1001134	40.101525	-74.793172	14	https://teslamotorsclub.com/tmc/threads/supercharger-burlington-nj.95877/	8	120	f	f	\N	2022-07-10 20:34:16.924843+00	4
1245	vestecsupercharger	Vestec, Czech Republic	OPEN	2017-09-24 17:00:00+00	\N	t	t	1001150	49.9898398	14.4907623	313	http://www.hybrid.cz/u-prahy-roste-druhy-cesky-tesla-supercharger-s-10-stojany	8	125	f	f	Motel u KRBU\r\nVídeňská 360\r\n252 42	2021-11-17 21:13:11.316446+00	7
1285	cnsc8147	Chongqing - Regent Hotel, China	OPEN	2017-09-23 17:00:00+00	\N	t	t	1001190	29.57141363	106.5706922	201	\N	6	120	f	f	\N	2021-02-08 12:08:12.549415+00	2
1270	cnsc8140	Wuhan - Eurasia Convention International Hotel, China	OPEN	2017-09-18 17:00:00+00	\N	t	t	1001175	30.63942823	114.2060861	19	\N	6	120	f	f	\N	2021-02-08 12:46:29.183919+00	2
1240	martinsburgsupercharger	Martinsburg, WV	OPEN	2017-09-30 17:00:00+00	\N	t	t	1001144	39.485531	-77.956783	151	https://teslamotorsclub.com/tmc/threads/supercharger-martinsburg-wv.96402/	8	150	f	f	\N	2019-08-06 02:31:59.059265+00	4
1280	rivabellosasupercharger	Rivabellosa, Spain	OPEN	2017-11-30 18:00:00+00	\N	t	t	1001185	42.701171	-2.91951	474	\N	8	150	f	f	\N	2019-09-04 16:04:50.25386+00	7
2125	madridsupercharger	Madrid - Nuevos Ministerios, Spain	OPEN	2019-10-03 17:00:00+00	\N	t	t	1002031	40.443082	-3.691335	672	\N	6	150	f	f	Renamed on Find Us	2022-05-13 09:08:58.264958+00	9
170	grantspassoregonsupercharger	Grants Pass, OR	OPEN	2013-10-22 17:00:00+00	\N	t	t	1000070	42.460883	-123.324124	335	https://teslamotorsclub.com/tmc/threads/supercharger-grants-pass-or.99135/	8	150	f	f	\N	2019-05-05 14:52:56.306444+00	6
1340	chilpancingosupercharger	Chilpancingo de los Bravo, Mexico	OPEN	2017-10-16 17:00:00+00	\N	t	t	1001246	17.51465	-99.482779	1187	https://teslamotorsclub.com/tmc/posts/3660168/	6	120	f	f	\N	2019-05-16 11:03:54.123223+00	7
1315	cnsc8158	Beijing - Zhongqi Leiri, China	OPEN	2017-10-03 17:00:00+00	\N	t	t	1001221	39.831209	116.416478	37	\N	8	120	f	f	\N	2021-02-08 12:03:39.971189+00	4
1320	cnsc8151	Shanghai - Zhoupu Greenland Plaza, China	OPEN	2017-10-03 17:00:00+00	\N	t	t	1001226	31.113857	121.594127	3	\N	8	120	f	f	\N	2021-02-08 12:35:38.157191+00	3
1290	cnsc8162	Shanghai - Dingxiang International Business Center, China	OPEN	2017-10-23 17:00:00+00	\N	t	t	1001195	31.225597	121.550981	7	https://www.reddit.com/r/teslamotors/comments/71gwpi/50_stall_supercharger_station_in_shanghai_china/	50	120	f	f	\N	2021-02-08 12:37:32.09628+00	8
2800	cnsc8927	Wuhan - Yintai Creative City, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002720	30.52642132	114.3565769	44	\N	8	120	f	f	\N	2021-02-09 08:38:11.731997+00	1
1330	lonetreesupercharger	Lone Tree, CO	OPEN	2017-11-17 18:00:00+00	\N	t	t	1001236	39.562726	-104.873432	1789	https://teslamotorsclub.com/tmc/threads/supercharger-lonetree-co.27255/	10	150	f	f	\N	2020-03-13 17:15:13.897042+00	13
1310	liphooksupercharger	Liphook, UK	OPEN	2018-03-14 17:00:00+00	\N	t	t	1001215	51.076281	-0.831807	93	https://teslamotorsclub.com/tmc/posts/2612842/	8	150	f	f	\N	2019-09-05 15:49:43.668882+00	4
3895	romfordsuperchargerq122	Romford, UK	OPEN	2022-02-11 18:00:00+00	\N	t	t	1003870	51.57799	0.18502	19	https://teslamotorsclub.com/tmc/posts/6205132/	12	250	f	f	\N	2022-03-31 01:16:12.74216+00	3
3890	CottonwoodCASupercharger	Cottonwood, CA	OPEN	2022-05-04 17:00:00+00	\N	t	t	1003865	40.389145	-122.288208	135	https://teslamotorsclub.com/tmc/threads/supercharger-cottonwood-ca-location-not-known.226452/	12	250	f	f	\N	2022-05-05 20:56:58.026243+00	2
1325	lokerensupercharger	Lokeren, Belgium	OPEN	2017-10-28 17:00:00+00	\N	t	t	1001231	51.095118	4.011868	3	https://teslamotorsclub.com/tmc/posts/2342225/	14	250	f	f	2019-08-29: updated to 150kW as per the Tesla nav. data\r\n2022-07-05: 4 v3 stalls added	2022-07-05 06:35:22.287279+00	9
1345	castlebellinghamnorthboundsupercharger	Castlebellingham-Northbound, Ireland	OPEN	2018-03-29 17:00:00+00	\N	t	t	1001251	53.932462	-6.417717	7	https://teslamotorsclub.com/tmc/threads/superchargers-castlebellingham-ireland-n-s.100261/	8	130	f	f	\N	2019-09-04 16:41:40.208445+00	6
1275	freeportsupercharger	Freeport, ME	OPEN	2017-10-19 17:00:00+00	\N	t	t	1001180	43.8587942	-70.1041363	49	https://teslamotorsclub.com/tmc/threads/supercharger-freeport-maine.98257/	8	120	f	f	\N	2018-12-30 16:03:35.855628+00	5
990	birdhillsupercharger	Birdhill, Ireland	OPEN	2017-11-14 18:00:00+00	\N	t	t	1000894	52.757747	-8.40932	85	https://teslamotorsclub.com/tmc/threads/supercharger-birdhill-ireland.81940/	8	130	f	f	\N	2019-09-04 16:40:49.66034+00	8
1380	fairfieldcasupercharger	Fairfield, CA	OPEN	2018-05-06 17:00:00+00	\N	t	t	1001286	38.26175	-122.0524	10	https://teslamotorsclub.com/tmc/threads/supercharger-fairfield-permit-found-construction-not-started.101647/	12	150	f	f	\N	2019-05-05 14:53:56.423759+00	4
1410	emmeloordsupercharger	Emmeloord, Netherlands	OPEN	2017-12-23 18:00:00+00	\N	t	t	1001316	52.727421	5.764693	-5	https://teslamotorsclub.com/tmc/threads/superchargers-in-nederland-nl.24215/page-232	10	150	f	f	2019-08-29: updated to 150kW as per the Tesla nav. data	2019-08-29 12:04:45.900716+00	10
1385	etobicokeonsupercharger	Etobicoke, ON	OPEN	2018-03-07 18:00:00+00	\N	t	t	1001291	43.6142141	-79.554197	113	https://teslamotorsclub.com/tmc/threads/supercharger-etobicoke-on.101764/#post-2405129	20	72	f	f	\N	2021-03-19 00:45:51.40091+00	6
1370	planotexassupercharger	Plano, TX	OPEN	2018-03-31 17:00:00+00	\N	t	t	1001276	33.07868	-96.819506	223	https://teslamotorsclub.com/tmc/threads/supercharger-plano-texas.101285/	12	72	f	f	Tesla's site lists these as 150 kW, but they are in fact Urban Superchargers.	2021-03-19 00:56:23.846241+00	9
115	gilroyoutletsupercharger	Gilroy, CA	OPEN	2012-11-19 18:00:00+00	\N	t	t	1000015	37.02493	-121.56542	63	https://teslamotorsclub.com/tmc/threads/supercharger-gilroy-expanded-4-stalls-added-now-16-total.14274/	16	150	f	t	2017-05-28: email saying it now has 16 stalls.\r\n2017-06-07: Tesla site says 18 stalls.	2019-05-05 14:48:44.660365+00	9
1515	almarazsupercharger	Almaraz, Spain	OPEN	2018-04-26 17:00:00+00	\N	t	t	1001421	39.791255	-5.695668	315	https://teslamotorsclub.com/tmc/posts/2570932/	10	150	f	f	\N	2019-09-04 15:52:49.535602+00	5
1300	bellefontepasupercharger	Bellefonte, PA	OPEN	2017-12-15 18:00:00+00	\N	t	t	1001205	40.913884	-77.738425	286	https://teslamotorsclub.com/tmc/threads/supercharger-state-college-bellefonte-pa.88749/	8	120	f	f	\N	2017-12-15 01:52:39.680108+00	5
1265	adelaideausupercharger	Adelaide, SA	OPEN	2017-09-25 17:00:00+00	\N	t	t	1001170	-34.927574	138.595189	44	https://teslamotorsclub.com/tmc/threads/supercharger-adelaide-sa.97613/	4	150	f	f	\N	2021-03-18 01:52:46.831946+00	5
1405	hamiltononsupercharger	Hamilton, ON	OPEN	2018-04-02 17:00:00+00	\N	t	t	1001311	43.21709	-79.863234	205	https://teslamotorsclub.com/tmc/threads/supercharger-hamilton-on.101765/	20	150	f	f	\N	2021-03-19 00:56:47.81915+00	4
1870	saintleonardsupercharger	Saint Leonard, NB	OPEN	2019-02-21 18:00:00+00	\N	t	t	1001776	47.168758	-67.918038	172	https://teslamotorsclub.com/tmc/threads/supercharger-saint-leonard-nb.143387	8	120	f	f	\N	2019-02-20 22:35:12.560546+00	2
1820	riverviewsupercharger	Riverview, FL	OPEN	2019-02-14 18:00:00+00	\N	t	t	1001726	27.7915	-82.332833	19	https://teslamotorsclub.com/tmc/threads/supercharger-riverview-301-and-big-bend.138736/	10	120	f	f	\N	2019-02-21 05:00:21.91763+00	3
835	muricasupercharger	Murcia, Spain	OPEN	2016-09-22 17:00:00+00	\N	t	t	1000739	38.038172	-1.149343	109	\N	10	150	f	f	2016-06-29: correction via email stalls 4 to 6\r\n2019-01-25: correction via Tracker-CCS stalls 6 to 10	2019-09-04 15:59:15.393204+00	9
2805	cnsc8933	Yongzhou - Zhongbang Century Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002727	26.43575464	111.6121227	131	\N	6	120	f	f	\N	2021-02-09 08:49:53.820742+00	1
980	charnockrichardsupercharger	Charnock Richard Northbound, UK	OPEN	2016-12-24 18:00:00+00	\N	t	t	1000884	53.630562	-2.692578	69	https://teslamotorsclub.com/tmc/threads/new-superchargers-on-m6-charnock-richard-and-t5-heathrow.83172	12	150	f	f	2019-01-18: Renamed to Charnock Richard Northbound - as per https://teslamotorsclub.com/tmc/threads/tesla-announcement.140571/	2019-09-05 15:45:37.287339+00	10
1775	yubacitycaliforniasupercharger	Yuba City, CA	OPEN	2019-02-05 18:00:00+00	\N	t	t	1001681	39.147833	-121.647861	17	https://teslamotorsclub.com/tmc/threads/supercharger-yuba-city-ca-permit-found.136138	10	150	f	f	\N	2019-05-05 15:51:03.169369+00	5
1865	Eurocentralsupercharger	Eurocentral, UK	OPEN	2019-12-19 18:00:00+00	\N	t	t	1001771	55.8358	-3.9845	104	https://teslamotorsclub.com/tmc/threads/superchargers-being-increased-in-scotland.142608/	12	150	f	f	\N	2019-12-23 14:15:18.712482+00	6
1425	strongsvilleohsupercharger	Strongsville, OH	OPEN	2018-02-09 18:00:00+00	\N	t	t	1001331	41.34336	-81.824924	256	https://teslamotorsclub.com/tmc/threads/supercharger-strongsville-ohio.103451/	8	150	f	f	\N	2019-12-29 21:51:44.02281+00	8
1785	mississaugameadowvalesupercharger	Mississauga, ON	OPEN	2019-01-25 18:00:00+00	\N	t	t	1001691	43.598116	-79.786045	208	https://teslamotorsclub.com/tmc/threads/supercharger-mississauga-on.100644	16	120	f	f	\N	2019-01-25 06:24:03.900446+00	5
1840	laedalnosupercharger	Lærdal, Norway	OPEN	2019-05-30 17:00:00+00	\N	t	t	1001746	61.064428	7.509793	35	https://elbilforum.no/index.php?topic=15598.1080	12	150	f	f	\N	2020-03-05 15:20:50.601335+00	8
1855	orleansmasupercharger	Orleans, MA	OPEN	2019-12-07 18:00:00+00	\N	t	t	1001761	41.796653	-69.985961	1	https://teslamotorsclub.com/tmc/threads/orleans-cape-code-supercharger.139398/	12	150	f	f	\N	2019-12-07 18:12:00.715+00	4
1860	marltonnjsupercharger	Marlton, NJ	OPEN	2019-04-26 17:00:00+00	\N	t	t	1001766	39.878055	-74.918765	29	https://teslamotorsclub.com/tmc/threads/supercharger-marlton-nj.142495/	12	120	f	f	\N	2020-09-26 00:28:21.383616+00	5
3110	cnsc9303	Nanchang - High-tech Wuyue Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003075	28.71796	115.9769	18	\N	12	120	f	f	\N	2021-02-21 05:44:59.581441+00	1
1415	chenzhoushangerhotelsupercharger	Chenzhou - Shang'er Hotel, China	OPEN	2017-11-30 18:00:00+00	\N	t	t	1001321	25.80044	113.04395	171	\N	2	120	f	f	\N	2017-12-05 10:37:51.004995+00	2
2120	brekkvasselvsupercharger	Brekkvasselv, Norway	OPEN	2021-06-18 17:00:00+00	\N	t	t	1002026	64.847572	13.014827	177	\N	12	250	f	f	2021-06-18: Appeared open on Find Us\r\n2022-07-14: PlugShare pictures show 12 V3 stalls	2022-07-14 04:11:35.19201+00	6
1445	cnsc8171	Xinyang - Wanjiahui, China	OPEN	2017-12-12 18:00:00+00	\N	t	t	1001351	32.19183672	114.1338454	96	https://teslamotorsclub.com/tmc/forums/asia-pacific.102/	6	120	f	f	\N	2021-02-08 12:49:02.313414+00	2
1450	cnsc8174	Yichang - Tianxi Longge Winery, China	OPEN	2017-12-15 18:00:00+00	\N	t	t	1001356	30.669947	111.366432	101	\N	6	120	f	f	\N	2021-02-08 12:50:48.170928+00	2
685	lillesupercharger	Lille, France	OPEN	2015-08-14 17:00:00+00	\N	t	t	1000589	50.583875	3.088602	58	\N	16	150	f	f	2016-11-13: Someone emailed me with the correct number of stalls	2019-09-02 16:58:44.235751+00	4
1780	shanghaivankesupercharger	Shanghai - Vanke Plaza, China	OPEN	2018-11-28 18:00:00+00	\N	t	t	1001686	31.15443433	121.35137657	7	\N	10	120	f	f	\N	2018-11-28 01:20:31.829127+00	1
1955	brightvicsupercharger	Ovens, VIC	OPEN	2019-07-02 17:00:00+00	\N	t	t	1001861	-36.587033	146.759069	225	https://teslamotorsclub.com/tmc/threads/bright-supercharger.115608	4	120	f	f	\N	2019-07-02 04:57:29.817727+00	2
1850	parkersburgwvsupercharger	Parkersburg, WV	OPEN	2019-03-06 18:00:00+00	\N	t	t	1001756	39.2633181	-81.5446371	198	https://teslamotorsclub.com/tmc/threads/supercharger-parkersburg-wv.134401/	6	120	f	f	\N	2019-03-06 01:50:28.946328+00	2
2845	cnsc8981	Hangzhou - Xixi Longhu Tianjie, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002773	30.29249758	120.068841	7	\N	8	120	f	f	\N	2021-02-09 11:32:32.391124+00	1
1355	sudburysupercharger	Sudbury, ON	OPEN	2017-12-21 18:00:00+00	\N	t	t	1001261	46.440602	-81.00485	274	https://teslamotorsclub.com/tmc/threads/supercharger-sudbury-on.100578/	8	150	f	f	\N	2021-08-14 12:04:44.28893+00	4
1440	seogwiposupercharger	Seogwipo, South Korea	OPEN	2017-12-12 18:00:00+00	\N	t	t	1001346	33.249844	126.409044	67	\N	12	120	f	f	\N	2022-07-10 21:37:40.742629+00	3
1845	yanchengjiangsusupercharger	Yancheng - Bihuali Resort, China	OPEN	2019-01-23 18:00:00+00	\N	t	t	1001751	33.33934693	120.16134892	2	\N	6	120	f	f	\N	2019-01-23 03:26:39.642018+00	1
1460	seoulyongsansupercharger	Seoul - Yongsan, South Korea	OPEN	2017-12-22 18:00:00+00	\N	t	t	1001366	37.539341	126.997137	104	https://teslamotorsclub.com/tmc/forums/asia-pacific.102/	5	120	f	f	\N	2017-12-21 22:19:39.953075+00	1
3910	santiagodecompostelasupercharger	Santiago de Compostela, Spain	OPEN	2022-03-13 17:00:00+00	\N	t	t	1003885	42.91012	-8.493394	312	https://forum.supercharge.info/t/supercharger-santiago-de-compostela-spain/1865	2	125	f	f	\N	2022-03-31 01:17:20.226076+00	4
1295	madisonwisupercharger	Madison - E Washington Ave, WI	OPEN	2017-12-20 18:00:00+00	\N	t	t	1001200	43.119137	-89.319052	265	https://teslamotorsclub.com/tmc/threads/supercharger-madison-wisconsin-hy-vee.98787/	8	150	f	f	\N	2022-06-19 23:54:12.70085+00	7
1475	cnsc8175	Jiaxing - Longzhimeng Hotel, China	OPEN	2018-01-04 18:00:00+00	\N	t	t	1001381	30.74090312	120.74000403	6	https://teslamotorsclub.com/tmc/forums/asia-pacific.102/	6	120	f	f	\N	2021-02-08 12:20:36.455685+00	2
2810	cnsc8939	Suzhou - Wyndham Garden Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002734	31.30754471	120.6257142	13	\N	12	120	f	f	\N	2021-02-09 09:00:47.153546+00	2
595	crescentcitysupercharger	Crescent City, CA	OPEN	2016-09-08 17:00:00+00	\N	t	t	1000498	41.752393	-124.1944	4	http://www.teslamotorsclub.com/showthread.php/45662-Supercharger-Crescent-City	6	150	f	f	\N	2019-05-05 15:51:24.937291+00	8
2130	cnsc8944	Beijing - Wangjing, Juanshitiandi Building, China	OPEN	2020-02-29 18:00:00+00	\N	t	t	1002036	39.982954	116.452092	45	https://twitter.com/jayinshanghai/status/1169029072384659457?s=21	20	150	f	f	\N	2021-01-23 10:13:22.199392+00	3
1480	cambridgeonsupercharger	Cambridge, ON	OPEN	2018-02-02 18:00:00+00	\N	t	t	1001386	43.408904	-80.325432	295	https://teslamotorsclub.com/tmc/threads/supercharger-cambridge-on.103239	16	150	f	f	\N	2021-03-19 00:36:01.015494+00	9
2020	hamyangsupercharger	Hamyang, South Korea	OPEN	2019-06-28 17:00:00+00	\N	t	t	1001926	35.524635	127.75314	180	\N	6	120	f	f	\N	2019-06-28 13:38:53.790202+00	1
900	bandonsupercharger	Bandon, OR	OPEN	2016-11-04 17:00:00+00	\N	t	t	1000804	43.121854	-124.398942	23	https://teslamotorsclub.com/tmc/threads/supercharger-bandon-or.74467/	8	150	f	f	\N	2019-05-05 15:51:49.231745+00	7
1790	macongarivergatesupercharger	Macon - Tom Hill Sr Rd, GA	OPEN	2018-12-23 18:00:00+00	\N	t	t	1001696	32.897259	-83.689432	113	https://teslamotorsclub.com/tmc/posts/3193193/	10	150	f	f	\N	2019-06-18 14:17:52.50183+00	7
2010	taoyuantaimaisupercharger	Taoyuan City - Taimao Shopping Center, Taiwan	OPEN	2019-06-25 17:00:00+00	\N	t	t	1001916	25.053926	121.287869	62	https://teslamotorsclub.com/tmc/forums/taiwan.254/	8	120	f	f	\N	2021-07-10 00:40:34.274989+00	5
1555	portagelaprariemanitobasupercharger	Portage la Prairie, MB	OPEN	2019-12-12 18:00:00+00	\N	t	t	1001461	49.971959	-98.318732	256	https://teslamotorsclub.com/tmc/threads/portage-la-prairie-mb.160257/	6	250	f	f	\N	2021-01-28 14:44:43.592443+00	11
1465	carlsbadsupercharger	Carlsbad, CA	OPEN	2018-09-28 17:00:00+00	\N	t	t	1001371	33.084189	-117.266384	25	https://teslamotorsclub.com/tmc/threads/supercharger-carlsbad-7710-el-camino-real-permit-found-construction-planning-started.106517/	26	72	f	f	Email saying is now 26 stalls.	2019-05-02 11:41:04.773551+00	9
3905	\N	Minocqua, WI	PERMIT	\N	\N	t	t	1003880	45.887409	-89.720831	487	https://teslamotorsclub.com/tmc/threads/supercharger-minocqua-wi.250057/#post-6222356	8	250	f	f	\N	2021-12-15 23:12:54.394952+00	1
475	veronasupercharger	Verona, Italy	OPEN	2014-12-11 18:00:00+00	\N	t	t	1000378	45.412326	10.970212	61	http://tff-forum.de/viewtopic.php?f=9&t=1453&start=5210	10	150	f	f	\N	2019-09-04 16:25:08.41478+00	5
1885	shandongyantaisupercharger	Yantai - HuaAn International Hotel, China	OPEN	2019-03-14 17:00:00+00	\N	t	t	1001791	37.57569812	121.2813953	2	\N	6	120	f	f	\N	2019-03-14 05:00:09.692401+00	1
1485	losgatossupercharger	Los Gatos, CA	OPEN	2018-09-24 17:00:00+00	\N	t	t	1001391	37.229926	-121.979384	116	https://teslamotorsclub.com/tmc/threads/supercharger-los-gatos-live-24-sep-2018-12-urban-type.106178/	20	72	f	f	\N	2021-09-24 15:45:57.285004+00	9
1920	wuxihualuxehotelsupercharger	Wuxi - Hualuxe Hotel, China	OPEN	2019-04-03 17:00:00+00	\N	t	t	1001826	31.47987581	120.30690575	5	\N	8	120	f	f	\N	2019-04-03 05:32:44.585932+00	1
1750	victoriabcsupercharger	Victoria, BC	OPEN	2018-12-08 18:00:00+00	\N	t	t	1001656	48.456647	-123.376329	24	https://teslamotorsclub.com/tmc/posts/3172625/	16	72	f	f	\N	2018-12-11 12:16:18.377136+00	7
1495	cnsc8181	Beijing - Oriental Plaza, China	OPEN	2018-01-30 18:00:00+00	\N	t	t	1001401	39.909565	116.412498	53	\N	6	120	f	f	\N	2021-02-08 12:01:05.158213+00	2
2015	\N	Terrebonne, QC	CONSTRUCTION	\N	\N	t	t	1001921	45.727922	-73.511018	11	https://teslamotorsclub.com/tmc/threads/supercharger-charlemagne-qc.153255/	8	150	f	f	Next to IGA fast chargers	2020-05-22 01:54:36.64079+00	4
1970	copiaguenysupercharger	Copiague, NY	OPEN	2020-02-27 18:00:00+00	\N	t	t	1001876	40.688444	-73.4055	9	https://teslamotorsclub.com/tmc/threads/copiague-new-york-supercharger.153286/	8	250	f	f	\N	2020-03-07 12:56:56.442519+00	5
1880	kappelgrafenhausensupercharger	Kappel-Grafenhausen, Germany	OPEN	2019-03-28 17:00:00+00	\N	t	t	1001786	48.281347	7.77755	162	https://tff-forum.de/viewtopic.php?f=68&t=6133&start=5540#p658307	10	150	f	f	Note - Tesla site says 20 stalls?	2019-08-29 05:37:57.423015+00	8
1520	milpitascasupercharger	Milpitas, CA	OPEN	2018-11-16 18:00:00+00	\N	t	t	1001426	37.434536	-121.891387	10	https://teslamotorsclub.com/tmc/threads/supercharger-milpitas-permit-approved-construction-not-started.109312/	16	150	f	f	\N	2020-03-08 10:27:13.180594+00	8
1895	zhaotongjiangshancnsupercharger	Zhaotong - Jiangshan Hotel, China	OPEN	2019-03-21 17:00:00+00	\N	t	t	1001801	27.32188089	103.70575385	1906	\N	6	120	f	f	\N	2019-03-20 20:55:29.498369+00	1
1905	bismarckndsupercharger	Bismarck, ND	OPEN	2020-06-20 17:00:00+00	\N	t	t	1001811	46.832972	-100.807222	557	https://teslamotorsclub.com/tmc/threads/bismarck-nd-supercharger-location.147031/	8	250	f	f	\N	2020-06-21 01:14:52.526708+00	7
3915	DalevilleVAsupercharger	Daleville, VA	PERMIT	\N	\N	t	t	1003890	37.410024	-79.914045	389	https://teslamotorsclub.com/tmc/threads/supercharger-daleville-va.250663/	8	250	f	f	\N	2021-12-22 01:38:16.714522+00	1
1965	robbinsvillesupercharger	Robbinsville, NJ	OPEN	2019-07-13 17:00:00+00	\N	t	t	1001871	40.1941978	-74.5953015	336	https://teslamotorsclub.com/tmc/threads/supercharger-robbinsville-nj.152312/	8	150	f	f	\N	2019-08-29 06:52:39.131111+00	8
2255	thortoncosupercharger	Thornton, CO	OPEN	2020-02-28 18:00:00+00	\N	t	t	1002161	39.914711	-104.986758	1635	https://teslamotorsclub.com/tmc/threads/supercharger-thornton-co.182564/	8	250	f	f	This is the original, there is also a Tesla Location id thorntoncosupercharger, which lists 8 stalls after they added two more in Octo 2020.	2021-08-10 21:36:24.96584+00	12
1525	cnsc8187	Shanghai - Pearl River Creative Center, China	OPEN	2018-03-02 18:00:00+00	\N	t	t	1001431	31.28438432	121.4503079	6	https://teslamotorsclub.com/tmc/forums/asia-pacific.102/	8	120	f	f	\N	2021-02-08 12:36:17.136516+00	2
1550	melidesupercharger	Melide, Switzerland	OPEN	2018-04-27 17:00:00+00	\N	t	t	1001456	45.954229	8.950579	273	https://www.teslari.it/forum/superchargers/sc-melide-swissminiatur/	10	125	f	f	\N	2019-08-29 05:36:07.997983+00	7
1530	sanramoncaliforniasupercharger	San Ramon, CA	OPEN	2018-08-30 17:00:00+00	\N	t	t	1001436	37.76292	-121.963662	140	https://teslamotorsclub.com/tmc/threads/supercharger-san-ramon-permit-found-construction-not-started.109959/	10	150	f	f	\N	2020-03-13 17:12:00.880681+00	10
2040	williamssupercharger	Williams, CA	OPEN	2019-12-19 18:00:00+00	\N	t	t	1001946	39.15608	-122.149408	25	https://teslamotorsclub.com/tmc/threads/supercharger-williams-permit-approved-construction-not-yet-started.158875/	12	250	f	f	\N	2020-03-13 17:14:02.716841+00	5
2025	maplecreekpioneersupercharger	Maple Creek, SK	OPEN	2019-12-20 18:00:00+00	\N	t	t	1001931	49.908628	-109.472065	764	https://teslamotorsclub.com/tmc/threads/supercharger-maple-creek-sk.158018/#post-3796255	6	250	f	f	Open 12/ 20 /19	2020-05-09 04:52:08.057756+00	10
2045	novatocasupercharger	Novato, CA	OPEN	2020-03-28 17:00:00+00	\N	t	t	1001951	38.089447	-122.551755	3	https://teslamotorsclub.com/tmc/threads/supercharger-novato-ca-permit-issued-jul-2019-20-stalls.159167/	20	150	f	f	\N	2020-04-02 12:21:45.902799+00	10
1980	sflettermandrsupercharger	San Francisco - Letterman Drive, CA	OPEN	2019-05-23 17:00:00+00	\N	t	t	1001886	37.798513	-122.449846	19	https://teslamotorsclub.com/tmc/threads/supercharger-san-francisco-live-22-may-2019-6-stalls.153657/	6	72	f	f	\N	2019-06-05 22:22:05.820295+00	3
1545	glendalesupercharger	Glendale, CA	OPEN	2018-03-30 17:00:00+00	\N	t	t	1001451	34.145099	-118.256433	161	https://teslamotorsclub.com/tmc/threads/supercharger-glendale-ca-live-29-mar-2018-20-urban-stalls.111299/	20	72	f	f	\N	2021-03-19 00:54:35.072983+00	6
1665	baskingridgesupercharger	Basking Ridge, NJ	OPEN	2019-07-13 17:00:00+00	\N	t	t	1001571	40.655361	-74.529919	67	https://teslamotorsclub.com/tmc/threads/supercharger-basking-ridge-nj.119109/	8	150	f	f	\N	2022-04-01 19:40:35.466105+00	6
4300	DistrictHeightsMDSupercharger	District Heights, MD	PERMIT	\N	\N	t	t	1004275	38.8613	-76.9187	80	https://teslamotorsclub.com/tmc/threads/supercharger-district-heights-md-q3-2022.260627	8	250	f	f	\N	2022-06-02 19:05:02.167106+00	1
1960	dornoestsupercharger	Dorno Est, Italy	OPEN	2014-09-12 17:00:00+00	\N	t	t	1001866	45.1473468	8.9912729	88	\N	6	150	f	f	\N	2019-09-04 16:23:33.992138+00	5
1975	northstamfordsupercharger	North Stamford, CT	OPEN	2019-08-09 17:00:00+00	\N	t	t	1001881	41.107885	-73.5469602	45	https://teslamotorsclub.com/tmc/threads/supercharger-north-stamford-ct.153482/	8	150	f	f	\N	2019-08-20 16:14:28.291203+00	9
1570	vikesasupercharger	Vikeså, Norway	OPEN	2018-06-21 17:00:00+00	\N	t	t	1001476	58.63192	6.077767	78	\N	12	150	f	f	\N	2020-03-05 15:25:11.090701+00	7
3920	\N	Issaquah Highlands, WA	PERMIT	\N	\N	t	t	1003895	47.544008	-122.016938	155	https://teslamotorsclub.com/tmc/threads/supercharger-issaquah-highlands-wa.250736/	8	250	f	f	\N	2021-12-22 21:21:15.415921+00	1
1565	dickinsonndsupercharger	Dickinson, ND	OPEN	2020-06-17 17:00:00+00	\N	t	t	1001471	46.901222	-102.790822	758	https://teslamotorsclub.com/tmc/threads/dickinson-north-dakota-supercharger-location.112234/	8	250	f	f	\N	2020-06-17 20:49:45.228381+00	5
1590	cnsc8197	Taizhou - Country Garden Phoenix Hot Spring Hotel, China	OPEN	2018-04-24 17:00:00+00	\N	t	t	1001496	32.543018	119.950325	2	\N	6	120	f	f	\N	2021-02-08 12:08:45.638747+00	2
1600	cnsc8199	Hangzhou - Binjiang Binwen Road Atour Hotel, China	OPEN	2018-05-03 17:00:00+00	\N	t	t	1001506	30.173424	120.146324	11	\N	10	120	f	f	\N	2021-02-08 12:15:46.050718+00	2
1580	thiaissupercharger	Thiais, France	OPEN	2018-04-17 17:00:00+00	\N	t	t	1001486	48.754865	2.373034	87	\N	12	150	f	f	\N	2019-09-02 17:24:10.294387+00	2
1620	annapolismdsupercharger	Annapolis, MD	OPEN	2019-03-22 17:00:00+00	\N	t	t	1001526	38.980071	-76.540498	21	https://teslamotorsclub.com/tmc/threads/supercharger-annapolis-md.116353	8	150	f	f	\N	2019-05-01 18:39:58.791563+00	4
1595	paysonsupercharger	Payson, AZ	OPEN	2018-12-29 18:00:00+00	\N	t	t	1001501	34.242065	-111.322538	1514	https://teslamotorsclub.com/tmc/threads/payson-az-supercharger-permit-found.114158	12	150	f	f	\N	2019-05-05 16:13:57.707791+00	6
1605	vilarealsupercharger	Ribeira de Pena, Portugal	OPEN	2018-06-14 17:00:00+00	\N	t	t	1001511	41.503684	-7.801877	728	https://teslamotorsclub.com/tmc/posts/2707115/	10	150	f	f	\N	2019-09-04 15:50:59.19863+00	4
2815	cnsc8946	Huangshan - Crowne Plaza Huangshan Yucheng, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002739	29.70461138	118.3362428	176	\N	6	120	f	f	\N	2021-02-09 09:16:10.777975+00	1
995	kuttawasupercharger	Kuttawa, KY	OPEN	2017-01-01 18:00:00+00	\N	t	t	1000899	37.073405	-88.124752	134	https://teslamotorsclub.com/tmc/threads/supercharger-kuttawa-kentucky.82958/	8	150	f	f	Update from latest car map data	2020-02-09 19:51:10.915324+00	7
2070	newportnewsvasupercharger	Newport News, VA	OPEN	2019-11-14 18:00:00+00	\N	t	t	1001976	37.114233	-76.494498	10	https://teslamotorsclub.com/tmc/threads/supercharger-newport-news-va.161397/	12	150	f	f	\N	2020-03-08 08:07:42.827383+00	6
1610	asanearnasupercharger	Arna, Norway	OPEN	2018-06-21 17:00:00+00	\N	t	t	1001516	60.421749	5.467271	3	https://www.nve.no/konsesjonssaker/konsesjonssak/?id=4883&type=A-1	20	150	f	f	\N	2020-09-12 16:20:47.876526+00	9
1915	cnsc8250	Tianjin - No.1 Binhai Hot Spring Hotel, China	OPEN	2019-04-02 17:00:00+00	\N	t	t	1001821	39.119633	117.627563	4	\N	6	120	f	f	\N	2021-04-26 23:23:20.301151+00	2
1635	santamonicacaliforniasupercharger	Santa Monica - Santa Monica Place, CA	OPEN	2019-02-19 18:00:00+00	\N	t	t	1001541	34.013087	-118.493843	20	https://teslamotorsclub.com/tmc/threads/supercharger-santa-monica-ca-santa-monica-place-live-19-feb-2019-14-urban-stalls.117037	14	72	f	f	Expanded from 10 to 14 stalls in Sept 2021.	2022-07-10 01:24:29.436717+00	8
3925	LaMesaCAsupercharger	La Mesa, CA	OPEN	2022-03-18 17:00:00+00	\N	t	t	1003900	32.7808724	-117.0135593	158	https://teslamotorsclub.com/tmc/threads/supercharger-la-mesa-ca-speculation.250015/	12	250	f	f	\N	2022-03-18 23:13:55.565929+00	3
1625	enfieldsupercharger	Enfield, NS	OPEN	2019-07-05 17:00:00+00	\N	t	t	1001531	44.9267179	-63.5363646	20	https://teslamotorsclub.com/tmc/threads/supercharger-enfield-ns.117029	8	120	f	f	Previous TMC thread was 404ing, updated to the one with active discussion. Looks like it will soon be under construction.	2019-07-05 04:52:16.428741+00	7
1900	cnsc8257	Guangzhou - Anhuahui Mall, China	OPEN	2019-03-26 17:00:00+00	\N	t	t	1001806	23.21639027	113.29620801	24	\N	8	120	f	f	\N	2021-02-27 22:19:29.653891+00	2
1935	Mealhadasupercharger	Mealhada, Portugal	OPEN	2019-10-22 17:00:00+00	\N	t	t	1001841	40.37306	-8.4805	55	https://teslamotorsclub.com/tmc/threads/portugal.84971/page-3#post-3557058	20	150	f	f	\N	2021-03-23 18:37:57.732851+00	11
1910	fontainebleausupercharger	Fontainebleau, France	OPEN	2019-03-30 17:00:00+00	\N	t	t	1001816	48.3495627	2.6067816	120	https://www.facebook.com/drivelectric/posts/1368459823361594	10	150	f	f	At Novotel Fontainbleau Ury	2019-09-02 17:18:10.837034+00	5
1660	atizapandezaragozasupercharger	Atizapan de Zaragoza, Mexico	OPEN	2018-06-23 17:00:00+00	\N	t	t	1001566	19.551381	-99.272954	2371	https://teslamotorsclub.com/tmc/threads/superchargers-in-mexico.43464	8	72	f	f	\N	2018-12-19 01:01:56.460618+00	3
1990	northbaysupercharger	North Bay, ON	OPEN	2019-12-04 18:00:00+00	\N	t	t	1001896	46.331699	-79.472008	227	https://teslamotorsclub.com/tmc/threads/supercharger-north-bay-on.149359/	8	250	f	f	\N	2020-10-27 20:38:44.412127+00	11
785	eldsvollverknorwaysupercharger	Nebbenes, Norway	OPEN	2016-08-31 17:00:00+00	\N	t	t	1000689	60.312269	11.145104	209	http://www.tocn.no/2016/09/nebbenes-har-na-apnet/	44	150	f	f	\N	2019-09-08 19:48:28.842227+00	14
1680	tianjinfinancingservicecentersupercharger	Tianjin Financing Service Center, China	OPEN	2018-07-14 17:00:00+00	\N	t	t	1001586	39.131271	117.231758	6	\N	10	120	f	f	\N	2018-07-14 06:11:41.239701+00	1
3930	\N	Mission Viejo - Crown Valley Pkwy, CA	OPEN	2021-12-24 18:00:00+00	\N	t	t	1003905	33.5607	-117.672028	90	https://teslamotorsclub.com/tmc/threads/supercharger-mission-viejo-ca-crown-valley-parkway-live-2021-12-23-8-urban-stalls.250929/	8	72	f	f	\N	2021-12-24 16:59:32.532968+00	1
1695	xiantaozon100mallsupercharger	Xiantao - Zon100 Mall, China	OPEN	2018-08-22 17:00:00+00	\N	t	t	1001601	30.360243	113.437477	28	\N	6	120	f	f	\N	2018-08-21 22:01:49.010982+00	1
3865	portageinjohntmccutcheontravelplazasupercharger	Portage - John T McCutcheon Travel Plaza, IN	OPEN	2021-12-24 18:00:00+00	\N	t	t	1003840	41.588366	-87.216556	187	https://teslamotorsclub.com/tmc/threads/supercharger-portage-in-east-and-westbound-travel-plazas.245699/	8	250	f	f	\N	2021-12-24 20:01:09.395302+00	4
2050	lynchburgvasupercharger	Lynchburg, VA	OPEN	2020-02-06 18:00:00+00	\N	t	t	1001956	37.32486	-79.190523	283	https://teslamotorsclub.com/tmc/threads/supercharger-lynchburg-va.159551	8	250	f	f	\N	2020-03-06 22:33:16.987934+00	6
1725	bigsurcasupercharger	Big Sur, CA	OPEN	2019-05-24 17:00:00+00	\N	t	t	1001631	36.226876	-121.761506	324	https://teslamotorsclub.com/tmc/threads/supercharger-big-sur-permit-found-construction-not-started.131537/	8	72	f	f	\N	2019-05-25 02:54:20.184467+00	6
1925	capemaynjsupercharger	Cape May Court House, NJ	OPEN	2019-07-26 17:00:00+00	\N	t	t	1001831	39.088417	-74.8215	3	https://teslamotorsclub.com/tmc/threads/supercharger-cape-may-nj.97916	12	150	f	f	\N	2019-07-29 16:59:19.604197+00	6
1715	surrey152bcsupercharger	Surrey, BC	OPEN	2018-10-06 17:00:00+00	\N	t	t	1001621	49.192318	-122.806073	95	https://teslamotorsclub.com/tmc/threads/supercharger-surrey-bc.129671	20	72	f	f	\N	2021-01-07 05:14:20.34402+00	12
2030	lakegenevawisupercharger	Lake Geneva, WI	OPEN	2019-09-26 17:00:00+00	\N	t	t	1001936	42.60901	-88.407819	272	https://teslamotorsclub.com/tmc/threads/supercharger-lake-geneva-wi.158183/	6	150	f	f	confirmed live by Nicholas Theyer	2019-09-26 20:55:23.215017+00	7
1710	walkermisupercharger	Walker, MI	OPEN	2018-12-24 18:00:00+00	\N	t	t	1001616	43.018501	-85.723629	228	https://teslamotorsclub.com/tmc/threads/supercharger-walker-mi.129159/page-3	4	150	f	f	\N	2021-05-18 19:36:44.04788+00	7
2035	fairfieldctnsupercharger	Fairfield - Northbound, CT	OPEN	2019-12-23 18:00:00+00	\N	t	t	1001941	41.146266	-73.257157	15	https://teslamotorsclub.com/tmc/threads/supercharger-fairfield.158569	12	250	f	f	\N	2021-10-23 13:27:02.748831+00	8
1995	mtairyncsupercharger	Mt Airy, NC	OPEN	2019-06-22 17:00:00+00	\N	t	t	1001901	36.458847	-80.636683	313	https://teslamotorsclub.com/tmc/threads/supercharger-mt-airy-nc.155412	8	150	f	f	\N	2019-07-23 06:32:15.190146+00	4
2060	williamsportpasupercharger	Williamsport, PA	OPEN	2020-02-25 18:00:00+00	\N	t	t	1001966	41.2328	-77.019865	160	https://teslamotorsclub.com/tmc/threads/supercharger-williamsport-pa.160259/	8	250	f	f	\N	2020-02-27 05:56:50.922353+00	5
1815	stauntonvasupercharger	Staunton, VA	OPEN	2019-01-31 18:00:00+00	\N	t	t	1001721	38.1334859	-79.0434692	441	https://teslamotorsclub.com/tmc/threads/supercharger-staunton-va.138499	8	120	f	f	The redditor's picture shows 8 stalls, but the satellite imagery for the parking lots show 10 parking spots there.  The name of the town is Staunton, ending with an "on", but it appears the Tesla Location ID has it typo'd to "stauntan". This may need to be changed if Tesla corrects this typo. (I reported this to Tesla and they fixed it, so I've updated the URL)	2019-01-31 00:56:01.180474+00	5
1705	chicocaliforniasupercharger	Chico, CA	OPEN	2019-06-19 17:00:00+00	\N	t	t	1001611	39.726633	-121.802538	70	https://teslamotorsclub.com/tmc/threads/supercharger-chico-location-speculation.118481	18	150	f	f	Updated from 14 to 18 stalls via TMC posting.	2021-06-02 17:58:08.856415+00	5
2260	twhsinchuzhubeisupercharger	Hsinchu - Zhubei Harrod, Taiwan	OPEN	2020-01-27 18:00:00+00	\N	t	t	1002166	24.807265	121.036114	43	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682/	6	58	f	f	Tesla description "6 TPC + CCS2 super charging docks"	2021-11-26 23:38:37.929725+00	6
3945	taipeishilinfulinsupercharger	Taipei - Shihlin, Taiwan	OPEN	2021-12-31 18:00:00+00	\N	t	t	1003920	25.092936	121.527162	2	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682	6	250	f	f	4 TPC super charging docks\r\n2 CCS2 super charging docks	2021-12-31 04:22:59.95099+00	1
1810	goudasupercharger	Gouda, Netherlands	OPEN	2019-03-13 17:00:00+00	\N	t	f	1001716	52.022955	4.684605	1	https://teslamotorsclub.com/tmc/posts/3281404/	16	150	f	f	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3474076/\r\nStall count changed to 16 as per:\r\nhttps://forum.supercharge.info/t/gouda-the-netherlands-upgrade/591\r\n2019-08-29: updated to 150kW as per the Tesla nav. data	2019-08-29 12:04:00.33291+00	8
1735	haymarketvirginiasupercharger	Haymarket, VA	OPEN	2018-12-19 18:00:00+00	\N	t	t	1001641	38.815129	-77.642614	112	https://teslamotorsclub.com/tmc/threads/supercharger-haymarket-va.132475	8	120	f	f	\N	2018-12-21 01:41:23.410861+00	4
1615	alamedacasupercharger	Alameda, CA	OPEN	2018-12-15 18:00:00+00	\N	t	t	1001521	37.756265	-122.249306	3	https://teslamotorsclub.com/tmc/threads/supercharger-alameda-permit-found.115767/	12	150	f	f	\N	2022-04-01 16:37:27.598087+00	7
1720	richmondtxsupercharger	Richmond, TX	OPEN	2018-12-17 18:00:00+00	\N	t	t	1001626	29.561504	-95.695242	23	https://teslamotorsclub.com/tmc/threads/supercharger-richmond-tx.130316/	8	150	f	f	\N	2019-05-05 23:03:11.611733+00	4
1260	raleighsupercharger	Raleigh, NC	OPEN	2017-11-02 17:00:00+00	\N	t	t	1001165	35.835623	-78.642569	110	https://teslamotorsclub.com/tmc/threads/supercharger-raleigh-nc.64189/	12	150	f	f	\N	2022-06-25 02:15:19.977614+00	13
1940	naardensupercharger	Naarden, Netherlands	OPEN	2019-10-22 17:00:00+00	\N	t	t	1001846	52.30858	5.141127	2	\N	32	150	f	f	At NH Hotel\r\n32 stalls accoding to forum post: https://forum.supercharge.info/t/naarden-update/558\r\n22/10/19: 12 stalls installed\r\n16/12/2019: updated from 12 to 22 stalls\r\nRVG210426: now 32 stalls as per Tesla (at least 6 extra confirmed 01-2021	2021-04-26 13:07:19.088558+00	11
1730	lynnfieldsupercharger	Lynnfield, MA	OPEN	2019-08-02 17:00:00+00	\N	t	t	1001636	42.516609	-71.032521	33	https://teslamotorsclub.com/tmc/threads/lynnfield-supercharger-market-street.99633/#post-2349030	12	150	f	f	\N	2019-08-03 02:52:13.947239+00	6
1740	oyersupercharger	Øyer, Norway	OPEN	2018-12-19 18:00:00+00	\N	t	t	1001646	61.243236	10.434457	169	https://elbilforum.no/forum/index.php?topic=7959.3555	20	150	f	f	\N	2019-09-08 19:41:15.116352+00	5
2310	centennialcosupercharger	Centennial, CO	OPEN	2020-06-14 17:00:00+00	\N	t	t	1002216	39.567218	-104.877928	1776	https://teslamotorsclub.com/tmc/threads/supercharger-centennial-co-12-stalls-under-construction.186700/	12	250	f	f	\N	2020-06-13 14:46:52.046167+00	5
2265	lowellarsupercharger	Lowell, AR	OPEN	2020-02-21 18:00:00+00	\N	t	t	1002171	36.255329	-94.152637	401	https://teslamotorsclub.com/tmc/threads/supercharger-lowell-ar.183476	8	250	f	f	\N	2020-02-27 05:55:17.455119+00	6
1950	lafayettelasupercharger	Lafayette, LA	OPEN	2020-02-13 18:00:00+00	\N	t	t	1001856	30.265264	-91.994232	3	https://teslamotorsclub.com/tmc/threads/supercharger-lafayette-la.150758/	8	250	f	f	\N	2020-10-26 20:50:03.291424+00	9
840	baycitysupercharger	Bay City, MI	OPEN	2016-09-27 17:00:00+00	\N	t	t	1000744	43.622061	-83.932241	181	https://teslamotorsclub.com/tmc/threads/supercharger-bay-city-mi.69400/	8	150	f	f	Update from latest car map data	2021-03-22 23:33:29.099709+00	10
2325	MountPleasantIAsupercharger	Mount Pleasant, IA	OPEN	2021-06-10 17:00:00+00	\N	t	t	1002231	40.961378	-91.528249	219	https://teslamotorsclub.com/tmc/threads/supercharger-mt-pleasant-ia-possible.187713/	8	250	f	f	\N	2021-06-11 02:44:48.017741+00	5
2095	richmondbccasupercharger	Richmond, BC	OPEN	2020-01-28 18:00:00+00	\N	t	t	1002001	49.170013	-123.138776	2	https://teslamotorsclub.com/tmc/threads/richmond-bc-canada-supercharger.165041	20	150	f	f	\N	2020-01-29 12:20:15.412182+00	3
2090	jackmanmesupercharger	Jackman, ME	OPEN	2019-10-19 17:00:00+00	\N	t	t	1001996	45.624071	-70.25201	374	https://teslamotorsclub.com/tmc/threads/supercharger-jackman-me.164788/	4	150	f	f	\N	2019-11-04 21:20:12.377798+00	5
1670	alcacerdosalsupercharger	Alcácer do Sal, Portugal	OPEN	2018-08-31 17:00:00+00	\N	t	t	1001576	38.391941	-8.513867	60	https://.com/tmc/threads/portugal.84971	10	150	f	f	\N	2019-09-04 15:49:27.297493+00	6
730	keelesouthsupercharger	Stoke-on-Trent Southbound, UK	OPEN	2015-11-10 18:00:00+00	\N	t	t	1000634	52.99413	-2.290797	155	https://speakev.com/threads/reasonably-solid-information-about-forthcoming-superchargers.6225/page-20	4	130	f	f	\N	2019-09-09 14:59:08.104214+00	4
2100	meridenctsupercharger	Meriden, CT	OPEN	2020-02-09 18:00:00+00	\N	t	t	1002006	41.527018	-72.773982	98	https://teslamotorsclub.com/tmc/threads/meriden-in-talks-to-add-tesla-supercharger-station.115369/#post-4003007	8	250	f	f	\N	2020-03-08 08:02:21.053011+00	6
2290	ontarioorsupercharger	Ontario, OR	OPEN	2020-09-03 17:00:00+00	\N	t	t	1002196	44.025597	-116.942114	655	https://teslamotorsclub.com/tmc/https://teslamotorsclub.com/tmc/threads/supercharger-ontario-or.184994/	8	250	f	f	\N	2021-05-12 02:22:24.181034+00	7
2085	fortlauderdaleflsupercharger	Fort Lauderdale, FL	OPEN	2020-04-06 17:00:00+00	\N	t	t	1001991	26.120885	-80.177098	2	https://teslamotorsclub.com/tmc/threads/supercharger-ft-lauderdale-fl-riverside-park.164262	8	250	f	f	\N	2020-04-08 13:17:51.341832+00	6
2275	richmondcapiercestreetsupercharger	Richmond - Pierce St, CA	OPEN	2020-05-30 17:00:00+00	\N	t	t	1002181	37.898736	-122.308672	4	https://teslamotorsclub.com/tmc/threads/supercharger-berkeley-live-may-30-2020-16-v3-stalls.183905	12	250	f	f	2020-05-31: 12 of 16 stalls active	2020-06-18 14:53:33.976341+00	6
2360	bamblesupercharger	Bamble, Norway	OPEN	2020-06-30 17:00:00+00	\N	t	t	1002266	58.971256	9.512438	108	https://elbilforum.no/index.php?topic=15598.msg893086#msg893086	20	250	f	f	\N	2020-07-06 22:16:10.009324+00	6
2105	burnabybcsupercharger	Burnaby, BC	OPEN	2022-03-14 17:00:00+00	\N	t	t	1002011	49.267245	-122.998104	46	https://teslamotorsclub.com/tmc/threads/supercharger-burnaby-bc.166877/	12	250	f	f	\N	2022-03-15 06:05:21.100034+00	3
2110	oceancitymdsupercharger	Ocean City, MD	OPEN	2020-02-06 18:00:00+00	\N	t	t	1002016	38.335586	-75.104509	2	https://teslamotorsclub.com/tmc/threads/supercharger-ocean-city-md.166708/	8	250	f	f	\N	2022-04-01 19:33:38.245105+00	5
2365	ashlandnhsupercharger	Ashland, NH	OPEN	2020-08-21 17:00:00+00	\N	t	t	1002271	43.698101	-71.640119	163	https://teslamotorsclub.com/tmc/threads/supercharger-ashland-nh.191622/	8	250	f	f	\N	2020-08-25 21:53:22.501061+00	4
2005	mapleshadenjsupercharger	Maple Shade, NJ	OPEN	2020-02-21 18:00:00+00	\N	t	t	1001911	39.937134	-74.970511	17	https://teslamotorsclub.com/tmc/threads/supercharger-maple-shade-nj.156279/	8	250	f	f	\N	2020-02-25 00:39:27.420832+00	5
2140	szegedsupercharger	Szeged, Hungary	OPEN	2019-12-12 18:00:00+00	\N	t	t	1002046	46.274152	20.10498	77	\N	8	150	f	f	\N	2021-12-15 14:56:58.76023+00	9
2135	walnutcreekcasupercharger	Walnut Creek, CA	OPEN	2019-10-24 17:00:00+00	\N	t	t	1002041	37.895277	-122.061828	50	https://teslamotorsclub.com/tmc/threads/supercharger-walnut-creek-ca-construction-mostly-complete-urban-stalls.169691/	24	72	f	f	\N	2020-03-04 04:01:28.799875+00	4
2820	cnsc8952	Jinan - Xiyue Oriental Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002744	36.68193597	117.1250437	65	\N	6	120	f	f	\N	2021-02-09 09:25:43.445673+00	1
2170	thunderbaycasupercharger	Thunder Bay, ON	OPEN	2019-12-20 18:00:00+00	\N	t	t	1002076	48.381058	-89.312285	192	https://teslamotorsclub.com/tmc/threads/supercharger-thunder-bay-on.172315/	6	250	f	f	\N	2019-12-23 22:08:36.033975+00	4
2150	manchestersouth	Manchester South (SC), UK	OPEN	2019-11-06 18:00:00+00	\N	t	t	1002056	53.430295	-2.179375	69	https://teslamotorsclub.com/tmc/posts/4171698/	8	250	f	f	Deleted hours based on: https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/196\r\n\r\nUpdated to 8 stalls and 250kW per https://teslamotorsclub.com/tmc/posts/4970787/	2021-08-19 20:22:01.259457+00	8
145	rockfordsupercharger	Rockford, IL	OPEN	2013-09-12 17:00:00+00	\N	t	t	1000045	42.243896	-88.978877	238	http://www.teslamotorsclub.com/showthread.php/18276-Rockford-IL-Supercharger	8	150	f	f	"They are adding two stalls to the supercharger in Rockford, IL. It is going from 6 to 8."	2019-11-01 17:39:00.09796+00	3
2825	cnsc8958	Beijing - Shunyi Luohong Photographic Art Museum, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002749	40.04326761	116.5745673	31	\N	4	120	f	f	\N	2021-02-09 09:34:55.301938+00	1
2145	huittinensupercharger	Huittinen, Finland	OPEN	2019-10-16 17:00:00+00	\N	t	t	1002051	61.16844	22.680099	50	\N	6	250	f	f	2x150kW+4x250kW	2020-09-24 15:55:48.032901+00	11
2175	sevillaessupercharger	Seville, Spain	OPEN	2019-12-23 18:00:00+00	\N	t	t	1002081	37.392573	-6.010369	9	https://hipertextual.com/2019/12/tesla-supercharger-v2-sevilla-espana	10	150	f	f	\N	2020-01-01 08:28:10.13189+00	10
2190	anaheimeastkatellasupercharger	Anaheim - E Katella Ave, CA	OPEN	2019-12-24 18:00:00+00	\N	t	t	1002096	33.805168	-117.882173	49	https://teslamotorsclub.com/tmc/threads/supercharger-anaheim-ca-2404-e-katella-ave-permit-issued-25-oct-2019-16-stalls.174384/	16	250	f	f	\N	2020-02-03 23:46:06.439349+00	6
2370	miamiflsouthdixiehighwaysupercharger	Miami - South Dixie Highway, FL	OPEN	2020-06-11 17:00:00+00	\N	t	t	1002276	25.693198	-80.304898	3	https://teslamotorsclub.com/tmc/threads/12-new-superchargers-near-dadeland-mall-in-miami.192160/	12	72	f	f	\N	2020-06-13 00:51:14.026135+00	3
1560	fargondsupercharger	Fargo, ND	OPEN	2020-05-29 17:00:00+00	\N	t	t	1001466	46.843601	-96.882492	276	https://teslamotorsclub.com/tmc/threads/fargo-nd-supercharger.112042/	8	250	f	f	2020-05-29: 4 of 8 stalls active initially\r\nJun7: all stalls active (supposedly)	2020-09-18 13:58:10.453953+00	8
2180	cnsc8253	Huludao - Feitian Shopping Mall, China	OPEN	2019-11-12 18:00:00+00	\N	t	t	1002086	40.722306	120.850364	9	\N	6	120	f	f	\N	2021-01-23 09:53:16.073623+00	2
4195	ComptonCASupercharger	Compton, CA	PERMIT	\N	\N	t	t	1004170	33.8789	-118.2193	18	https://teslamotorsclub.com/tmc/threads/supercharger-compton-ca-planning-phase-unconfirmed.252661	12	250	f	f	\N	2022-04-24 03:09:12.903346+00	1
3955	KendallFLSupercharger	Kendall, FL	CONSTRUCTION	\N	\N	t	t	1003930	25.689099	-80.393365	2	https://teslamotorsclub.com/tmc/threads/supercharger-kendall-fl.252556/	12	250	f	f	\N	2022-04-25 14:54:14.922013+00	2
2340	adelantosupercharger	Adelanto, CA	PERMIT	\N	\N	t	t	1002246	34.535312	-117.400374	918	https://teslamotorsclub.com/tmc/threads/supercharger-adelanto-ca-location-not-exactly-known-16-stalls.189629/	16	250	f	f	\N	2022-07-10 20:39:35.090982+00	2
1890	kissimmeesupercharger	Kissimmee, FL	OPEN	2020-01-13 18:00:00+00	\N	t	t	1001796	28.34551	-81.604567	33	https://teslamotorsclub.com/tmc/threads/disney-kissimmee-area-supercharger-permit-wawa.146211	8	150	f	f	\N	2020-02-04 04:30:43.99534+00	11
1585	sanbernardinosupercharger	San Bernardino, CA	OPEN	2018-06-08 17:00:00+00	\N	t	t	1001491	34.08407	-117.299314	304	https://teslamotorsclub.com/tmc/threads/supercharger-san-bernardino-permit-not-found-location-unknown.104467/	14	72	f	f	\N	2020-03-04 03:58:22.748953+00	4
2350	gympieausupercharger	Gympie, QLD	OPEN	2020-04-06 17:00:00+00	7am to 9pm	t	t	1002256	-26.188285	152.661475	63	https://teslamotorsclub.com/tmc/threads/supercharger-gympie-qld.172146	4	150	f	f	\N	2020-04-18 15:56:13.275397+00	2
2380	peterboroughonlansdownestreetwestsupercharger	Peterborough, ON	OPEN	2020-08-06 17:00:00+00	\N	t	t	1002286	44.28343	-78.332347	193	https://teslamotorsclub.com/tmc/threads/supercharger-peterborough-on.194239/	8	250	f	f	\N	2020-08-07 05:51:55.197233+00	5
2385	salemoregonsupercharger	Salem, OR	OPEN	2020-11-05 18:00:00+00	\N	t	t	1002291	44.93894	-122.987919	64	https://teslamotorsclub.com/tmc/threads/supercharger-salem-or.202878	12	250	f	f	\N	2020-11-05 21:24:15.926533+00	8
2395	\N	Denver - University Hills, CO	PERMIT	\N	\N	t	t	1002301	39.666202	-104.936889	1652	https://teslamotorsclub.com/tmc/threads/supercharger-denver-co-university-hills-shopping-center.195648/#post-4742759	16	250	f	f	\N	2022-07-10 20:41:50.522337+00	4
1630	wallacencsupercharger	Wallace, NC	OPEN	2018-06-16 17:00:00+00	\N	t	t	1001536	34.756276	-77.948019	15	https://teslamotorsclub.com/tmc/threads/wallace-nc-supercharger.116744/	8	150	f	f	Update from latest car map data	2020-02-09 19:59:20.510853+00	3
1350	florencescsupercharger	Florence, SC	OPEN	2017-10-21 17:00:00+00	\N	t	t	1001256	34.190371	-79.832575	39	https://teslamotorsclub.com/tmc/posts/2370480/	18	150	f	f	Update from latest car map data	2020-02-09 19:59:52.393406+00	4
3960	\N	Templeton, MA	PERMIT	\N	\N	t	t	1003935	42.561164	-72.040773	321	https://teslamotorsclub.com/tmc/threads/supercharger-templeton-ma.253116/	8	250	f	f	\N	2022-01-07 15:47:05.9494+00	1
2200	cnsc8966	Shanghai - Gubei 1699, China	OPEN	2020-03-29 17:00:00+00	\N	t	t	1002106	31.188757751934183	121.40182256698	4	https://teslamotorsclub.com/tmc/threads/china-superchargers.135731/#post-4257285	10	120	f	f	\N	2021-01-23 10:15:42.668969+00	3
2285	palmdalecaliforniasupercharger	Palmdale, CA	OPEN	2020-10-19 17:00:00+00	\N	t	t	1002191	34.606207	-118.151386	815	https://teslamotorsclub.com/tmc/threads/supercharger-palmdale-ca-location-speculation-pop-up-sign-in-mojave.175903/	12	250	f	f	\N	2020-10-20 01:23:18.543614+00	4
2195	michigancityinsupercharger	Michigan City, IN	OPEN	2020-03-24 17:00:00+00	\N	t	t	1002101	41.673833	-86.891234	201	https://teslamotorsclub.com/tmc/threads/supercharger-michigan-city-in.174093	8	250	f	f	\N	2020-03-24 12:36:13.679219+00	4
220	zevenaarsupercharger	Zevenaar, Netherlands	OPEN	2013-12-06 18:00:00+00	\N	t	t	1000120	51.94066	6.0818	10	\N	8	150	f	f	Ten stalls now per: https://forum.supercharge.info/t/zevenaar-nl-has-now-10-stalls/322\r\nRVG200218: Two temporary stalls have been removed again.\r\n2019-08-29: updated to 150kW as per the Tesla nav data	2020-02-18 00:56:25.49215+00	4
2205	florencesupercharger	Florence - Houston Rd, KY	OPEN	2021-05-01 17:00:00+00	\N	t	t	1002111	39.011489	-84.640279	1108	https://teslamotorsclub.com/tmc/threads/supercharger-florence-ky-houston-road.176269/	12	250	f	f	\N	2022-06-20 00:04:24.061835+00	9
2330	Deltonaflsupercharger	Deltona, FL	OPEN	2020-04-25 17:00:00+00	\N	t	t	1002236	28.9498974	-81.2508045	16	https://teslamotorsclub.com/tmc/threads/supercharger-deltona-fl.188408/	8	250	f	f	\N	2020-05-06 13:14:50.984277+00	5
2315	minnetonkasupercharger	Minnetonka, MN	OPEN	2020-08-27 17:00:00+00	\N	t	t	1002221	44.9698145	-93.4478659	294	https://teslamotorsclub.com/tmc/threads/supercharger-minnetonka-mn.170428	8	250	f	f	\N	2020-08-26 23:00:58.474645+00	5
2375	loulesupercharger	Loulé, Portugal	OPEN	2020-08-24 17:00:00+00	\N	t	t	1002281	37.097586	-7.9978675	77	https://teslamotorsclub.com/tmc/posts/4701095/	8	250	f	f	8x250 CCS only	2020-09-10 14:31:56.927495+00	5
2320	baltimoresupercharger	Baltimore - Boston Street, MD	OPEN	2020-10-13 17:00:00+00	\N	t	t	1002226	39.274972	-76.563528	9	https://teslamotorsclub.com/tmc/threads/supercharger-baltimore-md-boston-street.159893/	12	250	f	f	\N	2020-10-21 17:00:13.647697+00	6
2210	chiayitwsuperchargernew	Chiayi City, Taiwan	OPEN	2019-12-27 18:00:00+00	\N	t	t	1002116	23.496492	120.387577	26	https://teslamotorsclub.com/tmc/forums/taiwan.254/	17	250	f	f	17 stalls total:\r\n8 V2 stalls with dual cable (TPC + CCS2)\r\n9 V3 stalls with alternating single cable (5 TPC, 4 CCS2)	2022-06-27 04:08:24.648278+00	7
2405	beaumontcasupercharger	Beaumont, CA	OPEN	2020-07-02 17:00:00+00	\N	t	t	1002311	33.922543	-116.949167	779	https://teslamotorsclub.com/tmc/threads/supercharger-beaumont-ca-e-2nd-street.197165/	20	250	f	f	Note: Nav display only shows 17 stalls - to confirm	2020-07-09 06:06:11.733215+00	5
2410	ntusupercharger	Taipei - NTU Xinhai, Taiwan	OPEN	2020-06-29 17:00:00+00	\N	t	t	1002316	25.020459	121.543099	16	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682/#post-4794158	3	250	f	f	\N	2020-07-09 06:10:45.557029+00	2
105	quartzsitesupercharger	Quartzsite, AZ	OPEN	2013-11-14 18:00:00+00	\N	t	t	1000005	33.661314	-114.242174	280	https://teslamotorsclub.com/tmc/threads/quartzsite-supercharger-getting-overloaded-during-peak-holiday-travel-times.138705/	36	250	f	f	2020-07-03: Now 42 stalls available, mix of 72 kW, 150 kW and 250 kW - expect to reduce to 28x 250 kW stalls as old units are removed.\r\n2020-07-04: Website reporting 36 stalls (150 kW and 250 kW units only?)	2020-07-04 03:01:01.723563+00	6
2415	tnamsupercharger	Tainan - Art Museum, Taiwan	OPEN	2020-07-04 17:00:00+00	\N	t	t	1002321	22.990136	120.200944	7	https://twitter.com/teslaownerstwn/status/1279618478899556352?s=21	8	250	f	f	\N	2020-07-09 06:02:37.464098+00	4
1575	newtownplaza	New Town Plaza, Hong Kong	OPEN	2018-04-12 17:00:00+00	\N	t	t	1001481	22.381727	114.188806	21	\N	4	120	f	f	\N	2020-07-19 21:50:55.795444+00	2
4200	SaintQuentinSupercharger	Saint-Quentin, France	OPEN	2022-06-29 17:00:00+00	\N	t	t	1004175	49.858948	3.253782	84	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?page=141&tab=comments#comment-1118528	20	250	f	f	\N	2022-06-30 06:22:08.048005+00	2
2235	bothellwasupercharger	Bothell, WA	OPEN	2020-07-08 17:00:00+00	\N	t	t	1002141	47.767606	-122.191712	24	https://teslamotorsclub.com/tmc/threads/supercharger-bothell-wa.173233/	10	72	f	f	\N	2022-04-01 19:47:57.057224+00	5
2435	\N	Stafford Northbound, UK	PERMIT	\N	\N	t	t	1002341	52.885291	-2.171902	115	https://teslamotorsclub.com/tmc/threads/uk-supercharger-site-news.91118/page-80#post-4874768	12	250	f	f	\N	2020-07-29 20:05:13.461305+00	1
2525	montrosecosupercharger	Montrose, CO	OPEN	2020-12-18 18:00:00+00	\N	t	t	1002431	38.481242	-107.876472	1769	https://teslamotorsclub.com/tmc/threads/supercharger-%E2%80%94-montrose-co.97909/	8	250	f	f	\N	2020-12-23 13:20:03.183001+00	5
2830	cnsc8963	Foshan - Bailida Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002755	23.17583464	112.9020015	4	\N	6	120	f	f	\N	2021-02-09 09:47:32.682447+00	1
2430	whangareisupercharger	Whangarei, New Zealand	OPEN	2020-12-02 18:00:00+00	\N	t	t	1002336	-35.725282	174.31861	0	https://teslamotorsclub.com/tmc/threads/supercharger-whangarei.167620/	4	120	f	f	2020-12-02: Appeared as open on Find Us	2020-12-02 14:01:17.745523+00	3
2860	cnsc8999	Chengdu - Oriental Hope Tianxiang Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002790	30.55898	104.074369	476	\N	10	120	f	f	\N	2021-02-09 12:00:09.79923+00	1
2055	grandforkssupercharger	Grand Forks, ND	OPEN	2021-08-25 17:00:00+00	\N	t	t	1001961	47.888156	-97.081142	255	https://teslamotorsclub.com/tmc/threads/supercharger-grand-forks-nd.159805/	8	250	f	f	\N	2021-08-30 16:03:57.795759+00	6
3965	NapaCASupercharger2	Napa - Union, CA	PERMIT	\N	\N	t	t	1003940	38.321869	-122.307381	22	https://teslamotorsclub.com/tmc/threads/supercharger-napa-ca-bel-air-plaza-permit-approved-15-sep-2021.241453/	8	250	f	f	\N	2022-01-10 18:39:27.248636+00	1
1985	Colchestersupercharger	Colchester, UK	OPEN	2020-06-30 17:00:00+00	\N	t	t	1001891	51.8807	0.7889	38	https://teslamotorsclub.com/tmc/posts/4796384/	12	150	f	f	\N	2020-08-02 05:46:21.02205+00	5
2295	fortwilliamuksupercharger	Fort William, UK	OPEN	2020-09-24 17:00:00+00	\N	t	t	1002201	56.821388	-5.103697	7	https://teslamotorsclub.com/tmc/threads/uk-supercharger-site-news.91118/page-84#post-4899097	6	250	f	f	\N	2021-05-26 19:38:00.050503+00	6
2425	fossvogursupercharger	Fossvogur, Iceland	OPEN	2020-07-27 17:00:00+00	\N	t	t	1002331	64.117675	-21.899378	8	https://teslamotorsclub.com/tmc/threads/supercharger-fossvogur-iceland.235474/	4	120	f	f	\N	2021-07-30 16:34:31.276436+00	8
2165	chulavistacaliforniasupercharger	Chula Vista, CA	OPEN	2020-08-04 17:00:00+00	\N	t	t	1002071	32.649168	-116.9676	168	https://teslamotorsclub.com/tmc/threads/supercharger-chula-vista-under-construction-oct-2019.114236	16	250	f	f	2021-08-18: Four more stalls added	2021-08-18 23:11:49.899065+00	5
2420	nepeanonsupercharger	Nepean - Robertson Rd, ON	OPEN	2020-10-23 17:00:00+00	\N	t	t	1002326	45.32191	-75.835509	91	https://teslamotorsclub.com/tmc/threads/supercharger-nepean-on-robertson-road.138678/	8	250	f	f	\N	2022-06-20 00:05:54.700321+00	10
2080	salamancanysupercharger	Salamanca, Spain	PERMIT	\N	\N	t	t	1001986	40.962061	-5.698811	804	https://foro.clubtesla.es/index.php?topic=3692.0#forum	8	150	f	f	\N	2022-07-10 21:42:10.038792+00	5
2440	petersburgvawagnerrdsupercharger	Petersburg - Wagner Rd, VA	OPEN	2020-12-12 18:00:00+00	\N	t	t	1002346	37.1906	-77.3663	47	https://teslamotorsclub.com/tmc/threads/supercharger-petersburg-va.202050/	8	250	f	f	\N	2020-12-12 21:52:24.412263+00	5
2000	malibucaliforniasupercharger	Malibu - Whole Foods and the Park, CA	OPEN	2019-06-13 17:00:00+00	\N	t	t	1001906	34.037043	-118.685809	5	https://teslamotorsclub.com/tmc/threads/supercharger-malibu-ca-whole-foods-and-the-park-live-jun-2019-5-urban-stalls.156029	5	72	f	f	\N	2020-12-18 02:07:45.426308+00	3
2850	cnsc8986	Hengdian - Dongci Building, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002778	29.16246982	120.3193605	125	\N	6	120	f	f	\N	2021-02-09 11:44:58.049481+00	1
1455	pyhtääsupercharger	Pyhtää, Finland	OPEN	2017-12-21 18:00:00+00	\N	t	t	1001361	60.489054	26.554835	20	\N	10	150	f	f	Find Us has two entries for this location, with the second having a location id of pyhtääsupercharger	2022-01-13 02:53:13.168925+00	4
2835	cnsc8970	Chengdu - MixC, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002761	30.64974861	104.1155178	497	\N	10	120	f	f	\N	2021-02-09 11:14:00.006461+00	1
2840	cnsc8975	Ningbo - Cixi Kandun, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002767	30.221393	121.258665	7	\N	10	120	f	f	\N	2021-02-09 11:22:26.541718+00	1
2855	cnsc8993	Wenzhou - Sheraton Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002785	28.00059774	120.6840145	10	\N	6	120	f	f	\N	2021-02-09 11:53:05.456859+00	1
2865	cnsc9100	Fuzhou - Meiyuan International Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002796	26.066172	119.359108	6	\N	8	120	f	f	\N	2021-02-14 02:07:36.017909+00	1
2875	cnsc9110	Shanghai - Lingyun Yijiefang, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002808	31.141099	121.432492	7	\N	6	120	f	f	\N	2021-02-14 02:28:25.482535+00	1
3055	cnsc9246	Shenzhen - Tianjian Chuangzhi Center, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003018	22.55978	113.9897	45	\N	15	250	f	f	\N	2021-02-21 03:14:22.195847+00	1
380	martignysupercharger	Martigny, Switzerland	OPEN	2014-12-12 18:00:00+00	\N	t	t	1000283	46.126595	7.060944	451	https://tff-forum.de/t/supercharger-in-der-schweiz/3319/4140	16	250	f	f	Corrected number of stalls since 4 V3 are not yet build.\r\nhttps://t.co/zZv7VgngKl\r\nhttps://t.co/kppZ8KsvUG	2020-08-22 10:08:29.26919+00	6
3060	cnsc9251	Shantou - Changping New City, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003023	23.38359	116.7297	11	\N	6	250	f	f	\N	2021-02-21 03:41:37.382868+00	1
2450	worthsupercharger	Wörth, Germany	OPEN	2020-11-06 18:00:00+00	\N	t	t	1002356	48.625639	12.320222	373	https://tff-forum.de/t/supercharger-in-deutschland/5786/8442	12	250	f	f	2020-12-21: 4 more stalls live	2020-12-21 02:58:30.404089+00	10
2870	cnsc9105	Chengdu - G4202 Ring Express West Parking Zone West, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002802	30.727162	103.940418	527	\N	5	250	f	f	3 V3 Supercharging piles + 2 V2 Supercharging piles	2021-02-14 02:15:41.345829+00	1
3065	cnsc9256	Zhuhai - St. Regis, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003028	22.17629	113.5323	0	\N	6	250	f	f	\N	2021-02-21 03:53:57.794584+00	1
3070	cnsc9261	Puning - Jieyang Wantaihui, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003034	23.3195	116.1686	11	\N	6	250	f	f	\N	2021-02-21 04:02:40.770033+00	1
3075	cnsc9266	Tianjin - Xinmao Tiancai Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003039	39.10428	117.1256	2	\N	6	250	f	f	\N	2021-02-21 04:12:28.84032+00	1
2475	sanclementecaavenidavistahermosasupercharger	San Clemente - Av. Vista Hermosa, CA	OPEN	2020-10-01 17:00:00+00	\N	t	t	1002381	33.463091	-117.60783	124	https://teslamotorsclub.com/tmc/threads/205142/	12	250	f	f	\N	2020-10-03 05:27:23.193932+00	6
2465	xizhiasehomesupercharger	New Taipei City - Xizhi, Taiwan	OPEN	2020-09-06 17:00:00+00	\N	t	t	1002371	25.074837	121.6378285	77	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682/	4	250	f	f	\N	2020-09-10 14:33:04.814318+00	3
2455	clarksvillesupercharger	Ozark, AR	OPEN	2020-09-04 17:00:00+00	\N	t	t	1002361	35.5238	-93.8636	160	https://teslamotorsclub.com/tmc/threads/supercharger-ozark-ar.203551/	8	250	f	f	\N	2020-10-26 15:43:30.427505+00	7
2930	cnsc9166	Shenzhen - Bailong Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002880	22.7272	114.274963	48	\N	9	250	f	f	\N	2021-02-14 05:54:10.077123+00	1
2280	biberwiersupercharger	Biberwier, Austria	OPEN	2020-11-30 18:00:00+00	\N	t	t	1002186	47.372431	10.886093	1028	https://tff-forum.de/t/supercharger-in-deutschland/5786/8664	6	150	f	f	2020-12-01: Tesla added this location back to Find Us, and it's open again according to https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/302\r\n\r\nOpen according to: https://tff-forum.de/viewtopic.php?f=68&t=3580&view=unread#p911358\r\nClosed according to: https://tff-forum.de/t/supercharger-in-deutschland/5786/8664	2020-12-01 15:17:32.4391+00	9
2075	elizabethnjsupercharger	Elizabeth, NJ	OPEN	2020-08-25 17:00:00+00	\N	t	t	1001981	40.662806	-74.173611	6	https://teslamotorsclub.com/tmc/threads/supercharger-elizabeth-nj.162807/	16	250	f	f	\N	2021-03-22 23:36:06.637355+00	7
2900	cnsc9136	Chongqing - Dongyuan Yuehui Xinxin Park, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002841	29.575974	106.503164	345	\N	24	120	f	f	\N	2021-02-14 04:03:35.491411+00	1
2905	cnsc9141	Anshun - Huatong Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002847	26.287466	105.998613	1401	\N	6	120	f	f	\N	2021-02-14 04:11:39.067949+00	1
2890	cnsc9126	Taizhou - Yangtian Building, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002826	28.589512	121.395837	6	\N	8	120	f	f	\N	2021-02-14 04:11:56.68057+00	2
2910	cnsc9146	Jinhua - Longteng Home Living Museum, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002854	29.07918	119.645808	44	\N	6	250	f	f	\N	2021-02-14 04:22:28.724228+00	1
2915	cnsc9151	Wuyishan - Jiayuan Millennium Resort Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002861	27.641297	117.987176	204	\N	6	120	f	f	\N	2021-02-14 04:47:05.818025+00	1
2925	cnsc9161	Shaoxing - Shangyu Tianyue New Century Grand Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002874	30.045956	120.872083	6	\N	6	120	f	f	\N	2021-02-14 05:43:05.368272+00	1
2935	cnsc9171	Zhengzhou - Zupeng Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002888	34.866605	113.622855	90	\N	4	120	f	f	\N	2021-02-14 06:07:21.737447+00	1
2940	cnsc9176	Huzhou - Shenjiahu Expressway Xilong Service Area (Shanghai direction), China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002894	30.759358	119.791357	19	\N	2	120	f	f	\N	2021-02-14 06:18:24.045464+00	1
2945	cnsc9181	Shanghai - HUALUXE Hotel Hengshan Road, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002899	31.211621	121.451916	11	\N	9	250	f	f	\N	2021-02-14 06:35:09.564528+00	1
665	poznansupercharger	Poznań, Poland	OPEN	2016-12-19 18:00:00+00	\N	t	t	1000569	52.400285	16.893091	85	https://www.facebook.com/groups/EVdriversPL/permalink/1585119578358241/	6	150	f	f	https://www.facebook.com/groups/EVdriversPL/permalink/1585119578358241/	2020-12-14 19:42:05.481863+00	14
2635	JacksonvilleFLsupercharger	Jacksonville - Philips Hwy, FL	OPEN	2021-07-23 17:00:00+00	\N	t	t	1002541	30.265516	-81.617034	7	https://teslamotorsclub.com/tmc/threads/supercharger-jax-fl.210722/	12	250	f	f	\N	2021-08-18 23:25:25.534172+00	4
360	muckesupercharger	Mücke, Germany	OPEN	2014-09-25 17:00:00+00	\N	t	t	1000260	50.645417	8.989917	314	https://tff-forum.de/t/supercharger-in-deutschland/5786/9884	10	250	f	f	\N	2020-12-25 13:47:29.097279+00	3
3970	leersupercharger	Leer Ems Park, Germany	OPEN	2022-05-30 17:00:00+00	\N	t	t	1003945	53.259691	7.45576	-1	https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/1644	16	250	f	f	\N	2022-06-09 18:34:54.808136+00	5
2245	BancroftONsupercharger	Bancroft, ON	OPEN	2021-01-15 18:00:00+00	\N	t	t	1002151	45.084313	-77.861116	341	https://teslamotorsclub.com/tmc/threads/supercharger-bancroft-on.182021/	8	250	f	f	\N	2021-01-16 00:23:13.121656+00	6
2065	irvinecamainstreetsupercharger	Irvine - Main St, CA	OPEN	2020-12-26 18:00:00+00	\N	t	t	1001971	33.684357	-117.851746	11	https://teslamotorsclub.com/tmc/threads/supercharger-irvine-ca-main-street-live-29-dec-2020-24-urban-stalls.166372/	24	72	f	f	\N	2020-12-31 18:41:28.411279+00	13
2640	OxfordRedbridgegbsupercharger	Oxford Redbridge, UK	OPEN	2022-06-24 17:00:00+00	\N	t	t	1002546	51.72969	-1.24929	57	https://teslamotorsclub.com/tmc/posts/5251330/	12	250	f	f	\N	2022-06-24 17:16:59.170356+00	3
2630	VanBurenARsupercharger	Van Buren, AR	OPEN	2021-03-19 17:00:00+00	\N	t	t	1002536	35.458391	-94.356308	165	https://teslamotorsclub.com/tmc/threads/supercharger-van-buren-ar.215951/	6	250	f	f	\N	2021-03-20 00:08:24.492819+00	4
2485	NaplesFLsupercharger	Naples - Tarpon Bay Blvd, FL	OPEN	2021-09-08 17:00:00+00	\N	t	t	1002391	26.271106	-81.739504	5	https://teslamotorsclub.com/tmc/threads/supercharger-naples-fl-tarpon-bay-boulevard.205709/	8	250	f	f	\N	2021-09-13 16:36:05.652574+00	8
2500	kautokeinosupercharger	Kautokeino, Norway	OPEN	2021-09-28 17:00:00+00	\N	t	t	1002406	69.020425	23.04871	343	https://www.facebook.com/groups/799414020146419	4	250	f	f	\N	2021-10-06 03:21:19.670136+00	7
2505	\N	Los Angeles - 668 S Alameda St, CA	PERMIT	\N	\N	t	t	1002411	34.03575	-118.238039	76	https://teslamotorsclub.com/tmc/threads/supercharger-los-angeles-ca-668-s-alameda-st-permit-found-8-v3-stalls.207043/	8	250	f	f	\N	2020-09-19 21:22:30.491586+00	1
2895	cnsc9131	Guangzhou - Yuexiu Fortune Mansion, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002834	23.156478	113.247689	6	\N	6	120	f	f	\N	2021-02-14 03:55:53.481474+00	1
2880	cnsc9115	Shanghai - Ruijin Building, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002814	31.219905	121.469268	6	\N	6	120	f	f	\N	2021-02-14 02:39:08.093655+00	1
2885	cnsc9120	Shanghai - 889 Square, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002819	31.235638	121.435082	14	\N	6	120	f	f	\N	2021-02-14 02:46:01.20088+00	1
2920	cnsc9156	Yinchuan - Xinhua Department Store CC Park, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002867	38.489132	106.221455	1107	\N	6	120	f	f	\N	2021-02-14 05:32:25.381712+00	1
2620	nurburgringsupercharger	Nürburgring Motorsport Hotel, Germany	OPEN	2020-12-23 18:00:00+00	\N	t	t	1002526	50.331382	6.945171	609	https://forum.supercharge.info/t/palette-supercharger-at-nurburgring-germany/773/19	4	250	f	f	Four new V3 official stalls being installed by the Nürburgring Motorsport Hotel:\r\nhttps://www.reddit.com/r/teslamotors/comments/ki4fp4/more_chargers_being_installed_at_the_n%C3%BCrburgring/	2021-01-07 20:05:44.213456+00	4
2950	cnsc9186	Wenzhou - Import Trade Port, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002906	27.971917	120.642893	119	\N	6	250	f	f	\N	2021-02-14 06:44:35.858878+00	1
2955	cnsc9191	Qingyuan - Liannan Jinyaofeng Resort, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002912	24.710911	112.294348	221	\N	4	120	f	f	\N	2021-02-14 06:52:14.151343+00	1
2965	hangzhouxiaoshan	Hangzhou - Xiaoshan Tesla Center, China	OPEN	2021-01-22 18:00:00+00	Mon-Sun 09:00-18:00	t	t	1002924	30.2120464	120.289069	10	\N	6	120	f	f	\N	2021-02-14 10:15:34.7139+00	1
2970	foshanchancheng	Foshan - Chancheng Tesla Center, China	OPEN	2021-01-22 18:00:00+00	Mon-Sun 09:00-18:00	t	t	1002930	23.000891	113.106473	9	\N	8	120	f	f	\N	2021-02-14 10:34:53.506638+00	1
2980	qingdaoyinchuan	Qingdao - Yinchuan West Road Tesla Center, China	OPEN	2021-01-22 18:00:00+00	Mon-Sun 09:00-18:00	t	t	1002940	36.0859827	120.412308	92	\N	8	120	f	f	2021-02-14: Tesla co-ords are 30.6229556, 114.367616 - is a location in Wuhan.   Co-ords entered are of the Yinchuan West Rd address.	2021-02-14 11:10:57.694856+00	1
2985	cnsc9353	Yantai - Red Star Macalline, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002945	37.44079	121.4545	16	\N	8	120	f	f	\N	2021-02-17 09:06:08.747589+00	2
2510	forepierceflsupercharger	Fort Pierce, FL	OPEN	2020-10-02 17:00:00+00	\N	t	t	1002416	27.416538	-80.381845	5	https://teslamotorsclub.com/tmc/threads/supercharger-ft-pierce-fl.207117/	8	250	f	f	\N	2021-03-27 01:06:17.334092+00	4
2990	cnsc9347	Beijing - Badaling Ski Resort, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002950	40.3557	115.962	588	\N	8	120	f	f	\N	2021-02-17 09:08:59.313585+00	3
3080	cnsc9271	Hangzhou - Xiasha Intime Department Store, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003044	30.30486	120.3321	12	\N	6	250	f	f	\N	2021-02-21 04:20:26.878166+00	1
1390	orlandofloridasupercharger	Orlando - W Sand Lake Rd, FL	OPEN	2018-03-10 18:00:00+00	\N	t	t	1001296	28.449767	-81.466734	33	https://teslamotorsclub.com/tmc/threads/new-orlando-supercharger-wawa-sand-lake-rd-and-universal-blvd.101960/	8	150	f	f	\N	2020-10-01 17:36:23.978078+00	9
2540	LouisvilleKYSouthsupercharger	Louisville - Preston Hwy, KY	OPEN	2021-09-30 17:00:00+00	\N	t	t	1002446	38.111814	-85.677355	158	https://teslamotorsclub.com/tmc/threads/supercharger-louisville-ky-9500-preston-hwy.209702/	12	250	f	f	\N	2021-10-06 03:28:02.536764+00	5
2960	cnsc9198	Zhongshan, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002918	22.53377	113.4878	173	\N	9	250	f	f	\N	2021-02-14 07:01:03.06306+00	1
1200	hangzhouchengxiyintai	Hangzhou - Chengxi Yintai Experience Store, China	OPEN	2017-07-18 17:00:00+00	Monday - Sunday 10:00 - 22:00	t	t	1001104	30.300096	120.108108	9	\N	6	120	f	f	\N	2021-02-14 09:58:04.998097+00	2
2975	shaoxingpaojiang	Shaoxing - Paojiang Tesla Center, China	OPEN	2021-01-22 18:00:00+00	Mon-Sun 09:00-18:00	t	t	1002935	30.072085	120.61787	9	\N	6	250	f	f	\N	2021-02-14 10:50:53.259208+00	1
2995	cnsc8278	Xi'an - Yanta Cultural Xintiandi, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002955	34.21628223	108.9461959	422	\N	8	120	f	f	\N	2021-02-17 09:09:52.258811+00	2
3015	cnsc9205	Fuzhou - Shuoguo Times Square, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002976	27.96034	116.3697	52	\N	6	250	f	f	\N	2021-02-21 02:12:35.165125+00	1
3020	cnsc9211	Daqing - Kunlun Tangren Center, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002981	46.64125559	124.8875917	149	\N	9	250	f	f	\N	2021-02-21 02:20:06.890474+00	1
2675	cnsc8018	Cangzhou - Golden Lion International Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002581	38.310492	116.819753	13	\N	4	120	f	f	\N	2021-01-28 12:29:53.589414+00	1
2670	ElwoodNJSupercharger	Elwood, NJ	OPEN	2022-05-29 17:00:00+00	\N	t	t	1002576	39.550487	-74.735734	25	https://teslamotorsclub.com/tmc/threads/supercharger-hammonton-nj-frank-farley-service-plaza.218975/	8	250	f	f	\N	2022-05-30 00:04:06.261218+00	4
2660	SanRamonCAsupercharger	San Ramon - San Ramon Valley Blvd, CA	OPEN	2021-12-10 18:00:00+00	\N	t	t	1002566	37.723081	-121.944252	135	https://teslamotorsclub.com/tmc/threads/supercharger-san-ramon-ca-san-ramon-valley-blvd-permit-application-found-jan-2021-16-stalls.218536/	16	250	f	f	\N	2021-12-10 23:05:09.519879+00	5
2655	CaliforniaMDsupercharger	California, MD	OPEN	2021-05-13 17:00:00+00	\N	t	t	1002561	38.302946	-76.522367	37	https://teslamotorsclub.com/tmc/threads/supercharger-california-md.217829/	8	250	f	f	\N	2022-04-01 19:32:32.656515+00	6
2650	YrekaCAsupercharger	Yreka, CA	OPEN	2021-05-26 17:00:00+00	\N	t	t	1002556	41.701506	-122.645108	833	https://teslamotorsclub.com/tmc/threads/supercharger-yreka-ca-permit-issued-12-v3-stalls.217504/	12	250	f	f	\N	2021-05-26 15:27:22.559922+00	4
1120	tanumsupercharger	Tanum, Sweden	OPEN	2017-06-20 17:00:00+00	\N	t	t	1001024	58.72117	11.34538	49	https://teslaclubsweden.se/forum/viewtopic.php?f=45&t=22943	8	150	f	f	Update Oct 31, 2020. 8 stalls removed, 8 stalls left.\r\nWill probably be replaced with V3 soon.	2020-10-31 18:29:16.426585+00	8
2520	aurorail59supercharger	Aurora - IL-59, IL	OPEN	2020-10-30 17:00:00+00	\N	t	t	1002426	41.769119	-88.208105	216	https://teslamotorsclub.com/tmc/threads/supercharger-aurora-naperville-il.207826/	12	250	f	f	\N	2020-10-31 21:46:05.657256+00	3
2555	entiatwasupercharger	Entiat, WA	OPEN	2020-12-23 18:00:00+00	\N	t	t	1002461	47.684662	-120.206959	237	https://teslamotorsclub.com/tmc/threads/supercharger-entiat-wa-chelan-wa-on-teslas-coming-soon-map.197567/page-3	8	250	f	f	Not sure if this is the "Coming Soon" Chelan, WA from Tesla Find Us or not, so leaving location id blank for now.	2020-12-24 14:41:18.962856+00	4
2445	medfordorsupercharger	Medford, OR	OPEN	2020-11-04 18:00:00+00	\N	t	t	1002351	42.347992	-122.878882	402	https://teslamotorsclub.com/tmc/threads/supercharger-medford-or.202603/	12	250	f	f	\N	2020-11-05 04:22:45.700577+00	5
2680	cnsc8031	Wuxi - Wuxi World Trade Center, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002586	31.559952	120.315698	7	\N	4	120	f	f	\N	2021-01-28 12:37:46.358758+00	1
2685	cnsc8038	Xi'an - Taihua Jinmao International, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002592	34.230591	108.894146	410	\N	6	120	f	f	\N	2021-01-28 13:41:07.984234+00	1
2690	cnsc8048	Tianjin - Wisdom Mountain Virtual Industrial Park, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002598	39.099381	117.126363	4	\N	4	120	f	f	\N	2021-01-28 13:46:43.173719+00	1
2700	cnsc9006	Kunming - Caiyunli, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002608	25.032645	102.718044	1895	\N	8	120	f	f	\N	2021-01-29 18:27:35.627325+00	1
2705	cnsc9009	Shanghai - Aegean Shopping Park, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002615	31.180355	121.379942	9	\N	8	120	f	f	\N	2021-01-29 18:38:42.248186+00	1
2715	cnsc9019	Beijing - Changying Longhu Tianjie, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002625	39.930414	116.606086	29	\N	12	120	f	f	\N	2021-01-29 18:53:05.53079+00	1
2720	cnsc9024	Shanghai - Yueyang Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002630	31.228966	121.45445	7	\N	10	120	f	f	\N	2021-01-29 18:58:55.834881+00	1
285	kaitaksupercharger	Kai Tak Cruise Terminal, Hong Kong	OPEN	2014-07-22 17:00:00+00	07:00-23:00	t	t	1000186	22.306989	114.212648	5	\N	6	120	f	f	\N	2022-07-10 20:54:42.388194+00	4
1095	maritimesquaresupercharger	Maritime Square, Hong Kong	OPEN	2017-05-12 17:00:00+00	\N	t	t	1000999	22.359281	114.108184	50	\N	2	120	f	f	\N	2022-07-10 21:30:19.254219+00	3
2580	cyberportv3supercharger	Cyberport V3, Hong Kong	OPEN	2020-11-20 18:00:00+00	\N	t	t	1002486	22.262361	114.130851	9	\N	3	250	f	f	\N	2020-11-20 15:04:22.745557+00	1
2470	fremontcapacificcommonsblvdsupercharger	Fremont - Pacific Commons, CA	OPEN	2020-11-18 18:00:00+00	\N	t	t	1002376	37.502482	-121.968927	6	https://teslamotorsclub.com/tmc/threads/supercharger-fremont-ca.204912/	12	250	f	f	\N	2020-11-20 14:32:34.062228+00	5
2515	obfeldensupercharger	Obfelden - A4 Southbound, Switzerland	OPEN	2020-11-14 18:00:00+00	\N	t	t	1002421	47.272015	8.437738	484	https://tff-forum.de/t/supercharger-in-der-schweiz/3319/4214	12	250	f	f	Only reachable by Autobahn A4\r\nAddress leads Google to the correct side of the service station\r\nTesla's Find Us map lists obfeldensupercharger as the location id for the southbound station. No location id has appeared yet for the northbound one.	2020-11-20 20:47:06.210958+00	6
2570	LandOLakesFLsupercharger	Land O’ Lakes, FL	OPEN	2021-02-03 18:00:00+00	\N	t	t	1002476	28.189347	-82.40032	21	https://teslamotorsclub.com/tmc/threads/supercharger-land-o%E2%80%99-lakes-fl.212364/#post-5127813	8	250	f	f	\N	2021-02-03 16:25:54.093122+00	5
2710	cnsc9014	Ankang - Jianghua City Shopping Center, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002620	32.697784	109.030447	251	\N	6	120	f	f	\N	2021-01-29 18:46:53.791474+00	1
2400	mangawekasupercharger	Mangaweka, New Zealand	OPEN	2020-11-24 18:00:00+00	\N	t	t	1002306	-39.809731	175.788451	316	https://teslamotorsclub.com/tmc/threads/supercharger-taihape.168198/	4	150	f	f	\N	2020-11-24 11:18:30.915639+00	2
2725	cnsc9129	Beijing - Lavande Hotel Capital Airport National Exhibition Store, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002641	40.150571	116.609561	39	\N	6	120	f	f	\N	2021-01-29 19:11:11.870312+00	1
2730	cnsc9033	Xiamen - Jingxi Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002648	24.481032	118.118066	15	\N	8	120	f	f	\N	2021-01-29 19:18:45.178654+00	1
2735	cnsc9039	Qingdao - Excellence Grand Rong City, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002654	36.096741	120.385897	35	\N	6	120	f	f	\N	2021-01-29 19:25:06.434885+00	1
2740	cnsc9045	Chengdu - Longquan Wuyue Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002659	30.583752	104.247186	514	\N	8	120	f	f	\N	2021-01-29 19:30:44.263964+00	1
2745	cnsc9050	Hangzhou - Forte One Center, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002664	30.32526	120.115646	7	\N	8	120	f	f	\N	2021-01-29 19:36:41.630621+00	1
4210	ColmarFrancesupercharger	Colmar, France	CONSTRUCTION	\N	\N	t	t	1004185	48.1284726	7.3692953	185	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=145#comments	12	250	f	f	\N	2022-04-30 06:42:15.793704+00	2
2220	sallanchessupercharger	Sallanches, France	OPEN	2019-12-21 18:00:00+00	\N	t	t	1002126	45.951545	6.62879	531	https://teslamotorsclub.com/tmc/forums/france.126/	12	250	f	f	Sallanches is upgraded to V3, 12 stalls.\r\nhttps://www.facebook.com/groups/1628344087440357/permalink/2788440534764034	2020-11-30 10:55:59.951385+00	3
2590	weibersbrunnsupercharger	Weibersbrunn, Germany	OPEN	2020-12-23 18:00:00+00	\N	t	t	1002496	49.934792	9.353691	390	\N	16	250	f	f	\N	2021-01-06 14:46:44.887339+00	5
2490	affolternsupercharger	Affoltern - A4 Northbound, Switzerland	OPEN	2020-11-14 18:00:00+00	\N	t	t	1002396	47.27111	8.43981	482	https://tff-forum.de/t/supercharger-in-der-schweiz/3319/4057	12	250	f	f	Only reachable via Autobahn A4 Northbound.\r\nName according to Tesla in Car Sat-Nav	2020-12-14 01:03:24.675903+00	10
3975	ChevyChaseMDsupercharger	Bethesda, MD	PERMIT	\N	\N	t	t	1003950	38.981533	-77.097941	96	https://teslamotorsclub.com/tmc/threads/supercharger-bethesda-md.254524/	12	250	f	f	\N	2022-01-19 23:23:42.650831+00	1
3010	cnsc9200	Shanghai - Forte Vanke Vigor City, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002970	31.1641	121.5716	3	\N	6	120	f	f	\N	2021-02-21 01:58:13.593007+00	1
580	geiselwindsupercharger	Geiselwind, Germany	OPEN	2015-05-13 17:00:00+00	\N	t	t	1000483	49.769144	10.470409	354	http://tff-forum.de/viewtopic.php?p=113878#p113878	6	150	f	f	\N	2020-11-26 15:39:46.210123+00	6
2460	birminghamstandrews	Birmingham-St Andrews, UK	OPEN	2020-11-09 18:00:00+00	\N	t	t	1002366	52.4713	-1.8742	111	https://teslamotorsclub.com/tmc/posts/5125955/	16	250	f	f	\N	2020-11-28 17:40:04.586555+00	4
2755	TiltonNHsupercharger	Tilton, NH	OPEN	2021-02-25 18:00:00+00	\N	t	t	1002674	43.455263	-71.564612	142	https://teslamotorsclub.com/tmc/threads/supercharger-tilton-nh.217310/	8	250	f	f	\N	2021-10-10 02:43:59.848922+00	5
2595	CharlotteNCsupercharger	Charlotte - Northlake Centre Pkwy, NC	OPEN	2021-06-25 17:00:00+00	\N	t	t	1002501	35.34726	-80.85921	227	https://teslamotorsclub.com/tmc/threads/supercharger-charlotte-nc-northlake-centre-parkway.214231/	12	250	f	f	\N	2021-07-12 17:40:09.414355+00	7
2605	seattlewa2ndavenuesupercharger	Seattle - 1201 2nd Avenue, WA	OPEN	2020-12-07 18:00:00+00	6am-6pm during Covid - paid parking	t	t	1002511	47.6066581	-122.3371498	24	https://teslamotorsclub.com/tmc/threads/supercharger-seattle-wa-1201-2nd-ave.214628/	4	72	f	f	\N	2020-12-08 15:15:26.267854+00	5
2185	liertoppensupercharger	Liertoppen, Norway	OPEN	2020-03-12 17:00:00+00	\N	t	t	1002091	59.808633	10.299023	229	\N	40	250	f	f	CCS Only. \r\nFrom internal communications in the mall. Construction expected to start 19th of November. Corrected to 12 stalls. Prepared for 40.\r\n10.07: Expanded to 24 stalls.	2020-12-08 17:35:19.657044+00	14
3025	cnsc9216	Ruijin - Ruijin Honor International Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002986	25.9068528	116.0345043	195	\N	6	250	f	f	\N	2021-02-21 02:28:25.314825+00	1
3035	cnsc9226	Meizhou - World Merchants Center, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002996	24.29451549	116.1489689	96	\N	9	250	f	f	\N	2021-02-21 02:44:44.290963+00	1
3050	cnsc9241	Zhengzhou - Hanhai Haishang, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003012	34.80732	113.6515	96	\N	6	250	f	f	\N	2021-02-21 03:07:03.57343+00	1
2600	torringtonsupercharger	New Milford, CT	OPEN	2021-03-29 17:00:00+00	\N	t	t	1002506	41.538744	-73.421791	77	https://teslamotorsclub.com/tmc/threads/supercharger-new-milford-ct.214463/	8	250	f	f	\N	2021-03-30 13:53:35.441266+00	5
3085	cnsc9278	Dandong - Future City, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003049	40.11878	124.3749	8	\N	6	250	f	f	\N	2021-02-21 04:30:09.767009+00	1
3090	cnsc9283	Shanghai - Jiuting U World, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003054	31.14516	121.3324	4	\N	12	250	f	f	\N	2021-02-21 04:36:31.155739+00	1
3095	cnsc9288	Shenzhen - Jinyuanli Jiayuan, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003059	22.55016	114.1463	30	\N	8	120	f	f	\N	2021-02-21 04:43:24.24547+00	1
3100	cnsc9293	Shanghai - Minhang Longhu Tianjie, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003065	31.03256	121.4221	5	\N	10	120	f	f	\N	2021-02-21 04:51:07.942933+00	1
3105	cnsc9298	Changchun - Liwang Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003070	43.8476	125.2969	221	\N	9	250	f	f	\N	2021-02-21 04:58:10.309072+00	1
2760	newtonMAsupercharger	Newton, MA	PERMIT	\N	\N	t	t	1002679	42.330663	-71.255062	24	https://teslamotorsclub.com/tmc/threads/supercharger-newton-ma-rt-128-sb-service-plaza.219709/	8	250	f	f	\N	2021-02-04 13:30:46.354653+00	3
2780	cnsc8979	Lanzhou, China	OPEN	2020-07-23 17:00:00+00	\N	t	t	1002699	36.068049	103.776529	1538	\N	8	150	f	f	\N	2021-02-06 21:34:54.581467+00	1
2790	cnsc8275	Huaihua - Jinlei International Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002709	27.52165223	109.9884537	256	\N	6	120	f	f	\N	2021-02-08 11:44:00.176461+00	2
2785	cnsc8270	Wenzhou - Shangri-La Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002704	28.01461358	120.723392	1	\N	10	120	f	f	\N	2021-02-08 11:45:04.954511+00	2
2770	cnsc8216	Changde - Taohuayuan Golf Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002689	29.1143812	111.69535	36	\N	6	120	f	f	\N	2021-02-08 11:53:57.763567+00	2
2795	cnsc8165	Tianjin - Tomson Jinwan Yipin, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002714	39.1298822	117.210328	7	\N	6	120	f	f	\N	2021-02-08 13:17:54.656783+00	1
2775	\N	Shanghai - South Bailian Shopping Center, China *	OPEN	2021-01-22 18:00:00+00	\N	t	t	1002694	31.1319564	121.400384	5	\N	10	120	f	f	[duplicate to delete]	2021-02-14 02:31:11.608233+00	4
3115	cnsc9308	Rizhao - Wanxianghui, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003081	35.426776	119.538986	14	\N	9	250	f	f	\N	2021-02-21 05:53:44.157475+00	1
3145	cnsc9338	Shanghai - Baokuang International Building, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003114	31.2538	121.4975	11	\N	8	120	f	f	\N	2021-02-21 06:54:53.946806+00	1
3160	cnsc8290	Dalian - Shangri-La Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003129	38.92520187	121.65333	17	\N	8	120	f	f	\N	2021-02-21 10:18:42.646176+00	1
3170	cnsc9056	Suzhou - Zhongxin Building, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003139	31.269299	120.732134	5	\N	8	120	f	f	\N	2021-02-21 10:35:24.19511+00	1
3120	cnsc9313	Beijing - Country Garden Jiuhua Villa, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003087	40.1895	116.4203	41	\N	8	120	f	f	\N	2021-02-21 06:00:34.679608+00	1
3125	cnsc9318	Shanghai - Shangkun Shangjie Shopping Center, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003093	31.4241	121.3494	6	\N	6	250	f	f	\N	2021-02-21 06:08:59.485401+00	1
3130	cnsc9323	Shanghai - Sunshine World, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003098	31.3188	121.5942	5	\N	6	250	f	f	\N	2021-02-21 06:27:19.686961+00	1
3135	cnsc9328	Shanghai - Dongding Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003104	31.0437	121.2185	2	\N	6	250	f	f	\N	2021-02-21 06:40:02.456525+00	1
3140	cnsc9333	Chongqing - Yuanda Cultural and Creative Park, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003109	29.6403	106.5391	431	\N	9	250	f	f	\N	2021-02-21 06:46:59.0509+00	1
3150	cnsc9343	Wuhan - Oceanwide City Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003119	30.6098	114.262	28	\N	21	250	f	f	\N	2021-02-21 07:03:46.363027+00	1
3155	cnsc8285	Zhangjiajie - Hetianju Holiday Hotel, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003124	29.38376491	110.6429969	434	\N	6	120	f	f	\N	2021-02-21 10:09:52.103896+00	1
3165	cnsc9051	Shanghai - World Expo Source, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003134	31.188719	121.498826	6	\N	8	120	f	f	\N	2021-02-21 10:28:28.137628+00	1
3175	cnsc9061	Tianjin - Binhai Warner Jiale City, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003144	39.035859	117.699602	6	\N	10	120	f	f	\N	2021-02-21 10:43:57.752003+00	1
3180	cnsc9066	Shenzhen - Longgang Xingshanghui, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003150	22.735884	114.237453	50	\N	10	120	f	f	\N	2021-02-21 10:55:09.249789+00	1
3185	cnsc9071	Ningbo - Shanjing Outlets, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003155	29.864513	121.45667	6	\N	10	120	f	f	\N	2021-02-21 11:04:57.474091+00	1
3190	cnsc9076	Zhenjiang - Changfa Square, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003162	32.200941	119.439173	12	\N	10	120	f	f	\N	2021-02-21 11:12:37.194566+00	1
3195	cnsc9081	Beijing - Hejing Mofang Shopping Center, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003167	39.905934	116.424144	55	\N	6	120	f	f	\N	2021-02-21 11:24:37.810446+00	1
3200	cnsc9086	Beijing - Millennium Shopping Center in Fengtai District, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003173	39.896264	116.289954	56	\N	4	120	f	f	\N	2021-02-21 11:33:26.263712+00	1
3205	cnsc9091	Xi'an - Jinhui Global Plaza, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003178	34.187843	108.971234	484	\N	8	120	f	f	\N	2021-02-21 11:41:59.893535+00	1
3210	cnsc9096	Shenyang - Xinglong Grand Outlet, China	OPEN	2021-01-22 18:00:00+00	\N	t	t	1003183	41.747769	123.465595	44	\N	8	120	f	f	\N	2021-02-21 11:49:49.940764+00	1
1650	cnsc8204	Dongguan - World Footwear Base, China	OPEN	2018-06-19 17:00:00+00	\N	t	t	1001556	22.92447491	113.70186874	30	\N	6	120	f	f	\N	2021-02-27 22:15:45.448984+00	2
2480	altasupercharger	Alta, Norway	OPEN	2021-03-24 17:00:00+00	\N	t	t	1002386	69.961211	23.232935	14	https://elbilforum.no/index.php?topic=7959.3885	6	250	f	f	Initial build set at 8. Expansion to 12 is already in the permit. The 12th stall will be for cars with trailer. Local council adjusted initial number of stalls to 6.	2021-03-24 16:42:03.682485+00	9
3215	DouglasvilleGAsupercharger	Douglasville, GA	OPEN	2021-05-16 17:00:00+00	\N	t	t	1003188	33.726907	-84.735784	340	https://teslamotorsclub.com/tmc/threads/supercharger-douglasville-ga-target.221452/	12	250	f	f	\N	2021-08-18 23:23:13.60756+00	8
1770	cnsc8224	Shanghai  - Space Technology Application Industrial Base, China	OPEN	2018-11-20 18:00:00+00	\N	t	t	1001676	31.32295772	121.47601362	10	\N	10	120	f	f	\N	2021-02-28 00:05:53.068469+00	2
2625	Rownhamsgbsupercharger	Rownhams Northbound, UK	PERMIT	\N	\N	t	t	1002531	50.9581273	-1.4480566	55	https://teslamotorsclub.com/tmc/posts/5220868/	12	250	f	f	(50.9581273, -1.4480566)	2021-02-28 20:00:27.028024+00	2
970	columbiascsupercharger	Columbia, SC	OPEN	2016-11-15 18:00:00+00	\N	t	t	1000874	34.106319	-80.950723	95	https://teslamotorsclub.com/tmc/threads/supercharger-columbia-sc.47352/	8	150	f	f	Update from latest car map data	2021-03-01 00:46:31.79795+00	5
165	plymouthsupercharger	Plymouth, NC	OPEN	2014-03-12 17:00:00+00	\N	t	t	1000065	35.850587	-76.756116	5	https://teslamotorsclub.com/tmc/threads/supercharger-plymouth-nc.28026/	8	150	f	f	Update from latest car map data	2021-03-01 00:47:15.758743+00	4
2240	addanordsupercharger	Adda Nord, Italy	OPEN	2021-03-05 18:00:00+00	\N	t	t	1002146	45.511805	9.63561	120	https://www.autoaziendalimagazine.it/archivio_news/tesla-nel-2020-in-italia-24-nuovi-supercharger/	4	250	f	f	\N	2021-03-05 17:06:16.304677+00	5
3990	DalyCityCASupercharger	Daly City - Bryant St, CA	PERMIT	\N	\N	t	t	1003965	37.688188	-122.473605	57	https://teslamotorsclub.com/tmc/threads/supercharger-daly-city-ca-bryant-st-planning-approved-jan-2022-32-v3-stalls.255150	32	250	f	f	\N	2022-01-25 04:31:56.233606+00	1
3860	GlendaleCASupercharger2	Glendale - Harvey Dr, CA	OPEN	2022-01-25 18:00:00+00	\N	t	t	1003835	34.148107	-118.227151	208	https://teslamotorsclub.com/tmc/threads/supercharger-glendale-ca-harvey-dr-permit-issued-16-stalls.247927/	16	250	f	f	\N	2022-01-26 09:03:41.585302+00	3
3235	haubstadtinsupercharger	Haubstadt - Ruffian Way, IN	OPEN	2021-10-11 17:00:00+00	\N	t	t	1003208	38.159762	-87.551955	136	https://teslamotorsclub.com/tmc/threads/supercharger-haubstadt-in-ruffian-way.115540/	8	250	f	f	\N	2021-10-18 19:12:19.627985+00	7
3230	turkheimsupercharger	Türkheim, Germany	OPEN	2021-05-22 17:00:00+00	\N	t	t	1003203	48.042523	10.62013	607	https://forum.supercharge.info/t/supercharger-turkheim-bayern-deutschland-under-construction/1451	8	250	f	f	\N	2021-06-09 21:52:26.562839+00	5
2535	ChicagoILBucktownsupercharger	Chicago - N Elston Ave, IL	OPEN	2021-05-31 17:00:00+00	\N	t	t	1002441	41.928	-87.685478	182	https://teslamotorsclub.com/tmc/threads/supercharger-chicago-il-n-elston-ave.209147/	12	250	f	f	\N	2021-05-31 06:15:14.726661+00	4
3225	bridgewaternjsupercharger	Bridgewater, NJ	CONSTRUCTION	\N	\N	t	t	1003198	40.56757	-74.563865	19	https://teslamotorsclub.com/tmc/threads/supercharger-bridgewater-nj.109491/page-7#post-5376492	8	250	f	f	\N	2021-12-26 14:31:21.159929+00	2
2695	PeoriaILsupercharger	Peoria - N Sheridan Rd, IL	OPEN	2021-03-30 17:00:00+00	\N	t	t	1002603	40.739208	-89.606721	211	https://teslamotorsclub.com/tmc/threads/supercharger-peoria-il-n-sheridan-rd.193024/	8	250	f	f	\N	2021-04-05 03:25:16.982062+00	9
2565	WestKelownaBCsupercharger	West Kelowna, BC	OPEN	2021-03-04 18:00:00+00	\N	t	t	1002471	49.879772	-119.536163	408	https://teslamotorsclub.com/tmc/threads/supercharger-west-kelowna-bc.211796/	8	250	f	f	\N	2021-03-05 05:27:26.812612+00	3
2390	SanFranciscoCAsupercharger2	San Francisco - Geary Blvd, CA	OPEN	2021-05-20 17:00:00+00	\N	t	t	1002296	37.781806	-122.446146	94	https://teslamotorsclub.com/tmc/threads/supercharger-san-francisco-ca-geary-blvd-permit-issued-3-4-2020.194717/	34	250	f	f	\N	2022-04-01 16:53:56.939741+00	7
125	glenwoodspringssupercharger	Glenwood Springs, CO	OPEN	2013-09-17 17:00:00+00	\N	t	t	1000025	39.55268	-107.340168	1762	https://teslamotorsclub.com/tmc/threads/supercharger-glenwood-springs-co.37284/	6	150	f	f	\N	2021-03-11 17:06:53.904166+00	4
1795	westpalmbeachfloridasupercharger	West Palm Beach - Garden Rd, FL	OPEN	2018-12-21 18:00:00+00	\N	t	t	1001701	26.782582	-80.092328	4	https://teslamotorsclub.com/tmc/threads/supercharger-west-palm-beach-fl-garden-road.137470/	8	120	f	f	\N	2022-06-20 00:02:34.216896+00	7
3220	Linkopingsesupercharger	Linköping, Sweden	OPEN	2021-03-31 17:00:00+00	\N	t	t	1003193	58.435448	15.590902	39	https://teslaclubsweden.se/forum/viewtopic.php?p=509708#p509708	12	250	f	f	Info and photo from Facebook\r\n"Tesla Ägare/Entusiaster Sverige"	2021-03-31 19:42:18.954237+00	7
2545	elkridgemdsupercharger	Baltimore - South Caton Avenue, MD	OPEN	2021-02-22 18:00:00+00	\N	t	t	1002451	39.268888	-76.668933	33	https://teslamotorsclub.com/tmc/posts/5069213/	5	250	f	f	All 5 stalls operational now: https://teslamotorsclub.com/tmc/posts/5429786/	2021-04-01 02:38:23.007859+00	8
2230	wellingtonsupercharger	Wellington, New Zealand	OPEN	2021-04-16 17:00:00+00	\N	t	t	1002136	-41.224553	174.807651	138	https://teslamotorsclub.com/tmc/threads/supercharger-wellington.177393/	6	150	f	f	\N	2021-04-16 13:10:29.664026+00	4
3985	\N	Shingle Springs, CA	PERMIT	\N	\N	t	t	1003960	38.655825	-120.965651	405	https://teslamotorsclub.com/tmc/threads/supercharger-shingle-springs-ca-permit-filed-oct-2021.254896/	12	250	f	f	\N	2022-01-22 23:46:05.145126+00	1
1025	taipeiexpoparksupercharger	Taipei, Taiwan	OPEN	2017-01-24 18:00:00+00	\N	t	t	1000929	25.06867	121.52126	7	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682/	6	120	f	f	\N	2021-03-15 23:14:31.399117+00	4
715	truckeebrockwayroadsupercharger	Truckee - Brockway Rd, CA	OPEN	2015-10-23 17:00:00+00	\N	t	t	1000619	39.321865	-120.1621	1801	https://teslamotorsclub.com/tmc/threads/supercharger-truckee-ca-brockway-road-8-v2-stalls.55146/	8	150	f	f	\N	2022-02-10 01:17:08.038142+00	4
365	lonepinecasupercharger	Lone Pine, CA	OPEN	2015-01-28 18:00:00+00	\N	t	t	1000268	36.60059	-118.061916	1137	https://teslamotorsclub.com/tmc/threads/supercharger-lone-pine-ca-live-28-jan-2015-expanded-dec-2019-8-v3-stalls.36378/	8	250	f	f	2019-03-03: Added extra 2 stalls.  Mixture of speeds (120 / 72)\r\n2019-06-01: Another 8 permanent stalls in progress: https://teslamotorsclub.com/tmc/posts/3710250/\r\n2020-01-23: 8 v3 superchargers operational; original 4 v2 have been removed	2021-03-16 18:38:50.089347+00	8
510	springfieldilsupercharger	Springfield, IL	OPEN	2015-01-09 18:00:00+00	\N	t	t	1000413	39.748868	-89.67119	184	https://teslamotorsclub.com/tmc/threads/tesla-superchargers-springfield-illinois.40360/	8	150	f	f	\N	2021-08-16 21:20:38.670598+00	3
3240	SanJoseCAsupercharger	San Jose - 925 Blossom Hill Rd, CA	OPEN	2021-06-24 17:00:00+00	\N	t	t	1003213	37.250854	-121.860731	55	https://teslamotorsclub.com/tmc/threads/supercharger-san-jose-ca-925-blossom-hill-road-westfield-oakridge-live-24-jun-2021-24-v3-stalls.222725/	24	250	f	f	\N	2021-06-26 21:45:51.622988+00	5
180	murdosupercharger	Murdo, SD	OPEN	2013-12-31 18:00:00+00	\N	t	t	1000080	43.886915	-100.716887	691	https://teslamotorsclub.com/tmc/threads/murdo-sd-supercharger.37283/	4	120	f	f	\N	2022-02-10 01:34:25.215858+00	3
4215	\N	Dorking, UK	PERMIT	\N	\N	t	t	1004190	51.2476987	-0.3308733	50	https://teslamotorsclub.com/tmc/posts/6657397/	8	250	f	t	\N	2022-05-25 16:35:02.023462+00	2
895	naplessupercharger	Naples, FL	OPEN	2017-02-23 18:00:00+00	\N	t	t	1000799	26.14462	-81.788849	2	https://teslamotorsclub.com/tmc/threads/supercharger-naples-fl.73874/	8	150	f	f	\N	2021-03-16 02:13:09.912509+00	8
545	uticanysupercharger	Utica, NY	OPEN	2015-02-11 18:00:00+00	\N	t	t	1000448	43.113878	-75.206857	128	https://teslamotorsclub.com/tmc/threads/supercharger-utica-ny.38692/	8	150	f	f	\N	2021-08-16 21:24:02.76586+00	3
3880	princetonwvsupercharger	Princeton, WV	OPEN	2022-01-25 18:00:00+00	\N	t	t	1003855	37.364002	-81.052394	780	https://teslamotorsclub.com/tmc/threads/supercharger-princeton-wv.249012/	8	250	f	f	\N	2022-01-31 16:33:20.058174+00	3
4005	OrstaVoldaSupercharger	Volda, Norway	OPEN	2022-07-01 17:00:00+00	\N	t	t	1003980	62.140694	6.090757	66	https://innsyn.volda.kommune.no/wfinnsyn.ashx?tittel=&fratil=tesla&jpid=&fradato=&tildato=&response=journalpost_sok&simple=false&sok=S%C3%B8k	12	250	f	f	\N	2022-07-02 09:37:15.855578+00	9
205	cheyennesupercharger	Cheyenne, WY	OPEN	2014-01-20 18:00:00+00	\N	t	t	1000105	41.161085	-104.804955	1859	https://teslamotorsclub.com/tmc/threads/supercharger-cheyenne-wy.37280/	4	120	f	f	\N	2022-02-10 01:47:42.471801+00	4
160	albanysupercharger	Albany, NY	OPEN	2014-04-30 17:00:00+00	\N	t	t	1000060	42.710356	-73.819109	88	https://teslamotorsclub.com/tmc/threads/ny-albany-supercharger-updates.25874/	6	120	f	f	\N	2022-07-10 20:24:00.280927+00	3
415	buffalosupercharger	Buffalo, NY	OPEN	2015-06-11 17:00:00+00	\N	t	t	1000318	42.968673	-78.696128	213	https://teslamotorsclub.com/tmc/threads/buffalo-supercharger-updates.25873/	8	120	f	f	\N	2022-07-10 20:24:50.421692+00	4
790	portmacquarie	Port Macquarie, NSW	OPEN	2016-03-19 17:00:00+00	\N	t	t	1000694	-31.4361	152.823582	23	https://teslamotorsclub.com/tmc/threads/supercharger-port-macquarie-nsw.61517/	6	150	f	f	\N	2021-03-18 01:47:04.706382+00	4
4000	taichungqingshuiserviceareasupercharger	Taichung - Qingshui Service Area, Taiwan	OPEN	2022-01-30 18:00:00+00	\N	t	t	1003975	24.281538	120.602003	175	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682	3	250	f	f	2 TPC & 1 CCS2	2022-01-30 01:40:02.425381+00	1
3245	yeasupercharger	Yea, VIC	OPEN	2021-04-14 17:00:00+00	\N	t	t	1003218	-37.20997	145.426036	173	https://teslamotorsclub.com/tmc/threads/supercharger-yea-vic.222836/	4	150	f	f	\N	2021-04-13 14:25:29.667463+00	4
4220	Elk%20GroveCASupercharger2	Elk Grove - Laguna, CA	CONSTRUCTION	\N	\N	t	t	1004195	38.4099	-121.4181	10	https://teslamotorsclub.com/tmc/threads/supercharger-elk-grove-ca-bruceville-rd-construction-may-2022.265815/	12	250	f	f	\N	2022-05-03 03:20:59.849097+00	1
695	wodongasupercharger	Wodonga, VIC	OPEN	2015-09-25 17:00:00+00	\N	t	t	1000599	-36.123962	146.889889	168	https://teslamotorsclub.com/tmc/threads/supercharger-wodonga-vic.51450/#post-1106606	6	150	f	f	\N	2021-03-18 01:46:46.186256+00	4
600	melbourne	Melbourne - Richmond, VIC	OPEN	2015-05-15 17:00:00+00	\N	t	t	1000503	-37.831997	144.995807	16	https://teslamotorsclub.com/tmc/threads/superchargers-in-australia.34978/	4	150	f	f	\N	2021-03-18 01:47:20.418459+00	4
2300	clarksburgnjsupercharger	Clarksburg, NJ	OPEN	2020-12-15 18:00:00+00	\N	t	t	1002206	40.15767	-74.430151	47	https://teslamotorsclub.com/tmc/threads/supercharger-clarksburg-nj.186162/	8	250	f	f	\N	2021-03-18 12:50:58.491917+00	7
1535	aguascalientessupercharger	Aguascalientes, Mexico	OPEN	2018-03-14 17:00:00+00	\N	t	t	1001441	21.729665	-102.277536	1880	https://teslamotorsclub.com/tmc/threads/mexico-superchargers.43464/	6	150	f	f	\N	2021-03-19 00:47:38.182621+00	2
3260	\N	Somerset - Eastbound Service Plaza, PA	OPEN	2021-07-21 17:00:00+00	\N	t	t	1003233	39.9995422	-79.0474265	708	https://teslamotorsclub.com/tmc/threads/supercharger-south-somerset-service-plaza-eastbound-turnpike.223343/	8	250	f	f	\N	2022-06-30 00:40:11.69205+00	5
1175	guilderlandsupercharger	Guilderland, NY	OPEN	2017-08-16 17:00:00+00	\N	t	t	1001079	42.688932	-73.853554	80	https://teslamotorsclub.com/tmc/threads/supercharger-guilderland-ny.25874/#post-543281	20	120	f	f	More precise co-ords	2022-07-10 20:33:55.748686+00	11
3995	TukwilaWAsupercharger	Tukwila, WA	CONSTRUCTION	\N	\N	t	t	1003970	47.455273	-122.256631	8	https://teslamotorsclub.com/tmc/threads/supercharger-tukwila-wa.217389	16	250	f	f	\N	2022-02-18 23:29:14.645057+00	3
3255	MontgomeryALsupercharger	Montgomery, AL	OPEN	2021-10-04 17:00:00+00	\N	t	t	1003228	32.361192	-86.161314	74	https://teslamotorsclub.com/tmc/threads/supercharger-montgomery-al.170508/	12	250	f	f	\N	2021-10-06 03:28:21.880939+00	8
1685	brooklynnysupercharger	Brooklyn - Brooklyn Museum, NY	OPEN	2018-09-29 17:00:00+00	\N	t	t	1001591	40.670085	-73.962826	45	https://teslamotorsclub.com/tmc/threads/supercharger-brooklyn-ny-brooklyn-museum.124301/	10	72	f	f	\N	2021-03-27 01:04:21.76178+00	3
2495	EastIrvineCAsupercharger	Irvine - Culver Drive, CA	OPEN	2021-04-17 17:00:00+00	\N	t	t	1002401	33.706784	-117.785164	29	https://teslamotorsclub.com/tmc/threads/supercharger-irvine-ca-culver-drive-walnut-in-permitting-sep-2020.206552/	16	250	f	f	\N	2021-04-28 15:28:46.620483+00	7
2665	Skiennosupercharger	Skien, Norway	OPEN	2021-04-30 17:00:00+00	\N	t	t	1002571	59.206551	9.609387	6	https://elbilforum.no/index.php?topic=7959.4095	9	250	f	f	\N	2021-05-06 14:50:04.355735+00	5
3275	saskatoonsksupercharger	Saskatoon - Clarence Ave South, SK	OPEN	2021-10-19 17:00:00+00	\N	t	t	1003248	52.088291	-106.64237	503	https://teslamotorsclub.com/tmc/threads/supercharger-saskatoon-sk.223769/	6	250	f	f	\N	2021-10-26 02:35:47.535273+00	6
4010	MontaubanSupercharger	Montauban, France	OPEN	2022-03-23 17:00:00+00	\N	t	t	1003985	44.036419	1.378375	99	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=124#comments	16	250	f	f	23 March 2022: Now open accoring to https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=134#comments	2022-03-23 12:44:06.445101+00	2
3270	princegeorgebcsupercharger	Prince George, BC	OPEN	2021-11-03 17:00:00+00	\N	t	t	1003243	53.890728	-122.767745	595	https://teslamotorsclub.com/tmc/threads/supercharger-prince-george-bc.223745/	6	250	f	f	\N	2021-11-03 18:25:42.448714+00	6
1930	swartzcreekmisupercharger	Swartz Creek, MI	OPEN	2020-01-28 18:00:00+00	\N	t	t	1001836	42.96744	-83.828794	239	https://teslamotorsclub.com/tmc/threads/supercharger-swartz-creek-mi.145967/	10	150	f	f	\N	2021-03-22 23:33:48.903215+00	8
3250	asewemallsupercharger	New Taipei City, Taiwan	OPEN	2021-03-17 17:00:00+00	7am-12am	t	t	1003223	24.978761	121.444683	10	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682/#post-5395895	3	250	f	f	\N	2021-03-23 14:42:20.629783+00	2
1400	fremontcaliforniasupercharger	Fremont - 39201 Fremont Blvd, CA	OPEN	2018-04-27 17:00:00+00	\N	t	t	1001306	37.544506	-121.983822	16	https://teslamotorsclub.com/tmc/threads/supercharger-fremont-2-target-centerville-near-completion.102439	12	150	f	f	2018-05-03: Previously known as "Fremont Hub"	2022-04-01 16:43:14.242237+00	9
1690	dalycitysupercharger	Daly City, CA	OPEN	2018-10-05 17:00:00+00	\N	t	t	1001596	37.673998	-122.472257	89	https://teslamotorsclub.com/tmc/threads/supercharger-daly-city-ca-live-5-oct-2018-40-urban-stalls.125740/	40	72	f	f	\N	2021-03-23 17:25:53.762472+00	5
4020	SanMateoCASupercharger	San Mateo - S Norfolk St, CA	PERMIT	\N	\N	t	t	1003995	37.55453	-122.293228	2	https://teslamotorsclub.com/tmc/threads/supercharger-san-mateo-ca-norfolk-st-permit-filed-01-21-2022-16-stalls.256243/	16	250	f	f	\N	2022-02-04 00:30:05.401352+00	1
4175	tournussuperchargerq122	Tournus, France	OPEN	2022-06-21 17:00:00+00	\N	t	t	1004150	46.576917	4.899323	223	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=139#comments	20	250	f	f	11 May 2022: Construction started according to French forum: https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=149#comments	2022-06-22 15:03:09.040657+00	3
3000	torrentnorthboundsupercharger	Torrent - Northbound, Spain	OPEN	2021-03-25 17:00:00+00	\N	t	t	1002960	39.401127	-0.492107	93	https://twitter.com/TeslaParaTodos/status/1362001025712930816?s=20	2	150	f	f	North side now open according to https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=63#comments	2021-03-26 21:12:48.642241+00	5
1675	taitungcitysupercharger	Taitung, Taiwan	OPEN	2018-07-03 17:00:00+00	\N	t	t	1001581	22.770315	121.122457	34	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682/	8	120	f	f	\N	2021-03-23 16:51:53.190626+00	2
1645	fortmyersflsupercharger	Fort Myers, FL	OPEN	2018-07-02 17:00:00+00	\N	t	t	1001551	26.608585	-81.809444	7	https://teslamotorsclub.com/tmc/threads/supercharger-fort-myers-fl-dani-drive.118249/	14	150	f	f	name change: removed Dani Drive, per nav name.	2022-06-30 00:28:59.111515+00	6
3280	Timisoararosupercharger	Timișoara, Romania	OPEN	2021-04-14 17:00:00+00	\N	t	t	1003253	45.755123	21.233001	90	https://teslamotorsclub.com/tmc/threads/superchargers-in-romania.224065/	6	250	f	f	\N	2021-04-14 19:28:49.152857+00	4
4040	SaintGaudensSupercharger	Saint-Gaudens, France	OPEN	2022-03-30 17:00:00+00	\N	t	t	1004015	43.11681	0.76693	386	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=129#comments	8	250	f	f	30 March 2022: Now open according to our forum	2022-04-13 21:00:40.423067+00	3
4025	DenkendorfSupercharger	Denkendorf, Germany	OPEN	2022-03-30 17:00:00+00	\N	t	t	1004000	48.707	9.306556	347	https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/2311	12	250	f	f	\N	2022-03-30 19:59:12.907884+00	2
4230	StLouisMOSupercharger	St. Louis, MO	CONSTRUCTION	\N	\N	t	t	1004205	38.620823	-90.260954	148	https://teslamotorsclub.com/tmc/threads/supercharger-st-louis-mo-bark.266152/	12	250	f	f	\N	2022-05-16 05:16:02.434771+00	2
1800	westnyacknysupercharger	West Nyack, NY	OPEN	2019-07-16 17:00:00+00	\N	t	t	1001706	41.094692	-73.955497	19	https://teslamotorsclub.com/tmc/threads/supercharger-west-nyack-ny.137528/	20	150	f	f	\N	2021-03-28 16:20:40.608773+00	4
3285	yonginsupercharger	Yongin-Giheung, South Korea	OPEN	2021-03-30 17:00:00+00	\N	t	t	1003258	37.225032	127.123109	116	\N	6	250	f	f	2021-03-30: Appeared on Find Us	2021-03-31 02:29:30.194967+00	1
1470	cambridgemasupercharger	Cambridge, MA	OPEN	2017-12-29 18:00:00+00	Mon-Sat: 6am - 1am, Sun: 9am - 12 midnight	t	t	1001376	42.368483	-71.076189	1	https://teslamotorsclub.com/tmc/threads/supercharger-cambridge-ma.105161/	8	72	f	f	New garage hours: https://www.cambridgeside.com/parking and https://teslamotorsclub.com/tmc/posts/5412767/	2021-04-01 17:51:35.557657+00	4
605	annarborsupercharger	Ann Arbor, MI	OPEN	2015-08-20 17:00:00+00	\N	t	t	1000508	42.240687	-83.766265	282	https://teslamotorsclub.com/tmc/threads/supercharger-ann-arbor-mi.47306/	8	150	f	f	.2018-04-30: Temporarily closed from 30 April to 4 May.  Original open date 20/8/2015.  Refer: https://teslamotorsclub.com/tmc/threads/supercharger-in-ann-arbor-mi-going-down-for-this-week.114269/\r\n2018-05-13: Re-opened according to TMC.	2022-02-10 01:27:40.34142+00	6
3290	ColumbusGAsupercharger	Columbus, GA	OPEN	2021-04-20 17:00:00+00	\N	t	t	1003263	32.533485	-84.971362	129	https://teslamotorsclub.com/tmc/threads/supercharger-columbus-ga.224631/	12	250	f	f	\N	2021-08-03 23:46:04.205563+00	4
3300	kanagawashonansupercharger	Fujisawa City, Japan	OPEN	2021-04-06 17:00:00+00	\N	t	t	1003273	35.3376820682	139.4454811676	14	\N	2	250	f	f	\N	2022-07-10 21:43:40.063116+00	3
2305	pedricktownnjclarabartonsupercharger	Pedricktown - Clara Barton, NJ	OPEN	2021-04-06 17:00:00+00	\N	t	t	1002211	39.697702	-75.39773	13	https://teslamotorsclub.com/tmc/threads/new-superchargers-on-the-nj-turnpike.186472/	8	250	f	f	\N	2021-04-08 18:24:13.51064+00	9
395	tystbergasupercharger	Sillekrog, Sweden	OPEN	2014-12-03 18:00:00+00	\N	t	t	1000298	58.918156	17.367987	53	http://teslaclubsweden.se/forum/viewtopic.php?f=45&t=5999&start=640	8	150	f	f	2016-01-18: There appear to be 6 stalls even though Tesla's website lists 4.  http://supercharge-me.de/index.php/component/content/article?id=236:supercharger-tystberga\r\n\r\n2018-11-20: Tesla added another 2 stalls, now 8.\r\n\r\n2022-07-11: Tesla has renamed this location from Tystberga to Sillekrog	2022-07-11 13:23:05.845043+00	5
190	moabsupercharger	Moab, UT	OPEN	2014-01-22 18:00:00+00	\N	t	t	1000090	38.573122	-109.552368	1224	https://teslamotorsclub.com/tmc/threads/supercharger-moab-utah.79688/	4	120	f	f	\N	2022-02-10 01:42:01.507544+00	3
2615	VeniceFLsupercharger	Venice, FL	OPEN	2022-02-14 18:00:00+00	\N	t	t	1002521	27.107859	-82.385275	4	https://teslamotorsclub.com/tmc/threads/supercharger-venice-fl.215613/	8	250	f	f	\N	2022-02-15 20:27:27.623289+00	4
4030	WalcottIASupercharger	Walcott, IA	OPEN	2022-03-18 17:00:00+00	\N	t	t	1004005	41.619789	-90.782433	234	https://teslamotorsclub.com/tmc/threads/supercharger-walcott-ia-worlds-largest-truckstop.256681/	8	250	f	f	\N	2022-03-19 02:02:19.156023+00	3
4045	LostHillsCASupercharger	Lost Hills, CA	CONSTRUCTION	\N	\N	t	t	1004020	35.616874	-119.656098	75	https://teslamotorsclub.com/tmc/threads/supercharger-lost-hills-ca-permit-found.257433/	20	250	f	f	\N	2022-07-04 14:09:47.1342+00	3
4425	Sarzanaq222	Sarzana, Italy	CONSTRUCTION	\N	\N	t	t	1004400	44.117291	9.945708	17	\N	12	250	f	f	\N	2022-07-09 20:25:43.071122+00	2
3320	alainsupercharger	Al Ain - Hazza Bin Zayed Stadium, UAE	OPEN	2021-06-01 17:00:00+00	\N	t	t	1003293	24.247033	55.715946	264	https://twitter.com/teslaownersuae/status/1383056692397572104?s=21	3	250	f	f	\N	2022-03-31 06:52:57.115347+00	6
3295	Hengelonlsupercharger	Hengelo, Netherlands	OPEN	2021-05-11 17:00:00+00	\N	t	t	1003268	52.287238	6.773243	14	https://teslamotorsclub.com/tmc/posts/5515170/	16	250	f	f	\N	2021-12-29 13:29:40.73758+00	5
3325	LillehammerCentralSupercharger	Lillehammer Strandtorget, Norway	OPEN	2022-01-28 18:00:00+00	\N	t	t	1003298	61.11454	10.447179	123	https://elbilforum.no/index.php?topic=7959.4185	20	250	f	f	\N	2022-02-01 14:21:58.149738+00	5
3305	Varbergsesupercharger	Varberg, Sweden	OPEN	2021-04-22 17:00:00+00	\N	t	t	1003278	57.168401	12.275437	12	https://teslaclubsweden.se/forum/viewtopic.php?p=517381#p517381	20	250	f	f	Tesla West Sweden @ Facebook	2021-04-22 16:25:56.165613+00	5
3315	lokfumarketsupercharger	Lok Fu Market, Hong Kong	OPEN	2021-04-15 17:00:00+00	\N	t	t	1003288	22.33931	114.1871	28	\N	4	150	f	f	\N	2021-04-15 11:59:49.761083+00	1
2560	adderstonesupercharger	Adderstone, UK	OPEN	2021-04-01 17:00:00+00	\N	t	t	1002466	55.564568	-1.791857	85	https://teslamotorsclub.com/tmc/posts/5104507/	6	250	f	f	Photo in editor group. Please don't share photo. https://forum.supercharge.info/t/adderstone-uk/1280	2021-07-13 15:52:49.465763+00	16
3330	MiddletownDEsupercharger	Middletown, DE	OPEN	2021-04-22 17:00:00+00	\N	t	t	1003303	39.47951	-75.722099	20	https://teslamotorsclub.com/tmc/threads/supercharger-middletown-de.217843/	8	250	f	f	\N	2021-08-18 23:46:26.920398+00	4
3355	hwasungsupercharger	Hwaseong, South Korea	OPEN	2021-04-30 17:00:00+00	\N	t	t	1003328	37.13485	126.895718	40	\N	6	250	f	f	\N	2021-04-30 05:53:00.676277+00	2
3335	ZapopanJaliscosupercharger	Zapopan, Mexico	OPEN	2021-04-22 17:00:00+00	\N	t	t	1003308	20.710169	-103.412631	1576	https://teslamotorsclub.com/tmc/threads/mexico-superchargers.43464/page-6#post-5370213	8	250	f	f	\N	2021-04-23 12:33:09.896184+00	4
3360	kirkesabysupercharger	Kirke Såby, Denmark	OPEN	2021-07-01 17:00:00+00	\N	t	t	1003333	55.640024	11.830728	54	https://forum.supercharge.info/t/new-supercharger-kirke-saby-denmark/1544	8	250	f	f	\N	2021-12-20 15:50:23.367667+00	4
3350	sunvalleycasupercharger	Sun Valley, CA	PERMIT	\N	\N	t	t	1003323	34.225463	-118.397666	256	https://teslamotorsclub.com/tmc/threads/supercharger-sun-valley-ca-24-v3-superchargers-eplan-filed.226908/	24	250	f	f	\N	2021-04-28 16:45:34.543369+00	1
3345	SanBrunoCAsupercharger2	San Bruno - El Camino Real, CA	OPEN	2022-01-29 18:00:00+00	\N	t	t	1003318	37.636105	-122.420515	18	https://teslamotorsclub.com/tmc/threads/supercharger-san-bruno-ca-shops-at-tanforan-plans-filed-28-stalls.226900/	28	250	f	f	\N	2022-03-28 11:35:32.200557+00	6
3340	cranfordnjsupercharger	Cranford, NJ	OPEN	2022-06-22 17:00:00+00	\N	t	t	1003313	40.658207	-74.287872	24	https://teslamotorsclub.com/tmc/threads/supercharger-cranford-nj.226785/	12	250	f	f	\N	2022-06-23 16:18:37.210747+00	3
3005	airedelabissupercharger	Aire de l’Abis, France	OPEN	2021-05-07 17:00:00+00	\N	t	t	1002965	45.52497	5.976822	318	https://www.facebook.com/groups/TeslaFanFr/permalink/3985487381503595/	12	250	f	f	2021-05-07: appeared on Find Us\r\n\r\nMore information:\r\n\r\nhttps://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?page=57&tab=comments#comment-783106	2021-05-08 00:58:43.054539+00	9
3365	BentonHarborMIsupercharger	Benton Harbor, MI	OPEN	2021-07-31 17:00:00+00	\N	t	t	1003338	42.082115	-86.423841	195	https://teslamotorsclub.com/tmc/threads/supercharger-benton-harbor-mi.227041/	12	250	f	f	\N	2021-07-31 07:18:11.256621+00	4
4360	\N	Griffith, NSW	PERMIT	\N	\N	t	t	1004335	-34.289023	146.051261	128	https://teslamotorsclub.com/tmc/threads/supercharger-griffith-nsw.270499/	6	250	f	f	\N	2022-06-23 06:14:37.504571+00	1
3950	kobemikagesupercharger	Kobe - Mikage, Japan	OPEN	2021-12-31 18:00:00+00	06:30 - 23:00	t	t	1003925	34.715574	135.255163	16	https://teslamotorsclub.com/tmc/threads/%E3%83%86%E3%82%B9%E3%83%A9-%E3%82%B9%E3%83%BC%E3%83%91%E3%83%BC%E3%83%81%E3%83%A3%E3%83%BC%E3%82%B8%E3%83%A3%E3%83%BC-japanese-superchargers.40887	4	250	f	f	\N	2022-07-10 21:48:16.343116+00	2
1875	Leavesdensupercharger	Chandler's Cross, UK	CONSTRUCTION	\N	\N	t	t	1001781	51.6937	-0.4261	100	https://teslamotorsclub.com/tmc/posts/3441786/	16	120	f	f	Located at Mercure London North Watford Hunton Park Hotel\r\nDiscussed + pictures in Facebook Tesla Owners Group UK group.	2022-07-10 21:40:57.78851+00	4
4420	JacksonvilleNCSupercharger	Jacksonville, NC	CONSTRUCTION	\N	\N	t	t	1004395	34.776774	-77.414566	10	https://teslamotorsclub.com/tmc/threads/supercharger-jacksonville-nc.266781/	8	250	f	f	\N	2022-07-07 14:38:35.567956+00	1
4310	ElDoradoKSSupercharger	El Dorado, KS	CONSTRUCTION	\N	\N	t	t	1004285	37.765506	-96.982618	412	https://teslamotorsclub.com/tmc/threads/supercharger-el-dorado-ks.268850/	8	250	f	f	\N	2022-07-10 03:54:48.84597+00	3
4430	\N	Tuggeranong, ACT	CONSTRUCTION	\N	\N	t	t	1004405	-35.416694	149.066317	575	https://teslamotorsclub.com/tmc/threads/supercharger-tuggeranong-act.271823	6	250	f	f	\N	2022-07-11 04:03:21.502239+00	1
4365	\N	Kerpen-Sindorf, Germany	CONSTRUCTION	\N	\N	t	t	1004340	50.897701	6.682074	77	https://tff-forum.de/t/supercharger	16	250	f	f	\N	2022-06-24 13:32:24.180946+00	2
4035	BensonNCSupercharger	Benson, NC	OPEN	2022-05-07 17:00:00+00	\N	t	t	1004010	35.374508	-78.541871	73	https://teslamotorsclub.com/tmc/threads/supercharger-benson-nc.256908/	8	250	f	f	\N	2022-05-08 14:03:11.657614+00	3
2585	saltlakecityutah30wsupercharger	Salt Lake City (SC), UT	OPEN	2020-11-25 18:00:00+00	\N	t	t	1002491	40.746393	-111.900534	1290	https://teslamotorsclub.com/tmc/threads/supercharger-salt-lake-city-ut-s-300-w.213585/	4	72	f	f	\N	2022-05-08 19:44:58.456146+00	5
4050	BarstowCASupercharger2	Barstow - Tanger Way, CA	OPEN	2022-05-27 17:00:00+00	\N	t	t	1004025	34.8446	-117.0862	729	https://teslamotorsclub.com/tmc/threads/supercharger-outlets-at-barstow-ca-awaiting-confirmation.257025/	20	250	f	f	\N	2022-05-27 06:49:40.504206+00	6
4235	aisupercharger	Ål, Norway	OPEN	2022-06-29 17:00:00+00	\N	t	t	1004210	60.630096	8.563888	452	https://prod01.elementscloud.no/publikum/864952992/Case/5144	20	250	f	f	\N	2022-06-29 11:39:36.898351+00	4
555	osakakitakupanasonicsupercharger	Osaka Suehirocho - Panasonic, Japan	CLOSED_PERM	\N	\N	t	t	1000458	34.700941	135.51077	9	\N	4	120	f	f	2022-06-26: Original open date 2015-02-13.  Replaced by Osaka - Omigachi site see https://forum.supercharge.info/t/supercharger-osaka-ogimachi-japan/2110	2022-07-10 21:05:11.307398+00	3
4395	anseongsupercharger	Anseong, South Korea	OPEN	2022-07-02 17:00:00+00	\N	t	t	1004370	36.988973	127.265732	41	https://teslamotorsclub.com/tmc/forums/south-korea.322/	6	250	f	f	\N	2022-07-02 13:35:26.682276+00	1
4315	tourssudsuperchargerq122	Tours Sud, France	CONSTRUCTION	\N	\N	t	t	1004290	47.325519	0.7135	88	https://www.facebook.com/groups/1628344087440357/permalink/3187864104821673/	16	250	f	f	At Ma Petite Madelaine shopping center	2022-07-10 21:49:48.626896+00	3
3400	abingdonmdsupercharger	Abingdon - Woodsdale Rd, MD	OPEN	2021-11-13 18:00:00+00	\N	t	t	1003373	39.46561	-76.311042	50	https://teslamotorsclub.com/tmc/threads/supercharger-abingdon-md.217722/	8	250	f	f	\N	2021-11-18 20:56:22.167373+00	5
3385	riponcasupercharger	Ripon, CA	CONSTRUCTION	\N	\N	t	t	1003358	37.747311	-121.141219	19	https://teslamotorsclub.com/tmc/threads/supercharger-ripon-ca-12-stalls-in-planning.228177/	12	250	f	f	\N	2022-06-18 22:10:22.213939+00	3
3375	BloisFrancesupercharger	Blois, France	OPEN	2021-06-25 17:00:00+00	\N	t	t	1003348	47.61154	1.339214	109	https://forum.supercharge.info/t/supercharger-blois-france/1480	16	250	f	f	25 June 2021: Open according to our forum	2021-06-29 16:24:37.948735+00	4
3380	elportalcasupercharger	El Portal, CA	PERMIT	\N	\N	t	t	1003353	37.67841	-119.765007	634	https://teslamotorsclub.com/tmc/threads/supercharger-el-portal-ca-location-speculation-permit-not-found.217284/#post-5521404	4	250	f	f	\N	2021-05-13 18:23:23.543786+00	1
3395	sammamishwasupercharger	Sammamish, WA	PERMIT	\N	\N	t	t	1003368	47.616291	-122.032922	108	https://teslamotorsclub.com/tmc/threads/supercharger-sammamish-wa.228440/	8	250	f	f	\N	2021-05-18 04:30:55.998588+00	1
3390	versaillessupercharger	Parly 2, France	OPEN	2021-11-09 18:00:00+00	\N	t	t	1003363	48.8270072	2.1189786	133	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?page=76&tab=comments#comment-860210	12	250	f	f	\N	2021-11-11 16:44:09.836148+00	4
3415	EastHamptonNYSupercharger	East Hampton, NY	OPEN	2022-03-27 17:00:00+00	\N	t	t	1003388	40.965501	-72.189633	14	https://teslamotorsclub.com/tmc/threads/supercharger-east-hampton-ny.229528/	12	250	f	f	\N	2022-03-27 22:36:56.504406+00	3
3410	\N	San Diego - Carmel Valley, CA	PERMIT	\N	\N	t	t	1003383	32.938702	-117.231395	28	https://teslamotorsclub.com/tmc/threads/supercharger-san-diego-ca-carmel-valley-16-v3-stalls-permit-filed.229342/	16	250	f	f	\N	2021-05-28 17:15:27.552109+00	1
3420	\N	Chowchilla, CA	PERMIT	\N	\N	t	t	1003393	37.126287	-120.247428	75	https://teslamotorsclub.com/tmc/threads/supercharger-chowchilla-ca-location-found-in-planning-may-2021.229592/	8	250	f	f	\N	2021-05-31 15:36:31.806602+00	1
4055	OxfordNCSupercharger	Oxford, NC	OPEN	2022-04-12 17:00:00+00	\N	t	t	1004030	36.2803	-78.6047	138	https://teslamotorsclub.com/tmc/threads/supercharger-oxford-nc.257759/	12	250	f	f	\N	2022-04-15 13:37:04.597871+00	3
3405	SouthBostonVASupercharger	South Boston - Philpott Rd, VA	OPEN	2021-07-29 17:00:00+00	\N	t	t	1003378	36.68665	-78.900855	101	https://teslamotorsclub.com/tmc/threads/supercharger-south-boston-va.229068/	4	250	f	f	\N	2021-08-02 16:56:23.62751+00	5
3310	Gelnhausendesupercharger	Gelnhausen, Germany	OPEN	2021-06-03 17:00:00+00	\N	t	t	1003283	50.188705	9.18604	136	https://forum.supercharge.info/t/supercharger-gelnhausen-germany/1518	11	250	f	f	Pointing discuss to our forums since the ttf ones are hard to follow the progression of a single location.\r\n-- Yes, it's really 11 stalls. Unusual number, I know!\r\n\r\nhttps://tff-forum.de/t/supercharger-in-deutschland/100662/1222	2021-06-04 09:07:36.592634+00	4
3425	Tilburgnlsupercharger	Tilburg, Netherlands	OPEN	2021-07-31 17:00:00+00	\N	t	t	1003398	51.543627	5.11109	16	https://teslamotorsclub.com/tmc/posts/5584521/	16	250	f	f	At van der Valk Tilburg\r\n2021-12-31: Expanded to 16 stalls	2021-12-31 11:51:44.061248+00	3
3430	\N	Austin - Brodie Lane, TX	PERMIT	\N	\N	t	t	1003403	30.215335	-97.830891	221	https://teslamotorsclub.com/tmc/threads/supercharger-austin-tx-brodie-ln.230011/	8	250	f	f	\N	2021-06-04 23:10:07.680132+00	4
3435	VadnaisHeightsMNsupercharger	Vadnais Heights, MN	PERMIT	\N	\N	t	t	1003408	45.051408	-93.062261	280	https://teslamotorsclub.com/tmc/threads/supercharger-vadnais-heights-mn.230099/	8	250	f	f	\N	2021-06-07 04:24:06.040435+00	1
3440	Pitestirosupercharger	Pitești, Romania	OPEN	2021-06-29 17:00:00+00	\N	t	t	1003413	44.823832	24.910667	294	https://forum.supercharge.info/t/superchargers-in-romania/1481/3	6	250	f	f	\N	2021-06-30 14:40:31.25789+00	3
3445	LaJollaCAsupercharger	San Diego - University Center Lane, CA	OPEN	2021-06-10 17:00:00+00	\N	t	t	1003418	32.870556	-117.224664	98	https://teslamotorsclub.com/tmc/threads/supercharger-san-diego-ca-university-city-7-urban-72-kw-stalls-in-service.230588/	7	72	f	f	\N	2021-06-12 14:49:29.737344+00	6
3460	CapeGiradeauMOSupercharger	Cape Girardeau, MO	OPEN	2022-03-17 17:00:00+00	\N	t	t	1003433	37.348729	-89.598272	170	https://teslamotorsclub.com/tmc/threads/supercharger-cape-girardeau-mo.231158/	8	250	f	f	Note the typo in the locationId, "Giradeau"	2022-03-18 23:13:04.928569+00	7
4060	MadocONSupercharger	Madoc, ON	CONSTRUCTION	\N	\N	t	t	1004035	44.5128	-77.481	173	https://teslamotorsclub.com/tmc/threads/supercharger-madoc-on.256171	8	250	f	f	\N	2022-07-10 00:34:56.275419+00	6
4375	charleroisupercharger	Charleroi, Belgium	PERMIT	\N	\N	t	t	1004350	50.452028	4.430694	212	https://m.facebook.com/story.php?story_fbid=pfbid0qyJimgc8Z2W1iB4cmt7tuy8W2zYiW4QPd1dkS6FXff2oFB7wZgmfxKdgn1zpP7E1l&id=100063694644381	12	250	f	f	In Parc de la Madeleine	2022-06-26 10:12:43.854772+00	8
4240	Neuville-en-FerrainSupercharger	Neuville-en-Ferrain, France	OPEN	2022-06-29 17:00:00+00	\N	t	t	1004215	50.7417938	3.145576	26	https://www.facebook.com/groups/tm3lereseau/permalink/1044704979809445/	20	250	f	f	\N	2022-06-30 06:21:28.492942+00	3
4320	\N	North Hollywood, CA	PERMIT	\N	\N	t	t	1004295	34.1814	-118.3954	207	https://teslamotorsclub.com/tmc/threads/supercharger-north-hollywood-ca-permit-filed-01-2022-24-stalls.269127/	12	250	f	f	\N	2022-07-10 16:25:34.97171+00	2
2250	\N	Turlock, CA	PERMIT	\N	\N	t	t	1002156	37.520397	-120.879689	32	https://teslamotorsclub.com/tmc/threads/supercharger-turlock-ca-permit-found-jan-2020.182120	8	250	f	f	2022-07-09 - This permit looks pretty stale. Other Turlock location has moved into construction.	2022-07-10 20:39:11.580549+00	5
3475	seolleungsupercharger	Seoul - Centerfield, South Korea	OPEN	2021-06-24 17:00:00+00	\N	t	t	1003448	37.503216	127.04162	37	\N	6	250	f	f	Not on findus map as of 2021-11-08\r\nNow back on findus map as of 2022-02-12	2022-02-12 05:32:02.536695+00	3
3480	TroisdorfGermanysupercharger	Troisdorf, Germany	OPEN	2021-11-05 17:00:00+00	\N	t	t	1003453	50.813871	7.107929	55	https://tff-forum.de/t/supercharger-in-deutschland/100662/2869	12	250	f	f	15 Sep 2021:  construction started, see https://tff-forum.de/t/supercharger-in-deutschland/100662/4309	2021-11-10 21:49:58.082593+00	4
3455	\N	Plymouth, UK	PERMIT	\N	\N	t	t	1003428	50.3905524	-4.1511681	53	https://teslamotorsclub.com/tmc/posts/5624796/	4	250	f	t	GRIDSERVE site so potentially not the Tesla “coming soon” pin for Plymouth	2021-06-15 18:10:55.83249+00	3
3465	\N	Santa Barbara - Ortega St, CA	PERMIT	\N	\N	t	t	1003438	34.41927	-119.69715	9	https://teslamotorsclub.com/tmc/threads/supercharger-santa-barbara-ca-ortega-garage-proposed-location-jun-2021-12-stalls-3-l2.231513/	12	250	f	f	\N	2021-06-20 17:57:05.331616+00	2
3450	corksupercharger	Cork - Mahon Point Shopping Centre, Ireland	OPEN	2021-06-29 17:00:00+00	\N	t	t	1003423	51.8866	-8.3973	6	https://teslamotorsclub.com/tmc/threads/uk-and-ireland-supercharger-site-news.91118/page-168#post-5674109	4	250	f	f	Only 4 active until power sorted	2021-09-08 12:31:12.312148+00	6
3470	CrossvilleTNSupercharger	Crossville, TN	OPEN	2021-10-16 17:00:00+00	\N	t	t	1003443	35.985369	-85.010956	548	https://teslamotorsclub.com/tmc/threads/supercharger-crossville-tn.231587/	8	250	f	f	\N	2021-10-17 00:50:18.498934+00	4
2270	PortageMIsupercharger	Portage - Westnedge Ave, MI	OPEN	2021-07-02 17:00:00+00	\N	t	t	1002176	42.244	-85.587575	260	https://teslamotorsclub.com/tmc/threads/supercharger-portage-mi.183597/	8	250	f	f	Tesla's official name for this location, per the in-car navigation screen shown on TMC, is "Portage - Westnedge Ave".  \r\nWe should match Tesla's official Supercharger names, even if they are verbose.	2021-07-02 23:43:20.342448+00	9
3535	Vierzonfrsupercharger	Vierzon, France	OPEN	2021-07-18 17:00:00+00	\N	t	t	1003508	47.245841	2.069532	151	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=100#comments	36	250	f	f	28 stalls now, per a screenshot on our forums.	2022-02-02 15:50:39.521593+00	4
3525	gransupercharger	Gran, Norway	OPEN	2022-06-03 17:00:00+00	\N	t	t	1003498	60.354572	10.573026	206	https://elbilforum.no/index.php?topic=15598.1695	12	250	f	f	It's 11 stalls according to the Norwegian forum:\r\nhttps://elbilforum.no/index.php?topic=7959.4260	2022-06-08 15:48:00.368754+00	7
3520	cambornesupercharger	Camborne, UK	OPEN	2021-08-26 17:00:00+00	\N	t	t	1003493	50.2275556	-5.2800278	97	https://teslamotorsclub.com/tmc/threads/uk-and-ireland-supercharger-site-news.91118/page-171#post-5703295	8	250	f	f	\N	2021-09-26 12:11:58.999128+00	6
3515	mountainvillagecosupercharger	Mountain Village - Mountain Village Blvd, CO	OPEN	2021-11-11 18:00:00+00	\N	t	t	1003488	37.933428	-107.854146	2903	https://teslamotorsclub.com/tmc/threads/supercharger-telluride-co.98239/	8	250	f	f	\N	2021-11-11 16:12:21.69697+00	3
3490	meredithnhsupercharger	Meredith, NH	OPEN	2022-06-30 17:00:00+00	\N	t	t	1003463	43.66114	-71.493944	158	https://teslamotorsclub.com/tmc/threads/supercharger-meredith-nh.232522/	6	250	f	f	\N	2022-07-04 03:36:13.9509+00	5
3500	seoulseochosupercharger	Seoul - Seocho, South Korea	OPEN	2021-07-01 17:00:00+00	\N	t	t	1003473	37.48406	127.01732	40	\N	6	250	f	f	\N	2021-07-01 02:12:55.816714+00	1
3505	AustinTXWestsupercharger	Austin - S Lamar Blvd, TX	OPEN	2021-12-30 18:00:00+00	\N	t	t	1003478	30.233293	-97.793053	212	https://teslamotorsclub.com/tmc/threads/supercharger-austin-tx-s-lamar-blvd.232769/	12	250	f	f	\N	2021-12-31 15:27:46.620942+00	5
3495	RanchoCucamongaCAsupercharger	Rancho Cucamonga - Foothill Blvd, CA	OPEN	2021-09-22 17:00:00+00	\N	t	t	1003468	34.106627	-117.527064	368	https://teslamotorsclub.com/tmc/threads/supercharger-rancho-cucamonga-ca-2-location-speculation.221742/page-2	8	250	f	f	\N	2021-09-22 22:59:05.906501+00	4
3510	RoslynHeightsNYsupercharger	Roslyn Heights - Willis Ave, NY	OPEN	2021-07-27 17:00:00+00	\N	t	t	1003483	40.77956	-73.651063	38	https://teslamotorsclub.com/tmc/threads/supercharger-roslyn-heights-ny.232945/	8	250	f	f	\N	2021-08-18 23:52:49.200948+00	3
3560	akureyrisupercharger	Akureyri, Iceland	OPEN	2021-10-13 17:00:00+00	\N	t	t	1003533	65.69773	-18.140122	66	https://teslamotorsclub.com/tmc/threads/supercharger-akureyri-iceland.235753	8	250	f	f	Tesla site mentions 4 stalls only.	2022-04-06 13:47:13.656283+00	6
3550	sevenoakssupercharger	Sevenoaks, UK	OPEN	2021-09-11 17:00:00+00	\N	t	t	1003523	51.3025544	0.1614214	90	https://teslamotorsclub.com/tmc/posts/5757444/	8	250	f	f	\N	2021-09-21 15:45:35.2714+00	3
3540	\N	Santa Monica - Cloverfield Blvd, CA	CONSTRUCTION	\N	\N	t	t	1003513	34.025098	-118.469543	49	https://teslamotorsclub.com/tmc/threads/supercharger-santa-monica-ca-i-10-under-construction-jun-2022-16-v3-stalls.234652/	16	250	f	f	\N	2022-06-23 13:26:22.652609+00	3
3565	MansfieldPASupercharger	Mansfield, PA	OPEN	2021-08-07 17:00:00+00	\N	t	t	1003538	41.8049603	-77.08515356	349	https://teslamotorsclub.com/tmc/threads/supercharger-mansfield-pa.236340/	4	250	f	f	\N	2021-08-08 01:17:31.560707+00	3
3530	posthausensupercharger	Posthausen, Germany	OPEN	2021-09-02 17:00:00+00	\N	t	t	1003503	53.059527	9.164782	15	https://tff-forum.de/t/supercharger-in-deutschland/100662/4142	12	250	f	f	2 Sep 2021: now open accoring to https://tff-forum.de/t/supercharger-in-deutschland/100662/4142	2021-09-08 12:33:00.592173+00	3
3555	KnoxvilleTNSupercharger	Knoxville - Brookview Centre Way, TN	OPEN	2021-09-22 17:00:00+00	\N	t	t	1003528	35.935852	-84.004146	272	https://teslamotorsclub.com/tmc/threads/supercharger-knoxville-tn-brookview-center.235964/	8	250	f	f	\N	2021-09-26 11:08:53.746332+00	5
4245	YorbaLindaCASupercharger	Yorba Linda, CA	PERMIT	\N	\N	t	t	1004220	33.8893	-117.8085	121	https://teslamotorsclub.com/tmc/threads/supercharger-yorba-linda-ca-permit-filed-8-stalls.266601/	8	250	f	f	\N	2022-05-12 00:38:01.027778+00	1
3580	YemasseeSCSupercharger	Yemassee, SC	OPEN	2021-08-25 17:00:00+00	\N	t	t	1003553	32.634231	-80.875183	7	https://teslamotorsclub.com/tmc/threads/supercharger-yemassee-sc.236422	8	250	f	f	\N	2021-08-26 12:08:14.269775+00	3
3570	OberhausenGermanysupercharger	Oberhausen, Germany	OPEN	2021-12-18 18:00:00+00	\N	t	t	1003543	51.485653342468275	6.8878134401085	39	https://tff-forum.de/t/supercharger-in-deutschland/100662/3873	20	250	f	f	\N	2021-12-22 20:51:51.988479+00	3
3585	Doroteasesupercharger	Dorotea, Sweden	OPEN	2021-09-23 17:00:00+00	\N	t	t	1003558	64.261509	16.417872	317	https://teslaclubsweden.se/forum/viewtopic.php?f=45&t=24363&hilit=dorotea&start=40	4	250	f	f	Pictures from Facebook - "Tesla Model 3 Sverige"	2021-10-05 23:11:05.177536+00	5
3575	taoyuanyangmeisupercharger	Taoyuan - Yangmei, Taiwan	OPEN	2021-11-07 18:00:00+00	\N	t	t	1003548	24.928365	121.167163	185	https://twitter.com/TeslaOwnersTwn/status/1425366219511660549?s=20	3	250	f	f	2 TPC super charging docks\r\n1 CCS2 Super Charging Dock	2021-11-08 09:02:45.069393+00	3
4370	\N	Sturbridge, MA	PERMIT	\N	\N	t	t	1004345	42.09864	-72.072215	216	https://teslamotorsclub.com/tmc/threads/supercharger-sturbridge-ma.270711/	12	250	f	f	\N	2022-06-25 03:51:10.480946+00	1
4065	\N	Issaquah - Gilman, WA	PERMIT	\N	\N	t	t	1004040	47.540084	-122.041717	21	https://teslamotorsclub.com/tmc/threads/supercharger-gilman-wa.258535/	8	250	f	f	\N	2022-02-24 19:32:27.792776+00	1
4015	LelandNCSupercharger	Leland, NC	OPEN	2022-02-24 18:00:00+00	\N	t	t	1003990	34.2173	-78.0185	8	https://teslamotorsclub.com/tmc/threads/supercharger-leland-nc.256132/	12	250	f	f	\N	2022-02-25 13:39:12.465192+00	2
1140	stpoltensupercharger	St. Pölten, Austria	OPEN	2017-07-13 17:00:00+00	\N	t	t	1001044	48.205756	15.618428	269	http://tff-forum.de/viewtopic.php?f=68&t=3580&start=2530	12	125	f	f	Looks like Tesla's location may be wrong by 2.2 km.  Based email from -snip- and this link: http://www.goingelectric.de/stromtankstellen/Oesterreich/Verbund/Tesla-Supercharger/	2022-02-28 12:14:17.739658+00	13
4325	\N	Mikkeli, Finland	PERMIT	\N	\N	t	t	1004300	61.688649	27.280678	78	\N	8	250	f	f	\N	2022-06-10 11:33:55.98504+00	1
4380	VeronaNYSupercharger	Verona, NY	CONSTRUCTION	\N	\N	t	t	1004355	43.113201	-75.591176	160	https://teslamotorsclub.com/tmc/threads/supercharger-turning-stone-verona-ny.271141/	12	250	f	f	\N	2022-06-29 00:58:08.651934+00	1
4385	sydney2supercharger	Bondi Junction, NSW	PERMIT	\N	\N	t	t	1004360	-33.892909	151.247895	79	https://teslamotorsclub.com/tmc/threads/supercharger-bondi-junction-nsw.271173/	6	250	f	f	\N	2022-06-29 07:21:57.610748+00	1
4410	\N	Völkermarkt, Austria	PERMIT	\N	\N	t	t	1004385	46.68231358900579	14.6762444518587	462	\N	12	250	f	f	\N	2022-07-05 07:37:12.131443+00	3
3595	CarlePlaceNYsupercharger	Carle Place, NY	OPEN	2021-11-18 18:00:00+00	\N	t	t	1003568	40.744718	-73.61626	27	https://teslamotorsclub.com/tmc/threads/supercharger-carle-place-ny.237341/	12	250	f	f	\N	2021-11-18 18:44:30.569414+00	3
3370	perpignansupercharger	Rivesaltes, France	OPEN	2021-07-15 17:00:00+00	\N	t	t	1003343	42.775309	2.908242	18	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=76#comments	20	250	f	f	15 July 2021: Now open according to https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=98#comments	2021-08-18 23:47:30.436173+00	5
3485	ondarasupercharger	Ondara, Spain	OPEN	2021-08-20 17:00:00+00	\N	t	t	1003458	38.816908	0.02222	41	https://forum.supercharge.info/t/supercharger-ondara-denia-spain/1620/2	8	250	f	f	Other photos:\r\nhttps://www.electromaps.com/it/mappa/p/199925	2021-08-26 12:11:25.49917+00	3
3610	beaverut525wsupercharger	Beaver - 525 W, UT	OPEN	2021-04-14 17:00:00+00	\N	t	t	1003583	38.2484296	-112.6531868	1792	https://teslamotorsclub.com/tmc/threads/supercharger-beaver-ut.29316/	24	250	f	f	Two Beaver sites consistent with Tesla	2021-08-29 16:06:23.879183+00	1
3590	massapequanysupercharger	Massapequa, NY	OPEN	2021-09-18 17:00:00+00	\N	t	t	1003563	40.701916	-73.432817	13	https://teslamotorsclub.com/tmc/threads/supercharger-massapequa-ny.237153/	8	250	f	f	\N	2021-09-26 11:07:46.947683+00	4
3600	moesupercharger	Moe, VIC	OPEN	2021-09-08 17:00:00+00	\N	t	t	1003573	-38.173051	146.25905	68	https://teslamotorsclub.com/tmc/threads/supercharger-moe-vic.237696/	3	250	f	f	\N	2021-09-08 13:00:47.154056+00	3
4265	AzusaCASupercharger	Azusa, CA	PERMIT	\N	\N	t	t	1004240	34.1367	-117.9082	190	https://teslamotorsclub.com/tmc/threads/supercharger-azusa-ca-permit-filed-04-19-2022-16-stalls.267123/	16	250	f	f	\N	2022-05-18 00:22:51.240708+00	1
4190	AlgonquinILSupercharger	Algonquin, IL	CONSTRUCTION	\N	\N	t	t	1004165	42.171166	-88.336632	277	https://teslamotorsclub.com/tmc/threads/supercharger-algonquin-il.264782/	12	250	f	f	\N	2022-05-24 19:08:11.028545+00	2
3615	hastingssupercharger	Hastings, New Zealand	OPEN	2021-09-10 17:00:00+00	\N	t	t	1003588	-39.621166	176.889904	4	https://teslamotorsclub.com/tmc/threads/supercharger-napier-hastings.238930/	3	250	f	f	\N	2021-09-09 23:19:45.910047+00	5
4070	SouthingtonCTSupercharger	Southington, CT	PERMIT	\N	\N	t	t	1004045	41.612429	-72.901215	66	https://teslamotorsclub.com/tmc/threads/supercharger-southington-ct.258717/	12	250	f	f	\N	2022-02-26 18:55:14.491409+00	2
4075	\N	Westminster, MD	PERMIT	\N	\N	t	t	1004050	39.595992	-76.998508	232	https://teslamotorsclub.com/tmc/threads/supercharger-westminster-md.259061/	8	250	f	f	\N	2022-03-01 22:28:30.332051+00	1
3980	\N	Calabasas - Commons Way, CA	OPEN	2022-05-12 17:00:00+00	\N	t	t	1003955	34.154607	-118.645367	292	https://teslamotorsclub.com/tmc/threads/supercharger-calabasas-ca-permit-issued-jan-2022.101261/page-9	20	250	f	f	\N	2022-05-12 20:18:37.276675+00	2
4250	\N	Lathrop, CA	CONSTRUCTION	\N	\N	t	t	1004225	37.8261	-121.286	6	https://teslamotorsclub.com/tmc/threads/supercharger-lathrop-ca.266701/	11	250	f	f	\N	2022-05-13 04:13:11.333891+00	1
4255	\N	Bethel Park, PA	PERMIT	\N	\N	t	t	1004230	40.347	-80.048	363	https://teslamotorsclub.com/tmc/threads/supercharger-bethel-park-pa.266821/	12	250	f	f	\N	2022-05-14 18:59:02.128684+00	1
3265	crestonbcsupercharger	Creston, BC	OPEN	2022-06-09 17:00:00+00	\N	t	t	1003238	49.119664	-116.523832	583	https://teslamotorsclub.com/tmc/threads/supercharger-creston-bc.223741/	6	250	f	f	\N	2022-06-10 00:44:10.188123+00	7
3625	HuntsvilleALSupercharger	Huntsville, AL	OPEN	2022-06-14 17:00:00+00	\N	t	t	1003598	34.739127	-86.666295	211	https://teslamotorsclub.com/tmc/threads/supercharger-huntsville-al.239553/	12	250	f	f	\N	2022-06-14 18:34:16.934182+00	3
4260	\N	Waterville, ME	CONSTRUCTION	\N	\N	t	t	1004235	44.569032	-69.639469	57	https://teslamotorsclub.com/tmc/threads/tesla-supercharger-waterville-me.266956/	12	250	f	f	\N	2022-07-10 18:50:00.507478+00	5
3620	culvercitycasupercharger	Culver City - Raintree Plaza, CA	PERMIT	\N	\N	t	t	1003593	34.001681	-118.393103	15	https://teslamotorsclub.com/tmc/threads/supercharger-culver-city-ca-raintree-plaza.239180/	12	250	f	f	\N	2021-09-04 17:01:22.962302+00	1
4335	\N	Seoul - Times Stream, South Korea	OPEN	2022-06-13 17:00:00+00	\N	t	t	1004310	37.4838519	126.930193	22	https://forum.supercharge.info/t/supercharger-seoul-times-stream-south-korea/2085	6	250	f	f	\N	2022-06-14 13:01:01.268285+00	1
4305	gangnamsinsasupercharger	Seoul - Sinsa, South Korea	OPEN	2022-06-04 17:00:00+00	\N	t	t	1004280	37.519982	127.018977	20	https://teslamotorsclub.com/tmc/forums/south-korea.322/	3	250	f	f	\N	2022-06-14 13:01:38.073821+00	2
4330	belgradesupercharger	Belgrade, Serbia	OPEN	2020-03-13 17:00:00+00	\N	t	t	1004305	44.7100564	20.5610539	113	https://teslamotorsclub.com/tmc/threads/tesla-in-serbia.76403/page-4#post-4546392	4	150	f	f	12 June 2022: this is one of two supercharger locations in the IKEA carpark in Belgrade.	2022-06-14 13:12:55.04284+00	5
4280	\N	Scappoose, OR	PERMIT	\N	\N	t	t	1004255	45.7562	-122.8764	19	https://teslamotorsclub.com/tmc/threads/supercharger-scappoose-or.267771/	4	250	f	f	\N	2022-05-24 21:07:05.661473+00	1
875	fortedeimarmisupercharger	Forte dei Marmi, Italy	OPEN	2016-06-29 17:00:00+00	\N	t	t	1000779	43.956416	10.194539	6	https://forum.supercharge.info/t/forte-dei-marmi-italy/1698	20	250	f	f	2016-08-17: "there was an upgrade and there are now 6 stalls"\r\n2017-11-06: "they are working on 6 to 8 stall upgrade"\r\n2021-08-09: "they are working on a temporary upgrade from 8 to 10 V2 stalls"\r\n8 April 2022: There are 8 permanent stalls plus 2 pallet chargers now, bringing the total up to 12.\r\n30 June 2022 they have removed the temporary stalls. They have installed 12 V3. Currently there are 12 V3 + 8 V2	2022-06-30 10:06:28.503571+00	12
4435	\N	Xinzo de Limia, Spain	CONSTRUCTION	\N	\N	t	t	1004410	42.0785428	-7.7150867	618	https://forum.supercharge.info/t/new-supercharguer-in-xinzo-de-limia-spain/2166	16	250	f	f	\N	2022-07-14 06:35:27.245903+00	2
3635	angesesupercharger	Ånge, Sweden	OPEN	2021-09-30 17:00:00+00	\N	t	t	1003608	62.537337	15.918862	124	\N	8	250	f	f	\N	2021-09-30 14:44:34.380214+00	2
3630	gangbuksupercharger	Gangbuk, South Korea	OPEN	2021-09-11 17:00:00+00	\N	t	t	1003603	37.66375	127.00871	69	https://teslamotorsclub.com/tmc/forums/south-korea.322/	6	250	f	f	\N	2021-09-11 02:11:55.233629+00	1
3640	ConstantaSupercharger	Constanta, Romania	OPEN	2021-09-16 17:00:00+00	\N	t	t	1003613	44.203265	28.631145	7	https://teslamotorsclub.com/tmc/threads/superchargers-in-romania.224065/	6	250	f	f	\N	2021-09-15 23:19:57.906473+00	1
4080	SecheltBCSupercharger	Sechelt, BC	CONSTRUCTION	\N	\N	t	t	1004055	49.474594	-123.746963	54	https://teslamotorsclub.com/tmc/threads/supercharger-sechelt-bc.259425/	12	250	f	f	\N	2022-07-09 17:37:23.876761+00	2
3605	kaunassupercharger	Kaunas, Lithuania	OPEN	2021-09-17 17:00:00+00	\N	t	t	1003578	54.942153	24.006411	75	https://teslamotorsclub.com/tmc/threads/lithuania-latvia-estonia.240785/	5	250	f	f	2021-10-18: Updated stall count to 5 - 3x V3, 2x V2.\r\n\r\nAdding the TMC link so there is a place for discussion.\r\nSource: https://www.facebook.com/100061004659843/posts/263517219025098	2021-10-18 03:07:21.943026+00	7
3645	cnsc9488	Wusu – Yulong Hotel, China	OPEN	2021-06-22 17:00:00+00	\N	t	t	1003618	44.417897856449606	84.729694483643	519	\N	4	150	f	f	\N	2021-09-23 13:40:29.723288+00	2
3650	cnsc9490	Khorgas – Pearl of the Silk Road Restaurant, China	OPEN	2021-06-22 17:00:00+00	\N	t	t	1003623	44.23511	80.51888	796	\N	4	150	f	f	Name of the location (restaurant and hotel) in Chinese: 丝路明珠风味餐厅	2021-09-23 13:41:45.907766+00	2
4275	HendersonvilleTNSupercharger	Hendersonville, TN	PERMIT	\N	\N	t	t	1004250	36.321	-86.601	150	https://teslamotorsclub.com/tmc/threads/supercharger-hendersonville-tn.267564	12	250	f	f	\N	2022-05-22 20:55:52.055654+00	1
4340	fredericiasuperchargerq122	Fredericia, Denmark	CONSTRUCTION	\N	\N	t	t	1004315	55.534407	9.717122	19	http://www.teslaforum.dk/forum/topic/8321?page=1#post-123711	24	250	f	f	\N	2022-06-16 19:59:41.713752+00	2
4125	MammothLakesCASupercharger	Mammoth Lakes - CRC, CA	PERMIT	\N	\N	t	t	1004100	37.636186	-118.967973	2393	https://teslamotorsclub.com/tmc/threads/supercharger-mammoth-lakes-ca-community-recreation-center-approved-by-city-feb-22-12-v3-4-l2.261989/	12	250	f	f	\N	2022-03-26 22:33:58.9703+00	2
4105	sejongsupercharger	Sejong, South Korea	OPEN	2022-03-15 17:00:00+00	\N	t	t	1004080	36.500458	127.256765	25	https://teslamotorsclub.com/tmc/forums/south-korea.322/	9	250	f	f	\N	2022-03-15 06:02:04.699296+00	1
4270	overtorneasupercharger	Övertorneå Tätort, Sweden	OPEN	2022-05-25 17:00:00+00	\N	t	t	1004245	66.383193	23.655125	60	\N	3	250	f	f	\N	2022-06-02 16:37:19.022624+00	3
4095	\N	Grass Valley, CA	PERMIT	\N	\N	t	t	1004070	39.2026	-121.0643	739	https://teslamotorsclub.com/tmc/threads/supercharger-grass-valley-ca-permit-withdrawn-feb-2022.260393/	12	250	f	f	\N	2022-05-12 21:53:31.667226+00	3
4100	melvillenywaltwhitmanroadsupercharger	Melville - Walt Whitman Rd, NY	OPEN	2022-05-19 17:00:00+00	\N	t	t	1004075	40.782905	-73.42252	36	https://teslamotorsclub.com/tmc/threads/supercharger-melville-on-lie-ny.260609/	12	250	f	f	reminder: this is the name in the nav and billing system.  The other sited is called Melville.	2022-05-31 22:57:57.795356+00	9
3655	cnsc9439	Nyingchi – Tingyue Kaiyuan Hotel, China	OPEN	2021-04-30 17:00:00+00	\N	t	t	1003628	29.620037	94.38283	3008	\N	2	150	f	f	Name of the location (hotel) in Chinese: 林芝汀樾开元酒店	2021-09-23 13:40:05.829499+00	2
3660	cnsc9441	Markam – Songtsam Rumi Hotel, China	OPEN	2021-07-22 17:00:00+00	\N	t	t	1003633	29.61704	98.35595	2651	\N	2	150	f	f	Name of the location (hotel) in Chinese: 松赞芒康如美山居	2021-09-23 14:01:49.196138+00	1
3685	cnsc9485	Gangji (northbound), China	OPEN	2021-08-24 17:00:00+00	\N	t	f	1003658	25.7661	103.3353	2043	\N	3	250	f	f	Name of the location (rest/service area) in Chinese: 岗纪服务区	2021-09-24 12:32:22.226962+00	1
3665	cnsc9390	Panzhihua – Central Tiandi Hotel, China	OPEN	2021-02-15 18:00:00+00	\N	t	t	1003638	26.56067	101.72626	1317	\N	6	250	f	f	Name of the location (hotel) in Chinese: 攀枝花中环天地希尔顿欢朋酒店	2021-09-24 08:21:40.273329+00	1
3670	cnsc9482	Dinosaur Mountain (westbound), China	OPEN	2021-08-22 17:00:00+00	\N	t	t	1003643	24.97119	102.07959	1575	\N	3	250	f	f	Name of the location (rest/service area) in Chinese: 恐龙山服务区	2021-09-24 09:39:20.048455+00	1
3675	cnsc9480	Dadugang (northbound), China	OPEN	2021-09-22 17:00:00+00	\N	t	t	1003648	22.36394	100.99982	1270	\N	3	250	f	f	Name of the location (rest/service area) in Chinese: 大渡岗服务区-停车场	2021-09-24 10:21:51.464156+00	1
3680	cnsc9540	Delingha – Golden World Hotel, China	OPEN	2021-08-04 17:00:00+00	\N	t	t	1003653	37.36917	97.35917	2992	\N	4	150	f	f	Name of the location (hotel) in Chinese: 金世界宾馆	2021-09-24 11:32:10.957499+00	1
3690	cnsc9466	Guichao (westbound), China	OPEN	2021-09-22 17:00:00+00	\N	t	t	1003663	23.643	105.81214	535	\N	3	250	f	f	Name of the location (rest/service area) in Chinese: 归朝服务区	2021-09-24 13:30:29.490394+00	1
3695	cnsc9421	Baisha – Jinkai Hotel, China	OPEN	2021-08-24 17:00:00+00	\N	t	t	1003668	19.22443	109.4478	203	\N	4	150	f	f	Name of the location (hotel) in Chinese: 金凯大酒店	2021-09-24 14:35:21.125897+00	1
3710	cnsc9525	Xiaogan – Baijia Hongye Mall, China	OPEN	2021-09-10 17:00:00+00	\N	t	t	1003683	30.93362	113.91478	33	\N	6	250	f	f	Name of the location (shopping center) in Chinese: 百佳宏业商城-停车场	2021-09-27 10:31:03.214893+00	1
4115	seongnamalphadome2supercharger	Pangyo - Baekhyun A, South Korea	OPEN	2022-03-20 17:00:00+00	\N	t	t	1004090	37.395597	127.112063	41	https://teslamotorsclub.com/tmc/forums/south-korea.322/	3	250	f	f	\N	2022-03-20 00:24:34.266274+00	1
3715	strangnassupercharger	Strängnäs, Sweden	OPEN	2022-03-04 18:00:00+00	\N	t	t	1003690	59.327976	17.0165366	30	https://teslaclubsweden.se/forum/viewtopic.php?f=45&t=15902&start=660	8	250	f	f	7 Jan 2022: Looks like 12 stalls: https://teslaclubsweden.se/forum/viewtopic.php?f=45&t=15902&start=820	2022-03-04 17:40:47.222284+00	6
4120	lasvegasnveastsaharaavesupercharger	Las Vegas - E Sahara Ave (SC), NV	OPEN	2022-05-06 17:00:00+00	\N	t	t	1004095	36.145327	-115.102898	557	https://teslamotorsclub.com/tmc/threads/supercharger-las-vegas-nv-e-saraha-ave-service-center.261906	9	250	f	f	\N	2022-05-09 13:27:57.915711+00	3
4110	schiedamsupercharger	Schiedam, Netherlands	OPEN	2022-03-24 17:00:00+00	\N	t	t	1004085	51.92486	4.372225	-2	https://forum.supercharge.info/t/supercharger-schiedam-the-netherlands/1952	16	250	f	f	\N	2022-03-25 19:01:03.259986+00	4
4405	\N	San Ardo, CA	PERMIT	\N	\N	t	t	1004380	35.97477	-120.900203	150	https://teslamotorsclub.com/tmc/threads/supercharger-san-ardo-ca-permit-filed-12-v3-stalls.271564/	12	250	f	f	\N	2022-07-03 00:45:04.532769+00	1
3700	shigaotsusupercharger	Otsu, Japan	OPEN	2021-09-25 17:00:00+00	\N	t	t	1003673	34.9785003	135.96920831	138	https://teslamotorsclub.com/tmc/threads/%E3%83%86%E3%82%B9%E3%83%A9-%E3%82%B9%E3%83%BC%E3%83%91%E3%83%BC%E3%83%81%E3%83%A3%E3%83%BC%E3%82%B8%E3%83%A3%E3%83%BC-japanese-superchargers.40887/	4	250	f	f	\N	2022-07-10 21:46:24.319121+00	2
4085	UrbanaILSupercharger	Urbana, IL	CONSTRUCTION	\N	\N	t	t	1004060	40.115628	-88.182804	223	https://teslamotorsclub.com/tmc/threads/supercharger-urbana-il.259658/	8	250	f	f	\N	2022-06-02 00:16:57.127887+00	2
3900	SpragueWASupercharger	Sprague, WA	OPEN	2022-03-29 17:00:00+00	\N	t	t	1003875	47.209072	-118.22589	581	https://teslamotorsclub.com/tmc/threads/supercharger-sprague-tokio-wa.256121/#post-6217914	8	250	f	f	\N	2022-06-21 22:36:07.22491+00	9
4090	SelmaCASupercharger	Selma, CA	OPEN	2022-07-08 17:00:00+00	\N	t	t	1004065	36.574434	-119.629402	94	https://teslamotorsclub.com/tmc/threads/supercharger-selma-ca-permit-issued.259919/	16	250	f	f	\N	2022-07-09 14:19:18.499224+00	4
3705	cnsc9538	Heze – Jiahe City Mall, China	OPEN	2021-09-15 17:00:00+00	\N	t	t	1003678	35.2345	115.4586	54	\N	9	250	f	f	Name of the location (shopping center) in Chinese: 菏泽佳和城购物中心	2021-09-27 09:46:11.979845+00	1
3720	rockinghamncsupercharger	Rockingham, NC	OPEN	2021-12-10 18:00:00+00	\N	t	t	1003695	34.921509	-79.74772	81	https://teslamotorsclub.com/tmc/threads/supercharger-rockingham-nc.233928/	12	250	f	f	\N	2021-12-19 16:58:34.725377+00	5
3725	gwangmyeongsupercharger	Gwangmyeong, South Korea	OPEN	2021-10-01 17:00:00+00	\N	t	t	1003700	37.41917204	126.88211751	23	https://teslamotorsclub.com/tmc/forums/south-korea.322	3	250	f	f	\N	2021-09-30 14:48:07.283391+00	1
1060	hartsheadmoorwestsupercharger	Hartshead Moor West, UK	OPEN	2021-09-28 17:00:00+00	\N	t	t	1000964	53.714315	-1.743758	141	https://teslamotorsclub.com/tmc/posts/5963861/	6	150	f	f	Brighouse HD6 4JX, UK\r\n53.714315, -1.743758	2021-10-02 02:27:48.295798+00	8
3745	jejusupercharger	Jeju, South Korea	OPEN	2021-10-06 17:00:00+00	\N	t	t	1003720	33.492611	126.5071	76	https://teslamotorsclub.com/tmc/forums/south-korea.322/	8	250	f	f	\N	2021-10-05 22:39:46.297073+00	1
3730	\N	Villach Ost, Austria	OPEN	2021-10-27 17:00:00+00	\N	t	t	1003705	46.601793	13.882974	501	\N	6	250	f	f	\N	2021-10-28 06:39:55.52217+00	3
3755	taoyuanchingpuglobalmall	Taoyuan - Qingpu Global Shopping Center, Taiwan	OPEN	2021-10-10 17:00:00+00	\N	t	t	1003730	25.0021653	121.2018036	85	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682	6	250	f	f	4 TPC super charging docks\r\n2 CCS2 super charging docks	2021-10-09 21:29:27.360133+00	1
1360	woodbridgesupercharger	Woodbridge, NJ	OPEN	2018-03-12 17:00:00+00	\N	t	t	1001266	40.535862	-74.297271	40	https://teslamotorsclub.com/tmc/threads/supercharger-woodbridge-nj.101046/	8	120	f	f	Closed temporarily per: https://teslamotorsclub.com/tmc/posts/6541196/	2022-05-27 23:28:39.275738+00	9
4135	78900	Al Ain - Aloft Hotel, UAE	OPEN	2022-03-01 18:00:00+00	\N	t	t	1004110	24.24431	55.71567	264	https://forum.supercharge.info/t/al-ain-uae/1989	4	150	f	f	\N	2022-03-31 07:07:56.895971+00	1
4295	SainteMarieQCsupercharger	Sainte-Marie, QC	PERMIT	\N	\N	t	t	1004270	46.45	-71.0308	150	https://teslamotorsclub.com/tmc/threads/supercharger-sainte-marie-qc.268301/	8	250	f	f	\N	2022-05-30 21:36:56.050529+00	1
4140	BerlinSchonebergerUferGermanysupercharger	Berlin - Schöneberger Ufer, Germany	OPEN	2022-07-01 17:00:00+00	\N	t	t	1004115	52.502693	13.37395	37	https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/3478	20	250	f	f	1 April 2022: Construction started\r\n1 July 2022. now open	2022-07-01 13:42:32.424589+00	2
2645	CharlottesvilleVAsupercharger	Charlottesville - Proffit Rd, VA	OPEN	2021-05-14 17:00:00+00	\N	t	t	1002551	38.132266	-78.434391	164	https://teslamotorsclub.com/tmc/threads/supercharger-charlottesville-va-proffit-road.217375/	8	250	f	f	\N	2022-06-20 00:05:26.929612+00	6
3750	mountforestonsupercharger	Mount Forest, ON	OPEN	2021-12-09 18:00:00+00	\N	t	t	1003725	43.9882763	-80.743745	415	https://teslamotorsclub.com/tmc/threads/supercharger-mount-forest-on.242603/	8	250	f	f	Forum user indicates its showing on the in-car map, and Find Us also is now listing it as open.	2021-12-11 02:47:37.099394+00	3
3760	NewBraunfelsTXSupercharger	New Braunfels, TX	OPEN	2022-05-31 17:00:00+00	\N	t	t	1003735	29.726598	-98.078702	208	https://teslamotorsclub.com/tmc/threads/supercharger-new-braunfels-tx.243132/	24	250	f	f	\N	2022-06-02 19:00:40.363635+00	5
4130	MocksvilleNCSupercharger	Mocksville, NC	PERMIT	\N	\N	t	t	1004105	35.9189	-80.5856	255	https://teslamotorsclub.com/tmc/threads/supercharger-mocksville-nc.256572/	8	250	f	f	\N	2022-03-28 01:12:15.559247+00	3
2355	evansvillewysupercharger	Evansville, WY	OPEN	2020-07-01 17:00:00+00	\N	t	t	1002261	42.846691	-106.214485	1570	https://teslamotorsclub.com/tmc/threads/supercharger-casper-wy.157135/#post-4633316	8	250	f	f	Can’t we call it Casper to avoid confusion??\r\nNote: Tesla calls it Evansville as per: https://teslamotorsclub.com/tmc/posts/4790728/	2022-04-01 19:49:09.010783+00	8
4165	\N	Tatamy, PA	PERMIT	\N	\N	t	t	1004140	40.739349	-75.263529	118	https://teslamotorsclub.com/tmc/threads/supercharger-tatamy-pa.263505/	8	250	f	f	\N	2022-04-09 00:02:47.076291+00	1
3935	\N	Boynton Beach, FL	CONSTRUCTION	\N	\N	t	t	1003910	26.533567	-80.089394	3	https://teslamotorsclub.com/tmc/threads/supercharger-boynton-beach-fl.251927/	16	250	f	f	\N	2022-07-05 18:46:17.458206+00	3
4345	newtaipeidanshuisupercharger	New Taipei - Huwei Art, Culture and Leisure Park, Taiwan	OPEN	2022-06-17 17:00:00+00	\N	t	t	1004320	25.176117	121.4289	0	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682	6	250	f	f	V3\r\n3 TPC Super Charge Cradles\r\n3 CCS2 Super Chargers	2022-06-18 10:01:43.188482+00	3
4350	kozinasupercharger	Kozina, Slovenia	OPEN	2020-10-20 17:00:00+00	\N	t	t	1004325	45.607387	13.931518	482	https://forum.supercharge.info/t/kozina-slovenia/1274	4	150	f	f	Updates via https://forum.supercharge.info/t/kozina-slovenia/1274 and https://twitter.com/CroatiaTesla/status/1318654332418621443 that this location has been moved and downsized to 4 stalls.  The Tesla Find Us page has also been updated.	2022-06-19 20:00:49.245268+00	1
4150	NorthPlatteNESupercharger	North Platte, NE	OPEN	2022-06-29 17:00:00+00	\N	t	t	1004125	41.120588	-100.762642	853	https://teslamotorsclub.com/tmc/threads/supercharger-north-platte-ne.262496/	8	250	f	f	\N	2022-06-30 00:13:02.94815+00	3
405	hengersbergsupercharger	Hengersberg, Germany	OPEN	2014-10-30 17:00:00+00	\N	t	t	1000308	48.765472	13.046667	309	\N	8	130	f	f	Changed kW based on report here: https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/423	2021-10-24 16:50:53.628033+00	4
3770	elizabethtownkysupercharger	Elizabethtown, KY	OPEN	2021-12-10 18:00:00+00	\N	t	t	1003745	37.671622	-85.845453	235	https://teslamotorsclub.com/tmc/threads/elizabethtown-ky-supercharger.186618/#post-6021684	8	250	f	f	\N	2021-12-10 20:58:58.13133+00	2
3765	HoodRiverORsupercharger	Hood River - Anchor Way, OR	PERMIT	\N	\N	t	t	1003740	45.714111	-121.515793	29	https://teslamotorsclub.com/tmc/threads/supercharger-hood-river-anchor-way-or.243327/	8	250	f	f	\N	2021-10-13 22:10:44.113528+00	4
3775	RimouskiQCsupercharger	Rimouski, QC	CONSTRUCTION	\N	\N	t	t	1003750	48.435477	-68.523861	40	https://teslamotorsclub.com/tmc/threads/supercharger-rimouski-qc.244054/	8	250	f	f	\N	2021-10-20 21:34:12.544858+00	1
3735	ashevillencthetfordstsupercharger	Asheville - Thetford St, NC	OPEN	2021-10-19 17:00:00+00	\N	t	t	1003710	35.484012	-82.557638	648	https://teslamotorsclub.com/tmc/threads/supercharger-asheville-nc-thetford-street.242103/	12	250	f	f	\N	2021-10-26 02:46:59.533663+00	5
3785	ManassasVAsupercharger	Manassas, VA	OPEN	2021-12-13 18:00:00+00	\N	t	t	1003760	38.793019	-77.515512	69	https://teslamotorsclub.com/tmc/threads/supercharger-manassas-va.225738/	8	250	f	f	\N	2021-12-14 01:20:49.621335+00	2
3790	SouthSurreyBCsupercharger	South Surrey, BC	OPEN	2022-01-31 18:00:00+00	\N	t	t	1003765	49.056683	-122.80165	44	https://teslamotorsclub.com/tmc/threads/south-surrey-bc-supercharger.244836/	12	250	f	f	\N	2022-02-01 04:06:16.566429+00	2
3805	BurbankCASupercharger2	Burbank - N San Fernando Blvd, CA	CONSTRUCTION	\N	\N	t	t	1003780	34.187565	-118.318197	185	https://teslamotorsclub.com/tmc/threads/new-burbank-supercharger-by-sprouts.245583/	8	250	f	f	\N	2021-11-03 22:13:59.881993+00	2
4285	\N	Ridgefield, WA	PERMIT	\N	\N	t	t	1004260	45.8177	-122.6828	84	https://teslamotorsclub.com/tmc/threads/supercharger-ridgefield-wa.267971/	12	250	f	f	\N	2022-05-26 21:03:43.075398+00	1
4155	\N	Staten Island - Richmond Ave, NY	PERMIT	\N	\N	t	t	1004130	40.612043	-74.156647	9	https://teslamotorsclub.com/tmc/threads/supercharger-staten-island-ny-richmond-ave.226904/	12	250	f	f	\N	2022-04-06 14:31:52.843095+00	1
4290	islandresortsupercharger	Island Resort, Hong Kong	OPEN	2022-05-27 17:00:00+00	\N	t	t	1004265	22.266018	114.251836	3	https://teslamotorsclub.com/tmc/forums/hong-kong.92/	3	250	f	f	\N	2022-05-28 03:22:55.70784+00	1
4170	DuluthGASupercharger	Duluth, GA	OPEN	2022-05-13 17:00:00+00	\N	t	t	1004145	34.0004	-84.169	288	https://teslamotorsclub.com/tmc/threads/supercharger-duluth-ga.260206/#post-6599039	12	250	f	f	\N	2022-05-13 21:04:30.476054+00	2
3795	bardonecchiasupercharger	Bardonecchia, Italy	OPEN	2022-03-16 17:00:00+00	\N	t	t	1003770	45.082194	6.711208	1297	https://forum.supercharge.info/t/supercharger-bardonecchia-italy/1794	8	250	f	f	\N	2022-03-19 12:45:35.989836+00	3
3810	ColonialHeightsVASupercharger	Colonial Heights, VA	OPEN	2022-05-06 17:00:00+00	\N	t	t	1003785	37.305593	-77.409675	35	https://teslamotorsclub.com/tmc/threads/supercharger-colonial-heights-va.245786/	8	250	f	f	\N	2022-05-06 21:41:24.243108+00	5
135	newarkdesupercharger	Newark, DE	OPEN	2012-12-21 18:00:00+00	\N	t	t	1000035	39.6635	-75.69017	18	https://teslamotorsclub.com/tmc/threads/supercharger-newark-de.38535/	12	150	f	f	2016-03-28: Updated from 4 to 12 stalls.\r\n2016-06-25: closed, orig open date is "12/21/2012"\r\n2018-02-23: Site offline temporarily - marked as closed\r\n2018-03-01: Site reported as back up and going.	2022-06-21 15:46:36.94726+00	10
4400	NeveZoharsupercharger	Ein Bokek, Israel	OPEN	2022-07-02 17:00:00+00	\N	t	t	1004375	31.19908	35.364319	-380	https://teslamotorsclub.com/tmc/forums/israel.349/	8	250	f	f	\N	2022-07-02 13:55:21.67365+00	1
3815	\N	Edmonton (SC), AB	CLOSED_PERM	\N	\N	t	t	1003790	53.5605	-113.6245	679	https://teslamotorsclub.com/tmc/threads/western-canada-superchargers.35537/page-146#post-6098994	4	250	f	f	Request for removal	2022-02-04 22:37:19.190235+00	2
3800	genovanorthsupercharger	Genova North, Italy	OPEN	2021-12-21 18:00:00+00	\N	t	t	1003775	44.470423	8.900821	60	https://www.teslari.it/forum/superchargers/supercharger-genova/	8	250	f	f	Tesla renamed this one to Genova North	2022-02-12 03:17:43.957953+00	3
4145	pohangsupercharger	Pohang, South Korea	OPEN	2022-04-01 17:00:00+00	\N	t	t	1004120	36.059093	129.320555	104	https://teslamotorsclub.com/tmc/forums/south-korea.322/	12	250	f	f	\N	2022-04-02 13:03:57.631464+00	1
2765	LeipzigHalleGermanysupercharger	Leipzig-Flughafen, Germany	OPEN	2022-03-28 17:00:00+00	\N	t	t	1002684	51.401278	12.180194	125	https://tff-forum.de/t/supercharger-in-deutschland/5786/10321	16	250	f	f	28 March: now open according to https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/3367	2022-04-13 20:56:46.703329+00	7
4160	WalterboroSCSupercharger	Walterboro, SC	OPEN	2022-04-19 17:00:00+00	\N	t	t	1004135	32.9333	-80.6925	25	https://teslamotorsclub.com/tmc/threads/supercharger-walterboro-sc.263303/	12	250	f	f	\N	2022-04-19 17:02:55.196411+00	3
4355	\N	Augusta, NJ	CONSTRUCTION	\N	\N	t	t	1004330	41.11941	-74.71296	157	https://teslamotorsclub.com/tmc/threads/supercharger-augusta-nj.270279/	8	250	f	f	\N	2022-06-21 19:33:20.104304+00	1
225	brokelandsheiabrusupercharger	Brokelandsheia, Norway	OPEN	2013-08-13 17:00:00+00	\N	t	t	1000125	58.820783	9.073746	99	\N	36	250	f	f	Open date changed from 1/15/16 to 8/13/13 based on https://teslamotorsclub.com/tmc/posts/3581440/\r\n2022-07-03: now 36 stalls according to elbilforum.no	2022-07-03 12:13:27.214148+00	8
4205	chatelleraultsuperchargerq122	Châtellerault, France	OPEN	2022-06-29 17:00:00+00	\N	t	t	1004180	46.835722	0.541722	51	\N	16	250	f	f	19 May 2022: constriction started, 16 stalls	2022-07-11 13:19:12.311255+00	4
3820	HamburgWandsbekdesupercharger	Hamburg-Wandsbek, Germany	CONSTRUCTION	\N	\N	t	t	1003795	53.586773	10.098058	18	https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/107	12	250	f	f	\N	2021-11-10 16:51:17.504486+00	1
3830	orangeburgscsupercharger	Orangeburg, SC	OPEN	2021-11-17 18:00:00+00	\N	t	t	1003805	33.552408	-80.828133	98	https://teslamotorsclub.com/tmc/threads/supercharger-orangeburg-sc.246641/	8	250	f	f	\N	2021-11-20 02:12:58.013715+00	4
3835	madisonheightsvasupercharger	Madison Heights, VA	OPEN	2021-12-09 18:00:00+00	\N	t	t	1003810	37.466222	-79.117738	256	https://teslamotorsclub.com/tmc/threads/upcoming-sc-in-amherst-va-us29n-of-lynchburg.246701/	8	250	f	f	\N	2021-12-11 02:31:46.110578+00	3
3825	LaurelMDSupercharger	Laurel - Fort Meade Rd, MD	OPEN	2022-04-06 17:00:00+00	\N	t	t	1003800	39.095839	-76.841533	43	https://teslamotorsclub.com/tmc/threads/supercharger-laurel-md-fort-meade-rd.246557/	4	250	f	f	\N	2022-04-13 20:32:22.592471+00	3
3840	newplymouthsupercharger	New Plymouth, New Zealand	PERMIT	\N	\N	t	t	1003815	-39.056693	174.071459	6	https://teslamotorsclub.com/tmc/threads/supercharger-new-plymouth-coming-q2-2022.235954	3	250	f	f	\N	2022-05-20 00:39:23.490322+00	2
\.


--
-- TOC entry 3210 (class 0 OID 73696)
-- Dependencies: 278
-- Data for Name: changelog; Type: TABLE DATA; Schema: supercharge; Owner: supercharge_user_test
--

COPY "supercharge"."changelog" ("id", "site_id", "change_date", "change_type", "site_status", "modified_date") FROM stdin;
5	115	2012-11-19 18:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
8	130	2012-12-16 18:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
9	135	2012-12-21 18:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
14	195	2013-07-13 17:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
15	110	2013-07-13 17:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
19	245	2013-08-13 17:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
20	225	2013-08-13 17:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
22	185	2013-08-17 17:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
30	145	2013-09-12 17:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
32	125	2013-09-17 17:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
37	170	2013-10-22 17:00:00+00	ADD	OPEN	2022-07-19 21:44:30+00
107	140	2014-05-08 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:39+00
115	215	2014-05-01 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:35+00
117	160	2014-04-30 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:27+00
119	140	2014-04-29 17:00:00+00	UPDATE	CONSTRUCTION	2014-10-24 00:39:39+00
121	230	2014-04-23 17:00:00+00	ADD	OPEN	2014-10-24 00:39:29+00
125	140	2014-04-17 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:39+00
132	215	2014-04-10 17:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:35+00
133	160	2014-04-06 17:00:00+00	UPDATE	CONSTRUCTION	2014-10-24 00:39:27+00
140	100	2014-03-20 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:30+00
143	120	2014-03-15 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:41+00
146	165	2014-03-12 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:42+00
149	160	2014-02-24 18:00:00+00	ADD	PERMIT	2014-10-24 00:39:27+00
161	165	2014-02-01 18:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:41+00
163	200	2014-01-30 18:00:00+00	UPDATE	OPEN	2014-10-24 00:39:32+00
171	190	2014-01-21 18:00:00+00	UPDATE	OPEN	2014-10-24 00:39:40+00
173	205	2014-01-20 18:00:00+00	UPDATE	OPEN	2014-10-24 00:39:31+00
186	175	2014-01-10 18:00:00+00	UPDATE	OPEN	2014-10-24 00:39:44+00
187	155	2014-01-10 18:00:00+00	ADD	OPEN	2014-10-24 00:39:33+00
190	200	2014-01-08 18:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:32+00
195	100	2014-01-05 18:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:30+00
197	180	2013-12-31 18:00:00+00	UPDATE	OPEN	2014-10-24 00:39:40+00
200	190	2013-12-24 18:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:40+00
201	180	2013-12-24 18:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:40+00
208	175	2013-12-20 18:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:44+00
229	210	2013-12-08 18:00:00+00	ADD	OPEN	2014-10-24 00:39:27+00
241	220	2013-12-01 18:00:00+00	ADD	OPEN	2014-10-24 00:39:48+00
243	205	2013-11-27 18:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:30+00
251	105	2013-11-14 18:00:00+00	ADD	OPEN	2014-10-24 00:39:42+00
262	240	2014-05-20 17:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:42+00
269	240	2014-05-30 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:42+00
271	120	2014-06-04 17:00:00+00	UPDATE	CONSTRUCTION	2014-10-24 00:39:41+00
278	250	2014-06-11 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:46+00
294	260	2014-06-16 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:46+00
306	265	2014-06-21 17:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:40+00
309	260	2014-06-25 17:00:00+00	UPDATE	CONSTRUCTION	2014-10-24 00:39:46+00
323	270	2014-07-04 17:00:00+00	ADD	OPEN	2014-10-24 00:39:46+00
330	260	2014-07-09 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:46+00
333	275	2014-07-11 17:00:00+00	ADD	OPEN	2014-10-24 00:39:39+00
340	280	2014-07-12 17:00:00+00	ADD	OPEN	2014-10-24 00:39:48+00
357	285	2014-07-23 17:00:00+00	ADD	OPEN	2014-10-24 00:39:36+00
370	295	2014-07-29 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:28+00
375	265	2014-08-01 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:40+00
378	300	2014-08-01 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:39+00
385	305	2014-08-07 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:41+00
393	250	2014-08-09 17:00:00+00	UPDATE	CONSTRUCTION	2014-10-24 00:39:46+00
394	310	2014-08-11 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:40+00
412	320	2014-08-23 17:00:00+00	ADD	OPEN	2014-10-24 00:39:35+00
418	305	2014-08-24 17:00:00+00	UPDATE	CONSTRUCTION	2014-10-24 00:39:41+00
420	325	2014-08-25 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:32+00
423	250	2014-08-26 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:46+00
427	330	2014-08-28 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:27+00
441	335	2014-09-09 17:00:00+00	ADD	OPEN	2014-10-24 00:39:46+00
447	340	2014-09-09 17:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:31+00
450	345	2014-09-11 17:00:00+00	ADD	OPEN	2014-10-24 00:39:40+00
460	350	2014-09-18 17:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:46+00
465	355	2014-09-19 17:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:37+00
466	295	2014-09-20 17:00:00+00	UPDATE	CONSTRUCTION	2014-10-24 00:39:28+00
477	360	2014-09-25 17:00:00+00	ADD	OPEN	2014-10-24 00:39:40+00
478	120	2014-09-24 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:41+00
479	325	2014-09-25 17:00:00+00	UPDATE	CONSTRUCTION	2014-10-24 00:39:32+00
487	365	2014-09-29 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:38+00
494	370	2014-10-02 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:47+00
502	300	2014-10-06 17:00:00+00	UPDATE	CONSTRUCTION	2014-10-24 00:39:39+00
504	375	2014-10-07 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:42+00
507	355	2014-10-10 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:37+00
513	380	2014-10-14 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:39+00
521	350	2014-10-17 17:00:00+00	UPDATE	OPEN	2014-10-24 00:39:46+00
522	385	2014-10-18 17:00:00+00	ADD	CONSTRUCTION	2014-10-24 00:39:41+00
526	390	2014-10-19 17:00:00+00	ADD	OPEN	2014-10-24 00:39:33+00
535	395	2014-10-21 17:00:00+00	ADD	PERMIT	2014-10-24 00:39:44+00
543	400	2014-10-27 17:00:00+00	ADD	CONSTRUCTION	2014-10-28 04:01:25+00
547	300	2014-10-29 17:00:00+00	UPDATE	OPEN	2014-10-29 14:12:55+00
550	405	2014-10-30 17:00:00+00	ADD	OPEN	2014-10-31 03:33:38+00
554	325	2014-10-31 17:00:00+00	UPDATE	OPEN	2014-10-31 22:46:24+00
560	310	2014-11-02 18:00:00+00	UPDATE	CONSTRUCTION	2014-11-03 04:03:45+00
563	410	2014-11-03 19:00:00+00	ADD	CONSTRUCTION	2014-11-04 01:04:12+00
567	305	2014-11-03 19:00:00+00	UPDATE	OPEN	2014-11-04 02:10:59+00
569	415	2014-11-04 19:00:00+00	ADD	PERMIT	2014-11-05 01:41:29+00
579	340	2014-11-08 19:00:00+00	UPDATE	OPEN	2014-11-08 18:49:33+00
581	420	2014-11-08 19:00:00+00	ADD	CONSTRUCTION	2014-11-08 19:31:25+00
587	425	2014-11-11 19:00:00+00	ADD	OPEN	2014-11-11 22:24:24+00
595	430	2014-11-12 19:00:00+00	ADD	PERMIT	2014-11-13 01:28:18+00
604	395	2014-11-14 19:00:00+00	UPDATE	CONSTRUCTION	2014-11-15 00:32:10+00
606	435	2014-11-14 19:00:00+00	ADD	CONSTRUCTION	2014-11-15 01:38:10+00
616	440	2014-11-18 19:00:00+00	ADD	OPEN	2014-11-18 23:20:36+00
617	400	2014-11-19 19:00:00+00	UPDATE	OPEN	2014-11-19 11:58:18+00
618	330	2014-11-19 19:00:00+00	UPDATE	CONSTRUCTION	2014-11-19 17:08:08+00
627	385	2014-11-21 19:00:00+00	UPDATE	OPEN	2014-11-21 15:29:23+00
628	435	2014-11-21 19:00:00+00	UPDATE	OPEN	2014-11-21 20:39:22+00
632	380	2014-11-23 19:00:00+00	UPDATE	CONSTRUCTION	2014-11-23 13:21:27+00
633	450	2014-11-23 19:00:00+00	ADD	PERMIT	2014-11-23 16:25:19+00
638	455	2014-11-24 19:00:00+00	ADD	PERMIT	2014-11-25 04:20:03+00
639	310	2014-11-25 19:00:00+00	UPDATE	OPEN	2014-11-25 09:02:45+00
644	410	2014-11-26 19:00:00+00	UPDATE	OPEN	2014-11-26 22:58:35+00
648	455	2014-11-27 19:00:00+00	UPDATE	OPEN	2014-11-28 00:29:18+00
650	370	2014-11-28 19:00:00+00	UPDATE	CONSTRUCTION	2014-11-28 23:49:25+00
653	460	2014-12-02 19:00:00+00	ADD	OPEN	2014-12-03 03:10:57+00
658	465	2014-12-03 19:00:00+00	ADD	CONSTRUCTION	2014-12-03 19:37:39+00
659	395	2014-12-03 19:00:00+00	UPDATE	OPEN	2014-12-03 19:59:59+00
668	430	2014-12-06 19:00:00+00	UPDATE	CONSTRUCTION	2014-12-06 07:00:16+00
672	470	2014-12-06 19:00:00+00	ADD	CONSTRUCTION	2014-12-06 18:46:41+00
675	375	2014-12-08 19:00:00+00	UPDATE	CONSTRUCTION	2014-12-09 02:15:57+00
682	475	2014-12-11 19:00:00+00	ADD	OPEN	2014-12-11 13:28:43+00
683	380	2014-12-12 19:00:00+00	UPDATE	OPEN	2014-12-12 14:27:14+00
684	365	2014-12-12 19:00:00+00	UPDATE	CONSTRUCTION	2014-12-12 16:15:42+00
688	420	2014-12-14 19:00:00+00	UPDATE	OPEN	2014-12-15 00:20:33+00
693	480	2014-12-16 19:00:00+00	ADD	PERMIT	2014-12-17 04:18:57+00
700	485	2014-12-17 19:00:00+00	ADD	CONSTRUCTION	2014-12-18 02:55:56+00
703	465	2014-12-18 19:00:00+00	UPDATE	OPEN	2014-12-18 17:13:06+00
708	370	2014-12-19 19:00:00+00	UPDATE	OPEN	2014-12-19 12:41:21+00
710	490	2014-12-19 19:00:00+00	ADD	OPEN	2014-12-19 13:17:15+00
711	330	2014-12-19 19:00:00+00	UPDATE	OPEN	2014-12-19 21:24:47+00
718	470	2014-12-23 19:00:00+00	UPDATE	OPEN	2014-12-24 00:35:42+00
722	495	2014-12-23 19:00:00+00	ADD	OPEN	2014-12-24 00:50:49+00
730	295	2014-12-29 19:00:00+00	UPDATE	OPEN	2014-12-30 02:54:48+00
743	510	2015-01-03 19:00:00+00	ADD	CONSTRUCTION	2015-01-03 18:39:26+00
752	510	2015-01-09 19:00:00+00	UPDATE	OPEN	2015-01-10 02:01:42+00
759	520	2015-01-15 19:00:00+00	ADD	CONSTRUCTION	2015-01-15 23:01:32+00
778	375	2015-01-22 19:00:00+00	UPDATE	OPEN	2015-01-23 01:12:26+00
786	530	2015-01-23 19:00:00+00	ADD	PERMIT	2015-01-24 03:56:13+00
791	535	2015-01-26 19:00:00+00	ADD	CONSTRUCTION	2015-01-26 14:16:42+00
798	540	2015-01-26 19:00:00+00	ADD	CONSTRUCTION	2015-01-27 05:11:55+00
804	365	2015-01-28 19:00:00+00	UPDATE	OPEN	2015-01-29 04:10:09+00
809	545	2015-01-30 19:00:00+00	ADD	PERMIT	2015-01-31 01:40:21+00
811	545	2015-02-02 19:00:00+00	UPDATE	CONSTRUCTION	2015-02-03 00:43:09+00
812	520	2015-02-03 19:00:00+00	UPDATE	OPEN	2015-02-03 14:50:53+00
816	480	2015-02-04 19:00:00+00	UPDATE	CONSTRUCTION	2015-02-04 20:13:02+00
817	430	2015-02-04 19:00:00+00	UPDATE	OPEN	2015-02-05 04:07:47+00
823	540	2015-02-06 19:00:00+00	UPDATE	OPEN	2015-02-07 01:18:55+00
825	550	2015-02-08 19:00:00+00	ADD	CONSTRUCTION	2015-02-08 19:48:17+00
830	545	2015-02-11 19:00:00+00	UPDATE	OPEN	2015-02-12 01:24:15+00
834	555	2015-02-13 19:00:00+00	ADD	OPEN	2015-02-13 20:35:27+00
840	560	2015-02-17 19:00:00+00	ADD	OPEN	2015-02-17 20:22:16+00
846	485	2015-02-21 19:00:00+00	UPDATE	OPEN	2015-02-21 07:27:54+00
848	530	2015-02-21 19:00:00+00	UPDATE	CONSTRUCTION	2015-02-21 07:36:59+00
850	480	2015-02-24 19:00:00+00	UPDATE	OPEN	2015-02-25 00:44:34+00
852	565	2015-02-24 19:00:00+00	ADD	CONSTRUCTION	2015-02-25 00:55:30+00
864	570	2015-03-04 19:00:00+00	ADD	CONSTRUCTION	2015-03-05 01:30:30+00
877	565	2015-03-11 18:00:00+00	UPDATE	OPEN	2015-03-12 00:21:10+00
882	570	2015-03-13 18:00:00+00	UPDATE	OPEN	2015-03-14 00:39:17+00
883	575	2015-03-14 18:00:00+00	ADD	CONSTRUCTION	2015-03-14 18:03:49+00
893	450	2015-03-22 18:00:00+00	UPDATE	CONSTRUCTION	2015-03-22 23:18:18+00
895	580	2015-03-25 18:00:00+00	ADD	PERMIT	2015-03-25 10:11:03+00
905	585	2015-03-31 18:00:00+00	ADD	CONSTRUCTION	2015-03-31 16:52:48+00
906	575	2015-04-01 18:00:00+00	UPDATE	OPEN	2015-04-01 14:05:54+00
912	590	2015-04-05 18:00:00+00	ADD	PERMIT	2015-04-05 14:56:30+00
919	595	2015-04-10 18:00:00+00	ADD	PERMIT	2015-04-10 13:29:50+00
922	415	2015-04-13 18:00:00+00	UPDATE	CONSTRUCTION	2015-04-14 00:52:50+00
927	600	2015-04-14 18:00:00+00	ADD	CONSTRUCTION	2015-04-14 22:36:34+00
928	585	2015-04-15 18:00:00+00	UPDATE	OPEN	2015-04-15 09:25:58+00
930	530	2015-04-15 18:00:00+00	UPDATE	OPEN	2015-04-15 12:46:12+00
938	580	2015-04-20 18:00:00+00	UPDATE	CONSTRUCTION	2015-04-21 02:46:25+00
940	605	2015-04-21 18:00:00+00	ADD	PERMIT	2015-04-22 03:59:54+00
945	610	2015-04-23 18:00:00+00	ADD	PERMIT	2015-04-23 13:31:17+00
955	615	2015-05-01 18:00:00+00	ADD	CONSTRUCTION	2015-05-02 00:09:39+00
956	450	2015-05-02 18:00:00+00	UPDATE	OPEN	2015-05-02 22:52:55+00
958	615	2015-05-07 18:00:00+00	UPDATE	OPEN	2015-05-07 18:53:06+00
964	580	2015-05-13 18:00:00+00	UPDATE	OPEN	2015-05-13 16:46:09+00
967	600	2015-05-16 18:00:00+00	UPDATE	OPEN	2015-05-16 12:09:21+00
973	620	2015-05-24 18:00:00+00	ADD	PERMIT	2015-05-25 00:05:57+00
977	590	2015-05-28 18:00:00+00	UPDATE	CONSTRUCTION	2015-05-28 13:33:30+00
981	625	2015-05-30 18:00:00+00	ADD	CONSTRUCTION	2015-05-30 23:24:11+00
983	605	2015-06-02 18:00:00+00	UPDATE	CONSTRUCTION	2015-06-03 02:50:40+00
992	630	2015-06-09 18:00:00+00	ADD	PERMIT	2015-06-09 10:10:19+00
998	415	2015-06-11 18:00:00+00	UPDATE	OPEN	2015-06-12 00:49:52+00
1005	610	2015-06-18 18:00:00+00	UPDATE	CONSTRUCTION	2015-06-18 22:01:53+00
1007	640	2015-06-19 18:00:00+00	ADD	OPEN	2015-06-19 22:51:39+00
1010	630	2015-06-23 18:00:00+00	UPDATE	CONSTRUCTION	2015-06-23 16:12:52+00
1024	645	2015-06-27 18:00:00+00	ADD	CONSTRUCTION	2015-06-27 08:11:05+00
1033	650	2015-07-02 18:00:00+00	ADD	PERMIT	2015-07-02 16:08:46+00
1042	625	2015-07-08 18:00:00+00	UPDATE	OPEN	2015-07-08 23:37:09+00
1049	630	2015-07-10 18:00:00+00	UPDATE	OPEN	2015-07-10 22:34:38+00
1053	610	2015-07-15 18:00:00+00	UPDATE	OPEN	2015-07-16 00:51:16+00
1054	535	2015-07-16 18:00:00+00	UPDATE	OPEN	2015-07-16 13:50:34+00
1059	645	2015-07-17 18:00:00+00	UPDATE	OPEN	2015-07-18 00:51:37+00
1060	660	2015-07-18 18:00:00+00	ADD	PERMIT	2015-07-18 10:37:03+00
1069	665	2015-07-29 18:00:00+00	ADD	PERMIT	2015-07-29 20:27:35+00
1072	590	2015-07-30 18:00:00+00	UPDATE	OPEN	2015-07-31 00:23:12+00
1080	670	2015-08-03 18:00:00+00	ADD	CONSTRUCTION	2015-08-03 23:45:08+00
1087	675	2015-08-04 18:00:00+00	ADD	OPEN	2015-08-04 14:46:29+00
1098	680	2015-08-11 18:00:00+00	ADD	OPEN	2015-08-11 22:04:41+00
1110	685	2015-08-14 18:00:00+00	ADD	OPEN	2015-08-14 17:54:31+00
1119	690	2015-08-19 18:00:00+00	ADD	PERMIT	2015-08-20 03:24:58+00
1120	605	2015-08-20 18:00:00+00	UPDATE	OPEN	2015-08-21 04:04:08+00
1123	620	2015-08-21 18:00:00+00	UPDATE	CONSTRUCTION	2015-08-22 00:17:40+00
1140	695	2015-08-28 18:00:00+00	ADD	CONSTRUCTION	2015-08-29 02:20:11+00
1147	700	2015-09-04 18:00:00+00	ADD	PERMIT	2015-09-04 23:17:35+00
1148	670	2015-09-04 18:00:00+00	UPDATE	OPEN	2015-09-04 23:21:19+00
1159	705	2015-09-16 18:00:00+00	ADD	OPEN	2015-09-17 02:54:16+00
1166	660	2015-09-20 18:00:00+00	UPDATE	CONSTRUCTION	2015-09-20 23:36:43+00
1168	650	2015-09-22 18:00:00+00	UPDATE	CONSTRUCTION	2015-09-23 00:06:44+00
1175	700	2015-09-25 18:00:00+00	UPDATE	CONSTRUCTION	2015-09-25 12:43:14+00
1177	695	2015-09-25 18:00:00+00	UPDATE	OPEN	2015-09-26 00:15:08+00
1189	620	2015-10-07 18:00:00+00	UPDATE	OPEN	2015-10-08 00:17:17+00
1191	715	2015-10-07 18:00:00+00	ADD	CONSTRUCTION	2015-10-08 00:32:19+00
1198	650	2015-10-16 18:00:00+00	UPDATE	OPEN	2015-10-16 23:32:21+00
1204	720	2015-10-20 18:00:00+00	ADD	OPEN	2015-10-21 00:42:37+00
1212	725	2015-10-22 18:00:00+00	ADD	PERMIT	2015-10-23 02:55:12+00
1216	700	2015-10-22 18:00:00+00	UPDATE	OPEN	2015-10-23 04:15:00+00
1217	690	2015-10-23 18:00:00+00	UPDATE	CONSTRUCTION	2015-10-23 23:24:42+00
1219	715	2015-10-24 18:00:00+00	UPDATE	OPEN	2015-10-24 05:44:01+00
1221	730	2015-10-25 18:00:00+00	ADD	CONSTRUCTION	2015-10-26 01:19:34+00
1227	735	2015-10-30 18:00:00+00	ADD	OPEN	2015-10-30 13:30:01+00
1229	725	2015-10-31 18:00:00+00	UPDATE	CONSTRUCTION	2015-11-01 04:42:38+00
1235	740	2015-11-03 19:00:00+00	ADD	PERMIT	2015-11-04 01:01:19+00
1244	745	2015-11-08 19:00:00+00	ADD	PERMIT	2015-11-09 05:03:54+00
1246	730	2015-11-10 19:00:00+00	UPDATE	OPEN	2015-11-10 14:28:57+00
1248	660	2015-11-12 19:00:00+00	UPDATE	OPEN	2015-11-13 00:52:10+00
1253	750	2015-11-18 19:00:00+00	ADD	CONSTRUCTION	2015-11-18 10:46:27+00
1254	725	2015-11-18 19:00:00+00	UPDATE	OPEN	2015-11-19 00:20:22+00
1260	690	2015-11-20 19:00:00+00	UPDATE	OPEN	2015-11-21 03:25:23+00
1265	755	2015-11-27 19:00:00+00	ADD	CONSTRUCTION	2015-11-27 16:29:48+00
1277	755	2015-12-08 19:00:00+00	UPDATE	OPEN	2015-12-09 05:16:49+00
1290	765	2015-12-15 19:00:00+00	ADD	OPEN	2015-12-15 19:27:56+00
1295	750	2015-12-17 19:00:00+00	UPDATE	OPEN	2015-12-18 04:34:59+00
1300	770	2015-12-17 19:00:00+00	ADD	OPEN	2015-12-18 04:57:48+00
1309	775	2015-12-21 19:00:00+00	ADD	OPEN	2015-12-21 17:15:25+00
1324	780	2015-12-30 19:00:00+00	ADD	OPEN	2015-12-31 01:48:36+00
1326	225	2016-01-01 19:00:00+00	UPDATE	CLOSED_TEMP	2016-01-01 18:08:30+00
1335	225	2016-01-15 19:00:00+00	UPDATE	OPEN	2016-01-15 09:32:16+00
1336	785	2016-01-21 19:00:00+00	ADD	CONSTRUCTION	2016-01-21 10:33:35+00
1344	785	2016-01-24 19:00:00+00	UPDATE	PERMIT	2016-01-24 09:30:08+00
1345	790	2016-01-27 19:00:00+00	ADD	PERMIT	2016-01-27 15:17:44+00
1349	790	2016-02-01 19:00:00+00	UPDATE	CONSTRUCTION	2016-02-02 03:58:58+00
1354	550	2016-02-06 19:00:00+00	UPDATE	OPEN	2016-02-06 19:12:48+00
1357	795	2016-02-10 19:00:00+00	ADD	CONSTRUCTION	2016-02-10 23:19:58+00
1364	800	2016-02-23 19:00:00+00	ADD	PERMIT	2016-02-23 17:52:36+00
1370	805	2016-03-02 19:00:00+00	ADD	CONSTRUCTION	2016-03-02 15:16:38+00
1375	790	2016-03-19 18:00:00+00	UPDATE	OPEN	2016-03-19 17:15:30+00
1377	810	2016-03-20 18:00:00+00	ADD	OPEN	2016-03-20 17:46:51+00
1383	815	2016-03-27 18:00:00+00	ADD	OPEN	2016-03-28 00:50:04+00
1391	820	2016-04-11 18:00:00+00	ADD	PERMIT	2016-04-11 05:23:09+00
1396	825	2016-04-13 18:00:00+00	ADD	OPEN	2016-04-14 03:08:05+00
1411	835	2016-04-24 18:00:00+00	ADD	CONSTRUCTION	2016-04-24 13:11:36.171193+00
1419	840	2016-05-02 18:00:00+00	ADD	PERMIT	2016-05-02 05:28:44.114673+00
1432	845	2016-05-11 18:00:00+00	ADD	PERMIT	2016-05-12 01:30:50.024988+00
1435	845	2016-05-13 18:00:00+00	UPDATE	CONSTRUCTION	2016-05-13 23:51:45.073738+00
1440	850	2016-05-16 18:00:00+00	ADD	CONSTRUCTION	2016-05-17 00:38:34.590637+00
1447	855	2016-05-21 18:00:00+00	ADD	CONSTRUCTION	2016-05-21 05:24:14.879438+00
1448	740	2016-05-22 18:00:00+00	UPDATE	CONSTRUCTION	2016-05-22 15:06:56.407134+00
1455	785	2016-05-27 18:00:00+00	UPDATE	CONSTRUCTION	2016-05-27 17:40:22.39336+00
1458	855	2016-05-31 18:00:00+00	UPDATE	OPEN	2016-05-31 23:13:59.237447+00
1459	845	2016-06-01 18:00:00+00	UPDATE	OPEN	2016-06-01 23:44:22.954038+00
1461	860	2016-06-01 18:00:00+00	ADD	PERMIT	2016-06-02 00:24:57.590987+00
1463	740	2016-06-03 18:00:00+00	UPDATE	OPEN	2016-06-03 13:05:01.880759+00
1474	860	2016-06-11 18:00:00+00	UPDATE	CONSTRUCTION	2016-06-11 16:13:23.13855+00
1534	890	2016-07-16 18:00:00+00	ADD	OPEN	2016-07-17 00:11:48.846575+00
1541	745	2016-07-18 18:00:00+00	UPDATE	CONSTRUCTION	2016-07-18 19:48:21.249785+00
1543	895	2016-07-20 18:00:00+00	ADD	PERMIT	2016-07-20 05:41:13.978863+00
1482	865	2016-06-21 18:00:00+00	ADD	OPEN	2016-06-22 00:53:13.73148+00
1499	820	2016-06-27 18:00:00+00	UPDATE	CONSTRUCTION	2016-06-27 23:28:45.085275+00
1503	875	2016-06-29 18:00:00+00	ADD	OPEN	2016-06-30 00:38:16.648474+00
1514	880	2016-07-05 18:00:00+00	ADD	OPEN	2016-07-05 19:02:33.209747+00
1526	885	2016-07-15 18:00:00+00	ADD	OPEN	2016-07-15 20:00:49.889127+00
1545	805	2016-07-20 18:00:00+00	UPDATE	OPEN	2016-07-20 17:45:39.320396+00
1552	595	2016-07-27 18:00:00+00	UPDATE	CONSTRUCTION	2016-07-27 05:43:26.312729+00
1554	900	2016-07-29 18:00:00+00	ADD	PERMIT	2016-07-30 00:49:17.467861+00
1560	840	2016-08-09 18:00:00+00	UPDATE	CONSTRUCTION	2016-08-09 23:50:17.070275+00
1566	905	2016-08-15 18:00:00+00	ADD	CONSTRUCTION	2016-08-15 23:44:54.368693+00
1570	860	2016-08-18 18:00:00+00	UPDATE	OPEN	2016-08-19 00:57:30.789959+00
1575	820	2016-08-20 18:00:00+00	UPDATE	OPEN	2016-08-20 16:26:55.75642+00
1580	910	2016-08-30 18:00:00+00	ADD	CONSTRUCTION	2016-08-31 02:21:18.788582+00
1584	785	2016-08-31 18:00:00+00	UPDATE	OPEN	2016-08-31 23:37:25.716897+00
1586	915	2016-09-01 18:00:00+00	ADD	PERMIT	2016-09-01 19:02:42.807955+00
1592	595	2016-09-08 18:00:00+00	UPDATE	OPEN	2016-09-09 02:19:57.519845+00
1595	920	2016-09-12 18:00:00+00	ADD	CONSTRUCTION	2016-09-12 12:24:05.290091+00
1598	800	2016-09-14 18:00:00+00	UPDATE	CONSTRUCTION	2016-09-14 23:19:49.148697+00
1601	840	2016-09-17 18:00:00+00	UPDATE	OPEN	2016-09-17 14:48:29.846701+00
1603	900	2016-09-20 18:00:00+00	UPDATE	CONSTRUCTION	2016-09-20 23:36:21.769122+00
1605	835	2016-09-22 18:00:00+00	UPDATE	OPEN	2016-09-23 03:08:57.700324+00
1616	905	2016-09-29 18:00:00+00	UPDATE	OPEN	2016-09-29 20:43:10.222719+00
1619	925	2016-10-01 18:00:00+00	ADD	PERMIT	2016-10-01 06:00:50.273468+00
1620	915	2016-10-01 18:00:00+00	UPDATE	CONSTRUCTION	2016-10-01 06:12:37.976852+00
1623	915	2016-10-03 18:00:00+00	UPDATE	OPEN	2016-10-03 22:22:23.826315+00
1627	930	2016-10-05 18:00:00+00	ADD	OPEN	2016-10-06 00:29:54.056315+00
1641	935	2016-10-11 18:00:00+00	ADD	OPEN	2016-10-11 12:28:26.120685+00
1634	925	2016-10-07 18:00:00+00	UPDATE	CONSTRUCTION	2016-10-07 14:20:41.844048+00
1635	840	2016-10-07 18:00:00+00	UPDATE	CONSTRUCTION	2016-10-08 00:53:56.912975+00
1646	940	2016-10-13 18:00:00+00	ADD	OPEN	2016-10-13 05:21:17.159866+00
1651	945	2016-10-13 18:00:00+00	ADD	OPEN	2016-10-13 05:25:45.136521+00
1656	795	2016-10-13 18:00:00+00	UPDATE	OPEN	2016-10-13 13:10:52.159411+00
1658	950	2016-10-16 18:00:00+00	ADD	CONSTRUCTION	2016-10-16 14:16:24.724207+00
1665	850	2016-10-20 18:00:00+00	UPDATE	OPEN	2016-10-20 18:15:37.452713+00
1671	665	2016-10-24 18:00:00+00	UPDATE	CONSTRUCTION	2016-10-24 20:25:10.53621+00
1676	840	2016-10-28 18:00:00+00	UPDATE	OPEN	2016-10-29 00:01:13.117263+00
1680	960	2016-10-30 18:00:00+00	ADD	OPEN	2016-10-30 23:40:03.205091+00
1686	965	2016-11-03 18:00:00+00	ADD	CONSTRUCTION	2016-11-04 02:57:37.467038+00
1687	900	2016-11-04 18:00:00+00	UPDATE	OPEN	2016-11-04 23:11:29.98906+00
1691	745	2016-11-10 19:00:00+00	UPDATE	OPEN	2016-11-10 23:55:16.902148+00
1694	895	2016-11-13 19:00:00+00	UPDATE	CONSTRUCTION	2016-11-13 21:40:18.774305+00
1698	970	2016-11-15 19:00:00+00	ADD	OPEN	2016-11-16 02:23:44.364634+00
1709	975	2016-11-22 19:00:00+00	ADD	PERMIT	2016-11-22 06:05:30.031501+00
1713	910	2016-11-24 19:00:00+00	UPDATE	OPEN	2016-11-24 18:46:59.495175+00
1717	980	2016-11-24 19:00:00+00	ADD	CONSTRUCTION	2016-11-25 03:23:42.404028+00
1726	985	2016-12-01 19:00:00+00	ADD	PERMIT	2016-12-02 03:04:12.877753+00
1730	925	2016-12-02 19:00:00+00	UPDATE	OPEN	2016-12-03 02:19:30.821715+00
1731	920	2016-12-02 19:00:00+00	UPDATE	OPEN	2016-12-03 02:21:05.416731+00
1734	950	2016-12-05 19:00:00+00	UPDATE	OPEN	2016-12-05 23:54:55.263347+00
1736	990	2016-12-05 19:00:00+00	ADD	PERMIT	2016-12-06 02:25:25.613727+00
1745	995	2016-12-11 19:00:00+00	ADD	CONSTRUCTION	2016-12-11 17:43:38.87877+00
1756	1000	2016-12-17 19:00:00+00	ADD	OPEN	2016-12-17 22:48:21.480253+00
1759	665	2016-12-19 19:00:00+00	UPDATE	OPEN	2016-12-20 02:57:06.742688+00
1768	1005	2016-12-23 19:00:00+00	ADD	OPEN	2016-12-23 17:22:01.988113+00
1775	1010	2016-12-26 19:00:00+00	ADD	PERMIT	2016-12-26 18:29:14.443386+00
1784	1015	2016-12-31 19:00:00+00	ADD	OPEN	2016-12-31 19:07:51.320449+00
1786	995	2017-01-01 19:00:00+00	UPDATE	OPEN	2017-01-01 16:31:55.871514+00
1779	980	2016-12-26 19:00:00+00	UPDATE	OPEN	2016-12-26 19:57:07.187633+00
1789	965	2017-01-04 19:00:00+00	UPDATE	OPEN	2017-01-05 03:29:16.839355+00
1796	800	2017-01-09 19:00:00+00	UPDATE	OPEN	2017-01-10 02:57:31.230694+00
1798	1020	2017-01-13 19:00:00+00	ADD	OPEN	2017-01-13 14:53:15.79365+00
1810	1025	2017-01-24 19:00:00+00	ADD	OPEN	2017-01-25 02:22:23.07011+00
1816	1030	2017-02-08 19:00:00+00	ADD	OPEN	2017-02-09 01:48:15.700197+00
1817	975	2017-02-10 19:00:00+00	UPDATE	CONSTRUCTION	2017-02-10 17:21:18.468528+00
1829	1040	2017-02-22 19:00:00+00	ADD	OPEN	2017-02-22 13:43:57.926339+00
1833	895	2017-02-23 19:00:00+00	UPDATE	OPEN	2017-02-24 03:45:26.044002+00
1836	1045	2017-02-26 19:00:00+00	ADD	CONSTRUCTION	2017-02-26 21:27:59.050251+00
1843	1050	2017-03-09 19:00:00+00	ADD	CONSTRUCTION	2017-03-10 03:56:57.908334+00
1852	975	2017-03-18 18:00:00+00	UPDATE	OPEN	2017-03-18 05:16:19.437392+00
1854	1045	2017-03-21 18:00:00+00	UPDATE	OPEN	2017-03-22 00:44:11.732747+00
1855	1050	2017-03-21 18:00:00+00	UPDATE	OPEN	2017-03-22 00:50:43.404933+00
1856	1055	2017-03-21 18:00:00+00	ADD	OPEN	2017-03-22 00:56:28.025668+00
1861	1060	2017-03-21 18:00:00+00	ADD	CONSTRUCTION	2017-03-22 04:15:41.647022+00
1870	1065	2017-03-30 18:00:00+00	ADD	CONSTRUCTION	2017-03-30 17:44:37.216293+00
1884	1010	2017-04-09 18:00:00+00	UPDATE	CONSTRUCTION	2017-04-10 03:01:32.286263+00
1890	1010	2017-04-13 18:00:00+00	UPDATE	OPEN	2017-04-14 04:18:01.504872+00
1899	1080	2017-04-22 18:00:00+00	ADD	CONSTRUCTION	2017-04-22 21:40:05.536512+00
1912	1085	2017-05-03 18:00:00+00	ADD	CONSTRUCTION	2017-05-03 08:48:11.732236+00
1918	1090	2017-05-06 18:00:00+00	ADD	CONSTRUCTION	2017-05-06 06:52:37.774787+00
1924	1095	2017-05-12 18:00:00+00	ADD	OPEN	2017-05-12 20:15:46.220112+00
1933	1085	2017-05-20 18:00:00+00	UPDATE	OPEN	2017-05-20 14:46:42.920027+00
1934	1100	2017-05-21 18:00:00+00	ADD	CONSTRUCTION	2017-05-21 22:11:22.46104+00
1939	1105	2017-05-22 18:00:00+00	ADD	CONSTRUCTION	2017-05-23 02:00:31.901507+00
1946	1110	2017-05-28 18:00:00+00	ADD	CONSTRUCTION	2017-05-28 07:13:58.432554+00
1957	1080	2017-05-31 18:00:00+00	UPDATE	OPEN	2017-06-01 01:02:35.515989+00
1958	1115	2017-05-31 18:00:00+00	ADD	OPEN	2017-06-01 01:05:03.088249+00
1964	1120	2017-06-02 18:00:00+00	ADD	PERMIT	2017-06-02 12:34:37.770301+00
1965	1120	2017-06-02 18:00:00+00	UPDATE	CONSTRUCTION	2017-06-02 19:54:31.092234+00
1966	1065	2017-06-02 18:00:00+00	UPDATE	OPEN	2017-06-03 00:52:32.494844+00
1977	1125	2017-06-07 18:00:00+00	ADD	PERMIT	2017-06-08 03:15:27.389874+00
1985	1130	2017-06-12 18:00:00+00	ADD	OPEN	2017-06-13 03:50:52.580675+00
1992	1135	2017-06-18 18:00:00+00	ADD	OPEN	2017-06-18 17:57:04.857738+00
1998	1140	2017-06-18 18:00:00+00	ADD	CONSTRUCTION	2017-06-18 18:31:15.355978+00
2004	1145	2017-06-18 18:00:00+00	ADD	OPEN	2017-06-18 22:31:28.710832+00
2009	1150	2017-06-18 18:00:00+00	ADD	OPEN	2017-06-18 22:39:37.484702+00
2015	1120	2017-06-20 18:00:00+00	UPDATE	OPEN	2017-06-21 02:00:24.462064+00
2017	1155	2017-06-21 18:00:00+00	ADD	OPEN	2017-06-22 03:45:18.340485+00
2028	1160	2017-06-27 18:00:00+00	ADD	PERMIT	2017-06-28 03:39:46.420032+00
2034	1165	2017-06-29 18:00:00+00	ADD	CONSTRUCTION	2017-06-30 03:16:15.091588+00
2045	1170	2017-07-04 18:00:00+00	ADD	CONSTRUCTION	2017-07-04 20:14:14.725379+00
2047	1160	2017-07-05 18:00:00+00	UPDATE	CONSTRUCTION	2017-07-05 15:07:05.875616+00
2053	1160	2017-07-08 18:00:00+00	UPDATE	OPEN	2017-07-08 20:21:15.782979+00
2058	1175	2017-07-09 18:00:00+00	ADD	CONSTRUCTION	2017-07-09 05:45:49.402241+00
2083	1195	2017-07-17 18:00:00+00	ADD	OPEN	2017-07-17 22:37:41.866766+00
2089	1200	2017-07-18 18:00:00+00	ADD	OPEN	2017-07-19 02:06:17.379895+00
2112	1215	2017-07-30 18:00:00+00	ADD	PERMIT	2017-07-31 00:54:29.772579+00
2134	1110	2017-08-09 18:00:00+00	UPDATE	CLOSED_TEMP	2017-08-09 20:21:59.393504+00
2138	1205	2017-08-10 18:00:00+00	UPDATE	OPEN	2017-08-11 03:56:19.202544+00
2055	1170	2017-07-08 18:00:00+00	UPDATE	OPEN	2017-07-08 20:27:59.082947+00
2064	1180	2017-07-12 18:00:00+00	ADD	PERMIT	2017-07-12 06:17:21.410187+00
2071	1140	2017-07-13 18:00:00+00	UPDATE	OPEN	2017-07-13 21:41:06.243709+00
2073	1185	2017-07-15 18:00:00+00	ADD	OPEN	2017-07-15 17:26:35.689338+00
2079	1190	2017-07-15 18:00:00+00	ADD	CONSTRUCTION	2017-07-16 03:34:31.196279+00
2098	1205	2017-07-23 18:00:00+00	ADD	CONSTRUCTION	2017-07-24 02:53:04.114049+00
2106	1210	2017-07-28 18:00:00+00	ADD	CONSTRUCTION	2017-07-28 23:16:44.064348+00
2107	1110	2017-07-28 18:00:00+00	UPDATE	OPEN	2017-07-29 03:21:39.234894+00
2120	1220	2017-08-02 18:00:00+00	ADD	OPEN	2017-08-03 03:50:53.487973+00
2125	1225	2017-08-02 18:00:00+00	ADD	OPEN	2017-08-03 03:56:10.982289+00
2135	1230	2017-08-10 18:00:00+00	ADD	CONSTRUCTION	2017-08-10 16:16:48.460217+00
2142	1210	2017-08-12 18:00:00+00	UPDATE	OPEN	2017-08-12 16:43:57.760082+00
2147	1235	2017-08-14 18:00:00+00	ADD	PERMIT	2017-08-15 04:58:02.061918+00
2149	1175	2017-08-16 18:00:00+00	UPDATE	OPEN	2017-08-16 14:17:04.195987+00
2154	1240	2017-08-19 18:00:00+00	ADD	CONSTRUCTION	2017-08-19 06:02:59.159529+00
2159	1190	2017-08-20 18:00:00+00	UPDATE	OPEN	2017-08-20 19:45:04.025234+00
2161	1110	2017-08-20 18:00:00+00	UPDATE	OPEN	2017-08-20 19:47:05.183722+00
2165	1245	2017-08-21 18:00:00+00	ADD	CONSTRUCTION	2017-08-21 18:27:44.759406+00
2174	1250	2017-08-28 18:00:00+00	ADD	CONSTRUCTION	2017-08-29 04:04:34.901912+00
2184	1255	2017-09-02 18:00:00+00	ADD	PERMIT	2017-09-02 20:15:17.885676+00
2189	990	2017-09-03 18:00:00+00	UPDATE	CONSTRUCTION	2017-09-03 18:20:29.713867+00
2196	1255	2017-09-08 18:00:00+00	UPDATE	CONSTRUCTION	2017-09-08 10:10:08.632231+00
2199	1125	2017-09-08 18:00:00+00	UPDATE	OPEN	2017-09-08 19:57:21.694082+00
2203	1260	2017-09-08 18:00:00+00	ADD	CONSTRUCTION	2017-09-08 22:35:20.348821+00
2205	1230	2017-09-10 18:00:00+00	UPDATE	OPEN	2017-09-10 18:24:16.404187+00
2219	1265	2017-09-16 18:00:00+00	ADD	CONSTRUCTION	2017-09-16 16:09:13.187043+00
2224	1270	2017-09-18 18:00:00+00	ADD	OPEN	2017-09-19 03:04:00.416384+00
2230	1275	2017-09-18 18:00:00+00	ADD	CONSTRUCTION	2017-09-19 03:32:34.932576+00
2238	1280	2017-09-20 18:00:00+00	ADD	CONSTRUCTION	2017-09-21 04:38:52.069358+00
2248	1285	2017-09-23 18:00:00+00	ADD	OPEN	2017-09-23 14:36:45.83271+00
2254	1245	2017-09-24 18:00:00+00	UPDATE	OPEN	2017-09-25 04:16:15.945982+00
2257	1290	2017-09-24 18:00:00+00	ADD	CONSTRUCTION	2017-09-25 04:32:01.039746+00
2261	1265	2017-09-25 18:00:00+00	UPDATE	OPEN	2017-09-26 03:05:13.135098+00
2267	1295	2017-09-27 18:00:00+00	ADD	PERMIT	2017-09-27 05:38:47.77998+00
2276	1255	2017-09-28 18:00:00+00	UPDATE	OPEN	2017-09-29 02:30:30.312568+00
2278	1300	2017-09-30 18:00:00+00	ADD	CONSTRUCTION	2017-09-30 06:15:33.218776+00
2284	1100	2017-09-30 18:00:00+00	UPDATE	OPEN	2017-09-30 08:48:13.848593+00
2289	1240	2017-09-30 18:00:00+00	UPDATE	OPEN	2017-10-01 03:26:16.475711+00
2298	1310	2017-10-01 18:00:00+00	ADD	CONSTRUCTION	2017-10-01 21:57:17.146589+00
2310	1315	2017-10-03 18:00:00+00	ADD	OPEN	2017-10-03 16:50:10.52574+00
2315	1320	2017-10-03 18:00:00+00	ADD	OPEN	2017-10-03 18:55:31.664234+00
2322	1165	2017-10-04 18:00:00+00	UPDATE	OPEN	2017-10-04 20:57:23.757162+00
2325	1325	2017-10-07 18:00:00+00	ADD	CONSTRUCTION	2017-10-07 15:11:10.125821+00
2335	1330	2017-10-09 18:00:00+00	ADD	CONSTRUCTION	2017-10-10 02:30:23.451093+00
2336	1180	2017-10-11 18:00:00+00	UPDATE	CONSTRUCTION	2017-10-11 06:46:25.271426+00
2353	1340	2017-10-16 18:00:00+00	ADD	OPEN	2017-10-17 02:29:36.218937+00
2358	1275	2017-10-19 18:00:00+00	UPDATE	OPEN	2017-10-19 22:54:44.535141+00
2364	1345	2017-10-20 18:00:00+00	ADD	CONSTRUCTION	2017-10-20 05:22:31.476089+00
2370	1350	2017-10-21 18:00:00+00	ADD	OPEN	2017-10-21 16:16:36.606725+00
2373	1295	2017-10-22 18:00:00+00	UPDATE	CONSTRUCTION	2017-10-23 04:57:27.193214+00
2379	1355	2017-10-25 18:00:00+00	ADD	CONSTRUCTION	2017-10-25 05:28:57.65024+00
2400	1365	2017-11-02 18:00:00+00	ADD	PERMIT	2017-11-03 02:43:50.712474+00
2401	1365	2017-11-02 18:00:00+00	UPDATE	CONSTRUCTION	2017-11-03 02:55:27.464464+00
2403	1260	2017-11-02 18:00:00+00	UPDATE	OPEN	2017-11-03 03:35:19.978762+00
2406	1370	2017-11-04 18:00:00+00	ADD	PERMIT	2017-11-05 04:36:45.800359+00
2394	1360	2017-10-31 18:00:00+00	ADD	CONSTRUCTION	2017-10-31 17:44:07.827353+00
2375	1290	2017-10-23 18:00:00+00	UPDATE	OPEN	2017-10-23 11:43:07.658309+00
2384	1325	2017-10-28 18:00:00+00	UPDATE	OPEN	2017-10-28 18:49:02.905287+00
2421	1380	2017-11-08 18:00:00+00	ADD	PERMIT	2017-11-09 04:59:47.536322+00
2428	1385	2017-11-11 18:00:00+00	ADD	CONSTRUCTION	2017-11-11 17:47:47.078322+00
2434	1390	2017-11-13 18:00:00+00	ADD	CONSTRUCTION	2017-11-13 20:21:35.021691+00
2436	990	2017-11-14 18:00:00+00	UPDATE	OPEN	2017-11-14 18:01:45.112693+00
2451	1330	2017-11-17 18:00:00+00	UPDATE	OPEN	2017-11-18 02:10:38.810959+00
2455	1400	2017-11-19 18:00:00+00	ADD	CONSTRUCTION	2017-11-19 22:06:31.086626+00
2456	1180	2017-11-19 18:00:00+00	UPDATE	OPEN	2017-11-20 03:03:13.229138+00
2464	1405	2017-11-22 18:00:00+00	ADD	CONSTRUCTION	2017-11-22 17:16:35.764432+00
2474	1410	2017-11-29 18:00:00+00	ADD	PERMIT	2017-11-29 20:50:47.270264+00
2476	1410	2017-11-30 18:00:00+00	UPDATE	CONSTRUCTION	2017-11-30 09:14:14.145646+00
2480	1415	2017-11-30 18:00:00+00	ADD	OPEN	2017-11-30 16:04:39.38727+00
2483	1280	2017-11-30 18:00:00+00	UPDATE	OPEN	2017-11-30 23:43:45.577791+00
2492	1425	2017-12-04 18:00:00+00	ADD	PERMIT	2017-12-04 17:48:15.147885+00
2495	1425	2017-12-05 18:00:00+00	UPDATE	CONSTRUCTION	2017-12-05 23:04:36.287234+00
2519	1445	2017-12-11 18:00:00+00	ADD	OPEN	2017-12-12 02:09:33.594139+00
2514	1440	2017-12-11 18:00:00+00	ADD	OPEN	2017-12-11 23:30:18.64229+00
2529	1450	2017-12-14 18:00:00+00	ADD	OPEN	2017-12-15 00:20:35.523478+00
2531	1300	2017-12-14 18:00:00+00	UPDATE	OPEN	2017-12-15 01:52:39.680108+00
2549	1295	2017-12-19 18:00:00+00	UPDATE	OPEN	2017-12-20 01:02:30.064389+00
2554	1355	2017-12-20 18:00:00+00	UPDATE	OPEN	2017-12-20 22:51:27.987923+00
2557	1455	2017-12-20 18:00:00+00	ADD	OPEN	2017-12-21 02:22:02.627484+00
2562	1460	2017-12-21 18:00:00+00	ADD	OPEN	2017-12-21 22:19:39.953075+00
2568	1410	2017-12-22 18:00:00+00	UPDATE	OPEN	2017-12-22 22:42:49.295001+00
2572	1465	2017-12-23 18:00:00+00	ADD	PERMIT	2017-12-23 13:56:30.362663+00
2582	1470	2017-12-29 18:00:00+00	ADD	OPEN	2017-12-30 04:25:46.753515+00
2588	1215	2017-12-31 18:00:00+00	UPDATE	CONSTRUCTION	2017-12-31 16:45:14.220049+00
2594	1475	2018-01-03 18:00:00+00	ADD	OPEN	2018-01-04 02:18:24.682442+00
2602	1480	2018-01-04 18:00:00+00	ADD	CONSTRUCTION	2018-01-05 02:46:46.269189+00
2606	1235	2018-01-09 18:00:00+00	UPDATE	CONSTRUCTION	2018-01-10 01:06:59.389764+00
2609	1485	2018-01-12 18:00:00+00	ADD	PERMIT	2018-01-13 02:19:56.274023+00
2626	1370	2018-01-26 18:00:00+00	UPDATE	CONSTRUCTION	2018-01-27 02:34:39.73888+00
2630	1495	2018-01-29 18:00:00+00	ADD	OPEN	2018-01-30 01:50:24.698243+00
2638	1480	2018-02-01 18:00:00+00	UPDATE	OPEN	2018-02-02 01:19:07.25377+00
2652	1425	2018-02-09 18:00:00+00	UPDATE	OPEN	2018-02-09 20:44:03.613707+00
2669	1515	2018-02-17 18:00:00+00	ADD	CONSTRUCTION	2018-02-17 21:57:27.686072+00
2678	135	2018-02-22 18:00:00+00	UPDATE	CLOSED_TEMP	2018-02-22 23:02:22.413647+00
2681	1520	2018-02-24 18:00:00+00	ADD	PERMIT	2018-02-24 07:47:43.294375+00
2688	1520	2018-02-26 18:00:00+00	UPDATE	CONSTRUCTION	2018-02-27 02:11:29.330398+00
2690	135	2018-03-01 18:00:00+00	UPDATE	OPEN	2018-03-01 11:55:47.876032+00
2693	1525	2018-03-01 18:00:00+00	ADD	OPEN	2018-03-01 20:44:41.592767+00
2700	1530	2018-03-06 18:00:00+00	ADD	PERMIT	2018-03-06 08:45:56.88043+00
2701	1380	2018-03-07 18:00:00+00	UPDATE	CONSTRUCTION	2018-03-07 06:59:29.088281+00
2702	1385	2018-03-07 18:00:00+00	UPDATE	OPEN	2018-03-07 09:10:23.814908+00
2706	1390	2018-03-09 18:00:00+00	UPDATE	OPEN	2018-03-09 23:01:25.301829+00
2707	1215	2018-03-10 18:00:00+00	UPDATE	OPEN	2018-03-10 17:59:57.265513+00
2708	1360	2018-03-11 17:00:00+00	UPDATE	OPEN	2018-03-11 23:02:55.118404+00
2713	1090	2018-03-13 17:00:00+00	UPDATE	OPEN	2018-03-13 09:23:05.158304+00
2714	1310	2018-03-13 17:00:00+00	UPDATE	OPEN	2018-03-13 20:39:20.439533+00
2718	1535	2018-03-14 17:00:00+00	ADD	OPEN	2018-03-14 06:22:04.071077+00
2736	1545	2018-03-21 03:34:39.751+00	ADD	CONSTRUCTION	2018-03-21 03:34:39.724959+00
2745	1550	2018-03-26 12:04:35.27+00	ADD	CONSTRUCTION	2018-03-26 12:04:35.266145+00
2751	1555	2018-03-27 12:22:35.042+00	ADD	PERMIT	2018-03-27 12:22:35.034935+00
2753	1345	2018-03-28 23:23:28.515+00	UPDATE	OPEN	2018-03-28 23:23:28.512228+00
2755	1365	2018-03-28 23:48:15.981+00	UPDATE	OPEN	2018-03-28 23:48:15.978402+00
2759	1545	2018-03-30 05:48:08.53+00	UPDATE	OPEN	2018-03-30 05:48:08.526975+00
2761	1560	2018-03-30 21:36:59.734+00	ADD	PERMIT	2018-03-30 21:36:59.731994+00
2762	1370	2018-03-31 11:23:19.551+00	UPDATE	OPEN	2018-03-31 11:23:19.549349+00
2769	1565	2018-04-02 21:26:54.004+00	ADD	PERMIT	2018-04-02 21:26:54.001957+00
2770	1405	2018-04-02 22:27:26.864+00	UPDATE	OPEN	2018-04-02 22:27:26.856607+00
2777	1570	2018-04-09 15:07:11.33+00	ADD	PERMIT	2018-04-09 15:07:11.329005+00
2783	1575	2018-04-12 00:53:43.685+00	ADD	OPEN	2018-04-12 00:53:43.678355+00
2791	1580	2018-04-16 21:46:08.458+00	ADD	OPEN	2018-04-16 21:46:08.457115+00
2799	1235	2018-04-19 02:03:22.859+00	UPDATE	OPEN	2018-04-19 02:03:22.848304+00
2811	1590	2018-04-24 03:34:01.318+00	ADD	OPEN	2018-04-24 03:34:01.316293+00
2800	1465	2018-04-19 02:05:30.207+00	UPDATE	CONSTRUCTION	2018-04-19 02:05:30.203448+00
2802	1585	2018-04-20 05:47:26.528+00	ADD	CONSTRUCTION	2018-04-20 05:47:26.526789+00
2813	1515	2018-04-25 21:39:09.36+00	UPDATE	OPEN	2018-04-25 21:39:09.336631+00
2815	1550	2018-04-27 20:09:13.509+00	UPDATE	OPEN	2018-04-27 20:09:13.5063+00
2816	1400	2018-04-27 22:47:41.922+00	UPDATE	OPEN	2018-04-27 22:47:41.918043+00
2818	1485	2018-04-28 10:21:24.257+00	UPDATE	CONSTRUCTION	2018-04-28 10:21:24.253905+00
2820	1595	2018-04-28 10:29:54.854+00	ADD	PERMIT	2018-04-28 10:29:54.852499+00
2823	605	2018-04-30 07:15:34.959+00	UPDATE	CLOSED_TEMP	2018-04-30 07:15:34.957217+00
2828	1600	2018-05-03 09:38:35.887+00	ADD	OPEN	2018-05-03 09:38:35.885205+00
2833	1605	2018-05-05 23:54:21.919+00	ADD	CONSTRUCTION	2018-05-05 23:54:21.917343+00
2835	1380	2018-05-06 00:44:23.315+00	UPDATE	OPEN	2018-05-06 00:44:23.310997+00
2846	605	2018-05-13 04:06:21.36+00	UPDATE	OPEN	2018-05-13 04:06:21.357625+00
2847	1610	2018-05-13 20:32:06.096+00	ADD	PERMIT	2018-05-13 20:32:06.094751+00
2857	1610	2018-05-18 10:56:03.486+00	UPDATE	CONSTRUCTION	2018-05-18 10:56:03.484316+00
2859	1615	2018-05-20 06:42:20.728+00	ADD	PERMIT	2018-05-20 06:42:20.726626+00
2874	1620	2018-05-27 11:32:35.819+00	ADD	CONSTRUCTION	2018-05-27 11:32:35.817923+00
2881	1625	2018-05-30 14:08:57.285+00	ADD	PERMIT	2018-05-30 14:08:57.284462+00
2887	1630	2018-06-01 06:07:48.283+00	ADD	CONSTRUCTION	2018-06-01 06:07:48.280732+00
2889	1570	2018-06-01 21:37:32.356+00	UPDATE	CONSTRUCTION	2018-06-01 21:37:32.355192+00
2895	1635	2018-06-04 20:59:44.652+00	ADD	PERMIT	2018-06-04 20:59:44.651668+00
2907	1585	2018-06-07 22:33:28.445+00	UPDATE	OPEN	2018-06-07 22:33:28.443325+00
2917	1605	2018-06-15 02:04:49.127+00	UPDATE	OPEN	2018-06-15 02:04:49.12462+00
2918	1630	2018-06-15 14:15:50.153+00	UPDATE	OPEN	2018-06-15 14:15:50.148774+00
2919	1645	2018-06-15 23:06:08.495+00	ADD	CONSTRUCTION	2018-06-15 23:06:08.488177+00
2925	1650	2018-06-19 00:48:50.162+00	ADD	OPEN	2018-06-19 00:48:50.157946+00
2929	1610	2018-06-20 22:33:17.826+00	UPDATE	OPEN	2018-06-20 22:33:17.823852+00
2933	1570	2018-06-21 19:53:54.991+00	UPDATE	OPEN	2018-06-21 19:53:54.988291+00
2943	1660	2018-06-23 00:51:31.884+00	ADD	OPEN	2018-06-23 00:51:31.882431+00
2948	1530	2018-06-24 05:36:19.685+00	UPDATE	CONSTRUCTION	2018-06-24 05:36:19.683462+00
2952	1665	2018-06-26 02:32:20.571+00	ADD	PERMIT	2018-06-26 02:32:20.569206+00
2963	1250	2018-06-28 22:20:56.612+00	UPDATE	OPEN	2018-06-28 22:20:56.605662+00
2972	1645	2018-07-01 22:17:03.494+00	UPDATE	OPEN	2018-07-01 22:17:03.487071+00
2973	1105	2018-07-01 22:19:31.491+00	UPDATE	OPEN	2018-07-01 22:19:31.488067+00
2977	1670	2018-07-02 02:10:54.759+00	ADD	CONSTRUCTION	2018-07-02 02:10:54.75742+00
2987	1675	2018-07-03 11:34:19.978+00	ADD	OPEN	2018-07-03 11:34:19.944704+00
2995	1680	2018-07-14 06:11:41.309+00	ADD	OPEN	2018-07-14 06:11:41.239701+00
3007	1685	2018-07-31 08:33:36.123+00	ADD	CONSTRUCTION	2018-07-31 08:33:36.12175+00
3019	1690	2018-08-15 06:52:15.651+00	ADD	CONSTRUCTION	2018-08-15 06:52:15.648946+00
3026	1695	2018-08-21 22:01:49.014+00	ADD	OPEN	2018-08-21 22:01:49.010982+00
3036	1530	2018-08-31 14:38:26.709+00	UPDATE	OPEN	2018-08-31 14:38:26.70424+00
3038	1670	2018-08-31 21:13:44.562+00	UPDATE	OPEN	2018-08-31 21:13:44.559375+00
3044	985	2018-09-05 03:18:58.398+00	UPDATE	CONSTRUCTION	2018-09-05 03:18:58.396054+00
3046	1705	2018-09-05 22:12:33.389+00	ADD	PERMIT	2018-09-05 22:12:33.388113+00
3055	1710	2018-09-19 04:27:39.924+00	ADD	PERMIT	2018-09-19 04:27:39.920327+00
3060	1715	2018-09-24 13:29:08.712+00	ADD	PERMIT	2018-09-24 13:29:08.710662+00
3061	1715	2018-09-24 13:29:14.572+00	UPDATE	CONSTRUCTION	2018-09-24 13:29:14.570361+00
3062	1485	2018-09-24 23:51:35.858+00	UPDATE	OPEN	2018-09-24 23:51:35.855675+00
3065	1465	2018-09-27 21:53:26.36+00	UPDATE	OPEN	2018-09-27 21:53:26.357519+00
3067	1685	2018-09-29 00:14:30.396+00	UPDATE	OPEN	2018-09-29 00:14:30.392039+00
3070	1720	2018-09-30 06:12:56.623+00	ADD	CONSTRUCTION	2018-09-30 06:12:56.622002+00
3075	1615	2018-10-04 06:16:16.084+00	UPDATE	CONSTRUCTION	2018-10-04 06:16:16.081049+00
3080	1690	2018-10-06 05:18:15.245+00	UPDATE	OPEN	2018-10-06 05:18:15.240213+00
3082	1715	2018-10-07 03:46:15.685+00	UPDATE	OPEN	2018-10-07 03:46:15.674509+00
3084	1725	2018-10-11 05:01:36.12+00	ADD	PERMIT	2018-10-11 05:01:36.118507+00
3091	1730	2018-10-13 00:21:44.836+00	ADD	PERMIT	2018-10-13 00:21:44.834536+00
3099	1735	2018-10-19 11:44:05.417+00	ADD	PERMIT	2018-10-19 11:44:05.415765+00
3106	1740	2018-10-23 19:31:07.078+00	ADD	PERMIT	2018-10-23 19:31:07.077465+00
3095	985	2018-10-14 20:46:55.415+00	UPDATE	OPEN	2018-10-14 20:46:55.409067+00
3117	1735	2018-10-31 03:40:28.477+00	UPDATE	CONSTRUCTION	2018-10-31 03:40:28.473839+00
3122	1750	2018-11-03 00:44:39.052+00	ADD	CONSTRUCTION	2018-11-03 00:44:39.049269+00
3129	1755	2018-11-07 05:08:24.74+00	ADD	CONSTRUCTION	2018-11-07 05:08:24.738364+00
3132	1595	2018-11-09 04:58:36.41+00	UPDATE	CONSTRUCTION	2018-11-09 04:58:36.406116+00
3141	1520	2018-11-16 02:42:12.032+00	UPDATE	OPEN	2018-11-16 02:42:12.027926+00
3151	1770	2018-11-19 22:22:28.292+00	ADD	OPEN	2018-11-19 22:22:28.290092+00
3160	1635	2018-11-22 05:45:13.661+00	UPDATE	CONSTRUCTION	2018-11-22 05:45:13.656265+00
3162	1775	2018-11-25 12:33:40.356+00	ADD	PERMIT	2018-11-25 12:33:40.349009+00
3167	1780	2018-11-28 01:20:31.831+00	ADD	OPEN	2018-11-28 01:20:31.829127+00
3175	1710	2018-11-30 23:50:19.551+00	UPDATE	CONSTRUCTION	2018-11-30 23:50:19.548101+00
3176	1785	2018-12-01 00:09:40.858+00	ADD	CONSTRUCTION	2018-12-01 00:09:40.856569+00
3181	1790	2018-12-03 07:02:40.855+00	ADD	CONSTRUCTION	2018-12-03 07:02:40.852988+00
3184	1740	2018-12-05 08:08:58.36+00	UPDATE	CONSTRUCTION	2018-12-05 08:08:58.357428+00
3192	1775	2018-12-07 04:19:38.419+00	UPDATE	CONSTRUCTION	2018-12-07 04:19:38.415749+00
3194	1795	2018-12-09 05:03:52.278+00	ADD	CONSTRUCTION	2018-12-09 05:03:52.27542+00
3196	1750	2018-12-09 07:02:37.554+00	UPDATE	OPEN	2018-12-09 07:02:37.551564+00
3200	1800	2018-12-10 17:49:33.962+00	ADD	CONSTRUCTION	2018-12-10 17:49:33.961333+00
3212	1615	2018-12-15 21:53:28.349+00	UPDATE	OPEN	2018-12-15 21:53:28.338848+00
3213	1720	2018-12-16 21:10:39.778+00	UPDATE	OPEN	2018-12-16 21:10:39.774745+00
3215	1735	2018-12-19 09:09:07.718+00	UPDATE	OPEN	2018-12-19 09:09:07.71511+00
3218	1755	2018-12-20 00:08:36.518+00	UPDATE	OPEN	2018-12-20 00:08:36.498056+00
3219	1740	2018-12-20 01:34:46.552+00	UPDATE	OPEN	2018-12-20 01:34:46.546549+00
3221	1810	2018-12-20 08:43:37.041+00	ADD	CONSTRUCTION	2018-12-20 08:43:37.037379+00
3222	1795	2018-12-20 23:12:54.852+00	UPDATE	OPEN	2018-12-20 23:12:54.81425+00
3229	1815	2018-12-21 04:06:39.229+00	ADD	CONSTRUCTION	2018-12-21 04:06:39.22104+00
3240	1790	2018-12-23 06:25:32.373+00	UPDATE	OPEN	2018-12-23 06:25:32.369476+00
3241	1710	2018-12-24 03:03:59.565+00	UPDATE	OPEN	2018-12-24 03:03:59.562247+00
3242	1820	2018-12-25 06:56:42.755+00	ADD	CONSTRUCTION	2018-12-25 06:56:42.753717+00
3245	1595	2018-12-28 23:24:04.874+00	UPDATE	OPEN	2018-12-28 23:24:04.870379+00
3248	1825	2018-12-29 16:51:02.978+00	ADD	CONSTRUCTION	2018-12-29 16:51:02.976659+00
3255	1830	2019-01-02 01:18:28.647+00	ADD	CONSTRUCTION	2019-01-02 01:18:28.643896+00
3263	1835	2019-01-08 06:15:40.387+00	ADD	CONSTRUCTION	2019-01-08 06:15:40.385755+00
3271	1840	2019-01-16 15:00:57.942+00	ADD	PERMIT	2019-01-16 15:00:57.940622+00
3281	1785	2019-01-25 03:04:01.313+00	UPDATE	OPEN	2019-01-25 03:04:01.309888+00
3278	1845	2019-01-23 03:26:39.644+00	ADD	OPEN	2019-01-23 03:26:39.642018+00
3285	1850	2019-01-27 22:41:42.861+00	ADD	CONSTRUCTION	2019-01-27 22:41:42.859642+00
3290	1855	2019-01-28 21:27:58.11+00	ADD	PERMIT	2019-01-28 21:27:58.107773+00
3294	1815	2019-01-31 00:56:01.183+00	UPDATE	OPEN	2019-01-31 00:56:01.180474+00
3295	1825	2019-01-31 12:16:03.09+00	UPDATE	OPEN	2019-01-31 12:16:03.083788+00
3299	1775	2019-02-05 22:21:35.689+00	UPDATE	OPEN	2019-02-05 22:21:35.674624+00
3303	1860	2019-02-09 05:52:01.749+00	ADD	CONSTRUCTION	2019-02-09 05:52:01.723701+00
3310	1865	2019-02-11 22:21:03.239+00	ADD	PERMIT	2019-02-11 22:21:03.231403+00
3313	1865	2019-02-13 05:22:16.209+00	UPDATE	CONSTRUCTION	2019-02-13 05:22:16.20586+00
3317	1830	2019-02-14 13:00:38.023+00	UPDATE	OPEN	2019-02-14 13:00:38.018897+00
3318	1820	2019-02-14 22:35:20.43+00	UPDATE	OPEN	2019-02-14 22:35:20.426537+00
3322	1835	2019-02-16 03:26:50.503+00	UPDATE	OPEN	2019-02-16 03:26:50.499041+00
3330	1635	2019-02-20 08:41:30.618+00	UPDATE	OPEN	2019-02-20 08:41:30.615591+00
3331	1870	2019-02-20 22:27:02.824+00	ADD	OPEN	2019-02-20 22:27:02.819898+00
3332	1705	2019-02-20 22:38:04.744+00	UPDATE	CONSTRUCTION	2019-02-20 22:38:04.7417+00
3337	1875	2019-02-28 09:29:51.224+00	ADD	CONSTRUCTION	2019-02-28 09:29:51.220975+00
3342	1850	2019-03-06 01:50:28.959+00	UPDATE	OPEN	2019-03-06 01:50:28.946328+00
3347	1880	2019-03-09 22:05:34.882+00	ADD	CONSTRUCTION	2019-03-09 22:05:34.878031+00
3353	1810	2019-03-13 14:57:53.086+00	UPDATE	OPEN	2019-03-13 14:57:53.076969+00
3355	1885	2019-03-14 05:00:09.7+00	ADD	OPEN	2019-03-14 05:00:09.692401+00
3359	1665	2019-03-16 21:04:08.58+00	UPDATE	CONSTRUCTION	2019-03-16 21:04:08.573025+00
3363	1890	2019-03-19 10:47:27.089+00	ADD	PERMIT	2019-03-19 10:47:27.080044+00
3369	1895	2019-03-20 20:55:29.505+00	ADD	OPEN	2019-03-20 20:55:29.498369+00
3374	1620	2019-03-22 20:30:22.087+00	UPDATE	OPEN	2019-03-22 20:30:22.074696+00
3377	1900	2019-03-26 00:51:06.48+00	ADD	OPEN	2019-03-26 00:51:06.474817+00
3382	1905	2019-03-27 04:34:58.679+00	ADD	PERMIT	2019-03-27 04:34:58.676759+00
3386	1880	2019-03-29 05:26:35.611+00	UPDATE	OPEN	2019-03-29 05:26:35.605412+00
3396	1910	2019-03-30 20:20:38.087+00	ADD	OPEN	2019-03-30 20:20:38.083843+00
3403	1915	2019-04-02 03:56:07.352+00	ADD	OPEN	2019-04-02 03:56:07.3461+00
3410	1920	2019-04-03 05:32:44.587+00	ADD	OPEN	2019-04-03 05:32:44.585932+00
3416	1725	2019-04-05 22:55:47.88+00	UPDATE	CONSTRUCTION	2019-04-05 22:55:47.861204+00
3420	1925	2019-04-09 05:48:51.726+00	ADD	CONSTRUCTION	2019-04-09 05:48:51.722149+00
3426	1930	2019-04-11 23:41:55.405+00	ADD	PERMIT	2019-04-11 23:41:55.402833+00
3429	1930	2019-04-13 06:20:40.028+00	UPDATE	CONSTRUCTION	2019-04-13 06:20:40.023223+00
3432	1935	2019-04-15 08:10:59.045+00	ADD	CONSTRUCTION	2019-04-15 08:10:59.042601+00
3442	1940	2019-04-19 08:34:50.488+00	ADD	CONSTRUCTION	2019-04-19 08:34:50.485803+00
3450	1860	2019-04-26 19:30:10.346+00	UPDATE	OPEN	2019-04-26 19:30:10.343216+00
3451	1945	2019-04-26 19:40:33.2+00	ADD	PERMIT	2019-04-26 19:40:33.197049+00
3453	1840	2019-04-26 23:19:16.037+00	UPDATE	CONSTRUCTION	2019-04-26 23:19:16.031851+00
3459	1950	2019-04-28 22:07:00.982+00	ADD	PERMIT	2019-04-28 22:07:00.979476+00
3468	1730	2019-05-03 22:21:43.247+00	UPDATE	CONSTRUCTION	2019-05-03 22:21:43.244434+00
3474	1955	2019-05-05 02:10:44.103+00	ADD	CONSTRUCTION	2019-05-05 02:10:44.101393+00
3480	1625	2019-05-07 22:24:41.814+00	UPDATE	CONSTRUCTION	2019-05-07 22:24:41.811291+00
3483	1960	2019-05-08 13:20:45.116+00	ADD	OPEN	2019-05-08 13:20:45.114828+00
3486	1945	2019-05-08 18:49:53.893+00	UPDATE	CONSTRUCTION	2019-05-08 18:49:53.891406+00
3496	1965	2019-05-11 15:50:03.789+00	ADD	CONSTRUCTION	2019-05-11 15:50:03.786998+00
3511	1970	2019-05-20 04:02:03.509+00	ADD	PERMIT	2019-05-20 04:02:03.494325+00
3516	1975	2019-05-21 18:15:37.974+00	ADD	CONSTRUCTION	2019-05-21 18:15:37.969779+00
3524	1980	2019-05-23 05:56:58.535+00	ADD	OPEN	2019-05-23 05:56:58.531792+00
3530	1725	2019-05-25 02:54:20.202+00	UPDATE	OPEN	2019-05-25 02:54:20.184467+00
3535	1985	2019-05-27 10:56:43.5+00	ADD	CONSTRUCTION	2019-05-27 10:56:43.491595+00
3543	1840	2019-05-30 15:37:19.408+00	UPDATE	OPEN	2019-05-30 15:37:19.403459+00
3545	1990	2019-06-01 21:20:23.89+00	ADD	CONSTRUCTION	2019-06-01 21:20:23.886255+00
3556	1995	2019-06-08 00:14:16.323+00	ADD	CONSTRUCTION	2019-06-08 00:14:16.221078+00
3566	2000	2019-06-13 13:08:19.357+00	ADD	OPEN	2019-06-13 13:08:19.346203+00
3579	2005	2019-06-15 06:15:56.986+00	ADD	PERMIT	2019-06-15 06:15:56.982594+00
3589	2010	2019-06-18 18:06:41.536+00	ADD	CONSTRUCTION	2019-06-18 18:06:41.479072+00
3593	1705	2019-06-19 06:37:24.474+00	UPDATE	OPEN	2019-06-19 06:37:24.459029+00
3602	1995	2019-06-22 07:03:38.238+00	UPDATE	OPEN	2019-06-22 07:03:38.232341+00
3603	2015	2019-06-22 13:29:14.229+00	ADD	CONSTRUCTION	2019-06-22 13:29:14.226134+00
3611	2010	2019-06-25 13:18:33.833+00	UPDATE	OPEN	2019-06-25 13:18:33.825734+00
3619	2020	2019-06-28 13:38:53.807+00	ADD	OPEN	2019-06-28 13:38:53.790202+00
3627	2025	2019-06-30 16:35:42.988+00	ADD	CONSTRUCTION	2019-06-30 16:35:42.982331+00
3634	2030	2019-07-02 02:15:28.49+00	ADD	CONSTRUCTION	2019-07-02 02:15:28.486582+00
3635	1955	2019-07-02 04:57:29.822+00	UPDATE	OPEN	2019-07-02 04:57:29.817727+00
3639	1855	2019-07-05 04:51:15.019+00	UPDATE	CONSTRUCTION	2019-07-05 04:51:15.01648+00
3640	1625	2019-07-05 04:52:16.443+00	UPDATE	OPEN	2019-07-05 04:52:16.428741+00
3645	2035	2019-07-07 00:04:12.12+00	ADD	CONSTRUCTION	2019-07-07 00:04:12.118965+00
3652	665	2019-07-08 21:00:30.144+00	UPDATE	CLOSED_TEMP	2019-07-08 21:00:30.141387+00
3653	2040	2019-07-08 23:52:31.252+00	ADD	PERMIT	2019-07-08 23:52:31.250942+00
3661	2045	2019-07-11 19:09:05.1+00	ADD	PERMIT	2019-07-11 19:09:05.099266+00
3668	1665	2019-07-13 23:58:02.585+00	UPDATE	OPEN	2019-07-13 23:58:02.583034+00
3669	1965	2019-07-14 00:15:42.915+00	UPDATE	OPEN	2019-07-14 00:15:42.912615+00
3671	1800	2019-07-16 02:27:56.652+00	UPDATE	OPEN	2019-07-16 02:27:56.64978+00
3674	2050	2019-07-18 00:29:53.457+00	ADD	CONSTRUCTION	2019-07-18 00:29:53.455779+00
3679	2055	2019-07-18 19:21:59.717+00	ADD	PERMIT	2019-07-18 19:21:59.716285+00
3690	2060	2019-07-22 01:16:39.235+00	ADD	PERMIT	2019-07-22 01:16:39.23442+00
3691	1555	2019-07-22 01:17:46.035+00	UPDATE	CONSTRUCTION	2019-07-22 01:17:46.033741+00
3701	2065	2019-07-26 12:29:55.791+00	ADD	PERMIT	2019-07-26 12:29:55.789853+00
3704	1925	2019-07-27 01:55:23.722+00	UPDATE	OPEN	2019-07-27 01:55:23.718764+00
3712	665	2019-07-30 11:26:30.687+00	UPDATE	OPEN	2019-07-30 11:26:30.683664+00
3714	2070	2019-08-01 21:10:54.083+00	ADD	CONSTRUCTION	2019-08-01 21:10:54.08183+00
3715	1730	2019-08-02 18:18:24.029+00	UPDATE	OPEN	2019-08-02 18:18:24.026864+00
3721	2040	2019-08-06 20:32:44.263+00	UPDATE	CONSTRUCTION	2019-08-06 20:32:44.261036+00
3726	1890	2019-08-09 06:51:56.59+00	UPDATE	CONSTRUCTION	2019-08-09 06:51:56.586843+00
3730	1975	2019-08-09 16:44:42.612+00	UPDATE	OPEN	2019-08-09 16:44:42.607692+00
3735	2075	2019-08-15 16:35:16.07+00	ADD	PERMIT	2019-08-15 16:35:16.068153+00
3743	2080	2019-08-21 10:04:00.038+00	ADD	PERMIT	2019-08-21 10:04:00.036524+00
3750	2085	2019-08-28 06:53:02.79+00	ADD	PERMIT	2019-08-28 06:53:02.786927+00
3755	1565	2019-08-29 18:02:31.182+00	UPDATE	CONSTRUCTION	2019-08-29 18:02:31.18107+00
3760	2090	2019-09-02 01:26:22.298+00	ADD	CONSTRUCTION	2019-09-02 01:26:22.295743+00
3769	2095	2019-09-04 14:28:41.596+00	ADD	CONSTRUCTION	2019-09-04 14:28:41.595159+00
3771	535	2019-09-05 15:52:15.756+00	UPDATE	CLOSED_TEMP	2019-09-05 15:52:15.754376+00
3779	2100	2019-09-10 19:29:08.474+00	ADD	PERMIT	2019-09-10 19:29:08.472614+00
3780	1905	2019-09-10 21:31:11.091+00	UPDATE	CONSTRUCTION	2019-09-10 21:31:11.084423+00
3794	2105	2019-09-19 23:25:16.544+00	ADD	PERMIT	2019-09-19 23:25:16.543152+00
3803	2110	2019-09-22 11:48:48.97+00	ADD	PERMIT	2019-09-22 11:48:48.969324+00
3810	2030	2019-09-24 14:27:58.302+00	UPDATE	OPEN	2019-09-24 14:27:58.300326+00
3814	2030	2019-09-25 17:44:03.422+00	UPDATE	CONSTRUCTION	2019-09-25 17:44:03.420342+00
3816	2030	2019-09-26 20:55:23.217+00	UPDATE	OPEN	2019-09-26 20:55:23.215017+00
3820	1970	2019-09-28 01:51:39.68+00	UPDATE	CONSTRUCTION	2019-09-28 01:51:39.67861+00
3828	2120	2019-10-01 21:35:05.565+00	ADD	CONSTRUCTION	2019-10-01 21:35:05.563041+00
3833	2125	2019-10-03 09:14:06.166+00	ADD	OPEN	2019-10-03 09:14:06.165025+00
3836	2005	2019-10-04 02:18:24.66+00	UPDATE	CONSTRUCTION	2019-10-04 02:18:24.658286+00
3840	2045	2019-10-05 00:10:53.65+00	UPDATE	CONSTRUCTION	2019-10-05 00:10:53.648378+00
3847	2130	2019-10-07 20:22:19.111+00	ADD	CONSTRUCTION	2019-10-07 20:22:19.109781+00
3849	2100	2019-10-07 23:37:32.953+00	UPDATE	CONSTRUCTION	2019-10-07 23:37:32.951586+00
3868	2140	2019-10-15 17:31:41.875+00	ADD	PERMIT	2019-10-15 17:31:41.874577+00
3874	2145	2019-10-16 06:30:41.446+00	ADD	CONSTRUCTION	2019-10-16 06:30:41.445013+00
3890	1935	2019-10-22 16:56:33.132+00	UPDATE	OPEN	2019-10-22 16:56:33.130252+00
3891	1940	2019-10-22 20:25:06.603+00	UPDATE	OPEN	2019-10-22 20:25:06.59963+00
3898	2135	2019-10-24 17:13:31.584+00	UPDATE	OPEN	2019-10-24 17:13:31.582262+00
3906	585	2019-10-28 07:57:06.091+00	UPDATE	CLOSED_PERM	2019-10-28 07:57:06.088162+00
3916	2060	2019-10-30 22:43:25.436+00	UPDATE	CONSTRUCTION	2019-10-30 22:43:25.432989+00
3977	2185	2019-11-25 09:07:02.202+00	UPDATE	CONSTRUCTION	2019-11-25 09:07:02.199828+00
3894	2150	2019-10-23 13:17:06.673+00	ADD	CONSTRUCTION	2019-10-23 13:17:06.665525+00
3896	1945	2019-10-24 05:57:03.583+00	UPDATE	OPEN	2019-10-24 05:57:03.580695+00
3925	2170	2019-11-03 19:27:13.492+00	ADD	CONSTRUCTION	2019-11-03 19:27:13.490318+00
3987	2195	2019-11-27 20:45:26.454+00	ADD	PERMIT	2019-11-27 20:45:26.452843+00
3988	2195	2019-11-27 20:45:31.529+00	UPDATE	CONSTRUCTION	2019-11-27 20:45:31.526509+00
3998	2200	2019-12-02 16:26:26.848+00	ADD	CONSTRUCTION	2019-12-02 16:26:26.847067+00
4007	1990	2019-12-04 21:06:35.026+00	UPDATE	OPEN	2019-12-04 21:06:35.024383+00
4010	2205	2019-12-05 02:36:45.732+00	ADD	PERMIT	2019-12-05 02:36:45.731483+00
4016	1990	2019-12-06 18:14:08.746+00	UPDATE	CLOSED_TEMP	2019-12-06 18:14:08.744264+00
4022	1855	2019-12-07 18:12:00.717+00	UPDATE	OPEN	2019-12-07 18:12:00.715+00
3863	2110	2019-10-13 17:45:05.314+00	UPDATE	CONSTRUCTION	2019-10-13 17:45:05.313077+00
3878	2145	2019-10-16 23:06:53.787+00	UPDATE	OPEN	2019-10-16 23:06:53.785368+00
3922	535	2019-11-01 11:25:09.272+00	UPDATE	OPEN	2019-11-01 11:25:09.270655+00
3934	2175	2019-11-06 20:15:17.312+00	ADD	CONSTRUCTION	2019-11-06 20:15:17.310525+00
4028	1990	2019-12-12 15:47:53.098+00	UPDATE	OPEN	2019-12-12 15:47:53.096658+00
4033	2140	2019-12-13 00:02:27.479+00	UPDATE	OPEN	2019-12-13 00:02:27.476112+00
4035	1555	2019-12-13 07:00:20.421+00	UPDATE	OPEN	2019-12-13 07:00:20.420228+00
3859	2135	2019-10-12 20:56:16.762+00	ADD	CONSTRUCTION	2019-10-12 20:56:16.761712+00
3871	1950	2019-10-15 18:05:51.208+00	UPDATE	CONSTRUCTION	2019-10-15 18:05:51.204901+00
3882	1560	2019-10-17 23:29:02.786+00	UPDATE	CONSTRUCTION	2019-10-17 23:29:02.783883+00
3889	2090	2019-10-19 21:52:27.779+00	UPDATE	OPEN	2019-10-19 21:52:27.777841+00
3951	2070	2019-11-14 13:28:29.823+00	UPDATE	OPEN	2019-11-14 13:28:29.822064+00
3963	2190	2019-11-20 16:28:48.113+00	ADD	PERMIT	2019-11-20 16:28:48.112104+00
3918	2165	2019-10-31 03:31:07.272+00	ADD	CONSTRUCTION	2019-10-31 03:31:07.270881+00
3932	2150	2019-11-05 21:10:06.604+00	UPDATE	OPEN	2019-11-05 21:10:06.600529+00
3944	2180	2019-11-11 20:58:21.669+00	ADD	OPEN	2019-11-11 20:58:21.668555+00
3950	2185	2019-11-13 23:43:45.235+00	ADD	PERMIT	2019-11-13 23:43:45.234181+00
4000	2190	2019-12-03 19:05:25.406+00	UPDATE	CONSTRUCTION	2019-12-03 19:05:25.404124+00
4044	2210	2019-12-14 15:37:17.519+00	ADD	CONSTRUCTION	2019-12-14 15:37:17.518793+00
4047	1990	2019-12-15 04:24:49.77+00	UPDATE	CONSTRUCTION	2019-12-15 04:24:49.766874+00
4053	1990	2019-12-18 09:56:34.219+00	UPDATE	OPEN	2019-12-18 09:56:34.213858+00
4055	2040	2019-12-18 21:04:47.104+00	UPDATE	OPEN	2019-12-18 21:04:47.100871+00
4059	1865	2019-12-19 18:16:59.006+00	UPDATE	OPEN	2019-12-19 18:16:59.000446+00
4060	2215	2019-12-19 20:53:54.82+00	ADD	OPEN	2019-12-19 20:53:54.818551+00
4069	2220	2019-12-20 23:26:26.261+00	ADD	OPEN	2019-12-20 23:26:26.254949+00
4078	2025	2019-12-20 23:57:22.558+00	UPDATE	OPEN	2019-12-20 23:57:22.554438+00
4081	2170	2019-12-20 23:58:43.174+00	UPDATE	OPEN	2019-12-20 23:58:43.170443+00
4091	1555	2019-12-21 19:41:20.538+00	UPDATE	CLOSED_TEMP	2019-12-21 19:41:20.53456+00
4096	1555	2019-12-23 22:05:54.156+00	UPDATE	OPEN	2019-12-23 22:05:54.153271+00
4101	2225	2019-12-23 22:17:09.852+00	ADD	OPEN	2019-12-23 22:17:09.848314+00
4103	2035	2019-12-23 23:05:38.061+00	UPDATE	OPEN	2019-12-23 23:05:38.056267+00
4106	2190	2019-12-24 13:09:03.878+00	UPDATE	OPEN	2019-12-24 13:09:03.875981+00
4108	2175	2019-12-26 11:00:39.663+00	UPDATE	OPEN	2019-12-26 11:00:39.660869+00
4112	2230	2019-12-27 01:42:18.734+00	ADD	PERMIT	2019-12-27 01:42:18.724894+00
4115	2210	2019-12-28 15:27:22.066+00	UPDATE	OPEN	2019-12-28 15:27:22.061268+00
4122	2235	2020-01-02 22:40:30.382+00	ADD	PERMIT	2020-01-02 22:40:30.380888+00
4128	2235	2020-01-08 00:09:38.472+00	UPDATE	CONSTRUCTION	2020-01-08 00:09:38.470119+00
4133	2240	2020-01-09 16:45:15.238+00	ADD	PERMIT	2020-01-09 16:45:15.23564+00
4138	1890	2020-01-13 19:06:59.571+00	UPDATE	OPEN	2020-01-13 19:06:59.568973+00
4141	2245	2020-01-15 22:25:12.538+00	ADD	PERMIT	2020-01-15 22:25:12.53646+00
4214	2075	2020-02-08 00:11:52.88+00	UPDATE	CONSTRUCTION	2020-02-08 00:11:52.877968+00
4215	2280	2020-02-08 00:16:30.962+00	UPDATE	OPEN	2020-02-08 00:16:30.960064+00
4247	2295	2020-02-19 21:09:50.626+00	ADD	PERMIT	2020-02-19 21:09:50.625282+00
4250	2265	2020-02-21 10:46:11.004+00	UPDATE	OPEN	2020-02-21 10:46:11.002835+00
4253	2005	2020-02-21 22:04:36.766+00	UPDATE	OPEN	2020-02-21 22:04:36.764516+00
4274	1970	2020-02-27 23:22:25.461+00	UPDATE	OPEN	2020-02-27 23:22:25.459188+00
4284	2315	2020-03-02 17:25:31.398+00	ADD	PERMIT	2020-03-02 17:25:31.397813+00
4293	2320	2020-03-05 00:19:09.717+00	ADD	CONSTRUCTION	2020-03-05 00:19:09.715481+00
4299	2050	2020-03-06 22:33:16.989+00	UPDATE	OPEN	2020-03-06 22:33:16.987934+00
4304	2290	2020-03-07 12:54:16.219+00	UPDATE	CONSTRUCTION	2020-03-07 12:54:16.217344+00
4326	2330	2020-03-15 23:32:49.945+00	ADD	CONSTRUCTION	2020-03-15 23:32:49.944434+00
4342	2195	2020-03-24 12:36:13.682+00	UPDATE	OPEN	2020-03-24 12:36:13.679219+00
4175	2265	2020-01-29 11:55:14.826+00	ADD	CONSTRUCTION	2020-01-29 11:55:14.824203+00
4190	2275	2020-02-02 00:26:22.563+00	ADD	CONSTRUCTION	2020-02-02 00:26:22.562355+00
4217	2280	2020-02-08 08:00:18.965+00	UPDATE	CONSTRUCTION	2020-02-08 08:00:18.963171+00
4221	2100	2020-02-10 00:19:47.25+00	UPDATE	OPEN	2020-02-10 00:19:47.248456+00
4228	2290	2020-02-12 21:04:27.971+00	ADD	PERMIT	2020-02-12 21:04:27.970189+00
4229	1950	2020-02-13 20:12:30.825+00	UPDATE	OPEN	2020-02-13 20:12:30.823427+00
4231	2025	2020-02-14 12:21:39.217+00	UPDATE	CLOSED_TEMP	2020-02-14 12:21:39.21092+00
4237	2280	2020-02-15 15:10:40.673+00	UPDATE	OPEN	2020-02-15 15:10:40.671448+00
4240	1950	2020-02-15 23:18:07.261+00	UPDATE	CLOSED_TEMP	2020-02-15 23:18:07.259453+00
4256	1950	2020-02-23 07:42:04.671+00	UPDATE	OPEN	2020-02-23 07:42:04.665922+00
4272	2305	2020-02-27 15:50:59.403+00	ADD	PERMIT	2020-02-27 15:50:59.402624+00
4278	2310	2020-02-29 01:28:26.222+00	ADD	CONSTRUCTION	2020-02-29 01:28:26.220723+00
4279	2255	2020-02-29 01:33:14.987+00	UPDATE	OPEN	2020-02-29 01:33:14.985309+00
4147	2250	2020-01-17 11:40:18.119+00	ADD	PERMIT	2020-01-17 11:40:18.11627+00
4164	2260	2020-01-26 01:51:46.983+00	ADD	CONSTRUCTION	2020-01-26 01:51:46.981643+00
4166	2260	2020-01-27 18:40:10.572+00	UPDATE	OPEN	2020-01-27 18:40:10.569778+00
4182	2270	2020-01-30 13:58:06.601+00	ADD	PERMIT	2020-01-30 13:58:06.600315+00
4308	2325	2020-03-09 20:46:36.764+00	ADD	PERMIT	2020-03-09 20:46:36.759732+00
4311	2025	2020-03-12 19:36:54.425+00	UPDATE	OPEN	2020-03-12 19:36:54.423572+00
4357	2340	2020-03-28 15:04:58.178+00	ADD	PERMIT	2020-03-28 15:04:58.177012+00
4155	2255	2020-01-20 23:33:00.409+00	ADD	CONSTRUCTION	2020-01-20 23:33:00.408235+00
4171	1930	2020-01-29 00:45:05.05+00	UPDATE	OPEN	2020-01-29 00:45:05.048177+00
4176	2095	2020-01-29 12:20:15.414+00	UPDATE	OPEN	2020-01-29 12:20:15.412182+00
4209	2110	2020-02-06 20:52:23.491+00	UPDATE	OPEN	2020-02-06 20:52:23.489647+00
4291	2050	2020-03-04 01:38:43.562+00	UPDATE	CLOSED_TEMP	2020-03-04 01:38:43.559314+00
4197	2280	2020-02-03 21:34:28.137+00	ADD	OPEN	2020-02-03 21:34:28.136094+00
4206	2285	2020-02-05 22:20:27.376+00	ADD	CONSTRUCTION	2020-02-05 22:20:27.375325+00
4208	2050	2020-02-06 18:04:37.079+00	UPDATE	OPEN	2020-02-06 18:04:37.077245+00
4211	2280	2020-02-07 12:10:00.069+00	UPDATE	CONSTRUCTION	2020-02-07 12:10:00.059706+00
4259	2300	2020-02-24 12:46:03.211+00	ADD	PERMIT	2020-02-24 12:46:03.210584+00
4266	2060	2020-02-26 03:42:28.561+00	UPDATE	OPEN	2020-02-26 03:42:28.559417+00
4314	2185	2020-03-13 15:03:51.018+00	UPDATE	OPEN	2020-03-13 15:03:51.015487+00
4317	2085	2020-03-14 04:20:41.959+00	UPDATE	CONSTRUCTION	2020-03-14 04:20:41.957477+00
4322	1715	2020-03-14 22:23:29.494+00	UPDATE	CLOSED_TEMP	2020-03-14 22:23:29.492621+00
4323	1715	2020-03-14 22:23:43.334+00	UPDATE	OPEN	2020-03-14 22:23:43.33275+00
4358	2045	2020-03-28 22:10:38.62+00	UPDATE	OPEN	2020-03-28 22:10:38.618626+00
4375	2350	2020-04-06 08:13:46.205+00	ADD	OPEN	2020-04-06 08:13:46.202131+00
4378	2085	2020-04-07 15:29:33.873+00	UPDATE	OPEN	2020-04-07 15:29:33.870787+00
4385	2355	2020-04-13 18:29:10.156+00	ADD	PERMIT	2020-04-13 18:29:10.155185+00
4389	2355	2020-04-14 19:07:23.709+00	UPDATE	CONSTRUCTION	2020-04-14 19:07:23.704491+00
4392	2360	2020-04-18 08:02:22.808+00	ADD	CONSTRUCTION	2020-04-18 08:02:22.807099+00
4397	2365	2020-04-21 19:34:26.844+00	ADD	PERMIT	2020-04-21 19:34:26.842921+00
4403	2330	2020-04-25 16:15:00.912+00	UPDATE	OPEN	2020-04-25 16:15:00.909063+00
4406	2370	2020-04-27 20:58:50.467+00	ADD	CONSTRUCTION	2020-04-27 20:58:50.466856+00
4421	2375	2020-05-18 12:43:37.185+00	ADD	CONSTRUCTION	2020-05-18 12:43:37.176742+00
4432	2380	2020-05-24 18:30:55.314+00	ADD	PERMIT	2020-05-24 18:30:55.313057+00
4437	2385	2020-05-25 16:36:29.488+00	ADD	PERMIT	2020-05-25 16:36:29.485026+00
4445	1560	2020-05-29 10:36:33.348+00	UPDATE	OPEN	2020-05-29 10:36:33.344186+00
4446	2390	2020-05-29 22:04:22.323+00	ADD	PERMIT	2020-05-29 22:04:22.321148+00
4448	2275	2020-05-31 12:14:29.197+00	UPDATE	OPEN	2020-05-31 12:14:29.185219+00
4454	2395	2020-06-08 21:16:01.745+00	ADD	PERMIT	2020-06-08 21:16:01.740982+00
4462	2370	2020-06-11 23:42:14.448+00	UPDATE	OPEN	2020-06-11 23:42:14.445389+00
4466	2400	2020-06-13 02:52:04.209+00	ADD	CONSTRUCTION	2020-06-13 02:52:04.20793+00
4468	2310	2020-06-13 14:46:52.049+00	UPDATE	OPEN	2020-06-13 14:46:52.046167+00
4473	2385	2020-06-16 13:34:28.788+00	UPDATE	CONSTRUCTION	2020-06-16 13:34:28.784005+00
4475	1565	2020-06-17 20:49:39.638+00	UPDATE	OPEN	2020-06-17 20:49:39.63594+00
4483	1905	2020-06-20 18:42:45.553+00	UPDATE	OPEN	2020-06-20 18:42:45.541367+00
4488	2405	2020-06-22 23:31:08.625+00	ADD	CONSTRUCTION	2020-06-22 23:31:08.621869+00
4489	2380	2020-06-23 01:51:27.148+00	UPDATE	CONSTRUCTION	2020-06-23 01:51:27.146153+00
4504	2410	2020-06-29 15:40:13.213+00	ADD	OPEN	2020-06-29 15:40:13.205843+00
4506	2360	2020-06-29 22:51:30.961+00	UPDATE	OPEN	2020-06-29 22:51:30.957338+00
4508	1985	2020-06-30 10:05:07.799+00	UPDATE	OPEN	2020-06-30 10:05:07.795241+00
4514	2355	2020-07-02 01:19:57.414+00	UPDATE	OPEN	2020-07-02 01:19:57.40689+00
4515	2405	2020-07-02 01:22:08.08+00	UPDATE	OPEN	2020-07-02 01:22:08.0778+00
4521	2415	2020-07-06 16:13:34.433+00	ADD	OPEN	2020-07-06 16:13:34.431373+00
4527	2235	2020-07-09 01:13:21.551+00	UPDATE	OPEN	2020-07-09 01:13:21.546645+00
4532	2420	2020-07-12 02:16:31.118+00	ADD	CONSTRUCTION	2020-07-12 02:16:31.117391+00
4548	2425	2020-07-21 23:45:40.966+00	ADD	CONSTRUCTION	2020-07-21 23:45:40.957928+00
4560	2430	2020-07-26 01:31:30.309+00	ADD	PERMIT	2020-07-26 01:31:30.30372+00
4561	2425	2020-07-27 21:29:22.542+00	UPDATE	OPEN	2020-07-27 21:29:22.538505+00
4568	2435	2020-07-29 20:05:13.485+00	ADD	PERMIT	2020-07-29 20:05:13.461305+00
4576	2315	2020-08-01 01:00:07.587+00	UPDATE	CONSTRUCTION	2020-08-01 01:00:07.585205+00
4582	2300	2020-08-02 17:52:46.847+00	UPDATE	CONSTRUCTION	2020-08-02 17:52:46.845177+00
4584	2440	2020-08-03 02:37:30.048+00	ADD	PERMIT	2020-08-03 02:37:30.04693+00
4585	2365	2020-08-04 18:56:26.974+00	UPDATE	CONSTRUCTION	2020-08-04 18:56:26.965471+00
4587	2165	2020-08-05 11:27:08.551+00	UPDATE	OPEN	2020-08-05 11:27:08.54729+00
4593	2380	2020-08-06 15:13:22.239+00	UPDATE	OPEN	2020-08-06 15:13:22.236289+00
4595	2445	2020-08-08 01:10:20.59+00	ADD	PERMIT	2020-08-08 01:10:20.588437+00
4599	2295	2020-08-08 19:22:02.478+00	UPDATE	CONSTRUCTION	2020-08-08 19:22:02.470953+00
4601	2440	2020-08-10 02:19:07.827+00	UPDATE	CONSTRUCTION	2020-08-10 02:19:07.821215+00
4608	2450	2020-08-12 07:40:14.479+00	ADD	PERMIT	2020-08-12 07:40:14.478009+00
4618	2455	2020-08-17 19:44:49.676+00	ADD	CONSTRUCTION	2020-08-17 19:44:49.667485+00
4623	2445	2020-08-19 01:05:14.077+00	UPDATE	CONSTRUCTION	2020-08-19 01:05:14.07536+00
4626	2460	2020-08-21 16:16:33.664+00	ADD	CONSTRUCTION	2020-08-21 16:16:33.656625+00
4627	2365	2020-08-21 17:48:18.545+00	UPDATE	OPEN	2020-08-21 17:48:18.538097+00
4634	2375	2020-08-24 18:58:40.768+00	UPDATE	OPEN	2020-08-24 18:58:40.766075+00
4636	2075	2020-08-25 17:47:16.892+00	UPDATE	OPEN	2020-08-25 17:47:16.890506+00
4639	2315	2020-08-26 23:00:58.476+00	UPDATE	OPEN	2020-08-26 23:00:58.474645+00
4641	2465	2020-08-27 03:03:08.343+00	ADD	CONSTRUCTION	2020-08-27 03:03:08.342459+00
4648	2470	2020-08-29 20:03:36.046+00	ADD	PERMIT	2020-08-29 20:03:36.044542+00
4654	2475	2020-08-31 22:25:13.914+00	ADD	CONSTRUCTION	2020-08-31 22:25:13.912661+00
4659	2290	2020-09-03 12:23:51.593+00	UPDATE	OPEN	2020-09-03 12:23:51.590468+00
4667	2280	2020-09-04 18:35:04.548+00	UPDATE	CLOSED_PERM	2020-09-04 18:35:04.544991+00
4668	2455	2020-09-04 18:57:18.138+00	UPDATE	OPEN	2020-09-04 18:57:18.136744+00
4670	2480	2020-09-04 21:30:05.041+00	ADD	PERMIT	2020-09-04 21:30:05.040091+00
4671	665	2020-09-05 09:42:07.129+00	UPDATE	CLOSED_TEMP	2020-09-05 09:42:07.126076+00
4677	2465	2020-09-07 02:11:21.424+00	UPDATE	OPEN	2020-09-07 02:11:21.42278+00
4686	2145	2020-09-09 12:56:37.24+00	UPDATE	OPEN	2020-09-09 12:56:37.237719+00
4687	2485	2020-09-09 16:47:26.124+00	ADD	CONSTRUCTION	2020-09-09 16:47:26.117318+00
4689	2470	2020-09-09 19:38:45.931+00	UPDATE	CONSTRUCTION	2020-09-09 19:38:45.924248+00
4695	2485	2020-09-11 12:40:09.98+00	UPDATE	PERMIT	2020-09-11 12:40:09.977427+00
4696	2490	2020-09-11 16:18:55.13+00	ADD	CONSTRUCTION	2020-09-11 16:18:55.124676+00
4700	2065	2020-09-12 23:55:41.982+00	UPDATE	CONSTRUCTION	2020-09-12 23:55:41.973562+00
4706	2495	2020-09-14 23:46:22.514+00	ADD	PERMIT	2020-09-14 23:46:22.503417+00
4715	2500	2020-09-17 12:01:54.273+00	ADD	PERMIT	2020-09-17 12:01:54.272574+00
4726	2245	2020-09-19 14:46:43.592+00	UPDATE	CONSTRUCTION	2020-09-19 14:46:43.589437+00
4728	2505	2020-09-19 21:22:30.493+00	ADD	PERMIT	2020-09-19 21:22:30.491586+00
4734	2510	2020-09-20 14:55:40.028+00	ADD	CONSTRUCTION	2020-09-20 14:55:40.0214+00
4743	2515	2020-09-24 11:14:27.319+00	ADD	PERMIT	2020-09-24 11:14:27.310249+00
4745	2295	2020-09-24 21:27:23.894+00	UPDATE	OPEN	2020-09-24 21:27:23.886899+00
4751	2520	2020-09-26 07:54:02.449+00	ADD	CONSTRUCTION	2020-09-26 07:54:02.443816+00
4763	2475	2020-10-01 13:25:49.446+00	UPDATE	OPEN	2020-10-01 13:25:49.436408+00
4764	2450	2020-10-01 13:44:08.254+00	UPDATE	CONSTRUCTION	2020-10-01 13:44:08.249845+00
4766	2525	2020-10-01 17:39:49.28+00	ADD	PERMIT	2020-10-01 17:39:49.278419+00
4774	2510	2020-10-02 19:43:02.178+00	UPDATE	OPEN	2020-10-02 19:43:02.175705+00
4789	2525	2020-10-08 15:41:54.048+00	UPDATE	CONSTRUCTION	2020-10-08 15:41:54.046478+00
4806	2540	2020-10-14 15:56:20.257+00	ADD	PERMIT	2020-10-14 15:56:20.255794+00
4825	2285	2020-10-20 01:23:18.545+00	UPDATE	OPEN	2020-10-20 01:23:18.543614+00
4832	2420	2020-10-24 00:07:52.913+00	UPDATE	OPEN	2020-10-24 00:07:52.908225+00
4791	2535	2020-10-08 18:53:50.826+00	ADD	PERMIT	2020-10-08 18:53:50.824637+00
4803	2320	2020-10-13 13:28:50.319+00	UPDATE	OPEN	2020-10-13 13:28:50.316317+00
4815	2545	2020-10-16 16:14:47.467+00	ADD	CONSTRUCTION	2020-10-16 16:14:47.466818+00
4828	2515	2020-10-21 13:03:06.966+00	UPDATE	CONSTRUCTION	2020-10-21 13:03:06.964386+00
4838	2555	2020-10-27 20:51:17.455+00	ADD	CONSTRUCTION	2020-10-27 20:51:17.452047+00
4854	2520	2020-10-30 23:50:41.12+00	UPDATE	OPEN	2020-10-30 23:50:41.1105+00
4858	2560	2020-10-31 16:48:55.035+00	ADD	CONSTRUCTION	2020-10-31 16:48:55.032542+00
4864	665	2020-11-01 00:52:22.621+00	UPDATE	OPEN	2020-11-01 00:52:22.617016+00
4869	2445	2020-11-04 20:38:19.017+00	UPDATE	OPEN	2020-11-04 20:38:19.010248+00
4872	2565	2020-11-05 13:16:00.026+00	ADD	CONSTRUCTION	2020-11-05 13:16:00.024614+00
4875	2385	2020-11-05 21:24:15.934+00	UPDATE	OPEN	2020-11-05 21:24:15.926533+00
4880	2450	2020-11-06 15:01:12.798+00	UPDATE	OPEN	2020-11-06 15:01:12.78982+00
4893	2460	2020-11-10 17:44:24.643+00	UPDATE	OPEN	2020-11-10 17:44:24.640819+00
4895	2570	2020-11-11 17:29:33.721+00	ADD	PERMIT	2020-11-11 17:29:33.719715+00
4910	2490	2020-11-15 10:15:20.556+00	UPDATE	OPEN	2020-11-15 10:15:20.554294+00
4911	2515	2020-11-15 10:17:06.532+00	UPDATE	OPEN	2020-11-15 10:17:06.522972+00
4918	2470	2020-11-18 20:09:27.684+00	UPDATE	OPEN	2020-11-18 20:09:27.681948+00
4925	2580	2020-11-20 15:04:22.752+00	ADD	OPEN	2020-11-20 15:04:22.745557+00
4941	2400	2020-11-24 11:18:30.918+00	UPDATE	OPEN	2020-11-24 11:18:30.915639+00
4944	2430	2020-11-24 23:47:21.098+00	UPDATE	CONSTRUCTION	2020-11-24 23:47:21.090294+00
4946	2585	2020-11-26 00:45:31.986+00	ADD	OPEN	2020-11-26 00:45:31.985364+00
4958	2280	2020-12-01 15:17:32.442+00	UPDATE	OPEN	2020-12-01 15:17:32.4391+00
4959	2590	2020-12-01 21:44:43.159+00	ADD	CONSTRUCTION	2020-12-01 21:44:43.157462+00
4961	2430	2020-12-02 14:01:17.748+00	UPDATE	OPEN	2020-12-02 14:01:17.745523+00
4974	2600	2020-12-06 17:42:51.94+00	ADD	PERMIT	2020-12-06 17:42:51.938393+00
4979	2605	2020-12-08 04:33:55.353+00	ADD	OPEN	2020-12-08 04:33:55.351403+00
4999	2440	2020-12-12 13:00:15.001+00	UPDATE	OPEN	2020-12-12 13:00:14.996846+00
5004	2300	2020-12-16 13:13:27.141+00	UPDATE	OPEN	2020-12-16 13:13:27.134584+00
4966	2595	2020-12-03 18:52:47.336+00	ADD	PERMIT	2020-12-03 18:52:47.335236+00
5020	2615	2020-12-18 20:13:06.787+00	ADD	PERMIT	2020-12-18 20:13:06.785661+00
5022	2525	2020-12-18 20:58:11.167+00	UPDATE	OPEN	2020-12-18 20:58:11.165439+00
5032	2620	2020-12-22 13:45:05.569+00	ADD	CONSTRUCTION	2020-12-22 13:45:05.567797+00
5041	2625	2020-12-23 09:28:52.64+00	ADD	PERMIT	2020-12-23 09:28:52.638595+00
5044	2590	2020-12-23 13:40:15.304+00	UPDATE	OPEN	2020-12-23 13:40:15.300528+00
5045	2620	2020-12-23 13:47:53.68+00	UPDATE	OPEN	2020-12-23 13:47:53.678057+00
5048	2630	2020-12-23 17:51:52.27+00	ADD	CONSTRUCTION	2020-12-23 17:51:52.268414+00
5049	2555	2020-12-23 18:14:17.951+00	UPDATE	OPEN	2020-12-23 18:14:17.946745+00
5050	2600	2020-12-23 20:12:44.244+00	UPDATE	CONSTRUCTION	2020-12-23 20:12:44.241901+00
5061	2635	2020-12-30 01:30:32.974+00	ADD	PERMIT	2020-12-30 01:30:32.970097+00
5062	2065	2020-12-30 04:28:53.358+00	UPDATE	OPEN	2020-12-30 04:28:53.348416+00
5068	2570	2021-01-01 23:15:32.027+00	UPDATE	CONSTRUCTION	2021-01-01 23:15:32.023331+00
5071	2640	2021-01-05 12:44:52.774+00	ADD	PERMIT	2021-01-05 12:44:52.771805+00
5076	2645	2021-01-06 02:34:43.569+00	ADD	PERMIT	2021-01-06 02:34:43.567233+00
5085	2650	2021-01-07 20:30:29.338+00	ADD	PERMIT	2021-01-07 20:30:29.328991+00
5091	2205	2021-01-14 22:07:30.242+00	UPDATE	CONSTRUCTION	2021-01-14 22:07:30.235433+00
5094	2305	2021-01-14 23:44:14.368+00	UPDATE	CONSTRUCTION	2021-01-14 23:44:14.361753+00
5095	2245	2021-01-16 00:23:13.124+00	UPDATE	OPEN	2021-01-16 00:23:13.121656+00
5096	2655	2021-01-16 13:55:38.775+00	ADD	PERMIT	2021-01-16 13:55:38.771034+00
5111	2660	2021-01-21 05:22:57.252+00	ADD	PERMIT	2021-01-21 05:22:57.249706+00
5122	2665	2021-01-25 12:48:29.915+00	ADD	PERMIT	2021-01-25 12:48:29.904929+00
5130	2670	2021-01-26 20:22:53.687+00	ADD	PERMIT	2021-01-26 20:22:53.684572+00
5156	2695	2021-01-28 22:55:11.078+00	ADD	PERMIT	2021-01-28 22:55:11.076789+00
5211	2495	2021-01-30 18:43:13.061+00	UPDATE	CONSTRUCTION	2021-01-30 18:43:13.057721+00
5217	2755	2021-02-01 01:38:51.618+00	ADD	CONSTRUCTION	2021-02-01 01:38:51.616784+00
5221	2570	2021-02-03 16:25:54.111+00	UPDATE	OPEN	2021-02-03 16:25:54.093122+00
5224	2240	2021-02-03 17:12:56.569+00	UPDATE	CONSTRUCTION	2021-02-03 17:12:56.565954+00
5228	2760	2021-02-03 23:28:13.134+00	ADD	PERMIT	2021-02-03 23:28:13.129753+00
5233	2765	2021-02-04 05:31:12.813+00	ADD	PERMIT	2021-02-04 05:31:12.811483+00
5469	2655	2021-02-14 22:47:59.247+00	UPDATE	CONSTRUCTION	2021-02-14 22:47:59.246384+00
5479	3000	2021-02-17 15:19:58.801+00	ADD	CONSTRUCTION	2021-02-17 15:19:58.800176+00
5488	3005	2021-02-20 12:30:07.988+00	ADD	CONSTRUCTION	2021-02-20 12:30:07.98759+00
5699	2480	2021-02-21 12:00:31.152+00	UPDATE	CONSTRUCTION	2021-02-21 12:00:31.149706+00
5701	2545	2021-02-23 03:07:16.779+00	UPDATE	OPEN	2021-02-23 03:07:16.766811+00
5704	3215	2021-02-25 00:47:50.374+00	ADD	PERMIT	2021-02-25 00:47:50.371168+00
5705	2695	2021-02-25 19:49:13.908+00	UPDATE	CONSTRUCTION	2021-02-25 19:49:13.90219+00
5707	2755	2021-02-25 22:44:25.166+00	UPDATE	OPEN	2021-02-25 22:44:25.163748+00
5712	3220	2021-03-02 08:44:03.625+00	ADD	CONSTRUCTION	2021-03-02 08:44:03.612154+00
5714	2390	2021-03-03 05:58:20.651+00	UPDATE	CONSTRUCTION	2021-03-03 05:58:20.648386+00
5722	2565	2021-03-05 02:53:17.259+00	UPDATE	OPEN	2021-03-05 02:53:17.2578+00
5723	2230	2021-03-05 17:04:09.602+00	UPDATE	CONSTRUCTION	2021-03-05 17:04:09.589952+00
5725	2240	2021-03-05 17:06:16.308+00	UPDATE	OPEN	2021-03-05 17:06:16.304677+00
5726	3225	2021-03-05 19:35:46.422+00	ADD	PERMIT	2021-03-05 19:35:46.417786+00
5735	3230	2021-03-08 22:27:18.25+00	ADD	CONSTRUCTION	2021-03-08 22:27:18.241895+00
5743	3235	2021-03-10 05:07:33.164+00	ADD	PERMIT	2021-03-10 05:07:33.159353+00
5752	2645	2021-03-13 17:41:26.176+00	UPDATE	CONSTRUCTION	2021-03-13 17:41:26.170119+00
5753	3240	2021-03-13 21:15:09.373+00	ADD	PERMIT	2021-03-13 21:15:09.372014+00
5766	3250	2021-03-17 04:50:24.878+00	ADD	OPEN	2021-03-17 04:50:24.877691+00
5760	3245	2021-03-15 01:36:07.985+00	ADD	CONSTRUCTION	2021-03-15 01:36:07.978859+00
5782	3255	2021-03-19 19:54:23.621+00	ADD	PERMIT	2021-03-19 19:54:23.619599+00
5783	2630	2021-03-20 00:08:24.495+00	UPDATE	OPEN	2021-03-20 00:08:24.492819+00
5790	3260	2021-03-21 03:06:20.298+00	ADD	CONSTRUCTION	2021-03-21 03:06:20.294397+00
5804	3265	2021-03-24 14:55:19.631+00	ADD	PERMIT	2021-03-24 14:55:19.629601+00
5809	3270	2021-03-24 15:08:07.501+00	ADD	PERMIT	2021-03-24 15:08:07.49917+00
5814	3275	2021-03-24 15:23:38.248+00	ADD	PERMIT	2021-03-24 15:23:38.24099+00
5816	2480	2021-03-24 16:42:03.687+00	UPDATE	OPEN	2021-03-24 16:42:03.682485+00
5824	3000	2021-03-26 08:30:11.613+00	UPDATE	OPEN	2021-03-26 08:30:11.60572+00
5830	3280	2021-03-27 15:52:03.796+00	ADD	CONSTRUCTION	2021-03-27 15:52:03.794707+00
5832	2665	2021-03-28 19:03:02.262+00	UPDATE	CONSTRUCTION	2021-03-28 19:03:02.260864+00
5838	2600	2021-03-30 00:44:08.676+00	UPDATE	OPEN	2021-03-30 00:44:08.673343+00
5848	2695	2021-03-31 01:37:56.546+00	UPDATE	OPEN	2021-03-31 01:37:56.542672+00
5851	3285	2021-03-31 02:29:30.197+00	ADD	OPEN	2021-03-31 02:29:30.194967+00
5856	3220	2021-03-31 19:42:18.956+00	UPDATE	OPEN	2021-03-31 19:42:18.954237+00
5863	2560	2021-04-01 15:06:39.258+00	UPDATE	OPEN	2021-04-01 15:06:39.244582+00
5867	3290	2021-04-02 00:32:25.949+00	ADD	CONSTRUCTION	2021-04-02 00:32:25.947401+00
5868	3215	2021-04-02 02:33:02.924+00	UPDATE	CONSTRUCTION	2021-04-02 02:33:02.922247+00
5882	3295	2021-04-04 20:17:34.329+00	ADD	CONSTRUCTION	2021-04-04 20:17:34.327432+00
5890	3300	2021-04-06 16:52:26.752+00	ADD	OPEN	2021-04-06 16:52:26.747828+00
5894	2305	2021-04-06 23:59:18.124+00	UPDATE	OPEN	2021-04-06 23:59:18.117846+00
5915	3310	2021-04-12 09:17:26.687+00	ADD	CONSTRUCTION	2021-04-12 09:17:26.686362+00
5903	3305	2021-04-08 06:23:20.264+00	ADD	CONSTRUCTION	2021-04-08 06:23:20.261595+00
5924	3315	2021-04-15 11:59:49.769+00	ADD	OPEN	2021-04-15 11:59:49.761083+00
5919	3245	2021-04-13 14:25:29.669+00	UPDATE	OPEN	2021-04-13 14:25:29.667463+00
5923	3280	2021-04-14 19:28:49.155+00	UPDATE	OPEN	2021-04-14 19:28:49.152857+00
5930	2230	2021-04-16 13:10:29.668+00	UPDATE	OPEN	2021-04-16 13:10:29.664026+00
5932	3320	2021-04-16 15:51:57.657+00	ADD	CONSTRUCTION	2021-04-16 15:51:57.654241+00
5937	3325	2021-04-17 15:51:31.684+00	ADD	PERMIT	2021-04-17 15:51:31.678519+00
5940	2495	2021-04-18 04:41:17.692+00	UPDATE	OPEN	2021-04-18 04:41:17.688379+00
5943	3330	2021-04-18 17:35:50.903+00	ADD	CONSTRUCTION	2021-04-18 17:35:50.899624+00
5949	3290	2021-04-21 20:05:12.519+00	UPDATE	OPEN	2021-04-21 20:05:12.513606+00
5952	3305	2021-04-22 16:25:56.171+00	UPDATE	OPEN	2021-04-22 16:25:56.165613+00
5953	2635	2021-04-22 17:18:22.981+00	UPDATE	CONSTRUCTION	2021-04-22 17:18:22.977715+00
5955	3335	2021-04-22 18:38:23.669+00	ADD	OPEN	2021-04-22 18:38:23.667415+00
5956	3330	2021-04-23 00:00:43.364+00	UPDATE	OPEN	2021-04-23 00:00:43.35489+00
5965	3240	2021-04-26 10:30:36.228+00	UPDATE	CONSTRUCTION	2021-04-26 10:30:36.223148+00
5968	3340	2021-04-27 14:58:26.103+00	ADD	PERMIT	2021-04-27 14:58:26.100751+00
5969	2595	2021-04-27 15:40:58.243+00	UPDATE	CONSTRUCTION	2021-04-27 15:40:58.232401+00
5974	3345	2021-04-28 16:32:04.199+00	ADD	PERMIT	2021-04-28 16:32:04.19655+00
5979	3350	2021-04-28 16:45:34.545+00	ADD	PERMIT	2021-04-28 16:45:34.543369+00
5987	3355	2021-04-30 05:34:45.594+00	ADD	OPEN	2021-04-30 05:34:45.588367+00
5989	2665	2021-04-30 10:50:37.947+00	UPDATE	OPEN	2021-04-30 10:50:37.944813+00
5995	2205	2021-05-01 12:28:32.694+00	UPDATE	OPEN	2021-05-01 12:28:32.691295+00
6000	2650	2021-05-04 01:19:55.657+00	UPDATE	CONSTRUCTION	2021-05-04 01:19:55.647023+00
6005	3360	2021-05-05 10:36:07.04+00	ADD	CONSTRUCTION	2021-05-05 10:36:07.035511+00
6016	3005	2021-05-07 22:06:11.374+00	UPDATE	OPEN	2021-05-07 22:06:11.369872+00
6019	2535	2021-05-08 18:18:52.123+00	UPDATE	CONSTRUCTION	2021-05-08 18:18:52.121105+00
6021	3365	2021-05-08 18:22:05.2+00	ADD	CONSTRUCTION	2021-05-08 18:22:05.198861+00
6024	2325	2021-05-10 14:39:18.962+00	UPDATE	CONSTRUCTION	2021-05-10 14:39:18.958701+00
6030	3370	2021-05-11 07:20:49.52+00	ADD	PERMIT	2021-05-11 07:20:49.518452+00
6038	3295	2021-05-11 21:59:18.427+00	UPDATE	OPEN	2021-05-11 21:59:18.423475+00
6040	3375	2021-05-12 09:01:18.744+00	ADD	CONSTRUCTION	2021-05-12 09:01:18.741804+00
6045	2500	2021-05-12 20:09:06.179+00	UPDATE	CONSTRUCTION	2021-05-12 20:09:06.170607+00
6054	3380	2021-05-13 18:23:23.546+00	ADD	PERMIT	2021-05-13 18:23:23.543786+00
6059	3385	2021-05-14 17:16:58.202+00	ADD	PERMIT	2021-05-14 17:16:58.198737+00
6061	2655	2021-05-14 19:21:38.826+00	UPDATE	OPEN	2021-05-14 19:21:38.823792+00
6062	2645	2021-05-15 00:40:17.111+00	UPDATE	OPEN	2021-05-15 00:40:17.108425+00
6092	3400	2021-05-21 04:03:14.027+00	ADD	PERMIT	2021-05-21 04:03:14.024248+00
6060	2270	2021-05-14 17:51:11.825+00	UPDATE	CONSTRUCTION	2021-05-14 17:51:11.822719+00
6071	3215	2021-05-16 12:28:51.736+00	UPDATE	OPEN	2021-05-16 12:28:51.733367+00
6075	3390	2021-05-16 23:17:57.483+00	ADD	CONSTRUCTION	2021-05-16 23:17:57.482124+00
6082	3395	2021-05-18 04:30:56+00	ADD	PERMIT	2021-05-18 04:30:55.998588+00
6095	2390	2021-05-21 13:20:01.54+00	UPDATE	OPEN	2021-05-21 13:20:01.534047+00
6100	3230	2021-05-22 06:16:50.535+00	UPDATE	OPEN	2021-05-22 06:16:50.530459+00
6115	3405	2021-05-25 20:30:55.931+00	ADD	PERMIT	2021-05-25 20:30:55.929413+00
6118	2650	2021-05-26 15:27:22.566+00	UPDATE	OPEN	2021-05-26 15:27:22.559922+00
6139	3410	2021-05-28 17:15:27.554+00	ADD	PERMIT	2021-05-28 17:15:27.552109+00
6141	3255	2021-05-28 19:01:03.255+00	UPDATE	CONSTRUCTION	2021-05-28 19:01:03.252377+00
6152	3415	2021-05-30 18:59:08.415+00	ADD	PERMIT	2021-05-30 18:59:08.413746+00
6158	2535	2021-05-31 06:15:14.729+00	UPDATE	OPEN	2021-05-31 06:15:14.726661+00
6159	3420	2021-05-31 15:36:31.808+00	ADD	PERMIT	2021-05-31 15:36:31.806602+00
6162	3320	2021-06-01 15:35:44.919+00	UPDATE	OPEN	2021-06-01 15:35:44.915814+00
6170	3425	2021-06-03 07:11:03.561+00	ADD	CONSTRUCTION	2021-06-03 07:11:03.554472+00
6172	3310	2021-06-03 14:55:55.242+00	UPDATE	OPEN	2021-06-03 14:55:55.237416+00
6178	3430	2021-06-04 23:08:43.597+00	ADD	PERMIT	2021-06-04 23:08:43.587041+00
6185	3435	2021-06-07 04:24:06.042+00	ADD	PERMIT	2021-06-07 04:24:06.040435+00
6191	2055	2021-06-08 00:12:43.892+00	UPDATE	CONSTRUCTION	2021-06-08 00:12:43.887678+00
6196	3440	2021-06-09 13:13:45.572+00	ADD	CONSTRUCTION	2021-06-09 13:13:45.569238+00
6206	3445	2021-06-10 20:27:19.536+00	ADD	OPEN	2022-07-19 21:44:30+00
6208	2325	2021-06-11 02:44:48.026+00	UPDATE	OPEN	2021-06-11 02:44:48.017741+00
6218	3450	2021-06-13 16:07:17.868+00	ADD	CONSTRUCTION	2021-06-13 16:07:17.866264+00
6227	3455	2021-06-15 16:10:04.374+00	ADD	PERMIT	2021-06-15 16:10:04.372332+00
6262	3370	2021-06-22 15:33:49.423+00	UPDATE	CONSTRUCTION	2021-06-22 15:33:49.421023+00
6236	3460	2021-06-16 17:26:38.886+00	ADD	PERMIT	2021-06-16 17:26:38.884541+00
6243	2540	2021-06-19 02:34:51.824+00	UPDATE	CONSTRUCTION	2021-06-19 02:34:51.818023+00
6244	2120	2021-06-19 02:42:44.425+00	UPDATE	OPEN	2021-06-19 02:42:44.42105+00
6250	3465	2021-06-20 17:56:53.232+00	ADD	PERMIT	2021-06-20 17:56:53.228266+00
6257	3470	2021-06-21 15:26:57.423+00	ADD	PERMIT	2021-06-21 15:26:57.420206+00
6266	3475	2021-06-24 01:21:18.686+00	ADD	OPEN	2021-06-24 01:21:18.683581+00
6273	3240	2021-06-25 03:56:10.973+00	UPDATE	OPEN	2021-06-25 03:56:10.963848+00
6274	3480	2021-06-25 08:13:28.205+00	ADD	PERMIT	2021-06-25 08:13:28.203634+00
6278	3375	2021-06-25 15:16:29.203+00	UPDATE	OPEN	2021-06-25 15:16:29.199792+00
6280	2595	2021-06-26 00:04:56.269+00	UPDATE	OPEN	2021-06-26 00:04:56.255735+00
6285	3405	2021-06-26 03:32:09.023+00	UPDATE	CONSTRUCTION	2021-06-26 03:32:09.020214+00
6286	2660	2021-06-26 21:13:50.847+00	UPDATE	CONSTRUCTION	2021-06-26 21:13:50.843155+00
6289	3485	2021-06-26 22:38:58.31+00	ADD	CONSTRUCTION	2021-06-26 22:38:58.308321+00
6298	3440	2021-06-29 13:14:24.038+00	UPDATE	OPEN	2021-06-29 13:14:24.0349+00
6302	3490	2021-06-29 20:17:26.453+00	ADD	PERMIT	2021-06-29 20:17:26.450386+00
6307	3450	2021-06-30 15:02:51.742+00	UPDATE	OPEN	2021-06-30 15:02:51.739187+00
6318	3495	2021-06-30 23:44:36.652+00	ADD	CONSTRUCTION	2021-06-30 23:44:36.650198+00
6324	3500	2021-07-01 02:12:55.818+00	ADD	OPEN	2021-07-01 02:12:55.816714+00
6327	3360	2021-07-01 10:15:30.697+00	UPDATE	OPEN	2021-07-01 10:15:30.689523+00
6328	2560	2021-07-01 11:54:24.901+00	UPDATE	CLOSED_TEMP	2021-07-01 11:54:24.898127+00
6336	3505	2021-07-01 21:58:35.844+00	ADD	PERMIT	2021-07-01 21:58:35.838413+00
6343	2270	2021-07-02 20:52:51.698+00	UPDATE	OPEN	2021-07-02 20:52:51.694739+00
6349	140	2021-07-03 04:26:06.767+00	UPDATE	CLOSED_PERM	2021-07-03 04:26:06.765003+00
6352	3510	2021-07-03 21:59:15.79+00	ADD	CONSTRUCTION	2021-07-03 21:59:15.788786+00
6358	2560	2021-07-06 07:11:55.139+00	UPDATE	OPEN	2021-07-06 07:11:55.137226+00
6361	3515	2021-07-07 01:04:43.806+00	ADD	PERMIT	2021-07-07 01:04:43.802549+00
6374	3520	2021-07-11 17:40:44.714+00	ADD	CONSTRUCTION	2021-07-11 17:40:44.712211+00
6380	3270	2021-07-12 20:38:57.441+00	UPDATE	CONSTRUCTION	2021-07-12 20:38:57.438779+00
6384	2560	2021-07-13 07:23:48.487+00	UPDATE	CLOSED_TEMP	2021-07-13 07:23:48.484702+00
6386	2560	2021-07-13 15:52:49.468+00	UPDATE	OPEN	2021-07-13 15:52:49.465763+00
6391	3525	2021-07-13 22:02:17.156+00	ADD	PERMIT	2021-07-13 22:02:17.154815+00
6398	3235	2021-07-15 04:21:05.757+00	UPDATE	CONSTRUCTION	2021-07-15 04:21:05.755486+00
6399	3370	2021-07-15 07:05:44.542+00	UPDATE	OPEN	2021-07-15 07:05:44.539503+00
6402	3530	2021-07-15 12:00:17.276+00	ADD	CONSTRUCTION	2021-07-15 12:00:17.27434+00
6418	3535	2021-07-19 07:53:14.658+00	ADD	OPEN	2021-07-19 07:53:14.655594+00
6426	3260	2021-07-21 16:10:21.997+00	UPDATE	OPEN	2021-07-21 16:10:21.992845+00
6428	3540	2021-07-21 18:45:32.557+00	ADD	PERMIT	2021-07-21 18:45:32.546576+00
6433	2635	2021-07-23 19:12:48.194+00	UPDATE	OPEN	2021-07-23 19:12:48.189785+00
6442	2035	2021-07-27 13:48:35.725+00	UPDATE	CLOSED_TEMP	2021-07-27 13:48:35.72134+00
6443	3510	2021-07-27 18:29:20.89+00	UPDATE	OPEN	2021-07-27 18:29:20.887104+00
6448	3550	2021-07-29 19:14:04.764+00	ADD	CONSTRUCTION	2021-07-29 19:14:04.762263+00
6449	3405	2021-07-29 22:26:48.097+00	UPDATE	OPEN	2021-07-29 22:26:48.087425+00
6455	3365	2021-07-31 07:18:11.259+00	UPDATE	OPEN	2021-07-31 07:18:11.256621+00
6460	3425	2021-08-04 07:21:26.06+00	UPDATE	OPEN	2021-08-04 07:21:26.053299+00
6462	3555	2021-08-04 13:24:34.122+00	ADD	CONSTRUCTION	2021-08-04 13:24:34.120606+00
6464	3400	2021-08-04 21:16:57.589+00	UPDATE	CONSTRUCTION	2021-08-04 21:16:57.586723+00
6474	3560	2021-08-06 00:22:41.637+00	ADD	CONSTRUCTION	2021-08-06 00:22:41.63479+00
6484	3565	2021-08-08 01:03:33.822+00	ADD	OPEN	2021-08-08 01:03:33.820574+00
6488	3570	2021-08-09 06:38:05.264+00	ADD	CONSTRUCTION	2021-08-09 06:38:05.262905+00
6494	3575	2021-08-11 11:57:41.862+00	ADD	CONSTRUCTION	2021-08-11 11:57:41.860957+00
6498	3275	2021-08-11 20:21:26.956+00	UPDATE	CONSTRUCTION	2021-08-11 20:21:26.952686+00
6501	3580	2021-08-12 14:23:20.063+00	ADD	CONSTRUCTION	2021-08-12 14:23:20.06187+00
6509	3585	2021-08-13 20:35:22.224+00	ADD	CONSTRUCTION	2021-08-13 20:35:22.221581+00
6514	3590	2021-08-15 20:00:43.627+00	ADD	CONSTRUCTION	2021-08-15 20:00:43.624851+00
6516	3515	2021-08-16 13:49:30.776+00	UPDATE	CONSTRUCTION	2021-08-16 13:49:30.773728+00
6526	3595	2021-08-19 17:50:04.829+00	ADD	CONSTRUCTION	2021-08-19 17:50:04.826116+00
6530	3485	2021-08-20 22:59:36.423+00	UPDATE	OPEN	2021-08-20 22:59:36.415001+00
6531	3600	2021-08-21 07:50:13.828+00	ADD	CONSTRUCTION	2021-08-21 07:50:13.825565+00
6541	2485	2021-08-25 02:33:44.94+00	UPDATE	CONSTRUCTION	2021-08-25 02:33:44.936333+00
6543	2055	2021-08-25 18:34:17.593+00	UPDATE	OPEN	2021-08-25 18:34:17.588514+00
6546	3605	2021-08-26 09:28:33.453+00	ADD	CONSTRUCTION	2021-08-26 09:28:33.448355+00
6549	3580	2021-08-26 12:08:14.274+00	UPDATE	OPEN	2021-08-26 12:08:14.269775+00
6559	3520	2021-08-27 13:27:14.709+00	UPDATE	OPEN	2021-08-27 13:27:14.696377+00
6576	3615	2021-09-02 06:12:51.337+00	ADD	CONSTRUCTION	2021-09-02 06:12:51.335378+00
6586	3620	2021-09-04 17:01:22.964+00	ADD	PERMIT	2021-09-04 17:01:22.962302+00
6607	2485	2021-09-09 01:52:35.634+00	UPDATE	OPEN	2021-09-09 01:52:35.628386+00
6581	3530	2021-09-03 06:30:03.302+00	UPDATE	OPEN	2021-09-03 06:30:03.28073+00
6598	3345	2021-09-05 12:08:25.224+00	UPDATE	CONSTRUCTION	2021-09-05 12:08:25.22009+00
6604	3600	2021-09-08 13:00:47.156+00	UPDATE	OPEN	2021-09-08 13:00:47.154056+00
6605	3625	2021-09-08 15:39:26.673+00	ADD	PERMIT	2021-09-08 15:39:26.671645+00
6612	3615	2021-09-09 23:19:45.913+00	UPDATE	OPEN	2021-09-09 23:19:45.910047+00
6617	3630	2021-09-11 02:11:55.236+00	ADD	OPEN	2021-09-11 02:11:55.233629+00
6622	3550	2021-09-11 20:29:11.258+00	UPDATE	OPEN	2021-09-11 20:29:11.25366+00
6627	3635	2021-09-13 07:58:16.731+00	ADD	CONSTRUCTION	2021-09-13 07:58:16.728361+00
6633	3480	2021-09-15 12:32:39.587+00	UPDATE	CONSTRUCTION	2021-09-15 12:32:39.582485+00
6635	3640	2021-09-15 23:19:57.909+00	ADD	OPEN	2021-09-15 23:19:57.906473+00
6638	3605	2021-09-17 13:53:10.251+00	UPDATE	OPEN	2021-09-17 13:53:10.245941+00
6650	3590	2021-09-20 18:56:50.158+00	UPDATE	OPEN	2021-09-20 18:56:50.153075+00
6667	3555	2021-09-22 13:29:31.053+00	UPDATE	OPEN	2021-09-22 13:29:31.037476+00
6670	3495	2021-09-22 22:59:05.913+00	UPDATE	OPEN	2021-09-22 22:59:05.906501+00
6677	3585	2021-09-23 11:58:41.231+00	UPDATE	OPEN	2021-09-23 11:58:41.22108+00
6682	3470	2021-09-23 17:21:00.239+00	UPDATE	CONSTRUCTION	2021-09-23 17:21:00.234168+00
6722	3700	2021-09-25 00:54:09.109+00	ADD	OPEN	2021-09-25 00:54:09.101272+00
6746	3715	2021-09-28 07:16:31.34+00	ADD	PERMIT	2021-09-28 07:16:31.332146+00
6750	1060	2021-09-28 17:35:13.249+00	UPDATE	OPEN	2021-09-28 17:35:13.227522+00
6754	2500	2021-09-28 22:04:51.791+00	UPDATE	OPEN	2021-09-28 22:04:51.783626+00
6757	3720	2021-09-29 21:22:16.43+00	ADD	CONSTRUCTION	2022-07-19 21:44:30+00
6766	3635	2021-09-30 14:44:34.391+00	UPDATE	OPEN	2021-09-30 14:44:34.380214+00
6768	3725	2021-09-30 14:48:07.289+00	ADD	OPEN	2021-09-30 14:48:07.283391+00
6774	3730	2021-09-30 19:28:27.917+00	ADD	CONSTRUCTION	2021-09-30 19:28:27.913693+00
6781	2540	2021-10-01 01:20:12.287+00	UPDATE	OPEN	2021-10-01 01:20:12.27795+00
6789	3735	2021-10-01 22:09:59.434+00	ADD	CONSTRUCTION	2022-07-19 21:44:30+00
6853	3770	2021-10-16 23:03:42.712+00	ADD	CONSTRUCTION	2021-10-16 23:03:42.706775+00
6855	3470	2021-10-17 00:50:18.502+00	UPDATE	OPEN	2021-10-17 00:50:18.498934+00
6862	3735	2021-10-19 23:37:37.756+00	UPDATE	OPEN	2021-10-19 23:37:37.751931+00
6860	3275	2021-10-19 16:33:59.185+00	UPDATE	OPEN	2021-10-19 16:33:59.177819+00
6800	3255	2021-10-04 21:59:36.998+00	UPDATE	OPEN	2021-10-04 21:59:36.985301+00
6814	3750	2021-10-06 17:53:18.471+00	ADD	PERMIT	2021-10-06 17:53:18.466811+00
6835	3760	2021-10-12 00:29:10.338+00	ADD	PERMIT	2021-10-12 00:29:10.331567+00
6808	3745	2021-10-05 22:39:46.302+00	ADD	OPEN	2021-10-05 22:39:46.297073+00
6827	3755	2021-10-09 21:29:27.363+00	ADD	OPEN	2021-10-09 21:29:27.360133+00
6833	3235	2021-10-12 00:18:53.342+00	UPDATE	OPEN	2021-10-12 00:18:53.337613+00
6844	3265	2021-10-13 18:17:11.719+00	UPDATE	CONSTRUCTION	2021-10-13 18:17:11.714307+00
6845	3765	2021-10-13 18:39:51.648+00	ADD	PERMIT	2021-10-13 18:39:51.639479+00
6840	3560	2021-10-12 22:40:15.726+00	UPDATE	OPEN	2021-10-12 22:40:15.720424+00
6866	3775	2021-10-20 21:34:12.549+00	ADD	CONSTRUCTION	2021-10-20 21:34:12.544858+00
6880	3780	2021-10-22 21:33:38.293+00	ADD	CONSTRUCTION	2021-10-22 21:33:38.288855+00
6883	2035	2021-10-23 13:27:02.754+00	UPDATE	OPEN	2021-10-23 13:27:02.748831+00
6889	3785	2021-10-25 11:40:52.431+00	ADD	CONSTRUCTION	2021-10-25 11:40:52.426356+00
6898	3790	2021-10-28 00:05:06.486+00	ADD	CONSTRUCTION	2021-10-28 00:05:06.476035+00
6902	3730	2021-10-28 06:39:55.525+00	UPDATE	OPEN	2021-10-28 06:39:55.52217+00
6914	3795	2021-10-31 15:40:35.274+00	ADD	CONSTRUCTION	2021-10-31 15:40:35.270592+00
6920	3800	2021-11-01 15:25:42.749+00	ADD	CONSTRUCTION	2021-11-01 15:25:42.743898+00
6925	3270	2021-11-03 18:25:42.454+00	UPDATE	OPEN	2021-11-03 18:25:42.448714+00
6926	3805	2021-11-03 22:13:36.216+00	ADD	CONSTRUCTION	2021-11-03 22:13:36.210754+00
6933	3810	2021-11-05 17:29:31.983+00	ADD	PERMIT	2021-11-05 17:29:31.96774+00
6945	3575	2021-11-08 09:02:45.078+00	UPDATE	OPEN	2021-11-08 09:02:45.069393+00
6948	3815	2021-11-08 20:01:21.277+00	ADD	CONSTRUCTION	2021-11-08 20:01:21.272364+00
6950	3480	2021-11-09 07:19:48.57+00	UPDATE	OPEN	2021-11-09 07:19:48.565609+00
6953	3390	2021-11-09 13:53:05.4+00	UPDATE	OPEN	2021-11-09 13:53:05.395559+00
6958	3325	2021-11-10 00:06:27.377+00	UPDATE	CONSTRUCTION	2021-11-10 00:06:27.372535+00
6959	3820	2021-11-10 16:51:17.526+00	ADD	CONSTRUCTION	2021-11-10 16:51:17.504486+00
6963	3515	2021-11-11 16:12:21.704+00	UPDATE	OPEN	2021-11-11 16:12:21.69697+00
6971	3825	2021-11-13 00:05:49.506+00	ADD	CONSTRUCTION	2021-11-13 00:05:49.500329+00
6973	3750	2021-11-13 03:09:14.585+00	UPDATE	CONSTRUCTION	2021-11-13 03:09:14.581223+00
6975	3400	2021-11-13 16:14:44.118+00	UPDATE	OPEN	2021-11-13 16:14:44.111558+00
6983	3830	2021-11-13 23:16:10.157+00	ADD	CONSTRUCTION	2022-07-19 21:44:30+00
6986	2765	2021-11-14 06:26:18.312+00	UPDATE	CONSTRUCTION	2021-11-14 06:26:18.304714+00
6989	3835	2021-11-15 00:04:20.214+00	ADD	CONSTRUCTION	2021-11-15 00:04:20.210778+00
6994	3840	2021-11-16 03:05:44.228+00	ADD	PERMIT	2021-11-16 03:05:44.215245+00
7023	3810	2021-11-19 20:30:26.34+00	UPDATE	CONSTRUCTION	2021-11-19 20:30:26.336648+00
7033	3850	2021-11-21 13:15:28.621+00	ADD	CONSTRUCTION	2021-11-21 13:15:28.61788+00
7013	3595	2021-11-18 18:44:30.575+00	UPDATE	OPEN	2021-11-18 18:44:30.569414+00
7047	3855	2021-11-23 08:22:28.033+00	ADD	PERMIT	2021-11-23 08:22:28.0286+00
7065	3860	2021-11-26 00:50:04.032+00	ADD	CONSTRUCTION	2022-07-19 21:44:30+00
7072	3865	2021-11-27 03:51:00.038+00	ADD	CONSTRUCTION	2021-11-27 03:51:00.029609+00
7008	3830	2021-11-17 20:53:52.105+00	UPDATE	OPEN	2021-11-17 20:53:52.098672+00
7016	2615	2021-11-18 23:24:57.28+00	UPDATE	CONSTRUCTION	2021-11-18 23:24:57.276004+00
7017	3845	2021-11-19 00:12:26.338+00	ADD	PERMIT	2021-11-19 00:12:26.33398+00
7025	3780	2021-11-20 02:01:18.383+00	UPDATE	OPEN	2021-11-20 02:01:18.380033+00
7048	330	2021-11-23 14:32:08.979+00	UPDATE	CLOSED_PERM	2021-11-23 14:32:08.970076+00
7077	3505	2021-11-29 03:01:21.546+00	UPDATE	CONSTRUCTION	2021-11-29 03:01:21.540921+00
7078	3870	2021-11-30 13:28:05.299+00	ADD	OPEN	2021-11-30 13:28:05.266984+00
7097	3875	2021-12-04 16:24:00.569+00	ADD	CONSTRUCTION	2021-12-04 16:24:00.563085+00
7105	3880	2021-12-06 17:19:11.914+00	ADD	CONSTRUCTION	2021-12-06 17:19:11.909821+00
7106	3415	2021-12-06 17:37:44.923+00	UPDATE	CONSTRUCTION	2021-12-06 17:37:44.916545+00
7114	3835	2021-12-09 22:09:18.65+00	UPDATE	OPEN	2021-12-09 22:09:18.645993+00
7116	3885	2021-12-09 22:17:47.431+00	ADD	OPEN	2021-12-09 22:17:47.415573+00
7122	3720	2021-12-10 13:56:41.181+00	UPDATE	OPEN	2021-12-10 13:56:41.175381+00
7125	3770	2021-12-10 20:58:58.136+00	UPDATE	OPEN	2021-12-10 20:58:58.13133+00
7126	2660	2021-12-10 21:06:43.776+00	UPDATE	OPEN	2021-12-10 21:06:43.760225+00
7127	3890	2021-12-10 22:08:11.968+00	ADD	CONSTRUCTION	2021-12-10 22:08:11.964435+00
7131	3750	2021-12-11 02:47:37.104+00	UPDATE	OPEN	2021-12-11 02:47:37.099394+00
7135	3895	2021-12-12 15:36:54.844+00	ADD	CONSTRUCTION	2021-12-12 15:36:54.82895+00
7143	3785	2021-12-14 01:20:49.625+00	UPDATE	OPEN	2021-12-14 01:20:49.621335+00
7147	3900	2021-12-14 18:22:00.73+00	ADD	PERMIT	2021-12-14 18:22:00.71756+00
7155	3905	2021-12-15 23:12:54.411+00	ADD	PERMIT	2021-12-15 23:12:54.394952+00
7163	3570	2021-12-18 14:30:36.027+00	UPDATE	OPEN	2021-12-18 14:30:36.017852+00
7169	3910	2021-12-19 17:45:22.287+00	ADD	CONSTRUCTION	2021-12-19 17:45:22.282733+00
7176	3800	2021-12-21 10:55:05.221+00	UPDATE	OPEN	2021-12-21 10:55:05.211656+00
7181	3915	2021-12-22 01:38:16.722+00	ADD	PERMIT	2021-12-22 01:38:16.714522+00
7189	3920	2021-12-22 21:21:15.423+00	ADD	PERMIT	2021-12-22 21:21:15.415921+00
7196	3925	2021-12-23 20:17:54.305+00	ADD	CONSTRUCTION	2021-12-23 20:17:54.287903+00
7209	3865	2021-12-24 20:01:09.398+00	UPDATE	OPEN	2021-12-24 20:01:09.395302+00
7232	3945	2021-12-31 04:22:59.955+00	ADD	OPEN	2021-12-31 04:22:59.95099+00
7228	3505	2021-12-31 03:09:25.16+00	UPDATE	OPEN	2021-12-31 03:09:25.154931+00
7237	3950	2021-12-31 04:43:23.092+00	ADD	OPEN	2021-12-31 04:43:23.082148+00
7242	3845	2021-12-31 20:33:52.372+00	UPDATE	CONSTRUCTION	2021-12-31 20:33:52.358929+00
7247	3955	2022-01-02 20:59:37.087+00	ADD	PERMIT	2022-01-02 20:59:37.073777+00
7205	3930	2021-12-24 16:59:32.545+00	ADD	OPEN	2021-12-24 16:59:32.532968+00
7213	3225	2021-12-26 14:31:21.164+00	UPDATE	CONSTRUCTION	2021-12-26 14:31:21.159929+00
7218	3935	2021-12-28 20:08:54.657+00	ADD	PERMIT	2021-12-28 20:08:54.646179+00
7253	3960	2022-01-07 15:47:05.957+00	ADD	PERMIT	2022-01-07 15:47:05.9494+00
7276	3970	2022-01-17 08:07:30.347+00	ADD	PERMIT	2022-01-17 08:07:30.34241+00
7283	3900	2022-01-19 13:41:16.661+00	UPDATE	CONSTRUCTION	2022-01-19 13:41:16.65486+00
7285	3975	2022-01-19 23:23:42.655+00	ADD	PERMIT	2022-01-19 23:23:42.650831+00
7293	3980	2022-01-20 22:06:03.06+00	ADD	CONSTRUCTION	2022-01-20 22:06:03.054076+00
7299	3985	2022-01-22 23:46:05.149+00	ADD	PERMIT	2022-01-22 23:46:05.145126+00
7307	3990	2022-01-25 04:31:56.238+00	ADD	PERMIT	2022-01-25 04:31:56.233606+00
7309	3850	2022-01-25 15:46:37.042+00	UPDATE	OPEN	2022-01-25 15:46:37.037122+00
7312	3880	2022-01-26 00:55:14.047+00	UPDATE	OPEN	2022-01-26 00:55:14.033623+00
7313	3265	2022-01-26 04:14:00.729+00	UPDATE	CONSTRUCTION	2022-01-26 04:14:00.723202+00
7314	3860	2022-01-26 09:03:41.59+00	UPDATE	OPEN	2022-01-26 09:03:41.585302+00
7318	3995	2022-01-27 01:06:56.854+00	ADD	PERMIT	2022-01-27 01:06:56.839659+00
7322	3325	2022-01-28 14:48:13.016+00	UPDATE	OPEN	2022-01-28 14:48:13.010045+00
7327	4000	2022-01-30 01:40:02.429+00	ADD	OPEN	2022-01-30 01:40:02.425381+00
7331	3345	2022-01-30 03:09:28.474+00	UPDATE	OPEN	2022-01-30 03:09:28.468968+00
7336	4005	2022-01-31 19:11:33.397+00	ADD	PERMIT	2022-01-31 19:11:33.386552+00
7339	3790	2022-02-01 04:06:16.572+00	UPDATE	OPEN	2022-02-01 04:06:16.566429+00
7345	4010	2022-02-02 07:54:47.533+00	ADD	CONSTRUCTION	2022-02-02 07:54:47.530742+00
7347	2640	2022-02-02 20:55:30.4+00	UPDATE	CONSTRUCTION	2022-02-02 20:55:30.39524+00
7353	4015	2022-02-03 03:49:49.452+00	ADD	CONSTRUCTION	2022-02-03 03:49:49.443585+00
7363	4020	2022-02-04 00:30:05.418+00	ADD	PERMIT	2022-02-04 00:30:05.401352+00
7371	4025	2022-02-05 09:46:03.612+00	ADD	CONSTRUCTION	2022-02-05 09:46:03.597752+00
7382	3715	2022-02-07 06:35:25.508+00	UPDATE	CONSTRUCTION	2022-02-07 06:35:25.501326+00
7384	4030	2022-02-07 23:06:48.388+00	ADD	PERMIT	2022-02-07 23:06:48.383217+00
7394	4035	2022-02-10 01:15:09.459+00	ADD	PERMIT	2022-02-10 01:15:09.455495+00
7407	4040	2022-02-11 07:33:03.786+00	ADD	CONSTRUCTION	2022-02-11 07:33:03.770437+00
7408	3460	2022-02-11 19:21:52.033+00	UPDATE	CONSTRUCTION	2022-02-11 19:21:52.025494+00
7413	3895	2022-02-13 12:28:41.555+00	UPDATE	OPEN	2022-02-13 12:28:41.548717+00
7417	4045	2022-02-15 00:46:25.99+00	ADD	PERMIT	2022-02-15 00:46:25.983731+00
7423	2615	2022-02-15 20:27:27.631+00	UPDATE	OPEN	2022-02-15 20:27:27.623289+00
7427	4030	2022-02-16 00:50:23.46+00	UPDATE	CONSTRUCTION	2022-02-16 00:50:23.447443+00
7429	4050	2022-02-16 00:55:26.099+00	ADD	CONSTRUCTION	2022-07-19 21:44:30+00
7436	4055	2022-02-17 20:42:39.469+00	ADD	PERMIT	2022-02-17 20:42:39.465847+00
7444	3995	2022-02-18 23:28:51.793+00	UPDATE	CONSTRUCTION	2022-02-18 23:28:51.788451+00
7448	4060	2022-02-20 23:49:55.503+00	ADD	PERMIT	2022-02-20 23:49:55.492243+00
7459	4065	2022-02-24 19:32:27.796+00	ADD	PERMIT	2022-02-24 19:32:27.792776+00
7463	4015	2022-02-25 13:39:12.472+00	UPDATE	OPEN	2022-02-25 13:39:12.465192+00
7471	4070	2022-02-26 18:53:56.857+00	ADD	PERMIT	2022-02-26 18:53:56.852163+00
7477	4075	2022-03-01 22:28:30.345+00	ADD	PERMIT	2022-03-01 22:28:30.332051+00
7485	3715	2022-03-04 17:31:48.259+00	UPDATE	OPEN	2022-03-04 17:31:48.253383+00
7490	4080	2022-03-05 00:56:21.617+00	ADD	PERMIT	2022-03-05 00:56:21.612359+00
7500	4085	2022-03-07 01:05:09.906+00	ADD	PERMIT	2022-03-07 01:05:09.9007+00
7511	4090	2022-03-09 02:29:49.305+00	ADD	PERMIT	2022-03-09 02:29:49.301769+00
7527	4095	2022-03-13 00:52:41.615+00	ADD	PERMIT	2022-03-13 00:52:41.585534+00
7530	3910	2022-03-13 17:21:51.461+00	UPDATE	OPEN	2022-03-13 17:21:51.455936+00
7536	4100	2022-03-15 02:26:35.611+00	ADD	PERMIT	2022-03-15 02:26:35.607442+00
7541	4105	2022-03-15 06:02:04.703+00	ADD	OPEN	2022-03-15 06:02:04.699296+00
7542	2105	2022-03-15 06:05:21.106+00	UPDATE	OPEN	2022-03-15 06:05:21.100034+00
7546	4100	2022-03-17 00:00:55.407+00	UPDATE	CONSTRUCTION	2022-03-17 00:00:55.402943+00
7547	4110	2022-03-17 07:37:24.055+00	ADD	CONSTRUCTION	2022-03-17 07:37:24.050862+00
7549	3460	2022-03-18 23:13:04.937+00	UPDATE	OPEN	2022-03-18 23:13:04.928569+00
7551	3925	2022-03-18 23:13:55.572+00	UPDATE	OPEN	2022-03-18 23:13:55.565929+00
7555	4030	2022-03-19 02:02:19.162+00	UPDATE	OPEN	2022-03-19 02:02:19.156023+00
7557	3795	2022-03-19 12:45:36.005+00	UPDATE	OPEN	2022-03-19 12:45:35.989836+00
7560	4115	2022-03-20 00:24:34.275+00	ADD	OPEN	2022-03-20 00:24:34.266274+00
7567	2670	2022-03-21 20:02:09.005+00	UPDATE	CONSTRUCTION	2022-03-21 20:02:09.000039+00
7568	1360	2022-03-22 01:35:22.585+00	UPDATE	CLOSED_TEMP	2022-03-22 01:35:22.56278+00
7569	4010	2022-03-23 12:44:06.49+00	UPDATE	OPEN	2022-03-23 12:44:06.445101+00
7573	4110	2022-03-24 08:57:57.084+00	UPDATE	OPEN	2022-03-24 08:57:57.071972+00
7577	3340	2022-03-25 06:58:34.241+00	UPDATE	CONSTRUCTION	2022-03-25 06:58:34.238644+00
7580	4120	2022-03-26 01:01:48.049+00	ADD	CONSTRUCTION	2022-03-26 01:01:48.040835+00
7586	4125	2022-03-26 17:58:20.874+00	ADD	PERMIT	2022-03-26 17:58:20.869956+00
7595	3415	2022-03-27 22:36:56.51+00	UPDATE	OPEN	2022-03-27 22:36:56.504406+00
7597	4130	2022-03-28 01:11:35.666+00	ADD	PERMIT	2022-03-28 01:11:35.661598+00
7599	2765	2022-03-28 12:27:22.889+00	UPDATE	OPEN	2022-03-28 12:27:22.874952+00
7603	3900	2022-03-30 01:34:03.791+00	UPDATE	OPEN	2022-03-30 01:34:03.781731+00
7607	4025	2022-03-30 19:59:12.924+00	UPDATE	OPEN	2022-03-30 19:59:12.907884+00
7609	4040	2022-03-31 06:49:38.913+00	UPDATE	OPEN	2022-03-31 06:49:38.901098+00
7625	4140	2022-04-01 09:51:08.635+00	ADD	CONSTRUCTION	2022-04-01 09:51:08.631075+00
7638	4145	2022-04-02 13:03:57.635+00	ADD	OPEN	2022-04-02 13:03:57.631464+00
7642	3970	2022-04-02 17:06:53.735+00	UPDATE	CONSTRUCTION	2022-04-02 17:06:53.727829+00
7647	4150	2022-04-03 20:25:14.206+00	ADD	PERMIT	2022-04-03 20:25:14.20099+00
7658	3825	2022-04-06 14:13:06.417+00	UPDATE	OPEN	2022-04-06 14:13:06.412373+00
7665	4160	2022-04-07 00:14:13.881+00	ADD	CONSTRUCTION	2022-04-07 00:14:13.868166+00
7675	4165	2022-04-09 00:02:47.08+00	ADD	PERMIT	2022-04-09 00:02:47.076291+00
7683	4170	2022-04-10 17:19:10.47+00	ADD	CONSTRUCTION	2022-04-10 17:19:10.459543+00
7694	4175	2022-04-13 09:32:12.7+00	ADD	PERMIT	2022-04-13 09:32:12.696365+00
7715	4185	2022-04-19 03:58:43.158+00	ADD	CONSTRUCTION	2022-04-19 03:58:43.14896+00
7718	4035	2022-04-19 21:04:23.32+00	UPDATE	CONSTRUCTION	2022-04-19 21:04:23.307654+00
7716	4160	2022-04-19 17:02:55.203+00	UPDATE	OPEN	2022-04-19 17:02:55.196411+00
7691	4055	2022-04-12 16:03:39.907+00	UPDATE	OPEN	2022-04-12 16:03:39.902415+00
7698	3760	2022-04-13 20:05:31.413+00	UPDATE	CONSTRUCTION	2022-04-13 20:05:31.398406+00
7701	4090	2022-04-14 03:29:35.258+00	UPDATE	CONSTRUCTION	2022-04-14 03:29:35.25334+00
7704	4180	2022-04-15 19:33:55.826+00	ADD	PERMIT	2022-04-15 19:33:55.821281+00
7729	4190	2022-04-21 20:03:08.402+00	ADD	PERMIT	2022-04-21 20:03:08.392411+00
7740	4195	2022-04-24 03:09:12.908+00	ADD	PERMIT	2022-04-24 03:09:12.903346+00
7744	3955	2022-04-25 14:54:14.926+00	UPDATE	CONSTRUCTION	2022-04-25 14:54:14.922013+00
7752	4200	2022-04-26 12:15:53.549+00	ADD	CONSTRUCTION	2022-04-26 12:15:53.544088+00
7758	4205	2022-04-27 08:16:14.595+00	ADD	PERMIT	2022-04-27 08:16:14.58981+00
7768	4210	2022-04-29 08:22:05.341+00	ADD	CONSTRUCTION	2022-04-29 08:22:05.337293+00
7779	4215	2022-05-01 06:35:35.638+00	ADD	PERMIT	2022-05-01 06:35:35.624765+00
7784	4220	2022-05-03 03:20:59.854+00	ADD	CONSTRUCTION	2022-05-03 03:20:59.849097+00
7787	3525	2022-05-04 14:43:07.565+00	UPDATE	CONSTRUCTION	2022-05-04 14:43:07.555758+00
7794	3890	2022-05-05 20:56:58.032+00	UPDATE	OPEN	2022-05-05 20:56:58.026243+00
7801	4120	2022-05-06 16:32:31.866+00	UPDATE	OPEN	2022-05-06 16:32:31.859761+00
7802	4230	2022-05-06 18:53:34.111+00	ADD	PERMIT	2022-05-06 18:53:34.104735+00
7804	3810	2022-05-06 21:41:24.252+00	UPDATE	OPEN	2022-05-06 21:41:24.243108+00
7809	4035	2022-05-08 14:03:11.666+00	UPDATE	OPEN	2022-05-08 14:03:11.657614+00
7812	4235	2022-05-08 22:08:47.391+00	ADD	PERMIT	2022-05-08 22:08:47.386878+00
7820	4240	2022-05-10 20:34:29.465+00	ADD	CONSTRUCTION	2022-05-10 20:34:29.458096+00
7827	4245	2022-05-12 00:38:01.032+00	ADD	PERMIT	2022-05-12 00:38:01.027778+00
7829	4175	2022-05-12 08:18:30.078+00	UPDATE	CONSTRUCTION	2022-05-12 08:18:30.073645+00
7836	3980	2022-05-12 20:18:37.302+00	UPDATE	OPEN	2022-05-12 20:18:37.276675+00
7838	4095	2022-05-12 21:53:31.674+00	UPDATE	PERMIT	2022-05-12 21:53:31.667226+00
7841	4250	2022-05-13 04:13:11.339+00	ADD	CONSTRUCTION	2022-05-13 04:13:11.333891+00
7846	4170	2022-05-13 21:04:30.481+00	UPDATE	OPEN	2022-05-13 21:04:30.476054+00
7852	4255	2022-05-14 18:59:02.133+00	ADD	PERMIT	2022-05-14 18:59:02.128684+00
7857	4230	2022-05-16 05:16:02.439+00	UPDATE	CONSTRUCTION	2022-05-16 05:16:02.434771+00
7862	4260	2022-05-16 19:44:31.648+00	ADD	PERMIT	2022-05-16 19:44:31.644714+00
7872	4265	2022-05-18 00:22:51.247+00	ADD	PERMIT	2022-05-18 00:22:51.240708+00
7877	4100	2022-05-19 05:38:30.179+00	UPDATE	OPEN	2022-05-19 05:38:30.172585+00
7878	4205	2022-05-19 07:00:04.682+00	UPDATE	CONSTRUCTION	2022-05-19 07:00:04.674612+00
7883	4270	2022-05-20 14:32:04.249+00	ADD	CONSTRUCTION	2022-05-20 14:32:04.244599+00
7895	4275	2022-05-22 20:55:52.067+00	ADD	PERMIT	2022-05-22 20:55:52.055654+00
7905	4190	2022-05-24 19:08:11.033+00	UPDATE	CONSTRUCTION	2022-05-24 19:08:11.028545+00
7906	3625	2022-05-24 19:12:11.4+00	UPDATE	CONSTRUCTION	2022-05-24 19:12:11.392056+00
7909	4280	2022-05-24 21:07:05.666+00	ADD	PERMIT	2022-05-24 21:07:05.661473+00
7913	4270	2022-05-25 13:08:58.611+00	UPDATE	OPEN	2022-05-25 13:08:58.605282+00
7919	3490	2022-05-26 17:41:58.997+00	UPDATE	CONSTRUCTION	2022-05-26 17:41:58.992921+00
7922	4285	2022-05-26 21:03:43.08+00	ADD	PERMIT	2022-05-26 21:03:43.075398+00
7929	4050	2022-05-27 06:49:40.52+00	UPDATE	OPEN	2022-05-27 06:49:40.504206+00
7934	1360	2022-05-27 22:31:56.29+00	UPDATE	OPEN	2022-05-27 22:31:56.283645+00
7938	4290	2022-05-28 03:22:55.711+00	ADD	OPEN	2022-05-28 03:22:55.70784+00
7941	4185	2022-05-28 04:14:35.507+00	UPDATE	OPEN	2022-05-28 04:14:35.503396+00
7949	2670	2022-05-30 00:04:06.267+00	UPDATE	OPEN	2022-05-30 00:04:06.261218+00
7953	3935	2022-05-30 18:47:22.077+00	UPDATE	CONSTRUCTION	2022-05-30 18:47:22.070156+00
7954	3970	2022-05-30 18:53:56.254+00	UPDATE	OPEN	2022-05-30 18:53:56.248541+00
7957	4295	2022-05-30 21:36:56.054+00	ADD	PERMIT	2022-05-30 21:36:56.050529+00
7962	3760	2022-05-31 19:55:52.142+00	UPDATE	OPEN	2022-05-31 19:55:52.138271+00
7970	4085	2022-06-02 00:16:57.133+00	UPDATE	CONSTRUCTION	2022-06-02 00:16:57.127887+00
7976	4300	2022-06-02 19:05:02.172+00	ADD	PERMIT	2022-06-02 19:05:02.167106+00
7984	4305	2022-06-04 06:37:12.962+00	ADD	OPEN	2022-06-04 06:37:12.958853+00
7990	4310	2022-06-05 05:55:16.758+00	ADD	PERMIT	2022-06-05 05:55:16.750889+00
7995	4235	2022-06-07 05:36:10.189+00	UPDATE	CONSTRUCTION	2022-06-07 05:36:10.183985+00
7998	4315	2022-06-07 14:26:12.395+00	ADD	CONSTRUCTION	2022-06-07 14:26:12.391394+00
7999	3525	2022-06-07 17:55:06.455+00	UPDATE	OPEN	2022-06-07 17:55:06.449729+00
8004	4320	2022-06-08 19:56:38.398+00	ADD	PERMIT	2022-06-08 19:56:38.387794+00
8013	3265	2022-06-10 00:44:10.196+00	UPDATE	OPEN	2022-06-10 00:44:10.188123+00
8015	4325	2022-06-10 11:33:55.989+00	ADD	PERMIT	2022-06-10 11:33:55.98504+00
8032	4335	2022-06-14 13:01:01.272+00	ADD	OPEN	2022-06-14 13:01:01.268285+00
8036	3625	2022-06-14 18:34:16.939+00	UPDATE	OPEN	2022-06-14 18:34:16.934182+00
8038	4005	2022-06-15 10:05:29.627+00	UPDATE	CONSTRUCTION	2022-06-15 10:05:29.62257+00
8045	4340	2022-06-16 19:58:16.943+00	ADD	CONSTRUCTION	2022-06-16 19:58:16.921745+00
8057	4345	2022-06-18 10:00:26.306+00	ADD	OPEN	2022-06-18 10:00:26.294014+00
8062	3385	2022-06-18 22:10:22.219+00	UPDATE	CONSTRUCTION	2022-06-18 22:10:22.213939+00
8064	4150	2022-06-19 07:20:14.833+00	UPDATE	CONSTRUCTION	2022-06-19 07:20:14.82032+00
8080	4355	2022-06-21 19:33:20.108+00	ADD	CONSTRUCTION	2022-06-21 19:33:20.104304+00
8085	4175	2022-06-22 15:03:09.046+00	UPDATE	OPEN	2022-06-22 15:03:09.040657+00
8090	4360	2022-06-23 06:14:37.517+00	ADD	PERMIT	2022-06-23 06:14:37.504571+00
8092	3540	2022-06-23 13:26:22.659+00	UPDATE	CONSTRUCTION	2022-06-23 13:26:22.652609+00
8096	3340	2022-06-23 16:18:37.219+00	UPDATE	OPEN	2022-06-23 16:18:37.210747+00
8102	4365	2022-06-24 10:30:23.052+00	ADD	CONSTRUCTION	2022-06-24 10:30:23.01304+00
8104	2640	2022-06-24 17:16:59.186+00	UPDATE	OPEN	2022-06-24 17:16:59.170356+00
8111	4370	2022-06-25 03:51:10.485+00	ADD	PERMIT	2022-06-25 03:51:10.480946+00
8116	555	2022-06-26 00:23:54.878+00	UPDATE	CLOSED_PERM	2022-06-26 00:23:54.867229+00
8118	4375	2022-06-26 09:58:26.544+00	ADD	PERMIT	2022-06-26 09:58:26.529268+00
8131	4380	2022-06-29 00:58:08.656+00	ADD	CONSTRUCTION	2022-06-29 00:58:08.651934+00
8137	4385	2022-06-29 07:21:57.628+00	ADD	PERMIT	2022-06-29 07:21:57.610748+00
8138	4235	2022-06-29 11:39:36.902+00	UPDATE	OPEN	2022-06-29 11:39:36.898351+00
8143	4150	2022-06-30 00:13:02.953+00	UPDATE	OPEN	2022-06-30 00:13:02.94815+00
8146	4205	2022-06-30 06:20:29.839+00	UPDATE	OPEN	2022-06-30 06:20:29.832026+00
8148	4240	2022-06-30 06:21:28.501+00	UPDATE	OPEN	2022-06-30 06:21:28.492942+00
8149	4200	2022-06-30 06:22:08.053+00	UPDATE	OPEN	2022-06-30 06:22:08.048005+00
8154	3490	2022-06-30 20:01:12.054+00	UPDATE	OPEN	2022-06-30 20:01:12.041301+00
8163	4140	2022-07-01 13:42:32.435+00	UPDATE	OPEN	2022-07-01 13:42:32.424589+00
8167	4005	2022-07-02 09:37:15.86+00	UPDATE	OPEN	2022-07-02 09:37:15.855578+00
8172	4395	2022-07-02 13:35:26.686+00	ADD	OPEN	2022-07-02 13:35:26.682276+00
8177	4400	2022-07-02 13:55:21.676+00	ADD	OPEN	2022-07-02 13:55:21.67365+00
8183	4405	2022-07-03 00:45:04.537+00	ADD	PERMIT	2022-07-03 00:45:04.532769+00
8190	4045	2022-07-04 14:09:47.138+00	UPDATE	CONSTRUCTION	2022-07-04 14:09:47.1342+00
8192	4410	2022-07-05 07:34:56.852+00	ADD	PERMIT	2022-07-05 07:34:56.847733+00
8199	4415	2022-07-06 13:39:14.222+00	ADD	OPEN	2022-07-06 13:39:14.188457+00
8206	4420	2022-07-07 14:38:35.571+00	ADD	CONSTRUCTION	2022-07-07 14:38:35.567956+00
8217	4090	2022-07-09 14:19:18.504+00	UPDATE	OPEN	2022-07-09 14:19:18.499224+00
8218	4080	2022-07-09 17:37:23.882+00	UPDATE	CONSTRUCTION	2022-07-09 17:37:23.876761+00
8220	4260	2022-07-09 19:14:38.892+00	UPDATE	CONSTRUCTION	2022-07-09 19:14:38.886906+00
8221	4425	2022-07-09 20:14:54.329+00	ADD	CONSTRUCTION	2022-07-09 20:14:54.320537+00
8225	4060	2022-07-10 00:32:52.973+00	UPDATE	CONSTRUCTION	2022-07-10 00:32:52.969042+00
8228	4310	2022-07-10 03:54:48.85+00	UPDATE	CONSTRUCTION	2022-07-10 03:54:48.84597+00
8234	4430	2022-07-11 04:03:21.505+00	ADD	CONSTRUCTION	2022-07-11 04:03:21.502239+00
8241	4435	2022-07-13 07:59:30.436+00	ADD	CONSTRUCTION	2022-07-13 07:59:30.427477+00
\.


--
-- TOC entry 3211 (class 0 OID 73699)
-- Dependencies: 279
-- Data for Name: site_change; Type: TABLE DATA; Schema: supercharge; Owner: supercharge_user_test
--

COPY "supercharge"."site_change" ("site_id", "user_id", "version", "change_date", "field_name", "old_value", "new_value") FROM stdin;
850	1000006	2	2016-05-17 00:41:29.565+00	address.street	Buena Park Service Plus 6692 Auto Center Dr	6692 Auto Center Dr
855	1000006	2	2016-05-21 05:25:42.679+00	gps	SiteGPS{latitude=43.587557, longitude=16.577571}	SiteGPS{latitude=43.587469, longitude=16.576933}
855	1000006	3	2016-05-21 05:30:21.909+00	gps	SiteGPS{latitude=43.587469, longitude=16.576933}	SiteGPS{latitude=43.587987, longitude=16.577041}
740	1000006	2	2016-05-22 15:06:56.414+00	status	PERMIT	CONSTRUCTION
740	1000006	3	2016-05-22 15:09:34.36+00	stallCount	6	8
785	1000006	2	2016-05-26 12:36:04.817+00	gps	SiteGPS{latitude=60.312142, longitude=11.143892}	SiteGPS{latitude=60.312269, longitude=11.145104}
785	1000006	2	2016-05-26 12:36:04.817+00	elevationMeters	208	209
785	1000006	2	2016-05-26 12:36:04.817+00	stallCount	1	20
785	1000006	3	2016-05-26 12:36:52.674+00	address.street	Nebbenes servicearea northbound, exact location unknown	Nebbenes servicearea northbound, next to Nebbenes Kro
785	1000006	4	2016-05-27 17:40:22.407+00	status	PERMIT	CONSTRUCTION
855	1000006	4	2016-05-29 23:14:31.051+00	stallCount	8	6
855	1000006	5	2016-05-31 23:13:59.239+00	status	CONSTRUCTION	OPEN
855	1000006	5	2016-05-31 23:13:59.239+00	dateOpened	\N	2016-05-31
855	1000006	6	2016-06-01 00:16:50.426+00	locationId	\N	splitcroatiasupercharger
845	1000006	5	2016-06-01 23:44:22.956+00	locationId	\N	minersupercharger
845	1000006	5	2016-06-01 23:44:22.956+00	status	CONSTRUCTION	OPEN
845	1000006	5	2016-06-01 23:44:22.956+00	dateOpened	\N	2016-06-01
845	1000006	6	2016-06-01 23:44:39.112+00	gps	SiteGPS{latitude=36.893458, longitude=-89.534564}	SiteGPS{latitude=36.893583, longitude=-89.533986}
845	1000006	7	2016-06-01 23:44:47.033+00	stallCount	6	8
740	1000006	4	2016-06-03 13:05:01.883+00	locationId	\N	tonopahsupercharger
740	1000006	4	2016-06-03 13:05:01.883+00	status	CONSTRUCTION	OPEN
740	1000006	4	2016-06-03 13:05:01.883+00	dateOpened	\N	2016-06-03
740	1000006	5	2016-06-03 13:05:15.944+00	gps	SiteGPS{latitude=38.069725, longitude=-117.232258}	SiteGPS{latitude=38.069801, longitude=-117.232243}
740	1000006	6	2016-06-03 13:05:30.164+00	address.street	201 N. Main St.	171 Main St.
860	1000006	2	2016-06-11 16:13:23.139+00	status	PERMIT	CONSTRUCTION
925	1000006	2	2016-10-07 14:20:41.846+00	status	PERMIT	CONSTRUCTION
930	1000006	6	2016-10-07 14:22:37.654+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-north-aurora-il.78488
840	1000006	6	2016-10-08 00:53:56.925+00	status	OPEN	CONSTRUCTION
840	1000006	6	2016-10-08 00:53:56.925+00	dateOpened	2016-09-16	\N
840	1000006	7	2016-10-29 00:01:13.12+00	status	CONSTRUCTION	OPEN
840	1000006	7	2016-10-29 00:01:13.12+00	dateOpened	\N	2016-09-27
965	1000006	2	2016-11-04 03:05:10.853+00	address.street	200 Interstate 10 Frontage Rd	2415 N Main St Junction
965	1000006	3	2016-11-04 03:06:33.958+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-junction-tx.80397
745	1000006	5	2016-11-10 23:55:16.909+00	status	CONSTRUCTION	OPEN
745	1000006	5	2016-11-10 23:55:16.909+00	dateOpened	\N	2016-11-10
275	1000006	2	2016-11-13 21:58:21.792+00	stallCount	2	10
275	1000006	3	2016-11-13 21:58:25.547+00	developerNotes	\N	2016-11-13: Someone emailed me with the correct number of stalls
275	1000006	4	2016-11-13 21:59:05.681+00	name	Macon, France	Mâcon, France
745	1000006	6	2016-11-16 13:16:45.642+00	locationId	\N	liezensupercharger
970	1000006	2	2016-11-17 02:07:02.899+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/columbia-sc-sc.47352
970	1000006	3	2016-11-17 02:07:29.07+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/columbia-sc-sc.47352	https://teslamotorsclub.com/tmc/threads/columbia-sc-sc.47352/
135	1000006	2	2016-06-26 01:42:33.576+00	status	OPEN	CLOSED
135	1000006	2	2016-06-26 01:42:33.576+00	dateOpened	2012-12-21	\N
135	1000006	2	2016-06-26 01:42:33.576+00	developerNotes	2016-03-28: Updated from 4 to 12 stalls.	2016-03-28: Updated from 4 to 12 stalls.\r\n2016-06-25: closed, orig open date is "12/21/2012"
135	1000006	3	2016-06-26 15:19:05.034+00	status	CLOSED	OPEN
135	1000006	3	2016-06-26 15:19:05.034+00	dateOpened	\N	2012-12-21
820	1000006	2	2016-06-27 23:28:45.091+00	status	PERMIT	CONSTRUCTION
820	1000006	3	2016-06-29 19:19:19.126+00	gps	SiteGPS{latitude=42.295581, longitude=-73.239888}	SiteGPS{latitude=42.29571, longitude=-73.239245}
835	1000006	2	2016-06-30 00:44:20.629+00	stallCount	4	6
835	1000006	3	2016-06-30 00:44:43.709+00	developerNotes	\N	2016-06-29: correction via email stalls 4->6
230	1000006	2	2016-06-30 00:50:55.664+00	locationId	universalbusinesspark	beijingnuocentersupercharger
230	1000006	3	2016-06-30 00:51:05.048+00	stallCount	2	4
375	1000006	2	2016-06-30 00:52:19.792+00	locationId	reddeersabupercharger	reddeersupercharger
885	1000006	2	2016-07-15 20:02:04.738+00	locationId	Drachten, Netherlands	drachtensupercharger
885	1000006	2	2016-07-15 20:02:04.738+00	name	drachtensupercharger	Drachten, Netherlands
745	1000006	2	2016-07-18 19:48:21.253+00	status	PERMIT	CONSTRUCTION
895	1000006	2	2016-07-20 05:41:37.754+00	gps	SiteGPS{latitude=28.144523, longitude=-81.788349}	SiteGPS{latitude=26.144523, longitude=-81.788349}
895	1000006	3	2016-07-20 05:53:51.908+00	gps	SiteGPS{latitude=26.144523, longitude=-81.788349}	SiteGPS{latitude=26.144523, longitude=-81.788849}
895	1000006	3	2016-07-20 05:53:51.908+00	elevationMeters	40	2
895	1000006	4	2016-07-20 05:55:45.91+00	gps	SiteGPS{latitude=26.144523, longitude=-81.788849}	SiteGPS{latitude=26.14462, longitude=-81.788849}
805	1000006	3	2016-07-20 17:45:39.324+00	locationId	\N	valenciaspainsupercharger
805	1000006	3	2016-07-20 17:45:39.324+00	status	CONSTRUCTION	OPEN
805	1000006	3	2016-07-20 17:45:39.324+00	dateOpened	\N	2016-07-20
805	1000006	4	2016-07-20 17:45:58.969+00	gps	SiteGPS{latitude=39.542953, longitude=-0.451547}	SiteGPS{latitude=39.542965, longitude=-0.451521}
805	1000006	5	2016-07-20 17:46:20.37+00	address.street	Carrer de Leonardo da Vinci, 1	S/N Carrer de Leonardo Da Vinci Paterna
595	1000006	2	2016-07-27 05:43:26.318+00	status	PERMIT	CONSTRUCTION
595	1000006	2	2016-07-27 05:43:26.318+00	stallCount	6	8
650	1000006	2	2016-08-06 14:54:20.02+00	gps	SiteGPS{latitude=39.601655, longitude=-110.83131}	SiteGPS{latitude=39.600731, longitude=-110.831701}
905	1000006	5	2016-08-15 23:47:42.898+00	stallCount	6	10
875	1000006	2	2016-08-17 12:07:08.492+00	stallCount	4	6
875	1000006	3	2016-08-17 12:07:36.088+00	developerNotes	\N	2016-08-17: "there was an upgrade and there are now 6 stalls"
860	1000006	5	2016-08-19 00:58:11.404+00	address.street	800 Harker St	500 Thomas Edison Pkwy
820	1000006	4	2016-08-20 16:26:55.758+00	status	CONSTRUCTION	OPEN
820	1000006	4	2016-08-20 16:26:55.758+00	dateOpened	\N	2016-08-20
795	1000006	2	2016-10-13 13:10:52.168+00	locationId	\N	edsbruksupercharger
795	1000006	2	2016-10-13 13:10:52.168+00	status	CONSTRUCTION	OPEN
795	1000006	2	2016-10-13 13:10:52.168+00	dateOpened	\N	2016-10-13
795	1000006	3	2016-10-13 13:11:09.527+00	gps	SiteGPS{latitude=57.978926, longitude=16.48334}	SiteGPS{latitude=57.97985, longitude=16.482407}
795	1000006	4	2016-10-13 13:11:20.769+00	stallCount	4	6
795	1000006	5	2016-10-13 13:11:34.447+00	address.zip	\N	590 98
850	1000006	3	2016-10-20 18:15:37.454+00	locationId	\N	buenaparksupercharger
850	1000006	3	2016-10-20 18:15:37.454+00	status	CONSTRUCTION	OPEN
850	1000006	3	2016-10-20 18:15:37.454+00	dateOpened	\N	2016-10-20
850	1000006	3	2016-10-20 18:15:37.454+00	stallCount	6	8
850	1000006	4	2016-10-20 18:15:54.013+00	gps	SiteGPS{latitude=33.863673, longitude=-117.991041}	SiteGPS{latitude=33.863379, longitude=-117.99103}
930	1000006	7	2016-10-23 22:26:44.472+00	developerNotes	\N	.
665	1000006	2	2016-10-24 20:25:10.542+00	status	PERMIT	CONSTRUCTION
960	1000006	2	2016-10-30 23:40:11.785+00	name	Zhaoqing - Phoenix Hotel Supercharger	Zhaoqing - Phoenix Hotel
900	1000006	4	2016-11-04 23:11:29.994+00	status	CONSTRUCTION	OPEN
900	1000006	4	2016-11-04 23:11:29.994+00	dateOpened	\N	2016-11-04
900	1000006	5	2016-11-05 19:24:34.613+00	locationId	\N	bandonsupercharger
895	1000006	5	2016-11-13 21:40:18.78+00	status	PERMIT	CONSTRUCTION
840	1000006	3	2016-08-09 23:50:17.072+00	status	PERMIT	CONSTRUCTION
905	1000006	2	2016-08-15 23:46:25.678+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-i-5-stockdale-hwy-under-construction.75485/#post-1678927
905	1000006	3	2016-08-15 23:47:18.005+00	stallCount	8	86
905	1000006	4	2016-08-15 23:47:23.917+00	stallCount	86	6
860	1000006	3	2016-08-19 00:57:30.794+00	locationId	\N	porthuronsupercharger
860	1000006	3	2016-08-19 00:57:30.794+00	status	CONSTRUCTION	OPEN
860	1000006	3	2016-08-19 00:57:30.794+00	dateOpened	\N	2016-08-18
860	1000006	4	2016-08-19 00:57:43.536+00	gps	SiteGPS{latitude=42.9985134, longitude=-82.4285663}	SiteGPS{latitude=42.998817, longitude=-82.428935}
785	1000006	5	2016-08-31 23:37:25.718+00	status	CONSTRUCTION	OPEN
785	1000006	5	2016-08-31 23:37:25.718+00	dateOpened	\N	2016-08-31
785	1000006	6	2016-09-02 03:00:55.6+00	locationId	\N	eldsvollverknorwaysupercharger
785	1000006	7	2016-09-03 12:01:33.031+00	urlDiscuss	https://www.facebook.com/groups/TeslaOwnersClubNorway/search/?query=nebbenes	http://www.tocn.no/2016/09/nebbenes-har-na-apnet/
595	1000006	3	2016-09-09 02:19:57.522+00	status	CONSTRUCTION	OPEN
595	1000006	3	2016-09-09 02:19:57.522+00	dateOpened	\N	2016-09-08
595	1000006	4	2016-09-09 02:20:09.139+00	locationId	\N	crescentcitysupercharger
595	1000006	5	2016-09-09 02:20:16.316+00	stallCount	8	6
595	1000006	6	2016-09-09 02:20:27.723+00	gps	SiteGPS{latitude=41.752546, longitude=-124.194827}	SiteGPS{latitude=41.752393, longitude=-124.1944}
595	1000006	7	2016-09-09 02:20:40.57+00	address.street	1064 Front St	1000 Front St
745	1000006	3	2016-09-11 15:06:35.688+00	stallCount	6	8
745	1000006	4	2016-09-11 15:06:51.206+00	developerNotes	\N	2016-09-11: email saying this site has 8 stalls.
920	1000006	2	2016-09-12 12:24:52.175+00	address.street	Hilton Hotel,	Hilton Hotel, Kingsway W
920	1000006	2	2016-09-12 12:24:52.175+00	address.city	Dundee, Scotland	Dundee
920	1000006	3	2016-09-12 12:25:08.862+00	address.zip	\N	DD2 5JT
920	1000006	4	2016-09-12 21:49:51.119+00	name	Dundee, Scotland	Dundee, UK
800	1000006	2	2016-09-14 23:19:49.157+00	status	PERMIT	CONSTRUCTION
840	1000006	4	2016-09-17 14:48:29.849+00	locationId	\N	baycitysupercharger
840	1000006	4	2016-09-17 14:48:29.849+00	status	CONSTRUCTION	OPEN
840	1000006	4	2016-09-17 14:48:29.849+00	dateOpened	\N	2016-09-16
820	1000006	5	2016-09-19 02:14:05.488+00	locationId	\N	leemasupercharger
900	1000006	2	2016-09-20 23:36:21.77+00	status	PERMIT	CONSTRUCTION
900	1000006	3	2016-09-20 23:36:53.594+00	urlDiscuss	https://teslamotorsclub.com/tmc/posts/1654498/	https://teslamotorsclub.com/tmc/threads/supercharger-bandon-or.74467/
915	1000006	2	2016-10-01 06:12:37.98+00	status	PERMIT	CONSTRUCTION
930	1000006	3	2016-10-06 00:44:24.127+00	developerNotes	\N	.
930	1000006	4	2016-10-06 00:44:27.332+00	developerNotes	.	\N
940	1000006	2	2016-10-13 05:23:16.436+00	name	Shanghai K11 Art Mall Supercharger	Shanghai K11 Art Mall
940	1000006	4	2016-10-13 09:12:50.375+00	name	Shanghai K11 Art Mall	Shanghai K11 Art Mall, China
945	1000006	3	2016-10-13 09:13:10.864+00	name	Chenzhou - Yizhang	Chenzhou - Yizhang, China
910	1000006	2	2016-09-20 12:09:03.11+00	stallCount	4	8
835	1000006	4	2016-09-23 03:08:57.701+00	status	CONSTRUCTION	OPEN
835	1000006	4	2016-09-23 03:08:57.701+00	dateOpened	\N	2016-09-22
835	1000006	5	2016-09-23 03:09:05.521+00	locationId	\N	muricasupercharger
835	1000006	6	2016-09-23 03:09:19.992+00	gps	SiteGPS{latitude=38.039404, longitude=-1.150032}	SiteGPS{latitude=38.038172, longitude=-1.149343}
905	1000006	6	2016-09-29 20:43:10.231+00	status	CONSTRUCTION	OPEN
905	1000006	6	2016-09-29 20:43:10.231+00	dateOpened	\N	2016-09-29
905	1000006	7	2016-09-29 20:43:24.103+00	gps	SiteGPS{latitude=35.354427, longitude=-119.331746}	SiteGPS{latitude=35.354643, longitude=-119.331607}
905	1000006	8	2016-09-29 20:43:52.794+00	locationId	\N	bakersfieldsupercharger
915	1000006	3	2016-10-01 06:38:53.931+00	gps	SiteGPS{latitude=44.212848, longitude=-72.575519}	SiteGPS{latitude=44.212408, longitude=-72.575902}
915	1000006	4	2016-10-03 22:22:23.828+00	locationId	\N	berlinvtsupercharger
915	1000006	4	2016-10-03 22:22:23.828+00	status	CONSTRUCTION	OPEN
915	1000006	4	2016-10-03 22:22:23.828+00	dateOpened	\N	2016-10-03
915	1000006	5	2016-10-03 22:22:37.534+00	gps	SiteGPS{latitude=44.212408, longitude=-72.575902}	SiteGPS{latitude=44.212532, longitude=-72.576462}
915	1000006	6	2016-10-03 22:22:52.925+00	address.street	159 Paine Turnpike North	213 Payne Turnpike
930	1000006	2	2016-10-06 00:30:07.134+00	status	PERMIT	OPEN
930	1000006	2	2016-10-06 00:30:07.134+00	dateOpened	\N	2016-10-05
930	1000006	5	2016-10-06 00:44:45.145+00	name	Aurora (north), IL	North Aurora, IL
945	1000006	2	2016-10-13 05:45:57.693+00	dateOpened	2016-10-12	2016-09-01
940	1000006	3	2016-10-13 05:46:12.275+00	dateOpened	2016-10-12	2016-08-17
685	1000006	2	2016-11-13 21:56:36.091+00	stallCount	4	8
685	1000006	2	2016-11-13 21:56:36.091+00	developerNotes	\N	2016-11-13: Someone emailed me with the correct number of stalls
965	1000006	4	2016-11-19 16:27:10.181+00	gps	SiteGPS{latitude=30.509782, longitude=-99.774667}	SiteGPS{latitude=30.509488, longitude=-99.774967}
905	1000006	9	2016-11-18 20:43:52.724+00	isBattery	false	true
910	1000006	3	2016-11-24 18:46:59.498+00	status	CONSTRUCTION	OPEN
910	1000006	3	2016-11-24 18:46:59.498+00	dateOpened	\N	2016-11-24
910	1000006	4	2016-11-25 21:12:30.091+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-fort-macleod-ab.78168/
910	1000006	5	2016-11-29 03:40:33.779+00	locationId	\N	fortmacleadsupercharger
985	1000006	2	2016-12-02 03:04:12.881+00	status	CONSTRUCTION	PERMIT
985	1000006	3	2016-12-02 03:06:41.481+00	address.street	2571 I-10 Service Road	2571 I-10 Service Rd
925	1000006	3	2016-12-03 02:19:30.823+00	status	CONSTRUCTION	OPEN
925	1000006	3	2016-12-03 02:19:30.823+00	dateOpened	\N	2016-12-02
920	1000006	5	2016-12-03 02:21:05.418+00	status	CONSTRUCTION	OPEN
920	1000006	5	2016-12-03 02:21:05.418+00	dateOpened	\N	2016-12-02
920	1000006	6	2016-12-03 02:21:27.836+00	gps	SiteGPS{latitude=56.466249, longitude=-3.064113}	SiteGPS{latitude=56.466428, longitude=-3.062962}
920	1000006	7	2016-12-03 02:21:38.165+00	locationId	\N	dundeesupercharger
950	1000006	2	2016-12-05 23:54:55.265+00	locationId	\N	moncalierisupercharger
950	1000006	2	2016-12-05 23:54:55.265+00	status	CONSTRUCTION	OPEN
950	1000006	2	2016-12-05 23:54:55.265+00	dateOpened	\N	2016-12-05
950	1000006	3	2016-12-05 23:55:10.418+00	gps	SiteGPS{latitude=44.973462, longitude=7.729805}	SiteGPS{latitude=44.973333, longitude=7.730113}
990	1000006	2	2016-12-06 13:52:02.639+00	stallCount	4	8
990	1000006	3	2016-12-06 14:00:40.368+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-birdhill-ireland.81940/
990	1000006	4	2016-12-06 14:06:11.895+00	name	Tipperary, Ireland	Birdhill, Ireland
990	1000006	4	2016-12-06 14:06:11.895+00	address.street	M7 Jtn 27, Coolderry, Birdhill, Co. Tipperary	M7 Jtn 27, Coolderry
990	1000006	4	2016-12-06 14:06:11.895+00	address.city	Tipperary	Birdhill
990	1000006	4	2016-12-06 14:06:11.895+00	address.state	\N	Tipperary
925	1000006	4	2016-12-14 04:41:10.324+00	locationId	\N	tarrytownsupercharger
665	1000006	3	2016-12-20 02:57:06.75+00	status	CONSTRUCTION	OPEN
665	1000006	3	2016-12-20 02:57:06.75+00	dateOpened	\N	2016-12-19
665	1000006	3	2016-12-20 02:57:06.75+00	urlDiscuss	\N	https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/15541155_379319599076473_8086123036327016002_n.jpg?oh=8262165dc7331943a9bce890a1bcf3f5&oe=58B22601
665	1000006	4	2016-12-20 03:01:01.461+00	urlDiscuss	https://scontent-waw1-1.xx.fbcdn.net/v/t1.0-9/15541155_379319599076473_8086123036327016002_n.jpg?oh=8262165dc7331943a9bce890a1bcf3f5&oe=58B22601	https://www.reddit.com/r/teslamotors/comments/5j8lf1/third_supercharger_opened_in_poland_this_year/
665	1000006	5	2016-12-20 14:07:49.701+00	locationId	\N	poznansupercharger
665	1000006	6	2016-12-20 14:09:24.942+00	stallCount	6	4
980	1000006	7	2016-12-27 15:01:54.151+00	locationId	\N	charnockrichardsupercharger
995	1000006	2	2016-12-28 18:05:49.678+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-paducah-kentucky.60874	https://teslamotorsclub.com/tmc/threads/supercharger-kuttawa-kentucky.82958/
1015	1000006	2	2016-12-31 19:08:03.127+00	name	Laiguangying Supercharger	Laiguangying, Beijing, China
995	1000006	3	2017-01-01 16:31:49.63+00	gps	SiteGPS{latitude=37.073436, longitude=-88.12418}	SiteGPS{latitude=37.073405, longitude=-88.124752}
995	1000006	4	2017-01-01 16:31:55.876+00	status	CONSTRUCTION	OPEN
995	1000006	4	2017-01-01 16:31:55.876+00	dateOpened	\N	2017-01-01
995	1000006	5	2017-01-01 16:32:13.781+00	address.street	42 Days Inn Dr	62 Days Inn Dr
995	1000006	6	2017-01-01 16:32:32.971+00	locationId	\N	kuttawasupercharger
980	1000006	2	2016-12-26 19:49:16.661+00	address.street	Jct27-28 M6 Northbound Mill Ln,	Jct27-28 M6 Northbound Mill Ln
980	1000006	3	2016-12-26 19:50:28.752+00	name	Chorley, UK	Charnock Richard, UK
980	1000006	3	2016-12-26 19:50:28.752+00	developerNotes	UK\r\n53.630562, -2.692578	\N
980	1000006	4	2016-12-26 19:50:58.563+00	address.street	Jct27-28 M6 Northbound Mill Ln	Jct 27-28 M6 Northbound Mill Ln
980	1000006	5	2016-12-26 19:52:20.852+00	name	Charnock Richard, UK	Chorley, UK
980	1000006	6	2016-12-26 19:57:07.189+00	status	CONSTRUCTION	OPEN
980	1000006	6	2016-12-26 19:57:07.189+00	dateOpened	\N	2016-12-24
965	1000006	5	2017-01-05 03:29:16.842+00	locationId	\N	junctionsupercharger
965	1000006	5	2017-01-05 03:29:16.842+00	status	CONSTRUCTION	OPEN
965	1000006	5	2017-01-05 03:29:16.842+00	dateOpened	\N	2017-01-04
965	1000006	6	2017-01-05 03:29:36.371+00	gps	SiteGPS{latitude=30.509488, longitude=-99.774967}	SiteGPS{latitude=30.509233, longitude=-99.77456}
965	1000006	7	2017-01-05 03:29:54.059+00	address.street	2415 N Main St Junction	2415 N Main St
800	1000006	3	2017-01-10 02:57:31.235+00	status	CONSTRUCTION	OPEN
800	1000006	3	2017-01-10 02:57:31.235+00	dateOpened	\N	2017-01-09
1080	1000006	2	2017-04-22 21:40:52.904+00	address.street	?	755 E Boughton Rd
800	1000006	4	2017-01-15 22:43:32.376+00	locationId	\N	limamtsupercharger
1025	1000006	2	2017-01-25 02:22:37.828+00	name	Taipei Expo Park Supercharger	Taipei, Taiwan
1025	1000006	3	2017-01-25 02:22:52.308+00	address.street	1 Yumen StTaipei, Taiwan104	1 Yumen St
975	1000006	2	2017-02-10 17:21:18.47+00	status	PERMIT	CONSTRUCTION
975	1000006	3	2017-02-16 17:58:15.837+00	gps	SiteGPS{latitude=42.216906, longitude=-121.756778}	SiteGPS{latitude=42.216906, longitude=-121.756218}
895	1000006	6	2017-02-24 03:45:26.045+00	status	CONSTRUCTION	OPEN
895	1000006	6	2017-02-24 03:45:26.045+00	dateOpened	\N	2017-02-23
1045	1000006	2	2017-02-26 21:28:25.655+00	name	Newport Pagnell, Uninted Kingdom	Newport Pagnell, UK
1050	1000006	2	2017-03-10 04:09:41.632+00	address.city	Woodall	Sheffield
1050	1000006	2	2017-03-10 04:09:41.632+00	address.state	Sheffield	\N
975	1000006	4	2017-03-18 05:16:19.439+00	status	CONSTRUCTION	OPEN
975	1000006	4	2017-03-18 05:16:19.439+00	dateOpened	\N	2016-03-16
975	1000006	5	2017-03-20 05:20:37.951+00	locationId	\N	klamathfallssupercharger
1045	1000006	3	2017-03-22 00:44:11.741+00	status	CONSTRUCTION	OPEN
1045	1000006	3	2017-03-22 00:44:11.741+00	dateOpened	\N	2017-03-21
1045	1000006	4	2017-03-22 00:44:30.193+00	locationId	\N	newportpagnellsouthboundsupercharger
1045	1000006	5	2017-03-22 00:44:52.634+00	gps	SiteGPS{latitude=52.083151, longitude=-0.749882}	SiteGPS{latitude=52.084312, longitude=-0.748467}
1045	1000006	6	2017-03-22 00:47:07.19+00	gps	SiteGPS{latitude=52.084312, longitude=-0.748467}	SiteGPS{latitude=52.083151, longitude=-0.749882}
1045	1000006	7	2017-03-22 00:49:38.973+00	gps	SiteGPS{latitude=52.083151, longitude=-0.749882}	SiteGPS{latitude=52.084312, longitude=-0.748467}
1050	1000006	3	2017-03-22 00:50:43.406+00	status	CONSTRUCTION	OPEN
1050	1000006	3	2017-03-22 00:50:43.406+00	dateOpened	\N	2017-03-21
1050	1000006	4	2017-03-22 00:50:56.219+00	locationId	\N	woodallsouthboundsupercharger
1050	1000006	5	2017-03-22 00:53:54.072+00	gps	SiteGPS{latitude=53.315502, longitude=-1.280657}	SiteGPS{latitude=53.314145, longitude=-1.281904}
1050	1000006	6	2017-03-22 00:54:01.693+00	stallCount	6	8
700	1000006	2	2017-03-22 03:50:16.579+00	gps	SiteGPS{latitude=38.695341, longitude=-119.547596}	SiteGPS{latitude=38.696426, longitude=-119.548534}
240	1000006	2	2017-03-29 20:59:55.225+00	stallCount	8	14
1065	1000006	2	2017-03-30 17:44:05.838+00	name	Florida City, FL 33034	Florida City, FL
1065	1000006	3	2017-03-30 17:44:37.218+00	status	PERMIT	CONSTRUCTION
1065	1000006	4	2017-03-30 17:48:09.267+00	developerNotes	\N	.
1065	1000006	5	2017-03-30 17:48:13.026+00	developerNotes	.	\N
785	1000006	8	2017-03-31 21:46:59.972+00	address.street	Nebbenes servicearea northbound, next to Nebbenes Kro	Nebbenes service area northbound, next to Nebbenes Kro
1065	1000006	6	2017-04-02 18:09:25.514+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/florida-city-fl.88492
975	1000006	6	2017-04-09 13:42:29.62+00	dateOpened	2016-03-16	2017-03-16
1010	1000006	2	2017-04-10 02:58:49.85+00	developerNotes	\N	.
1010	1000006	3	2017-04-10 03:01:32.287+00	status	PERMIT	CONSTRUCTION
1065	1000006	7	2017-04-10 03:48:12.931+00	gps	SiteGPS{latitude=25.457046, longitude=-80.474565}	SiteGPS{latitude=25.456825, longitude=-80.474341}
1010	1000006	4	2017-04-14 04:17:41.216+00	gps	SiteGPS{latitude=49.786446, longitude=3.33236}	SiteGPS{latitude=49.787019, longitude=3.335626}
1010	1000006	5	2017-04-14 04:17:49.477+00	stallCount	4	8
1010	1000006	6	2017-04-14 04:18:01.506+00	status	CONSTRUCTION	OPEN
1010	1000006	6	2017-04-14 04:18:01.506+00	dateOpened	\N	2017-04-13
1010	1000006	7	2017-04-14 04:18:15.205+00	locationId	\N	airedurvillerssupercharger
1010	1000006	8	2017-04-14 04:18:36.989+00	address.street	Aire de Urvillers Autoroute des Anglais 02690	A26 Aire d'Urvillers
895	1000006	7	2017-04-22 21:32:27.35+00	locationId	\N	naplessupercharger
985	1000006	4	2017-04-26 07:01:17.246+00	locationId	\N	fortstocktonsupercharger
1080	1000006	4	2017-04-26 07:11:07.407+00	locationId	\N	bolingbrooksupercharger
1085	1000006	2	2017-05-03 08:49:03.126+00	address.street	a	Einsteinova 18
1085	1000006	3	2017-05-03 08:59:53.013+00	address.street	Einsteinova 18	Aupark Shopping Center, Einsteinova 18, 851 01
1085	1000006	4	2017-05-03 09:00:07.187+00	urlDiscuss	\N	http://teslaclub.sk/forum/všeobecné-fórum/nab%C3%ADjacie-štandardy-a-infraštruktúra/nab%C3%ADjacie-stanice/14432-nový-supercharger-v-bratislave?pp=14636
115	1000006	2	2017-05-03 17:03:18.145+00	locationId	gilroysupercharger	gilroyoutletsupercharger
1085	1000006	5	2017-05-03 21:25:07.666+00	gps	SiteGPS{latitude=48.133316, longitude=17.106351}	SiteGPS{latitude=48.132138, longitude=17.108438}
1085	1000006	6	2017-05-04 22:13:28.602+00	developerNotes	\N	.
1085	1000006	7	2017-05-04 22:13:38.655+00	developerNotes	.	\N
865	1000006	2	2017-05-06 07:16:05.528+00	locationId	hongkongemaxsupercharger	hkemaxsupercharger
170	1000006	2	2017-05-06 07:16:44.668+00	locationId	grantspasssupercharger	grantspassoregonsupercharger
135	1000006	4	2017-05-06 07:25:32.539+00	locationId	newarksupercharger	newarkdesupercharger
120	1000006	2	2017-05-06 07:27:05.588+00	locationId	oxnardsupercharger	oxnardcasupercharger
335	1000006	2	2017-05-06 07:32:03.972+00	locationId	tokyosupercharger	tokyojapansupercharger
250	1000006	2	2017-05-06 07:32:32.545+00	locationId	truckeesupercharger	truckeecasupercharger
320	1000006	2	2017-05-06 07:35:28.251+00	locationId	hangzhoueacsupercharger	angzhoueacsupercharger
320	1000006	3	2017-05-06 19:01:05.289+00	locationId	angzhoueacsupercharger	angzhousupercharger
320	1000006	3	2017-05-06 19:01:05.289+00	stallCount	6	2
285	1000006	2	2017-05-06 19:06:59.683+00	stallCount	4	6
800	1000006	5	2017-05-06 19:07:25.149+00	stallCount	6	8
265	1000006	2	2017-05-06 19:08:27.106+00	stallCount	6	4
225	1000006	2	2017-05-06 19:11:42.023+00	stallCount	6	10
1080	1000006	5	2017-06-01 01:02:35.518+00	dateOpened	\N	2017-05-31
865	1000006	3	2017-05-19 04:13:56.455+00	stallCount	4	8
1085	1000006	8	2017-05-20 14:46:42.923+00	status	CONSTRUCTION	OPEN
1085	1000006	8	2017-05-20 14:46:42.923+00	dateOpened	\N	2017-05-20
1085	1000006	9	2017-05-20 14:48:07.136+00	urlDiscuss	http://teslaclub.sk/forum/všeobecné-fórum/nab%C3%ADjacie-štandardy-a-infraštruktúra/nab%C3%ADjacie-stanice/14432-nový-supercharger-v-bratislave?pp=14636	http://teslaclub.sk/forum/všeobecné-fórum/nabíjacie-štandardy-a-infraštruktúra/nabíjacie-stanice/14432-nový-supercharger-v-bratislave
1085	1000006	10	2017-05-20 14:49:07.317+00	urlDiscuss	http://teslaclub.sk/forum/všeobecné-fórum/nabíjacie-štandardy-a-infraštruktúra/nabíjacie-stanice/14432-nový-supercharger-v-bratislave	http://teslaclub.sk/forum/v%C5%A1eobecn%C3%A9-f%C3%B3rum/nab%C3%ADjacie-%C5%A1tandardy-a-infra%C5%A1trukt%C3%BAra/nab%C3%ADjacie-stanice/14432-nov%C3%BD-supercharger-v-bratislave?p=15295#post15295
1105	1000006	2	2017-05-23 02:02:39.669+00	gps	SiteGPS{latitude=53.417404, longitude=-2.638952}	SiteGPS{latitude=53.417605, longitude=-2.639522}
1090	1000006	2	2017-05-23 14:20:07.755+00	gps	SiteGPS{latitude=51.295812, longitude=-0.854662}	SiteGPS{latitude=51.296156, longitude=-0.857274}
1090	1000006	2	2017-05-23 14:20:07.755+00	developerNotes	Welcome Break, M3\r\n\r\nUK	\N
120	1000006	3	2017-05-30 05:18:59.663+00	stallCount	10	12
1085	1000006	11	2017-05-31 12:35:56.12+00	locationId	\N	bratislavasupercharger
115	1000006	3	2017-05-28 13:38:07.95+00	stallCount	10	16
115	1000006	3	2017-05-28 13:38:07.95+00	developerNotes	\N	2017-05-28: email saying it now has 16 stalls.
1060	1000006	2	2017-05-30 03:39:50.311+00	name	Brighouse South, UK	Brighouse Southbound, UK
260	1000006	2	2017-06-01 01:01:52.518+00	stallCount	8	12
1080	1000006	5	2017-06-01 01:02:35.518+00	status	CONSTRUCTION	OPEN
1120	1000006	1	2017-06-02 12:34:37.777+00	name	\N	Tanum, Sweden
1120	1000006	2	2017-06-02 19:54:31.095+00	status	PERMIT	CONSTRUCTION
1065	1000006	8	2017-06-03 00:52:32.496+00	status	CONSTRUCTION	OPEN
1065	1000006	8	2017-06-03 00:52:32.496+00	dateOpened	\N	2017-06-02
1065	1000006	9	2017-06-03 02:02:01.73+00	locationId	\N	floridacitysupercharger
1125	1000006	1	2017-06-08 03:15:27.392+00	name	\N	Santa Fé, Spain
115	1000006	4	2017-06-08 03:43:50.383+00	stallCount	16	18
115	1000006	5	2017-06-08 03:44:09.914+00	developerNotes	2017-05-28: email saying it now has 16 stalls.	2017-05-28: email saying it now has 16 stalls.\r\n2017-06-07: Tesla site says 18 stalls.
1140	1000006	2	2017-06-19 12:42:25.423+00	stallCount	4	8
1130	1000006	1	2017-06-13 03:50:52.584+00	name	\N	Seoul - Jongno, South Korea
1130	1000006	2	2017-06-13 03:52:05.096+00	elevationMeters	1	45
300	1000006	2	2017-06-16 03:55:45.004+00	stallCount	6	14
300	1000006	3	2017-06-16 03:57:11.38+00	developerNotes	\N	2017-06-15: email saying 14 stalls
1135	1000006	1	2017-06-18 17:57:04.86+00	name	\N	Aire de Châteauvillain - Orges, France
1135	1000006	2	2017-06-18 17:57:23.653+00	address.street	A5 - Aire de Châteauvillain-OrgesChâteauvillain, France 52120	A5 - Aire de Châteauvillain-OrgesChâteauvillain
1135	1000006	2	2017-06-18 17:57:23.653+00	address.zip	\N	52120
730	1000006	2	2017-06-18 18:10:49.703+00	name	Keele, M6 Southbound, UK	Stoke-on-Trent Southbound, UK
1140	1000006	1	2017-06-18 18:31:15.363+00	name	\N	Pölten, Austria
910	1000006	6	2017-06-18 21:13:37.318+00	address.city	Fort MacLeod, Canada	Fort MacLead
1145	1000006	1	2017-06-18 22:31:28.715+00	name	\N	Xiamen One Park Mall Supercharger
1145	1000006	2	2017-06-18 22:31:56.42+00	name	Xiamen One Park Mall Supercharger	Xiamen-One Park Mall, China
1145	1000006	2	2017-06-18 22:31:56.42+00	elevationMeters	1	0
1150	1000006	1	2017-06-18 22:39:37.487+00	name	\N	Wuhan - Brabus Auto Park, China
470	1000006	2	2017-06-19 00:08:32.279+00	latitude	32.6251847	32.627837
470	1000006	2	2017-06-19 00:08:32.279+00	longitude	-85.4463143	-85.445105
1140	1000006	3	2017-06-19 17:49:04.525+00	name	Pölten, Austria	St. Pölten, Austria
1140	1000006	3	2017-06-19 17:49:04.525+00	address.city	Pölten	St. Pölten
535	1000006	2	2017-06-19 22:40:06.747+00	address.city	West Drayton	London
230	1000006	4	2017-06-19 22:44:14.096+00	latitude	39.976016	39.977989
230	1000006	4	2017-06-19 22:44:14.096+00	longitude	116.486761	116.481445
840	1000006	8	2017-06-19 22:47:18.161+00	latitude	43.622754	43.622061
840	1000006	8	2017-06-19 22:47:18.161+00	longitude	-83.935306	-83.932241
450	1000006	2	2017-06-19 22:50:54.083+00	latitude	24.725172	24.725916
450	1000006	2	2017-06-19 22:50:54.083+00	longitude	-81.051135	-81.047519
120	1000006	4	2017-06-20 18:28:04.698+00	stallCount	12	18
115	1000006	6	2017-06-20 18:30:30.058+00	stallCount	18	16
1120	1000006	3	2017-06-21 02:00:24.463+00	status	CONSTRUCTION	OPEN
1120	1000006	3	2017-06-21 02:00:24.463+00	dateOpened	\N	2017-06-20
1120	1000006	4	2017-06-21 02:00:33.86+00	locationId	\N	tanumsupercharger
1120	1000006	5	2017-06-21 02:00:51.589+00	latitude	58.721712	58.72117
1120	1000006	5	2017-06-21 02:00:51.589+00	longitude	11.344242	11.34538
355	1000006	2	2017-06-21 02:06:02.146+00	latitude	40.416993	40.416707
355	1000006	2	2017-06-21 02:06:02.146+00	longitude	-86.812428	-86.814045
355	1000006	3	2017-06-21 02:06:51.207+00	latitude	40.416707	40.416187
355	1000006	3	2017-06-21 02:06:51.207+00	longitude	-86.814045	-86.814084
1120	1000006	6	2017-06-21 02:12:14.587+00	address.city	Tanumshede	Tanum
625	1000006	2	2017-06-21 04:04:50.131+00	address.city	Brentwood	Nashville
1155	1000006	1	2017-06-22 03:45:18.349+00	name	\N	Valenciennes, France
380	1000006	2	2017-06-26 12:24:46.842+00	stallCount	6	8
135	1000006	5	2017-06-26 12:26:58.003+00	latitude	39.662313	39.6635
135	1000006	5	2017-06-26 12:26:58.003+00	longitude	-75.69198	-75.69017
1160	1000006	1	2017-06-28 03:39:46.423+00	name	\N	Truth or Consequences, NM
270	1000006	2	2017-06-28 18:41:12.733+00	latitude	51.60431	51.606331
270	1000006	2	2017-06-28 18:41:12.733+00	longitude	5.005985	5.005621
720	1000006	2	2017-06-28 18:47:26.56+00	latitude	28.717087	28.720737
720	1000006	2	2017-06-28 18:47:26.56+00	longitude	115.799417	115.794675
1165	1000006	1	2017-06-30 03:16:15.096+00	name	\N	Saint-Romuald, QC
1165	1000006	2	2017-06-30 03:20:20.656+00	stallCount	8	10
1140	1000006	4	2017-06-30 03:26:03.316+00	latitude	48.206029	48.205831
1140	1000006	4	2017-06-30 03:26:03.316+00	longitude	15.619092	15.618567
1140	1000006	4	2017-06-30 03:26:03.316+00	elevationMeters	270	271
735	1000006	2	2017-07-02 17:25:40.589+00	latitude	24.767915	24.762329
735	1000006	2	2017-07-02 17:25:40.589+00	longitude	113.547456	113.545654
735	1000006	2	2017-07-02 17:25:40.589+00	elevationMeters	89	122
615	1000006	2	2017-07-02 17:26:42.528+00	latitude	60.445316	60.442961
615	1000006	2	2017-07-02 17:26:42.528+00	longitude	22.606969	22.605621
110	1000006	2	2017-07-03 06:48:03.846+00	stallCount	8	10
1170	1000006	1	2017-07-04 20:14:14.729+00	name	\N	Langres, France
1170	1000006	2	2017-07-04 20:14:54.396+00	address.street	Val-de-Meuse 52140, France	Val-de-Meuse 52140
1170	1000006	3	2017-07-04 20:16:11.096+00	name	Langres, France	Val-de-Meuse, France
1170	1000006	3	2017-07-04 20:16:11.096+00	address.street	Val-de-Meuse 52140	A31 near Langres
1170	1000006	3	2017-07-04 20:16:11.096+00	address.city	Langres	Val-de-Meuse
1170	1000006	5	2017-07-04 20:18:17.994+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/superchargers-frankrijk.33554/page-13#post-2173944
1170	1000006	6	2017-07-04 20:20:52.32+00	stallCount	24	16
1165	1000006	3	2017-07-05 12:38:41.172+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/qu%C3%A9bec-city-supercharger.93387/
395	1000006	2	2017-07-05 12:48:35.496+00	latitude	58.918408	58.918156
395	1000006	2	2017-07-05 12:48:35.496+00	longitude	17.369535	17.367987
395	1000006	2	2017-07-05 12:48:35.496+00	elevationMeters	55	53
1160	1000006	2	2017-07-05 15:07:05.877+00	status	PERMIT	CONSTRUCTION
1165	1000006	4	2017-07-08 20:18:21.617+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/qu%C3%A9bec-city-supercharger.93387/	https://teslamotorsclub.com/tmc/threads/superchargers-levis-qc.93351/
1160	1000006	3	2017-07-08 20:21:15.784+00	status	CONSTRUCTION	OPEN
1160	1000006	3	2017-07-08 20:21:15.784+00	dateOpened	\N	2017-07-08
1160	1000006	3	2017-07-08 20:21:15.784+00	latitude	33.155263	33.15524
1160	1000006	3	2017-07-08 20:21:15.784+00	longitude	-107.251639	-107.251642
1160	1000006	3	2017-07-08 20:21:15.784+00	elevationMeters	1354	1353
1160	1000006	4	2017-07-08 20:21:27.465+00	locationId	\N	truthorconsequencessupercharger
1170	1000006	7	2017-07-08 20:27:59.084+00	locationId	\N	valdemeusesupercharger
1170	1000006	7	2017-07-08 20:27:59.084+00	status	CONSTRUCTION	OPEN
1170	1000006	7	2017-07-08 20:27:59.084+00	dateOpened	\N	2017-07-08
1170	1000006	8	2017-07-08 20:28:13.117+00	latitude	47.990035	47.99147
1170	1000006	8	2017-07-08 20:28:13.117+00	longitude	5.513223	5.51296
1170	1000006	8	2017-07-08 20:28:13.117+00	elevationMeters	351	355
1180	1000006	1	2017-07-12 06:17:21.414+00	name	\N	Sherburn, MN
1140	1000006	7	2017-07-14 12:36:33.731+00	locationId	\N	stpoltensupercharger
1140	1000006	8	2017-07-14 12:36:50.288+00	latitude	48.205831	48.203528
1140	1000006	8	2017-07-14 12:36:50.288+00	longitude	15.618567	15.638065
1140	1000006	8	2017-07-14 12:36:50.288+00	elevationMeters	271	269
1190	1000006	3	2017-07-16 06:45:15.694+00	locationId	\N	liveoaksupercharger
1170	1000006	9	2017-07-08 20:28:33.666+00	address.street	A31 near Langres	D132, A31 near Langres
1175	1000006	1	2017-07-09 05:45:49.406+00	name	\N	Albany-Crossgates Mall, NY
1175	1000006	2	2017-07-09 05:46:16.333+00	address.street	120 Washington Ave Ext,	1 Crossgates Mall Rd
1175	1000006	3	2017-07-09 05:47:24.789+00	latitude	42.69137	42.691055
1175	1000006	3	2017-07-09 05:47:24.789+00	longitude	-73.853926	-73.848904
1175	1000006	3	2017-07-09 05:47:24.789+00	elevationMeters	82	83
685	1000004	3	2017-12-05 21:52:44.553+00	stallCount	8	16
1140	1000006	5	2017-07-13 21:41:06.244+00	status	CONSTRUCTION	OPEN
1140	1000006	5	2017-07-13 21:41:06.244+00	dateOpened	\N	2017-07-13
1140	1000006	6	2017-07-13 21:41:23.148+00	urlDiscuss	\N	http://tff-forum.de/viewtopic.php?f=68&t=3580&start=2530
1185	1000006	1	2017-07-15 17:26:35.693+00	name	\N	San Francisco Ocotlán, Mexico
1190	1000006	1	2017-07-16 03:34:31.2+00	name	\N	Live Oak, FL
1190	1000006	2	2017-07-16 03:46:52.669+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/live-oak-supercharger.94064/
1190	1000006	4	2017-07-16 14:04:36.762+00	locationId	liveoaksupercharger	\N
1190	1000006	4	2017-07-16 14:04:36.762+00	stallCount	10	12
1195	1000006	1	2017-07-17 22:37:41.868+00	name	\N	San Luis de la Paz, Mexico
1195	1000006	2	2017-07-17 22:37:54.496+00	address.street	km 87.740 México 57San Luis de la Paz, GuanajuatoMexico 37900	km 87.740 México 57
1200	1000006	1	2017-07-19 02:06:17.383+00	name	\N	Hangzhou-West Intime
1205	1000006	2	2017-07-24 22:25:32.449+00	locationId	\N	stpetersburgsupercharger
1215	1000006	1	2017-07-31 00:54:29.773+00	name	\N	Linthe
1215	1000006	2	2017-07-31 00:55:00.494+00	name	Linthe	Linthe, Germany
1140	1000006	9	2017-08-09 03:30:43.809+00	latitude	48.203528	48.205756
1140	1000006	9	2017-08-09 03:30:43.809+00	longitude	15.638065	15.618428
1140	1000006	11	2017-08-09 03:33:08.302+00	developerNotes	\N	Looks like Tesla's location may be wrong by 2.2 km.  Based email from -snip- and this link: http://www.goingelectric.de/stromtankstellen/Oesterreich/Verbund/Tesla-Supercharger/
1110	1000006	3	2017-08-09 20:21:59.394+00	status	OPEN	CLOSED
1110	1000006	3	2017-08-09 20:21:59.394+00	dateOpened	2017-07-28	\N
1110	1000006	3	2017-08-09 20:21:59.394+00	developerNotes	\N	Original open date is 2017-07-28.
1205	1000006	4	2017-08-11 03:56:19.203+00	status	CONSTRUCTION	OPEN
1205	1000006	4	2017-08-11 03:56:19.203+00	dateOpened	\N	2017-08-10
1205	1000006	1	2017-07-24 02:53:04.116+00	name	\N	Pinellas Park, FL
1110	1000006	2	2017-07-29 03:21:39.236+00	status	CONSTRUCTION	OPEN
1110	1000006	2	2017-07-29 03:21:39.236+00	dateOpened	\N	2017-07-28
1210	1000006	1	2017-07-28 23:16:38.425+00	name	\N	Edmonton, AB
1210	1000006	2	2017-07-28 23:16:44.065+00	status	PERMIT	CONSTRUCTION
1210	1000006	3	2017-07-28 23:22:50.988+00	stallCount	6	7
1210	1000006	4	2017-07-28 23:24:37.037+00	stallCount	7	8
1210	1000006	5	2017-07-28 23:24:58.831+00	latitude	53.426253	53.4861362
1210	1000006	5	2017-07-28 23:24:58.831+00	longitude	-113.51621	-113.5157459
1205	1000006	3	2017-07-29 03:27:28.823+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-pinellas-park-wawa.94533
1210	1000006	6	2017-08-02 04:03:49.381+00	status	CONSTRUCTION	OPEN
1210	1000006	6	2017-08-02 04:03:49.381+00	dateOpened	\N	2017-08-01
1210	1000006	7	2017-08-02 21:38:57.51+00	status	OPEN	CONSTRUCTION
1210	1000006	7	2017-08-02 21:38:57.51+00	dateOpened	2017-08-01	\N
1220	1000006	1	2017-08-03 03:50:53.489+00	name	\N	Taiyuan - Huayu, China
1225	1000006	1	2017-08-03 03:56:10.983+00	name	\N	Yibin - City Celebrity Hotel, China
1230	1000006	1	2017-08-10 16:16:48.461+00	name	\N	Burlington, NJ
1210	1000006	8	2017-08-12 16:43:57.763+00	status	CONSTRUCTION	OPEN
1210	1000006	8	2017-08-12 16:43:57.763+00	dateOpened	\N	2017-08-12
1210	1000006	9	2017-08-15 04:49:45.061+00	locationId	\N	edmontonsupercharger
1205	1000006	5	2017-08-15 04:51:20.64+00	locationId	stpetersburgsupercharger	pinellasparksupercharger
1235	1000006	1	2017-08-15 04:58:02.064+00	name	\N	Southlake, TX
1235	1000006	2	2017-08-15 04:59:47.932+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-southlake-texas.96180
1235	1000006	3	2017-08-15 05:00:46.188+00	latitude	32.943489	32.943488
1235	1000006	3	2017-08-15 05:00:46.188+00	longitude	-97.133775	-97.133843
1235	1000006	4	2017-08-15 05:07:43.304+00	stallCount	8	10
1175	1000006	4	2017-08-16 14:17:04.197+00	status	CONSTRUCTION	OPEN
1175	1000006	4	2017-08-16 14:17:04.197+00	dateOpened	\N	2017-08-16
1175	1000006	5	2017-08-16 14:17:23.314+00	address.city	Albany	Guiderland
1175	1000006	6	2017-08-16 14:17:35.253+00	locationId	\N	guiderlandsupercharger
1240	1000006	1	2017-08-19 06:02:59.161+00	name	\N	Martinsburg, WV
1175	1000006	7	2017-08-19 17:07:01.029+00	name	Albany-Crossgates Mall, NY	Guilderland, NY
1190	1000006	5	2017-08-20 19:45:04.027+00	locationId	\N	liveoaksupercharger
1190	1000006	5	2017-08-20 19:45:04.027+00	status	CONSTRUCTION	OPEN
1190	1000006	5	2017-08-20 19:45:04.027+00	dateOpened	\N	2017-08-20
1110	1000006	4	2017-08-20 19:47:05.185+00	status	CLOSED	OPEN
1110	1000006	4	2017-08-20 19:47:05.185+00	dateOpened	\N	2017-07-28
1245	1000006	1	2017-08-21 18:27:44.763+00	name	\N	Vestec, Czech Republic
1245	1000006	2	2017-08-21 18:29:29.516+00	urlDiscuss	\N	http://www.hybrid.cz/u-prahy-roste-druhy-cesky-tesla-supercharger-s-10-stojany
485	1000006	2	2017-08-24 01:48:04.54+00	stallCount	8	18
485	1000006	2	2017-08-24 01:48:04.54+00	developerNotes	\N	email saying 10 new stalls opened up
1175	1000006	8	2017-08-25 17:43:39.794+00	locationId	guiderlandsupercharger	guilderlandsupercharger
1175	1000006	8	2017-08-25 17:43:39.794+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/ny-albany-supercharger-updates.25874/
1250	1000006	1	2017-08-29 04:04:34.903+00	name	\N	Membury Services Eastbound, UK
990	1000006	5	2017-09-03 18:20:29.715+00	status	PERMIT	CONSTRUCTION
1265	1000006	2	2017-09-20 16:43:22.934+00	stallCount	8	4
1265	1000006	2	2017-09-20 16:43:22.934+00	powerKiloWatt	0	135
1280	1000006	1	2017-09-21 04:38:52.07+00	name	\N	Miranda de Ebro, Spain
1090	1000006	3	2017-09-21 05:06:09.854+00	name	Fleet, UK	Fleet Northbound, UK
1090	1000006	3	2017-09-21 05:06:09.854+00	address.street	Welcome Break, M3	Welcome Break, Northbound, M3
1090	1000006	4	2017-09-21 05:06:14.603+00	elevationMeters	67	65
1280	1000006	2	2017-09-21 12:56:18.388+00	stallCount	5	8
1285	1000006	1	2017-09-23 14:36:45.837+00	name	\N	Chongqing - Regent Hotel, China
1255	1000006	1	2017-09-02 20:15:17.887+00	name	\N	Hokksund, Norway
1255	1000006	2	2017-09-08 10:10:08.635+00	status	PERMIT	CONSTRUCTION
1125	1000006	2	2017-09-08 19:57:21.698+00	status	PERMIT	OPEN
1125	1000006	2	2017-09-08 19:57:21.698+00	dateOpened	\N	2017-09-08
1125	1000006	3	2017-09-08 19:58:18.301+00	stallCount	8	10
1125	1000006	4	2017-09-08 20:04:52.624+00	latitude	37.183322	37.181805
1125	1000006	4	2017-09-08 20:04:52.624+00	longitude	-3.769525	-3.928417
1125	1000006	4	2017-09-08 20:04:52.624+00	elevationMeters	572	594
600	1000006	2	2017-09-08 22:21:01.16+00	name	Melbourne - Richmond, Australia	Melbourne - Richmond, VIC
600	1000006	2	2017-09-08 22:21:01.16+00	address.state	Victoria	VIC
1260	1000006	4	2017-09-09 02:07:42.858+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/new-superchargers-proposed-in-greensboro-and-raleigh-nc.89700/
1265	1000006	1	2017-09-16 16:09:13.19+00	name	\N	Adelaide, SA
1260	1000006	7	2017-09-19 02:54:26.151+00	latitude	35.849072	35.835623
1260	1000006	7	2017-09-19 02:54:26.151+00	longitude	-78.58681	-78.642569
1260	1000006	7	2017-09-19 02:54:26.151+00	elevationMeters	96	110
1275	1000006	1	2017-09-19 03:32:34.934+00	name	\N	Freeport, ME
790	1000006	2	2017-09-08 22:25:02.53+00	name	Port Macquarie, Australia	Port Macquarie, NSW
690	1000006	2	2017-09-08 22:25:18.167+00	name	Gundagai, Australia	Gundagai, NSW
695	1000006	2	2017-09-08 22:25:43.224+00	name	Wodonga, Australia	Wodonga, VIC
1260	1000006	1	2017-09-08 22:35:20.355+00	name	\N	Raleigh, NC
1260	1000006	2	2017-09-08 22:35:24.83+00	developerNotes	4660 Millbrook Green Dr, Raleigh, NC 27604	\N
1260	1000006	3	2017-09-08 22:37:04.858+00	address.street	4660 Millbrook Green Dr,	4660 Millbrook Green Dr
1230	1000006	2	2017-09-10 18:24:16.406+00	status	CONSTRUCTION	OPEN
1230	1000006	2	2017-09-10 18:24:16.406+00	dateOpened	\N	2017-09-10
1260	1000006	5	2017-09-12 03:29:57.778+00	address.street	4660 Millbrook Green Dr	4191 The Circle At North Hills St.
1260	1000006	6	2017-09-12 03:30:21.874+00	address.zip	27604	27609
1270	1000006	1	2017-09-19 03:04:00.419+00	name	\N	Wuhan - Eurasian Hotel, China
195	1000006	2	2017-09-19 03:22:18.907+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/burlington-supercharger.16921
1230	1000006	3	2017-09-19 03:37:49.063+00	locationId	\N	burlingtonnjsupercharger
1245	1000006	3	2017-09-25 04:16:15.947+00	status	CONSTRUCTION	OPEN
1245	1000006	3	2017-09-25 04:16:15.947+00	dateOpened	\N	2017-09-24
1290	1000006	1	2017-09-25 04:32:01.041+00	name	\N	Shanghai, Lilacs International Com. Center, China
1265	1000006	3	2017-09-26 03:05:13.136+00	status	CONSTRUCTION	OPEN
1265	1000006	3	2017-09-26 03:05:13.136+00	dateOpened	\N	2017-09-25
1265	1000006	4	2017-09-26 03:05:28.842+00	address.street	109 Franklin Street	85 Franklin Street
1245	1000006	4	2017-09-26 03:47:04.203+00	locationId	\N	vestecsupercharger
1295	1000006	1	2017-09-27 05:38:47.787+00	name	\N	Madison - East Washington Ave, WI
1290	1000004	2	2017-09-27 06:52:37.925+00	stallCount	40	50
1255	1000006	3	2017-09-29 02:30:30.315+00	locationId	\N	hokksundsupercharger
1255	1000006	3	2017-09-29 02:30:30.315+00	status	CONSTRUCTION	OPEN
1255	1000006	3	2017-09-29 02:30:30.315+00	dateOpened	\N	2017-09-28
1300	1000006	1	2017-09-30 06:15:33.22+00	name	\N	Bellefonte, PA
1100	1000004	2	2017-09-30 08:48:13.85+00	status	CONSTRUCTION	OPEN
1100	1000004	2	2017-09-30 08:48:13.85+00	dateOpened	\N	2017-09-30
1300	1000006	2	2017-09-30 21:15:09.513+00	stallCount	8	10
1300	1000006	3	2017-09-30 21:15:45.913+00	powerKiloWatt	0	135
1240	1000006	2	2017-10-01 03:26:16.478+00	status	CONSTRUCTION	OPEN
1240	1000006	2	2017-10-01 03:26:16.478+00	dateOpened	\N	2017-09-30
1240	1000006	3	2017-10-01 03:28:28.131+00	locationId	\N	martinsburgsupercharger
1310	1000006	1	2017-10-01 21:57:17.157+00	name	\N	Liphook, UK
170	1000006	3	2017-10-01 22:26:36.305+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-grants-pass-or.99135/
170	1000006	4	2017-10-01 22:27:05.823+00	stallCount	4	8
1125	1000006	5	2017-10-03 03:51:36.219+00	locationId	\N	granadasupercharger
1125	1000006	6	2017-10-03 03:52:01.51+00	name	Santa Fé, Spain	Granada, Spain
1125	1000006	6	2017-10-03 03:52:01.51+00	address.city	Santa Fé	Granada
1100	1000006	3	2017-10-03 04:00:05.347+00	locationId	\N	telfordsupercharger
1315	1000006	1	2017-10-03 16:50:10.528+00	name	\N	Beijing - Zhongqi Leiri Supercharger
1320	1000006	1	2017-10-03 18:55:31.668+00	name	\N	Shanghai - Zhoupu Greenland Supercharger
1320	1000006	2	2017-10-03 22:37:56.476+00	name	Shanghai - Zhoupu Greenland Supercharger	Shanghai - Zhoupu Greenland, China
1315	1000006	2	2017-10-03 22:38:53.214+00	name	Beijing - Zhongqi Leiri Supercharger	Beijing - Zhongqi Leiri, China
1165	1000006	5	2017-10-04 20:57:23.759+00	status	CONSTRUCTION	OPEN
1165	1000006	5	2017-10-04 20:57:23.759+00	dateOpened	\N	2017-10-04
435	1000006	2	2017-10-07 02:12:21.381+00	locationId	stockholminfracity	sollentunasupercharger
435	1000006	3	2017-10-07 02:12:36.974+00	stallCount	2	4
1325	1000006	1	2017-10-07 15:11:10.128+00	name	\N	Lokeren, Belgium
1325	1000006	2	2017-10-07 15:12:00.827+00	address.street	9160 Lokeren, Belgique	9160 Lokeren
1325	1000006	4	2017-10-07 15:12:56.5+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/2342225/
1180	1000006	2	2017-10-11 06:46:25.272+00	status	PERMIT	CONSTRUCTION
1330	1000006	3	2017-10-14 18:50:42.248+00	name	Lone Tree, CO - Park Meadows #2 Supercharger	Lone Tree-Park Meadows, CO
1330	1000006	3	2017-10-14 18:50:42.248+00	address.state	Colorado	CO
1330	1000006	4	2017-10-14 18:59:43.294+00	name	Lone Tree-Park Meadows, CO	Lone Tree-Park Meadows #2, CO
1165	1000006	6	2017-10-07 02:11:42.22+00	locationId	\N	levisqcsupercharger
1325	1000006	5	2017-10-07 15:22:50.666+00	address.street	9160 Lokeren	Zelebaan 100, 9160 Lokeren
1330	1000006	1	2017-10-10 02:30:23.452+00	name	\N	Lone Tree - Park Meadows #2 Supercharger
1330	1000006	2	2017-10-10 02:33:40.602+00	name	Lone Tree - Park Meadows #2 Supercharger	Lone Tree, CO - Park Meadows #2 Supercharger
1340	1000006	1	2017-10-17 02:29:36.22+00	name	\N	Chilpancingo de los Bravo, GRO Supercharger
1340	1000006	2	2017-10-18 14:24:53.89+00	name	Chilpancingo de los Bravo, GRO Supercharger	Chilpancingo de los Bravo, Mexico
1275	1000006	2	2017-10-19 22:54:44.536+00	locationId	\N	freeportsupercharger
1275	1000006	2	2017-10-19 22:54:44.536+00	name	Freeport, ME	Freeport, ME Supercharger
1275	1000006	2	2017-10-19 22:54:44.536+00	status	CONSTRUCTION	OPEN
1275	1000006	2	2017-10-19 22:54:44.536+00	dateOpened	\N	2017-10-19
1275	1000006	2	2017-10-19 22:54:44.536+00	powerKiloWatt	0	120
1275	1000006	3	2017-10-20 04:53:20.762+00	name	Freeport, ME Supercharger	Freeport, ME
1345	1000006	1	2017-10-20 05:22:31.478+00	name	\N	Castlebellingham-Northbound, Ireland
1345	1000006	2	2017-10-20 05:23:01.477+00	address.street	A91 A3PH, Whiterath, Dromiskin, Co. Louth	Applegreen Motorway Services
1350	1000006	1	2017-10-21 16:16:36.608+00	name	\N	Florence, SC Supercharger
1350	1000006	2	2017-10-22 20:58:28.512+00	name	Florence, SC Supercharger	Florence, SC
1260	1000006	8	2017-10-22 21:03:00.208+00	stallCount	8	12
1295	1000006	2	2017-10-23 04:57:27.195+00	status	PERMIT	CONSTRUCTION
1290	1000006	5	2017-10-23 17:52:34.133+00	locationId	\N	Shanghaililacscentersupercharger
1290	1000006	6	2017-10-23 17:53:54.189+00	latitude	31.226857	31.225597
1290	1000006	6	2017-10-23 17:53:54.189+00	longitude	121.552127	121.550981
1290	1000006	7	2017-10-23 17:54:32.804+00	powerKiloWatt	0	120
1355	1000006	1	2017-10-25 05:28:57.655+00	name	\N	Sudbury, ON
1360	1000006	2	2017-10-31 19:14:13.754+00	latitude	40.536122	40.535862
1360	1000006	2	2017-10-31 19:14:13.754+00	longitude	-74.298199	-74.297271
1315	1000006	3	2017-11-01 19:55:17.833+00	address.state	Fengtai Qu	Beijing
1360	1000006	1	2017-10-31 17:44:07.829+00	name	\N	Supercharger - Woodbridge, NJ
1260	1000006	10	2017-11-06 18:44:15.637+00	locationId	\N	raleighsupercharger
1290	1000004	3	2017-10-23 11:43:07.66+00	status	CONSTRUCTION	OPEN
1290	1000004	3	2017-10-23 11:43:07.66+00	dateOpened	\N	2017-10-23
1325	1000006	6	2017-10-28 18:49:02.906+00	locationId	\N	lokerensupercharger
1325	1000006	6	2017-10-28 18:49:02.906+00	status	CONSTRUCTION	OPEN
1325	1000006	6	2017-10-28 18:49:02.906+00	dateOpened	\N	2017-10-28
1325	1000006	6	2017-10-28 18:49:02.906+00	powerKiloWatt	0	120
1360	1000006	3	2017-11-01 19:41:35.627+00	name	Supercharger - Woodbridge, NJ	Woodbridge, NJ
1365	1000006	1	2017-11-03 02:43:50.716+00	name	\N	Cupertino, CA
1365	1000006	2	2017-11-03 02:55:27.465+00	status	PERMIT	CONSTRUCTION
1365	1000006	2	2017-11-03 02:55:27.465+00	latitude	37.32424	37.324372
1365	1000006	2	2017-11-03 02:55:27.465+00	longitude	-122.008659	-122.009179
1260	1000006	9	2017-11-03 03:35:19.98+00	status	CONSTRUCTION	OPEN
1260	1000006	9	2017-11-03 03:35:19.98+00	dateOpened	\N	2017-11-02
730	1000006	3	2017-11-05 04:23:09.221+00	locationId	stokeontrentsupercharger	keelesouthsupercharger
1370	1000006	1	2017-11-05 04:36:45.801+00	name	\N	Plano, TX
875	1000006	5	2017-11-07 03:16:47.305+00	developerNotes	2016-08-17: "there was an upgrade and there are now 6 stalls"	2016-08-17: "there was an upgrade and there are now 6 stalls"\r\n2017-11-06: "they are working on 6 to 8 stall upgrade"
1380	1000006	1	2017-11-09 04:59:47.542+00	name	\N	Fairfield, CA
1370	1000006	2	2017-11-09 23:13:07.581+00	latitude	33.078187	33.078932
1370	1000006	2	2017-11-09 23:13:07.581+00	longitude	-96.819808	-96.820058
1370	1000006	3	2017-11-09 23:13:21.289+00	stallCount	10	12
1385	1000006	1	2017-11-11 17:47:47.081+00	name	\N	Etobicoke, On
1385	1000006	2	2017-11-11 18:20:33.606+00	name	Etobicoke, On	Etobicoke, ON
1390	1000006	1	2017-11-13 20:21:35.026+00	name	\N	Orlando, FL (Wawa)
1390	1000006	2	2017-11-13 23:15:02.498+00	name	Orlando, FL (Wawa)	Orlando-Universal Blvd, FL
990	1000006	6	2017-11-14 18:01:45.119+00	locationId	\N	birdhillsupercharger
990	1000006	6	2017-11-14 18:01:45.119+00	status	CONSTRUCTION	OPEN
990	1000006	6	2017-11-14 18:01:45.119+00	dateOpened	\N	2017-11-14
990	1000006	6	2017-11-14 18:01:45.119+00	powerKiloWatt	0	120
1300	1000006	4	2017-11-16 19:03:29.856+00	stallCount	10	8
1330	1000006	5	2017-11-18 02:10:38.815+00	status	CONSTRUCTION	OPEN
1330	1000006	5	2017-11-18 02:10:38.815+00	dateOpened	\N	2017-11-17
1385	1000006	3	2017-11-19 06:27:12.314+00	stallCount	10	20
1400	1000006	1	2017-11-19 22:06:31.093+00	name	\N	Fremont-Fremont Hub, CA
1180	1000006	3	2017-11-20 03:03:13.232+00	status	CONSTRUCTION	OPEN
1180	1000006	3	2017-11-20 03:03:13.232+00	dateOpened	\N	2017-11-19
1400	1000006	2	2017-11-20 05:23:11.602+00	powerKiloWatt	0	135
1390	1000006	3	2017-11-20 19:18:58.563+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/new-orlando-supercharger-wawa-sand-lake-rd-and-universal-blvd.101960/
1330	1000006	6	2017-11-21 01:50:51.433+00	name	Lone Tree-Park Meadows #2, CO	Lone Tree, CO
1330	1000006	7	2017-11-21 01:51:15.46+00	locationId	\N	parkmeadows
1405	1000006	1	2017-11-22 17:16:35.767+00	name	\N	Hamilton, ON
1405	1000006	2	2017-11-24 05:25:59.675+00	stallCount	10	20
1410	1000004	1	2017-11-29 20:50:47.279+00	name	\N	Emmeloord, NL
1410	1000006	6	2017-12-13 14:26:55.481+00	stallCount	6	10
1410	1000004	2	2017-11-29 21:20:34.741+00	name	Emmeloord, NL	Emmeloord, Netherlands
1410	1000004	3	2017-11-30 09:14:14.15+00	status	PERMIT	CONSTRUCTION
1410	1000004	4	2017-11-30 09:39:27.66+00	latitude	52.723985	52.727585
1410	1000004	4	2017-11-30 09:39:27.66+00	longitude	5.74487	5.767189
1410	1000004	4	2017-11-30 09:39:27.66+00	address.street	Oude Espelerweg	Het Hooiveld 9
1415	1000006	1	2017-11-30 16:04:39.396+00	name	\N	Chenzhou - Shang'er Hotel Supercharger
1280	1000006	3	2017-11-30 23:43:45.584+00	locationId	\N	rivabellosasupercharger
1280	1000006	3	2017-11-30 23:43:45.584+00	name	Miranda de Ebro, Spain	Rivabellosa Spain
1280	1000006	3	2017-11-30 23:43:45.584+00	status	CONSTRUCTION	OPEN
1280	1000006	3	2017-11-30 23:43:45.584+00	dateOpened	\N	2017-11-30
1280	1000006	3	2017-11-30 23:43:45.584+00	powerKiloWatt	0	120
1280	1000006	3	2017-11-30 23:43:45.584+00	address.city	Miranda de Ebro	Rivabellosa
1280	1000006	4	2017-11-30 23:44:25.717+00	address.state	\N	Álava
1410	1000006	5	2017-12-03 23:04:23.597+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/superchargers-in-nederland-nl.24215/page-232
115	1000004	7	2017-12-04 07:36:14.301+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-gilroy-expanded-4-stalls-added-now-16-total.14274/
1445	1000004	1	2017-12-12 02:09:33.595+00	name	\N	Xinyang - Wanjiahui, China
1425	1000006	1	2017-12-04 17:48:15.15+00	name	\N	Strongsville, OH
1425	1000006	2	2017-12-05 23:03:31.924+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-strongsville-ohio.103451/#post-2443653	https://teslamotorsclub.com/tmc/threads/supercharger-strongsville-ohio.103451/
1425	1000006	4	2017-12-05 23:04:36.288+00	status	PERMIT	CONSTRUCTION
1330	1000006	8	2017-12-07 12:52:38.71+00	locationId	parkmeadows	lonetreesupercharger
1440	1000004	1	2017-12-11 23:30:18.643+00	name	\N	Seogwipo, South Korea
1450	1000004	1	2017-12-15 00:20:35.525+00	name	\N	Yichang - Tianxi Longge Hotel, China
1415	1000004	2	2017-12-05 10:37:51.009+00	name	Chenzhou - Shang'er Hotel Supercharger	Chenzhou - Shang'er Hotel, China
1280	1000004	5	2017-12-05 10:38:43.998+00	name	Rivabellosa Spain	Rivabellosa, Spain
875	1000004	6	2017-12-05 21:49:37.615+00	stallCount	6	8
345	1000004	2	2017-12-05 21:52:24.497+00	stallCount	8	12
980	1000004	8	2017-12-06 10:37:27.061+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/new-superchargers-on-m6-charnock-richard-and-t5-heathrow.83172
630	1000006	2	2017-12-06 12:34:21.003+00	stallCount	8	12
1300	1000004	5	2017-12-15 01:52:39.69+00	status	CONSTRUCTION	OPEN
1300	1000004	5	2017-12-15 01:52:39.69+00	dateOpened	\N	2017-12-15
435	1000006	4	2017-12-18 02:39:02.214+00	developerNotes	\N	Email saying correct stall count is 2.
435	1000006	5	2017-12-18 02:39:52.492+00	stallCount	4	2
1295	1000004	3	2017-12-20 01:02:30.066+00	status	CONSTRUCTION	OPEN
1295	1000004	3	2017-12-20 01:02:30.066+00	dateOpened	\N	2017-12-20
1355	1000004	2	2017-12-20 22:51:27.99+00	status	CONSTRUCTION	OPEN
1355	1000004	2	2017-12-20 22:51:27.99+00	dateOpened	\N	2017-12-21
1295	1000004	4	2017-12-20 20:53:11.704+00	locationId	\N	madisonwisupercharger
1455	1000004	1	2017-12-21 02:22:02.629+00	name	\N	Pyhtää, Finland
1440	1000004	2	2017-12-21 05:41:01.763+00	stallCount	14	12
1460	1000004	1	2017-12-21 22:19:39.954+00	name	\N	Seoul - Yongsan, South Korea
1410	1000004	7	2017-12-22 22:42:49.296+00	status	CONSTRUCTION	OPEN
1410	1000004	7	2017-12-22 22:42:49.296+00	dateOpened	\N	2017-12-23
1410	1000004	7	2017-12-22 22:42:49.296+00	powerKiloWatt	0	120
1410	1000004	7	2017-12-22 22:42:49.296+00	address.zip	8303	8302AE
1410	1000004	8	2017-12-22 22:43:02.867+00	locationId	\N	emmeloordsupercharger
1465	1000004	1	2017-12-23 13:56:30.364+00	name	\N	Carlsbad - La Costa, CA
1215	1000006	3	2017-12-31 16:45:14.223+00	latitude	52.154874	52.267048
1250	1000006	2	2017-12-31 17:10:15.126+00	counted	true	false
665	1000004	7	2018-01-07 01:35:36.581+00	latitude	52.399723	52.400285
665	1000004	7	2018-01-07 01:35:36.581+00	longitude	16.894948	16.893091
1470	1000004	2	2017-12-30 21:50:54.09+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-cambridge-ma.105161/
1215	1000006	3	2017-12-31 16:45:14.223+00	name	Linthe, Germany	Beelitz, Germany
1215	1000006	3	2017-12-31 16:45:14.223+00	status	PERMIT	CONSTRUCTION
1215	1000006	3	2017-12-31 16:45:14.223+00	longitude	12.785737	12.922797
1215	1000006	3	2017-12-31 16:45:14.223+00	address.city	Linthe, Germany	Beelitz
1475	1000004	1	2018-01-04 02:18:24.683+00	name	\N	Jiaxing - Longmont Hotel, China
1385	1000006	4	2018-01-04 18:56:51.885+00	powerKiloWatt	0	72
1480	1000004	1	2018-01-05 02:46:46.273+00	name	\N	Cambridge, ON
1480	1000004	2	2018-01-05 02:53:08.967+00	latitude	43.411607	43.409154
1480	1000004	2	2018-01-05 02:53:08.967+00	longitude	-80.325198	-80.325743
1480	1000004	2	2018-01-05 02:53:08.967+00	elevationMeters	298	295
1480	1000006	5	2018-01-05 06:01:10.608+00	locationId	\N	cambridgeonsupercharger
1470	1000006	1	2017-12-30 04:25:46.759+00	name	\N	Cambridge, MA
1215	1000004	4	2018-01-01 13:26:12.492+00	stallCount	8	14
1480	1000006	3	2018-01-05 05:38:54.118+00	latitude	43.409154	43.408904
1480	1000006	3	2018-01-05 05:38:54.118+00	longitude	-80.325743	-80.325432
1480	1000006	4	2018-01-05 05:39:28.973+00	stallCount	8	14
385	1000004	2	2018-01-05 21:42:57.758+00	name	Orlando, FL	Turkey Lake, FL
385	1000004	2	2018-01-05 21:42:57.758+00	developerNotes	\N	6/1/18: Name changed to "Turkey Lake" to match Tesla official name.
1175	1000004	9	2018-01-05 22:01:57.577+00	latitude	42.691055	42.688932
1175	1000004	9	2018-01-05 22:01:57.577+00	longitude	-73.848904	-73.853554
1175	1000004	9	2018-01-05 22:01:57.577+00	elevationMeters	83	80
1175	1000004	9	2018-01-05 22:01:57.577+00	developerNotes	\N	More precise co-ords
1175	1000004	9	2018-01-05 22:01:57.577+00	address.city	Guiderland	Guilderland
900	1000004	6	2018-01-06 01:33:16.931+00	latitude	43.120781	43.121854
900	1000004	6	2018-01-06 01:33:16.931+00	longitude	-124.39905	-124.398942
900	1000004	6	2018-01-06 01:33:16.931+00	elevationMeters	22	23
1480	1000004	6	2018-01-06 02:30:22.268+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/anyone-found-cambridge-yet.103239	https://teslamotorsclub.com/tmc/threads/supercharger-cambridge-on.103239
1410	1000004	9	2018-01-06 04:18:29.482+00	latitude	52.727585	52.727421
1410	1000004	9	2018-01-06 04:18:29.482+00	longitude	5.767189	5.764693
1410	1000004	9	2018-01-06 04:18:29.482+00	elevationMeters	-3	-5
1410	1000004	9	2018-01-06 04:18:29.482+00	address.city	Emmelorrd	Emmeloord
580	1000004	2	2018-01-06 04:25:47.081+00	latitude	49.768301	49.769144
580	1000004	2	2018-01-06 04:25:47.081+00	longitude	10.471644	10.470409
580	1000004	2	2018-01-06 04:25:47.081+00	elevationMeters	357	354
580	1000004	3	2018-01-06 04:26:16.969+00	powerKiloWatt	0	120
215	1000004	2	2018-01-06 06:42:57.697+00	latitude	52.1739629	52.174057
215	1000004	2	2018-01-06 06:42:57.697+00	longitude	11.4942547	11.494488
215	1000004	2	2018-01-06 06:42:57.697+00	elevationMeters	131	133
215	1000004	2	2018-01-06 06:42:57.697+00	developerNotes	\N	2018-01-06: Note: Tesla co-ords are incorrect
1110	1000004	5	2018-01-06 09:58:23.81+00	latitude	26.199278	26.198443
1110	1000004	5	2018-01-06 09:58:23.81+00	longitude	-98.260864	-98.259839
1110	1000004	5	2018-01-06 09:58:23.81+00	elevationMeters	30	34
345	1000004	3	2018-01-06 10:03:23.193+00	latitude	49.218222	49.216495
345	1000004	3	2018-01-06 10:03:23.193+00	longitude	6.183539	6.171078
345	1000004	3	2018-01-06 10:03:23.193+00	elevationMeters	161	162
345	1000004	3	2018-01-06 10:03:23.193+00	address.street	Rue de Maizières-les-Metz	E. Leclerc
265	1000004	3	2018-01-06 10:23:16.762+00	latitude	48.272993	48.272557
265	1000004	3	2018-01-06 10:23:16.762+00	longitude	12.551161	12.549892
265	1000004	3	2018-01-06 10:23:16.762+00	elevationMeters	404	405
265	1000004	3	2018-01-06 10:23:16.762+00	powerKiloWatt	0	120
1165	1000004	7	2018-01-07 02:57:10.943+00	name	Saint-Romuald, QC	Levis, QC
1165	1000004	7	2018-01-07 02:57:10.943+00	developerNotes	\N	2018-01-07: Updated name to "Levis" to match official name
1165	1000004	7	2018-01-07 02:57:10.943+00	address.city	Saint-Romuald	Levis
385	1000004	3	2018-01-07 04:51:31.509+00	powerKiloWatt	0	120
385	1000004	3	2018-01-07 04:51:31.509+00	address.city	Orlando	Turkey Lake
1235	1000004	5	2018-01-10 01:06:59.391+00	status	PERMIT	CONSTRUCTION
1215	1000004	5	2018-01-10 13:04:56.635+00	latitude	52.267048	52.266162
1215	1000004	5	2018-01-10 13:04:56.635+00	longitude	12.922797	12.923874
1215	1000004	5	2018-01-10 13:04:56.635+00	elevationMeters	55	65
1215	1000004	5	2018-01-10 13:04:56.635+00	address.street	Chausseestraße 20	Doktor-Herrmann-Straße 5
1400	1000006	3	2018-01-11 23:34:59.461+00	stallCount	10	12
1485	1000004	1	2018-01-13 02:19:56.275+00	name	\N	Los Gatos, CA
1465	1000004	2	2018-01-13 02:27:26.318+00	latitude	33.084629	33.084189
1465	1000004	2	2018-01-13 02:27:26.318+00	longitude	-117.26751	-117.266384
1465	1000004	2	2018-01-13 02:27:26.318+00	elevationMeters	14	25
1465	1000004	2	2018-01-13 02:27:26.318+00	urlDiscuss	https://teslamotorsclub.com/tmc/posts/2467754/	https://teslamotorsclub.com/tmc/threads/supercharger-carlsbad-la-costa-el-camino-const-started.106171/
1465	1000004	2	2018-01-13 02:27:26.318+00	stallCount	20	26
1465	1000004	2	2018-01-13 02:27:26.318+00	developerNotes	Two permits in Carlsbad - likely only one will progress (the other is #1232)	Construction imminent.
1485	1000006	3	2018-01-14 07:02:23.301+00	powerKiloWatt	0	72
1485	1000004	2	2018-01-13 08:35:24.884+00	latitude	37.229079	37.229926
1485	1000004	2	2018-01-13 08:35:24.884+00	longitude	-121.980334	-121.979384
1485	1000004	2	2018-01-13 08:35:24.884+00	elevationMeters	118	116
1465	1000006	3	2018-01-17 18:20:35.703+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-carlsbad-la-costa-el-camino-const-started.106171/	https://teslamotorsclub.com/tmc/threads/supercharger-carlsbad-7710-el-camino-real-permit-found-construction-planning-started.106517/
1125	1000006	7	2018-01-26 03:05:24.802+00	address.street	Carretera del Aeropuerto, KM 0,5	Moraleda de Zafayona 18370 Granada
1370	1000004	4	2018-01-27 02:34:39.74+00	status	PERMIT	CONSTRUCTION
1370	1000006	5	2018-01-29 04:45:03.964+00	latitude	33.078932	33.07868
1370	1000006	5	2018-01-29 04:45:03.964+00	longitude	-96.820058	-96.819506
1480	1000006	7	2018-01-29 14:29:44.48+00	stallCount	14	16
1495	1000004	1	2018-01-30 01:50:24.703+00	name	\N	Beijing - Oriental Plaza, China
1425	1000006	5	2018-02-09 20:44:03.614+00	status	CONSTRUCTION	OPEN
1425	1000006	5	2018-02-09 20:44:03.614+00	dateOpened	\N	2018-02-09
1425	1000006	5	2018-02-09 20:44:03.614+00	powerKiloWatt	0	135
1480	1000004	8	2018-02-02 01:19:07.255+00	status	CONSTRUCTION	OPEN
1480	1000004	8	2018-02-02 01:19:07.255+00	dateOpened	\N	2018-02-02
1005	1000004	3	2022-05-24 10:01:07.462+00	stallCount	8	16
1005	1000004	3	2022-05-24 10:01:07.462+00	powerKiloWatt	150	250
1005	1000004	3	2022-05-24 10:01:07.462+00	developerNotes	\N	8 V2 + 8 V3
795	1000004	7	2022-05-24 16:24:22.43+00	stallCount	6	14
795	1000004	7	2022-05-24 16:24:22.43+00	powerKiloWatt	150	250
795	1000004	7	2022-05-24 16:24:22.43+00	developerNotes	\N	2022-05-24 Upgraded from 6 to 14 (150->250)
1425	1000004	6	2018-02-10 01:12:13.445+00	locationId	\N	strongsvilleohsupercharger
250	1000004	3	2018-02-10 01:15:28.387+00	name	Truckee, CA	Truckee - Donner Pass, CA
1515	1000004	1	2018-02-17 21:57:27.689+00	name	\N	Almaraz, Spain
1520	1000006	1	2018-02-24 07:47:43.296+00	name	\N	Milpitas, CA
1520	1000006	2	2018-02-25 07:20:47.835+00	stallCount	12	16
1520	1000006	3	2018-02-27 02:11:29.332+00	status	PERMIT	CONSTRUCTION
1520	1000006	4	2018-02-27 03:06:24.669+00	latitude	37.435308	37.434445
1520	1000006	4	2018-02-27 03:06:24.669+00	longitude	-121.892455	-121.891122
135	1000004	7	2018-03-01 11:55:47.877+00	status	CLOSED	OPEN
135	1000004	7	2018-03-01 11:55:47.877+00	dateOpened	\N	2012-12-21
135	1000004	7	2018-03-01 11:55:47.877+00	developerNotes	2016-03-28: Updated from 4 to 12 stalls.\r\n2016-06-25: closed, orig open date is "12/21/2012"\r\n2018-02-23: Site offline temporarily - marked as closed	2016-03-28: Updated from 4 to 12 stalls.\r\n2016-06-25: closed, orig open date is "12/21/2012"\r\n2018-02-23: Site offline temporarily - marked as closed\r\n2018-03-01: Site reported as back up and going.
1525	1000004	1	2018-03-01 20:44:41.595+00	name	\N	Shanghai - Zhujiang Creative Park, China
135	1000004	6	2018-02-22 23:02:22.416+00	status	OPEN	CLOSED
135	1000004	6	2018-02-22 23:02:22.416+00	dateOpened	2012-12-21	\N
135	1000004	6	2018-02-22 23:02:22.416+00	developerNotes	2016-03-28: Updated from 4 to 12 stalls.\r\n2016-06-25: closed, orig open date is "12/21/2012"	2016-03-28: Updated from 4 to 12 stalls.\r\n2016-06-25: closed, orig open date is "12/21/2012"\r\n2018-02-23: Site offline temporarily - marked as closed
1370	1000006	6	2018-03-02 05:56:32.736+00	powerKiloWatt	0	72
1530	1000004	1	2018-03-06 08:45:56.881+00	name	\N	San Ramon, CA
1380	1000006	2	2018-03-07 06:59:29.089+00	status	PERMIT	CONSTRUCTION
1380	1000006	2	2018-03-07 06:59:29.089+00	latitude	38.258488	38.26175
1380	1000006	2	2018-03-07 06:59:29.089+00	longitude	-122.052946	-122.0524
1380	1000006	2	2018-03-07 06:59:29.089+00	powerKiloWatt	0	135
1385	1000004	5	2018-03-07 09:10:23.816+00	locationId	\N	etobicokeonsupercharger
1385	1000004	5	2018-03-07 09:10:23.816+00	status	CONSTRUCTION	OPEN
1385	1000004	5	2018-03-07 09:10:23.816+00	dateOpened	\N	2018-03-07
1215	1000004	6	2018-03-07 15:59:48.248+00	latitude	52.266162	52.266782
1215	1000004	6	2018-03-07 15:59:48.248+00	longitude	12.923874	12.922582
1215	1000004	6	2018-03-07 15:59:48.248+00	elevationMeters	65	68
1390	1000004	4	2018-03-09 23:01:25.303+00	status	CONSTRUCTION	OPEN
1390	1000004	4	2018-03-09 23:01:25.303+00	dateOpened	\N	2018-03-10
1390	1000004	4	2018-03-09 23:01:25.303+00	powerKiloWatt	0	120
1215	1000004	7	2018-03-10 17:59:57.267+00	status	CONSTRUCTION	OPEN
1215	1000004	7	2018-03-10 17:59:57.267+00	dateOpened	\N	2018-03-10
1360	1000004	4	2018-03-11 23:02:55.12+00	status	CONSTRUCTION	OPEN
1360	1000004	4	2018-03-11 23:02:55.12+00	dateOpened	\N	2018-03-12
1215	1000004	8	2018-03-12 20:59:25.928+00	locationId	\N	beelitzsupercharger
1215	1000004	8	2018-03-12 20:59:25.928+00	powerKiloWatt	0	120
1390	1000004	5	2018-03-12 21:00:57.338+00	locationId	\N	orlandofloridasupercharger
1390	1000004	5	2018-03-12 21:00:57.338+00	name	Orlando-Universal Blvd, FL	Orlando - W. Sand Lake Rd, FL
1390	1000004	6	2018-03-12 21:01:22.682+00	stallCount	6	8
1360	1000004	5	2018-03-12 21:02:29.426+00	locationId	\N	woodbridgesupercharger
1360	1000004	5	2018-03-12 21:02:29.426+00	elevationMeters	41	40
1360	1000004	5	2018-03-12 21:02:29.426+00	powerKiloWatt	0	120
1360	1000004	5	2018-03-12 21:02:29.426+00	address.street	King George Rd	440 King George Rd
1360	1000004	5	2018-03-12 21:02:29.426+00	address.zip	\N	08857
1090	1000004	5	2018-03-13 09:23:05.161+00	status	CONSTRUCTION	OPEN
1090	1000004	5	2018-03-13 09:23:05.161+00	dateOpened	\N	2018-03-13
1090	1000004	5	2018-03-13 09:23:05.161+00	elevationMeters	65	67
1090	1000004	5	2018-03-13 09:23:05.161+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/2611541/
1310	1000004	2	2018-03-13 20:39:20.441+00	status	CONSTRUCTION	OPEN
1310	1000004	2	2018-03-13 20:39:20.441+00	dateOpened	\N	2018-03-14
1310	1000004	2	2018-03-13 20:39:20.441+00	elevationMeters	98	93
1310	1000004	2	2018-03-13 20:39:20.441+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/2612842/
1090	1000004	6	2018-03-14 01:23:54.974+00	locationId	\N	fleetsupercharger
1310	1000004	3	2018-03-14 01:24:07.921+00	locationId	\N	liphooksupercharger
1515	1000004	2	2018-04-25 21:39:09.347+00	stallCount	8	10
1535	1000004	1	2018-03-14 06:22:04.076+00	name	\N	Aguascalientes, Mexico
1090	1000004	7	2018-03-14 12:30:17.437+00	developerNotes	\N	2018-03-14: Photos show 12.  Tesla site reports 8?
550	1000006	3	2018-06-19 04:01:37.412+00	stallCount	8	16
1545	1000006	1	2018-03-21 03:34:39.757+00	name	\N	Glendale, CA
1545	1000006	2	2018-03-21 03:35:41.272+00	address.street	796 Americana Way, Parking level 7	877 Americana Way, Parking level 7
1545	1000006	3	2018-03-21 03:40:33.233+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-glendale-location-found-construction-started-20-urban-chargers.111299/
145	1000006	2	2018-03-26 11:59:24.837+00	stallCount	6	8
145	1000006	2	2018-03-26 11:59:24.837+00	developerNotes	\N	"They are adding two stalls to the supercharger in Rockford, IL. It is going from 6 to 8."
1550	1000006	1	2018-03-26 12:04:35.272+00	name	\N	Melide , Switzerland
1550	1000006	2	2018-03-26 12:05:05.276+00	name	Melide , Switzerland	Melide, Switzerland
475	1000006	2	2018-03-27 12:09:36.344+00	stallCount	6	10
1195	1000004	3	2018-03-28 03:58:46.38+00	address.state	\N	Guanajuato
1185	1000004	2	2018-03-28 04:03:38.047+00	address.state	\N	Puebla
1345	1000004	3	2018-03-28 23:22:17.988+00	locationId	\N	castlebellinghamnorthboundsupercharger
1345	1000004	5	2018-03-28 23:46:03.275+00	powerKiloWatt	0	120
475	1000006	3	2018-03-27 12:10:07.024+00	developerNotes	\N	Email saying increased to 10 stalls in March 2018.
1555	1000004	1	2018-03-27 12:22:35.043+00	name	\N	Portage la Prairie, MB
1530	1000004	2	2018-03-27 22:31:22.425+00	latitude	37.761624	37.762773
1530	1000004	2	2018-03-27 22:31:22.425+00	longitude	-121.963442	-121.963466
1555	1000004	2	2018-03-27 22:33:03.074+00	locationId	\N	portagelaprariesupercharger
1345	1000004	4	2018-03-28 23:23:28.514+00	status	CONSTRUCTION	OPEN
1345	1000004	4	2018-03-28 23:23:28.514+00	dateOpened	\N	2018-03-29
1365	1000004	3	2018-03-28 23:48:15.98+00	status	CONSTRUCTION	OPEN
1365	1000004	3	2018-03-28 23:48:15.98+00	dateOpened	\N	2018-03-29
1365	1000004	3	2018-03-28 23:48:15.98+00	powerKiloWatt	0	120
1545	1000004	4	2018-03-30 05:48:08.529+00	status	CONSTRUCTION	OPEN
1545	1000004	4	2018-03-30 05:48:08.529+00	dateOpened	\N	2018-03-30
1545	1000004	4	2018-03-30 05:48:08.529+00	powerKiloWatt	0	72
1545	1000004	5	2018-03-30 05:49:19.358+00	locationId	\N	glendalesupercharger
1560	1000004	1	2018-03-30 21:36:59.737+00	name	\N	Fargo, ND
1370	1000004	7	2018-03-31 11:23:19.55+00	status	CONSTRUCTION	OPEN
1370	1000004	7	2018-03-31 11:23:19.55+00	dateOpened	\N	2018-03-31
1370	1000004	8	2018-04-01 07:11:00.959+00	locationId	\N	planotexassupercharger
1565	1000004	1	2018-04-02 21:26:54.007+00	name	\N	Dickinson, ND
1405	1000006	3	2018-04-02 22:27:26.859+00	status	CONSTRUCTION	OPEN
1405	1000006	3	2018-04-02 22:27:26.859+00	dateOpened	\N	2018-04-02
1570	1000006	1	2018-04-09 15:07:11.331+00	name	\N	Vikeså, Norway
1575	1000004	1	2018-04-12 00:53:43.685+00	name	\N	New Town Plaza, Hong Kong
1810	1000004	1	2018-12-20 08:43:37.046+00	name	\N	Gouda
1580	1000004	1	2018-04-16 21:46:08.461+00	name	\N	Thiais, France
1235	1000004	6	2018-04-19 02:03:22.858+00	status	CONSTRUCTION	OPEN
1235	1000004	6	2018-04-19 02:03:22.858+00	dateOpened	\N	2018-04-19
1235	1000004	6	2018-04-19 02:03:22.858+00	powerKiloWatt	0	120
1235	1000004	6	2018-04-19 02:03:22.858+00	address.zip	\N	76092
1590	1000004	1	2018-04-24 03:34:01.318+00	name	\N	Country Garden Phoenix Hot Spring Hotel Taizhou, China
1465	1000004	4	2018-04-19 02:05:30.206+00	status	PERMIT	CONSTRUCTION
1585	1000006	1	2018-04-20 05:47:26.528+00	name	\N	San Bernardino, CA
1235	1000004	7	2018-04-23 21:40:43.156+00	locationId	\N	southlaketxsupercharger
1515	1000004	2	2018-04-25 21:39:09.347+00	status	CONSTRUCTION	OPEN
1515	1000004	2	2018-04-25 21:39:09.347+00	dateOpened	\N	2018-04-26
1515	1000004	3	2018-04-25 21:39:42.303+00	locationId	\N	almarazsupercharger
1550	1000004	3	2018-04-27 20:09:13.508+00	status	CONSTRUCTION	OPEN
1550	1000004	3	2018-04-27 20:09:13.508+00	dateOpened	\N	2018-04-27
1400	1000004	4	2018-04-27 22:47:41.921+00	status	CONSTRUCTION	OPEN
1400	1000004	4	2018-04-27 22:47:41.921+00	dateOpened	\N	2018-04-28
1550	1000004	4	2018-04-28 06:27:34.059+00	address.street	Swissminiatur 6815 Melid	Swissminiatur 6815 Melide
1485	1000004	4	2018-04-28 10:21:24.256+00	status	PERMIT	CONSTRUCTION
1485	1000004	4	2018-04-28 10:21:24.256+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/los-gatos-near-hwy9-and-n-santa-cruz.106178/	https://teslamotorsclub.com/tmc/threads/supercharger-los-gatos-permit-approved-construction-not-started-12-“urban”-chargers.106178
1595	1000004	1	2018-04-28 10:29:54.854+00	name	\N	Payson, AZ
605	1000004	2	2018-04-30 07:15:34.959+00	status	OPEN	CLOSED
605	1000004	2	2018-04-30 07:15:34.959+00	dateOpened	2015-08-20	\N
605	1000004	2	2018-04-30 07:15:34.959+00	developerNotes	.	.2018-04-30: Temporarily closed from 30 April to 4 May.  Original open date 20/8/2015.  Refer: https://teslamotorsclub.com/tmc/threads/supercharger-in-ann-arbor-mi-going-down-for-this-week.114269/
1600	1000004	1	2018-05-03 09:38:35.887+00	name	\N	Hangzhou - Binjiang Binwen Road Yaduo Hotel, China
1400	1000004	5	2018-05-03 10:18:16.066+00	locationId	\N	fremontcaliforniasupercharger
1400	1000004	5	2018-05-03 10:18:16.066+00	name	Fremont-Fremont Hub, CA	Fremont - 39201 Fremont Blvd, CA
1400	1000004	6	2018-05-03 10:18:30.027+00	developerNotes	\N	2018-05-03: Previously known as "Fremont Hub"
1550	1000004	5	2018-05-03 10:18:53.316+00	locationId	\N	melidesupercharger
1550	1000004	6	2018-05-03 10:36:42.066+00	latitude	45.954149	45.954229
1550	1000004	6	2018-05-03 10:36:42.066+00	longitude	8.949718	8.950579
1550	1000004	6	2018-05-03 10:36:42.066+00	elevationMeters	272	273
1550	1000004	6	2018-05-03 10:36:42.066+00	powerKiloWatt	0	120
1585	1000004	2	2018-05-05 02:24:36.433+00	stallCount	12	14
1605	1000004	1	2018-05-05 23:54:21.921+00	name	\N	Ribeira de Pena, Portugal
1380	1000004	3	2018-05-06 00:44:23.312+00	status	CONSTRUCTION	OPEN
1380	1000004	3	2018-05-06 00:44:23.312+00	dateOpened	\N	2018-05-06
1380	1000004	3	2018-05-06 00:44:23.312+00	address.street	1350 Travis Blvd.	1350 Travis Blvd
765	1000006	2	2018-05-06 21:31:50.509+00	stallCount	4	8
765	1000006	2	2018-05-06 21:31:50.509+00	developerNotes	\N	email saying now has 8 stalls
1485	1000006	5	2018-05-07 04:47:32.366+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-los-gatos-permit-approved-construction-not-started-12-“urban”-chargers.106178	https://teslamotorsclub.com/tmc/posts/2509101/
1485	1000006	5	2018-05-07 04:47:32.366+00	developerNotes	\N	Read discuss link for thread contains double quotes and was not working for all browsers.  Linked to first post in thread for now.
1610	1000006	4	2018-05-18 11:03:31.188+00	latitude	60.420807	60.421749
1610	1000006	4	2018-05-18 11:03:31.188+00	longitude	5.463671	5.467271
985	1000004	5	2018-05-24 02:45:40.596+00	latitude	30.90069	30.906097
985	1000004	5	2018-05-24 02:45:40.596+00	longitude	-102.905559	-102.884729
985	1000004	5	2018-05-24 02:45:40.596+00	elevationMeters	920	901
985	1000004	5	2018-05-24 02:45:40.596+00	developerNotes	\N	2018-05-24: Updated co-ords/address based on TMC thread
985	1000004	5	2018-05-24 02:45:40.596+00	address.street	2571 I-10 Service Rd	2571 N Front St
1595	1000006	2	2018-05-25 19:01:08.21+00	latitude	34.241583	34.242065
1595	1000006	2	2018-05-25 19:01:08.21+00	longitude	-111.321043	-111.322538
1425	1000006	7	2018-05-09 13:23:32.767+00	address.zip	\N	44136
1080	1000006	6	2018-05-09 13:24:20.372+00	address.zip	\N	60440
1275	1000006	4	2018-05-09 13:25:04.007+00	address.zip	\N	04032
1470	1000006	3	2018-05-09 13:27:26.631+00	address.zip	\N	02141
1400	1000006	7	2018-05-09 13:28:06.037+00	address.zip	\N	94538
1330	1000006	11	2018-05-09 13:32:40.685+00	address.zip	\N	80124
470	1000006	3	2018-05-09 13:33:11.691+00	address.zip	\N	36830
1390	1000006	7	2018-05-09 13:34:55.823+00	address.zip	\N	32819
605	1000004	3	2018-05-13 04:06:21.359+00	status	CLOSED	OPEN
605	1000004	3	2018-05-13 04:06:21.359+00	dateOpened	\N	2015-08-20
605	1000004	3	2018-05-13 04:06:21.359+00	developerNotes	.2018-04-30: Temporarily closed from 30 April to 4 May.  Original open date 20/8/2015.  Refer: https://teslamotorsclub.com/tmc/threads/supercharger-in-ann-arbor-mi-going-down-for-this-week.114269/	.2018-04-30: Temporarily closed from 30 April to 4 May.  Original open date 20/8/2015.  Refer: https://teslamotorsclub.com/tmc/threads/supercharger-in-ann-arbor-mi-going-down-for-this-week.114269/\r\n2018-05-13: Re-opened according to TMC.
1610	1000006	1	2018-05-13 20:32:06.099+00	name	\N	Arna, Norway
1610	1000006	2	2018-05-18 10:56:03.485+00	status	PERMIT	CONSTRUCTION
1610	1000006	2	2018-05-18 10:56:03.485+00	stallCount	1	20
1610	1000006	3	2018-05-18 11:00:07.927+00	address.street	Unknown number of stalls. Permission requested for transformer for supercharger	By Øyrane Torg shopping center
1615	1000006	1	2018-05-20 06:42:20.728+00	name	\N	Alameda, CA
1625	1000004	1	2018-05-30 14:08:57.286+00	name	\N	Enfield, NS
1465	1000006	5	2018-05-26 05:00:55.601+00	powerKiloWatt	0	72
1620	1000004	1	2018-05-27 11:32:35.822+00	name	\N	Annapolis, MD
1570	1000006	2	2018-06-01 21:37:32.356+00	status	PERMIT	CONSTRUCTION
1635	1000006	1	2018-06-04 20:59:44.652+00	name	\N	Santa Monica - Santa Monica Place, CA
1630	1000004	1	2018-06-01 06:07:48.283+00	name	\N	Wallace, NC
1245	1000006	5	2018-06-07 02:39:02.33+00	powerKiloWatt	0	120
1585	1000004	3	2018-06-07 22:33:28.445+00	status	CONSTRUCTION	OPEN
1585	1000004	3	2018-06-07 22:33:28.445+00	dateOpened	\N	2018-06-08
785	1000006	9	2018-06-12 14:02:02.467+00	developerNotes	\N	In process of expanding to 44 stalls. Will be without power from 13th of June at 2000 to 14th of june at 0200.
785	1000006	9	2018-06-12 14:02:02.467+00	address.street	Nebbenes service area northbound, next to Nebbenes Kro	Offline 13.06 20:00 to 14.06 02:00 - Nebbenes service area northbound, next to Nebbenes Kro
1605	1000006	2	2018-06-15 02:04:49.126+00	status	CONSTRUCTION	OPEN
1605	1000006	2	2018-06-15 02:04:49.126+00	dateOpened	\N	2018-06-14
1605	1000006	2	2018-06-15 02:04:49.126+00	stallCount	16	10
1605	1000004	3	2018-06-15 06:55:49.049+00	locationId	\N	vilarealsupercharger
1630	1000004	2	2018-06-15 14:15:50.151+00	status	CONSTRUCTION	OPEN
1630	1000004	2	2018-06-15 14:15:50.151+00	dateOpened	\N	2018-06-16
1645	1000004	1	2018-06-15 23:06:08.496+00	name	\N	Fort Myers - Cypress Pkwy, FL
1650	1000004	1	2018-06-19 00:48:50.162+00	name	\N	Dongguan - Shoes Center, China
550	1000006	2	2018-06-19 04:01:25.45+00	developerNotes	2016-01-30: submitChange API.  Stall count from 4 to 8.	Supercharger in Affi Italy is expanding with another 8 supercharger stalls.
1645	1000006	2	2018-06-19 16:39:04.54+00	stallCount	13	14
625	1000004	3	2018-06-21 23:37:11.33+00	name	Nashville, TN	Nashville - Brentwood, TN
1610	1000006	7	2018-06-22 09:29:24.89+00	stallCount	20	16
1660	1000004	2	2018-06-23 01:57:26.853+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/superchargers-in-mexico.43464
1610	1000004	6	2018-06-20 23:25:50.816+00	locationId	\N	asanearnasupercharger
1660	1000004	1	2018-06-23 00:51:31.884+00	name	\N	Atizapan de Zaragoza, Mexico
1610	1000006	5	2018-06-20 22:33:17.826+00	status	CONSTRUCTION	OPEN
1610	1000006	5	2018-06-20 22:33:17.826+00	dateOpened	\N	2018-06-21
1570	1000006	3	2018-06-21 19:53:54.99+00	status	CONSTRUCTION	OPEN
1570	1000006	3	2018-06-21 19:53:54.99+00	dateOpened	\N	2018-06-21
1570	1000004	4	2018-06-22 02:18:55.519+00	locationId	\N	vikesasupercharger
1570	1000004	4	2018-06-22 02:18:55.519+00	powerKiloWatt	0	120
1530	1000006	3	2018-06-24 05:36:19.684+00	status	PERMIT	CONSTRUCTION
1530	1000006	4	2018-06-24 05:42:22.347+00	locationId	\N	sanramoncaliforniasupercharger
1665	1000004	1	2018-06-26 02:32:20.571+00	name	\N	Basking Ridge, NJ
1250	1000004	3	2018-06-28 22:20:56.61+00	status	CONSTRUCTION	OPEN
1250	1000004	3	2018-06-28 22:20:56.61+00	dateOpened	\N	2018-06-29
1250	1000004	3	2018-06-28 22:20:56.61+00	powerKiloWatt	0	120
1250	1000004	4	2018-06-28 22:21:18.198+00	locationId	\N	memburyeastboundsupercharger
1645	1000004	3	2018-07-01 22:17:03.489+00	name	Fort Myers - Cypress Pkwy, FL	Fort Myers - Dani Drive, FL
1645	1000004	3	2018-07-01 22:17:03.489+00	status	CONSTRUCTION	OPEN
1645	1000004	3	2018-07-01 22:17:03.489+00	dateOpened	\N	2018-07-02
1105	1000004	3	2018-07-01 22:19:31.49+00	status	CONSTRUCTION	OPEN
1105	1000004	3	2018-07-01 22:19:31.49+00	dateOpened	\N	2018-07-02
1105	1000004	3	2018-07-01 22:19:31.49+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/2844571/
1670	1000006	1	2018-07-02 02:10:54.76+00	name	\N	Alcacér do Sal, Portugal
1105	1000004	4	2018-07-02 14:31:36.999+00	locationId	\N	burtonwoodsupercharger
1670	1000006	2	2018-07-02 17:42:23.608+00	latitude	38.384608	38.392304
1670	1000006	2	2018-07-02 17:42:23.608+00	longitude	-8.513007	-8.513896
1670	1000006	3	2018-07-02 17:43:06.543+00	latitude	38.392304	38.391941
1670	1000006	3	2018-07-02 17:43:06.543+00	longitude	-8.513896	-8.513867
1675	1000004	1	2018-07-03 11:34:19.984+00	name	\N	Taitung, Taiwan
1050	1000004	7	2018-07-06 12:02:01.486+00	name	Woodall, UK	Woodall Southbound, UK
1050	1000004	7	2018-07-06 12:02:01.486+00	developerNotes	\N	2018-06-07: Rename to Southbound due to permit for Northbound site
1050	1000004	8	2018-07-07 10:25:58.312+00	address.street	Woodall Motorway Services Area, M1	Woodall Motorway Services Area, M1 (south)
275	1000006	5	2018-07-11 02:32:00.237+00	stallCount	10	20
275	1000006	5	2018-07-11 02:32:00.237+00	developerNotes	2016-11-13: Someone emailed me with the correct number of stalls	Now 20 stalls.
615	1000006	3	2018-07-13 14:35:20.882+00	developerNotes	\N	4 more stalls under construction
1680	1000004	1	2018-07-14 06:11:41.315+00	name	\N	Tianjin Financing Service Center, China
785	1000006	10	2018-07-25 11:45:24.163+00	stallCount	20	30
785	1000006	11	2018-07-25 11:45:39.267+00	developerNotes	In process of expanding to 44 stalls. Will be without power from 13th of June at 2000 to 14th of june at 0200.	In process of expanding to 44 stalls.
785	1000004	12	2018-07-25 12:43:02.004+00	address.street	Offline 13.06 20:00 to 14.06 02:00 - Nebbenes service area northbound, next to Nebbenes Kro	Nebbenes service area northbound, next to Nebbenes Kro
1685	1000004	1	2018-07-31 08:33:36.125+00	name	\N	Brooklyn - Washington Ave, NY
615	1000006	4	2018-08-04 20:44:04.309+00	stallCount	4	8
1615	1000006	2	2018-08-07 00:48:59.536+00	latitude	37.755473	37.756265
1615	1000006	2	2018-08-07 00:48:59.536+00	longitude	-122.251182	-122.249306
985	1000006	6	2018-08-13 21:48:53.443+00	latitude	30.906097	30.895088
985	1000006	6	2018-08-13 21:48:53.443+00	longitude	-102.884729	-102.907268
1690	1000006	1	2018-08-15 06:52:15.651+00	name	\N	Daly City, CA
985	1000006	7	2018-08-21 05:34:41.998+00	latitude	30.895088	30.905492
985	1000006	7	2018-08-21 05:34:41.998+00	longitude	-102.907268	-102.88453
1695	1000004	1	2018-08-21 22:01:49.016+00	name	\N	Xiantao - Zon100 Mall, China
1690	1000006	3	2018-10-06 05:18:15.244+00	status	CONSTRUCTION	OPEN
1690	1000006	3	2018-10-06 05:18:15.244+00	dateOpened	\N	2018-10-05
1690	1000004	2	2018-08-28 12:21:56.028+00	stallCount	20	39
1530	1000006	5	2018-08-31 14:38:26.709+00	status	CONSTRUCTION	OPEN
1530	1000006	5	2018-08-31 14:38:26.709+00	dateOpened	\N	2017-08-30
1670	1000006	4	2018-08-31 21:13:44.561+00	locationId	\N	alcacerdosalsupercharger
1670	1000006	4	2018-08-31 21:13:44.561+00	status	CONSTRUCTION	OPEN
1670	1000006	4	2018-08-31 21:13:44.561+00	dateOpened	\N	2018-08-31
1670	1000006	4	2018-08-31 21:13:44.561+00	urlDiscuss	\N	https://.com/tmc/threads/portugal.84971
1670	1000006	5	2018-08-31 21:15:26.826+00	name	Alcacér do Sal, Portugal	Alcácer do Sal, Portugal
1530	1000004	6	2018-09-01 23:37:12.998+00	stallCount	16	10
1530	1000004	6	2018-09-01 23:37:12.998+00	powerKiloWatt	0	120
250	1000006	4	2018-09-02 02:42:37.492+00	stallCount	6	11
985	1000004	8	2018-09-05 03:18:58.397+00	status	PERMIT	CONSTRUCTION
1705	1000004	1	2018-09-05 22:12:33.389+00	name	\N	Chico, CA
1710	1000004	1	2018-09-19 04:27:39.925+00	name	\N	Walker, MI
1485	1000006	6	2018-09-24 23:51:35.858+00	status	CONSTRUCTION	OPEN
1485	1000006	6	2018-09-24 23:51:35.858+00	dateOpened	\N	2018-09-24
1710	1000004	2	2018-09-19 22:11:52.426+00	stallCount	8	4
1715	1000004	1	2018-09-24 13:29:08.712+00	name	\N	Surrey, BC
1715	1000004	2	2018-09-24 13:29:14.572+00	status	PERMIT	CONSTRUCTION
1485	1000004	7	2018-09-25 05:06:42.269+00	locationId	\N	losgatossupercharger
1465	1000004	6	2018-09-27 10:07:46.691+00	developerNotes	Construction imminent.	2018-09-27: 2 stalls are active, 24 are not.  While *technically* it could be marked as "open", I'll hold off.
1465	1000004	7	2018-09-27 21:53:26.359+00	locationId	\N	carlsbadsupercharger
1465	1000004	7	2018-09-27 21:53:26.359+00	status	CONSTRUCTION	OPEN
1465	1000004	7	2018-09-27 21:53:26.359+00	dateOpened	\N	2018-09-28
1465	1000004	7	2018-09-27 21:53:26.359+00	stallCount	26	20
1465	1000004	7	2018-09-27 21:53:26.359+00	developerNotes	2018-09-27: 2 stalls are active, 24 are not.  While *technically* it could be marked as "open", I'll hold off.	\N
1465	1000004	8	2018-09-27 21:54:11.187+00	name	Carlsbad - La Costa, CA	Carlsbad, CA
1715	1000004	3	2018-09-24 23:57:32.574+00	latitude	49.193463	49.190994
1715	1000004	3	2018-09-24 23:57:32.574+00	longitude	-122.806126	-122.806207
1715	1000004	3	2018-09-24 23:57:32.574+00	elevationMeters	94	95
1715	1000004	4	2018-09-24 23:58:14.404+00	address.street	10520 150 St	10355 152 St
1715	1000004	4	2018-09-24 23:58:14.404+00	address.zip	V3R 4B4	V3R 7C1
1685	1000004	2	2018-09-29 00:14:30.394+00	name	Brooklyn - Washington Ave, NY	Brooklyn - Brooklyn Museum, NY
1685	1000004	2	2018-09-29 00:14:30.394+00	status	CONSTRUCTION	OPEN
1685	1000004	2	2018-09-29 00:14:30.394+00	dateOpened	\N	2018-09-29
1685	1000004	2	2018-09-29 00:14:30.394+00	address.zip	11238	11225
1720	1000004	1	2018-09-30 06:12:56.624+00	name	\N	Richmond, TX
295	1000004	2	2018-10-01 00:06:10.473+00	latitude	42.203608	42.203764
295	1000004	2	2018-10-01 00:06:10.473+00	longitude	-71.832516	-71.832954
295	1000004	2	2018-10-01 00:06:10.473+00	elevationMeters	156	154
1615	1000006	3	2018-10-04 06:16:16.083+00	status	PERMIT	CONSTRUCTION
1690	1000004	4	2018-10-06 22:17:12.209+00	stallCount	39	40
1715	1000006	6	2018-10-07 03:46:15.677+00	status	CONSTRUCTION	OPEN
1715	1000006	6	2018-10-07 03:46:15.677+00	dateOpened	\N	2018-10-06
1715	1000006	7	2018-10-11 01:28:01.687+00	latitude	49.190994	49.192318
1715	1000006	7	2018-10-11 01:28:01.687+00	longitude	-122.806207	-122.806073
1725	1000006	1	2018-10-11 05:01:36.12+00	name	\N	Big Sur, CA
1715	1000004	8	2018-10-12 03:35:20.457+00	locationId	\N	surreybcsupercharger
1730	1000004	1	2018-10-13 00:21:44.836+00	name	\N	Lynnfield, MA
1730	1000006	2	2018-10-13 04:57:34.449+00	latitude	42.516112	42.516609
1730	1000006	2	2018-10-13 04:57:34.449+00	longitude	-71.033361	-71.032521
1730	1000006	3	2018-10-13 04:59:16.674+00	stallCount	8	12
985	1000004	9	2018-10-14 20:46:55.413+00	status	CONSTRUCTION	OPEN
985	1000004	9	2018-10-14 20:46:55.413+00	dateOpened	\N	2018-10-15
985	1000004	9	2018-10-14 20:46:55.413+00	powerKiloWatt	0	120
1735	1000004	1	2018-10-19 11:44:05.417+00	name	\N	Haymarket, VA
1740	1000006	1	2018-10-23 19:31:07.079+00	name	\N	Øyer, Norway
1715	1000004	5	2018-09-25 01:47:13.477+00	stallCount	10	12
990	1000006	7	2018-12-04 05:55:52.37+00	address.state	Tipperary	\N
185	1000004	2	2018-10-24 06:35:39.1+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-san-marcos-tx.132803
1615	1000006	4	2018-10-28 23:18:30.559+00	powerKiloWatt	0	135
1735	1000006	2	2018-10-31 03:40:28.476+00	status	PERMIT	CONSTRUCTION
120	1000006	5	2018-10-31 03:49:31.02+00	stallCount	18	20
1750	1000004	1	2018-11-03 00:44:39.055+00	name	\N	Victoria, BC
1755	1000006	1	2018-11-07 05:08:24.742+00	name	\N	Würzburg
1755	1000006	2	2018-11-07 05:15:15.128+00	urlDiscuss	https://tff-forum.de/viewtopic.php?f=68&t=6133&view=unread&sid=278875328ce94f8ca5bdf94f5b86c8d1#p581110	https://tff-forum.de/viewtopic.php?f=68&t=6133&start=4870#p581110
1755	1000006	3	2018-11-07 05:38:13.124+00	name	Würzburg	Würzburg, Germany
1755	1000006	4	2018-11-07 23:01:36.042+00	latitude	49.778018	49.77884
1755	1000006	4	2018-11-07 23:01:36.042+00	longitude	10.068594	10.068646
1595	1000004	3	2018-11-09 04:58:36.41+00	status	PERMIT	CONSTRUCTION
1530	1000006	7	2018-11-14 19:23:38.633+00	dateOpened	2017-08-30	2018-08-30
395	1000004	3	2018-11-20 17:45:08.986+00	urlDiscuss	http://tesla.sondell.biz/?cat=1	http://teslaclubsweden.se/forum/viewtopic.php?f=45&t=5999&start=640
395	1000004	3	2018-11-20 17:45:08.986+00	stallCount	6	8
395	1000004	3	2018-11-20 17:45:08.986+00	powerKiloWatt	0	120
395	1000004	3	2018-11-20 17:45:08.986+00	developerNotes	2016-01-18: There appear to be 6 stalls even though Tesla's website lists 4.  http://supercharge-me.de/index.php/component/content/article?id=236:supercharger-tystberga	2016-01-18: There appear to be 6 stalls even though Tesla's website lists 4.  http://supercharge-me.de/index.php/component/content/article?id=236:supercharger-tystberga\r\n\r\n2018-11-20: Tesla added another 2 stalls, now 8.
1520	1000004	5	2018-11-16 02:42:12.03+00	status	CONSTRUCTION	OPEN
1520	1000004	5	2018-11-16 02:42:12.03+00	dateOpened	\N	2018-11-16
1520	1000004	5	2018-11-16 02:42:12.03+00	elevationMeters	9	10
1520	1000004	5	2018-11-16 02:42:12.03+00	powerKiloWatt	0	120
1755	1000006	5	2018-11-16 12:31:03.753+00	powerKiloWatt	120	0
1770	1000004	1	2018-11-19 22:22:28.293+00	name	\N	Shanghai  - Space Tech Industry Park, China
1595	1000006	4	2018-11-20 06:12:52.544+00	stallCount	8	12
1635	1000006	2	2018-11-22 05:45:13.66+00	status	PERMIT	CONSTRUCTION
1635	1000004	3	2018-11-22 06:27:23.036+00	powerKiloWatt	0	72
1775	1000004	1	2018-11-25 12:33:40.36+00	name	\N	Yuba City, CA
1780	1000004	1	2018-11-28 01:20:31.831+00	name	\N	Shanghai - Vanke Plaza, China
850	1000004	5	2018-11-28 03:20:07.999+00	locationId	buenaparksupercharger	buenapark
1710	1000004	3	2018-11-30 23:50:19.55+00	status	PERMIT	CONSTRUCTION
1785	1000004	1	2018-12-01 00:09:40.859+00	name	\N	Mississauga, ON
1755	1000006	6	2018-12-01 05:55:30.482+00	stallCount	10	18
1790	1000006	1	2018-12-03 07:02:40.858+00	name	\N	Macon - Tom Hill Sr Road, GA
1515	1000006	4	2018-12-04 05:54:51.872+00	address.state	Cáceres	\N
455	1000006	2	2018-12-04 05:57:59.031+00	address.state	Kent	\N
345	1000006	4	2018-12-04 05:58:11.56+00	address.state	Hauconcourt	\N
1280	1000006	6	2018-12-04 05:58:57.224+00	address.state	Álava	\N
805	1000006	6	2018-12-04 05:59:28.051+00	address.state	Paterna	\N
535	1000006	3	2018-12-04 05:59:39.839+00	address.state	Greater London	\N
910	1000006	7	2018-12-04 06:02:01.222+00	address.city	Fort MacLead	Fort MacLeod
1750	1000004	2	2018-12-04 13:20:22.487+00	stallCount	12	16
1790	1000004	2	2018-12-04 13:23:49.75+00	stallCount	8	10
1740	1000006	2	2018-12-05 08:08:58.36+00	status	PERMIT	CONSTRUCTION
325	1000006	2	2018-12-05 19:59:08.233+00	stallCount	8	16
185	1000006	3	2018-12-05 22:16:47.847+00	stallCount	5	12
1785	1000006	2	2018-12-05 23:06:05.629+00	stallCount	12	16
1775	1000004	2	2018-12-07 04:19:38.418+00	status	PERMIT	CONSTRUCTION
1775	1000004	2	2018-12-07 04:19:38.418+00	latitude	39.148355	39.147833
1775	1000004	2	2018-12-07 04:19:38.418+00	longitude	-121.647573	-121.647861
1795	1000004	1	2018-12-09 05:03:52.279+00	name	\N	Riviera Beach - Garden Rd, FL
1750	1000006	3	2018-12-09 07:02:37.553+00	status	CONSTRUCTION	OPEN
1750	1000006	3	2018-12-09 07:02:37.553+00	dateOpened	\N	2018-12-08
1750	1000004	4	2018-12-09 21:10:32.66+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-victoria-bc.133961	https://teslamotorsclub.com/tmc/posts/3172625/
1750	1000004	4	2018-12-09 21:10:32.66+00	powerKiloWatt	0	72
1800	1000006	1	2018-12-10 17:49:33.963+00	name	\N	West Nyack, NY
280	1000004	2	2018-12-10 22:56:11.353+00	locationId	beijingyizhuang	beijingyizhuangsupercharger
280	1000004	2	2018-12-10 22:56:11.353+00	name	Beijing-Yizhuang, China	Beijing - Yizhuang AK Valley, China
280	1000004	2	2018-12-10 22:56:11.353+00	stallCount	4	8
280	1000004	2	2018-12-10 22:56:11.353+00	developerNotes	\N	Name and stalls updated 2018-12-11.
1750	1000004	7	2018-12-11 12:16:18.378+00	latitude	48.45641	48.456647
1750	1000004	7	2018-12-11 12:16:18.378+00	longitude	-123.375839	-123.376329
1800	1000004	2	2018-12-12 00:49:59.043+00	stallCount	16	20
1795	1000006	2	2018-12-12 19:33:04.665+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/sneaky-tesla-supercharger-unconfirmed-riviera-beach-looks-not-op.137394/	https://teslamotorsclub.com/tmc/threads/new-supercharger-in-west-palm-beach-fl-found-and-confirmed.137470/
1750	1000004	5	2018-12-11 12:13:24.698+00	latitude	48.455706	48.45641
1750	1000004	5	2018-12-11 12:13:24.698+00	longitude	-123.3752879	-123.375839
1615	1000004	5	2018-12-15 21:53:28.344+00	status	CONSTRUCTION	OPEN
1615	1000004	5	2018-12-15 21:53:28.344+00	dateOpened	\N	2018-12-16
1615	1000004	5	2018-12-15 21:53:28.344+00	elevationMeters	4	3
1720	1000004	2	2018-12-16 21:10:39.777+00	status	CONSTRUCTION	OPEN
1720	1000004	2	2018-12-16 21:10:39.777+00	dateOpened	\N	2018-12-17
1720	1000004	2	2018-12-16 21:10:39.777+00	powerKiloWatt	0	120
1720	1000004	3	2018-12-18 03:47:30.054+00	locationId	\N	richmondtxsupercharger
1340	1000004	3	2018-12-19 01:01:15.427+00	address.state	Chilpancingo	Guerrero
1660	1000004	3	2018-12-19 01:01:56.463+00	address.state	Estado de Mexico	México
1735	1000004	3	2018-12-19 09:09:07.717+00	status	CONSTRUCTION	OPEN
1735	1000004	3	2018-12-19 09:09:07.717+00	dateOpened	\N	2018-12-19
1735	1000004	3	2018-12-19 09:09:07.717+00	powerKiloWatt	0	120
835	1000006	7	2018-12-19 18:52:55.574+00	developerNotes	2016-06-29: correction via email stalls 4->6	2016-06-29: correction via email stalls 4 to 6
805	1000006	7	2018-12-19 18:53:06.996+00	developerNotes	2016-05-01: stall count 6->4	2016-05-01: stall count 6 to 4
1755	1000004	7	2018-12-20 00:08:36.501+00	locationId	wurzburgsupercharger	dettelbachsupercharger
1755	1000004	7	2018-12-20 00:08:36.501+00	name	Würzburg, Germany	Dettelbach, Germany
1755	1000004	7	2018-12-20 00:08:36.501+00	status	CONSTRUCTION	OPEN
1755	1000004	7	2018-12-20 00:08:36.501+00	dateOpened	\N	2018-12-20
1755	1000004	7	2018-12-20 00:08:36.501+00	stallCount	18	8
1755	1000004	7	2018-12-20 00:08:36.501+00	powerKiloWatt	0	120
1755	1000004	7	2018-12-20 00:08:36.501+00	developerNotes	\N	2018-12-20: Live on Tesla site, only 8 of 18.
1755	1000004	7	2018-12-20 00:08:36.501+00	address.street	Mainfrankenpark	20 Mainfrankenpark
1740	1000006	3	2018-12-20 01:34:46.55+00	status	CONSTRUCTION	OPEN
1740	1000006	3	2018-12-20 01:34:46.55+00	dateOpened	\N	2018-12-19
1810	1000004	2	2018-12-20 11:17:25.083+00	name	Gouda	Gouda, Netherlands
1795	1000004	3	2018-12-20 23:12:54.841+00	status	CONSTRUCTION	OPEN
1795	1000004	3	2018-12-20 23:12:54.841+00	dateOpened	\N	2018-12-21
1735	1000004	4	2018-12-21 01:41:23.417+00	locationId	gainesvillevirginiasupercharger	haymarketvirginiasupercharger
1815	1000006	1	2018-12-21 04:06:39.236+00	name	\N	Staunton, VA
220	1000006	2	2018-12-21 15:25:08.395+00	stallCount	8	10
220	1000006	2	2018-12-21 15:25:08.395+00	developerNotes	\N	Ten stalls now per: https://forum.supercharge.info/t/zevenaar-nl-has-now-10-stalls/322
1795	1000004	4	2018-12-21 21:34:21.808+00	locationId	\N	westpalmbeachfloridasupercharger
1815	1000004	2	2018-12-21 21:56:30.685+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-staunton-va.138499
1790	1000004	3	2018-12-23 06:25:32.372+00	status	CONSTRUCTION	OPEN
1790	1000004	3	2018-12-23 06:25:32.372+00	dateOpened	\N	2018-12-23
1790	1000004	4	2018-12-23 13:07:17.972+00	name	Macon - Tom Hill Sr Road, GA	Macon - Tom Hill Sr Rd, GA
1790	1000004	4	2018-12-23 13:07:17.972+00	address.street	265 Tom Hill Sr Road	265 Tom Hill Sr Rd
755	1000006	2	2018-12-23 18:52:54.772+00	stallCount	8	10
755	1000006	2	2018-12-23 18:52:54.772+00	developerNotes	\N	10 stalls confirmed. 2 on palette-chargers
1790	1000004	5	2018-12-23 21:49:43.954+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-macon-ga.30079/	https://teslamotorsclub.com/tmc/posts/3193193/
1710	1000004	4	2018-12-24 03:03:59.564+00	status	CONSTRUCTION	OPEN
1710	1000004	4	2018-12-24 03:03:59.564+00	dateOpened	\N	2018-12-24
1710	1000004	4	2018-12-24 03:03:59.564+00	powerKiloWatt	0	120
1820	1000006	1	2018-12-25 06:56:42.756+00	name	\N	Riverview, FL
1790	1000004	6	2018-12-25 12:08:10.365+00	locationId	\N	macongarivergatesupercharger
1710	1000004	5	2018-12-26 07:14:10.941+00	locationId	\N	walkermisupercharger
1740	1000004	4	2018-12-26 11:15:37.259+00	locationId	\N	oyersupercharger
1825	1000004	1	2018-12-29 16:51:02.979+00	name	\N	Salamanca, NY
1275	1000004	5	2018-12-30 16:03:35.858+00	address.street	Justins Way & Cross St.	Justins Way & Cross St
170	1000004	5	2018-12-30 16:06:35.388+00	address.street	1900 NW 6th St.	1900 NW 6th St
190	1000004	2	2018-12-30 16:07:32.248+00	address.street	16 South Main St.	16 South Main St
365	1000004	2	2018-12-30 16:10:54.674+00	address.street	701 S. Main St	701 S Main St
1205	1000004	6	2018-12-30 16:13:28.899+00	address.street	3101 Gandy Blvd.	3101 Gandy Blvd
1815	1000006	3	2019-01-14 14:52:06.868+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-staunton-va.138499	https://www.tesla.com/findus/location/supercharger/stauntonvasupercharger
1815	1000006	3	2019-01-14 14:52:06.868+00	developerNotes	The redditor's picture shows 8 stalls, but the satellite imagery for the parking lots show 10 parking spots there.  The name of the town is Staunton, ending with an "on", but it appears the Tesla Location ID has it typo'd to "stauntan". This may need to be changed if Tesla corrects this typo.	The redditor's picture shows 8 stalls, but the satellite imagery for the parking lots show 10 parking spots there.  The name of the town is Staunton, ending with an "on", but it appears the Tesla Location ID has it typo'd to "stauntan". This may need to be changed if Tesla corrects this typo. (I reported this to Tesla and they fixed it, so I've updated the URL)
1815	1000006	4	2019-01-14 14:52:38.21+00	locationId	stauntanvasupercharger	stauntonvasupercharger
1815	1000006	4	2019-01-14 14:52:38.21+00	urlDiscuss	https://www.tesla.com/findus/location/supercharger/stauntonvasupercharger	https://teslamotorsclub.com/tmc/threads/supercharger-staunton-va.138499
1045	1000004	8	2019-01-18 06:22:36.889+00	name	Newport Pagnell, UK	Newport Pagnell Southbound, UK
1045	1000004	8	2019-01-18 06:22:36.889+00	developerNotes	\N	Renamed to Southbound as per: https://teslamotorsclub.com/tmc/threads/tesla-announcement.140571/
980	1000004	9	2019-01-18 06:23:23.996+00	name	Chorley, UK	Charnock Richard Northbound, UK
980	1000004	9	2019-01-18 06:23:23.996+00	developerNotes	\N	2019-01-18: Renamed to Charnock Richard Northbound - as per https://teslamotorsclub.com/tmc/threads/tesla-announcement.140571/
835	1000006	8	2019-01-25 09:54:50.107+00	stallCount	6	10
835	1000006	8	2019-01-25 09:54:50.107+00	developerNotes	2016-06-29: correction via email stalls 4 to 6	2016-06-29: correction via email stalls 4 to 6\r\n2019-01-25: correction via Tracker-CCS stalls 6 to 10
1865	1000004	2	2019-02-13 05:22:16.209+00	status	PERMIT	CONSTRUCTION
1830	1000004	3	2019-02-14 13:00:38.022+00	status	CONSTRUCTION	OPEN
1845	1000004	1	2019-01-23 03:26:39.645+00	name	\N	Yancheng - Bihuali Resort, China
1785	1000004	5	2019-01-25 06:24:03.906+00	powerKiloWatt	0	120
1810	1000004	3	2019-01-25 22:09:01.405+00	stallCount	12	16
1810	1000004	3	2019-01-25 22:09:01.405+00	developerNotes	\N	Stall count changed to 16 as per https://teslamotorsclub.com/tmc/posts/3357350/
1850	1000004	1	2019-01-27 22:41:42.862+00	name	\N	Parkersburg, WV
1815	1000004	5	2019-01-31 00:56:01.182+00	status	CONSTRUCTION	OPEN
1815	1000004	5	2019-01-31 00:56:01.182+00	dateOpened	\N	2019-01-31
1530	1000006	8	2019-02-14 20:56:28.458+00	latitude	37.762773	37.76292
1530	1000006	8	2019-02-14 20:56:28.458+00	longitude	-121.963466	-121.963662
1595	1000004	5	2018-12-28 23:24:04.872+00	locationId	\N	paysonsupercharger
1595	1000004	5	2018-12-28 23:24:04.872+00	status	CONSTRUCTION	OPEN
1595	1000004	5	2018-12-28 23:24:04.872+00	dateOpened	\N	2018-12-29
1595	1000004	5	2018-12-28 23:24:04.872+00	powerKiloWatt	0	120
1825	1000004	2	2018-12-30 01:46:03.528+00	locationId	\N	salamancasupercharger
905	1000004	10	2018-12-30 15:50:47.719+00	address.street	29541 Stockdale Hy,	29541 Stockdale Hwy
1260	1000004	11	2018-12-30 16:05:33.982+00	address.street	4191 The Circle At North Hills St.	4191 The Circle At North Hills St
740	1000004	7	2018-12-30 16:06:01.227+00	address.street	171 Main St.	171 Main St
305	1000004	2	2018-12-30 16:33:06.363+00	address.street	4414 SW College Road	4414 SW College Rd
1360	1000004	6	2018-12-31 10:25:18.127+00	address.street	440 King George Rd	440 King Georges Rd
1825	1000004	3	2019-01-31 12:16:03.089+00	status	CONSTRUCTION	OPEN
1825	1000004	3	2019-01-31 12:16:03.089+00	dateOpened	\N	2019-01-31
1775	1000006	4	2019-02-05 22:21:35.681+00	status	CONSTRUCTION	OPEN
1775	1000006	4	2019-02-05 22:21:35.681+00	dateOpened	\N	2019-02-05
1775	1000006	4	2019-02-05 22:21:35.681+00	powerKiloWatt	0	120
115	1000004	8	2018-12-30 16:29:50.35+00	address.street	681 Leavesley Road	681 Leavesley Rd
1775	1000004	3	2018-12-30 16:30:40.861+00	address.street	1475 Tharp Road	1475 Tharp Rd
1830	1000004	1	2019-01-02 01:18:28.648+00	name	\N	Columbus. OH
1830	1000004	2	2019-01-02 16:14:05.25+00	name	Columbus. OH	Columbus, OH
1835	1000004	1	2019-01-08 06:15:40.388+00	name	\N	National Harbor - Fleet St, MD
1785	1000004	3	2019-01-09 10:50:04.037+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/anyone-know-where-the-new-mississauga-superchargers-will-be-located.100644	https://teslamotorsclub.com/tmc/threads/supercharger-mississauga-on.100644
1840	1000006	1	2019-01-16 15:00:57.943+00	name	\N	Lærdal, Norway
1785	1000004	4	2019-01-25 03:04:01.312+00	status	CONSTRUCTION	OPEN
1785	1000004	4	2019-01-25 03:04:01.312+00	dateOpened	\N	2019-01-25
1855	1000006	1	2019-01-28 21:27:58.11+00	name	\N	Orleans, MA
1860	1000004	1	2019-02-09 05:52:01.75+00	name	\N	Marlton, NJ
1860	1000004	2	2019-02-09 05:54:22.725+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-marlton-nj.142495/
1865	1000004	1	2019-02-11 22:21:03.24+00	name	\N	Motherwell, UK
785	1000006	13	2019-02-15 20:45:03.68+00	stallCount	30	44
1870	1000004	2	2019-02-20 22:35:12.565+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-saint-leonard-nb.143387
1830	1000004	3	2019-02-14 13:00:38.022+00	dateOpened	\N	2019-02-15
1820	1000006	2	2019-02-14 22:35:20.428+00	status	CONSTRUCTION	OPEN
1820	1000006	2	2019-02-14 22:35:20.428+00	dateOpened	\N	2019-02-14
1835	1000004	2	2019-02-16 03:26:50.501+00	name	National Harbor - Fleet St, MD	National Harbor - Potomac Passage, MD
1835	1000004	2	2019-02-16 03:26:50.501+00	status	CONSTRUCTION	OPEN
1835	1000004	2	2019-02-16 03:26:50.501+00	dateOpened	\N	2019-02-16
1835	1000004	2	2019-02-16 03:26:50.501+00	powerKiloWatt	0	72
1835	1000004	3	2019-02-20 02:47:40.192+00	locationId	\N	nationalharborsupercharger
1635	1000004	4	2019-02-20 08:41:30.617+00	status	CONSTRUCTION	OPEN
1635	1000004	4	2019-02-20 08:41:30.617+00	dateOpened	\N	2019-02-20
1635	1000004	5	2019-02-20 08:42:37.905+00	locationId	\N	santamonicacaliforniasupercharger
1870	1000004	1	2019-02-20 22:27:02.824+00	name	\N	Saint Leonard, NB
1705	1000004	2	2019-02-20 22:38:04.743+00	status	PERMIT	CONSTRUCTION
1820	1000004	3	2019-02-21 05:00:21.921+00	locationId	\N	riverviewsupercharger
1875	1000004	1	2019-02-28 09:29:51.228+00	name	\N	Chandler's Cross, UK
365	1000004	3	2019-03-02 22:55:22.08+00	stallCount	4	6
365	1000004	3	2019-03-02 22:55:22.08+00	developerNotes	\N	2019-03-03: Added extra 2 stalls.  Mixture of speeds (120 / 72)
1875	1000004	2	2019-03-03 21:14:23.937+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/3441786/
1850	1000004	2	2019-03-06 01:50:28.953+00	status	CONSTRUCTION	OPEN
1850	1000004	2	2019-03-06 01:50:28.953+00	dateOpened	\N	2019-03-06
1840	1000006	2	2019-03-07 12:20:56.551+00	stallCount	1	12
1880	1000006	1	2019-03-09 22:05:34.887+00	name	\N	Ettenheim, Germany
1880	1000006	2	2019-03-10 04:33:42.592+00	name	Ettenheim, Germany	Kappel-Grafenhausen, Germany
1880	1000006	3	2019-03-10 19:13:05.964+00	stallCount	8	10
1880	1000006	4	2019-03-10 21:07:36.716+00	latitude	48.281191	48.281347
1880	1000006	4	2019-03-10 21:07:36.716+00	longitude	7.777105	7.77755
1810	1000004	4	2019-03-13 14:57:53.08+00	status	CONSTRUCTION	OPEN
1810	1000004	4	2019-03-13 14:57:53.08+00	dateOpened	\N	2019-03-13
1665	1000006	3	2019-03-16 21:04:08.579+00	status	PERMIT	CONSTRUCTION
1810	1000004	6	2019-03-18 20:44:19.063+00	locationId	\N	goudasupercharger
1890	1000004	1	2019-03-19 10:47:27.094+00	name	\N	Kissimmee, FL
1880	1000006	5	2019-03-29 05:26:35.609+00	status	CONSTRUCTION	OPEN
1880	1000006	5	2019-03-29 05:26:35.609+00	dateOpened	\N	2019-09-28
1880	1000006	5	2019-03-29 05:26:35.609+00	powerKiloWatt	0	120
1880	1000006	6	2019-03-29 05:26:41.544+00	dateOpened	2019-09-28	2019-03-28
1910	1000004	3	2019-03-30 23:41:22.709+00	name	Ury, France	Fontainebleau, France
1620	1000006	3	2019-04-02 18:11:36.399+00	powerKiloWatt	0	120
1920	1000004	1	2019-04-03 05:32:44.588+00	name	\N	Wuxi - Hualuxe Hotel, China
1910	1000004	4	2019-04-03 10:58:48.094+00	locationId	\N	fontainebleausupercharger
1810	1000004	5	2019-03-13 15:53:42.035+00	stallCount	16	12
1810	1000004	5	2019-03-13 15:53:42.035+00	developerNotes	Stall count changed to 16 as per https://teslamotorsclub.com/tmc/posts/3357350/	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3474076/
1620	1000006	2	2019-03-22 20:30:22.085+00	status	CONSTRUCTION	OPEN
1620	1000006	2	2019-03-22 20:30:22.085+00	dateOpened	\N	2019-03-22
1880	1000004	7	2019-04-02 00:16:02.806+00	locationId	\N	kappelgrafenhausensupercharger
1880	1000004	7	2019-04-02 00:16:02.806+00	developerNotes	\N	Note - Tesla site says 20 stalls?
1915	1000004	1	2019-04-02 03:56:07.355+00	name	\N	Tianjin - No.1 Binhai Hot Spring Hotel, China
885	1000004	3	2019-04-03 07:36:05.586+00	stallCount	8	12
885	1000004	3	2019-04-03 07:36:05.586+00	developerNotes	\N	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3530338/
1725	1000006	2	2019-04-05 22:55:47.88+00	status	PERMIT	CONSTRUCTION
1665	1000006	2	2019-03-14 04:15:06.383+00	latitude	40.654095	40.655361
1665	1000006	2	2019-03-14 04:15:06.383+00	longitude	-74.530451	-74.529919
1885	1000004	1	2019-03-14 05:00:09.701+00	name	\N	Yantai - HuaAn International Hotel, China
1895	1000004	1	2019-03-20 20:55:29.506+00	name	\N	Zhaotong - Jiangshan Hotel, China
1905	1000006	1	2019-03-27 04:34:58.679+00	name	\N	Bismarck, ND
1900	1000004	1	2019-03-26 00:51:06.481+00	name	\N	Guangzhou - Anhuahui Mall, China
1910	1000004	1	2019-03-30 20:20:38.088+00	name	\N	Ury
1910	1000004	2	2019-03-30 20:21:31.197+00	name	Ury	Ury, France
1890	1000004	2	2019-04-07 02:12:32.005+00	name	Kissimmee, FL	Kissimmee (West), FL
1890	1000004	3	2019-04-07 02:13:51.024+00	name	Kissimmee (West), FL	Kissimmee (Four Corners), FL
1890	1000004	4	2019-04-07 02:14:56.963+00	name	Kissimmee (Four Corners), FL	Four Corners, FL
1925	1000004	1	2019-04-09 05:48:51.735+00	name	\N	Cape May, NJ
1725	1000006	3	2019-04-09 19:39:59.73+00	latitude	36.227056	36.226876
1725	1000006	3	2019-04-09 19:39:59.73+00	longitude	-121.761073	-121.761506
1725	1000006	4	2019-04-09 19:40:04.689+00	elevationMeters	331	324
1930	1000006	1	2019-04-11 23:41:55.406+00	name	\N	Swartz Creek, MI
1930	1000004	2	2019-04-13 02:48:06.587+00	stallCount	8	10
1930	1000006	3	2019-04-13 06:20:40.027+00	status	PERMIT	CONSTRUCTION
1935	1000006	1	2019-04-15 08:10:59.046+00	name	\N	Mealhada, Portugal
1930	1000006	4	2019-04-15 13:56:06.87+00	latitude	42.96693	42.96744
1930	1000006	4	2019-04-15 13:56:06.87+00	longitude	-83.827332	-83.828794
1925	1000006	2	2019-04-18 05:24:51.3+00	stallCount	10	12
1935	1000006	2	2019-04-19 20:51:00.445+00	stallCount	1	12
1860	1000004	4	2019-04-26 21:51:15.608+00	stallCount	8	12
1465	1000006	9	2019-05-02 11:41:04.784+00	stallCount	20	26
1465	1000006	9	2019-05-02 11:41:04.784+00	developerNotes	\N	Email saying is now 26 stalls.
1730	1000006	4	2019-05-03 22:21:43.246+00	status	PERMIT	CONSTRUCTION
105	1000006	2	2019-05-05 15:38:48.216+00	powerKiloWatt	0	150
120	1000006	6	2019-05-05 15:39:14.541+00	powerKiloWatt	0	150
1615	1000006	6	2019-05-05 16:12:53.969+00	powerKiloWatt	120	150
975	1000006	7	2019-05-05 17:13:51.744+00	powerKiloWatt	0	150
350	1000006	2	2019-05-05 17:16:16.86+00	powerKiloWatt	0	150
845	1000006	8	2019-05-05 17:17:56.001+00	powerKiloWatt	0	150
530	1000006	2	2019-05-05 17:18:25.688+00	powerKiloWatt	0	150
1940	1000004	1	2019-04-19 08:34:50.489+00	name	\N	Naarden, NL
245	1000004	2	2019-04-25 09:59:13.007+00	dateOpened	2014-07-19	2013-08-13
245	1000004	2	2019-04-25 09:59:13.007+00	powerKiloWatt	0	120
245	1000004	2	2019-04-25 09:59:13.007+00	developerNotes	\N	Open date changed from 1/15/16 to 8/13/13 based on https://teslamotorsclub.com/tmc/posts/3581440/
1945	1000004	1	2019-04-26 19:40:33.201+00	name	\N	Vicenza, Italy
1520	1000006	6	2019-04-30 23:42:11.183+00	latitude	37.434445	37.43453580769586
1520	1000006	6	2019-04-30 23:42:11.183+00	longitude	-121.891122	-121.891387403
1520	1000006	7	2019-05-05 14:46:10.043+00	powerKiloWatt	120	150
1530	1000006	9	2019-05-05 14:47:39.816+00	powerKiloWatt	120	150
1180	1000006	4	2019-05-05 23:02:22.003+00	powerKiloWatt	0	150
1720	1000006	4	2019-05-05 23:03:11.613+00	powerKiloWatt	120	150
1940	1000004	2	2019-04-20 12:16:32.512+00	name	Naarden, NL	Naarden, Netherlands
1950	1000004	1	2019-04-28 22:07:00.983+00	name	\N	Lafayette, LA
1950	1000004	2	2019-04-28 22:07:59.828+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-lafayette-la.150758/
1620	1000006	4	2019-05-01 18:39:58.794+00	powerKiloWatt	120	150
115	1000006	9	2019-05-05 14:48:44.663+00	powerKiloWatt	0	150
905	1000006	11	2019-05-05 14:49:16.311+00	powerKiloWatt	0	150
1380	1000006	4	2019-05-05 14:53:56.426+00	powerKiloWatt	120	150
195	1000006	3	2019-05-05 15:02:27.922+00	powerKiloWatt	0	150
485	1000006	3	2019-05-05 15:02:53.518+00	powerKiloWatt	0	150
480	1000006	2	2019-05-05 15:05:50.846+00	powerKiloWatt	0	150
520	1000006	2	2019-05-05 15:05:59.682+00	powerKiloWatt	0	150
250	1000006	5	2019-05-05 15:06:48.618+00	powerKiloWatt	0	150
365	1000006	4	2019-05-05 15:50:48.784+00	powerKiloWatt	0	150
1775	1000006	5	2019-05-05 15:51:03.18+00	powerKiloWatt	120	150
595	1000006	8	2019-05-05 15:51:24.939+00	powerKiloWatt	0	150
900	1000006	7	2019-05-05 15:51:49.237+00	powerKiloWatt	0	150
1595	1000006	6	2019-05-05 16:13:57.71+00	powerKiloWatt	120	150
985	1000006	10	2019-05-05 16:20:34.739+00	powerKiloWatt	120	150
965	1000006	8	2019-05-05 16:21:09.189+00	powerKiloWatt	0	150
185	1000006	4	2019-05-05 16:21:19.258+00	powerKiloWatt	0	150
1160	1000006	5	2019-05-05 16:33:19.642+00	powerKiloWatt	0	150
1330	1000006	12	2019-05-05 16:34:19.642+00	powerKiloWatt	0	150
1110	1000006	6	2019-05-05 19:22:04.717+00	powerKiloWatt	0	150
225	1000004	3	2019-04-25 09:57:24.129+00	dateOpened	2016-01-15	2013-08-13
225	1000004	3	2019-04-25 09:57:24.129+00	powerKiloWatt	0	120
225	1000004	3	2019-04-25 09:57:24.129+00	developerNotes	\N	Open date changed from 1/15/16 to 8/13/13 based on https://teslamotorsclub.com/tmc/posts/3581440/
1860	1000004	3	2019-04-26 19:30:10.345+00	status	CONSTRUCTION	OPEN
1860	1000004	3	2019-04-26 19:30:10.345+00	dateOpened	\N	2019-04-26
1840	1000006	3	2019-04-26 23:19:16.036+00	status	PERMIT	CONSTRUCTION
1945	1000004	2	2019-05-01 18:21:12.981+00	locationId	vicenzasupercharger	torridiquartesolosupercharger
1945	1000004	2	2019-05-01 18:21:12.981+00	name	Vicenza, Italy	Torri di Quartesolo, Italy
1955	1000004	1	2019-05-05 02:10:44.104+00	name	\N	Ovens, VIC
170	1000006	6	2019-05-05 14:52:56.31+00	powerKiloWatt	0	150
110	1000006	3	2019-05-05 15:03:32.566+00	powerKiloWatt	0	150
700	1000006	3	2019-05-05 15:50:11.139+00	powerKiloWatt	0	150
740	1000006	8	2019-05-05 16:02:50.048+00	powerKiloWatt	0	150
800	1000006	6	2019-05-05 16:06:24.781+00	powerKiloWatt	0	150
650	1000006	3	2019-05-05 16:18:45.22+00	powerKiloWatt	0	150
565	1000006	2	2019-05-05 16:23:49.145+00	powerKiloWatt	0	150
570	1000006	2	2019-05-05 16:25:30.482+00	powerKiloWatt	0	150
340	1000006	2	2019-05-05 16:34:29.419+00	powerKiloWatt	0	150
430	1000006	2	2019-05-05 16:57:04.444+00	powerKiloWatt	0	150
375	1000006	3	2019-05-05 16:57:25.962+00	powerKiloWatt	0	150
1210	1000006	10	2019-05-05 16:57:33.941+00	powerKiloWatt	0	150
610	1000006	2	2019-05-05 16:58:20.304+00	powerKiloWatt	0	150
910	1000006	8	2019-05-05 16:59:23.898+00	powerKiloWatt	0	150
670	1000006	2	2019-05-05 17:01:00.667+00	powerKiloWatt	0	150
560	1000006	2	2019-05-05 17:31:26.651+00	powerKiloWatt	0	150
645	1000006	2	2019-05-05 19:19:00.425+00	powerKiloWatt	0	150
1235	1000006	8	2019-05-06 04:13:50.57+00	powerKiloWatt	120	150
1940	1000006	3	2019-05-07 05:36:09.831+00	stallCount	24	32
1940	1000006	4	2019-05-07 05:37:12.811+00	developerNotes	At NH Hotel	At NH Hotel\r\n32 stalls accoding to forum post: https://forum.supercharge.info/t/naarden-update/558
1625	1000006	2	2019-05-07 17:26:23.944+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-enfield-ns.116574/	https://teslamotorsclub.com/tmc/threads/where-do-you-think-enfield-supercharger-will-be.117029/
1625	1000006	2	2019-05-07 17:26:23.944+00	developerNotes	\N	Previous TMC thread was 404ing, updated to the one with active discussion. Looks like it will soon be under construction.
1625	1000004	3	2019-05-07 18:08:55.102+00	latitude	44.882788	44.9267179
1625	1000004	3	2019-05-07 18:08:55.102+00	longitude	-63.520383	-63.5363646
1625	1000004	3	2019-05-07 18:08:55.102+00	elevationMeters	136	20
1625	1000004	4	2019-05-07 18:36:24.443+00	powerKiloWatt	0	120
1625	1000004	4	2019-05-07 18:36:24.443+00	address.street	1 Bell Blvd	6757 Hwy 2
1625	1000004	4	2019-05-07 18:36:24.443+00	address.zip	B2T 1K2	B2T 1C8
1840	1000006	4	2019-05-07 20:37:12.135+00	address.street	Haabakken Kro, Håbakken 1	Haabakken Kro, Håbakken 1, Opening date estimated at 22nd of May 2019
1935	1000006	3	2019-05-07 20:46:06.515+00	developerNotes	\N	Google: R. São Domingos 20, 3050-983 Mealhada, Portugal
1935	1000006	3	2019-05-07 20:46:06.515+00	address.street	Portagem Bairrada Center-Hotelaria, Lda.	Portagem Bairrada Center-Hotelaria, Lda. Estimated opening date: 27th of June 2019
1625	1000004	5	2019-05-07 22:24:41.813+00	status	PERMIT	CONSTRUCTION
1625	1000004	6	2019-05-07 22:26:49.272+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/where-do-you-think-enfield-supercharger-will-be.117029/	https://teslamotorsclub.com/tmc/threads/where-do-you-think-enfield-supercharger-will-be.117029/page-5#post-3635483
1725	1000006	5	2019-05-08 03:13:59.96+00	powerKiloWatt	0	72
1960	1000004	1	2019-05-08 13:20:45.117+00	name	\N	Dorno Est, Italy
1755	1000006	8	2019-06-16 20:33:11.859+00	stallCount	8	18
1945	1000006	3	2019-05-08 18:09:53.357+00	latitude	45.5095834	45.508412
1945	1000006	3	2019-05-08 18:09:53.357+00	longitude	11.6254331	11.626038
1945	1000006	3	2019-05-08 18:09:53.357+00	urlDiscuss	https://forum.supercharge.info/t/supercharger-vicenza-italy/536	https://www.teslari.it/forum/superchargers/supercharger-di-vicenza/paged/4/#post-51067
1945	1000006	3	2019-05-08 18:09:53.357+00	stallCount	1	10
1945	1000006	4	2019-05-08 18:11:56.276+00	address.street	Via Pola, 20,	Via Brescia, 53-63
1945	1000004	6	2019-05-08 18:49:53.893+00	status	PERMIT	CONSTRUCTION
1960	1000004	4	2019-05-09 04:43:04.262+00	urlDiscuss	http.null	\N
1965	1000004	4	2019-05-13 12:22:37.934+00	stallCount	1	8
1965	1000004	4	2019-05-13 12:22:37.934+00	developerNotes	Yet unknown number of stalls. Awaiting photos... unknown power.	120 kW - 8 stalls (only 6 up to now)
1960	1000006	2	2019-05-08 15:52:34.843+00	address.street	Autostrada dei Giovi, 27020	Autostrada A7 Genova-Milano, Dorno Autogrill area
1945	1000006	5	2019-05-08 18:12:19.664+00	locationId	torridiquartesolosupercharger	vicenzasupercharger
1960	1000004	3	2019-05-09 00:08:32.125+00	urlDiscuss	\N	http.null
1965	1000004	1	2019-05-11 15:50:03.79+00	name	\N	Robbinsville, NJ
1965	1000004	2	2019-05-11 15:50:31.224+00	developerNotes	Yet unknown number of stalls. Awaiting photos...	Yet unknown number of stalls. Awaiting photos... unknown power.
225	1000006	4	2019-05-12 21:31:17.868+00	stallCount	10	12
1570	1000006	5	2019-05-12 21:37:27.319+00	latitude	58.632228	58.63192047285978
1570	1000006	5	2019-05-12 21:37:27.319+00	longitude	6.078935	6.07776761054992
1325	1000006	7	2019-05-12 21:25:00.885+00	stallCount	8	10
1340	1000004	4	2019-05-15 23:18:09.372+00	latitude	17.551576	17.51465
1340	1000004	4	2019-05-15 23:18:09.372+00	longitude	-99.500651	-99.482779
1340	1000004	4	2019-05-15 23:18:09.372+00	elevationMeters	1265	1187
1340	1000004	4	2019-05-15 23:18:09.372+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/3660168/
1340	1000006	5	2019-05-16 11:02:02.271+00	address.street	Av. Juan N. Alvarez Sur	Lic. René Juárez Cisneros 130
1340	1000006	5	2019-05-16 11:02:02.271+00	address.city	Centro	Chilpancingo de los Bravo
1340	1000006	6	2019-05-16 11:03:14.642+00	address.street	Lic. René Juárez Cisneros 130	Galerías Chilpancingo; Lic. René Juárez Cisneros 130
1340	1000006	7	2019-05-16 11:03:54.127+00	address.street	Galerías Chilpancingo; Lic. René Juárez Cisneros 130	Lic. René Juárez Cisneros 130
1970	1000004	1	2019-05-20 04:02:03.513+00	name	\N	Copiague, NY
1975	1000004	1	2019-05-21 18:15:37.975+00	name	\N	Stamford - High Ridge Rd, CT
1975	1000004	2	2019-05-21 18:59:32.028+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-stamford-ct.144810	https://teslamotorsclub.com/tmc/threads/supercharger-stamford-ct.144810/page-2#post-3677848
1975	1000004	3	2019-05-21 21:40:06.446+00	name	Stamford - High Ridge Rd, CT	North Stamford, CT
1975	1000004	4	2019-05-21 21:42:22.936+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-stamford-ct.144810/page-2#post-3677848	https://teslamotorsclub.com/tmc/threads/supercharger-north-stamford-ct.153482/
1975	1000004	5	2019-05-22 13:52:47.702+00	name	North Stamford, CT	Stamford - High Ridge Rd, CT
1810	1000006	7	2019-05-25 16:35:53.377+00	stallCount	12	16
1980	1000004	3	2019-06-05 22:22:05.823+00	locationId	\N	sflettermandrsupercharger
1980	1000004	1	2019-05-23 05:56:58.536+00	name	\N	San Francisco - Letterman Drive, CA
1980	1000004	2	2019-05-23 06:00:22.62+00	address.street	Trudy St	Truby St
1725	1000004	6	2019-05-25 02:54:20.19+00	status	CONSTRUCTION	OPEN
1725	1000004	6	2019-05-25 02:54:20.19+00	dateOpened	\N	2019-05-24
590	1000004	2	2019-05-27 00:13:50.154+00	name	Graz, Austria	Graz (SC), Austria
1985	1000004	1	2019-05-27 10:56:43.501+00	name	\N	Colchester, UK
1840	1000006	5	2019-05-30 15:37:19.406+00	status	CONSTRUCTION	OPEN
1840	1000006	5	2019-05-30 15:37:19.406+00	dateOpened	\N	2019-05-30
1840	1000006	5	2019-05-30 15:37:19.406+00	urlDiscuss	https://elbilforum.no/forum/index.php?topic=7959.3585	https://elbilforum.no/index.php?topic=15598.1080
1840	1000006	5	2019-05-30 15:37:19.406+00	address.street	Haabakken Kro, Håbakken 1, Opening date estimated at 22nd of May 2019	Haabakken Kro, Håbakken 1
1975	1000004	6	2019-05-22 13:53:49.901+00	name	Stamford - High Ridge Rd, CT	Stamford - High Ridge, CT
1975	1000004	7	2019-05-22 13:54:34.467+00	name	Stamford - High Ridge, CT	Stamford - High Ridge Rd, CT
1810	1000006	7	2019-05-25 16:35:53.377+00	developerNotes	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3474076/	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3474076/\r\nStall count changed to 16 as per:\r\nhttps://forum.supercharge.info/t/gouda-the-netherlands-upgrade/591
1810	1000006	7	2019-05-25 16:35:53.377+00	address.zip	\N	2803 PW
270	1000004	3	2019-05-27 00:19:48.337+00	name	Tilburg, Netherlands	Tilburg (SC), Netherlands
540	1000004	2	2019-05-27 00:07:11.884+00	name	Aarhus, Denmark	Aarhus (SC), Denmark
365	1000004	5	2019-06-01 05:30:22.167+00	developerNotes	2019-03-03: Added extra 2 stalls.  Mixture of speeds (120 / 72)	2019-03-03: Added extra 2 stalls.  Mixture of speeds (120 / 72)\r\n2019-06-01: Another 8 permanent stalls in progress: https://teslamotorsclub.com/tmc/posts/3710250/
1990	1000004	1	2019-06-01 21:20:23.892+00	name	\N	North Bay, ON
1295	1000006	5	2019-06-04 06:23:41.474+00	powerKiloWatt	120	150
1995	1000004	1	2019-06-08 00:14:16.325+00	name	\N	Mt Airy, NC
1995	1000004	2	2019-06-08 00:14:25.223+00	address.countryId	116	100
2000	1000004	1	2019-06-13 13:08:19.358+00	name	\N	Malibu - Whole Foods and the Park, CA
2000	1000004	2	2019-06-13 16:54:13.676+00	name	Malibu - Whole Foods and the Park, CA	Malibu, CA
2005	1000006	1	2019-06-15 06:15:56.986+00	name	\N	Maple Shade, NJ
1755	1000006	8	2019-06-16 20:33:11.859+00	developerNotes	2018-12-20: Live on Tesla site, only 8 of 18.	\N
1840	1000004	6	2019-06-17 22:00:10.778+00	locationId	\N	laedalnosupercharger
385	1000006	4	2019-06-18 14:14:31.714+00	powerKiloWatt	120	150
1790	1000006	7	2019-06-18 14:17:52.51+00	powerKiloWatt	120	150
2010	1000004	1	2019-06-18 18:06:41.54+00	name	\N	Taimao, Taiwan
2010	1000004	2	2019-06-18 18:09:02.384+00	urlDiscuss	\N	https://www.plugshare.com/location/194574
1705	1000004	3	2019-06-19 06:37:24.462+00	status	CONSTRUCTION	OPEN
1705	1000004	3	2019-06-19 06:37:24.462+00	dateOpened	\N	2019-06-19
1705	1000004	3	2019-06-19 06:37:24.462+00	powerKiloWatt	0	150
1995	1000004	3	2019-06-22 07:03:38.238+00	status	CONSTRUCTION	OPEN
1995	1000004	3	2019-06-22 07:03:38.238+00	dateOpened	\N	2019-06-22
1855	1000004	2	2019-06-22 10:33:14.067+00	latitude	41.794714	41.796653
1855	1000004	2	2019-06-22 10:33:14.067+00	longitude	-69.984444	-69.985961
1855	1000004	2	2019-06-22 10:33:14.067+00	elevationMeters	2	1
1855	1000004	2	2019-06-22 10:33:14.067+00	stallCount	8	12
1855	1000004	2	2019-06-22 10:33:14.067+00	powerKiloWatt	0	150
2015	1000004	1	2019-06-22 13:29:14.23+00	name	\N	Terrebonne, QC
2015	1000004	2	2019-06-22 13:30:11.283+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-charlemagne-qc.153255/page-2#post-3773676	https://teslamotorsclub.com/tmc/threads/supercharger-charlemagne-qc.153255/
1560	1000004	2	2019-06-23 03:58:23.142+00	locationId	\N	fargosupercharger
1560	1000004	2	2019-06-23 03:58:23.142+00	latitude	46.861312	46.843188
1560	1000004	2	2019-06-23 03:58:23.142+00	longitude	-96.847693	-96.882258
1560	1000004	2	2019-06-23 03:58:23.142+00	elevationMeters	275	276
1560	1000004	2	2019-06-23 03:58:23.142+00	developerNotes	\N	Old permit: 3902 13th Ave S
1560	1000004	2	2019-06-23 03:58:23.142+00	address.street	3902 13th Ave S	5680 23rd Ave S
1560	1000004	2	2019-06-23 03:58:23.142+00	address.zip	58103	58104
2010	1000004	3	2019-06-25 13:18:33.832+00	status	CONSTRUCTION	OPEN
2010	1000004	3	2019-06-25 13:18:33.832+00	dateOpened	\N	2019-06-25
260	1000004	3	2019-06-26 11:29:49.971+00	stallCount	12	20
2020	1000004	1	2019-06-28 13:38:53.807+00	name	\N	Hamyang, South Korea
2010	1000004	4	2019-06-28 13:48:36.54+00	locationId	taimaosupercharger	taoyuantaimaisupercharger
2010	1000004	4	2019-06-28 13:48:36.54+00	latitude	25.049024097945615	25.053926
2010	1000004	4	2019-06-28 13:48:36.54+00	longitude	121.29239916801	121.287869
2010	1000004	4	2019-06-28 13:48:36.54+00	elevationMeters	69	62
2010	1000004	4	2019-06-28 13:48:36.54+00	urlDiscuss	https://www.plugshare.com/location/194574	https://teslamotorsclub.com/tmc/forums/taiwan.254/
2010	1000004	4	2019-06-28 13:48:36.54+00	powerKiloWatt	150	120
2025	1000004	1	2019-06-30 16:35:42.988+00	name	\N	Maple Creek, SK
1935	1000006	4	2019-07-01 19:54:37.822+00	address.street	Portagem Bairrada Center-Hotelaria, Lda. Estimated opening date: 27th of June 2019	Portagem Bairrada Center-Hotelaria, R. São Domingos 20
1935	1000006	4	2019-07-01 19:54:37.822+00	address.city	Rua São Domingos	Mealhada
1935	1000006	4	2019-07-01 19:54:37.822+00	address.zip	\N	3050-983
1935	1000006	5	2019-07-01 19:57:33.102+00	address.street	Portagem Bairrada Center-Hotelaria, R. São Domingos 20	Tesla Supercharger, R. São Domingos 20
1935	1000006	6	2019-07-01 19:59:00.547+00	developerNotes	Google: R. São Domingos 20, 3050-983 Mealhada, Portugal	\N
1935	1000006	6	2019-07-01 19:59:00.547+00	address.street	Tesla Supercharger, R. São Domingos 20	Portagem Bairrada Center-Hotelaria, R. São Domingos 20
2030	1000004	1	2019-07-02 02:15:28.492+00	name	\N	Lake Geneva, WI
2030	1000004	2	2019-07-02 02:19:40.76+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-lake-geneva-wi.158183/
1955	1000004	2	2019-07-02 04:57:29.82+00	status	CONSTRUCTION	OPEN
1955	1000004	2	2019-07-02 04:57:29.82+00	dateOpened	\N	2019-07-02
1955	1000004	2	2019-07-02 04:57:29.82+00	powerKiloWatt	0	120
1855	1000004	3	2019-07-05 04:51:15.019+00	status	PERMIT	CONSTRUCTION
1625	1000004	7	2019-07-05 04:52:16.442+00	status	CONSTRUCTION	OPEN
1625	1000004	7	2019-07-05 04:52:16.442+00	dateOpened	\N	2019-07-05
1625	1000004	7	2019-07-05 04:52:16.442+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/where-do-you-think-enfield-supercharger-will-be.117029/page-5#post-3635483	https://teslamotorsclub.com/tmc/threads/supercharger-enfield-ns.117029
2035	1000004	1	2019-07-07 00:04:12.12+00	name	\N	Fairfield, CT
1965	1000004	7	2019-07-14 01:28:47.817+00	locationId	robbinsvillesupercharger	\N
2035	1000004	2	2019-07-07 04:02:53.59+00	name	Fairfield, CT	Fairfield - Northbound, CT
2015	1000004	3	2019-07-07 07:55:16.267+00	locationId	terrbonnesupercharger	\N
2015	1000004	3	2019-07-07 07:55:16.267+00	address.state	Québec	QC
1965	1000004	5	2019-07-08 09:51:04.403+00	address.zip	\N	08691
665	1000004	8	2019-07-08 21:00:30.143+00	status	OPEN	CLOSED_TEMP
665	1000004	8	2019-07-08 21:00:30.143+00	dateOpened	2016-12-19	\N
2040	1000006	1	2019-07-08 23:52:31.253+00	name	\N	Williams, CA
2040	1000006	2	2019-07-09 00:03:32.068+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-williams-permit-approved-construction-not-yet-started.158875/
2045	1000006	1	2019-07-11 19:09:05.101+00	name	\N	Novato, CA
2045	1000006	2	2019-07-11 19:14:50.09+00	latitude	38.088912	38.08944
2045	1000006	2	2019-07-11 19:14:50.09+00	longitude	-122.553138	-122.551561
2045	1000006	3	2019-07-11 19:19:38.439+00	latitude	38.08944	38.088876
2045	1000006	3	2019-07-11 19:19:38.439+00	longitude	-122.551561	-122.553211
2045	1000006	4	2019-07-11 19:33:13.869+00	stallCount	12	20
1665	1000004	4	2019-07-13 23:58:02.584+00	status	CONSTRUCTION	OPEN
1665	1000004	4	2019-07-13 23:58:02.584+00	dateOpened	\N	2019-07-14
1665	1000004	4	2019-07-13 23:58:02.584+00	powerKiloWatt	0	150
1965	1000004	6	2019-07-14 00:15:42.914+00	status	CONSTRUCTION	OPEN
1965	1000004	6	2019-07-14 00:15:42.914+00	dateOpened	\N	2019-07-13
1965	1000004	6	2019-07-14 00:15:42.914+00	powerKiloWatt	120	150
2035	1000006	3	2019-07-15 01:31:33.737+00	latitude	41.146281	41.146266
2035	1000006	3	2019-07-15 01:31:33.737+00	longitude	-73.256729	-73.257157
1800	1000004	3	2019-07-16 02:27:56.651+00	status	CONSTRUCTION	OPEN
1800	1000004	3	2019-07-16 02:27:56.651+00	dateOpened	\N	2019-07-16
1800	1000004	3	2019-07-16 02:27:56.651+00	powerKiloWatt	120	150
2050	1000004	1	2019-07-18 00:29:53.459+00	name	\N	Lynchburg, VA
2065	1000004	1	2019-07-26 12:29:55.791+00	name	\N	Irvine - Main St, CA
1925	1000004	3	2019-07-27 01:55:23.72+00	status	CONSTRUCTION	OPEN
1925	1000004	3	2019-07-27 01:55:23.72+00	dateOpened	\N	2019-07-26
2055	1000004	1	2019-07-18 19:21:59.717+00	name	\N	Grand Forks, ND
1555	1000004	3	2019-07-21 13:26:57.662+00	developerNotes	\N	Bumping up. Construction might be starting.
2060	1000004	1	2019-07-22 01:16:39.235+00	name	\N	Williamsport, PA
1555	1000004	4	2019-07-22 01:17:46.035+00	status	PERMIT	CONSTRUCTION
1555	1000004	4	2019-07-22 01:17:46.035+00	urlDiscuss	https://teslamotorsclub.com/tmc/posts/2640352/	https://teslamotorsclub.com/tmc/threads/portage-la-prairie-mb.160257/
1995	1000004	4	2019-07-23 06:32:15.191+00	locationId	\N	mtairyncsupercharger
1925	1000006	5	2019-07-29 16:59:19.576+00	name	Cape May, NJ	Cape May Court House, NJ
330	1000006	2	2019-07-17 21:14:19.489+00	stallCount	8	12
2065	1000004	2	2019-07-26 13:02:16.074+00	locationId	\N	irvinesupercharger
1925	1000004	4	2019-07-27 12:30:01.59+00	powerKiloWatt	0	150
2070	1000004	1	2019-08-01 21:10:54.083+00	name	\N	Newport News, VA
1730	1000004	5	2019-08-02 18:18:24.028+00	status	CONSTRUCTION	OPEN
1730	1000004	5	2019-08-02 18:18:24.028+00	dateOpened	\N	2019-08-02
1240	1000004	4	2019-08-06 02:31:59.06+00	powerKiloWatt	0	150
665	1000004	10	2019-08-06 11:29:53.891+00	dateOpened	2019-07-30	2016-12-19
2040	1000004	3	2019-08-06 20:32:44.262+00	status	PERMIT	CONSTRUCTION
665	1000004	9	2019-07-30 11:26:30.686+00	status	CLOSED_TEMP	OPEN
665	1000004	9	2019-07-30 11:26:30.686+00	dateOpened	\N	2019-07-30
725	1000006	2	2019-07-30 20:29:34.987+00	powerKiloWatt	0	150
1390	1000006	8	2019-07-30 20:29:54.215+00	powerKiloWatt	120	150
2070	1000004	2	2019-08-02 00:25:16.289+00	locationId	newportnewsvirginiasupercharger	newportnewsvasupercharger
1710	1000006	6	2019-08-02 17:47:01.94+00	powerKiloWatt	120	150
805	1000006	8	2019-08-02 19:16:58.457+00	stallCount	4	6
805	1000006	8	2019-08-02 19:16:58.457+00	developerNotes	2016-05-01: stall count 6 to 4	2016-05-01: stall count 6 to 4\r\n2019-08-02: stall count 4 to 6
1730	1000004	6	2019-08-03 02:52:13.948+00	powerKiloWatt	0	150
2070	1000004	3	2019-08-03 14:06:41.216+00	stallCount	6	12
355	1000004	4	2019-08-07 15:36:52.163+00	powerKiloWatt	0	150
625	1000004	4	2019-08-07 15:42:36.966+00	powerKiloWatt	0	150
2030	1000004	3	2019-08-07 19:31:16.803+00	powerKiloWatt	0	150
1890	1000006	5	2019-08-09 06:51:56.59+00	status	PERMIT	CONSTRUCTION
1975	1000004	8	2019-08-09 16:44:42.61+00	status	CONSTRUCTION	OPEN
1975	1000004	8	2019-08-09 16:44:42.61+00	dateOpened	\N	2019-08-09
155	1000006	2	2019-08-12 00:12:09.779+00	powerKiloWatt	0	120
2075	1000006	1	2019-08-15 16:35:16.07+00	name	\N	Elizabeth, NJ
185	1000004	5	2019-08-16 02:37:59.174+00	dateOpened	2013-08-20	2013-08-17
185	1000004	5	2019-08-16 02:37:59.174+00	developerNotes	\N	Open date corrected per this post https://teslamotorsclub.com/tmc/posts/414881/
1975	1000004	9	2019-08-20 16:14:28.292+00	locationId	\N	northstamfordsupercharger
1975	1000004	9	2019-08-20 16:14:28.292+00	name	Stamford - High Ridge Rd, CT	North Stamford, CT
2080	1000006	1	2019-08-21 10:04:00.038+00	name	\N	Salamanca, Spain
2080	1000004	2	2019-08-21 11:36:34.591+00	locationId	\N	salamancanysupercharger
2080	1000004	2	2019-08-21 11:36:34.591+00	address.state	Salamanca	\N
680	1000006	2	2019-09-05 15:55:54.664+00	powerKiloWatt	0	130
1880	1000006	8	2019-08-29 05:37:57.424+00	powerKiloWatt	120	150
420	1000006	2	2019-08-29 05:38:33.281+00	powerKiloWatt	0	150
1565	1000004	3	2019-08-29 21:33:49.329+00	locationId	\N	dickinsonndsupercharger
665	1000006	11	2019-08-30 16:15:12.304+00	powerKiloWatt	0	150
1245	1000006	6	2019-08-30 16:23:39.955+00	powerKiloWatt	120	150
2090	1000004	1	2019-09-02 01:26:22.298+00	name	\N	Jackman, ME
2090	1000004	2	2019-09-02 01:32:27.82+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-jackman-me.164788/
1910	1000006	5	2019-09-02 17:18:10.838+00	powerKiloWatt	120	150
2095	1000004	1	2019-09-04 14:28:41.597+00	name	\N	Richmond, BC
1670	1000006	6	2019-09-04 15:49:27.299+00	powerKiloWatt	0	150
455	1000006	3	2019-09-05 15:56:12.262+00	powerKiloWatt	0	130
2085	1000004	1	2019-08-28 06:53:02.791+00	name	\N	Fort Lauderdale, FL
300	1000006	4	2019-08-29 05:35:31.968+00	powerKiloWatt	0	125
1550	1000006	7	2019-08-29 05:36:08.001+00	powerKiloWatt	120	125
210	1000006	2	2019-08-29 05:37:05.396+00	powerKiloWatt	0	130
755	1000006	3	2019-08-29 05:45:11.827+00	powerKiloWatt	0	150
640	1000006	2	2019-08-29 05:47:15.569+00	powerKiloWatt	0	104
1215	1000006	9	2019-08-29 05:48:04.968+00	powerKiloWatt	120	150
1215	1000006	10	2019-08-29 05:48:36.548+00	developerNotes	14822 ,	\N
1215	1000006	10	2019-08-29 05:48:36.548+00	address.zip	\N	14822
1755	1000006	9	2019-08-29 05:52:09.457+00	powerKiloWatt	120	150
580	1000006	4	2019-08-29 05:52:29.323+00	powerKiloWatt	120	150
265	1000006	4	2019-08-29 05:56:12.573+00	powerKiloWatt	120	125
405	1000006	2	2019-08-29 06:01:56.997+00	powerKiloWatt	0	150
465	1000006	2	2019-08-29 06:03:35.611+00	powerKiloWatt	0	150
360	1000006	2	2019-08-29 06:04:01.475+00	powerKiloWatt	0	150
750	1000006	2	2019-08-29 06:06:03.676+00	powerKiloWatt	0	150
215	1000006	3	2019-08-29 06:09:06.704+00	powerKiloWatt	0	120
380	1000006	3	2019-08-29 06:15:43.724+00	powerKiloWatt	0	125
1665	1000004	5	2019-08-29 06:51:20.873+00	locationId	\N	baskingridgesupercharger
1965	1000004	8	2019-08-29 06:52:39.132+00	locationId	\N	robbinsvillesupercharger
1965	1000004	8	2019-08-29 06:52:39.132+00	developerNotes	120 kW - 8 stalls (only 6 up to now)	\N
1810	1000004	8	2019-08-29 12:04:00.335+00	powerKiloWatt	120	150
1810	1000004	8	2019-08-29 12:04:00.335+00	developerNotes	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3474076/\r\nStall count changed to 16 as per:\r\nhttps://forum.supercharge.info/t/gouda-the-netherlands-upgrade/591	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3474076/\r\nStall count changed to 16 as per:\r\nhttps://forum.supercharge.info/t/gouda-the-netherlands-upgrade/591\r\n2019-08-29: updated to 150kW as per the Tesla nav. data
685	1000006	4	2019-09-02 16:58:44.244+00	powerKiloWatt	0	150
1155	1000006	2	2019-09-02 16:59:08.734+00	powerKiloWatt	0	150
1345	1000006	6	2019-09-04 16:41:40.209+00	powerKiloWatt	120	130
795	1000006	6	2019-09-05 15:28:38.987+00	powerKiloWatt	0	150
1050	1000006	9	2019-09-05 15:44:58.381+00	powerKiloWatt	0	125
980	1000006	10	2019-09-05 15:45:37.288+00	powerKiloWatt	0	150
1105	1000006	5	2019-09-05 15:45:52.455+00	powerKiloWatt	0	150
1100	1000006	4	2019-09-05 15:47:04.619+00	powerKiloWatt	0	130
1045	1000006	9	2019-09-05 16:03:21.804+00	powerKiloWatt	0	150
490	1000006	2	2019-09-05 16:05:49.651+00	powerKiloWatt	0	150
2175	1000006	4	2019-11-08 09:57:30.577+00	stallCount	8	10
1410	1000004	10	2019-08-29 12:04:45.909+00	powerKiloWatt	120	150
1410	1000004	10	2019-08-29 12:04:45.909+00	developerNotes	\N	2019-08-29: updated to 150kW as per the Tesla nav. data
1325	1000004	8	2019-08-29 12:07:43.376+00	powerKiloWatt	120	150
1325	1000004	8	2019-08-29 12:07:43.376+00	developerNotes	\N	2019-08-29: updated to 150kW as per the Tesla nav. data
885	1000004	4	2019-08-29 16:18:33.983+00	powerKiloWatt	0	150
885	1000004	4	2019-08-29 16:18:33.983+00	developerNotes	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3530338/	Stall count changed to 12 as per https://teslamotorsclub.com/tmc/posts/3530338/\r\n2019-08-29: updated to 150kW as per the Tesla nav data
220	1000004	3	2019-08-29 16:20:19.547+00	powerKiloWatt	0	150
220	1000004	3	2019-08-29 16:20:19.547+00	developerNotes	Ten stalls now per: https://forum.supercharge.info/t/zevenaar-nl-has-now-10-stalls/322	Ten stalls now per: https://forum.supercharge.info/t/zevenaar-nl-has-now-10-stalls/322\r\n2019-08-29: updated to 150kW as per the Tesla nav data
1565	1000004	2	2019-08-29 18:02:31.182+00	status	PERMIT	CONSTRUCTION
1135	1000006	3	2019-09-02 17:32:40.709+00	powerKiloWatt	0	150
275	1000006	6	2019-09-02 17:37:11.593+00	powerKiloWatt	0	150
275	1000006	6	2019-09-02 17:37:11.593+00	developerNotes	Now 20 stalls.	\N
1125	1000006	9	2019-09-04 15:56:38.171+00	powerKiloWatt	0	150
1125	1000006	9	2019-09-04 15:56:38.171+00	address.street	Moraleda de Zafayona 18370 Granada	Moraleda de Zafayona
1125	1000006	9	2019-09-04 15:56:38.171+00	address.zip	\N	18370
765	1000006	3	2019-08-30 16:06:11.102+00	powerKiloWatt	0	150
745	1000006	7	2019-08-30 16:08:50.454+00	powerKiloWatt	0	130
1140	1000006	12	2019-08-30 16:09:53.962+00	powerKiloWatt	0	125
370	1000006	2	2019-08-30 16:12:23.281+00	powerKiloWatt	0	150
1085	1000006	12	2019-08-30 16:18:27.167+00	powerKiloWatt	0	130
855	1000006	7	2019-08-30 16:32:06.06+00	powerKiloWatt	0	125
400	1000006	2	2019-08-30 16:37:08.928+00	powerKiloWatt	0	150
240	1000006	3	2019-08-30 16:37:57.195+00	powerKiloWatt	0	130
935	1000006	2	2019-09-02 17:04:58.233+00	powerKiloWatt	0	150
1170	1000006	10	2019-09-02 17:15:05.192+00	powerKiloWatt	0	150
345	1000006	5	2019-09-02 17:21:22.247+00	powerKiloWatt	0	150
1010	1000006	9	2019-09-02 17:23:28.551+00	powerKiloWatt	0	150
1580	1000006	2	2019-09-02 17:24:10.296+00	powerKiloWatt	120	150
775	1000006	2	2019-09-02 17:25:42.17+00	powerKiloWatt	0	150
1605	1000006	4	2019-09-04 15:50:59.2+00	powerKiloWatt	0	150
1515	1000006	5	2019-09-04 15:52:49.537+00	powerKiloWatt	120	150
1960	1000006	5	2019-09-04 16:23:33.995+00	powerKiloWatt	120	150
550	1000006	4	2019-09-04 16:24:44.755+00	powerKiloWatt	0	150
550	1000006	4	2019-09-04 16:24:44.755+00	developerNotes	Supercharger in Affi Italy is expanding with another 8 supercharger stalls.	\N
475	1000006	5	2019-09-04 16:25:08.422+00	powerKiloWatt	0	150
475	1000006	5	2019-09-04 16:25:08.422+00	developerNotes	Email saying increased to 10 stalls in March 2018.	\N
110	1000004	4	2019-09-07 11:06:44.08+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/368910/
310	1000006	2	2019-09-08 19:21:29.486+00	powerKiloWatt	0	150
225	1000006	5	2019-09-08 19:34:02.129+00	powerKiloWatt	120	130
630	1000006	3	2019-09-08 19:34:41.232+00	powerKiloWatt	0	150
1840	1000006	7	2019-09-08 19:39:44.013+00	powerKiloWatt	120	150
1840	1000006	7	2019-09-08 19:39:44.013+00	developerNotes	Based on public files seeking permission to change zoning regulations to allow for charging station.	\N
785	1000006	14	2019-09-08 19:48:28.843+00	powerKiloWatt	0	150
785	1000006	14	2019-09-08 19:48:28.843+00	developerNotes	In process of expanding to 44 stalls.	\N
575	1000006	2	2019-09-09 14:58:06.264+00	powerKiloWatt	0	150
730	1000006	4	2019-09-09 14:59:08.105+00	powerKiloWatt	0	130
1985	1000006	2	2019-09-05 16:06:20.257+00	powerKiloWatt	120	0
835	1000006	9	2019-09-04 15:59:15.396+00	powerKiloWatt	0	150
1280	1000006	7	2019-09-04 16:04:50.256+00	powerKiloWatt	120	150
1280	1000006	7	2019-09-04 16:04:50.256+00	developerNotes	Tesla Supercharger	\N
805	1000006	9	2019-09-04 16:06:00.946+00	powerKiloWatt	0	150
880	1000006	2	2019-09-04 16:06:17.439+00	powerKiloWatt	0	150
875	1000006	7	2019-09-04 16:18:03.441+00	powerKiloWatt	0	150
950	1000006	4	2019-09-04 16:18:51.406+00	powerKiloWatt	0	150
1040	1000006	2	2019-09-04 16:25:28.072+00	powerKiloWatt	0	150
1005	1000006	2	2019-09-04 16:25:54.132+00	powerKiloWatt	0	150
1005	1000006	2	2019-09-04 16:25:54.132+00	address.street	1 Via BonfadiniMogliano VenetoItaly 31021	1 Via BonfadiniMogliano VenetoItaly
1005	1000006	2	2019-09-04 16:25:54.132+00	address.zip	\N	31021
615	1000006	5	2019-09-04 16:37:32.833+00	powerKiloWatt	0	130
1455	1000006	2	2019-09-04 16:37:50.612+00	powerKiloWatt	120	150
990	1000006	8	2019-09-04 16:40:49.661+00	powerKiloWatt	120	130
260	1000006	4	2019-09-05 15:30:20.131+00	powerKiloWatt	0	150
1120	1000006	7	2019-09-05 15:30:32.937+00	powerKiloWatt	0	150
395	1000006	4	2019-09-05 15:32:13.609+00	powerKiloWatt	120	150
920	1000006	8	2019-09-05 15:41:06.207+00	powerKiloWatt	0	150
1310	1000006	4	2019-09-05 15:49:43.67+00	powerKiloWatt	0	150
1090	1000006	8	2019-09-05 15:50:38.172+00	powerKiloWatt	0	150
535	1000006	4	2019-09-05 15:52:15.755+00	status	OPEN	CLOSED_TEMP
535	1000006	4	2019-09-05 15:52:15.755+00	dateOpened	2015-07-16	\N
535	1000006	4	2019-09-05 15:52:15.755+00	developerNotes	\N	Original Opening Date: 16.07.2015\r\ntemporary closed according to Telsa-Nav
1250	1000006	5	2019-09-05 15:58:47.133+00	powerKiloWatt	120	150
1865	1000006	3	2019-09-05 16:07:13.199+00	powerKiloWatt	120	0
2080	1000006	3	2019-09-05 17:41:22.171+00	powerKiloWatt	120	0
130	1000004	2	2019-09-07 11:15:06.438+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/959087/
2100	1000004	1	2019-09-10 19:29:08.474+00	name	\N	Meriden, CT
1905	1000006	2	2019-09-10 21:31:11.091+00	status	PERMIT	CONSTRUCTION
1905	1000004	3	2019-09-14 12:29:05.108+00	stallCount	6	8
1350	1000004	3	2019-09-07 11:37:57.068+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/2370480/
1610	1000006	8	2019-09-08 19:31:37.779+00	powerKiloWatt	0	150
330	1000006	3	2019-09-08 19:32:13.478+00	powerKiloWatt	0	150
1570	1000006	6	2019-09-08 19:32:35.394+00	powerKiloWatt	120	150
245	1000006	3	2019-09-08 19:35:56.524+00	powerKiloWatt	120	150
1255	1000006	4	2019-09-08 19:36:15.782+00	powerKiloWatt	0	150
660	1000006	2	2019-09-08 19:37:04.251+00	powerKiloWatt	0	150
1740	1000006	5	2019-09-08 19:41:15.117+00	powerKiloWatt	0	150
325	1000006	3	2019-09-08 19:42:19.985+00	powerKiloWatt	0	150
1945	1000006	7	2019-09-09 05:15:26.153+00	powerKiloWatt	120	0
2100	1000004	2	2019-09-10 23:13:10.072+00	powerKiloWatt	0	250
2095	1000006	2	2019-09-16 02:37:03.577+00	powerKiloWatt	0	150
2065	1000006	3	2019-09-16 02:38:59.012+00	urlDiscuss	https://teslamotorsclub.com/tmc/posts/3867022/	https://teslamotorsclub.com/tmc/threads/supercharger-%E2%80%94-irvine-1970-main-st-permit-application-in-planning-dept.166372/
2030	1000006	4	2019-09-18 06:51:48.993+00	latitude	42.610473	42.60901
2030	1000006	4	2019-09-18 06:51:48.993+00	longitude	-88.405681	-88.407819
2105	1000004	1	2019-09-19 23:25:16.544+00	name	\N	Burnaby, BC
2050	1000006	2	2019-09-22 03:15:50.302+00	powerKiloWatt	0	250
2110	1000004	1	2019-09-22 11:48:48.97+00	name	\N	Ocean City, MD
2030	1000004	5	2019-09-24 14:27:58.301+00	status	CONSTRUCTION	OPEN
2030	1000004	5	2019-09-24 14:27:58.301+00	dateOpened	\N	2019-09-24
2030	1000004	6	2019-09-25 17:44:03.421+00	status	OPEN	CONSTRUCTION
2030	1000004	6	2019-09-25 17:44:03.421+00	dateOpened	2019-09-24	\N
2025	1000004	2	2019-09-25 20:42:00.691+00	powerKiloWatt	150	250
1555	1000004	5	2019-09-25 20:46:37.823+00	powerKiloWatt	0	250
1990	1000004	2	2019-09-25 20:51:40.385+00	powerKiloWatt	0	250
2030	1000004	7	2019-09-26 20:55:23.216+00	status	CONSTRUCTION	OPEN
2030	1000004	7	2019-09-26 20:55:23.216+00	dateOpened	\N	2019-09-26
2030	1000004	7	2019-09-26 20:55:23.216+00	developerNotes	\N	confirmed live by Nicholas Theyer
585	1000004	2	2019-09-27 12:15:38.751+00	locationId	stuhrsupercharger	brinkumsupercharger
1970	1000004	2	2019-09-28 01:51:39.679+00	status	PERMIT	CONSTRUCTION
625	1000004	5	2019-10-01 13:10:59.5+00	name	Nashville - Brentwood, TN	Nashville (SC), TN
2120	1000004	1	2019-10-01 21:35:05.565+00	name	\N	Brekkvasselv
2120	1000004	2	2019-10-01 21:35:46.104+00	locationId	\N	Brekkvasselvsupercharger
2120	1000004	3	2019-10-01 22:38:23.995+00	name	Brekkvasselv	Brekkvasselv, Norway
335	1000004	3	2019-10-02 06:02:57.322+00	name	Tokyo, Japan	Tokyo - Roppongi, Japan
335	1000004	3	2019-10-02 06:02:57.322+00	powerKiloWatt	0	120
335	1000004	3	2019-10-02 06:02:57.322+00	address.street	106-0032 Tokyo Minato-ku, Roppongi	6-3-3 Roppongi, Minato-ku
2125	1000006	1	2019-10-03 09:14:06.166+00	name	\N	Madrid - SABA Parking Nuevos Ministerios, SPAIN
2125	1000006	2	2019-10-03 09:16:53.868+00	hours	24	\N
2125	1000004	3	2019-10-03 09:39:34.72+00	name	Madrid - SABA Parking Nuevos Ministerios, SPAIN	Madrid - SABA Parking Nuevos Ministerios, Spain
2125	1000004	4	2019-10-03 17:26:06.849+00	urlDiscuss	\N	https://www.plugshare.com/location/209371
2035	1000004	4	2019-10-06 04:58:50.741+00	powerKiloWatt	0	250
2130	1000004	1	2019-10-07 20:22:19.111+00	name	\N	Beijing - Wangjing District, China
2140	1000004	1	2019-10-15 17:31:41.875+00	name	\N	Szeged, Hungary
2145	1000006	1	2019-10-16 06:30:41.45+00	name	\N	Huittinen, Finland
1935	1000006	7	2019-10-22 16:56:33.132+00	status	CONSTRUCTION	OPEN
1935	1000006	7	2019-10-22 16:56:33.132+00	dateOpened	\N	2019-10-22
1935	1000006	7	2019-10-22 16:56:33.132+00	powerKiloWatt	0	150
1940	1000004	5	2019-10-22 20:25:06.602+00	status	CONSTRUCTION	OPEN
1940	1000004	5	2019-10-22 20:25:06.602+00	dateOpened	\N	2019-10-22
1940	1000004	5	2019-10-22 20:25:06.602+00	stallCount	32	12
1940	1000004	7	2019-10-22 20:25:34.628+00	developerNotes	At NH Hotel\r\n32 stalls accoding to forum post: https://forum.supercharge.info/t/naarden-update/558	At NH Hotel\r\n32 stalls accoding to forum post: https://forum.supercharge.info/t/naarden-update/558\r\n22/10/19: 12 stalls installed
2135	1000004	3	2019-10-24 17:13:31.583+00	status	CONSTRUCTION	OPEN
2135	1000004	3	2019-10-24 17:13:31.583+00	dateOpened	\N	2019-10-24
2045	1000004	6	2019-10-05 14:42:28.05+00	latitude	38.088876	38.089447
2045	1000004	6	2019-10-05 14:42:28.05+00	longitude	-122.553211	-122.551755
2045	1000004	6	2019-10-05 14:42:28.05+00	elevationMeters	4	3
2135	1000006	2	2019-10-12 22:44:32.712+00	stallCount	12	24
2135	1000006	2	2019-10-12 22:44:32.712+00	address.street	1250 South California Blvd	1181 Locust Street
2110	1000004	2	2019-10-13 17:45:05.314+00	status	PERMIT	CONSTRUCTION
2140	1000004	2	2019-10-15 17:42:21.42+00	powerKiloWatt	0	120
2145	1000004	2	2019-10-16 23:06:53.786+00	status	CONSTRUCTION	OPEN
2145	1000004	2	2019-10-16 23:06:53.786+00	dateOpened	\N	2019-10-16
535	1000006	5	2019-11-01 11:25:09.272+00	status	CLOSED_TEMP	OPEN
535	1000006	5	2019-11-01 11:25:09.272+00	dateOpened	\N	2015-07-16
535	1000006	5	2019-11-01 11:25:09.272+00	developerNotes	Original Opening Date: 16.07.2015\r\ntemporary closed according to Telsa-Nav	\N
2145	1000004	3	2019-11-04 21:19:32.302+00	locationId	\N	huittinensupercharger
2090	1000004	5	2019-11-04 21:20:12.379+00	locationId	\N	jackmanmesupercharger
2175	1000006	1	2019-11-06 20:15:17.313+00	name	\N	Parking SABA Torre Sevilla, SPAIN
2150	1000006	3	2019-11-06 21:04:50.276+00	hours	\N	Mon - Fri 9:00 - 18:00h, Sat 9:00 - 17:00, Sun 10:00 - 16:00 -- open during Service Center hours
2150	1000006	3	2019-11-06 21:04:50.276+00	developerNotes	\N	Updated hours based on https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/163
2175	1000004	2	2019-11-06 22:09:28.76+00	locationId	\N	sevillaessupercharger
2175	1000004	2	2019-11-06 22:09:28.76+00	name	Parking SABA Torre Sevilla, SPAIN	Seville, Spain
2185	1000006	3	2019-12-03 22:55:54.669+00	latitude	59.80990580263285	59.808633535359775
2185	1000006	3	2019-12-03 22:55:54.669+00	longitude	10.2997911001592	10.299022793769
2185	1000006	3	2019-12-03 22:55:54.669+00	elevationMeters	233	229
2005	1000004	2	2019-10-04 02:18:24.659+00	status	PERMIT	CONSTRUCTION
2045	1000004	5	2019-10-05 00:10:53.649+00	status	PERMIT	CONSTRUCTION
1940	1000004	8	2019-10-23 05:15:59.88+00	powerKiloWatt	0	150
1935	1000006	8	2019-10-23 07:37:15.895+00	latitude	40.373165	40.37306
1935	1000006	8	2019-10-23 07:37:15.895+00	longitude	-8.48054	-8.4805
2150	1000006	1	2019-10-23 13:17:06.674+00	name	\N	Stockport, UK
1945	1000004	8	2019-10-24 05:57:03.582+00	name	Torri di Quartesolo, Italy	Vicenza, Italy
1945	1000004	8	2019-10-24 05:57:03.582+00	status	CONSTRUCTION	OPEN
1945	1000004	8	2019-10-24 05:57:03.582+00	dateOpened	\N	2019-10-24
1945	1000004	8	2019-10-24 05:57:03.582+00	elevationMeters	29	28
1945	1000004	8	2019-10-24 05:57:03.582+00	stallCount	10	12
1945	1000004	8	2019-10-24 05:57:03.582+00	powerKiloWatt	0	150
1940	1000004	9	2019-10-24 05:58:49.329+00	locationId	\N	naardensupercharger
2105	1000006	2	2019-10-24 18:14:53.246+00	locationId	\N	burnabybcsupercharger
1985	1000006	3	2019-10-24 18:55:05.809+00	locationId	\N	colchestersupercharger
2170	1000004	1	2019-11-03 19:27:13.492+00	name	\N	Thunder Bay, ON
1930	1000006	6	2019-11-13 00:32:22.276+00	powerKiloWatt	0	150
2190	1000006	2	2019-11-20 18:42:05.373+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-anaheim-ca-santa-ana-canyon-road-live-15-may-2019-14-urban-stalls.145502/page-5#post-4219473	https://teslamotorsclub.com/tmc/threads/supercharger-anaheim-ca-2404-e-katella-ave-permit-issued-25-oct-2019-16-stalls.174384/
2100	1000004	3	2019-10-07 23:37:32.952+00	status	PERMIT	CONSTRUCTION
2135	1000006	1	2019-10-12 20:56:16.763+00	name	\N	Walnut Creek, CA
1085	1000006	13	2019-10-15 00:39:12.124+00	urlDiscuss	http://teslaclub.sk/forum/v%C5%A1eobecn%C3%A9-f%C3%B3rum/nab%C3%ADjacie-%C5%A1tandardy-a-infra%C5%A1trukt%C3%BAra/nab%C3%ADjacie-stanice/14432-nov%C3%BD-supercharger-v-bratislave?p=15295#post15295	https://teslaclub.sk/forum/v%C5%A1eobecn%C3%A9-f%C3%B3rum/nab%C3%ADjacie-%C5%A1tandardy-a-infra%C5%A1trukt%C3%BAra/nab%C3%ADjacie-stanice/14432-nov%C3%BD-supercharger-v-bratislave?p=15295#post15295
1950	1000004	3	2019-10-15 18:05:51.208+00	status	PERMIT	CONSTRUCTION
1560	1000004	3	2019-10-17 23:29:02.785+00	status	PERMIT	CONSTRUCTION
1560	1000004	3	2019-10-17 23:29:02.785+00	latitude	46.843188	46.843601
1560	1000004	3	2019-10-17 23:29:02.785+00	longitude	-96.882258	-96.882492
1560	1000004	3	2019-10-17 23:29:02.785+00	developerNotes	Old permit: 3902 13th Ave S	\N
2090	1000004	3	2019-10-19 21:52:27.779+00	status	CONSTRUCTION	OPEN
2090	1000004	3	2019-10-19 21:52:27.779+00	dateOpened	\N	2019-10-19
2090	1000004	4	2019-10-19 21:54:58.624+00	powerKiloWatt	0	150
105	1000004	3	2019-10-26 14:08:07.844+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/quartzsite-supercharger-getting-overloaded-during-peak-holiday-travel-times.138705/
2165	1000004	1	2019-10-31 03:31:07.272+00	name	\N	Chula Vista, CA
620	1000004	2	2019-11-01 17:33:08.493+00	powerKiloWatt	0	150
585	1000006	3	2019-10-28 07:57:06.089+00	status	OPEN	CLOSED_PERM
585	1000006	3	2019-10-28 07:57:06.089+00	dateOpened	2015-04-15	\N
585	1000006	3	2019-10-28 07:57:06.089+00	developerNotes	\N	Closed according to: https://forum.supercharge.info/t/stuhr-germany-permanently-closed/819\r\nNew site nearby.
2125	1000004	6	2019-10-28 08:41:19.015+00	locationId	\N	madridsupercharger
2125	1000004	6	2019-10-28 08:41:19.015+00	name	Madrid - SABA Parking Nuevos Ministerios, Spain	Madrid, Spain
2125	1000004	7	2019-10-28 08:41:41.622+00	urlDiscuss	https://www.plugshare.com/location/209371	\N
2060	1000006	2	2019-10-30 22:43:25.435+00	status	PERMIT	CONSTRUCTION
200	1000004	2	2019-11-01 17:37:30.479+00	powerKiloWatt	0	120
145	1000004	3	2019-11-01 17:39:00.099+00	powerKiloWatt	0	150
2175	1000004	3	2019-11-07 13:37:23.131+00	urlDiscuss	\N	https://twitter.com/ojimenezro002/status/1192351917168562176?s=21
2185	1000004	2	2019-11-25 09:07:02.201+00	status	PERMIT	CONSTRUCTION
625	1000004	6	2019-11-26 22:07:48.825+00	name	Nashville (SC), TN	Nashville - Brentwood (SC), TN
2170	1000006	2	2019-11-27 15:58:44.466+00	locationId	\N	thunderbayonsupercharger
2150	1000004	2	2019-11-05 21:10:06.601+00	locationId	\N	manchestersouthsupercharger
2150	1000004	2	2019-11-05 21:10:06.601+00	name	Stockport, UK	Manchester South, UK
2150	1000004	2	2019-11-05 21:10:06.601+00	status	CONSTRUCTION	OPEN
2150	1000004	2	2019-11-05 21:10:06.601+00	dateOpened	\N	2019-11-06
2150	1000004	2	2019-11-05 21:10:06.601+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/4171698/
2150	1000004	2	2019-11-05 21:10:06.601+00	powerKiloWatt	0	120
2180	1000004	1	2019-11-11 20:58:21.67+00	name	\N	Huludao - Feitian Shopping Mall, China
2185	1000006	1	2019-11-13 23:43:45.235+00	name	\N	Liertoppen, Norway
2070	1000004	5	2019-11-14 13:28:37.342+00	powerKiloWatt	0	150
105	1000004	4	2019-11-14 22:25:16.004+00	developerNotes	\N	New 24 stall V3 planned for next door - discussion as to whether this is upgrade or new: https://teslamotorsclub.com/tmc/posts/4202027/
2005	1000004	3	2019-12-01 11:04:20.907+00	powerKiloWatt	0	250
2190	1000004	3	2019-12-03 19:05:25.405+00	status	PERMIT	CONSTRUCTION
2070	1000004	4	2019-11-14 13:28:29.823+00	status	CONSTRUCTION	OPEN
2070	1000004	4	2019-11-14 13:28:29.823+00	dateOpened	\N	2019-11-14
2190	1000004	1	2019-11-20 16:28:48.113+00	name	\N	Anaheim - E Katella Ave, CA
690	1000004	3	2019-11-27 11:31:04.333+00	powerKiloWatt	0	130
2195	1000004	1	2019-11-27 20:45:26.454+00	name	\N	Michigan City, IN
2195	1000004	2	2019-11-27 20:45:31.528+00	status	PERMIT	CONSTRUCTION
2195	1000004	3	2019-11-27 20:52:06.147+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-michigan-city-in.174093/	https://teslamotorsclub.com/tmc/threads/supercharger-michigan-city-in.174093/#post-4245530
2200	1000004	1	2019-12-02 16:26:26.848+00	name	\N	Shanghai - Gubei, China
1990	1000004	3	2019-12-04 21:06:35.025+00	status	CONSTRUCTION	OPEN
1990	1000004	3	2019-12-04 21:06:35.025+00	dateOpened	\N	2019-12-04
1990	1000004	4	2019-12-04 21:14:23.894+00	stallCount	8	6
2190	1000006	4	2019-12-04 23:30:00.197+00	latitude	33.80485310846749	33.805168
2190	1000006	4	2019-12-04 23:30:00.197+00	longitude	-117.88180947303	-117.882173
2205	1000004	1	2019-12-05 02:36:45.732+00	name	\N	Florence, KY
1990	1000004	5	2019-12-06 18:14:08.745+00	status	OPEN	CLOSED_TEMP
1990	1000004	5	2019-12-06 18:14:08.745+00	dateOpened	2019-12-04	\N
1990	1000004	5	2019-12-06 18:14:08.745+00	stallCount	6	8
1990	1000004	5	2019-12-06 18:14:08.745+00	developerNotes	\N	Dec 4 2019
1855	1000004	4	2019-12-07 18:12:00.716+00	status	CONSTRUCTION	OPEN
1855	1000004	4	2019-12-07 18:12:00.716+00	dateOpened	\N	2019-12-07
1990	1000004	6	2019-12-12 15:47:53.097+00	status	CLOSED_TEMP	OPEN
1990	1000004	6	2019-12-12 15:47:53.097+00	dateOpened	\N	2019-12-12
2140	1000004	3	2019-12-13 00:02:27.478+00	status	PERMIT	OPEN
2140	1000004	3	2019-12-13 00:02:27.478+00	dateOpened	\N	2019-12-12
2140	1000004	3	2019-12-13 00:02:27.478+00	urlDiscuss	https://villanyautosok.hu/2019/10/15/mar-epul-a-foti-tesla-supercharger/	https://www.plugshare.com/location/218489
2140	1000004	3	2019-12-13 00:02:27.478+00	stallCount	8	2
1555	1000006	6	2019-12-13 07:00:20.421+00	status	CONSTRUCTION	OPEN
1555	1000006	6	2019-12-13 07:00:20.421+00	dateOpened	\N	2019-12-12
2210	1000004	1	2019-12-14 15:37:17.52+00	name	\N	Taibao City, Taiwan
1990	1000004	7	2019-12-15 04:24:49.768+00	status	OPEN	CONSTRUCTION
1990	1000004	7	2019-12-15 04:24:49.768+00	dateOpened	2019-12-12	\N
1990	1000004	7	2019-12-15 04:24:49.768+00	developerNotes	Dec 4 2019	\N
2175	1000006	5	2019-12-15 20:55:17.926+00	powerKiloWatt	150	0
2175	1000006	5	2019-12-15 20:55:17.926+00	developerNotes	\N	Please only fill in the Power-value if you have proof.
2120	1000006	4	2019-12-15 20:56:41.036+00	powerKiloWatt	150	0
2120	1000006	4	2019-12-15 20:56:41.036+00	developerNotes	\N	Please only fill in the Power-value if you have proof.
1940	1000004	10	2019-12-16 08:28:58.171+00	stallCount	12	22
1940	1000004	10	2019-12-16 08:28:58.171+00	developerNotes	At NH Hotel\r\n32 stalls accoding to forum post: https://forum.supercharge.info/t/naarden-update/558\r\n22/10/19: 12 stalls installed	At NH Hotel\r\n32 stalls accoding to forum post: https://forum.supercharge.info/t/naarden-update/558\r\n22/10/19: 12 stalls installed\r\n16/12/2019: updated from 12 to 22 stalls
1990	1000004	8	2019-12-18 09:56:34.216+00	locationId	northbaysupercharger	northbayonsupercharger
1990	1000004	8	2019-12-18 09:56:34.216+00	status	CONSTRUCTION	OPEN
1990	1000004	8	2019-12-18 09:56:34.216+00	dateOpened	\N	2019-12-18
1990	1000004	8	2019-12-18 09:56:34.216+00	address.zip	\N	P1B 8M1
2040	1000004	4	2019-12-18 21:04:47.102+00	status	CONSTRUCTION	OPEN
2040	1000004	4	2019-12-18 21:04:47.102+00	dateOpened	\N	2019-12-19
2040	1000004	4	2019-12-18 21:04:47.102+00	powerKiloWatt	0	250
1865	1000004	4	2019-12-19 18:16:59.004+00	name	Motherwell, UK	Eurocentral, UK
1865	1000004	4	2019-12-19 18:16:59.004+00	status	CONSTRUCTION	OPEN
1865	1000004	4	2019-12-19 18:16:59.004+00	dateOpened	\N	2019-12-19
2215	1000004	1	2019-12-19 20:53:54.822+00	name	\N	Dangjin, South Korea
2220	1000004	1	2019-12-20 23:26:26.263+00	name	\N	Sallanches, France
1865	1000004	5	2019-12-20 23:28:52.356+00	locationId	\N	Eurocentralsupercharger
2025	1000004	3	2019-12-20 23:57:22.557+00	status	CONSTRUCTION	OPEN
2025	1000004	3	2019-12-20 23:57:22.557+00	dateOpened	\N	2019-12-20
2170	1000004	3	2019-12-20 23:58:43.173+00	status	CONSTRUCTION	OPEN
2170	1000004	3	2019-12-20 23:58:43.173+00	dateOpened	\N	2019-12-20
2025	1000004	4	2019-12-21 10:05:19.746+00	locationId	maplecreeksupercharger	maplecreeksksupercharger
2025	1000004	5	2019-12-21 10:05:47.444+00	address.zip	\N	S0N 1N0
1555	1000004	7	2019-12-21 19:41:20.536+00	status	OPEN	CLOSED_TEMP
1555	1000004	7	2019-12-21 19:41:20.536+00	dateOpened	2019-12-12	\N
2230	1000004	1	2019-12-27 01:42:18.734+00	name	\N	Wellington, New Zealand
2235	1000004	1	2020-01-02 22:40:30.382+00	name	\N	Bothell, WA
2210	1000006	3	2020-01-06 21:55:47.313+00	urlDiscuss	https://www.plugshare.com/location/218678	https://www.plugshare.com/location/222465
2210	1000004	4	2020-01-07 06:01:15.016+00	locationId	\N	chiayitwsuperchargernew
2210	1000004	4	2020-01-07 06:01:15.016+00	urlDiscuss	https://www.plugshare.com/location/222465	https://teslamotorsclub.com/tmc/forums/taiwan.254/
2235	1000004	2	2020-01-08 00:09:38.471+00	status	PERMIT	CONSTRUCTION
2235	1000004	2	2020-01-08 00:09:38.471+00	powerKiloWatt	0	72
2140	1000004	5	2020-01-09 21:38:36.529+00	locationId	\N	szegedsupercharger
2140	1000004	5	2020-01-09 21:38:36.529+00	urlDiscuss	https://www.plugshare.com/location/218489	\N
2280	1000004	1	2020-02-03 21:34:28.137+00	name	\N	Biberwier, Austria
2190	1000004	6	2020-02-03 23:46:06.44+00	locationId	\N	anaheimeastkatellasupercharger
1890	1000004	11	2020-02-04 04:30:43.998+00	locationId	\N	kissimmeesupercharger
1890	1000004	11	2020-02-04 04:30:43.998+00	powerKiloWatt	0	150
2285	1000004	1	2020-02-05 22:20:27.376+00	name	\N	Palmdale, CA
2050	1000006	3	2020-02-06 18:04:37.079+00	status	CONSTRUCTION	OPEN
2050	1000006	3	2020-02-06 18:04:37.079+00	dateOpened	\N	2020-02-06
2280	1000006	2	2020-02-07 12:10:00.068+00	status	OPEN	CONSTRUCTION
2280	1000006	2	2020-02-07 12:10:00.068+00	dateOpened	2020-02-04	\N
2280	1000006	2	2020-02-07 12:10:00.068+00	urlDiscuss	\N	https://tff-forum.de/viewtopic.php?f=68&t=3580&start=4240#p905108
2280	1000006	2	2020-02-07 12:10:00.068+00	powerKiloWatt	150	0
2280	1000006	2	2020-02-07 12:10:00.068+00	developerNotes	\N	Site not open! Still under construction. See Discuss URL.
1555	1000004	9	2019-12-23 22:05:54.155+00	locationId	portagelaprariembsupercharger	portagelaprariemanitobasupercharger
1555	1000004	9	2019-12-23 22:05:54.155+00	status	CLOSED_TEMP	OPEN
1555	1000004	9	2019-12-23 22:05:54.155+00	dateOpened	\N	2019-12-24
1555	1000004	9	2019-12-23 22:05:54.155+00	stallCount	6	3
2220	1000006	2	2019-12-25 16:20:19.433+00	powerKiloWatt	120	150
535	1000006	6	2019-12-25 16:23:11.695+00	powerKiloWatt	0	130
2145	1000006	4	2019-12-25 16:24:06.278+00	powerKiloWatt	0	120
175	1000006	2	2019-12-29 21:51:03.062+00	powerKiloWatt	0	150
1425	1000006	8	2019-12-29 21:51:44.024+00	powerKiloWatt	120	150
100	1000004	2	2019-12-29 22:20:15.873+00	address.street	416 S Watson RD	416 S Watson Rd
1250	1000006	6	2020-01-09 15:08:55.598+00	stallCount	8	6
1250	1000006	7	2020-01-09 15:09:44.322+00	latitude	51.483992	51.4839
1250	1000006	7	2020-01-09 15:09:44.322+00	longitude	-1.558115	-1.5568
1250	1000006	7	2020-01-09 15:09:44.322+00	elevationMeters	209	206
2255	1000004	1	2020-01-20 23:33:00.409+00	name	\N	Thornton, CO
2025	1000004	6	2019-12-21 22:00:39.701+00	locationId	maplecreeksksupercharger	maplecreeksupercharger
1990	1000004	9	2019-12-21 22:01:16.292+00	locationId	northbayonsupercharger	northbaysupercharger
1555	1000004	8	2019-12-21 22:01:45.439+00	locationId	portagelaprariesupercharger	portagelaprariembsupercharger
1555	1000004	8	2019-12-21 22:01:45.439+00	developerNotes	Bumping up. Construction might be starting.	\N
1865	1000006	6	2019-12-23 14:15:18.715+00	powerKiloWatt	0	150
2140	1000006	4	2019-12-23 14:40:54.286+00	powerKiloWatt	120	0
2140	1000006	4	2019-12-23 14:40:54.286+00	developerNotes	\N	Please provide proof/explanation if you enter a different "Power (kW)" value than on the in-car map here in the Editor notes.
850	1000004	6	2019-12-23 20:13:40.021+00	name	Buena Park, CA	Buena Park (SC), CA
2025	1000004	7	2019-12-23 21:58:44.342+00	locationId	maplecreeksupercharger	maplecreekpioneersupercharger
2170	1000004	4	2019-12-23 22:08:36.035+00	locationId	thunderbayonsupercharger	thunderbaycasupercharger
2170	1000004	4	2019-12-23 22:08:36.035+00	address.zip	\N	P7K 1K2
2225	1000004	1	2019-12-23 22:17:09.852+00	name	\N	Gapyeong, South Korea
2035	1000004	5	2019-12-23 23:05:38.06+00	status	CONSTRUCTION	OPEN
2035	1000004	5	2019-12-23 23:05:38.06+00	dateOpened	\N	2019-12-23
2190	1000004	5	2019-12-24 13:09:03.877+00	status	CONSTRUCTION	OPEN
2190	1000004	5	2019-12-24 13:09:03.877+00	dateOpened	\N	2019-12-24
2060	1000004	3	2019-12-25 22:26:43.05+00	powerKiloWatt	0	250
2175	1000006	6	2019-12-26 11:00:39.662+00	status	CONSTRUCTION	OPEN
2175	1000006	6	2019-12-26 11:00:39.662+00	dateOpened	\N	2019-12-23
2175	1000006	6	2019-12-26 11:00:39.662+00	powerKiloWatt	0	150
2175	1000006	7	2019-12-26 11:09:05.697+00	urlDiscuss	https://twitter.com/ojimenezro002/status/1192351917168562176?s=21	https://hipertextual.com/2019/12/tesla-supercharger-v2-sevilla-espana
2175	1000006	8	2019-12-26 11:09:29.925+00	powerKiloWatt	150	0
2210	1000004	2	2019-12-28 15:27:22.063+00	name	Taibao City, Taiwan	Chiayi City, Taiwan
2210	1000004	2	2019-12-28 15:27:22.063+00	status	CONSTRUCTION	OPEN
2210	1000004	2	2019-12-28 15:27:22.063+00	dateOpened	\N	2019-12-27
2150	1000006	4	2020-01-07 01:53:33.765+00	name	Manchester South, UK	Manchester South (SC), UK
1890	1000004	7	2020-01-14 20:23:07.931+00	name	Four Corners, FL	Kissimmee (Four Corners), FL
1890	1000004	9	2020-01-14 23:47:05.175+00	address.street	7940 W. Irlo Bronson Memorial Hwy	7940 W Irlo Bronson Memorial Hwy
2245	1000004	1	2020-01-15 22:25:12.538+00	name	\N	Bancroft, ON
365	1000006	7	2020-01-23 22:48:02.647+00	developerNotes	2019-03-03: Added extra 2 stalls.  Mixture of speeds (120 / 72)\r\n2019-06-01: Another 8 permanent stalls in progress: https://teslamotorsclub.com/tmc/posts/3710250/	2019-03-03: Added extra 2 stalls.  Mixture of speeds (120 / 72)\r\n2019-06-01: Another 8 permanent stalls in progress: https://teslamotorsclub.com/tmc/posts/3710250/\r\n2020-01-23: 8 v3 superchargers operational; original 4 v2 have been removed
2265	1000004	2	2020-01-30 23:16:09.162+00	stallCount	6	8
2175	1000006	9	2020-01-01 08:26:05.886+00	powerKiloWatt	0	150
2175	1000006	9	2020-01-01 08:26:05.886+00	developerNotes	Please only fill in the Power-value if you have proof.	\N
2175	1000006	10	2020-01-01 08:28:10.133+00	address.street	c) Inca Garcilaso, 1	Calle Inca Garcilaso, 1
725	1000004	3	2020-01-01 23:03:45.077+00	elevationMeters	8	9
725	1000004	3	2020-01-01 23:03:45.077+00	stallCount	6	8
725	1000004	4	2020-01-01 23:04:12.594+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/56149-Supercharger-%C2%97-Kingsland-GA	https://teslamotorsclub.com/tmc/threads/supercharger-%E2%80%94-kingsland-ga.56149/
2185	1000006	4	2020-01-02 07:12:35.653+00	locationId	\N	liertoppensupercharger
110	1000004	5	2020-01-04 17:45:14.272+00	address.street	555 McMurray RD	555 McMurray Rd
2165	1000004	2	2020-01-04 17:45:41.842+00	address.street	910 Eastlake Parkway	910 Eastlake Pkwy
1705	1000004	4	2020-01-04 17:50:40.29+00	address.street	1951 East 20th St	1951 E 20th St
1890	1000004	6	2020-01-13 19:06:59.57+00	status	CONSTRUCTION	OPEN
1890	1000004	6	2020-01-13 19:06:59.57+00	dateOpened	\N	2020-01-13
2165	1000006	3	2020-01-16 06:45:13.022+00	powerKiloWatt	0	250
2265	1000004	1	2020-01-29 11:55:14.827+00	name	\N	Lowell, AR
2240	1000004	1	2020-01-09 16:45:15.24+00	name	\N	Adda Nord, Italy
2240	1000006	2	2020-01-10 04:29:19.562+00	locationId	\N	addanordsupercharger
2240	1000006	2	2020-01-10 04:29:19.562+00	address.street	Autostrada Brebemi	Adda Nord
2240	1000006	2	2020-01-10 04:29:19.562+00	address.zip	\N	24043
1875	1000006	3	2020-01-10 05:13:34.654+00	locationId	\N	Leavesdensupercharger
1950	1000004	4	2020-01-14 16:03:30.05+00	powerKiloWatt	0	250
1890	1000004	8	2020-01-14 23:46:51.572+00	address.street	7940 W. Irlo Bronson Memorial Highway	7940 W. Irlo Bronson Memorial Hwy
1890	1000004	10	2020-01-15 04:41:40.839+00	name	Kissimmee (Four Corners), FL	Kissimmee, FL
2250	1000004	1	2020-01-17 11:40:18.119+00	name	\N	Turlock, CA
2140	1000006	6	2020-01-22 11:16:43.047+00	powerKiloWatt	0	150
2140	1000006	6	2020-01-22 11:16:43.047+00	developerNotes	Please provide proof/explanation if you enter a different "Power (kW)" value than on the in-car map here in the Editor notes.	\N
2260	1000004	1	2020-01-26 01:51:46.983+00	name	\N	Hsinchu City, Taiwan
2150	1000006	5	2020-01-27 15:30:55.988+00	hours	Mon - Fri 9:00 - 18:00h, Sat 9:00 - 17:00, Sun 10:00 - 16:00 -- open during Service Center hours	\N
2150	1000006	5	2020-01-27 15:30:55.988+00	powerKiloWatt	120	150
2150	1000006	5	2020-01-27 15:30:55.988+00	developerNotes	Updated hours based on https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/163	Deleted hours based on: https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/196?u=ibuza
2260	1000004	2	2020-01-27 18:40:10.571+00	status	CONSTRUCTION	OPEN
2260	1000004	2	2020-01-27 18:40:10.571+00	dateOpened	\N	2020-01-27
2260	1000004	2	2020-01-27 18:40:10.571+00	powerKiloWatt	0	72
2270	1000004	1	2020-01-30 13:58:06.601+00	name	\N	Portage, MI
2280	1000006	6	2020-02-20 07:16:44.03+00	powerKiloWatt	0	125
2255	1000004	2	2020-01-21 00:04:26.14+00	urlDiscuss	https://teslamotorsclub.com/tmc/forums/mountain-southwest-supercharger-locations.155/	https://teslamotorsclub.com/tmc/threads/supercharger-thornton-co.182564/
2255	1000004	3	2020-01-21 00:07:55.788+00	powerKiloWatt	0	250
2110	1000006	3	2020-01-23 22:38:51.077+00	powerKiloWatt	0	250
365	1000006	6	2020-01-23 22:46:58.126+00	stallCount	6	8
365	1000006	6	2020-01-23 22:46:58.126+00	powerKiloWatt	150	250
2210	1000004	5	2020-01-26 01:38:43.633+00	urlDiscuss	https://teslamotorsclub.com/tmc/forums/taiwan.254/	https://www.plugshare.com/location/222465
1930	1000004	7	2020-01-29 00:45:05.049+00	status	CONSTRUCTION	OPEN
1930	1000004	7	2020-01-29 00:45:05.049+00	dateOpened	\N	2020-01-28
2095	1000004	3	2020-01-29 12:20:15.413+00	status	CONSTRUCTION	OPEN
2095	1000004	3	2020-01-29 12:20:15.413+00	dateOpened	\N	2020-01-28
2265	1000004	3	2020-02-03 10:35:23.609+00	powerKiloWatt	0	250
155	1000004	3	2020-02-03 21:35:26.473+00	locationId	farmingtonsupercharger	farmingtonnmsupercharger
155	1000004	3	2020-02-03 21:35:26.473+00	powerKiloWatt	120	150
2275	1000004	1	2020-02-02 00:26:22.564+00	name	\N	Berkeley, CA
2280	1000006	4	2020-02-08 08:00:18.964+00	status	OPEN	CONSTRUCTION
2280	1000006	4	2020-02-08 08:00:18.964+00	dateOpened	2020-02-08	\N
2280	1000006	4	2020-02-08 08:00:18.964+00	developerNotes	2020-02-08: Live on Tesla site.\r\nSite not open! Still under construction. See Discuss URL.	2020-02-08: Live on Tesla site but not open.\r\nSite not open! Still under construction. See Discuss URL.
995	1000006	7	2020-02-09 19:51:10.916+00	powerKiloWatt	0	150
995	1000006	7	2020-02-09 19:51:10.916+00	developerNotes	\N	Update from latest car map data
1260	1000006	12	2020-02-09 19:56:57.283+00	powerKiloWatt	0	150
1260	1000006	12	2020-02-09 19:56:57.283+00	developerNotes	\N	Update from latest car map data
860	1000006	6	2020-02-09 20:10:37.743+00	powerKiloWatt	0	150
860	1000006	6	2020-02-09 20:10:37.743+00	developerNotes	\N	Update from latest car map data
840	1000006	9	2020-02-09 20:16:34.763+00	powerKiloWatt	0	150
840	1000006	9	2020-02-09 20:16:34.763+00	developerNotes	\N	Update from latest car map data
2100	1000004	4	2020-02-10 00:19:47.25+00	status	CONSTRUCTION	OPEN
2100	1000004	4	2020-02-10 00:19:47.25+00	dateOpened	\N	2020-02-09
2100	1000004	5	2020-02-10 21:03:11.753+00	locationId	\N	meridenctsupercharger
2290	1000004	1	2020-02-12 21:04:27.972+00	name	\N	Ontario, OR
1950	1000004	5	2020-02-13 20:12:30.825+00	status	CONSTRUCTION	OPEN
1950	1000004	5	2020-02-13 20:12:30.825+00	dateOpened	\N	2020-02-13
1950	1000004	6	2020-02-14 10:02:36.442+00	locationId	\N	lafayettelasupercharger
2025	1000004	8	2020-02-14 12:21:39.216+00	status	OPEN	CLOSED_TEMP
2025	1000004	8	2020-02-14 12:21:39.216+00	dateOpened	2019-12-20	\N
2025	1000004	8	2020-02-14 12:21:39.216+00	developerNotes	\N	Open 12/ 20 /19
2075	1000004	2	2020-02-08 00:11:52.879+00	status	PERMIT	CONSTRUCTION
2075	1000004	2	2020-02-08 00:11:52.879+00	stallCount	20	16
2075	1000004	2	2020-02-08 00:11:52.879+00	powerKiloWatt	0	250
2280	1000004	3	2020-02-08 00:16:30.961+00	status	CONSTRUCTION	OPEN
2280	1000004	3	2020-02-08 00:16:30.961+00	dateOpened	\N	2020-02-08
2280	1000004	3	2020-02-08 00:16:30.961+00	developerNotes	Site not open! Still under construction. See Discuss URL.	2020-02-08: Live on Tesla site.\r\nSite not open! Still under construction. See Discuss URL.
1080	1000004	7	2020-02-17 22:37:47.01+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/new-supercharger-in-bolingbrook-il.89554/	https://teslamotorsclub.com/tmc/threads/supercharger-bolingbrook-il.89554
1080	1000004	7	2020-02-17 22:37:47.01+00	stallCount	8	16
1080	1000004	7	2020-02-17 22:37:47.01+00	powerKiloWatt	0	250
1080	1000004	7	2020-02-17 22:37:47.01+00	developerNotes	\N	Note; 8x 150kW, 8x 250 kW
220	1000004	4	2020-02-18 00:56:25.494+00	stallCount	10	8
220	1000004	4	2020-02-18 00:56:25.494+00	developerNotes	Ten stalls now per: https://forum.supercharge.info/t/zevenaar-nl-has-now-10-stalls/322\r\n2019-08-29: updated to 150kW as per the Tesla nav data	Ten stalls now per: https://forum.supercharge.info/t/zevenaar-nl-has-now-10-stalls/322\r\nRVG200218: Two temporary stalls have been removed again.\r\n2019-08-29: updated to 150kW as per the Tesla nav data
2295	1000004	1	2020-02-19 21:09:50.626+00	name	\N	Fort William, UK
2295	1000004	2	2020-02-19 22:51:35.31+00	urlDiscuss	https://teslamotorsclub.com/tmc/posts/4491770/	https://teslamotorsclub.com/tmc/threads/uk-supercharger-site-news.91118/page-62#post-4488671
765	1000006	5	2020-02-20 07:20:02.159+00	address.street	Innsbruckerstrasse 40	Innsbruckerstrasse 40, Hotel MOHR life resort
2265	1000004	4	2020-02-21 10:46:11.004+00	status	CONSTRUCTION	OPEN
2265	1000004	4	2020-02-21 10:46:11.004+00	dateOpened	\N	2020-02-21
2005	1000004	4	2020-02-21 22:04:36.766+00	status	CONSTRUCTION	OPEN
2005	1000004	4	2020-02-21 22:04:36.766+00	dateOpened	\N	2020-02-21
2035	1000004	6	2020-02-04 04:28:47.004+00	locationId	\N	fairfieldctnsupercharger
2050	1000006	4	2020-02-06 20:07:10.655+00	locationId	\N	lynchburgvasupercharger
2110	1000004	4	2020-02-06 20:52:23.491+00	status	CONSTRUCTION	OPEN
2110	1000004	4	2020-02-06 20:52:23.491+00	dateOpened	\N	2020-02-07
2255	1000004	5	2020-02-29 01:35:13.831+00	stallCount	8	6
2310	1000004	2	2020-02-29 03:08:15.535+00	name	Englewood, CO	Centennial, CO
1970	1000004	4	2020-03-03 21:36:13.991+00	powerKiloWatt	0	250
2050	1000006	5	2020-03-04 01:38:43.561+00	status	OPEN	CLOSED_TEMP
2050	1000006	5	2020-03-04 01:38:43.561+00	dateOpened	2020-02-06	\N
2150	1000006	6	2020-03-05 15:07:43.212+00	latitude	53.43029524048801	53.430295
2150	1000006	6	2020-03-05 15:07:43.212+00	longitude	-2.1793752908706	-2.179375
2150	1000006	6	2020-03-05 15:07:43.212+00	developerNotes	Deleted hours based on: https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/196?u=ibuza	Deleted hours based on: https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/196
2260	1000006	3	2020-03-05 15:09:23.459+00	latitude	24.80726568472875	24.807265
2260	1000006	3	2020-03-05 15:09:23.459+00	longitude	121.036114096641	121.036114
165	1000006	2	2020-02-09 19:55:18.192+00	powerKiloWatt	0	120
165	1000006	2	2020-02-09 19:55:18.192+00	developerNotes	\N	Update from latest car map data
1630	1000006	3	2020-02-09 19:59:20.512+00	powerKiloWatt	120	150
1630	1000006	3	2020-02-09 19:59:20.512+00	developerNotes	\N	Update from latest car map data
1350	1000006	4	2020-02-09 19:59:52.395+00	powerKiloWatt	120	150
1350	1000006	4	2020-02-09 19:59:52.395+00	developerNotes	\N	Update from latest car map data
970	1000006	4	2020-02-09 20:00:22.894+00	powerKiloWatt	0	150
970	1000006	4	2020-02-09 20:00:22.894+00	developerNotes	\N	Update from latest car map data
140	1000006	2	2020-02-09 20:26:24.211+00	powerKiloWatt	0	150
1190	1000006	6	2020-02-09 20:27:37.056+00	powerKiloWatt	0	150
450	1000006	3	2020-02-09 20:28:02.554+00	powerKiloWatt	0	150
1065	1000006	10	2020-02-09 20:28:21.206+00	powerKiloWatt	0	150
155	1000006	4	2020-02-09 20:32:50.001+00	powerKiloWatt	150	120
2300	1000004	1	2020-02-24 12:46:03.211+00	name	\N	Millstone, NJ
2060	1000004	4	2020-02-26 03:42:28.56+00	status	CONSTRUCTION	OPEN
2060	1000004	4	2020-02-26 03:42:28.56+00	dateOpened	\N	2020-02-25
2060	1000004	5	2020-02-27 05:56:50.923+00	locationId	\N	williamsportpasupercharger
2280	1000006	5	2020-02-15 15:10:40.672+00	status	CONSTRUCTION	OPEN
2280	1000006	5	2020-02-15 15:10:40.672+00	dateOpened	\N	2020-02-15
2280	1000006	5	2020-02-15 15:10:40.672+00	developerNotes	2020-02-08: Live on Tesla site but not open.\r\nSite not open! Still under construction. See Discuss URL.	Open according to: https://tff-forum.de/viewtopic.php?f=68&t=3580&view=unread#p911358
1950	1000004	7	2020-02-15 23:18:07.26+00	status	OPEN	CLOSED_TEMP
1950	1000004	7	2020-02-15 23:18:07.26+00	dateOpened	2020-02-13	\N
2265	1000004	5	2020-02-21 12:19:35.248+00	locationId	\N	bentonevillearizonasupercharger
2265	1000004	5	2020-02-21 12:19:35.248+00	developerNotes	\N	Put in bentonevillearizonasupercharger since it is pretty close.  We'll have to see what Tesla names the supercharger.
1950	1000004	8	2020-02-23 07:42:04.67+00	status	CLOSED_TEMP	OPEN
1950	1000004	8	2020-02-23 07:42:04.67+00	dateOpened	\N	2020-02-23
2185	1000004	5	2020-02-25 07:34:16.664+00	powerKiloWatt	0	250
2265	1000004	6	2020-02-27 05:55:17.456+00	locationId	bentonevillearizonasupercharger	lowellarsupercharger
2265	1000004	6	2020-02-27 05:55:17.456+00	developerNotes	Put in bentonevillearizonasupercharger since it is pretty close.  We'll have to see what Tesla names the supercharger.	\N
2305	1000004	1	2020-02-27 15:50:59.404+00	name	\N	Clara Barton, NJ
2305	1000004	2	2020-02-27 17:05:20.461+00	name	Clara Barton, NJ	Clara Barton - Southbound, NJ
2310	1000004	1	2020-02-29 01:28:26.222+00	name	\N	Englewood, CO
2255	1000004	4	2020-02-29 01:33:14.986+00	status	CONSTRUCTION	OPEN
2255	1000004	4	2020-02-29 01:33:14.986+00	dateOpened	\N	2020-02-28
485	1000004	4	2020-03-04 03:57:34.839+00	address.street	4361 Granite Drive	4361 Granite Dr
1585	1000004	4	2020-03-04 03:58:22.75+00	address.street	400 Inland Center Drive	400 Inland Center Dr
2135	1000004	4	2020-03-04 04:01:28.801+00	address.street	1181 Locust Street	1181 Locust St
2315	1000004	3	2020-03-05 00:13:23.18+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/super-charger-minnetonka-mn.186934/	https://teslamotorsclub.com/tmc/threads/supercharger-minnetonka-mn.170428
765	1000006	4	2020-02-20 07:18:50.797+00	powerKiloWatt	150	125
765	1000006	4	2020-02-20 07:18:50.797+00	developerNotes	email saying now has 8 stalls	SInce opening of the nearby Biberwier SuC now 125 kW on in-car map.
765	1000006	4	2020-02-20 07:18:50.797+00	address.street	Hotel MOHR life resort 40 Innsbruckerstrasse	Innsbruckerstrasse 40
2290	1000004	2	2020-02-21 12:23:03.809+00	locationId	\N	ontarioorsupercharger
2005	1000004	5	2020-02-25 00:39:27.422+00	locationId	\N	mapleshadenjsupercharger
1970	1000004	3	2020-02-27 23:22:25.46+00	status	CONSTRUCTION	OPEN
1970	1000004	3	2020-02-27 23:22:25.46+00	dateOpened	\N	2020-02-27
2315	1000004	1	2020-03-02 17:25:31.399+00	name	\N	Minnetonka, MN
2315	1000006	2	2020-03-04 15:40:40.758+00	locationId	\N	minnetonkasupercharger
2320	1000004	1	2020-03-05 00:19:09.717+00	name	\N	Baltimore - Canton, MD
2210	1000006	6	2020-03-05 15:08:31.936+00	latitude	23.496492425305245	23.496492
2210	1000006	6	2020-03-05 15:08:31.936+00	longitude	120.38757741451	120.387577
435	1000006	6	2020-03-05 15:10:46.352+00	latitude	59.5006239	59.500624
435	1000006	6	2020-03-05 15:10:46.352+00	longitude	17.926818000000026	17.926818
1840	1000006	8	2020-03-05 15:20:50.602+00	latitude	61.0644288433132	61.064428
1840	1000006	8	2020-03-05 15:20:50.602+00	longitude	7.509793639183045	7.509793
2185	1000006	6	2020-03-05 15:21:59.272+00	latitude	59.808633535359775	59.808633
2185	1000006	6	2020-03-05 15:21:59.272+00	longitude	10.299022793769	10.299023
1570	1000006	7	2020-03-05 15:25:11.092+00	latitude	58.63192047285978	58.63192
1570	1000006	7	2020-03-05 15:25:11.092+00	longitude	6.07776761054992	6.077767
2240	1000006	3	2020-03-05 15:26:33.538+00	latitude	45.511805497815615	45.511805
2240	1000006	3	2020-03-05 15:26:33.538+00	longitude	9.6356105804443	9.63561
2140	1000006	7	2020-03-05 15:30:55.391+00	latitude	46.27415222360221	46.274152
2140	1000006	7	2020-03-05 15:30:55.391+00	longitude	20.10498046875004	20.10498
210	1000006	3	2020-03-05 15:31:19.624+00	latitude	47.8804833333	47.880483
210	1000006	3	2020-03-05 15:31:19.624+00	longitude	10.0397833333	10.039783
2145	1000006	5	2020-03-05 15:32:18.515+00	latitude	61.168440088350515	61.16844
2145	1000006	5	2020-03-05 15:32:18.515+00	longitude	22.68009987173	22.680099
2050	1000004	6	2020-03-06 22:33:16.989+00	status	CLOSED_TEMP	OPEN
2050	1000004	6	2020-03-06 22:33:16.989+00	dateOpened	\N	2020-02-06
2290	1000004	3	2020-03-07 12:54:16.218+00	status	PERMIT	CONSTRUCTION
2290	1000004	3	2020-03-07 12:54:16.218+00	powerKiloWatt	0	250
2290	1000004	4	2020-03-07 12:54:33.252+00	latitude	44.025817827968794	44.025818
2290	1000004	4	2020-03-07 12:54:33.252+00	longitude	-116.9425213336	-116.942521
1970	1000004	5	2020-03-07 12:56:56.444+00	locationId	\N	copiaguenysupercharger
2255	1000004	6	2020-03-07 12:57:20.917+00	locationId	\N	thortoncosupercharger
2100	1000004	6	2020-03-08 08:02:21.054+00	latitude	41.52701754109591	41.527018
2100	1000004	6	2020-03-08 08:02:21.054+00	longitude	-72.77398198843	-72.773982
2070	1000004	6	2020-03-08 08:07:42.828+00	latitude	37.1142333351064	37.114233
2070	1000004	6	2020-03-08 08:07:42.828+00	longitude	-76.4944982528686	-76.494498
2275	1000004	2	2020-03-08 10:26:08.344+00	latitude	37.89873589942231	37.898736
2275	1000004	2	2020-03-08 10:26:08.344+00	longitude	-122.3086720705	-122.308672
1520	1000004	8	2020-03-08 10:27:13.181+00	latitude	37.43453580769586	37.434536
1520	1000004	8	2020-03-08 10:27:13.181+00	longitude	-121.891387403	-121.891387
2305	1000004	3	2020-03-08 10:30:23.459+00	latitude	39.69808200226552	39.698082
2305	1000004	3	2020-03-08 10:30:23.459+00	longitude	-75.396852493286	-75.396852
2325	1000004	1	2020-03-09 20:46:36.765+00	name	\N	Mount Pleasant, IA
2225	1000004	2	2020-03-13 07:54:34.447+00	latitude	37.68645135	37.686451
2225	1000004	2	2020-03-13 07:54:34.447+00	longitude	127.49362973	127.49363
175	1000004	3	2020-03-13 08:00:08.965+00	latitude	40.0173833333	40.017383
175	1000004	3	2020-03-13 08:00:08.965+00	longitude	-79.0771166667	-79.077117
175	1000004	3	2020-03-13 08:00:08.965+00	elevationMeters	640	641
135	1000004	8	2020-03-13 17:17:52.798+00	address.street	530 JFK Memorial Highway	530 JFK Memorial Hwy
450	1000004	4	2020-03-13 17:19:46.034+00	address.street	9400 Overseas Highway	9400 Overseas Hwy
2330	1000004	1	2020-03-15 23:32:49.945+00	name	\N	Deltona, FL
2330	1000004	2	2020-03-15 23:33:07.993+00	locationId	\N	deltonasupercharger
2185	1000006	10	2020-03-16 19:03:53.134+00	stallCount	40	12
2185	1000006	11	2020-03-16 19:04:55.144+00	developerNotes	From internal communications in the mall. Construction expected to start 19th of November	From internal communications in the mall. Construction expected to start 19th of November. Corrected to 12 stalls. Prepared for 40.
1990	1000004	10	2020-03-13 07:57:47.051+00	latitude	46.331698735974335	46.331699
1990	1000004	10	2020-03-13 07:57:47.051+00	longitude	-79.47200775146	-79.472008
2185	1000004	7	2020-03-13 15:03:51.017+00	status	CONSTRUCTION	OPEN
2185	1000004	7	2020-03-13 15:03:51.017+00	dateOpened	\N	2020-03-12
2185	1000004	8	2020-03-13 15:04:51.523+00	address.street	By entrance A of Liertoppen shopping center	CCS Only. By entrance A of Liertoppen shopping center
1530	1000004	10	2020-03-13 17:12:00.882+00	address.street	2610 Bishop Drive	2610 Bishop Dr
2040	1000004	5	2020-03-13 17:14:02.718+00	address.street	464 6th Street	464 6th St
1330	1000004	13	2020-03-13 17:15:13.898+00	address.street	Park Meadows Center Drive	Park Meadows Center Dr
2085	1000004	2	2020-03-14 04:20:41.959+00	status	PERMIT	CONSTRUCTION
1715	1000004	9	2020-03-14 22:23:29.494+00	status	OPEN	CLOSED_TEMP
1715	1000004	9	2020-03-14 22:23:29.494+00	dateOpened	2018-10-06	\N
1715	1000004	9	2020-03-14 22:23:29.494+00	developerNotes	\N	Oct 6 2018
1715	1000004	10	2020-03-14 22:23:43.334+00	status	CLOSED_TEMP	OPEN
1715	1000004	10	2020-03-14 22:23:43.334+00	dateOpened	\N	2018-10-06
1715	1000004	10	2020-03-14 22:23:43.334+00	developerNotes	Oct 6 2018	\N
1715	1000004	11	2020-03-14 22:23:47.431+00	stallCount	12	20
2185	1000004	12	2020-03-17 03:30:16.226+00	developerNotes	From internal communications in the mall. Construction expected to start 19th of November. Corrected to 12 stalls. Prepared for 40.	CCS Only. \r\nFrom internal communications in the mall. Construction expected to start 19th of November. Corrected to 12 stalls. Prepared for 40.
2185	1000004	12	2020-03-17 03:30:16.226+00	address.street	CCS Only. By entrance A of Liertoppen shopping center	By entrance A of Liertoppen shopping center
2260	1000004	4	2020-03-19 17:33:50.538+00	powerKiloWatt	72	58
2025	1000004	9	2020-03-12 19:36:54.424+00	status	CLOSED_TEMP	OPEN
2025	1000004	9	2020-03-12 19:36:54.424+00	dateOpened	\N	2019-12-20
2340	1000004	1	2020-03-28 15:04:58.178+00	name	\N	Adelanto, CA
2195	1000004	4	2020-03-24 12:36:13.68+00	locationId	\N	michigancityinsupercharger
2195	1000004	4	2020-03-24 12:36:13.68+00	status	CONSTRUCTION	OPEN
2195	1000004	4	2020-03-24 12:36:13.68+00	dateOpened	\N	2020-03-24
2195	1000004	4	2020-03-24 12:36:13.68+00	latitude	41.673833415189605	41.673833
2195	1000004	4	2020-03-24 12:36:13.68+00	longitude	-86.89123392105	-86.891234
2195	1000004	4	2020-03-24 12:36:13.68+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-michigan-city-in.174093/#post-4245530	https://teslamotorsclub.com/tmc/threads/supercharger-michigan-city-in.174093
2195	1000004	4	2020-03-24 12:36:13.68+00	address.street	5150 Franklin St,	5150 Franklin St
2260	1000004	5	2020-03-25 07:03:27.833+00	locationId	\N	twhsinchuzhubeisupercharger
2045	1000004	7	2020-03-28 22:10:38.62+00	status	CONSTRUCTION	OPEN
2045	1000004	7	2020-03-28 22:10:38.62+00	dateOpened	\N	2020-03-29
2045	1000004	7	2020-03-28 22:10:38.62+00	powerKiloWatt	0	150
2045	1000004	8	2020-03-28 23:43:51.329+00	dateOpened	2020-03-29	2020-03-28
1905	1000004	4	2020-03-30 04:36:16.991+00	address.street	999 West Century Avenue	999 W Century Ave
175	1000004	4	2020-03-30 04:37:03.446+00	address.street	1030 North Center Avenue	1030 N Center Ave
1295	1000004	6	2020-03-30 04:38:38.841+00	address.street	3801 East Washington Avenue	3801 E Washington Ave
2045	1000004	9	2020-04-02 03:19:35.695+00	locationId	\N	nocatocasupercharger
2085	1000004	3	2020-04-07 15:29:33.872+00	status	CONSTRUCTION	OPEN
2085	1000004	3	2020-04-07 15:29:33.872+00	dateOpened	\N	2020-04-06
2085	1000004	4	2020-04-07 15:29:39.324+00	developerNotes	2019-08-28: Most likely V3 - to confirm when construction starts	\N
2085	1000004	5	2020-04-07 15:29:44.853+00	powerKiloWatt	0	250
2045	1000004	9	2020-04-02 03:19:35.695+00	developerNotes	\N	Erroneously listed as "Nocato" by Tesla
2045	1000004	10	2020-04-02 12:21:45.904+00	locationId	nocatocasupercharger	novatocasupercharger
2045	1000004	10	2020-04-02 12:21:45.904+00	developerNotes	Erroneously listed as "Nocato" by Tesla	\N
2350	1000004	1	2020-04-06 08:13:46.206+00	name	\N	Gympie, QLD
2085	1000004	6	2020-04-08 13:17:51.344+00	locationId	riversideparkflsupercharger	fortlauderdaleflsupercharger
2355	1000004	1	2020-04-13 18:29:10.157+00	name	\N	Casper, WY
2355	1000004	2	2020-04-14 19:07:23.708+00	status	PERMIT	CONSTRUCTION
2355	1000004	3	2020-04-15 23:33:34.713+00	latitude	42.847243	42.846691
2355	1000004	3	2020-04-15 23:33:34.713+00	longitude	-106.215133	-106.214485
2355	1000004	3	2020-04-15 23:33:34.713+00	elevationMeters	1569	1570
2360	1000006	1	2020-04-18 08:02:22.808+00	name	\N	Langrønningen, Norway
2350	1000004	2	2020-04-18 15:56:13.277+00	hours	\N	7am to 9pm
2360	1000006	2	2020-04-20 19:45:54.87+00	stallCount	40	20
2365	1000004	1	2020-04-21 19:34:26.844+00	name	\N	Ashland, NH
2330	1000004	3	2020-04-25 16:15:00.912+00	status	CONSTRUCTION	OPEN
2330	1000004	3	2020-04-25 16:15:00.912+00	dateOpened	\N	2020-04-25
2330	1000004	4	2020-04-25 16:15:10.093+00	powerKiloWatt	0	250
2370	1000004	1	2020-04-27 20:58:50.468+00	name	\N	Miami - Dadeland, FL
2310	1000004	4	2020-05-05 16:42:50.227+00	name	Englewood, CO	Centennial, CO
2330	1000004	5	2020-05-06 13:14:50.987+00	locationId	deltonasupercharger	Deltonaflsupercharger
400	1000004	3	2020-05-06 15:35:59.73+00	stallCount	6	16
400	1000004	3	2020-05-06 15:35:59.73+00	developerNotes	2016-01-03: Changed stall count to '6' to match Tesla site.	2016-01-03: Changed stall count to '6' to match Tesla site.\r\n2020-05-06: RVG: updated stall count to 16 as per message by jramskov
400	1000006	4	2020-05-06 16:02:03.879+00	stallCount	16	6
400	1000006	4	2020-05-06 16:02:03.879+00	developerNotes	2016-01-03: Changed stall count to '6' to match Tesla site.\r\n2020-05-06: RVG: updated stall count to 16 as per message by jramskov	2016-01-03: Changed stall count to '6' to match Tesla site.\r\n2020-05-06: Please be aware that unlike Tesla we have two sites Åbenrå and Rødekro for this location with 6 and 10 stalls.
1210	1000004	11	2020-05-09 04:57:13.133+00	latitude	53.4861362	53.486136
1210	1000004	11	2020-05-09 04:57:13.133+00	longitude	-113.5157459	-113.515746
910	1000004	9	2020-05-09 04:57:31.278+00	latitude	49.72499119541202	49.724991
910	1000004	9	2020-05-09 04:57:31.278+00	longitude	-113.39733611111	-113.397336
2245	1000004	2	2020-05-09 04:58:34.774+00	latitude	45.084312584947156	45.084313
2245	1000004	2	2020-05-09 04:58:34.774+00	longitude	-77.86111593246	-77.861116
400	1000004	5	2020-05-06 18:11:45.355+00	urlDiscuss	http://teslaforum.dk/forum/topic/tesla-supercharger-superlader?&page=26	\N
2025	1000004	10	2020-05-09 04:52:08.059+00	latitude	49.908628083528	49.908628
2025	1000004	10	2020-05-09 04:52:08.059+00	longitude	-109.4720649719238	-109.472065
2310	1000004	3	2020-05-04 18:30:47.866+00	name	Centennial, CO	Englewood, CO
1935	1000004	9	2020-05-10 02:06:27.651+00	locationId	mealhadasupercharger	Mealhadasupercharger
2375	1000006	1	2020-05-18 12:43:37.188+00	name	\N	Loulé, Portugal
2375	1000006	2	2020-05-18 13:02:56.766+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/4701095/
2015	1000004	4	2020-05-22 01:54:36.642+00	latitude	45.727921615599925	45.727922
2015	1000004	4	2020-05-22 01:54:36.642+00	longitude	-73.51101815700532	-73.511018
2380	1000004	1	2020-05-24 18:30:55.317+00	name	\N	Peterborough, ON
2385	1000004	1	2020-05-25 16:36:29.489+00	name	\N	Salem, OR
2385	1000006	2	2020-05-28 21:18:15.833+00	locationId	\N	salemoregonsupercharger
2380	1000006	2	2020-05-28 21:24:03.702+00	locationId	\N	peterboroughonsupercharger
2245	1000006	3	2020-05-28 21:26:00.472+00	locationId	\N	bancroftsupercharger
2360	1000006	3	2020-05-28 21:27:46.01+00	locationId	\N	langronningen
1560	1000004	4	2020-05-29 10:36:33.346+00	status	CONSTRUCTION	OPEN
1560	1000004	4	2020-05-29 10:36:33.346+00	dateOpened	\N	2020-05-29
1560	1000004	4	2020-05-29 10:36:33.346+00	stallCount	8	4
1560	1000004	4	2020-05-29 10:36:33.346+00	powerKiloWatt	0	250
1560	1000004	4	2020-05-29 10:36:33.346+00	developerNotes	\N	2020-05-29: 4 of 8 stalls active initially
2390	1000004	1	2020-05-29 22:04:22.325+00	name	\N	San Francisco - Geary Blvd, CA
1560	1000004	5	2020-05-31 03:12:26.971+00	locationId	fargosupercharger	fargondsupercharger
2275	1000004	3	2020-05-31 12:14:29.196+00	status	CONSTRUCTION	OPEN
2275	1000004	3	2020-05-31 12:14:29.196+00	dateOpened	\N	2020-05-30
2275	1000004	5	2020-06-01 06:27:12.35+00	locationId	berkeleysupercharger	richmondcapiercestreetsupercharger
2275	1000004	5	2020-06-01 06:27:12.35+00	name	Berkeley, CA	Richmond - Pierce St, CA
2275	1000004	5	2020-06-01 06:27:12.35+00	address.city	El Cerrito	Richmond
2390	1000004	2	2020-05-29 22:41:38.853+00	stallCount	20	34
2275	1000004	4	2020-05-31 13:21:55.812+00	locationId	\N	berkeleysupercharger
2275	1000004	4	2020-05-31 13:21:55.812+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-berkeley-possibly-under-construction-dec-2019-probably-16-stalls.183905/	https://teslamotorsclub.com/tmc/threads/supercharger-berkeley-live-may-30-2020-16-v3-stalls.183905
2275	1000004	4	2020-05-31 13:21:55.812+00	stallCount	16	12
2275	1000004	4	2020-05-31 13:21:55.812+00	powerKiloWatt	0	250
2275	1000004	4	2020-05-31 13:21:55.812+00	developerNotes	\N	2020-05-31: 12 of 16 stalls active
1560	1000004	6	2020-06-07 17:28:56.204+00	stallCount	4	8
1560	1000004	6	2020-06-07 17:28:56.204+00	developerNotes	2020-05-29: 4 of 8 stalls active initially	2020-05-29: 4 of 8 stalls active initially\r\nJun7: all stalls active (supposedly)
2395	1000004	1	2020-06-08 21:16:01.747+00	name	\N	Denver - University Hills, CO
2395	1000004	2	2020-06-08 22:19:21.667+00	powerKiloWatt	250	0
2395	1000004	3	2020-06-08 22:19:30.748+00	latitude	39.66620212	39.666202
2395	1000004	3	2020-06-08 22:19:30.748+00	longitude	-104.93688941	-104.936889
1560	1000004	7	2020-06-09 18:48:03.586+00	stallCount	8	4
2370	1000004	2	2020-06-11 23:42:14.447+00	status	CONSTRUCTION	OPEN
2370	1000004	2	2020-06-11 23:42:14.447+00	dateOpened	\N	2020-06-11
2370	1000004	3	2020-06-13 00:51:14.027+00	locationId	\N	miamiflsouthdixiehighwaysupercharger
2370	1000004	3	2020-06-13 00:51:14.027+00	name	Miami - Dadeland, FL	Miami - South Dixie Highway, FL
2400	1000004	1	2020-06-13 02:52:04.209+00	name	\N	Mangaweka, New Zealand
2310	1000004	5	2020-06-13 14:46:52.048+00	locationId	\N	centennialcosupercharger
2310	1000004	5	2020-06-13 14:46:52.048+00	status	CONSTRUCTION	OPEN
2310	1000004	5	2020-06-13 14:46:52.048+00	dateOpened	\N	2020-06-14
2310	1000004	5	2020-06-13 14:46:52.048+00	latitude	39.5672182	39.567218
2310	1000004	5	2020-06-13 14:46:52.048+00	longitude	-104.8779278	-104.877928
2385	1000004	3	2020-06-16 13:34:28.788+00	status	PERMIT	CONSTRUCTION
1565	1000004	4	2020-06-17 20:49:39.637+00	status	CONSTRUCTION	OPEN
1565	1000004	4	2020-06-17 20:49:39.637+00	dateOpened	\N	2020-06-17
1565	1000004	5	2020-06-17 20:49:45.231+00	powerKiloWatt	0	250
410	1000004	2	2020-06-26 20:34:30.701+00	stallCount	6	10
410	1000004	2	2020-06-26 20:34:30.701+00	powerKiloWatt	0	250
2075	1000004	3	2020-06-16 02:56:42.555+00	latitude	40.659304	40.662806
2075	1000004	3	2020-06-16 02:56:42.555+00	longitude	-74.173692	-74.173611
2075	1000004	3	2020-06-16 02:56:42.555+00	elevationMeters	5	6
1905	1000004	5	2020-06-20 18:42:45.545+00	status	CONSTRUCTION	OPEN
1905	1000004	5	2020-06-20 18:42:45.545+00	dateOpened	\N	2020-06-20
1905	1000004	7	2020-06-21 01:14:52.528+00	address.city	Bicmarck	Bismarck
2405	1000004	3	2020-06-24 20:14:09.298+00	powerKiloWatt	0	250
1905	1000004	6	2020-06-20 19:33:19.306+00	powerKiloWatt	0	250
2405	1000004	1	2020-06-22 23:31:08.625+00	name	\N	Beaumont, CA
2405	1000004	2	2020-06-22 23:35:11.162+00	stallCount	12	20
2380	1000004	3	2020-06-23 01:51:27.148+00	status	PERMIT	CONSTRUCTION
400	1000004	6	2020-06-23 09:09:21.084+00	address.street	By 7-eleven	Shell/7eleven 1 Kometvej
2295	1000004	3	2020-06-23 21:26:41.564+00	stallCount	8	6
2295	1000004	3	2020-06-23 21:26:41.564+00	developerNotes	\N	confirmed onsite 6 foundations for charge stalls and 3 sub frames for Charge units. 6 Bays.
2410	1000004	1	2020-06-29 15:40:13.214+00	name	\N	Taipei - NTU Xinhai, Taiwan
2360	1000006	4	2020-06-29 22:51:30.96+00	status	CONSTRUCTION	OPEN
2360	1000006	4	2020-06-29 22:51:30.96+00	dateOpened	\N	2020-06-30
2360	1000006	5	2020-06-29 22:52:18.972+00	developerNotes	\N	Official opening soon. Works according to people who tried.
1985	1000004	4	2020-06-30 10:05:07.797+00	status	CONSTRUCTION	OPEN
1985	1000004	4	2020-06-30 10:05:07.797+00	dateOpened	\N	2020-06-30
1985	1000004	4	2020-06-30 10:05:07.797+00	urlDiscuss	https://teslamotorsclub.com/tmc/posts/3694833/	https://teslamotorsclub.com/tmc/posts/4796384/
1985	1000004	4	2020-06-30 10:05:07.797+00	powerKiloWatt	0	150
2355	1000004	4	2020-06-30 13:02:37.189+00	name	Casper, WY	Evansville, WY
2355	1000004	5	2020-06-30 22:07:13.022+00	developerNotes	\N	Can’t we call it Casper to avoid confusion??
2355	1000004	6	2020-07-02 01:19:57.409+00	status	CONSTRUCTION	OPEN
2355	1000004	6	2020-07-02 01:19:57.409+00	dateOpened	\N	2020-07-02
2355	1000004	6	2020-07-02 01:19:57.409+00	developerNotes	Can’t we call it Casper to avoid confusion??	Can’t we call it Casper to avoid confusion??\r\nNote: Tesla calls it Evansville as per: https://teslamotorsclub.com/tmc/posts/4790728/
2405	1000004	4	2020-07-02 01:22:08.079+00	status	CONSTRUCTION	OPEN
2405	1000004	4	2020-07-02 01:22:08.079+00	dateOpened	\N	2020-07-02
2405	1000004	4	2020-07-02 01:22:08.079+00	developerNotes	\N	Note: Nav display only shows 17 stalls - to confirm
105	1000004	5	2020-07-03 02:15:55.372+00	stallCount	8	42
105	1000004	5	2020-07-03 02:15:55.372+00	powerKiloWatt	150	250
105	1000004	5	2020-07-03 02:15:55.372+00	developerNotes	New 24 stall V3 planned for next door - discussion as to whether this is upgrade or new: https://teslamotorsclub.com/tmc/posts/4202027/	2020-07-03: Now 42 stalls available, mix of 72 kW, 150 kW and 250 kW - expect to reduce to 28x 250 kW stalls as old units are removed.
105	1000004	6	2020-07-04 03:01:01.785+00	stallCount	42	36
105	1000004	6	2020-07-04 03:01:01.785+00	developerNotes	2020-07-03: Now 42 stalls available, mix of 72 kW, 150 kW and 250 kW - expect to reduce to 28x 250 kW stalls as old units are removed.	2020-07-03: Now 42 stalls available, mix of 72 kW, 150 kW and 250 kW - expect to reduce to 28x 250 kW stalls as old units are removed.\r\n2020-07-04: Website reporting 36 stalls (150 kW and 250 kW units only?)
2415	1000004	1	2020-07-06 16:13:34.433+00	name	\N	Tainan Art Museum, Taiwan
2415	1000004	2	2020-07-06 16:13:43.981+00	name	Tainan Art Museum, Taiwan	Tainan - Art Museum, Taiwan
2360	1000004	6	2020-07-06 22:16:10.011+00	locationId	langronningen	bamblesupercharger
2360	1000004	6	2020-07-06 22:16:10.011+00	name	Langrønningen, Norway	Bamble, Norway
2360	1000004	6	2020-07-06 22:16:10.011+00	latitude	58.97125615728579	58.971256
2360	1000004	6	2020-07-06 22:16:10.011+00	longitude	9.51243817806244	9.512438
2360	1000004	6	2020-07-06 22:16:10.011+00	developerNotes	Official opening soon. Works according to people who tried.	\N
2355	1000004	7	2020-07-06 22:25:03.078+00	locationId	casperwysupercharger	evansvillewysupercharger
2355	1000004	7	2020-07-06 22:25:03.078+00	address.street	6801 E Nugget	6985 Nugget St
2235	1000004	3	2020-07-09 01:13:21.549+00	locationId	\N	bothellwasupercharger
2235	1000004	3	2020-07-09 01:13:21.549+00	status	CONSTRUCTION	OPEN
2235	1000004	3	2020-07-09 01:13:21.549+00	dateOpened	\N	2020-07-09
2235	1000004	3	2020-07-09 01:13:21.549+00	latitude	47.76760644	47.767606
2235	1000004	3	2020-07-09 01:13:21.549+00	longitude	-122.19171166	-122.191712
2415	1000004	3	2020-07-09 06:02:24.046+00	locationId	\N	tnamsupercharger
2415	1000004	4	2020-07-09 06:02:37.465+00	latitude	22.990135716607423	22.990136
2415	1000004	4	2020-07-09 06:02:37.465+00	longitude	120.20094394683	120.200944
2405	1000004	5	2020-07-09 06:06:11.734+00	locationId	\N	beaumontcasupercharger
2410	1000004	2	2020-07-09 06:10:45.558+00	locationId	\N	ntusupercharger
2410	1000004	2	2020-07-09 06:10:45.558+00	stallCount	4	3
2185	1000006	13	2020-07-10 21:38:20.362+00	stallCount	12	24
2185	1000006	13	2020-07-10 21:38:20.362+00	developerNotes	CCS Only. \r\nFrom internal communications in the mall. Construction expected to start 19th of November. Corrected to 12 stalls. Prepared for 40.	CCS Only. \r\nFrom internal communications in the mall. Construction expected to start 19th of November. Corrected to 12 stalls. Prepared for 40.\r\n10.07: Expanded to 24 stalls.
2420	1000004	1	2020-07-12 02:16:31.119+00	name	\N	Bells Corners, ON
2420	1000004	2	2020-07-12 18:36:01.531+00	name	Bells Corners, ON	Nepean, ON
2420	1000004	3	2020-07-12 18:36:28.452+00	address.city	Bells Corner	Ottawa
2420	1000004	4	2020-07-12 18:36:41.296+00	address.city	Ottawa	Nepean, Ottawa
2385	1000004	4	2020-07-21 05:50:26.077+00	stallCount	8	10
2385	1000004	4	2020-07-21 05:50:26.077+00	powerKiloWatt	0	250
1575	1000004	2	2020-07-19 21:50:55.797+00	address.city	Sha Tin	Sha Tin, New Territories
1575	1000004	2	2020-07-19 21:50:55.797+00	address.state	New Territories	Hong Kong
2235	1000004	4	2020-07-19 23:21:13.484+00	stallCount	12	10
2425	1000004	1	2020-07-21 23:45:40.968+00	name	\N	Reykjavik - Fossvogi, Iceland
2425	1000004	2	2020-07-21 23:46:54.552+00	name	Reykjavik - Fossvogi, Iceland	Kópavogur, Iceland
2285	1000004	2	2020-07-24 17:19:32.092+00	powerKiloWatt	0	250
2430	1000004	1	2020-07-26 01:31:30.31+00	name	\N	Whangarei, New Zealand
2425	1000004	3	2020-07-27 21:29:22.54+00	status	CONSTRUCTION	OPEN
2425	1000004	3	2020-07-27 21:29:22.54+00	dateOpened	\N	2020-07-27
2425	1000004	4	2020-07-27 21:29:30.965+00	powerKiloWatt	150	120
2425	1000004	5	2020-07-27 21:29:59.686+00	name	Kópavogur, Iceland	Fossvogur, Iceland
2425	1000004	6	2020-07-27 21:32:11.01+00	urlDiscuss	https://forum.supercharge.info/t/first-supercharger-in-iceland/903/11	https://teslamotorsclub.com/tmc/threads/first-supercharger-in-iceland-opening.178557/page-4
2435	1000004	1	2020-07-29 20:05:13.486+00	name	\N	Stafford Northbound, UK
2420	1000004	5	2020-07-29 20:36:32.945+00	powerKiloWatt	0	250
2055	1000006	2	2020-07-31 13:24:16.779+00	latitude	47.887974436939366	47.887974
2055	1000006	2	2020-07-31 13:24:16.779+00	longitude	-97.08076357841	-97.080763
2315	1000004	4	2020-08-01 01:00:07.586+00	status	PERMIT	CONSTRUCTION
2315	1000004	4	2020-08-01 01:00:07.586+00	powerKiloWatt	0	250
1985	1000004	5	2020-08-02 05:46:21.029+00	locationId	colchestersupercharger	Colchestersupercharger
2425	1000004	7	2020-08-02 05:49:00.7+00	locationId	\N	fossvogursupercharger
2300	1000004	2	2020-08-02 17:52:46.847+00	status	PERMIT	CONSTRUCTION
2080	1000006	4	2020-08-02 18:03:55.336+00	urlDiscuss	http://www.clubtesla.es/foro/puntos-de-recarga/supercharger-salamanca/	https://foro.clubtesla.es/index.php?topic=3692.0#forum
2440	1000004	1	2020-08-03 02:37:30.048+00	name	\N	Petersburg, VA
2365	1000004	2	2020-08-04 18:56:26.973+00	status	PERMIT	CONSTRUCTION
2165	1000006	4	2020-08-05 11:27:08.549+00	status	CONSTRUCTION	OPEN
2165	1000006	4	2020-08-05 11:27:08.549+00	dateOpened	\N	2020-08-04
2380	1000006	4	2020-08-06 15:13:22.238+00	status	CONSTRUCTION	OPEN
2380	1000006	4	2020-08-06 15:13:22.238+00	dateOpened	\N	2020-08-06
2380	1000006	4	2020-08-06 15:13:22.238+00	stallCount	7	8
2380	1000006	4	2020-08-06 15:13:22.238+00	powerKiloWatt	0	250
2065	1000006	5	2020-11-02 01:42:38.092+00	stallCount	8	20
2380	1000004	5	2020-08-07 05:51:55.198+00	locationId	peterboroughonsupercharger	peterboroughonlansdownestreetwestsupercharger
2445	1000004	1	2020-08-08 01:10:20.59+00	name	\N	Medford, OR
2445	1000004	2	2020-08-08 01:29:45.818+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/another-odd-one-medford-or-supercharger-destination-chargers.202603/	https://teslamotorsclub.com/tmc/threads/supercharger-medford-or.202603/
2295	1000004	4	2020-08-08 19:22:02.473+00	status	PERMIT	CONSTRUCTION
2295	1000004	4	2020-08-08 19:22:02.473+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/uk-supercharger-site-news.91118/page-62#post-4488671	https://teslamotorsclub.com/tmc/threads/uk-supercharger-site-news.91118/page-84#post-4899097
2295	1000004	4	2020-08-08 19:22:02.473+00	powerKiloWatt	0	250
2440	1000006	3	2020-08-10 18:43:36.382+00	latitude	37.190048	37.1906
2440	1000006	3	2020-08-10 18:43:36.382+00	longitude	-77.366291	-77.3663
2450	1000006	1	2020-08-12 07:40:14.479+00	name	\N	Wört an der Isar, Germnany
2450	1000006	2	2020-08-12 07:40:22.141+00	urlDiscuss	https://tff-forum.de/t/supercharger-in-deutschland/5786/8442?u=ibuza	https://tff-forum.de/t/supercharger-in-deutschland/5786/8442
2450	1000006	3	2020-08-12 07:41:34.419+00	name	Wört an der Isar, Germnany	Wört an der Isar, Germany
2450	1000006	4	2020-08-12 07:45:52.472+00	stallCount	12	8
2450	1000006	4	2020-08-12 07:45:52.472+00	developerNotes	\N	8 stalls at first with preparation for 4 more
2385	1000004	5	2020-08-15 13:51:16.937+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/salem-or-supercharger.114916/#post-4714593	https://teslamotorsclub.com/tmc/threads/supercharger-salem-or.202878
2440	1000006	2	2020-08-10 02:19:07.822+00	status	PERMIT	CONSTRUCTION
2450	1000006	5	2020-08-12 08:28:49.471+00	latitude	48.626413	48.625639
2450	1000006	5	2020-08-12 08:28:49.471+00	longitude	12.320078	12.320222
380	1000004	4	2020-08-12 13:34:27.925+00	urlDiscuss	\N	https://forum.teslafans.ch/viewtopic.php?f=25&t=7942
380	1000004	4	2020-08-12 13:34:27.925+00	stallCount	8	20
380	1000004	4	2020-08-12 13:34:27.925+00	powerKiloWatt	125	250
380	1000004	4	2020-08-12 13:34:27.925+00	developerNotes	\N	Added 12 stalls V3 as per:\r\nhttps://forum.teslafans.ch/viewtopic.php?f=25&t=7942\r\nhttps://t.co/zZv7VgngKl\r\nhttps://t.co/kppZ8KsvUG
2455	1000004	1	2020-08-17 19:44:49.68+00	name	\N	Ozark, AR
2455	1000004	2	2020-08-18 18:29:51.575+00	powerKiloWatt	0	250
410	1000004	3	2020-08-18 21:48:53.879+00	powerKiloWatt	250	150
2445	1000006	3	2020-08-19 01:05:14.076+00	status	PERMIT	CONSTRUCTION
2460	1000004	1	2020-08-21 16:16:33.665+00	name	\N	Birmingham-Small Heath, UK
2365	1000004	3	2020-08-21 17:48:18.544+00	status	CONSTRUCTION	OPEN
2365	1000004	3	2020-08-21 17:48:18.544+00	dateOpened	\N	2020-08-21
380	1000006	6	2020-08-22 10:08:29.27+00	urlDiscuss	https://forum.teslafans.ch/viewtopic.php?f=25&t=7942	https://tff-forum.de/t/supercharger-in-der-schweiz/3319/4140
380	1000006	6	2020-08-22 10:08:29.27+00	stallCount	20	16
380	1000006	6	2020-08-22 10:08:29.27+00	developerNotes	Added 12 stalls V3 as per:\r\nhttps://forum.teslafans.ch/viewtopic.php?f=25&t=7942\r\nhttps://t.co/zZv7VgngKl\r\nhttps://t.co/kppZ8KsvUG	Corrected number of stalls since 4 V3 are not yet build.\r\nhttps://t.co/zZv7VgngKl\r\nhttps://t.co/kppZ8KsvUG
2285	1000004	3	2020-08-23 00:57:36.097+00	stallCount	14	12
2315	1000004	5	2020-08-26 23:00:58.476+00	status	CONSTRUCTION	OPEN
2315	1000004	5	2020-08-26 23:00:58.476+00	dateOpened	\N	2020-08-27
2465	1000004	1	2020-08-27 03:03:08.344+00	name	\N	New Taipei City, Taiwan
2375	1000004	3	2020-08-24 18:58:40.767+00	status	CONSTRUCTION	OPEN
2375	1000004	3	2020-08-24 18:58:40.767+00	dateOpened	\N	2020-08-24
2375	1000004	3	2020-08-24 18:58:40.767+00	developerNotes	\N	8x250 CCS only
2075	1000004	4	2020-08-25 17:47:16.892+00	status	CONSTRUCTION	OPEN
2075	1000004	4	2020-08-25 17:47:16.892+00	dateOpened	\N	2020-08-25
2075	1000004	4	2020-08-25 17:47:16.892+00	hours	\N	24/7
2075	1000004	5	2020-08-25 17:49:23.338+00	locationId	elizabethnewjerseysupercharger	elizabethnjsupercharger
2075	1000004	6	2020-08-25 19:29:55.284+00	hours	24/7	\N
2365	1000004	4	2020-08-25 21:53:22.502+00	locationId	\N	ashlandnhsupercharger
2375	1000006	4	2020-08-27 04:55:08.586+00	locationId	loulesupercharger	faroptsupercharger
2305	1000004	4	2020-08-27 21:24:04.433+00	name	Clara Barton - Southbound, NJ	Pedricktown (Southbound), NJ
2470	1000004	1	2020-08-29 20:03:36.048+00	name	\N	South Fremont, CA
2470	1000004	2	2020-08-30 20:02:38.632+00	name	South Fremont, CA	Fremont - Pacific Commons, CA
2475	1000004	1	2020-08-31 22:25:13.916+00	name	\N	San Clemente - Target Vista Hermosa, CA
2475	1000004	2	2020-09-01 12:09:50.773+00	name	San Clemente - Target Vista Hermosa, CA	San Clemente - Vista Hermosa, CA
2475	1000004	3	2020-09-01 12:10:02.486+00	name	San Clemente - Vista Hermosa, CA	San Clemente - Av. Vista Hermosa, CA
2480	1000006	2	2020-09-04 21:51:08.372+00	latitude	69.96079887822562	69.960798
2480	1000006	2	2020-09-04 21:51:08.372+00	longitude	23.2294911146163	23.229491
665	1000004	12	2020-09-05 09:42:07.127+00	status	OPEN	CLOSED_TEMP
665	1000004	12	2020-09-05 09:42:07.127+00	dateOpened	2016-12-19	\N
665	1000004	12	2020-09-05 09:42:07.127+00	urlDiscuss	https://www.reddit.com/r/teslamotors/comments/5j8lf1/third_supercharger_opened_in_poland_this_year/	https://www.facebook.com/groups/EVdriversPL/permalink/1585119578358241/
665	1000004	12	2020-09-05 09:42:07.127+00	developerNotes	\N	https://www.facebook.com/groups/EVdriversPL/permalink/1585119578358241/
2455	1000004	4	2020-09-05 15:39:43.301+00	status	OPEN	CLOSED_TEMP
2455	1000004	4	2020-09-05 15:39:43.301+00	dateOpened	2020-09-04	\N
2465	1000004	2	2020-09-07 02:11:21.424+00	status	CONSTRUCTION	OPEN
2465	1000004	2	2020-09-07 02:11:21.424+00	dateOpened	\N	2020-09-06
2480	1000006	3	2020-09-07 09:31:38.977+00	stallCount	1	8
2480	1000006	3	2020-09-07 09:31:38.977+00	developerNotes	Unknown number of stalls - waiting for access to public documents	Initial build set at 8. Expansion to 12 is already in the permit. The 12th stall will be for cars with trailer.
2480	1000006	4	2020-09-07 09:35:12.858+00	latitude	69.960798	69.961211
2480	1000006	4	2020-09-07 09:35:12.858+00	longitude	23.229491	23.232935
2290	1000004	5	2020-09-03 12:23:51.592+00	status	CONSTRUCTION	OPEN
2290	1000004	5	2020-09-03 12:23:51.592+00	dateOpened	\N	2020-09-03
2280	1000006	7	2020-09-04 18:35:04.547+00	status	OPEN	CLOSED_PERM
2280	1000006	7	2020-09-04 18:35:04.547+00	dateOpened	2020-02-15	\N
2280	1000006	7	2020-09-04 18:35:04.547+00	developerNotes	Open according to: https://tff-forum.de/viewtopic.php?f=68&t=3580&view=unread#p911358	Open according to: https://tff-forum.de/viewtopic.php?f=68&t=3580&view=unread#p911358\r\nClosed according to: https://tff-forum.de/t/supercharger-in-deutschland/5786/8664
2280	1000006	8	2020-09-04 18:52:53.146+00	urlDiscuss	https://tff-forum.de/viewtopic.php?f=68&t=3580&start=4240#p905108	https://tff-forum.de/t/supercharger-in-deutschland/5786/8664
2455	1000004	3	2020-09-04 18:57:18.138+00	status	CONSTRUCTION	OPEN
2455	1000004	3	2020-09-04 18:57:18.138+00	dateOpened	\N	2020-09-04
2480	1000006	1	2020-09-04 21:30:05.041+00	name	\N	Alta, Norway
2455	1000004	5	2020-09-08 14:59:19.976+00	status	CLOSED_TEMP	OPEN
2455	1000004	5	2020-09-08 14:59:19.976+00	dateOpened	\N	2020-09-07
2455	1000006	6	2020-09-09 12:22:56.991+00	locationId	\N	clarksvillesupercharger
2145	1000004	6	2020-09-09 12:56:00.279+00	name	Huittinen, Finland	Huittinen (V3 Under Construction), Finland
2145	1000004	6	2020-09-09 12:56:00.279+00	status	OPEN	CONSTRUCTION
2145	1000004	6	2020-09-09 12:56:00.279+00	dateOpened	2019-10-16	\N
2145	1000004	7	2020-09-09 12:56:37.239+00	status	CONSTRUCTION	OPEN
2145	1000004	7	2020-09-09 12:56:37.239+00	dateOpened	\N	2019-10-16
2145	1000004	7	2020-09-09 12:56:37.239+00	urlDiscuss	https://www.facebook.com/groups/TeslaClubSuomi/permalink/2585088334870015/	https://twitter.com/ernolddd/status/1303634111601487875?s=21
2145	1000004	9	2020-09-09 13:20:52.647+00	name	Huittinen (V3 Under Construction), Finland	Huittinen, Finland
2145	1000004	10	2020-09-09 13:22:31.666+00	urlDiscuss	https://twitter.com/ernolddd/status/1303634111601487875?s=21	\N
2145	1000004	10	2020-09-09 13:22:31.666+00	developerNotes	\N	V3 expansion in progress - https://twitter.com/ernolddd/status/1303634111601487875?s=21
2150	1000006	7	2020-09-09 16:43:02.784+00	stallCount	4	8
2150	1000006	7	2020-09-09 16:43:02.784+00	powerKiloWatt	150	250
2150	1000006	7	2020-09-09 16:43:02.784+00	developerNotes	Deleted hours based on: https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/196	Deleted hours based on: https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/196\r\n\r\nUpdated to 8 stalls and 250kW per https://teslamotorsclub.com/tmc/posts/4970787/
2485	1000004	1	2020-09-09 16:47:26.124+00	name	\N	North Naples, FL
2470	1000004	3	2020-09-09 19:38:45.93+00	status	PERMIT	CONSTRUCTION
2470	1000004	3	2020-09-09 19:38:45.93+00	powerKiloWatt	0	250
2375	1000004	5	2020-09-10 14:31:56.929+00	locationId	faroptsupercharger	loulesupercharger
2465	1000004	3	2020-09-10 14:33:04.823+00	locationId	\N	xizhiasehomesupercharger
2465	1000004	3	2020-09-10 14:33:04.823+00	name	New Taipei City, Taiwan	New Taipei City - Xizhi, Taiwan
2500	1000006	2	2020-09-18 13:06:35.412+00	locationId	\N	karasjoksupercharger
2485	1000006	3	2020-09-18 13:11:23.048+00	locationId	\N	northnaplesflsupercharger
2485	1000004	2	2020-09-11 12:40:09.979+00	status	CONSTRUCTION	PERMIT
2490	1000006	1	2020-09-11 16:18:55.132+00	name	\N	Affoltern am Albis - A4 Northbound, Switzerland
2490	1000006	2	2020-09-11 17:18:12.335+00	developerNotes	Only reachable via Autobahn A4 Northbound.	Only reachable via Autobahn A4 Northbound.\r\n24 Supercharger sockets were delivered.\r\nSecond Supercharger with 12 on southbound rest-stop is also expected.
1610	1000006	9	2020-09-12 16:20:47.878+00	stallCount	16	20
640	1000006	3	2020-09-12 19:20:27.426+00	stallCount	4	6
2065	1000004	4	2020-09-12 23:55:41.975+00	status	PERMIT	CONSTRUCTION
2490	1000006	3	2020-09-13 07:36:10.498+00	powerKiloWatt	0	250
2495	1000004	1	2020-09-14 23:46:22.515+00	name	\N	Irvine - Culver Drive, CA
2500	1000006	1	2020-09-17 12:01:54.274+00	name	\N	Karasjok, Norway
2480	1000006	5	2020-09-18 13:15:07.987+00	locationId	\N	altasupercharger
1560	1000006	8	2020-09-18 13:58:10.455+00	stallCount	4	8
2245	1000004	4	2020-09-19 14:46:43.592+00	status	PERMIT	CONSTRUCTION
2245	1000004	4	2020-09-19 14:46:43.592+00	powerKiloWatt	0	250
2505	1000004	1	2020-09-19 21:22:30.493+00	name	\N	Los Angeles - 668 S Alameda St, CA
2450	1000006	6	2020-09-23 05:25:55.187+00	name	Wört an der Isar, Germany	Wörth an der Isar, Germany
295	1000006	3	2020-09-20 23:58:35.242+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/34079-Supercharger-Auburn-MA	https://teslamotorsclub.com/tmc/threads/supercharger-auburn-ma.34079/
470	1000006	4	2020-09-20 23:59:20.83+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/39069-Auburn-AL-Supercharger	https://teslamotorsclub.com/tmc/threads/auburn-al-supercharger.39069/
2295	1000004	5	2020-09-24 21:27:23.892+00	status	CONSTRUCTION	OPEN
2295	1000004	5	2020-09-24 21:27:23.892+00	dateOpened	\N	2020-09-24
2295	1000004	5	2020-09-24 21:27:23.892+00	developerNotes	confirmed onsite 6 foundations for charge stalls and 3 sub frames for Charge units. 6 Bays.	\N
2510	1000004	1	2020-09-20 14:55:40.028+00	name	\N	Fort Pierce, FL
2515	1000006	1	2020-09-24 11:14:27.321+00	name	\N	Affoltern am Albis - A4 Southbound, Switzerland
2515	1000006	2	2020-09-24 11:22:50.138+00	developerNotes	Only reachable by Autobahn A4	Only reachable by Autobahn A4\r\nPosition is guesswork.\r\nAddress leads google to the correct side of the service station
2515	1000006	2	2020-09-24 11:22:50.138+00	address.street	A4	Eni
2145	1000006	11	2020-09-24 15:55:48.035+00	stallCount	2	6
2145	1000006	11	2020-09-24 15:55:48.035+00	powerKiloWatt	120	250
2145	1000006	11	2020-09-24 15:55:48.035+00	developerNotes	V3 expansion in progress - https://twitter.com/ernolddd/status/1303634111601487875?s=21	2x150kW+4x250kW
1860	1000004	5	2020-09-26 00:28:21.385+00	locationId	\N	marltonnjsupercharger
2520	1000004	1	2020-09-26 07:54:02.45+00	name	\N	Aurora, IL
930	1000006	8	2020-09-26 12:19:27.409+00	powerKiloWatt	0	150
2385	1000004	6	2020-09-29 00:10:41.346+00	stallCount	10	12
2475	1000004	5	2020-10-01 13:25:49.438+00	status	CONSTRUCTION	OPEN
2475	1000004	5	2020-10-01 13:25:49.438+00	dateOpened	\N	2020-10-01
2450	1000004	7	2020-10-01 13:44:08.251+00	status	PERMIT	CONSTRUCTION
2450	1000004	7	2020-10-01 13:44:08.251+00	powerKiloWatt	0	250
1390	1000004	9	2020-10-01 17:36:23.987+00	name	Orlando - W. Sand Lake Rd, FL	Orlando - W Sand Lake Rd, FL
2525	1000004	1	2020-10-01 17:39:49.281+00	name	\N	Montrose, CO
325	1000006	4	2020-10-02 10:08:59.928+00	latitude	60.884145	60.884165
325	1000006	4	2020-10-02 10:08:59.928+00	longitude	11.540043	11.540741
325	1000006	4	2020-10-02 10:08:59.928+00	elevationMeters	44	186
2510	1000004	2	2020-10-02 19:43:02.178+00	status	CONSTRUCTION	OPEN
2510	1000004	2	2020-10-02 19:43:02.178+00	dateOpened	\N	2020-10-02
2545	1000004	2	2020-10-16 19:18:56.283+00	locationId	halethorpemdsupercharger	halethorpesupercharger
2545	1000004	3	2020-10-17 16:08:31.781+00	address.street	3301 Benson Ave	1202 South Caton Ave
2545	1000004	4	2020-10-19 00:53:39.462+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-halethorpe-md.209882/	https://teslamotorsclub.com/tmc/posts/5069213/
2515	1000006	3	2020-10-21 13:03:06.966+00	status	PERMIT	CONSTRUCTION
2515	1000006	3	2020-10-21 13:03:06.966+00	developerNotes	Only reachable by Autobahn A4\r\nPosition is guesswork.\r\nAddress leads google to the correct side of the service station	Only reachable by Autobahn A4\r\nAddress leads Google to the correct side of the service station
2420	1000006	8	2020-10-26 16:19:16.095+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/nepean-superchargers.138678	https://teslamotorsclub.com/tmc/threads/supercharger-nepean-on-robertson-road.138678/
2255	1000004	8	2020-10-14 04:42:12.611+00	locationId	thortoncosupercharger	thorntoncosupercharger
2475	1000004	6	2020-10-03 05:27:23.196+00	locationId	\N	sanclementecaavenidavistahermosasupercharger
2510	1000004	3	2020-10-03 05:27:34.361+00	locationId	\N	forepierceflsupercharger
2535	1000004	1	2020-10-08 18:53:50.826+00	name	\N	Chicago - N Elston Ave, IL
2255	1000004	7	2020-10-10 16:08:45.298+00	stallCount	6	8
225	1000004	6	2020-10-12 12:43:06.05+00	locationId	sundebrusupercharger	brokelandsheiabrusupercharger
225	1000004	6	2020-10-12 12:43:06.05+00	name	Sundebru, Norway	Brokelandsheia, Norway
2320	1000006	2	2020-10-13 13:28:50.318+00	name	Baltimore - Canton, MD	Baltimore - Canton Crossing, MD
2320	1000006	2	2020-10-13 13:28:50.318+00	status	CONSTRUCTION	OPEN
2320	1000006	2	2020-10-13 13:28:50.318+00	dateOpened	\N	2020-10-13
2320	1000004	4	2020-10-13 18:13:30.802+00	stallCount	8	12
2255	1000004	9	2020-10-14 04:44:00.554+00	locationId	thorntoncosupercharger	thortoncosupercharger
2525	1000004	2	2020-10-08 15:41:54.048+00	status	PERMIT	CONSTRUCTION
2320	1000006	3	2020-10-13 15:23:45.081+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-baltimore-md-canton-crossing-possible.159893	https://teslamotorsclub.com/tmc/threads/supercharger-baltimore-md-canton-crossing.159893/
2320	1000006	3	2020-10-13 15:23:45.081+00	powerKiloWatt	0	250
2540	1000004	1	2020-10-14 15:56:20.257+00	name	\N	Louisville - Preston Hwy, KY
2255	1000004	10	2020-10-15 06:04:56.373+00	locationId	thortoncosupercharger	thorntoncosupercharger
2285	1000004	4	2020-10-20 01:23:18.545+00	status	CONSTRUCTION	OPEN
2285	1000004	4	2020-10-20 01:23:18.545+00	dateOpened	\N	2020-10-19
2320	1000006	5	2020-10-20 20:46:52.236+00	name	Baltimore - Canton Crossing, MD	Baltimore - Boston Street, MD
2420	1000004	6	2020-10-24 00:07:52.911+00	status	CONSTRUCTION	OPEN
2420	1000004	6	2020-10-24 00:07:52.911+00	dateOpened	\N	2020-10-23
2545	1000004	1	2020-10-16 16:14:47.468+00	name	\N	Halethorpe, MD
2320	1000006	6	2020-10-21 17:00:13.649+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-baltimore-md-canton-crossing.159893/	https://teslamotorsclub.com/tmc/threads/supercharger-baltimore-md-boston-street.159893/
2420	1000006	7	2020-10-26 13:52:37.803+00	name	Nepean, ON	Nepean - Robertson Road, ON
2455	1000004	7	2020-10-26 15:43:30.428+00	dateOpened	2020-09-07	2020-09-04
1950	1000004	9	2020-10-26 20:50:03.378+00	dateOpened	2020-02-23	2020-02-13
1555	1000004	10	2020-10-27 20:27:47.899+00	dateOpened	2019-12-24	2019-12-12
2420	1000004	9	2020-10-27 20:36:30.521+00	address.city	Nepean, Ottawa	Nepean
1990	1000004	11	2020-10-27 20:38:44.414+00	dateOpened	2019-12-18	2019-12-04
2555	1000006	1	2020-10-27 20:51:17.457+00	name	\N	Entiat, WA
2555	1000004	2	2020-10-27 20:52:06.494+00	powerKiloWatt	0	250
2615	1000004	1	2020-12-18 20:13:06.788+00	name	\N	Venice, FL
2130	1000004	2	2020-10-29 20:21:05.991+00	status	CONSTRUCTION	OPEN
2130	1000004	2	2020-10-29 20:21:05.991+00	dateOpened	\N	2020-02-29
2200	1000004	2	2020-10-29 20:21:17.426+00	status	CONSTRUCTION	OPEN
2200	1000004	2	2020-10-29 20:21:17.426+00	dateOpened	\N	2020-03-29
2520	1000004	2	2020-10-30 23:50:41.112+00	status	CONSTRUCTION	OPEN
2520	1000004	2	2020-10-30 23:50:41.112+00	dateOpened	\N	2020-10-30
2560	1000004	1	2020-10-31 16:48:55.04+00	name	\N	Adderstone, UK
1120	1000004	8	2020-10-31 18:29:16.436+00	urlDiscuss	http://elbilforum.no/forum/index.php/topic,15598.600.html	https://teslaclubsweden.se/forum/viewtopic.php?f=45&t=22943
1120	1000004	8	2020-10-31 18:29:16.436+00	stallCount	16	8
1120	1000004	8	2020-10-31 18:29:16.436+00	developerNotes	\N	Update Oct 31, 2020. 8 stalls removed, 8 stalls left.\r\nWill probably be replaced with V3 soon.
2560	1000004	2	2020-10-31 17:25:42.837+00	longitude	1.791857861446382	-1.791857861446382
2520	1000006	3	2020-10-31 21:46:05.66+00	locationId	\N	aurorail59supercharger
2520	1000006	3	2020-10-31 21:46:05.66+00	name	Aurora, IL	Aurora - IL-59, IL
665	1000004	13	2020-11-01 00:52:22.62+00	status	CLOSED_TEMP	OPEN
665	1000004	13	2020-11-01 00:52:22.62+00	dateOpened	\N	2016-12-19
2065	1000006	5	2020-11-02 01:42:38.092+00	powerKiloWatt	0	72
2445	1000006	4	2020-11-04 20:38:19.014+00	status	CONSTRUCTION	OPEN
2445	1000006	4	2020-11-04 20:38:19.014+00	dateOpened	\N	2020-11-04
2445	1000006	4	2020-11-04 20:38:19.014+00	latitude	42.347435809715584	42.347992
2445	1000006	4	2020-11-04 20:38:19.014+00	longitude	-122.8786897659	-122.878882
2445	1000006	4	2020-11-04 20:38:19.014+00	stallCount	8	12
2445	1000006	5	2020-11-05 04:22:45.706+00	locationId	\N	medfordorsupercharger
2385	1000004	7	2020-11-05 12:51:18.483+00	latitude	44.9389404	44.93894
2385	1000004	7	2020-11-05 12:51:18.483+00	longitude	-122.9879187	-122.987919
2255	1000004	11	2020-11-05 12:57:04.087+00	locationId	thorntoncosupercharger	thortoncosupercharger
2565	1000004	1	2020-11-05 13:16:00.026+00	name	\N	West Kelowna, BC
2385	1000006	8	2020-11-05 21:24:15.933+00	status	CONSTRUCTION	OPEN
2385	1000006	8	2020-11-05 21:24:15.933+00	dateOpened	\N	2020-11-05
2450	1000004	8	2020-11-06 15:01:12.792+00	name	Wörth an der Isar, Germany	Wörth, Germany
2450	1000004	8	2020-11-06 15:01:12.792+00	status	CONSTRUCTION	OPEN
2450	1000004	8	2020-11-06 15:01:12.792+00	dateOpened	\N	2020-11-06
2450	1000006	9	2020-11-09 13:47:56.529+00	locationId	\N	worthsupercharger
2470	1000006	5	2020-11-20 14:32:34.063+00	locationId	\N	fremontcapacificcommonsblvdsupercharger
2515	1000006	5	2020-11-20 14:54:30.47+00	locationId	\N	obfeldensupercharger
2515	1000006	5	2020-11-20 14:54:30.47+00	developerNotes	Only reachable by Autobahn A4\r\nAddress leads Google to the correct side of the service station	Only reachable by Autobahn A4\r\nAddress leads Google to the correct side of the service station\r\nTesla's Find Us map lists obfeldensupercharger as the location id for the southbound station. No location id has appeared yet for the northbound one.
2580	1000006	1	2020-11-20 15:04:22.752+00	name	\N	Cyberport V3, Hong Kong
2400	1000004	2	2020-11-24 11:18:30.917+00	locationId	taihapesupercharger	mangawekasupercharger
2400	1000004	2	2020-11-24 11:18:30.917+00	status	CONSTRUCTION	OPEN
2400	1000004	2	2020-11-24 11:18:30.917+00	dateOpened	\N	2020-11-24
2400	1000004	2	2020-11-24 11:18:30.917+00	powerKiloWatt	0	150
2400	1000004	2	2020-11-24 11:18:30.917+00	address.street	6336B Mangawharariki Road	2 Koraenui St
2430	1000006	2	2020-11-24 23:47:21.097+00	status	PERMIT	CONSTRUCTION
2430	1000006	2	2020-11-24 23:47:21.097+00	latitude	-35.724911	-35.725282
2430	1000006	2	2020-11-24 23:47:21.097+00	longitude	174.318488	174.31861
2430	1000006	2	2020-11-24 23:47:21.097+00	powerKiloWatt	0	120
2605	1000004	2	2020-12-08 15:04:19.356+00	hours	\N	6am-6pm during Covid
2605	1000004	3	2020-12-08 15:04:34.606+00	hours	6am-6pm during Covid	6am-6pm during Covid - paid parking
2605	1000006	5	2020-12-08 15:15:26.269+00	locationId	\N	seattlewa2ndavenuesupercharger
2570	1000004	1	2020-11-11 17:29:33.722+00	name	\N	Land O’ Lakes, FL
2490	1000006	4	2020-11-15 10:15:20.555+00	status	CONSTRUCTION	OPEN
2490	1000006	4	2020-11-15 10:15:20.555+00	dateOpened	\N	2020-11-14
2515	1000006	4	2020-11-15 10:17:06.531+00	status	CONSTRUCTION	OPEN
2515	1000006	4	2020-11-15 10:17:06.531+00	dateOpened	\N	2020-11-14
2490	1000006	6	2020-11-15 10:17:48.248+00	developerNotes	Only reachable via Autobahn A4 Northbound.\r\n24 Supercharger sockets were delivered.\r\nSecond Supercharger with 12 on southbound rest-stop is also expected.	Only reachable via Autobahn A4 Northbound.
2280	1000006	9	2020-12-01 15:17:32.441+00	status	CLOSED_PERM	OPEN
2280	1000006	9	2020-12-01 15:17:32.441+00	dateOpened	\N	2020-11-30
2280	1000006	9	2020-12-01 15:17:32.441+00	powerKiloWatt	125	150
2280	1000006	9	2020-12-01 15:17:32.441+00	developerNotes	Open according to: https://tff-forum.de/viewtopic.php?f=68&t=3580&view=unread#p911358\r\nClosed according to: https://tff-forum.de/t/supercharger-in-deutschland/5786/8664	2020-12-01: Tesla added this location back to Find Us, and it's open again according to https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/302\r\n\r\nOpen according to: https://tff-forum.de/viewtopic.php?f=68&t=3580&view=unread#p911358\r\nClosed according to: https://tff-forum.de/t/supercharger-in-deutschland/5786/8664
2585	1000006	2	2020-12-02 03:42:35.075+00	locationId	\N	saltlakecityuts30wsupercharger
2430	1000006	3	2020-12-02 14:01:17.747+00	status	CONSTRUCTION	OPEN
2430	1000006	3	2020-12-02 14:01:17.747+00	dateOpened	\N	2020-12-02
2430	1000006	3	2020-12-02 14:01:17.747+00	developerNotes	\N	2020-12-02: Appeared as open on Find Us
2430	1000006	3	2020-12-02 14:01:17.747+00	address.street	Forum North, Rust Ave	7 Rust Avenue
2430	1000006	3	2020-12-02 14:01:17.747+00	address.zip	0112	0110
2600	1000004	1	2020-12-06 17:42:51.941+00	name	\N	New Milford, CT
2605	1000004	1	2020-12-08 04:33:55.353+00	name	\N	Seattle - 1201 2nd Avenue, WA
2460	1000004	2	2020-11-10 17:44:24.642+00	status	CONSTRUCTION	OPEN
2460	1000004	2	2020-11-10 17:44:24.642+00	dateOpened	\N	2020-11-09
2460	1000004	2	2020-11-10 17:44:24.642+00	developerNotes	Construction of 2nd Service centre- hence name Small Heath... TBC	Suspect Tesla name "Birmingham Service Centre"\r\nhttps://teslamotorsclub.com/tmc/posts/5125955/
2460	1000006	3	2020-11-10 18:23:39.162+00	urlDiscuss	https://twitter.com/teslaintheuk/status/1296819154209701893	https://teslamotorsclub.com/tmc/posts/5125955/
2460	1000006	3	2020-11-10 18:23:39.162+00	developerNotes	Suspect Tesla name "Birmingham Service Centre"\r\nhttps://teslamotorsclub.com/tmc/posts/5125955/	Suspect Tesla name "Birmingham Service Centre"\r\n\r\nhttps://twitter.com/teslaintheuk/status/1296819154209701893
2470	1000004	4	2020-11-18 20:09:27.683+00	status	CONSTRUCTION	OPEN
2470	1000004	4	2020-11-18 20:09:27.683+00	dateOpened	\N	2020-11-18
1095	1000006	2	2020-11-20 15:11:46.15+00	name	Hong Kong-Maritime Square	Maritime Square, Hong Kong
425	1000006	2	2020-11-20 15:21:19.093+00	name	Lee Gardens, Hong Kong, China	Lee Gardens, Hong Kong
285	1000006	3	2020-11-20 15:21:37.715+00	name	Kai Tak Cruise Terminal, Hong Kong, China	Kai Tak Cruise Terminal, Hong Kong
2515	1000004	6	2020-11-20 20:47:06.212+00	name	Affoltern am Albis - A4 Southbound, Switzerland	Obfelden - A4 Southbound, Switzerland
2490	1000004	7	2020-11-20 20:47:27.13+00	name	Affoltern am Albis - A4 Northbound, Switzerland	Obfelden - A4 Northbound, Switzerland
2490	1000006	8	2020-11-26 00:04:31.015+00	name	Obfelden - A4 Northbound, Switzerland	Affoltern - A4 Northbound, Switzerland
2490	1000006	8	2020-11-26 00:04:31.015+00	developerNotes	Only reachable via Autobahn A4 Northbound.	Only reachable via Autobahn A4 Northbound.\r\nName according to Tesla in Car Sat-Nav
2585	1000004	1	2020-11-26 00:45:31.986+00	name	\N	Salt Lake City - S 300 W, UT
580	1000006	6	2020-11-26 15:39:46.211+00	address.street	Autohof Strohofer, Geiselwind, A3 between Würzburg and Nürnberg	Scheinfelder Straße 15
2220	1000004	3	2020-11-30 10:55:59.952+00	stallCount	4	12
2220	1000004	3	2020-11-30 10:55:59.952+00	powerKiloWatt	150	250
2220	1000004	3	2020-11-30 10:55:59.952+00	developerNotes	\N	Sallanches is upgraded to V3, 12 stalls.\r\nhttps://www.facebook.com/groups/1628344087440357/permalink/2788440534764034
2590	1000006	1	2020-12-01 21:44:43.16+00	name	\N	Weibersbrunn, Germany
2595	1000004	1	2020-12-03 18:52:47.341+00	name	\N	Charlotte - Northlake, NC
580	1000006	5	2020-11-26 15:38:44.119+00	address.zip	\N	96160
2460	1000006	4	2020-11-28 17:40:04.588+00	locationId	\N	birminghamstandrews
2460	1000006	4	2020-11-28 17:40:04.588+00	name	Birmingham-Small Heath, UK	Birmingham-St Andrews, UK
2460	1000006	4	2020-11-28 17:40:04.588+00	developerNotes	Suspect Tesla name "Birmingham Service Centre"\r\n\r\nhttps://twitter.com/teslaintheuk/status/1296819154209701893	\N
2490	1000006	9	2020-11-28 17:41:50.369+00	locationId	\N	affolternsupercharger
2590	1000006	2	2020-12-08 17:35:02.744+00	stallCount	12	16
2185	1000006	14	2020-12-08 17:35:19.661+00	stallCount	24	40
2440	1000004	4	2020-12-12 13:00:14.999+00	locationId	\N	petersburgvawagnerrdsupercharger
2440	1000004	4	2020-12-12 13:00:14.999+00	status	CONSTRUCTION	OPEN
2440	1000004	4	2020-12-12 13:00:14.999+00	dateOpened	\N	2020-12-12
2440	1000004	5	2020-12-12 21:52:24.415+00	name	Petersburg, VA	Petersburg - Wagner Rd, VA
665	1000004	14	2020-12-14 19:42:05.483+00	stallCount	4	6
2525	1000004	4	2020-12-18 20:58:11.167+00	status	CONSTRUCTION	OPEN
2525	1000004	4	2020-12-18 20:58:11.167+00	dateOpened	\N	2020-12-18
2450	1000004	10	2020-12-21 02:58:30.405+00	stallCount	8	12
2450	1000004	10	2020-12-21 02:58:30.405+00	developerNotes	8 stalls at first with preparation for 4 more	2020-12-21: 4 more stalls live
2490	1000004	10	2020-12-14 01:03:24.677+00	latitude	47.271148	47.27111
2490	1000004	10	2020-12-14 01:03:24.677+00	longitude	8.439459	8.43981
2300	1000004	4	2020-12-18 02:11:05.426+00	name	Millstone, NJ	Clarksburg, NJ
2300	1000006	5	2020-12-18 02:14:28.146+00	locationId	\N	clarksburgnjsupercharger
2525	1000004	3	2020-12-15 20:18:03.764+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-%E2%80%94-montrose-co.97909/page-2#post-5033653	https://teslamotorsclub.com/tmc/threads/supercharger-%E2%80%94-montrose-co.97909/
2300	1000004	3	2020-12-16 13:13:27.14+00	status	CONSTRUCTION	OPEN
2300	1000004	3	2020-12-16 13:13:27.14+00	dateOpened	\N	2020-12-17
2000	1000006	3	2020-12-18 02:07:45.428+00	name	Malibu, CA	Malibu - Whole Foods and the Park, CA
2620	1000006	1	2020-12-22 13:45:05.569+00	name	\N	Nürburgring Motorsport Hotel, Germany
2625	1000004	1	2020-12-23 09:28:52.64+00	name	\N	Rownhams Northbound, UK
2525	1000004	5	2020-12-23 13:20:03.184+00	locationId	\N	montrosecosupercharger
2590	1000006	3	2020-12-23 13:40:15.303+00	status	CONSTRUCTION	OPEN
2590	1000006	3	2020-12-23 13:40:15.303+00	dateOpened	\N	2020-12-23
2590	1000006	4	2020-12-23 13:42:00.267+00	address.street	By Best Western Hotel Brunnenhof, Hauptstraße 231	Best Western Hotel Brunnenhof, Hauptstraße 231
2620	1000006	2	2020-12-23 13:47:53.679+00	status	CONSTRUCTION	OPEN
2620	1000006	2	2020-12-23 13:47:53.679+00	dateOpened	\N	2020-12-23
2555	1000006	3	2020-12-23 18:14:17.951+00	status	CONSTRUCTION	OPEN
2555	1000006	3	2020-12-23 18:14:17.951+00	dateOpened	\N	2020-12-23
2065	1000006	13	2020-12-31 18:41:28.428+00	locationId	irvinesupercharger	irvinecamainstreetsupercharger
2570	1000004	2	2021-01-01 23:15:32.027+00	status	PERMIT	CONSTRUCTION
2570	1000004	2	2021-01-01 23:15:32.027+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-land-o%E2%80%99-lakes-fl.212364/	https://teslamotorsclub.com/tmc/threads/supercharger
2570	1000004	3	2021-01-01 23:16:27.484+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger	https://teslamotorsclub.com/tmc/threads/supercharger-land-o%E2%80%99-lakes-fl.212364/#post-5127813
2615	1000006	2	2021-01-05 04:31:44.191+00	locationId	\N	VeniceFLsupercharger
2630	1000006	3	2021-01-05 04:59:36.462+00	developerNotes	Pictures only show 6 stalls, but it's likely 8 considering there are 2 V3 cabinets.	\N
2640	1000004	1	2021-01-05 12:44:52.775+00	name	\N	Oxford Redbridge, UK
2205	1000006	2	2021-01-05 14:27:55.538+00	locationId	\N	FlorenceKYsupercharger
2620	1000006	4	2021-01-07 20:05:44.219+00	locationId	nürburgringsupercharger	nurburgringsupercharger
2645	1000004	3	2021-01-06 02:45:51.793+00	address.street	3267 Proffit Road	3267 Proffit Rd
2630	1000006	1	2020-12-23 17:51:52.273+00	name	\N	Van Buren, AR
2555	1000006	4	2020-12-24 14:41:18.965+00	locationId	\N	entiatwasupercharger
360	1000006	3	2020-12-25 13:47:29.102+00	urlDiscuss	\N	https://tff-forum.de/t/supercharger-in-deutschland/5786/9884
360	1000006	3	2020-12-25 13:47:29.102+00	stallCount	6	10
360	1000006	3	2020-12-25 13:47:29.102+00	powerKiloWatt	150	250
2065	1000004	7	2020-12-28 09:19:47.877+00	status	OPEN	CONSTRUCTION
2065	1000004	7	2020-12-28 09:19:47.877+00	dateOpened	2020-12-24	\N
2600	1000006	2	2020-12-23 20:12:44.243+00	status	PERMIT	CONSTRUCTION
2065	1000006	6	2020-12-24 19:35:15.259+00	status	CONSTRUCTION	OPEN
2065	1000006	6	2020-12-24 19:35:15.259+00	dateOpened	\N	2020-12-24
2065	1000006	8	2020-12-29 19:32:05.151+00	stallCount	20	24
2635	1000004	1	2020-12-30 01:30:32.977+00	name	\N	Jacksonville - Philips Hwy, FL
2065	1000004	9	2020-12-30 04:28:53.357+00	status	CONSTRUCTION	OPEN
2065	1000004	9	2020-12-30 04:28:53.357+00	dateOpened	\N	2020-12-26
2065	1000004	10	2020-12-30 14:01:40.198+00	dateOpened	2020-12-26	2020-12-24
2065	1000004	11	2020-12-30 14:02:49.427+00	dateOpened	2020-12-24	2020-12-26
2065	1000006	12	2020-12-30 18:59:34.147+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-%E2%80%94-irvine-1970-main-st-permit-application-in-planning-dept.166372/	https://teslamotorsclub.com/tmc/threads/supercharger-irvine-ca-main-street-live-29-dec-2020-24-urban-stalls.166372/
2650	1000004	1	2021-01-07 20:30:29.351+00	name	\N	Yreka, CA
2630	1000006	2	2021-01-05 04:42:05.496+00	locationId	\N	VanBurenARsupercharger
2570	1000006	4	2021-01-05 14:41:12.047+00	locationId	\N	LandOLakesFLsupercharger
2600	1000006	3	2021-01-05 14:51:12.894+00	locationId	\N	NewMilfordCTsupercharger
2645	1000006	1	2021-01-06 02:34:43.57+00	name	\N	Charlottesville - Proffit Road, VA
2645	1000006	2	2021-01-06 02:34:54.744+00	address.street	3267Proffit Road	3267 Proffit Road
2620	1000006	3	2021-01-06 14:45:18.497+00	locationId	\N	nürburgringsupercharger
2230	1000006	2	2021-01-06 15:10:18.12+00	locationId	wellingtonnzsupercharger	wellingtonsupercharger
2250	1000006	2	2021-01-05 14:54:01.793+00	locationId	\N	TurlockCAsupercharger
2590	1000006	5	2021-01-06 14:46:44.888+00	locationId	\N	weibersbrunnsupercharger
2300	1000004	6	2021-01-06 14:48:00.972+00	dateOpened	2020-12-17	2020-12-15
2585	1000004	3	2021-01-07 05:13:57.948+00	locationId	saltlakecityuts30wsupercharger	saltlakecityutah30wsupercharger
1715	1000004	12	2021-01-07 05:14:20.345+00	locationId	surreybcsupercharger	surrey152bcsupercharger
250	1000004	6	2021-01-07 05:16:17.907+00	locationId	truckeecasupercharger	truckeecaliforniadonnersupercharger
250	1000004	6	2021-01-07 05:16:17.907+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/31017-Truckee-supercharger	https://teslamotorsclub.com/tmc/threads/supercharger-truckee-ca-donner-pass-rd-live-aug-2014-11-v2-stalls.31017/
625	1000006	7	2021-01-12 21:38:40.659+00	developerNotes	\N	2021-01-12: Tesla removed brentwood from Find Us
2205	1000004	3	2021-01-14 22:07:30.24+00	status	PERMIT	CONSTRUCTION
2305	1000006	5	2021-01-14 23:44:14.368+00	status	PERMIT	CONSTRUCTION
2305	1000004	6	2021-01-14 23:51:38.304+00	locationId	\N	PedricktownNJsupercharger
2245	1000006	5	2021-01-15 12:42:38.733+00	locationId	bancroftsupercharger	BancroftONsupercharger
2305	1000006	7	2021-01-15 12:57:59.174+00	latitude	39.698082	39.697702
2305	1000006	7	2021-01-15 12:57:59.174+00	longitude	-75.396852	-75.39773
2305	1000006	7	2021-01-15 12:57:59.174+00	elevationMeters	14	13
2245	1000004	6	2021-01-16 00:23:13.123+00	status	CONSTRUCTION	OPEN
2245	1000004	6	2021-01-16 00:23:13.123+00	dateOpened	\N	2021-01-15
2655	1000006	1	2021-01-16 13:55:38.777+00	name	\N	California, MD
625	1000006	8	2021-01-20 21:56:15.372+00	developerNotes	2021-01-12: Tesla removed brentwood from Find Us	\N
2660	1000004	1	2021-01-21 05:22:57.253+00	name	\N	San Ramon - Gateway Center, CA
2650	1000006	2	2021-01-22 21:48:02.2+00	locationId	\N	YrekaCAsupercharger
2180	1000004	2	2021-01-23 09:53:16.075+00	locationId	shandonghuludaosupercharger	cnsc8253
2180	1000004	2	2021-01-23 09:53:16.075+00	address.street	No.48 Longwan Road, Huludao	No.48 Longwan Road
2180	1000004	2	2021-01-23 09:53:16.075+00	address.city	Shandong	Huludao
2130	1000004	3	2021-01-23 10:13:22.214+00	locationId	\N	cnsc8944
2130	1000004	3	2021-01-23 10:13:22.214+00	name	Beijing - Wangjing District, China	Beijing - Wangjing, Juanshitiandi Building, China
2130	1000004	3	2021-01-23 10:13:22.214+00	latitude	39.993602254871945	39.982954
2130	1000004	3	2021-01-23 10:13:22.214+00	longitude	116.46941184997	116.452092
2200	1000004	3	2021-01-23 10:15:42.671+00	locationId	\N	cnsc8966
2200	1000004	3	2021-01-23 10:15:42.671+00	name	Shanghai - Gubei, China	Shanghai - Gubei 1699, China
2200	1000004	3	2021-01-23 10:15:42.671+00	powerKiloWatt	0	120
2665	1000006	1	2021-01-25 12:48:29.916+00	name	\N	Skien Arkaden, Norway
2675	1000004	1	2021-01-28 12:29:53.591+00	name	\N	Cangzhou - Golden Lion International Hotel, China
2680	1000004	1	2021-01-28 12:37:46.361+00	name	\N	Wuxi - Wuxi World Trade Center, China
495	1000004	2	2021-01-28 12:42:08.645+00	locationId	xuzhounewcenturygrandhotelsupercharger	cnsc8032
815	1000004	2	2021-01-28 13:26:22.953+00	locationId	sanyamingzhu	cnsc8083
815	1000004	2	2021-01-28 13:26:22.953+00	name	Sanya - Mingzhu, China	Sanya - Pearl Plaza, China
815	1000004	2	2021-01-28 13:26:22.953+00	powerKiloWatt	0	120
735	1000004	3	2021-01-28 13:28:16.614+00	locationId	shaoguansuncitysupercharger	cnsc8070
735	1000004	3	2021-01-28 13:28:16.614+00	name	Shaoguan-Sun City, China	Shaoguan - Sun City Phoenix Hotel, China
735	1000004	3	2021-01-28 13:28:16.614+00	powerKiloWatt	0	120
770	1000004	2	2021-01-28 13:34:54.841+00	locationId	zhongshanbaihuiplazasupercharger	cnsc8071
770	1000004	2	2021-01-28 13:34:54.841+00	name	Zhongshan-Baihui Plaza	Zhongshan - Baosheng Baihui Plaza. China
770	1000004	2	2021-01-28 13:34:54.841+00	powerKiloWatt	0	120
770	1000004	3	2021-01-28 13:36:22.941+00	name	Zhongshan - Baosheng Baihui Plaza. China	Zhongshan - Baosheng Baihui Plaza, China
230	1000004	5	2021-01-28 13:37:42.117+00	locationId	beijingnuocentersupercharger	cnsc8092
230	1000004	5	2021-01-28 13:37:42.117+00	name	Beijing-Universal Business Park, China	Beijing - Qinghe Wanxianghui, China
230	1000004	5	2021-01-28 13:37:42.117+00	powerKiloWatt	0	120
2685	1000004	1	2021-01-28 13:41:07.985+00	name	\N	Xi'an - Taihua Jinmao International, China
2690	1000004	1	2021-01-28 13:46:43.175+00	name	\N	Tianjin - Wisdom Mountain Virtual Industrial Park, China
2665	1000006	2	2021-01-25 14:02:51.263+00	locationId	\N	Skiennosupercharger
1555	1000006	11	2021-01-28 14:44:43.594+00	stallCount	3	6
2695	1000004	1	2021-01-28 22:55:11.078+00	name	\N	Peoria, IL
2710	1000004	1	2021-01-29 18:46:53.799+00	name	\N	Ankang - Jianghua City Shopping Center, China
2725	1000004	1	2021-01-29 19:11:11.872+00	name	\N	Beijing - Lavande Hotel Capital Airport National Exhibition Store, China
2730	1000004	1	2021-01-29 19:18:45.18+00	name	\N	Xiamen - Jingxi Hotel, China
2735	1000004	1	2021-01-29 19:25:06.44+00	name	\N	Qingdao - Excellence Grand Rong City, China
2740	1000004	1	2021-01-29 19:30:44.265+00	name	\N	Chengdu - Longquan Wuyue Plaza, China
2745	1000004	1	2021-01-29 19:36:41.632+00	name	\N	Hangzhou - Forte One Center, China
2755	1000004	1	2021-02-01 01:38:51.618+00	name	\N	Tilton, NH
2670	1000004	1	2021-01-26 20:22:53.688+00	name	\N	Hammonton, NJ
1000	1000004	2	2021-01-28 13:11:46.988+00	locationId	chengdebifengmensupercharger	cnsc8093
1000	1000004	2	2021-01-28 13:11:46.988+00	powerKiloWatt	0	120
825	1000004	2	2021-01-28 13:30:35.656+00	locationId	yaanyuduhotelsupercharger	cnsc8085
825	1000004	2	2021-01-28 13:30:35.656+00	name	Ya'an, China	Ya'an - Yudu Hotel, China
825	1000004	2	2021-01-28 13:30:35.656+00	powerKiloWatt	0	120
780	1000004	2	2021-01-28 13:31:07.206+00	locationId	yananlonghuahotelsupercharger	cnsc8078
780	1000004	2	2021-01-28 13:31:07.206+00	name	Yanan - Longhua Hotel, China	Yanan - Longhua Garden Hotel, China
780	1000004	2	2021-01-28 13:31:07.206+00	powerKiloWatt	0	120
2700	1000004	1	2021-01-29 18:27:35.634+00	name	\N	Kunming - Caiyunli, China
2705	1000004	1	2021-01-29 18:38:42.249+00	name	\N	Shanghai - Aegean Shopping Park, China
2715	1000004	1	2021-01-29 18:53:05.532+00	name	\N	Beijing - Changying Longhu Tianjie, China
2720	1000004	1	2021-01-29 18:58:55.836+00	name	\N	Shanghai - Yueyang Plaza, China
2495	1000006	2	2021-01-30 18:43:13.059+00	status	PERMIT	CONSTRUCTION
2755	1000004	2	2021-02-01 09:25:58.392+00	locationId	\N	TiltonNHsupercharger
2570	1000006	5	2021-02-03 16:25:54.103+00	status	CONSTRUCTION	OPEN
2570	1000006	5	2021-02-03 16:25:54.103+00	dateOpened	\N	2021-02-03
2240	1000004	4	2021-02-03 17:12:56.567+00	status	PERMIT	CONSTRUCTION
2240	1000004	4	2021-02-03 17:12:56.567+00	stallCount	8	4
2240	1000004	4	2021-02-03 17:12:56.567+00	powerKiloWatt	0	250
2560	1000004	3	2021-02-03 19:40:57.844+00	stallCount	8	6
2760	1000004	1	2021-02-03 23:28:13.135+00	name	\N	Newton, MA
2760	1000004	2	2021-02-03 23:46:02.169+00	locationId	\N	newtonMAsupercharger
2765	1000004	1	2021-02-04 05:31:12.813+00	name	\N	Leipzig/Halle, Germany
2760	1000006	3	2021-02-04 13:30:46.356+00	latitude	42.330663989562666	42.330663
2760	1000006	3	2021-02-04 13:30:46.356+00	longitude	-71.25506216576	-71.255062
2560	1000006	4	2021-02-04 13:32:13.059+00	latitude	55.56456824631446	55.564568
2560	1000006	4	2021-02-04 13:32:13.059+00	longitude	-1.791857861446382	-1.791857
2770	1000004	1	2021-02-06 19:08:16.096+00	name	\N	Changde - Taohuayuan Golf Hotel
2775	1000004	1	2021-02-06 19:15:13.793+00	name	\N	Shanghai - South Bailian Shopping Center
2780	1000004	1	2021-02-06 21:34:54.591+00	name	\N	Lanzhou, China
2785	1000004	1	2021-02-07 00:24:52.119+00	name	\N	Wenzhou - Shangri-La Hotel
2790	1000004	1	2021-02-07 00:31:01.873+00	name	\N	Huaihua - Jinlei International Hotel
2790	1000004	2	2021-02-08 11:44:00.179+00	name	Huaihua - Jinlei International Hotel	Huaihua - Jinlei International Hotel, China
960	1000004	3	2021-02-08 12:53:51.898+00	locationId	zhaoqingphoenixhotelsupercharger	cnsc8102
960	1000004	3	2021-02-08 12:53:51.898+00	name	Zhaoqing - Phoenix Hotel	Zhaoqing - Country Garden Phoenix Hotel, China
960	1000004	3	2021-02-08 12:53:51.898+00	powerKiloWatt	0	120
3185	1000004	1	2021-02-21 11:04:57.475+00	name	\N	Ningbo - Shanjing Outlets, China
3190	1000004	1	2021-02-21 11:12:37.196+00	name	\N	Zhenjiang - Changfa Square, China
3210	1000004	1	2021-02-21 11:49:49.941+00	name	\N	Shenyang - Xinglong Grand Outlet, China
2785	1000004	2	2021-02-08 11:45:04.956+00	name	Wenzhou - Shangri-La Hotel	Wenzhou - Shangri-La Hotel, China
1495	1000004	2	2021-02-08 12:01:05.159+00	locationId	beijingorientalplazasupercharger	cnsc8181
1285	1000004	2	2021-02-08 12:08:12.55+00	locationId	chongqingregenthotelsupercharger	cnsc8147
1285	1000004	2	2021-02-08 12:08:12.55+00	powerKiloWatt	0	120
1320	1000004	3	2021-02-08 12:35:38.16+00	locationId	shanghaizhoupugreenlandsupercharger	cnsc8151
1320	1000004	3	2021-02-08 12:35:38.16+00	name	Shanghai - Zhoupu Greenland, China	Shanghai - Zhoupu Greenland Plaza, China
1525	1000004	2	2021-02-08 12:36:17.137+00	locationId	shanghaizhujiangcreativeparksupercharger	cnsc8187
1525	1000004	2	2021-02-08 12:36:17.137+00	name	Shanghai - Zhujiang Creative Park, China	Shanghai - Pearl River Creative Center, China
940	1000004	5	2021-02-08 12:36:43.471+00	locationId	shanghaik11artmallsupercharger	cnsc8101
940	1000004	5	2021-02-08 12:36:43.471+00	name	Shanghai K11 Art Mall, China	Shanghai - K11 Art Mall, China
940	1000004	5	2021-02-08 12:36:43.471+00	powerKiloWatt	0	120
1220	1000004	2	2021-02-08 12:42:55.322+00	locationId	taiyuansupercharger	cnsc8131
1220	1000004	2	2021-02-08 12:42:55.322+00	name	Taiyuan - Huayu, China	Taiyuan - Huayu Baihua Valley, China
1220	1000004	2	2021-02-08 12:42:55.322+00	powerKiloWatt	0	120
1145	1000004	3	2021-02-08 12:48:36.867+00	locationId	xiamensupercharger	cnsc8119
1145	1000004	3	2021-02-08 12:48:36.867+00	name	Xiamen-One Park Mall, China	Xiamen - Wanyue City, China
1145	1000004	3	2021-02-08 12:48:36.867+00	powerKiloWatt	0	120
1445	1000004	2	2021-02-08 12:49:02.316+00	locationId	xinyanghenansupercharger	cnsc8171
1445	1000004	2	2021-02-08 12:49:02.316+00	powerKiloWatt	0	120
2775	1000004	2	2021-02-08 11:49:35.052+00	name	Shanghai - South Bailian Shopping Center	Shanghai - South Bailian Shopping Center, China
2770	1000004	2	2021-02-08 11:53:57.765+00	name	Changde - Taohuayuan Golf Hotel	Changde - Taohuayuan Golf Hotel, China
280	1000004	3	2021-02-08 12:03:10.017+00	locationId	beijingyizhuangsupercharger	cnsc8226
280	1000004	3	2021-02-08 12:03:10.017+00	powerKiloWatt	0	120
1315	1000004	4	2021-02-08 12:03:39.972+00	locationId	beijingzhongqileirisupercharger	cnsc8158
1590	1000004	2	2021-02-08 12:08:45.64+00	locationId	taizhoujiangsusupercharger	cnsc8197
1590	1000004	2	2021-02-08 12:08:45.64+00	name	Country Garden Phoenix Hot Spring Hotel Taizhou, China	Taizhou - Country Garden Phoenix Hot Spring Hotel, China
1600	1000004	2	2021-02-08 12:15:46.053+00	locationId	hangzhoubinjiangbinwenrdsupercharger	cnsc8199
1600	1000004	2	2021-02-08 12:15:46.053+00	name	Hangzhou - Binjiang Binwen Road Yaduo Hotel, China	Hangzhou - Binjiang Binwen Road Atour Hotel, China
1020	1000004	2	2021-02-08 12:18:20.255+00	locationId	heyuanhiltonhotelsupercharger	cnsc8110
1020	1000004	2	2021-02-08 12:18:20.255+00	powerKiloWatt	0	120
1475	1000004	2	2021-02-08 12:20:36.457+00	locationId	jiaxingzhejiangsupercharger	cnsc8175
1475	1000004	2	2021-02-08 12:20:36.457+00	name	Jiaxing - Longmont Hotel, China	Jiaxing - Longzhimeng Hotel, China
1055	1000004	2	2021-02-08 12:32:38.445+00	locationId	Shanghai Manpo Plaza	cnsc8112
1055	1000004	2	2021-02-08 12:32:38.445+00	name	Shanghai - Manpo Plaza, China	Shanghai - Wanbao International Plaza, China
1055	1000004	2	2021-02-08 12:32:38.445+00	powerKiloWatt	0	120
1290	1000004	8	2021-02-08 12:37:32.097+00	locationId	Shanghaililacscentersupercharger	cnsc8162
1290	1000004	8	2021-02-08 12:37:32.097+00	name	Shanghai, Lilacs International Com. Center, China	Shanghai - Dingxiang International Business Center, China
1030	1000004	2	2021-02-08 12:38:13.281+00	locationId	shenzhenfutiantianancyberparksupercharger	cnsc8111
1030	1000004	2	2021-02-08 12:38:13.281+00	name	Shenzhen - Futian Tianan Cyber Park, China	Shenzhen - Tianan Digital City, China
1030	1000004	2	2021-02-08 12:38:13.281+00	powerKiloWatt	0	120
1150	1000004	2	2021-02-08 12:45:53.055+00	locationId	wuhanbrabusautoparksupercharger	cnsc8116
1150	1000004	2	2021-02-08 12:45:53.055+00	name	Wuhan - Brabus Auto Park, China	Wuhan - Baoshi Auto Plaza, China
1150	1000004	2	2021-02-08 12:45:53.055+00	powerKiloWatt	0	120
1270	1000004	2	2021-02-08 12:46:29.186+00	locationId	wuhaneurasianhotelsupercharger	cnsc8140
1270	1000004	2	2021-02-08 12:46:29.186+00	name	Wuhan - Eurasian Hotel, China	Wuhan - Eurasia Convention International Hotel, China
1270	1000004	2	2021-02-08 12:46:29.186+00	powerKiloWatt	0	120
2800	1000004	1	2021-02-09 08:38:11.734+00	name	\N	Wuhan - Yintai Creative City, China
2810	1000004	1	2021-02-09 09:00:39.661+00	name	\N	Suzhou - Wyndham Garden Hotel China
2810	1000004	2	2021-02-09 09:00:47.154+00	name	Suzhou - Wyndham Garden Hotel China	Suzhou - Wyndham Garden Hotel, China
2815	1000004	1	2021-02-09 09:16:10.779+00	name	\N	Huangshan - Crowne Plaza Huangshan Yucheng, China
2830	1000004	1	2021-02-09 09:47:32.683+00	name	\N	Foshan - Bailida Plaza, China
2845	1000004	1	2021-02-09 11:32:32.392+00	name	\N	Hangzhou - Xixi Longhu Tianjie, China
390	1000004	2	2021-02-09 11:37:53.8+00	locationId	changshafvsupercharger	cnsc8023
390	1000004	2	2021-02-09 11:37:53.8+00	name	Fountain Valley, Changsha, China	Changsha - Sunstar City, China
390	1000004	2	2021-02-09 11:37:53.8+00	powerKiloWatt	0	120
2860	1000004	1	2021-02-09 12:00:09.8+00	name	\N	Chengdu - Oriental Hope Tianxiang Plaza, China
1225	1000004	2	2021-02-08 12:50:21.318+00	locationId	yibinsupercharger	cnsc8127
1225	1000004	2	2021-02-08 12:50:21.318+00	powerKiloWatt	0	120
1450	1000004	2	2021-02-08 12:50:48.172+00	locationId	yingchanghubeisupercharger	cnsc8174
1450	1000004	2	2021-02-08 12:50:48.172+00	name	Yichang - Tianxi Longge Hotel, China	Yichang - Tianxi Longge Winery, China
1450	1000004	2	2021-02-08 12:50:48.172+00	powerKiloWatt	0	120
2795	1000004	1	2021-02-08 13:17:54.659+00	name	\N	Tianjin - Tomson Jinwan Yipin, China
440	1000004	2	2021-02-09 08:32:39.646+00	locationId	xianyantasupercharger	cnsc8997
440	1000004	2	2021-02-09 08:32:39.646+00	name	Xi'an Yanta, China	Xi'an - High-tech Xintiandi, China
440	1000004	2	2021-02-09 08:32:39.646+00	powerKiloWatt	0	120
2805	1000004	1	2021-02-09 08:49:53.822+00	name	\N	Yongzhou - Zhongbang Century Plaza, China
320	1000004	4	2021-02-09 09:08:06.964+00	locationId	angzhousupercharger	cnsc9004
320	1000004	4	2021-02-09 09:08:06.964+00	powerKiloWatt	0	120
2820	1000004	1	2021-02-09 09:25:43.455+00	name	\N	Jinan - Xiyue Oriental Hotel, China
2825	1000004	1	2021-02-09 09:34:55.304+00	name	\N	Beijing - Shunyi Luohong Photographic Art Museum, China
2835	1000004	1	2021-02-09 11:14:00.007+00	name	\N	Chengdu - MixC, China
2840	1000004	1	2021-02-09 11:22:26.543+00	name	\N	Ningbo - Cixi Kandun, China
2850	1000004	1	2021-02-09 11:44:58.051+00	name	\N	Hengdian - Dongci Building, China
2855	1000004	1	2021-02-09 11:53:05.462+00	name	\N	Wenzhou - Sheraton Hotel, China
2865	1000004	1	2021-02-14 02:07:36.021+00	name	\N	Fuzhou - Meiyuan International Hotel, China
2875	1000004	1	2021-02-14 02:28:25.488+00	name	\N	Shanghai - Lingyun Yijiefang, China
2775	1000004	3	2021-02-14 02:30:41.006+00	locationId	cnsc8260	\N
2905	1000004	1	2021-02-14 04:11:39.069+00	name	\N	Anshun - Huatong Hotel, China
2775	1000004	3	2021-02-14 02:30:41.006+00	name	Shanghai - South Bailian Shopping Center, China	Shanghai - South Bailian Shopping Center, China *
2880	1000004	1	2021-02-14 02:39:08.095+00	name	\N	Shanghai - Ruijin Building, China
2885	1000004	1	2021-02-14 02:46:01.202+00	name	\N	Shanghai - 889 Square, China
2895	1000004	1	2021-02-14 03:55:53.485+00	name	\N	Guangzhou - Yuexiu Fortune Mansion, China
2920	1000004	1	2021-02-14 05:32:25.383+00	name	\N	Yinchuan - Xinhua Department Store CC Park, China
2945	1000004	1	2021-02-14 06:35:09.566+00	name	\N	Shanghai - HUALUXE Hotel Hengshan Road, China
2655	1000006	3	2021-02-14 23:07:56.671+00	powerKiloWatt	0	250
2995	1000004	1	2021-02-16 14:45:42.613+00	name	\N	Xi'an - Yanta Cultural Xintiandi
2985	1000004	2	2021-02-17 09:06:08.751+00	name	Yantai Red Star Macalline, China	Yantai - Red Star Macalline, China
2985	1000004	2	2021-02-17 09:06:08.751+00	dateOpened	2021-01-01	2021-01-22
2985	1000004	2	2021-02-17 09:06:08.751+00	powerKiloWatt	150	120
2985	1000004	2	2021-02-17 09:06:08.751+00	address.street	north side of the intersection of Zhenda Road and Jintan South Road	north side of the intersection of Zhenda Road and Jintan South Road, Laishan District
2985	1000004	2	2021-02-17 09:06:08.751+00	address.city	Laishan District, Yantai	Yantai
2890	1000004	2	2021-02-14 04:11:56.683+00	dateOpened	2021-02-22	2021-01-22
2990	1000004	3	2021-02-17 09:08:59.315+00	name	Beijing Badaling Ski Resort, China	Beijing - Badaling Ski Resort, China
2990	1000004	3	2021-02-17 09:08:59.315+00	dateOpened	2021-01-01	2021-01-22
2990	1000004	3	2021-02-17 09:08:59.315+00	powerKiloWatt	150	120
2990	1000004	3	2021-02-17 09:08:59.315+00	address.street	Badaling Ski Resort	Badaling Ski Resort, Badaling Town, Yanqing District
2990	1000004	3	2021-02-17 09:08:59.315+00	address.city	Badaling Town, Yanqing District, Beijing	Beijing
3000	1000004	1	2021-02-17 15:19:58.801+00	name	\N	Torrent North, Spain
3000	1000004	2	2021-02-17 15:23:40.676+00	address.city	Torrent, Valencia	Torrent
3000	1000004	2	2021-02-17 15:23:40.676+00	address.state	\N	Valencia
3015	1000004	1	2021-02-21 02:12:35.169+00	name	\N	Fuzhou - Shuoguo Times Square, China
3020	1000004	1	2021-02-21 02:20:06.892+00	name	\N	Daqing - Kunlun Tangren Center, China
3025	1000004	1	2021-02-21 02:28:25.316+00	name	\N	Ruijin - Ruijin Honor International Hotel, China
3035	1000004	1	2021-02-21 02:44:44.292+00	name	\N	Meizhou - World Merchants Center, China
2870	1000004	1	2021-02-14 02:15:41.359+00	name	\N	Chengdu - G4202 Ring Express West Parking Zone West, China
2775	1000004	4	2021-02-14 02:31:11.613+00	developerNotes	\N	[duplicate to delete]
2890	1000004	1	2021-02-14 03:48:56.108+00	name	\N	Taizhou - Yangtian Building, China
2900	1000004	1	2021-02-14 04:03:35.492+00	name	\N	Chongqing - Dongyuan Yuehui Xinxin Park, China
2910	1000004	1	2021-02-14 04:22:28.726+00	name	\N	Jinhua - Longteng Home Living Museum, China
2915	1000004	1	2021-02-14 04:47:05.819+00	name	\N	Wuyishan - Jiayuan Millennium Resort Hotel, China
2925	1000004	1	2021-02-14 05:43:05.369+00	name	\N	Shaoxing - Shangyu Tianyue New Century Grand Hotel, China
2930	1000004	1	2021-02-14 05:54:10.078+00	name	\N	Shenzhen - Bailong Plaza, China
2935	1000004	1	2021-02-14 06:07:21.738+00	name	\N	Zhengzhou - Zupeng Hotel, China
2940	1000004	1	2021-02-14 06:18:24.046+00	name	\N	Huzhou - Shenjiahu Expressway Xilong Service Area (Shanghai direction), China
2960	1000004	1	2021-02-14 07:01:03.065+00	name	\N	Zhongshan, China
1200	1000004	2	2021-02-14 09:58:05.01+00	locationId	hangzhouwestintime	hangzhouchengxiyintai
2950	1000004	1	2021-02-14 06:44:35.874+00	name	\N	Wenzhou - Import Trade Port, China
2955	1000004	1	2021-02-14 06:52:14.153+00	name	\N	Qingyuan - Liannan Jinyaofeng Resort, China
2965	1000004	1	2021-02-14 10:15:34.715+00	name	\N	Hangzhou - Xiaoshan Tesla Center, China
2970	1000004	1	2021-02-14 10:34:53.508+00	name	\N	Foshan - Chancheng Tesla Center, China
2980	1000004	1	2021-02-14 11:10:57.696+00	name	\N	Qingdao - Yinchuan West Road Tesla Center, China
230	1000004	6	2021-02-14 11:38:46.514+00	stallCount	4	6
2985	1000004	1	2021-02-14 17:34:17.82+00	name	\N	Yantai Red Star Macalline, China
2990	1000004	1	2021-02-14 17:58:40.121+00	name	\N	Beijing Badaling Ski Resort, China
2990	1000004	2	2021-02-14 18:00:52.216+00	locationId	\N	cnsc9347
2655	1000006	2	2021-02-14 22:47:59.247+00	status	PERMIT	CONSTRUCTION
2495	1000006	3	2021-02-14 22:53:59.437+00	stallCount	8	16
2495	1000006	3	2021-02-14 22:53:59.437+00	powerKiloWatt	0	250
1200	1000004	2	2021-02-14 09:58:05.01+00	name	Hangzhou-West Intime	Hangzhou - Chengxi Yintai Experience Store, China
1200	1000004	2	2021-02-14 09:58:05.01+00	powerKiloWatt	0	120
1200	1000004	2	2021-02-14 09:58:05.01+00	address.street	380 Fengtai Road	Unit 1F020, West Yintai City, No. 380 Fengtan Road
1200	1000004	2	2021-02-14 09:58:05.01+00	address.city	Zhejiang	Hangzhou
2975	1000004	1	2021-02-14 10:50:53.261+00	name	\N	Shaoxing - Paojiang Tesla Center, China
2995	1000004	2	2021-02-17 09:09:52.26+00	name	Xi'an - Yanta Cultural Xintiandi	Xi'an - Yanta Cultural Xintiandi, China
3005	1000004	1	2021-02-20 12:30:07.988+00	name	\N	Chambéry Granier Est
3005	1000004	2	2021-02-20 12:34:58.719+00	developerNotes	\N	More information:\r\n\r\nhttps://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?page=57&tab=comments#comment-783106
3005	1000004	3	2021-02-20 12:49:12.303+00	name	Chambéry Granier Est	Chambéry Granier Est, France
3005	1000004	4	2021-02-20 12:50:35.066+00	latitude	45.526168	45.52497
3005	1000004	4	2021-02-20 12:50:35.066+00	longitude	5.976487	5.976822
3005	1000004	5	2021-02-20 12:53:31.639+00	address.street	Aire de l'Abis	Aire de Service de l'Abis
3005	1000004	7	2021-02-20 12:57:57.38+00	address.street	Aire de Service de l'Abis	Aire de Service de l&#39;Abis
3010	1000004	1	2021-02-21 01:58:13.595+00	name	\N	Shanghai - Forte Vanke Vigor City, China
3030	1000004	1	2021-02-21 02:36:56.913+00	name	\N	Xiamen - Haicang Zhongshan Waikou Apartment, China
3040	1000004	1	2021-02-21 02:52:00.498+00	name	\N	Qingdao - Kaifeng International Financial Plaza, China
3045	1000004	1	2021-02-21 02:59:31.005+00	name	\N	Chongqing - Luneng 13th Block, China
3055	1000004	1	2021-02-21 03:14:22.198+00	name	\N	Shenzhen - Tianjian Chuangzhi Center, China
3060	1000004	1	2021-02-21 03:41:37.384+00	name	\N	Shantou - Changping New City, China
3065	1000004	1	2021-02-21 03:53:57.796+00	name	\N	Zhuhai - St. Regis, China
3070	1000004	1	2021-02-21 04:02:40.771+00	name	\N	Puning - Jieyang Wantaihui, China
3075	1000004	1	2021-02-21 04:12:28.841+00	name	\N	Tianjin - Xinmao Tiancai Hotel, China
3080	1000004	1	2021-02-21 04:20:26.88+00	name	\N	Hangzhou - Xiasha Intime Department Store, China
3085	1000004	1	2021-02-21 04:30:09.768+00	name	\N	Dandong - Future City, China
3110	1000004	1	2021-02-21 05:44:59.583+00	name	\N	Nanchang - High-tech Wuyue Plaza, China
3115	1000004	1	2021-02-21 05:53:44.158+00	name	\N	Rizhao - Wanxianghui, China
3145	1000004	1	2021-02-21 06:54:53.948+00	name	\N	Shanghai - Baokuang International Building, China
3160	1000004	1	2021-02-21 10:18:42.651+00	name	\N	Dalian - Shangri-La Hotel, China
3170	1000004	1	2021-02-21 10:35:24.196+00	name	\N	Suzhou - Zhongxin Building, China
3050	1000004	1	2021-02-21 03:07:03.575+00	name	\N	Zhengzhou - Hanhai Haishang, China
3090	1000004	1	2021-02-21 04:36:31.157+00	name	\N	Shanghai - Jiuting U World, China
3095	1000004	1	2021-02-21 04:43:24.247+00	name	\N	Shenzhen - Jinyuanli Jiayuan, China
3100	1000004	1	2021-02-21 04:51:07.944+00	name	\N	Shanghai - Minhang Longhu Tianjie, China
3105	1000004	1	2021-02-21 04:58:10.311+00	name	\N	Changchun - Liwang Plaza, China
3120	1000004	1	2021-02-21 06:00:34.681+00	name	\N	Beijing - Country Garden Jiuhua Villa, China
3125	1000004	1	2021-02-21 06:08:59.486+00	name	\N	Shanghai - Shangkun Shangjie Shopping Center, China
3130	1000004	1	2021-02-21 06:27:19.688+00	name	\N	Shanghai - Sunshine World, China
3135	1000004	1	2021-02-21 06:40:02.458+00	name	\N	Shanghai - Dongding Plaza, China
3140	1000004	1	2021-02-21 06:46:59.052+00	name	\N	Chongqing - Yuanda Cultural and Creative Park, China
3150	1000004	1	2021-02-21 07:03:46.364+00	name	\N	Wuhan - Oceanwide City Plaza, China
3155	1000004	1	2021-02-21 10:09:52.106+00	name	\N	Zhangjiajie - Hetianju Holiday Hotel, China
3165	1000004	1	2021-02-21 10:28:28.139+00	name	\N	Shanghai - World Expo Source, China
3175	1000004	1	2021-02-21 10:43:57.753+00	name	\N	Tianjin - Binhai Warner Jiale City, China
3180	1000004	1	2021-02-21 10:55:09.251+00	name	\N	Shenzhen - Longgang Xingshanghui, China
3195	1000004	1	2021-02-21 11:24:37.812+00	name	\N	Beijing - Hejing Mofang Shopping Center, China
3200	1000004	1	2021-02-21 11:33:26.265+00	name	\N	Beijing - Millennium Shopping Center in Fengtai District, China
3205	1000004	1	2021-02-21 11:41:59.9+00	name	\N	Xi'an - Jinhui Global Plaza, China
2480	1000006	6	2021-02-21 12:00:31.151+00	status	PERMIT	CONSTRUCTION
2480	1000006	7	2021-02-23 00:26:20.085+00	stallCount	8	6
2480	1000006	8	2021-02-23 00:26:58.553+00	developerNotes	Initial build set at 8. Expansion to 12 is already in the permit. The 12th stall will be for cars with trailer.	Initial build set at 8. Expansion to 12 is already in the permit. The 12th stall will be for cars with trailer. Local council adjusted initial number of stalls to 6.
2545	1000004	5	2021-02-23 03:07:16.776+00	status	CONSTRUCTION	OPEN
2545	1000004	5	2021-02-23 03:07:16.776+00	dateOpened	\N	2021-02-22
2545	1000004	5	2021-02-23 03:07:16.776+00	stallCount	5	3
3215	1000004	1	2021-02-25 00:47:50.374+00	name	\N	Douglasville, GA
2695	1000006	2	2021-02-25 19:49:13.904+00	status	PERMIT	CONSTRUCTION
2695	1000004	3	2021-02-25 22:13:36.089+00	latitude	40.73845	40.739208
2695	1000004	3	2021-02-25 22:13:36.089+00	longitude	-89.604889	-89.606721
2755	1000004	3	2021-02-25 22:44:25.165+00	status	CONSTRUCTION	OPEN
2755	1000004	3	2021-02-25 22:44:25.165+00	dateOpened	\N	2021-02-25
2755	1000006	4	2021-02-25 22:47:38.951+00	latitude	43.455206494697514	43.455206
2755	1000006	4	2021-02-25 22:47:38.951+00	longitude	-71.56517963088	-71.565179
1650	1000004	2	2021-02-27 22:15:45.455+00	locationId	dongguanshoescentersupercharger	cnsc8204
1650	1000004	2	2021-02-27 22:15:45.455+00	name	Dongguan - Shoes Center, China	Dongguan - World Footwear Base, China
1900	1000004	2	2021-02-27 22:19:29.656+00	locationId	guangzhouanhuahuimallsupercharger	cnsc8257
1770	1000004	2	2021-02-28 00:05:53.07+00	locationId	shanghaixinererdusupercharger	cnsc8224
1770	1000004	2	2021-02-28 00:05:53.07+00	name	Shanghai  - Space Tech Industry Park, China	Shanghai  - Space Technology Application Industrial Base, China
1795	1000006	6	2021-02-28 19:13:12.018+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/new-supercharger-in-west-palm-beach-fl-found-and-confirmed.137470/	https://teslamotorsclub.com/tmc/threads/supercharger-west-palm-beach-fl-garden-road.137470/
2765	1000006	2	2021-02-28 19:55:34.109+00	locationId	\N	LeipzigHalleGermanysupercharger
2765	1000006	2	2021-02-28 19:55:34.109+00	name	Leipzig/Halle, Germany	Leipzig-Halle, Germany
2765	1000006	2	2021-02-28 19:55:34.109+00	address.state	!!!!!!	\N
2625	1000006	2	2021-02-28 20:00:27.029+00	locationId	\N	Rownhamsgbsupercharger
970	1000006	5	2021-03-01 00:46:31.799+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/columbia-sc-sc.47352/	https://teslamotorsclub.com/tmc/threads/supercharger-columbia-sc.47352/
165	1000006	3	2021-03-01 00:46:47.744+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/22396-Plymouth-NC-Supercharger-Location	https://teslamotorsclub.com/tmc/threads/supercharger-plymouth-nc.28026/
165	1000006	4	2021-03-01 00:47:15.76+00	powerKiloWatt	120	150
3220	1000006	3	2021-03-04 03:23:24.312+00	urlDiscuss	\N	https://teslaclubsweden.se/forum/viewtopic.php?f=45&t=15902&start=270
2240	1000004	5	2021-03-05 17:06:16.307+00	status	CONSTRUCTION	OPEN
2240	1000004	5	2021-03-05 17:06:16.307+00	dateOpened	\N	2021-03-05
2535	1000004	2	2021-03-06 23:10:16.898+00	locationId	\N	ChicagoILBucktownsupercharger
3230	1000004	1	2021-03-08 22:27:18.251+00	name	\N	Windach, Deutchsland
3230	1000006	2	2021-03-10 02:00:00.007+00	locationId	\N	windachdesupercharger
3230	1000006	2	2021-03-10 02:00:00.007+00	name	Windach, Deutchsland	Windach, Germany
3235	1000004	1	2021-03-10 05:07:33.165+00	name	\N	Haubstadt, IN
125	1000004	2	2021-03-11 16:24:16.223+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/37284-Glenwood-Springs-CO-Supercharger	\N
180	1000006	2	2021-03-12 01:44:46.102+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/37283-Murdo-SD-Supercharger	https://teslamotorsclub.com/tmc/threads/murdo-sd-supercharger.37283/
2545	1000004	6	2021-02-28 00:40:58.707+00	name	Halethorpe, MD	Baltimore - South Caton Avenue, MD
1795	1000006	5	2021-02-28 17:44:15.916+00	name	Riviera Beach - Garden Rd, FL	West Palm Beach - Garden Road, FL
3220	1000004	1	2021-03-02 08:44:03.627+00	name	\N	Linköping
3220	1000004	2	2021-03-02 09:31:53.528+00	name	Linköping	Linköping, Sweden
3220	1000004	2	2021-03-02 09:31:53.528+00	stallCount	1	8
2695	1000006	4	2021-03-03 00:27:30.444+00	powerKiloWatt	0	250
2390	1000004	3	2021-03-03 05:58:20.65+00	status	PERMIT	CONSTRUCTION
2390	1000004	3	2021-03-03 05:58:20.65+00	stallCount	34	28
2390	1000004	3	2021-03-03 05:58:20.65+00	powerKiloWatt	0	250
2545	1000006	7	2021-03-03 14:12:15.551+00	locationId	halethorpesupercharger	elkridgemdsupercharger
1935	1000006	10	2021-03-03 21:34:00.236+00	developerNotes	\N	+8 stalls in construction
3220	1000004	4	2021-03-04 17:22:39.106+00	urlDiscuss	https://teslaclubsweden.se/forum/viewtopic.php?f=45&t=15902&start=270	https://teslaclubsweden.se/forum/viewtopic.php?p=506614#p506614
3220	1000004	4	2021-03-04 17:22:39.106+00	powerKiloWatt	0	250
2565	1000004	2	2021-03-05 02:53:17.259+00	status	CONSTRUCTION	OPEN
2565	1000004	2	2021-03-05 02:53:17.259+00	dateOpened	\N	2021-03-04
2565	1000004	3	2021-03-05 05:27:26.816+00	locationId	\N	WestKelownaBCsupercharger
2230	1000004	3	2021-03-05 17:04:09.598+00	status	PERMIT	CONSTRUCTION
2230	1000004	3	2021-03-05 17:04:09.598+00	stallCount	4	6
2230	1000004	3	2021-03-05 17:04:09.598+00	powerKiloWatt	0	150
3225	1000004	1	2021-03-05 19:35:46.422+00	name	\N	Bridgewater, NJ
125	1000006	3	2021-03-11 16:47:34.7+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-glenwood-springs-co.37284/
125	1000006	4	2021-03-11 17:06:53.907+00	powerKiloWatt	0	150
3220	1000004	5	2021-03-11 21:35:45.76+00	stallCount	8	12
3220	1000004	6	2021-03-11 21:36:07.793+00	urlDiscuss	https://teslaclubsweden.se/forum/viewtopic.php?p=506614#p506614	https://teslaclubsweden.se/forum/viewtopic.php?p=509708#p509708
205	1000006	2	2021-03-12 01:42:09.856+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/37280-Cheyenne-Wyoming-Supercharger	https://teslamotorsclub.com/tmc/threads/cheyenne-wyoming-supercharger.37280/
545	1000006	2	2021-03-12 01:54:51.662+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/38692-Supercharger-Utica-NY	https://teslamotorsclub.com/tmc/threads/supercharger-utica-ny.38692/
510	1000006	2	2021-03-12 01:53:27.976+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/40360-Tesla-Superchargers-Springfield-Illinois	https://teslamotorsclub.com/tmc/threads/tesla-superchargers-springfield-illinois.40360/
715	1000006	2	2021-03-12 02:12:11.025+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/55146-Supercharger-Truckee-2-%28location-confirmed-opening-soon-%29/	https://teslamotorsclub.com/tmc/threads/supercharger-truckee-ca-brockway-road-8-v2-stalls.55146/
2645	1000006	4	2021-03-13 17:41:26.176+00	status	PERMIT	CONSTRUCTION
3240	1000004	1	2021-03-13 21:15:09.373+00	name	\N	San Jose - Westfield Oakridge, CA
1025	1000006	4	2021-03-15 23:14:31.4+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682/
1025	1000006	4	2021-03-15 23:14:31.4+00	powerKiloWatt	0	120
365	1000006	8	2021-03-16 18:38:50.09+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/36378-Supercharger-Lone-Pine-CA	https://teslamotorsclub.com/tmc/threads/supercharger-lone-pine-ca-live-28-jan-2015-expanded-dec-2019-8-v3-stalls.36378/
600	1000006	3	2021-03-16 22:03:23.279+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/34978-Superchargers-in-Australia/page15	https://teslamotorsclub.com/tmc/threads/superchargers-in-australia.34978/
600	1000006	3	2021-03-16 22:03:23.279+00	powerKiloWatt	0	120
695	1000006	3	2021-03-16 22:05:51.46+00	urlDiscuss	http://techau.com.au/exclusive-teslas-6-bay-supercharger-location-in-wodonga-revealed/	https://teslamotorsclub.com/tmc/threads/supercharger-wodonga-vic.51450/#post-1106606
1175	1000006	10	2021-03-17 03:17:43.121+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/ny-albany-supercharger-updates.25874/	https://teslamotorsclub.com/tmc/threads/supercharger-guilderland-ny.25874/#post-543281
3250	1000004	1	2021-03-17 04:50:24.882+00	name	\N	New Taipei City, Taiwan
160	1000006	2	2021-03-12 01:56:34.385+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/25874-Albany-Supercharger-Updates	https://teslamotorsclub.com/tmc/threads/ny-albany-supercharger-updates.25874/
415	1000006	2	2021-03-12 02:05:19.283+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/25873-Buffalo-Supercharger-Updates	https://teslamotorsclub.com/tmc/threads/buffalo-supercharger-updates.25873/
3245	1000006	2	2021-03-15 16:39:37.127+00	latitude	-37.209970335785066	-37.20997
3245	1000006	2	2021-03-15 16:39:37.127+00	longitude	145.4260369368	145.426036
3245	1000006	3	2021-03-15 23:41:41.473+00	locationId	\N	yeasupercharger
895	1000006	8	2021-03-16 02:13:09.914+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/possible-supercharger-station-in-naples.73874/	https://teslamotorsclub.com/tmc/threads/supercharger-naples-fl.73874/
895	1000006	8	2021-03-16 02:13:09.914+00	powerKiloWatt	0	150
3245	1000004	1	2021-03-15 01:36:07.986+00	name	\N	Yea, VIC
790	1000006	3	2021-03-16 22:05:10.093+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/61517-Supercharger-Port-Macquarie-NSW	https://teslamotorsclub.com/tmc/threads/supercharger-port-macquarie-nsw.61517/
695	1000004	4	2021-03-18 01:46:46.188+00	powerKiloWatt	0	150
790	1000004	4	2021-03-18 01:47:04.708+00	powerKiloWatt	0	150
600	1000004	4	2021-03-18 01:47:20.421+00	powerKiloWatt	120	150
690	1000004	4	2021-03-18 01:49:08.159+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/51451-Supercharger-Gundagai-NSW	https://teslamotorsclub.com/tmc/threads/supercharger-gundagai-nsw.51451
690	1000004	4	2021-03-18 01:49:08.159+00	powerKiloWatt	130	150
2300	1000006	7	2021-03-18 12:50:58.495+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-millstone-nj.186162	https://teslamotorsclub.com/tmc/threads/supercharger-clarksburg-nj.186162/
1385	1000006	6	2021-03-19 00:45:51.402+00	address.street	The Queensway	CF Sherway Gardens, 25 The West Mall
1385	1000006	6	2021-03-19 00:45:51.402+00	address.zip	\N	M9C 1B8
1535	1000006	2	2021-03-19 00:47:38.184+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/mexico-superchargers.43464/
1535	1000006	2	2021-03-19 00:47:38.184+00	powerKiloWatt	120	150
3255	1000004	1	2021-03-19 19:54:23.621+00	name	\N	Montgomery, AL
3255	1000006	2	2021-03-19 21:03:20.508+00	latitude	32.361956	32.361087
3255	1000006	2	2021-03-19 21:03:20.508+00	longitude	-86.135838	-86.161796
3255	1000006	2	2021-03-19 21:03:20.508+00	elevationMeters	64	74
3260	1000004	1	2021-03-21 03:06:20.3+00	name	\N	South Somerset, PA
3260	1000006	2	2021-03-22 18:36:27.709+00	name	South Somerset, PA	Somerset (eastbound), PA
840	1000004	10	2021-03-22 23:33:29.101+00	address.street	2980 Wilder Road	2980 Wilder Rd
1930	1000004	8	2021-03-22 23:33:48.904+00	address.street	4141 Morrish Road	4141 Morrish Rd
1355	1000004	3	2021-03-22 23:47:35.549+00	address.street	2404 Long Lake Road	2404 Long Lake Rd
1265	1000004	5	2021-03-18 01:52:46.833+00	powerKiloWatt	120	150
575	1000004	3	2021-03-18 08:58:24.425+00	powerKiloWatt	150	130
575	1000004	3	2021-03-18 08:58:24.425+00	developerNotes	\N	Updated power output in line with https://tff-forum.de/t/supercharger-in-deutschland/100662/577
1480	1000006	9	2021-03-19 00:36:01.017+00	powerKiloWatt	120	150
1480	1000006	9	2021-03-19 00:36:01.017+00	address.street	Cambridge Smart Center	22 Pinebush Road
1195	1000006	4	2021-03-19 00:52:41.585+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/mexico-superchargers.43464/
1195	1000006	4	2021-03-19 00:52:41.585+00	powerKiloWatt	0	150
1185	1000006	3	2021-03-19 00:53:51.034+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/mexico-superchargers.43464/
1185	1000006	3	2021-03-19 00:53:51.034+00	powerKiloWatt	0	150
1365	1000006	4	2021-03-19 00:54:18.03+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-cupertino-permit-found-construction-not-yet-started.101106/	https://teslamotorsclub.com/tmc/threads/supercharger-cupertino-ca-live-28-mar-2018-10-v2-stalls.101106/
1365	1000006	4	2021-03-19 00:54:18.03+00	powerKiloWatt	120	150
1545	1000006	6	2021-03-19 00:54:35.074+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-glendale-location-found-construction-started-20-urban-chargers.111299/	https://teslamotorsclub.com/tmc/threads/supercharger-glendale-ca-live-29-mar-2018-20-urban-stalls.111299/
1370	1000006	9	2021-03-19 00:56:23.847+00	developerNotes	\N	Tesla's site lists these as 150 kW, but they are in fact Urban Superchargers.
1405	1000006	4	2021-03-19 00:56:47.82+00	powerKiloWatt	0	150
3255	1000006	3	2021-03-20 00:01:08.319+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/montgomery-alabama-new-supercharger.170508/page-2#post-5402356	https://teslamotorsclub.com/tmc/threads/supercharger-montgomery-al.170508/
2630	1000006	4	2021-03-20 00:08:24.494+00	status	CONSTRUCTION	OPEN
2630	1000006	4	2021-03-20 00:08:24.494+00	dateOpened	\N	2021-03-19
3250	1000006	2	2021-03-23 14:42:20.631+00	locationId	\N	asewemallsupercharger
1645	1000006	4	2021-03-23 16:45:02.671+00	powerKiloWatt	120	150
1675	1000006	2	2021-03-23 16:51:53.192+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682/
1485	1000006	8	2021-03-23 17:06:12.469+00	urlDiscuss	https://teslamotorsclub.com/tmc/posts/2509101/	https://teslamotorsclub.com/tmc/threads/supercharger-los-gatos-live-24-sep-2018-12-urban-type.106178/
1485	1000006	8	2021-03-23 17:06:12.469+00	developerNotes	Read discuss link for thread contains double quotes and was not working for all browsers.  Linked to first post in thread for now.	\N
605	1000004	4	2021-03-22 23:33:10.186+00	address.street	3145 Saline Road	3145 Saline Rd
2075	1000004	7	2021-03-22 23:36:06.639+00	address.street	651 Kapkowski Road	651 Kapkowski Rd
415	1000004	3	2021-03-22 23:37:37.562+00	address.street	4455 Transit Road	4455 Transit Rd
925	1000004	5	2021-03-22 23:38:26.706+00	address.street	600 White Plains Road	600 White Plains Rd
350	1000004	3	2021-03-22 23:52:54+00	address.street	5930 Huntoon Street	5930 Huntoon St
820	1000004	6	2021-03-22 23:54:07.337+00	address.street	10 Pleasant Street	10 Pleasant St
1400	1000006	8	2021-03-23 16:29:37.933+00	powerKiloWatt	120	150
1690	1000006	5	2021-03-23 17:25:53.768+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-daly-city-permit-not-found-but-tesla-cabinets-onsite.125740/	https://teslamotorsclub.com/tmc/threads/supercharger-daly-city-ca-live-5-oct-2018-40-urban-stalls.125740/
1935	1000006	11	2021-03-23 18:37:57.734+00	stallCount	12	20
1935	1000006	11	2021-03-23 18:37:57.734+00	developerNotes	+8 stalls in construction	\N
1645	1000006	5	2021-03-24 02:23:48.588+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/%E2%80%9Ccoming-soon%E2%80%9D-fort-myers-supercharger-location-found-under-construction.118249/	https://teslamotorsclub.com/tmc/threads/supercharger-fort-myers-fl-dani-drive.118249/
3000	1000004	3	2021-03-26 08:30:11.612+00	status	CONSTRUCTION	OPEN
3000	1000004	3	2021-03-26 08:30:11.612+00	dateOpened	\N	2021-03-25
3000	1000004	3	2021-03-26 08:30:11.612+00	developerNotes	\N	North side now open according to https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=63#comments
3000	1000004	4	2021-03-26 12:55:08.957+00	locationId	\N	torrentnorthboundsupercharger
3000	1000006	5	2021-03-26 21:12:48.645+00	name	Torrent North, Spain	Torrent - Northbound, Spain
3265	1000006	2	2021-03-26 19:17:50.646+00	stallCount	8	6
3270	1000006	2	2021-03-26 19:18:22.013+00	stallCount	8	6
3280	1000004	1	2021-03-27 15:52:03.797+00	name	\N	Timișoara, Romania
3280	1000006	2	2021-03-27 15:54:45.385+00	locationId	\N	Timisoararosupercharger
560	1000004	3	2021-03-28 16:18:49.034+00	address.street	18001 Bass Pro Drive	18001 Bass Pro Dr
1800	1000004	4	2021-03-28 16:20:40.61+00	address.street	1920 Palisades Center Drive	1920 Palisades Center Dr
3270	1000004	3	2021-03-28 16:25:13.094+00	address.street	3030 Recplace Drive	3030 Recplace Dr
3265	1000004	1	2021-03-24 14:55:19.632+00	name	\N	Creston, BC
3270	1000004	1	2021-03-24 15:08:07.501+00	name	\N	Prince George, BC
3275	1000004	1	2021-03-24 15:23:38.249+00	name	\N	Saskatoon, SK
2480	1000004	9	2021-03-24 16:42:03.686+00	status	CONSTRUCTION	OPEN
2480	1000004	9	2021-03-24 16:42:03.686+00	dateOpened	\N	2021-03-24
3275	1000006	2	2021-03-26 19:18:47.574+00	stallCount	8	6
1685	1000006	3	2021-03-27 01:04:21.763+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/new-supercharger-in-brooklyn-ny-at-brooklyn-museum.124301	https://teslamotorsclub.com/tmc/threads/supercharger-brooklyn-ny-brooklyn-museum.124301/
2510	1000006	4	2021-03-27 01:06:17.338+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/ft-pierce-fl-supercharger-wawa.207117/	https://teslamotorsclub.com/tmc/threads/supercharger-ft-pierce-fl.207117/
3280	1000004	3	2021-03-27 16:36:44.674+00	address.zip	\N	300085
2495	1000004	4	2021-03-28 16:15:49.944+00	address.street	14346 Culver Drive	14346 Culver Dr
2665	1000006	3	2021-03-28 19:03:02.262+00	status	PERMIT	CONSTRUCTION
2600	1000004	4	2021-03-30 00:44:08.675+00	status	CONSTRUCTION	OPEN
2600	1000004	4	2021-03-30 00:44:08.675+00	dateOpened	\N	2021-03-29
2600	1000006	5	2021-03-30 13:53:35.443+00	locationId	NewMilfordCTsupercharger	torringtonsupercharger
330	1000004	4	2021-03-31 07:05:47.001+00	stallCount	12	8
2545	1000006	8	2021-04-01 02:38:23.009+00	stallCount	3	5
2545	1000006	8	2021-04-01 02:38:23.009+00	developerNotes	\N	All 5 stalls operational now: https://teslamotorsclub.com/tmc/posts/5429786/
2695	1000006	5	2021-03-31 01:37:56.544+00	status	CONSTRUCTION	OPEN
2695	1000006	5	2021-03-31 01:37:56.544+00	dateOpened	\N	2021-03-30
2695	1000006	5	2021-03-31 01:37:56.544+00	hours	\N	24/7
2695	1000006	6	2021-03-31 01:38:38.454+00	hours	24/7	\N
3285	1000006	1	2021-03-31 02:29:30.197+00	name	\N	Yongin-Giheung, South Korea
3220	1000004	7	2021-03-31 19:42:18.956+00	status	CONSTRUCTION	OPEN
3220	1000004	7	2021-03-31 19:42:18.956+00	dateOpened	\N	2021-03-31
2560	1000004	5	2021-04-01 15:06:39.247+00	name	Adderstone, UK	Berwick, UK
2560	1000004	5	2021-04-01 15:06:39.247+00	status	CONSTRUCTION	OPEN
2560	1000004	5	2021-04-01 15:06:39.247+00	dateOpened	\N	2021-04-01
2560	1000004	6	2021-04-01 15:07:32.279+00	locationId	\N	berwickuksupercharger
1470	1000006	4	2021-04-01 17:51:35.559+00	hours	\N	Mon-Sat: 6am - 1am, Sun: 9am - 12 midnight
1470	1000006	4	2021-04-01 17:51:35.559+00	developerNotes	\N	New garage hours: https://www.cambridgeside.com/parking and https://teslamotorsclub.com/tmc/posts/5412767/
2695	1000006	7	2021-04-01 22:41:11.157+00	name	Peoria, IL	Peoria - N Sheridan Rd, IL
3290	1000004	1	2021-04-02 00:32:25.95+00	name	\N	Columbus, GA
3215	1000004	2	2021-04-02 02:33:02.923+00	status	PERMIT	CONSTRUCTION
3215	1000006	3	2021-04-02 02:41:45.376+00	powerKiloWatt	0	250
3215	1000006	3	2021-04-02 02:41:45.376+00	developerNotes	\N	V3 cabinets visible in the first construction pictures
2695	1000006	9	2021-04-05 03:25:16.983+00	address.street	4125 N Sheridan Rd	4125 N Sheridan Rd #20
2305	1000004	8	2021-04-06 23:59:18.123+00	name	Pedricktown (Southbound), NJ	Pedricktown - Clara Barton, NJ
2305	1000004	8	2021-04-06 23:59:18.123+00	status	CONSTRUCTION	OPEN
2305	1000004	8	2021-04-06 23:59:18.123+00	dateOpened	\N	2021-04-06
2390	1000006	4	2021-04-07 01:08:38.369+00	stallCount	28	34
3310	1000006	1	2021-04-12 09:17:26.688+00	name	\N	Gelnhausen, Germany
2560	1000004	7	2021-04-12 15:13:48.071+00	locationId	berwickuksupercharger	Adderston%20supercharger
2560	1000004	7	2021-04-12 15:13:48.071+00	name	Berwick, UK	Adderstone, UK
2560	1000004	9	2021-04-12 15:17:16.207+00	locationId	Adderston%20supercharger	Adderston supercharger
2695	1000006	8	2021-04-02 23:56:55.746+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-peoria-il.193024/#post-5299871	https://teslamotorsclub.com/tmc/threads/supercharger-peoria-il-n-sheridan-rd.193024/
3290	1000006	2	2021-04-03 00:05:10.93+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/columbus-ga-supercharger-at-target.224603/#post-5431790	https://teslamotorsclub.com/tmc/threads/supercharger-columbus-ga.224631/
3295	1000004	1	2021-04-04 20:17:34.329+00	name	\N	Hengelo, Netherlands
3300	1000004	1	2021-04-06 16:52:26.752+00	name	\N	神奈川　湘南
3300	1000004	2	2021-04-06 17:01:28.504+00	name	神奈川　湘南	Fujisawa City, Japan
3305	1000004	1	2021-04-08 06:23:20.268+00	name	\N	Varberg
3305	1000004	2	2021-04-08 06:24:46.528+00	stallCount	12	20
3305	1000004	4	2021-04-08 10:07:09.238+00	urlDiscuss	\N	https://teslaclubsweden.se/forum/viewtopic.php?p=517381#p517381
3315	1000004	1	2021-04-15 11:59:49.77+00	name	\N	Lok Fu Market, Hong Kong
3295	1000004	3	2021-04-16 08:49:33.645+00	stallCount	16	12
3295	1000004	3	2021-04-16 08:49:33.645+00	developerNotes	\N	12 stalls as per pictures:https://teslamotorsclub.com/tmc/posts/5449023/
3295	1000006	2	2021-04-05 21:33:48.232+00	locationId	\N	Hengelonlsupercharger
3305	1000004	3	2021-04-08 10:06:20.867+00	name	Varberg	Varberg, Sweden
2305	1000006	9	2021-04-08 18:24:13.514+00	locationId	PedricktownNJsupercharger	pedricktownnjclarabartonsupercharger
2560	1000004	10	2021-04-12 15:18:01.867+00	locationId	Adderston supercharger	Adderstone supercharger
2560	1000006	11	2021-04-12 16:17:28.034+00	elevationMeters	-70	85
3245	1000004	4	2021-04-13 14:25:29.668+00	status	CONSTRUCTION	OPEN
3245	1000004	4	2021-04-13 14:25:29.668+00	dateOpened	\N	2021-04-14
3245	1000004	4	2021-04-13 14:25:29.668+00	address.street	5 Snodgrass St	10 High St
3280	1000006	4	2021-04-14 19:28:49.154+00	status	CONSTRUCTION	OPEN
3280	1000006	4	2021-04-14 19:28:49.154+00	dateOpened	\N	2021-04-14
2230	1000004	4	2021-04-16 13:10:29.665+00	status	CONSTRUCTION	OPEN
2230	1000004	4	2021-04-16 13:10:29.665+00	dateOpened	\N	2021-04-16
3320	1000004	1	2021-04-16 15:51:57.658+00	name	\N	Al Ain, UAE
3325	1000006	1	2021-04-17 15:51:31.684+00	name	\N	Lillehammer Strandtorget, Norway
2495	1000006	5	2021-04-18 04:41:17.69+00	status	CONSTRUCTION	OPEN
2495	1000006	5	2021-04-18 04:41:17.69+00	dateOpened	\N	2021-04-17
3330	1000004	1	2021-04-18 17:35:50.905+00	name	\N	Middletown, DE
2495	1000006	6	2021-04-19 03:10:22.114+00	latitude	33.705955	33.706784
2495	1000006	6	2021-04-19 03:10:22.114+00	longitude	-117.785067	-117.785164
2655	1000004	4	2021-04-21 13:44:02.573+00	latitude	38.302734	38.302946
2655	1000004	4	2021-04-21 13:44:02.573+00	longitude	-76.522277	-76.522367
3290	1000004	3	2021-04-21 20:05:12.517+00	status	CONSTRUCTION	OPEN
3290	1000004	3	2021-04-21 20:05:12.517+00	dateOpened	\N	2021-04-20
3290	1000004	3	2021-04-21 20:05:12.517+00	latitude	32.534012	32.533485
3290	1000004	3	2021-04-21 20:05:12.517+00	longitude	-84.971541	-84.971362
2560	1000006	12	2021-04-22 13:59:42.319+00	locationId	Adderstone supercharger	adderstonesupercharger
3305	1000004	5	2021-04-22 16:25:56.17+00	status	CONSTRUCTION	OPEN
3305	1000004	5	2021-04-22 16:25:56.17+00	dateOpened	\N	2021-04-22
2635	1000004	2	2021-04-22 17:18:22.98+00	status	PERMIT	CONSTRUCTION
3335	1000004	1	2021-04-22 18:38:23.67+00	name	\N	Zapopan, Mexico
3335	1000004	2	2021-04-22 18:38:57.542+00	dateOpened	2020-04-22	2021-04-22
3335	1000006	3	2021-04-22 18:49:22.014+00	locationId	\N	ZapopanJaliscosupercharger
3330	1000004	2	2021-04-23 00:00:43.363+00	status	CONSTRUCTION	OPEN
3330	1000004	2	2021-04-23 00:00:43.363+00	dateOpened	\N	2020-04-22
3335	1000004	4	2021-04-23 12:33:09.898+00	address.state	Jal.	Jalisco
3215	1000006	4	2021-04-23 21:44:47.049+00	stallCount	8	12
2290	1000004	6	2021-04-25 08:08:59.445+00	latitude	44.025818	44.025597
2290	1000004	6	2021-04-25 08:08:59.445+00	longitude	-116.942521	-116.942114
3240	1000004	2	2021-04-26 10:30:36.225+00	status	PERMIT	CONSTRUCTION
3240	1000004	2	2021-04-26 10:30:36.225+00	latitude	37.252178	37.250854
3240	1000004	2	2021-04-26 10:30:36.225+00	longitude	-121.863485	-121.860731
3240	1000004	2	2021-04-26 10:30:36.225+00	elevationMeters	57	55
1940	1000004	11	2021-04-26 13:07:19.092+00	stallCount	22	32
1940	1000004	11	2021-04-26 13:07:19.092+00	developerNotes	At NH Hotel\r\n32 stalls accoding to forum post: https://forum.supercharge.info/t/naarden-update/558\r\n22/10/19: 12 stalls installed\r\n16/12/2019: updated from 12 to 22 stalls	At NH Hotel\r\n32 stalls accoding to forum post: https://forum.supercharge.info/t/naarden-update/558\r\n22/10/19: 12 stalls installed\r\n16/12/2019: updated from 12 to 22 stalls\r\nRVG210426: now 32 stalls as per Tesla (at least 6 extra confirmed 01-2021
1915	1000004	2	2021-04-26 23:23:20.305+00	locationId	tianjinbinhaixinqusupercharger	cnsc8250
3340	1000004	1	2021-04-27 14:58:26.103+00	name	\N	Cranford, NJ
2595	1000006	2	2021-04-27 15:40:58.242+00	status	PERMIT	CONSTRUCTION
2495	1000006	7	2021-04-28 15:28:46.623+00	locationId	\N	EastIrvineCAsupercharger
3345	1000004	1	2021-04-28 16:32:04.2+00	name	\N	San Bruno - Shops at Tanforan, CA
3350	1000004	1	2021-04-28 16:45:34.545+00	name	\N	Sun Valley, CA
2595	1000006	3	2021-04-30 02:21:17.366+00	latitude	35.34946	35.34726
2595	1000006	3	2021-04-30 02:21:17.366+00	longitude	-80.85886	-80.85921
2595	1000006	3	2021-04-30 02:21:17.366+00	elevationMeters	231	227
3355	1000004	1	2021-04-30 05:34:45.596+00	name	\N	Hwaseong, South Korea
3355	1000004	2	2021-04-30 05:53:00.678+00	address.city	화성	Hwaseong
2205	1000004	4	2021-05-01 12:28:32.693+00	status	CONSTRUCTION	OPEN
2205	1000004	4	2021-05-01 12:28:32.693+00	dateOpened	\N	2021-05-01
2205	1000004	5	2021-05-01 19:18:23.525+00	latitude	39.012335	39.011489
2205	1000004	5	2021-05-01 19:18:23.525+00	longitude	-84.639109	84.640279
2205	1000004	5	2021-05-01 19:18:23.525+00	elevationMeters	274	1108
2595	1000006	4	2021-04-30 02:22:52.03+00	address.street	9841 Northlake Centre Pkwy	9717 Northlake Centre Pkwy F
2665	1000006	4	2021-04-30 10:50:37.947+00	status	CONSTRUCTION	OPEN
2665	1000006	4	2021-04-30 10:50:37.947+00	dateOpened	\N	2021-04-30
2205	1000004	6	2021-05-02 01:56:27.186+00	longitude	84.640279	-84.640279
3360	1000004	1	2021-05-05 10:36:07.041+00	name	\N	Kirke Såby, Denmark
2665	1000006	5	2021-05-06 14:50:04.358+00	name	Skien Arkaden, Norway	Skien, Norway
2665	1000006	5	2021-05-06 14:50:04.358+00	address.street	Arkade center P-house - entrance via Fiskeslepet	1 Henrik Ibsens gate Skien
2270	1000006	2	2021-05-06 17:15:03.235+00	locationId	\N	PortageMIsupercharger
2270	1000006	2	2021-05-06 17:15:03.235+00	latitude	42.242426438302516	42.242426
2270	1000006	2	2021-05-06 17:15:03.235+00	longitude	-85.58839380741	-85.588393
3005	1000006	8	2021-05-07 22:06:11.372+00	locationId	\N	airedelabissupercharger
3005	1000006	8	2021-05-07 22:06:11.372+00	name	Chambéry Granier Est, France	Aire de l’Abis , France
3005	1000006	8	2021-05-07 22:06:11.372+00	status	CONSTRUCTION	OPEN
3005	1000006	8	2021-05-07 22:06:11.372+00	dateOpened	\N	2021-05-07
3005	1000006	8	2021-05-07 22:06:11.372+00	stallCount	16	12
3005	1000006	8	2021-05-07 22:06:11.372+00	developerNotes	More information:\r\n\r\nhttps://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?page=57&tab=comments#comment-783106	2021-05-07: appeared on Find Us\r\n\r\nMore information:\r\n\r\nhttps://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?page=57&tab=comments#comment-783106
2535	1000004	3	2021-05-08 18:18:52.123+00	status	PERMIT	CONSTRUCTION
2270	1000004	3	2021-05-08 18:19:00.638+00	status	PERMIT	CONSTRUCTION
3370	1000004	1	2021-05-11 07:20:49.521+00	name	\N	Rivesaltes, France
2205	1000006	7	2021-05-07 21:59:22.428+00	locationId	FlorenceKYsupercharger	florencesupercharger
2205	1000006	7	2021-05-07 21:59:22.428+00	name	Florence, KY	Florence - Houston Road, KY
2205	1000006	8	2021-05-07 21:59:40.892+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/florence-kentucky-supercharger.176269/	https://teslamotorsclub.com/tmc/threads/supercharger-florence-ky-houston-road.176269/
3365	1000004	1	2021-05-08 18:22:05.2+00	name	\N	Benton Harbor, MI
2325	1000006	2	2021-05-10 14:39:18.961+00	status	PERMIT	CONSTRUCTION
2325	1000006	2	2021-05-10 14:39:18.961+00	powerKiloWatt	0	250
2325	1000006	3	2021-05-10 14:40:20.667+00	locationId	\N	MountPleasantIAsupercharger
2325	1000006	4	2021-05-10 14:42:34.004+00	latitude	40.9615205	40.961378
2325	1000006	4	2021-05-10 14:42:34.004+00	longitude	-91.5284488	-91.528249
2650	1000004	3	2021-05-04 01:19:55.656+00	status	PERMIT	CONSTRUCTION
2650	1000004	3	2021-05-04 01:19:55.656+00	latitude	41.701865	41.701506
2650	1000004	3	2021-05-04 01:19:55.656+00	longitude	-122.644518	-122.645108
2650	1000004	3	2021-05-04 01:19:55.656+00	elevationMeters	831	833
3005	1000004	9	2021-05-08 00:58:43.056+00	name	Aire de l’Abis , France	Aire de l’Abis, France
2270	1000006	4	2021-05-10 00:41:01.186+00	status	CONSTRUCTION	PERMIT
2270	1000006	4	2021-05-10 00:41:01.186+00	developerNotes	\N	A TMC user drove to the Meijer's and saw no evidence of construction.
3295	1000006	4	2021-05-11 21:59:18.425+00	status	CONSTRUCTION	OPEN
3295	1000006	4	2021-05-11 21:59:18.425+00	dateOpened	\N	2021-05-11
3295	1000006	4	2021-05-11 21:59:18.425+00	urlDiscuss	https://teslamotorsclub.com/tmc/posts/5434870/	https://teslamotorsclub.com/tmc/posts/5515170/
3295	1000006	4	2021-05-11 21:59:18.425+00	developerNotes	12 stalls as per pictures:https://teslamotorsclub.com/tmc/posts/5449023/	\N
2290	1000006	7	2021-05-12 02:22:24.183+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/ontario-or-supercharger-permitted.184994/	https://teslamotorsclub.com/tmc/https://teslamotorsclub.com/tmc/threads/supercharger-ontario-or.184994/
3375	1000004	1	2021-05-12 09:01:18.745+00	name	\N	Blois, France
3375	1000004	2	2021-05-12 09:27:27.074+00	latitude	47.612204	47.61154024510216
3375	1000004	2	2021-05-12 09:27:27.074+00	longitude	1.33938	1.33921443671236
3365	1000006	2	2021-05-13 19:14:06.019+00	latitude	42.083249	42.082115
3365	1000006	2	2021-05-13 19:14:06.019+00	longitude	-86.422504	-86.423841
3385	1000004	1	2021-05-14 17:16:58.202+00	name	\N	Ripon, CA
3385	1000006	2	2021-05-14 18:27:09.72+00	address.countryId	101	100
2655	1000004	5	2021-05-14 19:21:38.825+00	status	CONSTRUCTION	OPEN
2655	1000004	5	2021-05-14 19:21:38.825+00	dateOpened	\N	2021-05-14
2645	1000004	5	2021-05-15 00:40:17.11+00	status	CONSTRUCTION	OPEN
2645	1000004	5	2021-05-15 00:40:17.11+00	dateOpened	\N	2021-05-14
3380	1000004	1	2021-05-13 18:23:23.547+00	name	\N	El Portal, CA
3215	1000006	5	2021-05-16 12:28:51.735+00	status	CONSTRUCTION	OPEN
3215	1000006	5	2021-05-16 12:28:51.735+00	dateOpened	\N	2021-05-16
3215	1000006	6	2021-05-16 12:30:13.672+00	developerNotes	V3 cabinets visible in the first construction pictures	\N
3390	1000004	1	2021-05-16 23:17:57.484+00	name	\N	Parly 2, France
3395	1000004	1	2021-05-18 04:30:56+00	name	\N	Sammamish, WA
2500	1000006	3	2021-05-12 20:09:06.176+00	status	PERMIT	CONSTRUCTION
2500	1000006	4	2021-05-13 20:15:14.349+00	locationId	karasjoksupercharger	kautokeino supercharger
2500	1000006	4	2021-05-13 20:15:14.349+00	name	Karasjok, Norway	Kautokeino, Norway
2500	1000006	4	2021-05-13 20:15:14.349+00	latitude	69.472512	69.0204254956008
2500	1000006	4	2021-05-13 20:15:14.349+00	longitude	25.51917	23.04871022701263
2500	1000006	4	2021-05-13 20:15:14.349+00	elevationMeters	154	343
2500	1000006	4	2021-05-13 20:15:14.349+00	urlDiscuss	https://elbilforum.no/index.php?topic=7959.3945	https://www.facebook.com/groups/799414020146419
2500	1000006	4	2021-05-13 20:15:14.349+00	address.street	Fitnodatgeaidnu	Baktevarri 1, 9520
2500	1000006	4	2021-05-13 20:15:14.349+00	address.city	Karasjok	Kautokeino
2500	1000006	4	2021-05-13 20:15:14.349+00	address.zip	9730	9520
2270	1000004	5	2021-05-14 17:51:11.824+00	status	PERMIT	CONSTRUCTION
2270	1000006	6	2021-05-16 15:42:32.707+00	latitude	42.242426	42.244
2270	1000006	6	2021-05-16 15:42:32.707+00	longitude	-85.588393	-85.587575
2270	1000006	6	2021-05-16 15:42:32.707+00	elevationMeters	262	260
2270	1000006	6	2021-05-16 15:42:32.707+00	developerNotes	A TMC user drove to the Meijer's and saw no evidence of construction.	\N
3215	1000006	7	2021-05-17 01:32:57.287+00	latitude	33.726741	33.726907
3215	1000006	7	2021-05-17 01:32:57.287+00	longitude	-84.735242	-84.735784
3215	1000006	7	2021-05-17 01:32:57.287+00	elevationMeters	339	340
1710	1000006	7	2021-05-18 19:36:44.05+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/new-supercharger-coming-to-walker-mi.129159/	https://teslamotorsclub.com/tmc/threads/supercharger-walker-mi.129159/page-3
3255	1000006	4	2021-05-18 19:42:43.007+00	latitude	32.361087	32.361192
3255	1000006	4	2021-05-18 19:42:43.007+00	longitude	-86.161796	-86.161314
2500	1000006	5	2021-05-19 19:14:44.986+00	latitude	69.0204254956008	69.020425
2500	1000006	5	2021-05-19 19:14:44.986+00	longitude	23.04871022701263	23.04871
3325	1000006	2	2021-05-19 19:16:05.193+00	latitude	61.11454020671957	61.11454
3325	1000006	2	2021-05-19 19:16:05.193+00	longitude	10.447179973125	10.447179
3400	1000004	1	2021-05-21 04:03:14.027+00	name	\N	Abingdon, MD
2390	1000004	5	2021-05-21 13:20:01.537+00	status	CONSTRUCTION	OPEN
2390	1000004	5	2021-05-21 13:20:01.537+00	dateOpened	\N	2021-05-21
3230	1000004	3	2021-05-22 06:16:50.533+00	name	Windach, Germany	Türkheim, Germany
3230	1000004	3	2021-05-22 06:16:50.533+00	status	CONSTRUCTION	OPEN
3230	1000004	3	2021-05-22 06:16:50.533+00	dateOpened	\N	2021-05-22
3260	1000004	3	2021-05-25 03:57:41.181+00	name	Somerset (eastbound), PA	Somerset - South Service Plaza, PA
2390	1000006	6	2021-05-25 15:03:51.34+00	locationId	\N	SanFranciscoCAsupercharger2
3405	1000006	1	2021-05-25 20:30:55.932+00	name	\N	South Boston, VA
2650	1000004	4	2021-05-26 15:27:22.565+00	status	CONSTRUCTION	OPEN
2650	1000004	4	2021-05-26 15:27:22.565+00	dateOpened	\N	2021-05-26
3235	1000006	2	2021-05-26 21:15:53.783+00	latitude	38.160227	38.159762
3235	1000006	2	2021-05-26 21:15:53.783+00	longitude	-87.551743	-87.551955
3420	1000006	1	2021-05-31 15:36:31.808+00	name	\N	Chowchilla, CA
3320	1000004	2	2021-06-01 15:35:44.918+00	status	CONSTRUCTION	OPEN
3320	1000004	2	2021-06-01 15:35:44.918+00	dateOpened	\N	2021-06-01
3320	1000004	2	2021-06-01 15:35:44.918+00	stallCount	4	3
3320	1000004	3	2021-06-01 22:48:59.941+00	locationId	\N	78900
2295	1000006	6	2021-05-26 19:38:00.057+00	locationId	fortwilliamsupercharger	fortwilliamuksupercharger
2535	1000004	4	2021-05-31 06:15:14.728+00	status	CONSTRUCTION	OPEN
2535	1000004	4	2021-05-31 06:15:14.728+00	dateOpened	\N	2021-05-31
3410	1000004	1	2021-05-28 17:15:27.554+00	name	\N	San Diego - Carmel Valley, CA
3255	1000004	5	2021-05-28 19:01:03.254+00	status	PERMIT	CONSTRUCTION
3415	1000004	1	2021-05-30 18:59:08.415+00	name	\N	East Hampton, NY
225	1000004	7	2021-05-31 16:55:27.988+00	stallCount	12	28
225	1000004	7	2021-05-31 16:55:27.988+00	powerKiloWatt	130	250
3320	1000004	4	2021-06-01 22:50:11.615+00	locationId	78900	alainsupercharger
3320	1000004	5	2021-06-01 22:50:37.796+00	name	Al Ain, UAE	Al Ain - Hazza Bin Zayed Stadium, UAE
3230	1000006	4	2021-06-02 14:18:33.282+00	locationId	windachdesupercharger	türkheimsupercharger
205	1000006	3	2021-06-02 17:31:45.737+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/cheyenne-wyoming-supercharger.37280/	https://teslamotorsclub.com/tmc/threads/supercharger-cheyenne-wy.37280/
1705	1000006	5	2021-06-02 17:58:08.858+00	stallCount	14	18
1705	1000006	5	2021-06-02 17:58:08.858+00	developerNotes	\N	Updated from 14 to 18 stalls via TMC posting.
3425	1000004	1	2021-06-03 07:11:03.562+00	name	\N	Tilburg, Netherlands
3310	1000006	2	2021-06-03 14:55:55.24+00	locationId	\N	Gelnhausendesupercharger
3310	1000006	2	2021-06-03 14:55:55.24+00	status	CONSTRUCTION	OPEN
3310	1000006	2	2021-06-03 14:55:55.24+00	dateOpened	\N	2021-06-03
3310	1000006	2	2021-06-03 14:55:55.24+00	latitude	50.1887057470665	50.188705
3310	1000006	2	2021-06-03 14:55:55.24+00	longitude	9.186040163040163	9.18604
3310	1000006	2	2021-06-03 14:55:55.24+00	urlDiscuss	https://tff-forum.de/t/supercharger-in-deutschland/100662/1222?u=m3giles	https://forum.supercharge.info/t/supercharger-gelnhausen-germany/1518
3310	1000006	2	2021-06-03 14:55:55.24+00	developerNotes	\N	Pointing discuss to our forums since the ttf ones are hard to follow the progression of a single location.\r\n\r\nhttps://tff-forum.de/t/supercharger-in-deutschland/100662/1222
3310	1000006	3	2021-06-03 15:00:13.099+00	stallCount	8	12
3310	1000004	4	2021-06-04 09:07:36.594+00	stallCount	12	11
3310	1000004	4	2021-06-04 09:07:36.594+00	developerNotes	Pointing discuss to our forums since the ttf ones are hard to follow the progression of a single location.\r\n\r\nhttps://tff-forum.de/t/supercharger-in-deutschland/100662/1222	Pointing discuss to our forums since the ttf ones are hard to follow the progression of a single location.\r\n-- Yes, it's really 11 stalls. Unusual number, I know!\r\n\r\nhttps://tff-forum.de/t/supercharger-in-deutschland/100662/1222
3430	1000004	1	2021-06-04 23:08:43.598+00	name	\N	Austin - Brodie Lane, TX
3430	1000004	2	2021-06-04 23:09:19.56+00	locationId	austinwesttxsupercharger	westaustintxsupercharger
3430	1000004	3	2021-06-04 23:09:47.345+00	locationId	westaustintxsupercharger	\N
3435	1000004	1	2021-06-07 04:24:06.042+00	name	\N	Vadnais Heights, MN
3365	1000006	3	2021-06-07 20:57:02.803+00	stallCount	8	12
2055	1000004	3	2021-06-08 00:12:43.889+00	status	PERMIT	CONSTRUCTION
2055	1000004	3	2021-06-08 00:12:43.889+00	stallCount	6	12
2055	1000004	3	2021-06-08 00:12:43.889+00	powerKiloWatt	150	250
3440	1000004	1	2021-06-09 13:13:45.572+00	name	\N	Pitești, Romania
3230	1000006	5	2021-06-09 21:52:26.565+00	locationId	türkheimsupercharger	turkheimsupercharger
3445	1000004	1	2021-06-10 19:24:00.463+00	name	\N	SaIem - Apperson Dr, VA
3445	1000004	2	2021-06-10 19:26:27.104+00	name	SaIem - Apperson Dr, VA	La Jolla, CA (Pre-Made Location)
3445	1000004	2	2021-06-10 19:26:27.104+00	developerNotes	Waiting on updates for this location. Do not mark open on TMC until my source reports from on site or another thread is created.	Waiting on updates for this location. Do not mark open on SI or create a thread on TMC until my source reports from on site or another thread is created.
3445	1000004	5	2021-06-10 20:27:19.535+00	status	CLOSED_PERM	OPEN
3445	1000004	5	2021-06-10 20:27:19.535+00	dateOpened	\N	2021-06-10
3445	1000004	5	2021-06-10 20:27:19.535+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-san-diego-ca-university-city-7-urban-72-kw-stalls-in-service.230588/
3445	1000004	5	2021-06-10 20:27:19.535+00	powerKiloWatt	75	72
3445	1000004	5	2021-06-10 20:27:19.535+00	developerNotes	Waiting on updates for this location. DO NOT mark open on SI or create a thread on TMC until my source reports from on site or another thread is created.	\N
2325	1000006	5	2021-06-11 02:44:48.025+00	status	CONSTRUCTION	OPEN
2325	1000006	5	2021-06-11 02:44:48.025+00	dateOpened	\N	2021-06-10
3450	1000006	2	2021-06-15 18:09:54.38+00	locationId	\N	corksupercharger
3460	1000004	1	2021-06-16 17:26:38.89+00	name	\N	Cape Girardeau, MO
3445	1000004	3	2021-06-10 19:26:51.873+00	developerNotes	Waiting on updates for this location. Do not mark open on SI or create a thread on TMC until my source reports from on site or another thread is created.	Waiting on updates for this location. DO NOT mark open on SI or create a thread on TMC until my source reports from on site or another thread is created.
3445	1000004	4	2021-06-10 19:27:00.506+00	name	La Jolla, CA (Pre-Made Location)	La Jolla, CA
3445	1000006	6	2021-06-12 14:49:29.739+00	locationId	\N	LaJollaCAsupercharger
3445	1000006	6	2021-06-12 14:49:29.739+00	name	La Jolla, CA	San Diego - University Center Lane, CA
3450	1000004	1	2021-06-13 16:07:17.869+00	name	\N	Cork, Ireland
3455	1000004	1	2021-06-15 16:10:04.375+00	name	\N	Plymouth, UK
3465	1000004	2	2021-06-20 17:57:05.335+00	name	Santa Barbara - Ortega St	Santa Barbara - Ortega St, CA
3405	1000006	2	2021-06-22 15:22:10.076+00	stallCount	8	4
3370	1000006	2	2021-06-22 15:33:49.422+00	status	PERMIT	CONSTRUCTION
3370	1000006	2	2021-06-22 15:33:49.422+00	latitude	42.774887560936975	42.775309475660386
3370	1000006	2	2021-06-22 15:33:49.422+00	longitude	2.9079446228072	2.9082424978137
3370	1000006	2	2021-06-22 15:33:49.422+00	developerNotes	See here: https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=76#comments	Under construction according to https://forum.supercharge.info/t/rivesaltes-france/1594
3370	1000006	3	2021-06-22 15:35:37.672+00	latitude	42.775309475660386	42.775309
3370	1000006	3	2021-06-22 15:35:37.672+00	longitude	2.9082424978137	2.908242
3455	1000006	2	2021-06-15 18:10:36.925+00	locationId	\N	Plymouthgbsupercharger
3455	1000006	3	2021-06-15 18:10:55.837+00	locationId	Plymouthgbsupercharger	\N
2120	1000006	5	2021-06-19 02:42:44.423+00	locationId	Brekkvasselvsupercharger	brekkvasselvsupercharger
2120	1000006	5	2021-06-19 02:42:44.423+00	status	CONSTRUCTION	OPEN
2120	1000006	5	2021-06-19 02:42:44.423+00	dateOpened	\N	2021-06-18
2120	1000006	5	2021-06-19 02:42:44.423+00	stallCount	12	8
2120	1000006	5	2021-06-19 02:42:44.423+00	powerKiloWatt	0	250
2120	1000006	5	2021-06-19 02:42:44.423+00	developerNotes	Please only fill in the Power-value if you have proof.	2021-06-18: Appeared open on Find Us
3475	1000004	1	2021-06-24 01:21:18.686+00	name	\N	Seoul - Centerfield, South Korea
2540	1000004	2	2021-06-19 02:34:51.82+00	status	PERMIT	CONSTRUCTION
3465	1000004	1	2021-06-20 17:56:53.232+00	name	\N	Santa Barbara - Ortega St
3470	1000004	1	2021-06-21 15:26:57.423+00	name	\N	Crossville, TN
3240	1000006	3	2021-06-25 03:56:10.971+00	status	CONSTRUCTION	OPEN
3240	1000006	3	2021-06-25 03:56:10.971+00	dateOpened	\N	2021-06-24
3480	1000004	1	2021-06-25 08:13:28.206+00	name	\N	Troisdorf, Germany
260	1000004	5	2021-06-25 08:23:08.766+00	powerKiloWatt	150	250
260	1000004	5	2021-06-25 08:23:08.766+00	developerNotes	\N	25 June 2021: 8 v2 superchargers replaced with v3, so now there are 12xv2 and 8xv3:\r\nhttps://teslaclubsweden.se/forum/viewtopic.php?f=45&t=15902&start=530
3375	1000004	3	2021-06-25 15:16:29.202+00	status	CONSTRUCTION	OPEN
3375	1000004	3	2021-06-25 15:16:29.202+00	dateOpened	\N	2021-06-25
3375	1000004	3	2021-06-25 15:16:29.202+00	developerNotes	\N	25 June 2021: Open according to our forum
2595	1000004	5	2021-06-26 00:04:56.268+00	locationId	\N	CharlotteNCsupercharger
2595	1000004	5	2021-06-26 00:04:56.268+00	name	Charlotte - Northlake, NC	Charlotte - Northlake Centre Pkwy, NC
2595	1000004	5	2021-06-26 00:04:56.268+00	status	CONSTRUCTION	OPEN
2595	1000004	5	2021-06-26 00:04:56.268+00	dateOpened	\N	2021-06-26
3405	1000004	3	2021-06-26 03:32:09.022+00	status	PERMIT	CONSTRUCTION
2660	1000006	2	2021-06-26 21:13:50.845+00	locationId	\N	SanRamonCAsupercharger
2660	1000006	2	2021-06-26 21:13:50.845+00	status	PERMIT	CONSTRUCTION
3235	1000006	3	2021-06-26 21:39:09.919+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/elberfeld-in-sc.115540/page-3#post-5380837	https://teslamotorsclub.com/tmc/threads/supercharger-haubstadt-in.115540
3240	1000006	4	2021-06-26 21:44:23.516+00	locationId	\N	SanJoseCAsupercharger
3240	1000006	4	2021-06-26 21:44:23.516+00	name	San Jose - Westfield Oakridge, CA	San Jose - 925 Blossom Hill Rd, CA
3485	1000004	1	2021-06-26 22:38:58.31+00	name	\N	Ondara, Spain
3240	1000006	5	2021-06-26 21:45:51.625+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-san-jose-westfield-oakridge-ca-48-charging-stations-total.222725/	https://teslamotorsclub.com/tmc/threads/supercharger-san-jose-ca-925-blossom-hill-road-westfield-oakridge-live-24-jun-2021-24-v3-stalls.222725/
2595	1000006	6	2021-06-26 23:02:39.422+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-north-charlotte-northlake-target.214231/	https://teslamotorsclub.com/tmc/threads/supercharger-charlotte-nc-northlake-centre-parkway.214231/
3440	1000004	2	2021-06-29 13:14:24.037+00	status	CONSTRUCTION	OPEN
3440	1000004	2	2021-06-29 13:14:24.037+00	dateOpened	\N	2021-06-29
3440	1000006	3	2021-06-30 14:40:31.266+00	stallCount	8	6
3450	1000004	3	2021-06-30 15:02:51.741+00	status	CONSTRUCTION	OPEN
3450	1000004	3	2021-06-30 15:02:51.741+00	dateOpened	\N	2021-06-29
3450	1000004	4	2021-06-30 17:14:37.119+00	stallCount	8	4
3450	1000004	5	2021-06-30 17:14:55.944+00	developerNotes	\N	Only 4 active until power sorted
3495	1000004	3	2021-07-01 04:10:54.19+00	address.street	Foothill Blvd	12750 Foothill Blvd
2270	1000004	8	2021-07-02 23:39:18.589+00	name	Portage - Westnedge Ave, MI	Portage, MI
2270	1000006	9	2021-07-02 23:43:20.344+00	name	Portage, MI	Portage - Westnedge Ave, MI
2270	1000006	9	2021-07-02 23:43:20.344+00	developerNotes	\N	Tesla's official name for this location, per the in-car navigation screen shown on TMC, is "Portage - Westnedge Ave".  \r\nWe should match Tesla's official Supercharger names, even if they are verbose.
3515	1000004	1	2021-07-07 01:04:43.806+00	name	\N	Mountain Village, CO
3535	1000004	1	2021-07-19 07:53:14.658+00	name	\N	Vierzon, France
3375	1000006	4	2021-06-29 16:24:37.95+00	latitude	47.61154024510216	47.61154
3375	1000006	4	2021-06-29 16:24:37.95+00	longitude	1.33921443671236	1.339214
3490	1000004	1	2021-06-29 20:17:26.455+00	name	\N	Meredith, NH
3495	1000004	1	2021-06-30 23:44:36.653+00	name	\N	Rancho Cucamonga - Foothill Blvd, CA
3500	1000004	1	2021-07-01 02:12:55.818+00	name	\N	Seoul - Seocho, South Korea
3495	1000006	2	2021-07-01 03:42:26.505+00	latitude	34.10728	34.106627
3495	1000006	2	2021-07-01 03:42:26.505+00	longitude	-117.526653	-117.527064
3360	1000004	2	2021-07-01 10:15:30.691+00	status	CONSTRUCTION	OPEN
3360	1000004	2	2021-07-01 10:15:30.691+00	dateOpened	\N	2021-07-01
2560	1000004	13	2021-07-01 11:54:24.9+00	status	OPEN	CLOSED_TEMP
2560	1000004	13	2021-07-01 11:54:24.9+00	dateOpened	2021-04-01	\N
3360	1000006	3	2021-07-01 21:20:33.525+00	locationId	KirkeSabydksupercharger	holbaeksupercharger
2010	1000006	5	2021-07-10 00:40:34.276+00	name	Taimao, Taiwan	Taoyuan City - Taimao Shopping Center, Taiwan
2010	1000006	5	2021-07-10 00:40:34.276+00	address.street	338台灣桃園市蘆竹區南崁路一段112號	蘆竹區南崁路一段112號1樓
2010	1000006	5	2021-07-10 00:40:34.276+00	address.city	Taimao	Taoyuan City
3270	1000004	5	2021-07-13 00:13:55.427+00	latitude	53.890315	53.890728
3270	1000004	5	2021-07-13 00:13:55.427+00	longitude	-122.769538	-122.767745
3270	1000004	5	2021-07-13 00:13:55.427+00	elevationMeters	594	595
3525	1000004	3	2021-07-20 08:59:43.557+00	stallCount	16	11
3525	1000004	3	2021-07-20 08:59:43.557+00	developerNotes	\N	It's 11 stalls according to the Norwegian forum:\r\nhttps://elbilforum.no/index.php?topic=7959.4260
3505	1000004	1	2021-07-01 21:58:35.844+00	name	\N	Austin - S Lamar Blvd, TX
3510	1000004	1	2021-07-03 21:59:15.791+00	name	\N	Roslyn Heights, NY
3235	1000004	4	2021-07-15 04:21:05.757+00	status	PERMIT	CONSTRUCTION
2270	1000006	7	2021-07-02 20:52:51.696+00	name	Portage, MI	Portage - Westnedge Ave, MI
2270	1000006	7	2021-07-02 20:52:51.696+00	status	CONSTRUCTION	OPEN
2270	1000006	7	2021-07-02 20:52:51.696+00	dateOpened	\N	2021-07-02
2125	1000006	8	2021-07-09 23:38:42.005+00	name	Madrid, Spain	Madrid - Nuevos Ministerios, Spain
2125	1000006	8	2021-07-09 23:38:42.005+00	developerNotes	\N	Renamed on Find Us
3370	1000004	4	2021-07-15 07:05:44.542+00	status	CONSTRUCTION	OPEN
3370	1000004	4	2021-07-15 07:05:44.542+00	dateOpened	\N	2021-07-15
3370	1000004	4	2021-07-15 07:05:44.542+00	developerNotes	Under construction according to https://forum.supercharge.info/t/rivesaltes-france/1594	15 July 2021: Now open according to https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=98#comments
3530	1000004	1	2021-07-15 12:00:17.276+00	name	\N	Ottersberg-Posthausen, Germany
140	1000004	3	2021-07-03 04:26:06.766+00	status	OPEN	CLOSED_PERM
140	1000004	3	2021-07-03 04:26:06.766+00	dateOpened	2014-05-08	\N
2560	1000004	14	2021-07-06 07:11:55.139+00	status	CLOSED_TEMP	OPEN
2560	1000004	14	2021-07-06 07:11:55.139+00	dateOpened	\N	2021-04-01
3330	1000004	3	2021-07-12 16:56:47.439+00	dateOpened	2020-04-22	2021-04-22
2595	1000004	7	2021-07-12 17:40:09.416+00	dateOpened	2021-06-26	2021-06-25
3270	1000004	4	2021-07-12 20:38:57.44+00	status	PERMIT	CONSTRUCTION
2560	1000004	15	2021-07-13 07:23:48.487+00	status	OPEN	CLOSED_TEMP
2560	1000004	15	2021-07-13 07:23:48.487+00	dateOpened	2021-04-01	\N
3525	1000006	2	2021-07-14 16:33:12.98+00	latitude	60.35457200459692	60.354572
3525	1000006	2	2021-07-14 16:33:12.98+00	longitude	10.5730265378952	10.573026
3520	1000004	1	2021-07-11 17:40:44.714+00	name	\N	Redruth, UK
3520	1000004	2	2021-07-12 07:21:52.139+00	stallCount	4	8
2560	1000004	16	2021-07-13 15:52:49.468+00	status	CLOSED_TEMP	OPEN
2560	1000004	16	2021-07-13 15:52:49.468+00	dateOpened	\N	2021-04-01
3525	1000006	1	2021-07-13 22:02:17.157+00	name	\N	Gran, Norway
3260	1000006	4	2021-07-21 16:10:21.995+00	status	CONSTRUCTION	OPEN
3260	1000006	4	2021-07-21 16:10:21.995+00	dateOpened	\N	2021-07-21
3540	1000004	1	2021-07-21 18:45:32.56+00	name	\N	Santa Monica I-10, CA
2635	1000004	3	2021-07-23 19:12:48.192+00	status	CONSTRUCTION	OPEN
2635	1000004	3	2021-07-23 19:12:48.192+00	dateOpened	\N	2021-07-23
2035	1000004	7	2021-07-27 13:48:35.724+00	status	OPEN	CLOSED_TEMP
2035	1000004	7	2021-07-27 13:48:35.724+00	dateOpened	2019-12-23	\N
3510	1000006	2	2021-07-27 18:29:20.889+00	name	Roslyn Heights, NY	Roslyn Heights - Willis Ave, NY
3510	1000006	2	2021-07-27 18:29:20.889+00	status	CONSTRUCTION	OPEN
3510	1000006	2	2021-07-27 18:29:20.889+00	dateOpened	\N	2021-07-27
3405	1000004	4	2021-07-29 22:26:48.09+00	status	CONSTRUCTION	OPEN
3405	1000004	4	2021-07-29 22:26:48.09+00	dateOpened	\N	2021-07-29
3365	1000004	4	2021-07-31 07:18:11.258+00	locationId	bentonharbormisupercharger	BentonHarborMIsupercharger
3365	1000004	4	2021-07-31 07:18:11.258+00	status	CONSTRUCTION	OPEN
3365	1000004	4	2021-07-31 07:18:11.258+00	dateOpened	\N	2021-07-31
3550	1000004	1	2021-07-29 19:14:04.768+00	name	\N	Sevenoaks, UK
3405	1000006	5	2021-08-02 16:56:23.638+00	name	South Boston, VA	South Boston - Philpott Rd, VA
755	1000004	4	2021-08-10 14:33:14.594+00	stallCount	10	16
755	1000004	4	2021-08-10 14:33:14.594+00	powerKiloWatt	150	250
755	1000004	4	2021-08-10 14:33:14.594+00	developerNotes	10 stalls confirmed. 2 on palette-chargers	10 Aug 2021: Now 16 stalls, 8 x v2 and 8x v3\r\nhttps://tff-forum.de/t/tesla-momente/100885/2213
3575	1000004	1	2021-08-11 11:57:41.863+00	name	\N	Taoyuan , Taiwan
3580	1000004	1	2021-08-12 14:23:20.064+00	name	\N	Yemassee, SC
2425	1000006	8	2021-07-30 16:34:31.281+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/first-supercharger-in-iceland-opening.178557/page-4	https://teslamotorsclub.com/tmc/threads/supercharger-fossvogur-iceland.235474/
1210	1000004	12	2021-08-03 14:12:12.499+00	address.street	Whitemud and 111 St	5015 111 St
1210	1000004	12	2021-08-03 14:12:12.499+00	address.zip	\N	T6H 4M6
3400	1000004	2	2021-08-04 21:16:57.589+00	status	PERMIT	CONSTRUCTION
3565	1000004	1	2021-08-08 01:03:33.822+00	name	\N	Mansfield, PA
3565	1000004	2	2021-08-08 01:04:22.319+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-mansfield-pa.236340/
3570	1000004	1	2021-08-09 06:38:05.265+00	name	\N	Oberhausen, Germany
875	1000004	9	2021-08-11 09:36:28.907+00	stallCount	8	10
3575	1000006	2	2021-08-11 19:20:53.043+00	name	Taoyuan , Taiwan	Taoyuan, Taiwan
3275	1000004	3	2021-08-11 20:21:26.954+00	status	PERMIT	CONSTRUCTION
3580	1000004	2	2021-08-12 18:59:55.726+00	latitude	32.633868	32.634231
3580	1000004	2	2021-08-12 18:59:55.726+00	longitude	-80.875177	-80.875183
3585	1000004	2	2021-08-13 20:43:51.402+00	locationId	doroteasupercharger	doroteasesupercharger
3290	1000004	4	2021-08-03 23:46:04.207+00	locationId	columbusgasupercharger	ColumbusGAsupercharger
3560	1000004	1	2021-08-06 00:22:41.637+00	name	\N	Akureyri, Iceland
3560	1000004	2	2021-08-07 01:57:08.962+00	latitude	65.698171	65.69773
3560	1000004	2	2021-08-07 01:57:08.962+00	longitude	-18.138306	-18.140122
3560	1000004	3	2021-08-07 01:57:28.207+00	address.street	Frostagata 2, 600	Austursíða
3565	1000004	3	2021-08-08 01:17:31.562+00	dateOpened	2021-08-08	2021-08-07
875	1000004	8	2021-08-09 13:07:44.469+00	urlDiscuss	\N	https://forum.supercharge.info/t/forte-dei-marmi-italy/1698
875	1000004	8	2021-08-09 13:07:44.469+00	developerNotes	2016-08-17: "there was an upgrade and there are now 6 stalls"\r\n2017-11-06: "they are working on 6 to 8 stall upgrade"	2016-08-17: "there was an upgrade and there are now 6 stalls"\r\n2017-11-06: "they are working on 6 to 8 stall upgrade"\r\n2021-08-09: "they are working on a temporary upgrade from 8 to 10 V2 stalls"
3585	1000004	1	2021-08-13 20:35:22.225+00	name	\N	Dorotea, Sweden
3425	1000004	2	2021-08-04 07:21:26.057+00	status	CONSTRUCTION	OPEN
3425	1000004	2	2021-08-04 07:21:26.057+00	dateOpened	\N	2021-07-31
3555	1000006	1	2021-08-04 13:24:34.123+00	name	\N	Knoxville - Brookview Center, TN
755	1000004	5	2021-08-10 14:50:51.054+00	stallCount	16	10
755	1000004	5	2021-08-10 14:50:51.054+00	powerKiloWatt	250	150
755	1000004	5	2021-08-10 14:50:51.054+00	developerNotes	10 Aug 2021: Now 16 stalls, 8 x v2 and 8x v3\r\nhttps://tff-forum.de/t/tesla-momente/100885/2213	10 Aug 2021: Still 10 stalls, 16 was an error.
2255	1000004	12	2021-08-10 21:36:24.968+00	developerNotes	\N	This is the original, there is also a Tesla Location id thorntoncosupercharger, which lists 8 stalls after they added two more in Octo 2020.
1355	1000004	4	2021-08-14 12:04:44.291+00	powerKiloWatt	0	150
1165	1000004	8	2021-08-14 12:05:00.343+00	powerKiloWatt	0	150
3590	1000006	1	2021-08-15 20:00:43.629+00	name	\N	Massapequa, NY
2660	1000006	3	2021-08-16 10:49:17.215+00	latitude	37.723701	37.723081
2660	1000006	3	2021-08-16 10:49:17.215+00	longitude	-121.943609	-121.944252
2660	1000006	3	2021-08-16 10:49:17.215+00	elevationMeters	134	135
3515	1000006	2	2021-08-16 13:49:30.776+00	status	PERMIT	CONSTRUCTION
470	1000004	5	2021-08-16 21:18:37.576+00	powerKiloWatt	0	150
295	1000004	4	2021-08-16 21:20:05.334+00	powerKiloWatt	0	150
510	1000004	3	2021-08-16 21:20:38.672+00	powerKiloWatt	0	150
545	1000004	3	2021-08-16 21:24:02.768+00	powerKiloWatt	0	150
2165	1000004	5	2021-08-18 23:11:49.901+00	stallCount	12	16
2165	1000004	5	2021-08-18 23:11:49.901+00	developerNotes	\N	2021-08-18: Four more stalls added
3215	1000004	8	2021-08-18 23:23:13.611+00	locationId	douglasvilleGAsupercharger	DouglasvilleGAsupercharger
2635	1000004	4	2021-08-18 23:25:25.536+00	locationId	\N	JacksonvilleFLsupercharger
3595	1000006	1	2021-08-19 17:50:04.831+00	name	\N	Carle Place, NY
3595	1000006	2	2021-08-19 17:51:07.9+00	locationId	\N	CarlePlaceNYsupercharger
2150	1000004	8	2021-08-19 20:22:01.262+00	locationId	manchestersouthsupercharger	manchestersouth
3330	1000004	4	2021-08-18 23:46:26.922+00	locationId	middletowndesupercharger	MiddletownDEsupercharger
3370	1000004	5	2021-08-18 23:47:30.438+00	locationId	PerpignanFrancesupercharger	perpignansupercharger
3510	1000004	3	2021-08-18 23:52:49.202+00	locationId	RoslynHeightsNYSupercharger	RoslynHeightsNYsupercharger
3485	1000004	2	2021-08-20 22:59:36.422+00	status	CONSTRUCTION	OPEN
3485	1000004	2	2021-08-20 22:59:36.422+00	dateOpened	\N	2021-08-20
3485	1000004	2	2021-08-20 22:59:36.422+00	developerNotes	Not listed on Tesla's website	Not listed on Tesla's website\r\nOther photos:\r\nhttps://www.electromaps.com/it/mappa/p/199925
3600	1000004	1	2021-08-21 07:50:13.828+00	name	\N	Moe, VIC
2485	1000006	4	2021-08-25 02:33:44.939+00	status	PERMIT	CONSTRUCTION
2055	1000006	4	2021-08-25 18:34:17.591+00	status	CONSTRUCTION	OPEN
2055	1000006	4	2021-08-25 18:34:17.591+00	dateOpened	\N	2021-08-25
2055	1000004	5	2021-08-26 04:20:08.526+00	latitude	47.887974	47.888156
2055	1000004	5	2021-08-26 04:20:08.526+00	longitude	-97.080763	-97.081142
2055	1000004	5	2021-08-26 04:20:08.526+00	elevationMeters	254	255
2055	1000004	5	2021-08-26 04:20:08.526+00	stallCount	12	8
3605	1000004	1	2021-08-26 09:28:33.454+00	name	\N	Kaunas, Lithuania
3580	1000006	3	2021-08-26 12:08:14.272+00	status	CONSTRUCTION	OPEN
3580	1000006	3	2021-08-26 12:08:14.272+00	dateOpened	\N	2021-08-25
3485	1000006	3	2021-08-26 12:11:25.507+00	locationId	\N	ondarasupercharger
3485	1000006	3	2021-08-26 12:11:25.507+00	developerNotes	Not listed on Tesla's website\r\nOther photos:\r\nhttps://www.electromaps.com/it/mappa/p/199925	Other photos:\r\nhttps://www.electromaps.com/it/mappa/p/199925
3605	1000006	2	2021-08-26 18:24:35.657+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/germany-poland-lithuania-latvia-estonia.26795/#post-5855131
3605	1000006	2	2021-08-26 18:24:35.657+00	developerNotes	Source: https://www.facebook.com/100061004659843/posts/263517219025098	Adding the TMC link so there is a place for discussion.\r\nSource: https://www.facebook.com/100061004659843/posts/263517219025098
3520	1000004	4	2021-08-27 13:27:34.206+00	locationId	https://www.tesla.com/en_GB/findus/location/supercharger/cambornesupercharger	cambornesupercharger
2055	1000006	6	2021-08-30 16:03:57.798+00	locationId	grandforksndsupercharger	grandforkssupercharger
3600	1000006	2	2021-09-08 12:38:33.27+00	locationId	traralgonsupercharger	moesupercharger
3600	1000004	3	2021-09-08 13:00:47.156+00	status	CONSTRUCTION	OPEN
3600	1000004	3	2021-09-08 13:00:47.156+00	dateOpened	\N	2021-09-08
3625	1000006	1	2021-09-08 15:39:26.673+00	name	\N	Huntsville, AL
3520	1000004	3	2021-08-27 13:27:14.703+00	locationId	\N	https://www.tesla.com/en_GB/findus/location/supercharger/cambornesupercharger
3520	1000004	3	2021-08-27 13:27:14.703+00	status	CONSTRUCTION	OPEN
3520	1000004	3	2021-08-27 13:27:14.703+00	dateOpened	\N	2021-08-26
3520	1000004	5	2021-08-27 13:34:17.214+00	name	Redruth, UK	Camborne, UK
3610	1000004	1	2021-08-29 16:06:23.882+00	name	\N	Beaver - 525 W, UT
3255	1000006	6	2021-08-31 13:19:50.181+00	stallCount	8	12
2140	1000004	8	2021-09-02 06:04:41.209+00	stallCount	2	4
3615	1000004	1	2021-09-02 06:12:51.338+00	name	\N	Hastings, New Zealand
3530	1000004	2	2021-09-03 06:30:03.287+00	status	CONSTRUCTION	OPEN
3530	1000004	2	2021-09-03 06:30:03.287+00	dateOpened	\N	2021-09-02
3530	1000004	2	2021-09-03 06:30:03.287+00	urlDiscuss	\N	https://tff-forum.de/t/supercharger-in-deutschland/100662/4142
3530	1000004	2	2021-09-03 06:30:03.287+00	stallCount	8	12
3530	1000004	2	2021-09-03 06:30:03.287+00	developerNotes	\N	2 Sep 2021: now open accoring to https://tff-forum.de/t/supercharger-in-deutschland/100662/4142
3615	1000006	2	2021-09-03 16:04:53.786+00	latitude	-39.6211669005453	-39.621166
3615	1000006	2	2021-09-03 16:04:53.786+00	longitude	176.889904168407	176.889904
3620	1000004	1	2021-09-04 17:01:22.964+00	name	\N	Culver City - Raintree Plaza, CA
3345	1000006	2	2021-09-05 12:08:25.222+00	status	PERMIT	CONSTRUCTION
3345	1000004	3	2021-09-05 23:00:41.033+00	latitude	37.636403	37.636105
3345	1000004	3	2021-09-05 23:00:41.033+00	longitude	-122.417884	-122.420515
3345	1000004	3	2021-09-05 23:00:41.033+00	elevationMeters	17	18
3450	1000006	6	2021-09-08 12:31:12.314+00	name	Cork, Ireland	Cork - Mahon Point Shopping Centre, Ireland
3450	1000006	6	2021-09-08 12:31:12.314+00	urlDiscuss	https://twitter.com/NiallEco/status/1404096427408642058?s=20	https://teslamotorsclub.com/tmc/threads/uk-and-ireland-supercharger-site-news.91118/page-168#post-5674109
3530	1000006	3	2021-09-08 12:33:00.594+00	locationId	ElsdorfGermanysupercharger	posthausensupercharger
3530	1000006	3	2021-09-08 12:33:00.594+00	name	Ottersberg-Posthausen, Germany	Posthausen, Germany
3530	1000006	3	2021-09-08 12:33:00.594+00	latitude	53.05952777635594	53.059527
3530	1000006	3	2021-09-08 12:33:00.594+00	longitude	9.16478267431542	9.164782
2485	1000006	5	2021-09-08 18:35:42.431+00	name	North Naples, FL	Naples - Tarpon Bay Blvd, FL
2485	1000006	6	2021-09-09 01:52:35.633+00	status	CONSTRUCTION	OPEN
2485	1000006	6	2021-09-09 01:52:35.633+00	dateOpened	\N	2021-09-08
2485	1000006	7	2021-09-09 13:46:16.016+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-north-naples-fl.205709/	https://teslamotorsclub.com/tmc/threads/supercharger-naples-fl-tarpon-bay-boulevard.205709/
3615	1000006	3	2021-09-09 20:59:48.382+00	locationId	hawkesbaysupercharger	hastingssupercharger
3615	1000006	4	2021-09-09 21:05:20.093+00	urlDiscuss	https://forum.supercharge.info/t/golflands-hastings-new-zealand-underconstruction/1719	https://teslamotorsclub.com/tmc/threads/supercharger-napier-hastings.238930/
3615	1000004	5	2021-09-09 23:19:45.912+00	status	CONSTRUCTION	OPEN
3615	1000004	5	2021-09-09 23:19:45.912+00	dateOpened	\N	2021-09-10
3630	1000004	1	2021-09-11 02:11:55.236+00	name	\N	Gangbuk, South Korea
3550	1000004	2	2021-09-11 20:29:11.256+00	status	CONSTRUCTION	OPEN
3550	1000004	2	2021-09-11 20:29:11.256+00	dateOpened	\N	2021-09-11
3635	1000004	1	2021-09-13 07:58:16.732+00	name	\N	Borgsjö, Sweden
2485	1000006	8	2021-09-13 16:36:05.654+00	locationId	northnaplesflsupercharger	NaplesFLsupercharger
3480	1000004	2	2021-09-15 12:32:39.585+00	status	PERMIT	CONSTRUCTION
3480	1000004	2	2021-09-15 12:32:39.585+00	developerNotes	\N	15 Sep 2021:  construction started, see https://tff-forum.de/t/supercharger-in-deutschland/100662/4309
3640	1000004	1	2021-09-15 23:19:57.917+00	name	\N	Constanta, Romania
3605	1000004	3	2021-09-17 13:52:59.704+00	powerKiloWatt	0	250
3605	1000004	4	2021-09-17 13:53:10.25+00	status	CONSTRUCTION	OPEN
3605	1000004	4	2021-09-17 13:53:10.25+00	dateOpened	\N	2021-09-17
3605	1000006	5	2021-09-20 15:44:04.64+00	address.street	Inovacijų g. 4	Inovacijų g. 1
3605	1000006	5	2021-09-20 15:44:04.64+00	address.city	Kaunas	Biruliškės
3590	1000006	2	2021-09-20 18:56:50.157+00	status	CONSTRUCTION	OPEN
3590	1000006	2	2021-09-20 18:56:50.157+00	dateOpened	\N	2021-09-20
3590	1000006	3	2021-09-20 18:57:14.959+00	dateOpened	2021-09-20	2021-09-18
3605	1000004	6	2021-09-20 23:39:59.182+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/germany-poland-lithuania-latvia-estonia.26795/#post-5855131	https://teslamotorsclub.com/tmc/threads/lithuania-latvia-estonia.240785/
3645	1000004	1	2021-09-21 09:02:03.505+00	name	\N	Wusu, Yulong Hotel, China
3650	1000004	1	2021-09-21 12:47:35.233+00	name	\N	Khorgas, Pearl of the Silk Road Restaurant, China
3555	1000006	3	2021-09-22 13:29:31.048+00	name	Knoxville - Brookview Center, TN	Knoxville - Brookview Center Way, TN
3555	1000006	3	2021-09-22 13:29:31.048+00	status	CONSTRUCTION	OPEN
3555	1000006	3	2021-09-22 13:29:31.048+00	dateOpened	\N	2021-09-22
3555	1000006	3	2021-09-22 13:29:31.048+00	address.street	250 Brookview Centre Way	250 Brookview Center Way
3655	1000004	1	2021-09-22 13:55:11.11+00	name	\N	Nyingchi, Tingyue Kaiyuan Hotel, China
3550	1000006	3	2021-09-21 15:45:35.276+00	locationId	Sevenoaksgbsupercharger	sevenoakssupercharger
3495	1000004	4	2021-09-22 22:59:05.912+00	status	CONSTRUCTION	OPEN
3495	1000004	4	2021-09-22 22:59:05.912+00	dateOpened	\N	2021-09-22
3585	1000004	3	2021-09-23 11:58:41.23+00	status	CONSTRUCTION	OPEN
3585	1000004	3	2021-09-23 11:58:41.23+00	dateOpened	\N	2021-09-23
3655	1000004	2	2021-09-23 13:40:05.834+00	name	Nyingchi, Tingyue Kaiyuan Hotel, China	Nyingchi – Tingyue Kaiyuan Hotel, China
3645	1000004	2	2021-09-23 13:40:29.727+00	name	Wusu, Yulong Hotel, China	Wusu – Yulong Hotel, China
3650	1000004	2	2021-09-23 13:41:45.912+00	name	Khorgas, Pearl of the Silk Road Restaurant, China	Khorgas – Pearl of the Silk Road Restaurant, China
3650	1000004	2	2021-09-23 13:41:45.912+00	latitude	44.235107953117065	44.23511
3650	1000004	2	2021-09-23 13:41:45.912+00	longitude	80.518878739625	80.51888
3660	1000004	1	2021-09-23 14:01:49.212+00	name	\N	Markam – Songtsam Rumi Hotel, China
3470	1000004	2	2021-09-23 17:21:00.238+00	status	PERMIT	CONSTRUCTION
3470	1000004	3	2021-09-23 17:21:05.85+00	powerKiloWatt	0	250
3665	1000004	1	2021-09-24 08:21:40.278+00	name	\N	Panzhihua – Central Tiandi Hotel, China
3670	1000004	1	2021-09-24 09:39:20.054+00	name	\N	Dinosaur Mountain (westbound), China
3585	1000004	4	2021-09-24 09:46:59.976+00	stallCount	8	4
3675	1000004	1	2021-09-24 10:21:51.47+00	name	\N	Dadugang (northbound), China
3680	1000004	1	2021-09-24 11:32:10.961+00	name	\N	Delingha – Golden World Hotel, China
3685	1000004	1	2021-09-24 12:32:22.232+00	name	\N	Gangji (northbound), China
3690	1000004	1	2021-09-24 13:30:29.497+00	name	\N	Guichao (westbound), China
3705	1000004	1	2021-09-27 09:46:11.985+00	name	\N	Heze – Jiahe City Mall, China
3590	1000006	4	2021-09-26 11:07:46.952+00	locationId	\N	massapequanysupercharger
3555	1000006	4	2021-09-26 11:08:28.398+00	locationId	\N	KnoxvilleTNSupercharger
3555	1000006	5	2021-09-26 11:08:53.75+00	name	Knoxville - Brookview Center Way, TN	Knoxville - Brookview Centre Way, TN
3555	1000006	5	2021-09-26 11:08:53.75+00	address.street	250 Brookview Center Way	250 Brookview Centre Way
3520	1000004	6	2021-09-26 12:11:59.007+00	latitude	50.226784	50.2275556
3520	1000004	6	2021-09-26 12:11:59.007+00	longitude	-5.275931	-5.2800278
3520	1000004	6	2021-09-26 12:11:59.007+00	elevationMeters	102	97
3710	1000004	1	2021-09-27 10:31:03.22+00	name	\N	Xiaogan – Baijia Hongye Mall, China
3715	1000004	1	2021-09-28 07:16:31.34+00	name	\N	Strängnäs, Sweden
3695	1000004	1	2021-09-24 14:35:21.132+00	name	\N	Baisha – Jinkai Hotel, China
1485	1000006	9	2021-09-24 15:45:57.289+00	stallCount	12	20
3700	1000004	1	2021-09-25 00:54:09.109+00	name	\N	Otsu, Japan
1060	1000004	3	2021-09-28 17:35:13.244+00	status	CONSTRUCTION	OPEN
1060	1000004	3	2021-09-28 17:35:13.244+00	dateOpened	\N	2021-09-28
1060	1000004	4	2021-09-28 17:39:01.267+00	powerKiloWatt	0	150
1060	1000004	5	2021-09-28 17:40:03.821+00	stallCount	8	6
2500	1000006	6	2021-09-28 22:04:51.789+00	status	CONSTRUCTION	OPEN
2500	1000006	6	2021-09-28 22:04:51.789+00	dateOpened	\N	2021-09-28
1060	1000004	6	2021-09-29 11:40:36.554+00	name	Brighouse Southbound, UK	Hartshead Moor, UK - Westbound
1060	1000004	6	2021-09-29 11:40:36.554+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/posts/5963861/
3720	1000004	1	2021-09-29 21:21:43.28+00	name	\N	Rockingham, NC
3720	1000004	2	2021-09-29 21:22:16.429+00	status	PERMIT	CONSTRUCTION
3635	1000004	2	2021-09-30 14:44:34.385+00	name	Borgsjö, Sweden	Ånge, Sweden
3635	1000004	2	2021-09-30 14:44:34.385+00	status	CONSTRUCTION	OPEN
3635	1000004	2	2021-09-30 14:44:34.385+00	dateOpened	\N	2021-09-30
3725	1000004	1	2021-09-30 14:48:07.289+00	name	\N	Gwangmyeong, South Korea
3730	1000004	1	2021-09-30 19:28:27.918+00	name	\N	Villach Ost
3730	1000004	2	2021-09-30 20:35:54.599+00	name	Villach Ost	Villach Ost, Austria
2540	1000004	3	2021-10-01 01:20:12.282+00	status	CONSTRUCTION	OPEN
2540	1000004	3	2021-10-01 01:20:12.282+00	dateOpened	\N	2021-09-30
1060	1000006	8	2021-10-02 02:27:48.299+00	locationId	\N	hartsheadmoorwestsupercharger
1060	1000006	8	2021-10-02 02:27:48.299+00	name	Hartshead Moor, UK - Westbound	Hartshead Moor West, UK
3770	1000004	1	2021-10-16 23:03:42.713+00	name	\N	Elizabethtown, KY
3470	1000006	4	2021-10-17 00:50:18.501+00	status	CONSTRUCTION	OPEN
3470	1000006	4	2021-10-17 00:50:18.501+00	dateOpened	\N	2021-10-16
3235	1000006	6	2021-10-18 15:09:35.4+00	name	Haubstadt, IN	Haubstadt - Ruffian Way, IN
3275	1000004	5	2021-10-19 23:34:27.465+00	address.zip	TBD	S7T 0B6
3735	1000004	3	2021-10-19 23:37:37.755+00	name	Asheville - Biltmore Park, NC	Asheville - Thetford St, NC
3735	1000004	3	2021-10-19 23:37:37.755+00	status	CONSTRUCTION	OPEN
3735	1000004	3	2021-10-19 23:37:37.755+00	dateOpened	\N	2021-10-19
2540	1000004	4	2021-10-01 07:05:55.184+00	latitude	38.112105	38.111814
2540	1000004	4	2021-10-01 07:05:55.184+00	longitude	-85.677437	-85.677355
2540	1000004	4	2021-10-01 07:05:55.184+00	elevationMeters	157	158
3735	1000004	1	2021-10-01 22:09:55.807+00	name	\N	Asheville - Biltmore Park, NC
3735	1000004	2	2021-10-01 22:09:59.433+00	status	PERMIT	CONSTRUCTION
3235	1000004	5	2021-10-12 00:18:53.341+00	status	CONSTRUCTION	OPEN
3235	1000004	5	2021-10-12 00:18:53.341+00	dateOpened	\N	2021-10-11
3765	1000004	1	2021-10-13 18:39:51.649+00	name	\N	Hood River - Anchor Way, OR
3765	1000004	2	2021-10-13 18:40:12.986+00	locationId	\N	HoodRiverORsupercharger
3765	1000004	3	2021-10-13 21:35:55.537+00	latitude	45.714111	45.709603
3765	1000004	3	2021-10-13 21:35:55.537+00	longitude	-121.515793	-121.534581
3765	1000004	4	2021-10-13 22:10:44.118+00	latitude	45.709603	45.714111
3765	1000004	4	2021-10-13 22:10:44.118+00	longitude	-121.534581	-121.515793
3605	1000004	7	2021-10-18 03:07:21.947+00	stallCount	8	5
3605	1000004	7	2021-10-18 03:07:21.947+00	developerNotes	Adding the TMC link so there is a place for discussion.\r\nSource: https://www.facebook.com/100061004659843/posts/263517219025098	2021-10-18: Updated stall count to 5 - 3x V3, 2x V2.\r\n\r\nAdding the TMC link so there is a place for discussion.\r\nSource: https://www.facebook.com/100061004659843/posts/263517219025098
3255	1000004	7	2021-10-04 21:59:36.989+00	status	CONSTRUCTION	OPEN
3255	1000004	7	2021-10-04 21:59:36.989+00	dateOpened	\N	2021-10-04
2500	1000004	7	2021-10-06 03:21:19.673+00	locationId	kautokeino supercharger	kautokeinosupercharger
2540	1000004	5	2021-10-06 03:28:02.54+00	locationId	\N	LouisvilleKYSouthsupercharger
3255	1000004	8	2021-10-06 03:28:21.885+00	locationId	montgomeryALsupercharger	MontgomeryALsupercharger
3750	1000004	1	2021-10-06 17:53:18.471+00	name	\N	Mount Forest, ON
3760	1000004	1	2021-10-12 00:29:10.339+00	name	\N	New Braunfels, TX
3745	1000004	1	2021-10-05 22:39:46.303+00	name	\N	Jeju, South Korea
3585	1000004	5	2021-10-05 23:11:05.181+00	locationId	doroteasesupercharger	Doroteasesupercharger
3755	1000004	1	2021-10-09 21:29:27.363+00	name	\N	Taoyuan - Qingpu Global Shopping Center, Taiwan
2755	1000004	5	2021-10-10 02:43:59.858+00	latitude	43.455206	43.455263
2755	1000004	5	2021-10-10 02:43:59.858+00	longitude	-71.565179	-71.564612
2755	1000004	5	2021-10-10 02:43:59.858+00	elevationMeters	143	142
3560	1000006	4	2021-10-12 15:47:38.014+00	address.street	Austursíða	Austursíða 2
3265	1000004	3	2021-10-13 18:17:11.718+00	status	PERMIT	CONSTRUCTION
3235	1000006	7	2021-10-18 19:12:19.631+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-haubstadt-in.115540	https://teslamotorsclub.com/tmc/threads/supercharger-haubstadt-in-ruffian-way.115540/
3275	1000004	4	2021-10-19 16:33:59.184+00	status	CONSTRUCTION	OPEN
3275	1000004	4	2021-10-19 16:33:59.184+00	dateOpened	\N	2021-10-19
3560	1000004	5	2021-10-12 22:40:15.724+00	status	CONSTRUCTION	OPEN
3560	1000004	5	2021-10-12 22:40:15.724+00	dateOpened	\N	2021-10-13
3560	1000004	5	2021-10-12 22:40:15.724+00	stallCount	8	4
3560	1000004	5	2021-10-12 22:40:15.724+00	developerNotes	\N	Tesla site mentions 4 stalls only.
3735	1000006	4	2021-10-20 12:22:37.029+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-biltmore-park-asheville-nc.242103/	https://teslamotorsclub.com/tmc/threads/supercharger-asheville-nc-thetford-street.242103/
3775	1000004	1	2021-10-20 21:34:12.55+00	name	\N	Rimouski, QC
3780	1000004	1	2021-10-22 21:33:38.3+00	name	\N	San Luis Obispo - Public Market at Bonetti Ranch, CA
3780	1000006	2	2021-10-23 00:49:51.434+00	stallCount	12	20
2035	1000004	8	2021-10-23 13:27:02.753+00	status	CLOSED_TEMP	OPEN
2035	1000004	8	2021-10-23 13:27:02.753+00	dateOpened	\N	2019-12-23
405	1000006	3	2021-10-24 14:09:09.757+00	powerKiloWatt	150	130
405	1000006	3	2021-10-24 14:09:09.757+00	developerNotes	\N	Changed kW based on report here: https://forum.supercharge.info/t/supercharger-sites-data-which-need-updating-or-contain-errors/250/423
405	1000004	4	2021-10-24 16:50:53.632+00	stallCount	6	8
3785	1000006	1	2021-10-25 11:40:52.431+00	name	\N	Manassas, VA
3480	1000004	3	2021-11-09 07:19:48.569+00	status	CONSTRUCTION	OPEN
3480	1000004	3	2021-11-09 07:19:48.569+00	dateOpened	\N	2021-11-05
3390	1000004	2	2021-11-09 13:53:05.399+00	status	CONSTRUCTION	OPEN
3390	1000004	2	2021-11-09 13:53:05.399+00	dateOpened	\N	2021-11-09
3390	1000004	3	2021-11-09 13:53:12.743+00	urlDiscuss	\N	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?page=76&tab=comments#comment-860210
3390	1000004	3	2021-11-09 13:53:12.743+00	developerNotes	https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?page=76&tab=comments#comment-860210	\N
1455	1000006	3	2021-11-09 14:10:53.849+00	developerNotes	\N	Find Us has two entries for this location, with the second having a location id of pyhtääsupercharger
3730	1000004	3	2021-10-28 06:39:55.524+00	status	CONSTRUCTION	OPEN
3730	1000004	3	2021-10-28 06:39:55.524+00	dateOpened	\N	2021-10-27
3800	1000004	1	2021-11-01 15:25:42.755+00	name	\N	Genova, Italy
3265	1000004	4	2021-11-05 23:55:24.948+00	status	CONSTRUCTION	PERMIT
3575	1000004	3	2021-11-08 09:02:45.073+00	locationId	\N	taoyuanyangmeisupercharger
3575	1000004	3	2021-11-08 09:02:45.073+00	name	Taoyuan, Taiwan	Taoyuan - Yangmei, Taiwan
3575	1000004	3	2021-11-08 09:02:45.073+00	status	CONSTRUCTION	OPEN
3575	1000004	3	2021-11-08 09:02:45.073+00	dateOpened	\N	2021-11-07
3575	1000004	3	2021-11-08 09:02:45.073+00	developerNotes	\N	2 TPC super charging docks\r\n1 CCS2 Super Charging Dock
3475	1000004	2	2021-11-08 09:11:06.45+00	developerNotes	\N	Not on findus map as of 2021-11-08
3815	1000004	1	2021-11-08 20:01:21.278+00	name	\N	Edmonton (SC), AB
3275	1000006	6	2021-10-26 02:35:47.54+00	name	Saskatoon, SK	Saskatoon - Clarence Ave South, SK
3735	1000006	5	2021-10-26 02:46:59.538+00	locationId	\N	ashevillencthetfordstsupercharger
3790	1000004	1	2021-10-28 00:05:06.491+00	name	\N	South Surrey, BC
3805	1000004	1	2021-11-03 22:13:36.216+00	name	\N	Burbank - N San Fernando Blvd, CA
3810	1000004	2	2021-11-05 19:19:18.017+00	address.countryId	101	100
3720	1000006	3	2021-11-08 21:23:44.112+00	stallCount	8	12
3795	1000004	1	2021-10-31 15:40:35.275+00	name	\N	Bardonecchia, Italy
3795	1000004	2	2021-10-31 15:49:22.293+00	address.street	A32 Km 73 Dir. Francia, Bardonecchia	A32 km 73, Frejus service area, Bardonecchia
3270	1000004	6	2021-11-03 18:25:42.452+00	status	CONSTRUCTION	OPEN
3270	1000004	6	2021-11-03 18:25:42.452+00	dateOpened	\N	2021-11-03
3805	1000004	2	2021-11-03 22:13:59.885+00	locationId	\N	BurbankCASupercharger2
3810	1000004	1	2021-11-05 17:29:31.984+00	name	\N	Colonial Heights, VA
3325	1000006	3	2021-11-10 00:06:27.376+00	status	PERMIT	CONSTRUCTION
3820	1000004	1	2021-11-10 16:51:17.53+00	name	\N	Hamburg-Wandsbek, Germany
3480	1000006	4	2021-11-10 21:49:58.086+00	latitude	50.813871228799194	50.813871
3480	1000006	4	2021-11-10 21:49:58.086+00	longitude	7.1079291744933	7.107929
3515	1000006	3	2021-11-11 16:12:21.702+00	name	Mountain Village, CO	Mountain Village - Mountain Village Blvd, CO
3515	1000006	3	2021-11-11 16:12:21.702+00	status	CONSTRUCTION	OPEN
3515	1000006	3	2021-11-11 16:12:21.702+00	dateOpened	\N	2021-11-11
3390	1000006	4	2021-11-11 16:44:09.839+00	locationId	\N	versaillessupercharger
3825	1000004	1	2021-11-13 00:05:49.507+00	name	\N	Laurel - Fort Meade Rd, MD
3750	1000004	2	2021-11-13 03:09:14.584+00	status	PERMIT	CONSTRUCTION
3400	1000004	3	2021-11-13 16:14:44.116+00	status	CONSTRUCTION	OPEN
3400	1000004	3	2021-11-13 16:14:44.116+00	dateOpened	\N	2021-11-13
3830	1000004	1	2021-11-13 23:16:04.564+00	name	\N	Orangeburg, SC
3840	1000004	1	2021-11-16 03:05:44.229+00	name	\N	New Plymouth, New Zealand
2615	1000004	3	2021-11-18 23:24:57.279+00	status	PERMIT	CONSTRUCTION
3845	1000004	1	2021-11-19 00:12:26.338+00	name	\N	St. Augustine - World Commerce Pkwy, FL
3845	1000004	2	2021-11-19 00:13:10.354+00	locationId	\N	StAugustineFLSupercharger
3780	1000004	3	2021-11-20 02:01:18.382+00	status	CONSTRUCTION	OPEN
3780	1000004	3	2021-11-20 02:01:18.382+00	dateOpened	\N	2021-11-19
3780	1000006	4	2021-11-20 02:06:51.965+00	name	San Luis Obispo - Public Market at Bonetti Ranch, CA	San Luis Obispo - Higuera St, CA
3780	1000006	5	2021-11-20 02:11:32.25+00	locationId	\N	SanLuisObispoCASupercharger3
3780	1000006	6	2021-11-20 02:22:42.387+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-san-luis-obispo-ca-public-market-at-bonetti-ranch-permit-found.244250/#post-6039906	https://teslamotorsclub.com/tmc/threads/supercharger-san-luis-obispo-ca-higuera-st-live-19-nov-2021-20-v3-stalls.244250/
330	1000004	5	2021-11-23 14:32:08.972+00	status	OPEN	CLOSED_PERM
330	1000004	5	2021-11-23 14:32:08.972+00	dateOpened	2014-12-19	\N
2765	1000004	4	2021-11-14 13:03:31.68+00	latitude	51.403515	51.401278
2765	1000004	4	2021-11-14 13:03:31.68+00	longitude	12.181623	12.180194
2765	1000004	4	2021-11-14 13:03:31.68+00	address.street	Großkugel exit (A9)	An der Autobahn 1
3845	1000004	4	2021-11-23 17:08:46.76+00	developerNotes	\N	Do not update site until Tesla equipment arrives
3860	1000004	2	2021-11-26 00:50:04.032+00	status	PERMIT	CONSTRUCTION
2260	1000004	6	2021-11-26 23:38:37.943+00	name	Hsinchu City, Taiwan	Hsinchu - Zhubei Harrod, Taiwan
2260	1000004	6	2021-11-26 23:38:37.943+00	urlDiscuss	https://twitter.com/mrplugshare/status/1221248085986246656?s=21	https://teslamotorsclub.com/tmc/threads/superchargers-in-taiwan.189682/
2260	1000004	6	2021-11-26 23:38:37.943+00	developerNotes	\N	Tesla description "6 TPC + CCS2 super charging docks"
3830	1000004	2	2021-11-13 23:16:10.155+00	status	PERMIT	CONSTRUCTION
2765	1000004	3	2021-11-14 06:26:18.31+00	name	Leipzig-Halle, Germany	Schkeuditz, Germany
2765	1000004	3	2021-11-14 06:26:18.31+00	status	PERMIT	CONSTRUCTION
2765	1000004	3	2021-11-14 06:26:18.31+00	address.zip	?	04435
3835	1000004	1	2021-11-15 00:04:20.218+00	name	\N	Madison Heights, VA
3830	1000006	3	2021-11-17 20:53:52.104+00	status	CONSTRUCTION	OPEN
3830	1000006	3	2021-11-17 20:53:52.104+00	dateOpened	\N	2021-11-17
3400	1000006	4	2021-11-17 20:55:45.893+00	name	Abingdon, MD	Abingdon - Woodsdale Rd, MD
1245	1000006	7	2021-11-17 21:13:11.32+00	powerKiloWatt	150	125
3595	1000006	3	2021-11-18 18:44:30.573+00	status	CONSTRUCTION	OPEN
3595	1000006	3	2021-11-18 18:44:30.573+00	dateOpened	\N	2021-11-18
3400	1000006	5	2021-11-18 20:56:22.172+00	latitude	39.464834	39.46561
3400	1000006	5	2021-11-18 20:56:22.172+00	longitude	-76.31083	-76.311042
3400	1000006	5	2021-11-18 20:56:22.172+00	elevationMeters	49	50
3845	1000004	3	2021-11-19 00:40:04.808+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-st-augustine-fl-buc-ees.247172/https://teslamotorsclub.com/tmc/threads/supercharger-st-augustine-fl-buc-ees.247172/	https://teslamotorsclub.com/tmc/threads/supercharger-st-augustine-fl-buc-ees.247172/
3810	1000006	3	2021-11-19 20:30:26.339+00	status	PERMIT	CONSTRUCTION
3810	1000006	4	2021-11-19 20:31:23.916+00	latitude	37.3061	37.305593
3810	1000006	4	2021-11-19 20:31:23.916+00	longitude	-77.4095	-77.409675
3830	1000006	4	2021-11-20 02:12:58.017+00	locationId	\N	orangeburgscsupercharger
3850	1000004	1	2021-11-21 13:15:28.621+00	name	\N	Thurrock - Lakeside Shopping Centre, UK
765	1000004	6	2021-11-22 07:49:42.322+00	stallCount	8	10
3855	1000004	1	2021-11-23 08:22:28.034+00	name	\N	Lancelin, WA, Australia
3860	1000004	1	2021-11-25 20:52:08.71+00	name	\N	Glendale - Harvey Dr, CA
2260	1000004	6	2021-11-26 23:38:37.943+00	address.street	No. 297, Section 2, Wenxing Road,	No. 297, Section 2, Wenxing Road
3865	1000006	1	2021-11-27 03:51:00.038+00	name	\N	Portage - Westbound, IN
3505	1000004	2	2021-11-29 03:01:21.545+00	status	PERMIT	CONSTRUCTION
3870	1000004	1	2021-11-30 13:28:05.304+00	name	\N	Åsarna, Sweden
3870	1000004	2	2021-11-30 13:32:03.501+00	hours	24	\N
3870	1000004	3	2021-12-01 06:54:26.125+00	locationId	\N	AsarnaSupercharger
3875	1000006	1	2021-12-04 16:24:00.569+00	name	\N	Chapel Hill, NC
3875	1000006	2	2021-12-04 16:25:09.639+00	address.street	100 Village Center Dr #1002	100 Village Center Dr
3875	1000006	3	2021-12-04 16:25:40.63+00	latitude	35.970345	35.969846
3875	1000006	3	2021-12-04 16:25:40.63+00	longitude	-79.064701	-79.06356
3875	1000006	3	2021-12-04 16:25:40.63+00	elevationMeters	157	162
3415	1000006	2	2021-12-06 17:37:44.922+00	locationId	\N	EastHamptonNYSupercharger
3415	1000006	2	2021-12-06 17:37:44.922+00	status	PERMIT	CONSTRUCTION
3835	1000004	2	2021-12-09 22:09:18.649+00	status	CONSTRUCTION	OPEN
3835	1000004	2	2021-12-09 22:09:18.649+00	dateOpened	\N	2021-12-09
3885	1000004	1	2021-12-09 22:17:47.431+00	name	\N	Yeosu, South Korea
3880	1000006	1	2021-12-06 17:19:11.915+00	name	\N	Princeton, WV
3890	1000006	1	2021-12-10 22:08:11.969+00	name	\N	Cottonwood, CA
3835	1000006	3	2021-12-11 02:31:46.118+00	locationId	\N	madisonheightsvasupercharger
3895	1000004	1	2021-12-12 15:36:54.844+00	name	\N	Romford, UK
3785	1000006	2	2021-12-14 01:20:49.624+00	status	CONSTRUCTION	OPEN
3785	1000006	2	2021-12-14 01:20:49.624+00	dateOpened	\N	2021-12-13
3770	1000006	2	2021-12-10 20:58:58.135+00	status	CONSTRUCTION	OPEN
3770	1000006	2	2021-12-10 20:58:58.135+00	dateOpened	\N	2021-12-10
715	1000004	3	2021-12-11 15:38:36.528+00	name	Truckee-Brockway Rd, CA	Truckee - Brockway Rd, CA
3720	1000004	4	2021-12-10 13:56:41.179+00	status	CONSTRUCTION	OPEN
3720	1000004	4	2021-12-10 13:56:41.179+00	dateOpened	\N	2021-12-10
2660	1000006	4	2021-12-10 21:06:43.772+00	status	CONSTRUCTION	OPEN
2660	1000006	4	2021-12-10 21:06:43.772+00	dateOpened	\N	2021-12-10
2660	1000006	5	2021-12-10 23:05:09.525+00	name	San Ramon - Gateway Center, CA	San Ramon - San Ramon Valley Blvd, CA
3750	1000006	3	2021-12-11 02:47:37.103+00	status	CONSTRUCTION	OPEN
3750	1000006	3	2021-12-11 02:47:37.103+00	dateOpened	\N	2021-12-09
3750	1000006	3	2021-12-11 02:47:37.103+00	developerNotes	\N	Forum user indicates its showing on the in-car map, and Find Us also is now listing it as open.
3900	1000004	1	2021-12-14 18:22:00.732+00	name	\N	Tokio, WA
2140	1000004	9	2021-12-15 14:56:58.764+00	stallCount	4	8
3905	1000006	1	2021-12-15 23:12:54.419+00	name	\N	Minocqua, WI
3570	1000004	2	2021-12-18 14:30:36.026+00	status	CONSTRUCTION	OPEN
3570	1000004	2	2021-12-18 14:30:36.026+00	dateOpened	\N	2021-12-18
3720	1000006	5	2021-12-19 16:58:34.739+00	locationId	\N	rockinghamncsupercharger
3570	1000006	3	2021-12-22 20:51:51.992+00	address.state	46047	\N
3570	1000006	3	2021-12-22 20:51:51.992+00	address.zip	\N	46047
3920	1000004	1	2021-12-22 21:21:15.424+00	name	\N	Issaquah Highlands, WA
3505	1000006	4	2021-12-31 03:09:25.159+00	status	CONSTRUCTION	OPEN
3505	1000006	4	2021-12-31 03:09:25.159+00	dateOpened	\N	2021-12-30
3850	1000004	2	2022-01-01 19:13:49.788+00	latitude	51.4870922	51.4894519
3850	1000004	2	2022-01-01 19:13:49.788+00	longitude	0.2856807	0.2866192
3850	1000004	2	2022-01-01 19:13:49.788+00	developerNotes	GPS TBC	\N
3910	1000006	1	2021-12-19 17:45:22.288+00	name	\N	Santiago de Compostela, Spain
3360	1000006	4	2021-12-20 15:50:23.37+00	locationId	holbaeksupercharger	kirkesabysupercharger
3800	1000004	2	2021-12-21 10:55:05.219+00	status	CONSTRUCTION	OPEN
3800	1000004	2	2021-12-21 10:55:05.219+00	dateOpened	\N	2021-12-21
3925	1000006	1	2021-12-23 20:17:54.306+00	name	\N	La Mesa, CA
3925	1000006	2	2021-12-23 21:10:52.604+00	latitude	32.780722	32.7808724
3925	1000006	2	2021-12-23 21:10:52.604+00	longitude	-117.01343	-117.0135593
3950	1000004	1	2021-12-31 04:43:23.093+00	name	\N	Kobe - Mikage, Japan
3425	1000004	3	2021-12-31 11:51:44.065+00	stallCount	12	16
3425	1000004	3	2021-12-31 11:51:44.065+00	developerNotes	At van der Valk Tilburg	At van der Valk Tilburg\r\n2021-12-31: Expanded to 16 stalls
3505	1000006	5	2021-12-31 15:27:46.63+00	locationId	\N	AustinTXWestsupercharger
3845	1000004	5	2021-12-31 20:33:52.362+00	status	PERMIT	CONSTRUCTION
3845	1000004	5	2021-12-31 20:33:52.362+00	stallCount	8	16
3845	1000004	5	2021-12-31 20:33:52.362+00	developerNotes	Do not update site until Tesla equipment arrives	\N
3955	1000004	1	2022-01-02 20:59:37.089+00	name	\N	Kendall, FL
3875	1000006	4	2021-12-21 20:53:49.975+00	stallCount	8	12
3535	1000006	2	2021-12-21 20:58:02.827+00	latitude	47.2461735	47.245841
3535	1000006	2	2021-12-21 20:58:02.827+00	longitude	2.0664369	2.069532
3535	1000006	2	2021-12-21 20:58:02.827+00	elevationMeters	145	151
3915	1000004	1	2021-12-22 01:38:16.723+00	name	\N	Daleville, VA
3535	1000006	3	2021-12-23 19:31:12.125+00	stallCount	8	28
3535	1000006	3	2021-12-23 19:31:12.125+00	developerNotes	19 July 2021: Opened with 8 stalls; 20 stalls planned	28 stalls now, per a screenshot on our forums.
3865	1000006	4	2021-12-24 20:01:09.398+00	status	CONSTRUCTION	OPEN
3865	1000006	4	2021-12-24 20:01:09.398+00	dateOpened	\N	2021-12-24
100	1000006	3	2021-12-26 15:31:13.265+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/25317-Supercharger-Buckeye-AZ	https://teslamotorsclub.com/tmc/threads/supercharger-buckeye-az.25317/page-13
100	1000006	3	2021-12-26 15:31:13.265+00	stallCount	8	12
100	1000006	3	2021-12-26 15:31:13.265+00	powerKiloWatt	0	250
3295	1000006	5	2021-12-29 13:29:40.74+00	stallCount	12	16
3945	1000004	1	2021-12-31 04:22:59.955+00	name	\N	Taipei - Shihlin, Taiwan
3875	1000006	5	2022-01-02 17:32:09.106+00	stallCount	12	10
3930	1000006	1	2021-12-24 16:59:32.545+00	name	\N	Mission Viejo - Crown Valley Pkwy, CA
3865	1000006	2	2021-12-24 17:08:52.323+00	locationId	\N	portageinjohntmccutcheontravelplazasupercharger
3865	1000006	2	2021-12-24 17:08:52.323+00	name	Portage - Westbound, IN	Portage - John T. McCutcheon Travel Plaza, IN
3865	1000006	3	2021-12-24 18:40:55.1+00	name	Portage - John T. McCutcheon Travel Plaza, IN	Portage - John T McCutcheon Travel Plaza, IN
3505	1000006	3	2021-12-26 13:57:22.043+00	latitude	30.232957	30.233293
3505	1000006	3	2021-12-26 13:57:22.043+00	longitude	-97.7921	-97.793053
3505	1000006	3	2021-12-26 13:57:22.043+00	elevationMeters	213	212
3225	1000006	2	2021-12-26 14:31:21.163+00	status	PERMIT	CONSTRUCTION
3935	1000004	1	2021-12-28 20:08:54.658+00	name	\N	Boynton Beach, FL
3715	1000004	2	2022-01-07 12:27:51.411+00	stallCount	10	12
3715	1000004	2	2022-01-07 12:27:51.411+00	developerNotes	\N	7 Jan 2022: Looks like 12 stalls: https://teslaclubsweden.se/forum/viewtopic.php?f=45&t=15902&start=820
3960	1000004	1	2022-01-07 15:47:05.958+00	name	\N	Templeton, MA
3965	1000004	1	2022-01-10 18:39:27.253+00	name	\N	Napa - Union, CA
1455	1000006	4	2022-01-13 02:53:13.172+00	locationId	pyhtaasupercharger	pyhtääsupercharger
605	1000004	5	2022-01-19 13:39:18.061+00	powerKiloWatt	0	150
3970	1000004	1	2022-01-17 08:07:30.347+00	name	\N	Leer, Germany
3900	1000004	2	2022-01-19 13:41:16.659+00	status	PERMIT	CONSTRUCTION
3975	1000004	1	2022-01-19 23:23:42.655+00	name	\N	Bethesda, MD
3980	1000006	1	2022-01-20 22:06:03.06+00	name	\N	Calabasas, CA
3985	1000004	1	2022-01-22 23:46:05.15+00	name	\N	Shingle Springs, CA
130	1000004	3	2022-01-23 19:43:00.651+00	name	Milford, CT (south)	Milford - Southbound, CT
3990	1000004	1	2022-01-25 04:31:56.239+00	name	\N	Daly City - Bryant St, CA
3850	1000004	3	2022-01-25 15:46:37.041+00	status	CONSTRUCTION	OPEN
3850	1000004	3	2022-01-25 15:46:37.041+00	dateOpened	\N	2022-01-25
3880	1000004	2	2022-01-26 00:55:14.046+00	status	CONSTRUCTION	OPEN
3880	1000004	2	2022-01-26 00:55:14.046+00	dateOpened	\N	2022-01-25
3265	1000004	5	2022-01-26 04:14:00.727+00	status	PERMIT	CONSTRUCTION
3265	1000004	5	2022-01-26 04:14:00.727+00	address.zip	TBD	V0B 1G6
3860	1000004	3	2022-01-26 09:03:41.589+00	status	CONSTRUCTION	OPEN
3860	1000004	3	2022-01-26 09:03:41.589+00	dateOpened	\N	2022-01-25
3995	1000004	1	2022-01-27 01:06:56.857+00	name	\N	Tukwila, WA
3460	1000004	2	2022-01-27 01:13:44.414+00	latitude	37.348175	37.348729
3460	1000004	2	2022-01-27 01:13:44.414+00	longitude	-89.598179	-89.598272
3460	1000004	2	2022-01-27 01:13:44.414+00	elevationMeters	168	170
3265	1000004	6	2022-01-27 01:15:35.078+00	latitude	49.11915	49.119664
3265	1000004	6	2022-01-27 01:15:35.078+00	longitude	-116.524575	-116.523832
3265	1000004	6	2022-01-27 01:15:35.078+00	elevationMeters	584	583
3325	1000006	4	2022-01-28 14:48:13.014+00	status	CONSTRUCTION	OPEN
3325	1000006	4	2022-01-28 14:48:13.014+00	dateOpened	\N	2022-01-28
3345	1000004	4	2022-01-30 03:09:28.472+00	status	CONSTRUCTION	OPEN
3345	1000004	4	2022-01-30 03:09:28.472+00	dateOpened	\N	2022-01-29
3345	1000004	5	2022-01-30 03:09:54.847+00	name	San Bruno - Shops at Tanforan, CA	San Bruno - El Camino Real, CA
3790	1000004	2	2022-02-01 04:06:16.571+00	status	CONSTRUCTION	OPEN
3790	1000004	2	2022-02-01 04:06:16.571+00	dateOpened	\N	2022-01-31
3325	1000006	5	2022-02-01 14:21:58.153+00	locationId	\N	LillehammerCentralSupercharger
3535	1000004	4	2022-02-02 15:50:39.525+00	stallCount	28	36
4000	1000004	1	2022-01-30 01:40:02.43+00	name	\N	Taichung - Qingshui Service Area, Taiwan
3850	1000004	5	2022-01-31 15:16:37.676+00	address.street	W Thurrock Way	Thurrock - Lakeside Shopping Centre, W Thurrock Way
3850	1000004	6	2022-01-31 15:16:46.643+00	address.street	Thurrock - Lakeside Shopping Centre, W Thurrock Way	Lakeside Shopping Centre, W Thurrock Way
3850	1000004	4	2022-01-31 15:08:53.38+00	name	Thurrock - Lakeside Shopping Centre, UK	Grays, UK
3850	1000004	4	2022-01-31 15:08:53.38+00	powerKiloWatt	150	250
3880	1000006	3	2022-01-31 16:33:20.062+00	locationId	\N	princetonwvsupercharger
4005	1000006	1	2022-01-31 19:11:33.398+00	name	\N	Norway, Volda
4005	1000006	2	2022-01-31 19:19:48.19+00	name	Norway, Volda	Norway, Volda2
4005	1000006	3	2022-01-31 19:20:43.619+00	name	Norway, Volda2	Norway, Volda
4005	1000006	4	2022-01-31 19:21:38.852+00	name	Norway, Volda	Volda, Norway
4005	1000006	5	2022-01-31 19:21:56.984+00	latitude	62.14069482034775	62.140694
4005	1000006	5	2022-01-31 19:21:56.984+00	longitude	6.09075754880905	6.090757
4010	1000004	1	2022-02-02 07:54:47.534+00	name	\N	Montauban, France
3850	1000006	7	2022-02-01 14:21:29.603+00	locationId	\N	grayssupercharger
2640	1000004	2	2022-02-02 20:55:30.398+00	status	PERMIT	CONSTRUCTION
4015	1000004	1	2022-02-03 03:49:49.453+00	name	\N	Leland, NC
4020	1000004	1	2022-02-04 00:30:05.418+00	name	\N	San Mateo - S Norfolk St, CA
3815	1000004	2	2022-02-04 22:37:19.198+00	status	CONSTRUCTION	CLOSED_PERM
3815	1000004	2	2022-02-04 22:37:19.198+00	developerNotes	\N	Request for removal
4025	1000004	1	2022-02-05 09:46:03.624+00	name	\N	Denkendorf, Germany
3715	1000004	3	2022-02-07 06:35:25.505+00	status	PERMIT	CONSTRUCTION
3715	1000004	4	2022-02-07 07:57:25.463+00	latitude	59.32801	59.327976
3715	1000004	4	2022-02-07 07:57:25.463+00	longitude	17.01787	17.0165366
3715	1000004	4	2022-02-07 07:57:25.463+00	elevationMeters	25	30
4030	1000004	1	2022-02-07 23:06:48.388+00	name	\N	Walcott, IA
4035	1000004	1	2022-02-10 01:15:09.459+00	name	\N	Benson, NC
715	1000006	4	2022-02-10 01:17:08.042+00	powerKiloWatt	0	150
130	1000006	4	2022-02-10 01:20:48.474+00	powerKiloWatt	0	125
135	1000006	9	2022-02-10 01:21:06.202+00	powerKiloWatt	0	150
305	1000006	3	2022-02-10 01:21:44.155+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/34418-Supercharger-Ocala-FL	https://teslamotorsclub.com/tmc/threads/supercharger-ocala-fl.34418/
305	1000006	3	2022-02-10 01:21:44.155+00	powerKiloWatt	0	150
1205	1000006	7	2022-02-10 01:22:00.181+00	powerKiloWatt	0	150
820	1000006	7	2022-02-10 01:23:44.914+00	powerKiloWatt	0	150
4040	1000004	1	2022-02-11 07:33:03.793+00	name	\N	Estancarbon, France
4045	1000004	2	2022-02-15 01:58:20.217+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-buttonwillow-ca-buttonwillow-raceway-under-construction-oct-2021-16-stalls-restricted-access.220298/#post-6430220	https://teslamotorsclub.com/tmc/threads/supercharger-lost-hills-ca-permit-found.257433/
4030	1000004	2	2022-02-16 00:50:23.459+00	status	PERMIT	CONSTRUCTION
605	1000006	6	2022-02-10 01:27:40.346+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/47306-Supercharger-Ann-Arbor-MI	https://teslamotorsclub.com/tmc/threads/supercharger-ann-arbor-mi.47306/
180	1000006	3	2022-02-10 01:34:25.229+00	powerKiloWatt	0	120
190	1000006	3	2022-02-10 01:42:01.512+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/21121-Utah-Super-Charger-Locations	https://teslamotorsclub.com/tmc/threads/supercharger-moab-utah.79688/
190	1000006	3	2022-02-10 01:42:01.512+00	powerKiloWatt	0	120
915	1000006	7	2022-02-10 01:43:47.984+00	powerKiloWatt	0	150
205	1000006	4	2022-02-10 01:47:42.475+00	powerKiloWatt	0	120
3460	1000006	5	2022-02-12 03:50:11.152+00	locationId	capegirardeaumosupercharger	CapeGiradeauMOSupercharger
3460	1000006	6	2022-02-12 03:56:06.143+00	developerNotes	\N	Note the typo in the locationId, "Giradeau"
4045	1000004	1	2022-02-15 00:46:25.997+00	name	\N	Lost Hills, CA
2615	1000006	4	2022-02-15 20:27:27.63+00	status	CONSTRUCTION	OPEN
2615	1000006	4	2022-02-15 20:27:27.63+00	dateOpened	\N	2022-02-14
4050	1000004	1	2022-02-16 00:55:01.719+00	name	\N	Barstow I-15, CA
4050	1000004	2	2022-02-16 00:55:26.099+00	status	PERMIT	CONSTRUCTION
3460	1000004	3	2022-02-11 19:21:52.029+00	status	PERMIT	CONSTRUCTION
3900	1000006	3	2022-02-11 23:26:36.887+00	locationId	\N	SpragueWASupercharger
3900	1000006	3	2022-02-11 23:26:36.887+00	name	Tokio, WA	Sprague, WA
3900	1000006	4	2022-02-11 23:27:39.88+00	address.city	Tokio	Sprague
3900	1000004	5	2022-02-12 02:31:13.087+00	name	Sprague, WA	Tokio / Sprague, WA
3800	1000006	3	2022-02-12 03:17:43.964+00	locationId	genovaitsupercharger	genovanorthsupercharger
3800	1000006	3	2022-02-12 03:17:43.964+00	name	Genova, Italy	Genova North, Italy
3800	1000006	3	2022-02-12 03:17:43.964+00	developerNotes	\N	Tesla renamed this one to Genova North
3475	1000004	3	2022-02-12 05:32:02.541+00	developerNotes	Not on findus map as of 2021-11-08	Not on findus map as of 2021-11-08\r\nNow back on findus map as of 2022-02-12
3895	1000004	2	2022-02-13 12:28:41.552+00	status	CONSTRUCTION	OPEN
3895	1000004	2	2022-02-13 12:28:41.552+00	dateOpened	\N	2022-02-11
3895	1000004	2	2022-02-13 12:28:41.552+00	stallCount	8	12
3895	1000004	2	2022-02-13 12:28:41.552+00	developerNotes	Stall TBC	\N
4055	1000004	1	2022-02-17 20:42:39.47+00	name	\N	Oxford, NC
3900	1000004	6	2022-02-18 20:08:11.614+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-tokio-s-wa.249909/	https://teslamotorsclub.com/tmc/threads/supercharger-sprague-tokio-wa.256121/#post-6217914
3995	1000004	2	2022-02-18 23:28:51.792+00	status	PERMIT	CONSTRUCTION
3995	1000004	3	2022-02-18 23:29:14.647+00	stallCount	8	16
4060	1000004	1	2022-02-20 23:49:55.504+00	name	\N	Madoc, ON
4060	1000004	2	2022-02-21 19:50:28.807+00	elevationMeters	174	173
4060	1000004	2	2022-02-21 19:50:28.807+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-madoc-on.258112/	https://teslamotorsclub.com/tmc/threads/supercharger-oakland-ca-2nd-street-live-22-nov-2020-12-urban-stalls.171215/
4060	1000004	3	2022-02-21 19:50:52.735+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-oakland-ca-2nd-street-live-22-nov-2020-12-urban-stalls.171215/	https://driveteslacanada.ca/supercharger/tesla-supercharger-coming-soon-to-madoc/
4060	1000004	4	2022-02-21 20:01:04.672+00	urlDiscuss	https://driveteslacanada.ca/supercharger/tesla-supercharger-coming-soon-to-madoc/	https://teslamotorsclub.com/tmc/threads/supercharger-madoc-ontario.256171/#post-6452708
4065	1000004	1	2022-02-24 19:32:27.797+00	name	\N	Issaquah - Gilman, WA
4070	1000006	1	2022-02-26 18:53:56.857+00	name	\N	Southington, CT
4070	1000006	2	2022-02-26 18:55:14.501+00	locationId	\N	SouthingtonCTSupercharger
4075	1000004	1	2022-03-01 22:28:30.346+00	name	\N	Westminster, MD
4015	1000006	2	2022-02-25 13:39:12.471+00	status	CONSTRUCTION	OPEN
4015	1000006	2	2022-02-25 13:39:12.471+00	dateOpened	\N	2022-02-24
1140	1000004	13	2022-02-28 12:14:17.744+00	stallCount	8	12
3715	1000004	5	2022-03-04 17:31:48.257+00	status	CONSTRUCTION	OPEN
3715	1000004	5	2022-03-04 17:31:48.257+00	dateOpened	\N	2022-03-04
3715	1000004	6	2022-03-04 17:40:47.225+00	stallCount	12	8
4080	1000004	1	2022-03-05 00:56:21.618+00	name	\N	Sechelt, BC
4085	1000004	1	2022-03-07 01:05:09.907+00	name	\N	Urbana, IL
4090	1000004	1	2022-03-09 02:29:49.306+00	name	\N	Selma, CA
4095	1000004	1	2022-03-13 00:52:41.616+00	name	\N	Grass Valley, CA
3910	1000004	2	2022-03-13 17:21:51.459+00	status	CONSTRUCTION	OPEN
3910	1000004	2	2022-03-13 17:21:51.459+00	dateOpened	\N	2022-03-13
3910	1000004	3	2022-03-14 12:59:38.222+00	powerKiloWatt	150	125
4100	1000004	1	2022-03-15 02:26:35.612+00	name	\N	Melville on LIE, NY
4105	1000004	1	2022-03-15 06:02:04.704+00	name	\N	Sejong, South Korea
2105	1000004	3	2022-03-15 06:05:21.103+00	status	PERMIT	OPEN
2105	1000004	3	2022-03-15 06:05:21.103+00	dateOpened	\N	2022-03-14
2105	1000004	3	2022-03-15 06:05:21.103+00	stallCount	1	12
2105	1000004	3	2022-03-15 06:05:21.103+00	powerKiloWatt	0	250
4100	1000004	2	2022-03-17 00:00:55.406+00	status	PERMIT	CONSTRUCTION
4110	1000004	1	2022-03-17 07:37:24.056+00	name	\N	Schiedam. Netherlands
4110	1000004	2	2022-03-18 02:45:16.576+00	name	Schiedam. Netherlands	Schiedam, Netherlands
3460	1000004	7	2022-03-18 23:13:04.934+00	status	CONSTRUCTION	OPEN
3460	1000004	7	2022-03-18 23:13:04.934+00	dateOpened	\N	2022-03-17
3925	1000004	3	2022-03-18 23:13:55.57+00	status	CONSTRUCTION	OPEN
3925	1000004	3	2022-03-18 23:13:55.57+00	dateOpened	\N	2022-03-18
1360	1000006	7	2022-03-22 01:35:22.567+00	status	OPEN	CLOSED_TEMP
1360	1000006	7	2022-03-22 01:35:22.567+00	dateOpened	2018-03-12	\N
1360	1000006	7	2022-03-22 01:35:22.567+00	developerNotes	\N	Closed temporarily per: https://teslamotorsclub.com/tmc/posts/6541196/
4030	1000004	3	2022-03-19 02:02:19.161+00	status	CONSTRUCTION	OPEN
4030	1000004	3	2022-03-19 02:02:19.161+00	dateOpened	\N	2022-03-18
4115	1000004	1	2022-03-20 00:24:34.275+00	name	\N	Pangyo - Baekhyun A, South Korea
2670	1000004	2	2022-03-21 20:02:09.003+00	status	PERMIT	CONSTRUCTION
2670	1000004	3	2022-03-21 20:02:32.979+00	locationId	\N	ElwoodNJSupercharger
3795	1000004	3	2022-03-19 12:45:35.993+00	status	CONSTRUCTION	OPEN
3795	1000004	3	2022-03-19 12:45:35.993+00	dateOpened	\N	2022-03-16
4010	1000004	2	2022-03-23 12:44:06.483+00	status	CONSTRUCTION	OPEN
4010	1000004	2	2022-03-23 12:44:06.483+00	dateOpened	\N	2022-03-23
4010	1000004	2	2022-03-23 12:44:06.483+00	developerNotes	\N	23 March 2022: Now open accoring to https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=134#comments
4110	1000004	3	2022-03-24 08:57:57.08+00	status	CONSTRUCTION	OPEN
4110	1000004	3	2022-03-24 08:57:57.08+00	dateOpened	\N	2022-03-24
3340	1000004	2	2022-03-25 06:58:34.241+00	status	PERMIT	CONSTRUCTION
4110	1000006	4	2022-03-25 19:01:03.263+00	locationId	Schiedamnlsupercharger	schiedamsupercharger
4120	1000004	1	2022-03-26 01:01:48.053+00	name	\N	Las Vegas - E Sahara Ave (SC), NV
4125	1000004	1	2022-03-26 17:58:20.875+00	name	\N	Mammoth Lakes CRC, CA
4125	1000004	2	2022-03-26 22:33:58.973+00	name	Mammoth Lakes CRC, CA	Mammoth Lakes - CRC, CA
4050	1000004	3	2022-03-27 06:23:55.148+00	name	Barstow I-15, CA	Barstow - I-15, CA
3415	1000004	3	2022-03-27 22:36:56.508+00	status	CONSTRUCTION	OPEN
3415	1000004	3	2022-03-27 22:36:56.508+00	dateOpened	\N	2022-03-27
4130	1000004	1	2022-03-28 01:11:35.667+00	name	\N	Mocksville, NC
4130	1000004	2	2022-03-28 01:12:01.741+00	locationId	\N	MocksvilleNCSupercharger_dcsc
4130	1000004	3	2022-03-28 01:12:15.563+00	locationId	MocksvilleNCSupercharger_dcsc	MocksvilleNCSupercharger
3345	1000004	6	2022-03-28 11:35:32.204+00	locationId	\N	SanBrunoCAsupercharger2
2765	1000004	5	2022-03-28 12:27:22.884+00	name	Schkeuditz, Germany	Leipzig Airport, Germany
2765	1000004	5	2022-03-28 12:27:22.884+00	status	CONSTRUCTION	OPEN
2765	1000004	5	2022-03-28 12:27:22.884+00	dateOpened	\N	2022-03-28
2765	1000004	5	2022-03-28 12:27:22.884+00	developerNotes	\N	28 March: now open according to https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/3367
3895	1000006	3	2022-03-31 01:16:12.745+00	locationId	\N	romfordsuperchargerq122
3910	1000006	4	2022-03-31 01:17:20.231+00	locationId	\N	santiagodecompostelasupercharger
3900	1000004	7	2022-03-30 01:34:03.789+00	status	CONSTRUCTION	OPEN
3900	1000004	7	2022-03-30 01:34:03.789+00	dateOpened	\N	2022-03-29
3900	1000004	8	2022-03-30 04:08:32.997+00	name	Tokio / Sprague, WA	Sprague, WA
4025	1000004	2	2022-03-30 19:59:12.921+00	status	CONSTRUCTION	OPEN
4025	1000004	2	2022-03-30 19:59:12.921+00	dateOpened	\N	2022-03-30
4040	1000004	2	2022-03-31 06:49:38.911+00	status	CONSTRUCTION	OPEN
4040	1000004	2	2022-03-31 06:49:38.911+00	dateOpened	\N	2022-03-30
4040	1000004	2	2022-03-31 06:49:38.911+00	developerNotes	\N	30 March 2022: Now open according to our forum
3320	1000004	6	2022-03-31 06:52:57.119+00	address.street	Al Tiwayyah	Al Za’eem Street
3320	1000004	6	2022-03-31 06:52:57.119+00	address.city	Abu Dhabi	Al Ain
4135	1000004	1	2022-03-31 07:07:56.901+00	name	\N	Al Ain - Aloft Hotel, UAE
4140	1000004	1	2022-04-01 09:51:08.635+00	name	\N	Berlin - Schöneberger Ufer, Germany
550	1000004	5	2022-04-01 14:34:44.36+00	stallCount	16	24
550	1000004	5	2022-04-01 14:34:44.36+00	powerKiloWatt	150	250
550	1000004	5	2022-04-01 14:34:44.36+00	developerNotes	\N	16 V2 + 8 V3
1615	1000004	7	2022-04-01 16:37:27.601+00	dateOpened	2018-12-16	2018-12-15
1400	1000004	9	2022-04-01 16:43:14.247+00	dateOpened	2018-04-28	2018-04-27
2390	1000004	7	2022-04-01 16:53:56.944+00	dateOpened	2021-05-21	2021-05-20
1635	1000004	6	2022-04-01 17:00:59.088+00	dateOpened	2019-02-20	2019-02-19
550	1000006	6	2022-04-01 18:16:14.293+00	urlDiscuss	\N	https://forum.supercharge.info/t/supercharger-affi-italy/1938
2655	1000004	6	2022-04-01 19:32:32.661+00	dateOpened	2021-05-14	2021-05-13
2110	1000004	5	2022-04-01 19:33:38.25+00	dateOpened	2020-02-07	2020-02-06
1665	1000004	6	2022-04-01 19:40:35.469+00	dateOpened	2019-07-14	2019-07-13
2235	1000004	5	2022-04-01 19:47:57.06+00	dateOpened	2020-07-09	2020-07-08
2355	1000004	8	2022-04-01 19:49:09.023+00	dateOpened	2020-07-02	2020-07-01
2765	1000006	6	2022-04-02 01:47:35.137+00	name	Leipzig Airport, Germany	Leipzig-Halle, Germany
2765	1000006	6	2022-04-02 01:47:35.137+00	developerNotes	28 March: now open according to https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/3367	Looks like Tesla has given this an official name of Leipzig-Halle.\r\n\r\n28 March: now open according to https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/3367
4145	1000006	1	2022-04-02 13:03:57.638+00	name	\N	Pohang, South Korea
3970	1000004	2	2022-04-02 17:06:53.734+00	status	PERMIT	CONSTRUCTION
3970	1000004	2	2022-04-02 17:06:53.734+00	stallCount	12	16
3560	1000004	6	2022-04-06 13:47:13.659+00	stallCount	4	8
3825	1000004	2	2022-04-06 14:13:06.415+00	status	CONSTRUCTION	OPEN
3825	1000004	2	2022-04-06 14:13:06.415+00	dateOpened	\N	2022-04-06
3825	1000004	2	2022-04-06 14:13:06.415+00	stallCount	8	4
4160	1000004	2	2022-04-07 01:39:52.859+00	stallCount	11	12
4165	1000004	1	2022-04-09 00:02:47.08+00	name	\N	Tatamy, PA
880	1000004	3	2022-04-16 07:07:12.895+00	stallCount	6	8
4160	1000006	3	2022-04-19 17:02:55.201+00	status	CONSTRUCTION	OPEN
4160	1000006	3	2022-04-19 17:02:55.201+00	dateOpened	\N	2022-04-19
4160	1000004	1	2022-04-07 00:14:13.881+00	name	\N	Walterboro, SC
4150	1000004	1	2022-04-03 20:25:14.206+00	name	\N	North Platte, NE
875	1000004	10	2022-04-08 08:21:29.438+00	stallCount	10	12
875	1000004	10	2022-04-08 08:21:29.438+00	developerNotes	2016-08-17: "there was an upgrade and there are now 6 stalls"\r\n2017-11-06: "they are working on 6 to 8 stall upgrade"\r\n2021-08-09: "they are working on a temporary upgrade from 8 to 10 V2 stalls"	2016-08-17: "there was an upgrade and there are now 6 stalls"\r\n2017-11-06: "they are working on 6 to 8 stall upgrade"\r\n2021-08-09: "they are working on a temporary upgrade from 8 to 10 V2 stalls"\r\n8 April 2022: There are 8 permanent stalls plus 2 pallet chargers now, bringing the total up to 12.
4055	1000004	2	2022-04-12 16:03:39.906+00	status	PERMIT	OPEN
4055	1000004	2	2022-04-12 16:03:39.906+00	dateOpened	\N	2022-04-12
3760	1000004	2	2022-04-13 20:05:31.403+00	status	PERMIT	CONSTRUCTION
3825	1000006	3	2022-04-13 20:32:22.596+00	locationId	\N	LaurelMDSupercharger
4040	1000006	3	2022-04-13 21:00:40.431+00	name	Estancarbon, France	Saint-Gaudens, France
4090	1000004	2	2022-04-14 03:29:35.257+00	status	PERMIT	CONSTRUCTION
4055	1000006	3	2022-04-15 13:37:04.601+00	stallCount	8	12
4180	1000004	2	2022-04-16 03:04:36.192+00	name	New Castle on I-295, DE	New Castle - I-295, DE
4155	1000004	1	2022-04-06 14:31:52.858+00	name	\N	Staten Island - Richmond Ave, NY
4170	1000004	1	2022-04-10 17:19:10.47+00	name	\N	Duluth, GA
4175	1000004	1	2022-04-13 09:32:12.701+00	name	\N	Tournus, France
3760	1000006	3	2022-04-13 20:27:22.859+00	locationId	\N	NewBraunfelsTXSupercharger
2765	1000006	7	2022-04-13 20:56:46.707+00	name	Leipzig-Halle, Germany	Leipzig-Flughafen, Germany
2765	1000006	7	2022-04-13 20:56:46.707+00	developerNotes	Looks like Tesla has given this an official name of Leipzig-Halle.\r\n\r\n28 March: now open according to https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/3367	28 March: now open according to https://tff-forum.de/t/supercharger-in-deutschland-teil-2/148862/3367
4180	1000004	1	2022-04-15 19:33:55.827+00	name	\N	New Castle on I-295, DE
4185	1000004	1	2022-04-19 03:58:43.159+00	name	\N	Oswego, IL
4035	1000004	2	2022-04-19 21:04:23.32+00	status	PERMIT	CONSTRUCTION
4190	1000004	1	2022-04-21 20:03:08.402+00	name	\N	Algonquin, IL
4090	1000006	3	2022-04-21 20:57:57.479+00	stallCount	8	16
4195	1000004	1	2022-04-24 03:09:12.909+00	name	\N	Compton, CA
3955	1000004	2	2022-04-25 14:54:14.925+00	status	PERMIT	CONSTRUCTION
4200	1000004	1	2022-04-26 12:15:53.55+00	name	\N	Saint-Quentin, France
4205	1000004	1	2022-04-27 08:16:14.595+00	name	\N	Châtellerault, France
4210	1000004	1	2022-04-29 08:22:05.342+00	name	\N	Colmar, France
4220	1000004	1	2022-05-03 03:20:59.855+00	name	\N	Elk Grove - Laguna, CA
4210	1000004	2	2022-04-30 06:42:15.796+00	powerKiloWatt	12	250
4215	1000004	1	2022-05-01 06:35:35.641+00	name	\N	Dorking, UK
3525	1000004	4	2022-05-04 14:43:07.561+00	status	PERMIT	CONSTRUCTION
3890	1000006	2	2022-05-05 20:56:58.03+00	status	CONSTRUCTION	OPEN
3890	1000006	2	2022-05-05 20:56:58.03+00	dateOpened	\N	2022-05-04
3890	1000006	2	2022-05-05 20:56:58.03+00	stallCount	8	12
4120	1000004	2	2022-05-06 16:32:31.865+00	status	CONSTRUCTION	OPEN
4120	1000004	2	2022-05-06 16:32:31.865+00	dateOpened	\N	2022-05-06
4230	1000004	1	2022-05-06 18:53:34.111+00	name	\N	St. Louis, MO
3810	1000006	5	2022-05-06 21:41:24.25+00	status	CONSTRUCTION	OPEN
3810	1000006	5	2022-05-06 21:41:24.25+00	dateOpened	\N	2022-05-06
4035	1000006	3	2022-05-08 14:03:11.664+00	status	CONSTRUCTION	OPEN
4035	1000006	3	2022-05-08 14:03:11.664+00	dateOpened	\N	2022-05-07
2585	1000004	4	2022-05-08 19:33:45.8+00	name	Salt Lake City - S 300 W, UT	Salt Lake City - (SC), UT
2585	1000004	5	2022-05-08 19:44:58.46+00	name	Salt Lake City - (SC), UT	Salt Lake City (SC), UT
4235	1000006	1	2022-05-08 22:08:47.391+00	name	\N	Ål, Norway
4120	1000006	3	2022-05-09 13:27:57.919+00	locationId	lasvegas3250	lasvegasnveastsaharaavesupercharger
4240	1000004	1	2022-05-10 20:34:29.467+00	name	\N	Neuville-en-Ferrain, France
4240	1000004	2	2022-05-10 20:52:27.813+00	urlDiscuss	https://www.facebook.com/groups/tm3lereseau/about/	https://www.facebook.com/groups/tm3lereseau/permalink/1044704979809445/
4245	1000004	1	2022-05-12 00:38:01.033+00	name	\N	Yorba Linda, CA
4175	1000004	2	2022-05-12 08:18:30.077+00	status	PERMIT	CONSTRUCTION
4175	1000004	2	2022-05-12 08:18:30.077+00	developerNotes	\N	11 May 2022: Construction started according to French forum: https://forums.automobile-propre.com/topic/superchargeurs-implant%C3%A9s-r%C3%A9cemment-et-%C3%A0-venir-12899/?&page=149#comments
3980	1000004	2	2022-05-12 20:18:37.297+00	name	Calabasas, CA	Calabasas - Commons Way, CA
3980	1000004	2	2022-05-12 20:18:37.297+00	status	CONSTRUCTION	OPEN
3980	1000004	2	2022-05-12 20:18:37.297+00	dateOpened	\N	2022-05-12
4250	1000004	1	2022-05-13 04:13:11.341+00	name	\N	Lathrop, CA
4170	1000004	2	2022-05-13 21:04:30.48+00	status	CONSTRUCTION	OPEN
4170	1000004	2	2022-05-13 21:04:30.48+00	dateOpened	\N	2022-05-13
4255	1000004	1	2022-05-14 18:59:02.133+00	name	\N	Bethel Park, PA
4260	1000004	1	2022-05-16 19:44:31.648+00	name	\N	Waterville, ME
4095	1000004	2	2022-05-12 21:53:03.671+00	status	PERMIT	CLOSED_TEMP
4095	1000004	2	2022-05-12 21:53:03.671+00	latitude	39.1995	39.2026
4095	1000004	2	2022-05-12 21:53:03.671+00	longitude	-121.0603	-121.0643
4095	1000004	2	2022-05-12 21:53:03.671+00	elevationMeters	747	739
4095	1000004	2	2022-05-12 21:53:03.671+00	stallCount	8	12
4095	1000004	2	2022-05-12 21:53:03.671+00	address.street	151 W McKnight Way	692 Freeman Lane
4095	1000004	3	2022-05-12 21:53:31.673+00	status	CLOSED_TEMP	PERMIT
2125	1000004	9	2022-05-13 09:08:58.27+00	stallCount	4	6
4230	1000004	2	2022-05-16 05:16:02.439+00	status	PERMIT	CONSTRUCTION
4265	1000004	1	2022-05-18 00:22:51.251+00	name	\N	Azusa, CA
4100	1000004	3	2022-05-19 05:38:30.176+00	status	CONSTRUCTION	OPEN
4100	1000004	3	2022-05-19 05:38:30.176+00	dateOpened	\N	2022-05-19
4100	1000004	3	2022-05-19 05:38:30.176+00	stallCount	8	12
4205	1000004	2	2022-05-19 07:00:04.679+00	status	PERMIT	CONSTRUCTION
4205	1000004	2	2022-05-19 07:00:04.679+00	stallCount	8	16
4205	1000004	2	2022-05-19 07:00:04.679+00	developerNotes	\N	19 May 2022: constriction started, 16 stalls
4100	1000004	4	2022-05-19 16:05:42.103+00	name	Melville on LIE, NY	Melville - Walt Whitman Rd, NY
4100	1000004	5	2022-05-19 17:40:32.676+00	name	Melville - Walt Whitman Rd, NY	Melville - 1350 Walt Whitman Rd, NY
4100	1000004	6	2022-05-19 23:27:11.68+00	name	Melville - 1350 Walt Whitman Rd, NY	Melville - Walt Whitman Rd, NY
4100	1000004	6	2022-05-19 23:27:11.68+00	developerNotes	\N	Name changed to match Tesla nav and billing system
4100	1000004	7	2022-05-19 23:42:12.439+00	name	Melville - Walt Whitman Rd, NY	Melville - 1350 Walt Whitman Rd, NY
4100	1000004	7	2022-05-19 23:42:12.439+00	developerNotes	Name changed to match Tesla nav and billing system	reminder: there's already a site on Walt Whitman
4100	1000004	8	2022-05-20 00:22:22.186+00	name	Melville - 1350 Walt Whitman Rd, NY	Melville - Walt Whitman Rd, NY
4100	1000004	8	2022-05-20 00:22:22.186+00	developerNotes	reminder: there's already a site on Walt Whitman	reminder: this is the name in the nav and billing system.  The other sited is called Melville.
3840	1000004	2	2022-05-20 00:39:23.495+00	latitude	-39.055193	-39.056693
3840	1000004	2	2022-05-20 00:39:23.495+00	longitude	174.075397	174.071459
3840	1000004	2	2022-05-20 00:39:23.495+00	elevationMeters	9	6
3840	1000004	2	2022-05-20 00:39:23.495+00	address.street	28 Molesworth Street	1 Ariki St
4270	1000004	1	2022-05-20 14:32:04.25+00	name	\N	Övertorneå, Sweden
4275	1000004	1	2022-05-22 20:55:52.068+00	name	\N	Hendersonville, TN
4280	1000004	1	2022-05-24 21:07:05.667+00	name	\N	Scappoose, OR
4050	1000004	4	2022-05-25 03:04:09.251+00	name	Barstow - I-15, CA	Barstow - Lenwood Rd, CA
4050	1000004	4	2022-05-25 03:04:09.251+00	stallCount	40	68
4190	1000004	2	2022-05-24 19:08:11.032+00	status	PERMIT	CONSTRUCTION
3625	1000004	2	2022-05-24 19:12:11.398+00	locationId	\N	HuntsvilleALSupercharger
3625	1000004	2	2022-05-24 19:12:11.398+00	status	PERMIT	CONSTRUCTION
4270	1000004	2	2022-05-25 13:08:58.609+00	status	CONSTRUCTION	OPEN
4270	1000004	2	2022-05-25 13:08:58.609+00	dateOpened	\N	2022-05-25
4215	1000004	2	2022-05-25 16:35:02.027+00	address.street	Debbie’s Vineyard	Denbies Wine Estate
4050	1000004	5	2022-05-26 13:45:14.297+00	name	Barstow - Lenwood Rd, CA	Barstow - Tanger Way, CA
3490	1000006	2	2022-05-26 17:41:58.996+00	status	PERMIT	CONSTRUCTION
4285	1000004	1	2022-05-26 21:03:43.08+00	name	\N	Ridgefield, WA
4050	1000004	6	2022-05-27 06:49:40.513+00	status	CONSTRUCTION	OPEN
4050	1000004	6	2022-05-27 06:49:40.513+00	dateOpened	\N	2022-05-27
4050	1000004	6	2022-05-27 06:49:40.513+00	stallCount	68	20
1360	1000004	8	2022-05-27 22:31:56.288+00	status	CLOSED_TEMP	OPEN
1360	1000004	8	2022-05-27 22:31:56.288+00	dateOpened	\N	2022-05-27
1360	1000004	9	2022-05-27 23:28:39.29+00	dateOpened	2022-05-27	2018-03-12
4290	1000004	1	2022-05-28 03:22:55.711+00	name	\N	Island Resort, Hong Kong
4185	1000004	2	2022-05-28 04:14:35.506+00	status	CONSTRUCTION	OPEN
4185	1000004	2	2022-05-28 04:14:35.506+00	dateOpened	\N	2022-05-28
2670	1000004	4	2022-05-30 00:04:06.266+00	name	Hammonton, NJ	Elwood, NJ
2670	1000004	4	2022-05-30 00:04:06.266+00	status	CONSTRUCTION	OPEN
2670	1000004	4	2022-05-30 00:04:06.266+00	dateOpened	\N	2022-05-29
4295	1000004	1	2022-05-30 21:36:56.063+00	name	\N	Sainte-Marie, QC
3935	1000004	2	2022-05-30 18:47:22.076+00	status	PERMIT	CONSTRUCTION
3760	1000004	4	2022-05-31 19:55:52.141+00	status	CONSTRUCTION	OPEN
3760	1000004	4	2022-05-31 19:55:52.141+00	dateOpened	\N	2022-05-31
3540	1000004	2	2022-06-04 04:03:30.389+00	name	Santa Monica I-10, CA	Santa Monica - Cloverfield Blvd, CA
4305	1000004	1	2022-06-04 06:37:12.963+00	name	\N	Seoul - Shinsa, South Korea
4310	1000004	2	2022-06-05 23:57:10.42+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/supercharger-el-dorado-ks.268850/
4315	1000004	1	2022-06-07 14:26:12.395+00	name	\N	Tours Sud, France
3525	1000006	5	2022-06-07 17:55:06.454+00	status	CONSTRUCTION	OPEN
3525	1000006	5	2022-06-07 17:55:06.454+00	dateOpened	\N	2022-06-03
3525	1000006	6	2022-06-07 17:57:25.483+00	stallCount	11	12
3970	1000004	3	2022-05-30 18:53:56.252+00	status	CONSTRUCTION	OPEN
3970	1000004	3	2022-05-30 18:53:56.252+00	dateOpened	\N	2022-05-30
4100	1000006	9	2022-05-31 22:57:57.799+00	locationId	MelvilleNYsupercharger	melvillenywaltwhitmanroadsupercharger
4235	1000006	2	2022-06-07 05:36:10.188+00	status	PERMIT	CONSTRUCTION
4235	1000006	3	2022-06-08 15:35:21.908+00	locationId	\N	aisupercharger
4235	1000006	3	2022-06-08 15:35:21.908+00	latitude	60.63009681388233	60.630096
4235	1000006	3	2022-06-08 15:35:21.908+00	longitude	8.56388837099075	8.563888
3525	1000006	7	2022-06-08 15:48:00.372+00	locationId	\N	gransupercharger
4085	1000004	2	2022-06-02 00:16:57.131+00	status	PERMIT	CONSTRUCTION
4270	1000006	3	2022-06-02 16:37:19.026+00	locationId	overtorneatatort	overtorneasupercharger
4270	1000006	3	2022-06-02 16:37:19.026+00	name	Övertorneå, Sweden	Övertorneå Tätort, Sweden
3760	1000006	5	2022-06-02 19:00:40.368+00	stallCount	16	24
4300	1000004	1	2022-06-02 19:05:02.174+00	name	\N	District Heights, MD
4310	1000004	1	2022-06-05 05:55:16.759+00	name	\N	El Dorado, KS
4315	1000006	2	2022-06-07 21:29:00.221+00	locationId	tourssudsupercharger	tourssudsuperchargerq122
4315	1000006	2	2022-06-07 21:29:00.221+00	latitude	47.325519336918624	47.325519
4315	1000006	2	2022-06-07 21:29:00.221+00	longitude	0.7135005398034	0.7135
4320	1000004	1	2022-06-08 19:56:38.398+00	name	\N	North Hollywood, CA
3970	1000006	4	2022-06-09 15:34:37.344+00	locationId	Leerdesupercharger	leersupercharger
3970	1000006	4	2022-06-09 15:34:37.344+00	latitude	53.25969144106873	53.259691
3970	1000006	4	2022-06-09 15:34:37.344+00	longitude	7.45576014551901	7.45576
3970	1000006	4	2022-06-09 15:34:37.344+00	elevationMeters	0	-1
3970	1000006	5	2022-06-09 18:34:54.817+00	name	Leer, Germany	Leer Ems Park, Germany
3265	1000004	7	2022-06-10 00:44:10.194+00	status	CONSTRUCTION	OPEN
3265	1000004	7	2022-06-10 00:44:10.194+00	dateOpened	\N	2022-06-09
4325	1000006	1	2022-06-10 11:33:55.99+00	name	\N	Mikkeli, Finland
4330	1000004	3	2022-06-12 19:14:04.524+00	dateOpened	2022-06-01	2020-03-13
4330	1000004	3	2022-06-12 19:14:04.524+00	urlDiscuss	\N	https://teslamotorsclub.com/tmc/threads/tesla-in-serbia.76403/page-4#post-4546392
4330	1000004	3	2022-06-12 19:14:04.524+00	stallCount	6	4
4330	1000004	1	2022-06-12 10:24:26.62+00	name	\N	Belgrade (v2), Serbia
4330	1000004	2	2022-06-12 10:25:16.292+00	locationId	\N	belgradesupercharger
4335	1000004	1	2022-06-14 13:01:01.272+00	name	\N	Seoul - Times Stream, South Korea
4305	1000004	2	2022-06-14 13:01:38.077+00	name	Seoul - Shinsa, South Korea	Seoul - Sinsa, South Korea
4305	1000004	2	2022-06-14 13:01:38.077+00	address.street	Shinsa Square 652, Gangnam-daero	Sinsa Square 652, Gangnam-daero
3625	1000004	3	2022-06-14 18:34:16.937+00	status	CONSTRUCTION	OPEN
3625	1000004	3	2022-06-14 18:34:16.937+00	dateOpened	\N	2022-06-14
4005	1000006	7	2022-06-15 13:57:32.335+00	locationId	\N	OrstaVoldaSupercharger
4330	1000006	4	2022-06-14 13:11:45.807+00	name	Belgrade (v2), Serbia	Belgrade, Serbia
4330	1000006	5	2022-06-14 13:12:55.048+00	hours	https://forum.supercharge.info/t/supercharger-belgrade-serbia/2063/4	\N
4005	1000006	6	2022-06-15 10:05:29.626+00	status	PERMIT	CONSTRUCTION
4340	1000004	1	2022-06-16 19:58:16.944+00	name	\N	Fredericia, Denmark
4340	1000004	2	2022-06-16 19:59:41.722+00	latitude	5.534407	55.534407
4340	1000004	2	2022-06-16 19:59:41.722+00	elevationMeters	207	19
4345	1000004	1	2022-06-18 10:00:26.306+00	name	\N	New Taipei - Huwei Art, Culture and Leisure Park
4345	1000004	2	2022-06-18 10:00:34.984+00	name	New Taipei - Huwei Art, Culture and Leisure Park	New Taipei - Huwei Art, Culture and Leisure Park, Taiwan
4345	1000004	3	2022-06-18 10:01:43.192+00	stallCount	3	6
3385	1000006	3	2022-06-18 22:10:22.218+00	status	PERMIT	CONSTRUCTION
4005	1000004	8	2022-06-19 06:27:41.685+00	stallCount	8	12
4150	1000004	2	2022-06-19 07:20:14.832+00	status	PERMIT	CONSTRUCTION
4350	1000004	1	2022-06-19 20:00:49.249+00	name	\N	Kozina, Slovenia
1295	1000004	7	2022-06-19 23:54:12.706+00	name	Madison - East Washington Ave, WI	Madison - E Washington Ave, WI
1795	1000004	7	2022-06-20 00:02:34.224+00	name	West Palm Beach - Garden Road, FL	West Palm Beach - Garden Rd, FL
2205	1000004	9	2022-06-20 00:04:24.066+00	name	Florence - Houston Road, KY	Florence - Houston Rd, KY
2645	1000004	6	2022-06-20 00:05:26.934+00	name	Charlottesville - Proffit Road, VA	Charlottesville - Proffit Rd, VA
2420	1000004	10	2022-06-20 00:05:54.709+00	name	Nepean - Robertson Road, ON	Nepean - Robertson Rd, ON
135	1000004	10	2022-06-21 15:46:36.952+00	urlDiscuss	http://www.teslamotorsclub.com/showthread.php/38535-Supercharger-Newark-DE	https://teslamotorsclub.com/tmc/threads/supercharger-newark-de.38535/
4355	1000006	1	2022-06-21 19:33:20.108+00	name	\N	Augusta, NJ
3900	1000004	9	2022-06-21 22:36:07.228+00	address.street	2008 Durry Road	2008 Durry Rd
4175	1000004	3	2022-06-22 15:03:09.044+00	status	CONSTRUCTION	OPEN
4175	1000004	3	2022-06-22 15:03:09.044+00	dateOpened	\N	2022-06-21
4360	1000004	1	2022-06-23 06:14:37.517+00	name	\N	Griffith, NSW
3540	1000006	3	2022-06-23 13:26:22.658+00	status	PERMIT	CONSTRUCTION
3540	1000006	3	2022-06-23 13:26:22.658+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-santa-monica-ca-i-10-16-v3-stalls-permit-received.234652/	https://teslamotorsclub.com/tmc/threads/supercharger-santa-monica-ca-i-10-under-construction-jun-2022-16-v3-stalls.234652/
3340	1000006	3	2022-06-23 16:18:37.217+00	status	CONSTRUCTION	OPEN
3340	1000006	3	2022-06-23 16:18:37.217+00	dateOpened	\N	2022-06-22
4365	1000004	1	2022-06-24 10:30:23.058+00	name	\N	Kerpen-Sindorf, Germany
4365	1000004	2	2022-06-24 13:32:24.189+00	stallCount	8	16
2640	1000004	3	2022-06-24 17:16:59.181+00	status	CONSTRUCTION	OPEN
2640	1000004	3	2022-06-24 17:16:59.181+00	dateOpened	\N	2022-06-24
1260	1000006	13	2022-06-25 02:15:19.982+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/new-superchargers-proposed-in-greensboro-and-raleigh-nc.89700/	https://teslamotorsclub.com/tmc/threads/supercharger-raleigh-nc.64189/
1260	1000006	13	2022-06-25 02:15:19.982+00	developerNotes	Update from latest car map data	\N
4370	1000006	1	2022-06-25 03:51:10.485+00	name	\N	Sturbridge, MA
555	1000004	2	2022-06-26 00:23:54.876+00	status	OPEN	CLOSED_PERM
555	1000004	2	2022-06-26 00:23:54.876+00	dateOpened	2015-02-13	\N
555	1000004	2	2022-06-26 00:23:54.876+00	developerNotes	\N	2022-06-26: Original open date 2015-02-13.  Replaced by Osaka - Omigachi site see https://forum.supercharge.info/t/supercharger-osaka-ogimachi-japan/2110
4375	1000004	1	2022-06-26 09:58:26.546+00	name	\N	Charleroi
4375	1000004	2	2022-06-26 10:00:08.593+00	name	Charleroi	Charleroi, Belgium
4375	1000004	3	2022-06-26 10:02:15.401+00	latitude	50.4520553	50.27076
4375	1000004	3	2022-06-26 10:02:15.401+00	longitude	4.430443	4.25501
4375	1000004	4	2022-06-26 10:03:09.653+00	elevationMeters	177	212
4375	1000004	5	2022-06-26 10:04:34.573+00	latitude	50.27076	50.452591
4375	1000004	5	2022-06-26 10:04:34.573+00	longitude	4.25501	4.432703
4375	1000004	6	2022-06-26 10:10:41.545+00	latitude	50.452591	50.27074
4375	1000004	6	2022-06-26 10:10:41.545+00	longitude	4.432703	4.25496
4375	1000004	7	2022-06-26 10:11:22.548+00	latitude	50.27074	50.451916
4375	1000004	7	2022-06-26 10:11:22.548+00	longitude	4.25496	4.430239
4375	1000004	8	2022-06-26 10:12:43.858+00	latitude	50.451916	50.452028
4375	1000004	8	2022-06-26 10:12:43.858+00	longitude	4.430239	4.430694
2210	1000004	7	2022-06-27 04:08:24.652+00	urlDiscuss	https://www.plugshare.com/location/222465	https://teslamotorsclub.com/tmc/forums/taiwan.254/
2210	1000004	7	2022-06-27 04:08:24.652+00	stallCount	8	17
2210	1000004	7	2022-06-27 04:08:24.652+00	powerKiloWatt	150	250
2210	1000004	7	2022-06-27 04:08:24.652+00	developerNotes	\N	17 stalls total:\r\n8 V2 stalls with dual cable (TPC + CCS2)\r\n9 V3 stalls with alternating single cable (5 TPC, 4 CCS2)
4395	1000004	1	2022-07-02 13:35:26.686+00	name	\N	Anseong, South Korea
4400	1000004	1	2022-07-02 13:55:21.684+00	name	\N	Ein Bokek, Israel
4150	1000004	3	2022-06-30 00:13:02.952+00	status	CONSTRUCTION	OPEN
4150	1000004	3	2022-06-30 00:13:02.952+00	dateOpened	\N	2022-06-29
1645	1000004	6	2022-06-30 00:28:59.116+00	name	Fort Myers - Dani Drive, FL	Fort Myers, FL
1645	1000004	6	2022-06-30 00:28:59.116+00	developerNotes	\N	name change: removed Dani Drive, per nav name.
875	1000004	11	2022-06-30 10:00:12.154+00	stallCount	12	20
875	1000004	11	2022-06-30 10:00:12.154+00	developerNotes	2016-08-17: "there was an upgrade and there are now 6 stalls"\r\n2017-11-06: "they are working on 6 to 8 stall upgrade"\r\n2021-08-09: "they are working on a temporary upgrade from 8 to 10 V2 stalls"\r\n8 April 2022: There are 8 permanent stalls plus 2 pallet chargers now, bringing the total up to 12.	2016-08-17: "there was an upgrade and there are now 6 stalls"\r\n2017-11-06: "they are working on 6 to 8 stall upgrade"\r\n2021-08-09: "they are working on a temporary upgrade from 8 to 10 V2 stalls"\r\n8 April 2022: There are 8 permanent stalls plus 2 pallet chargers now, bringing the total up to 12.\r\n30 June 2022 they have removed the temporary stalls. They have installed 12 V3. Currently there are 12 V3 + 8 V2
4380	1000004	1	2022-06-29 00:58:08.656+00	name	\N	Verona, NY
4385	1000004	1	2022-06-29 07:21:57.629+00	name	\N	Bondi Junction, NSW
4235	1000006	4	2022-06-29 11:39:36.901+00	status	CONSTRUCTION	OPEN
4235	1000006	4	2022-06-29 11:39:36.901+00	dateOpened	\N	2022-06-29
3490	1000004	3	2022-06-30 20:01:12.045+00	status	CONSTRUCTION	OPEN
3490	1000004	3	2022-06-30 20:01:12.045+00	dateOpened	\N	2022-06-30
3490	1000004	4	2022-06-30 20:38:02.309+00	stallCount	8	6
4140	1000004	2	2022-07-01 13:42:32.434+00	status	CONSTRUCTION	OPEN
4140	1000004	2	2022-07-01 13:42:32.434+00	dateOpened	\N	2022-07-01
4140	1000004	2	2022-07-01 13:42:32.434+00	developerNotes	1 April 2022: Construction started	1 April 2022: Construction started\r\n1 July 2022. now open
4005	1000006	9	2022-07-02 09:37:15.859+00	status	CONSTRUCTION	OPEN
4005	1000006	9	2022-07-02 09:37:15.859+00	dateOpened	\N	2022-07-01
4405	1000004	1	2022-07-03 00:45:04.537+00	name	\N	San Ardo, CA
225	1000004	8	2022-07-03 12:13:27.218+00	stallCount	28	36
225	1000004	8	2022-07-03 12:13:27.218+00	developerNotes	Open date changed from 1/15/16 to 8/13/13 based on https://teslamotorsclub.com/tmc/posts/3581440/	Open date changed from 1/15/16 to 8/13/13 based on https://teslamotorsclub.com/tmc/posts/3581440/\r\n2022-07-03: now 36 stalls according to elbilforum.no
3490	1000004	5	2022-07-04 03:36:13.964+00	latitude	43.6613	43.66114
3490	1000004	5	2022-07-04 03:36:13.964+00	longitude	-71.4936	-71.493944
3260	1000004	5	2022-06-30 00:40:11.697+00	name	Somerset - South Service Plaza, PA	Somerset - Eastbound Service Plaza, PA
4205	1000004	3	2022-06-30 06:20:29.837+00	status	CONSTRUCTION	OPEN
4205	1000004	3	2022-06-30 06:20:29.837+00	dateOpened	\N	2022-06-29
4240	1000004	3	2022-06-30 06:21:28.5+00	status	CONSTRUCTION	OPEN
4240	1000004	3	2022-06-30 06:21:28.5+00	dateOpened	\N	2022-06-29
4200	1000004	2	2022-06-30 06:22:08.052+00	status	CONSTRUCTION	OPEN
4200	1000004	2	2022-06-30 06:22:08.052+00	dateOpened	\N	2022-06-29
875	1000004	12	2022-06-30 10:06:28.507+00	powerKiloWatt	150	250
4045	1000004	3	2022-07-04 14:09:47.137+00	status	PERMIT	CONSTRUCTION
4410	1000004	1	2022-07-05 07:34:56.852+00	name	\N	Völkermarkt, Austria
4410	1000004	3	2022-07-05 07:37:12.134+00	elevationMeters	200	462
1325	1000004	9	2022-07-05 06:35:22.291+00	stallCount	10	14
1325	1000004	9	2022-07-05 06:35:22.291+00	powerKiloWatt	150	250
1325	1000004	9	2022-07-05 06:35:22.291+00	developerNotes	2019-08-29: updated to 150kW as per the Tesla nav. data	2019-08-29: updated to 150kW as per the Tesla nav. data\r\n2022-07-05: 4 v3 stalls added
3935	1000004	3	2022-07-05 18:46:17.461+00	stallCount	12	16
4415	1000004	1	2022-07-06 13:39:14.226+00	name	\N	WM Hotel, Hong Kong
4420	1000004	1	2022-07-07 14:38:35.572+00	name	\N	Jacksonville, NC
2250	1000004	3	2022-07-09 04:04:51.447+00	locationId	TurlockCAsupercharger	\N
2250	1000004	4	2022-07-09 04:05:53.705+00	developerNotes	\N	2022-07-09 - This permit looks pretty stale. Other Turlock location has moved into construction.
4090	1000006	4	2022-07-09 14:19:18.503+00	status	CONSTRUCTION	OPEN
4090	1000006	4	2022-07-09 14:19:18.503+00	dateOpened	\N	2022-07-08
4080	1000004	2	2022-07-09 17:37:23.881+00	status	PERMIT	CONSTRUCTION
4260	1000004	2	2022-07-09 19:14:38.89+00	status	PERMIT	CONSTRUCTION
4425	1000004	1	2022-07-09 20:14:54.33+00	name	\N	Sarzana
4425	1000004	2	2022-07-09 20:25:43.075+00	name	Sarzana	Sarzana, Italy
4060	1000004	5	2022-07-10 00:32:52.972+00	status	PERMIT	CONSTRUCTION
4060	1000004	6	2022-07-10 00:34:56.279+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-madoc-ontario.256171/#post-6452708	https://teslamotorsclub.com/tmc/threads/supercharger-madoc-on.256171
1635	1000004	7	2022-07-10 01:24:15.715+00	stallCount	10	14
1635	1000004	7	2022-07-10 01:24:15.715+00	developerNotes	\N	Expanded from 10 to 14 stalls in Sept 2021.
1635	1000004	8	2022-07-10 01:24:29.444+00	urlDiscuss	https://teslamotorsclub.com/tmc/threads/supercharger-santa-monica-place-permit-found.117037/	https://teslamotorsclub.com/tmc/threads/supercharger-santa-monica-ca-santa-monica-place-live-19-feb-2019-14-urban-stalls.117037
4320	1000004	2	2022-07-10 16:25:34.975+00	stallCount	24	12
4260	1000004	4	2022-07-10 18:48:54.828+00	stallCount	8	12
160	1000004	3	2022-07-10 20:24:00.283+00	powerKiloWatt	0	120
415	1000004	4	2022-07-10 20:24:50.424+00	powerKiloWatt	0	120
850	1000004	7	2022-07-10 20:31:52.56+00	powerKiloWatt	0	120
925	1000004	6	2022-07-10 20:33:18.078+00	powerKiloWatt	0	120
1175	1000004	11	2022-07-10 20:33:55.752+00	powerKiloWatt	0	120
1230	1000004	4	2022-07-10 20:34:16.928+00	powerKiloWatt	0	120
2250	1000004	5	2022-07-10 20:39:11.584+00	powerKiloWatt	0	250
270	1000004	4	2022-07-10 20:51:59.144+00	powerKiloWatt	0	120
590	1000004	3	2022-07-10 21:07:41.962+00	powerKiloWatt	0	120
945	1000004	4	2022-07-10 21:27:36.792+00	powerKiloWatt	0	120
1095	1000004	3	2022-07-10 21:30:19.266+00	powerKiloWatt	0	120
1115	1000004	2	2022-07-10 21:30:55.911+00	powerKiloWatt	0	120
1130	1000004	3	2022-07-10 21:31:20.168+00	powerKiloWatt	0	120
1440	1000004	3	2022-07-10 21:37:40.744+00	powerKiloWatt	0	120
2080	1000004	5	2022-07-10 21:42:10.042+00	powerKiloWatt	0	150
3300	1000004	3	2022-07-10 21:43:40.066+00	powerKiloWatt	0	250
4315	1000004	3	2022-07-10 21:49:48.629+00	powerKiloWatt	0	250
4205	1000006	4	2022-07-11 13:19:12.318+00	locationId	châtelleraultsuperchargerq122	chatelleraultsuperchargerq122
395	1000006	5	2022-07-11 13:23:05.85+00	name	Tystberga, Nyköping, Sweden	Sillekrog, Sweden
395	1000006	5	2022-07-11 13:23:05.85+00	developerNotes	2016-01-18: There appear to be 6 stalls even though Tesla's website lists 4.  http://supercharge-me.de/index.php/component/content/article?id=236:supercharger-tystberga\r\n\r\n2018-11-20: Tesla added another 2 stalls, now 8.	2016-01-18: There appear to be 6 stalls even though Tesla's website lists 4.  http://supercharge-me.de/index.php/component/content/article?id=236:supercharger-tystberga\r\n\r\n2018-11-20: Tesla added another 2 stalls, now 8.\r\n\r\n2022-07-11: Tesla has renamed this location from Tystberga to Sillekrog
395	1000006	5	2022-07-11 13:23:05.85+00	address.street	by OKQ8, Lästringe Sillekrog, Nyköping	OKQ8, Lästringe Sillekrog, Nyköping
4310	1000004	3	2022-07-10 03:54:48.849+00	status	PERMIT	CONSTRUCTION
4310	1000004	3	2022-07-10 03:54:48.849+00	latitude	37.7662	37.765506
4310	1000004	3	2022-07-10 03:54:48.849+00	longitude	-96.9815	-96.982618
4260	1000004	3	2022-07-10 18:48:04.727+00	latitude	44.568847	44.569032
4260	1000004	3	2022-07-10 18:48:04.727+00	longitude	-69.64057	-69.639469
4260	1000004	5	2022-07-10 18:50:00.516+00	elevationMeters	56	57
2340	1000004	2	2022-07-10 20:39:35.106+00	powerKiloWatt	0	250
2395	1000004	4	2022-07-10 20:41:50.526+00	powerKiloWatt	0	250
285	1000004	4	2022-07-10 20:54:42.391+00	powerKiloWatt	0	120
290	1000004	2	2022-07-10 20:55:06.638+00	powerKiloWatt	0	120
425	1000004	3	2022-07-10 20:56:54.855+00	powerKiloWatt	0	120
435	1000004	7	2022-07-10 20:58:10.404+00	powerKiloWatt	0	120
460	1000004	2	2022-07-10 20:58:22.34+00	powerKiloWatt	0	120
495	1000004	3	2022-07-10 21:00:24.877+00	powerKiloWatt	0	120
540	1000004	3	2022-07-10 21:04:59.342+00	powerKiloWatt	0	120
555	1000004	3	2022-07-10 21:05:11.31+00	powerKiloWatt	0	120
585	1000004	4	2022-07-10 21:07:02.064+00	powerKiloWatt	0	120
675	1000004	2	2022-07-10 21:09:41.35+00	powerKiloWatt	0	120
705	1000004	2	2022-07-10 21:10:55.791+00	powerKiloWatt	0	120
720	1000004	3	2022-07-10 21:11:33.144+00	powerKiloWatt	0	120
810	1000004	2	2022-07-10 21:23:45.527+00	powerKiloWatt	0	120
865	1000004	4	2022-07-10 21:24:38.9+00	powerKiloWatt	0	120
890	1000004	2	2022-07-10 21:25:09.527+00	powerKiloWatt	0	120
1015	1000004	3	2022-07-10 21:29:29.935+00	powerKiloWatt	0	120
1875	1000004	4	2022-07-10 21:40:57.793+00	powerKiloWatt	0	120
3700	1000004	2	2022-07-10 21:46:24.322+00	powerKiloWatt	0	250
3950	1000004	2	2022-07-10 21:48:16.346+00	powerKiloWatt	0	250
4430	1000004	1	2022-07-11 04:03:21.506+00	name	\N	Tuggeranong, ACT
4435	1000004	1	2022-07-13 07:59:30.437+00	name	\N	Xinzo de Limia, Spain
2120	1000004	6	2022-07-14 04:11:35.196+00	stallCount	8	12
2120	1000004	6	2022-07-14 04:11:35.196+00	developerNotes	2021-06-18: Appeared open on Find Us	2021-06-18: Appeared open on Find Us\r\n2022-07-14: PlugShare pictures show 12 V3 stalls
4435	1000004	2	2022-07-14 06:35:27.25+00	stallCount	12	16
\.


-- Completed on 2022-07-14 17:03:04 EDT

--
-- PostgreSQL database dump complete
--

-- Pre-populate stalls based on max power
UPDATE site SET stalls_urban = stall_count WHERE power_kwatt <= 72;
UPDATE site SET stalls_v2 = stall_count WHERE power_kwatt BETWEEN 73 AND 199;
UPDATE site SET stalls_v3 = stall_count WHERE power_kwatt >= 200; -- a few of these are V4 at the time of release and will have to be updated manually

-- Pre-populate plugs based on geography, max power, and existing other_evs flag

-- All stalls in China are GB/T, except Hong Kong and Macau which are CCS2 (with one weird exception in Macau to be updated manually)
UPDATE site s SET plugs_gbt = stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.name = 'China' AND a.state NOT IN ('Hong Kong', 'Macau');
UPDATE site s SET plugs_ccs2 = stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.name = 'China' AND a.state IN ('Hong Kong', 'Macau');

-- All stalls in Jordan are Type2
UPDATE site s SET plugs_type2 = stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.name = 'Jordan';

-- Taiwan is mostly dual-cable CCS2+TPC but some will have to be updated manually
UPDATE site s SET plugs_ccs2 = s.stall_count, plugs_tpc = s.stall_count, plugs_multi = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.name = 'Taiwan';

-- North America V2 + Urban, and all stalls in Japan + South Korea, are TPC if they're not already marked open to other EVs
UPDATE site s SET plugs_tpc = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND ((s.power_kwatt < 200 AND c.region_id = 100) OR c.name IN ('Japan', 'South Korea')) AND NOT s.other_evs;

-- North America + South Korea stalls that are already marked open to other EVs are all MagicDock (TPC+CCS1)
UPDATE site s SET plugs_tpc = s.stall_count, plugs_ccs1 = s.stall_count, plugs_multi = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND (c.region_id = 100 OR c.name = 'South Korea') AND s.other_evs;

-- North America V3 + V4 stalls are all NACS if they're not already marked open to other EVs
UPDATE site s SET plugs_nacs = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.region_id = 100 AND s.power_kwatt = 250 AND NOT s.other_evs;

-- Europe V2 stalls are dual-cable CCS2+Type2
UPDATE site s SET plugs_ccs2 = s.stall_count, plugs_type2 = s.stall_count, plugs_multi = s.stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.region_id = 101 AND s.power_kwatt BETWEEN 73 AND 199;

-- Presume the rest of the world's V2 stalls have CCS2 plugs
UPDATE site s SET plugs_ccs2 = stall_count
FROM address a, country c
WHERE s.address_id = a.address_id AND a.country_id = c.country_id
AND c.region_id != 100 AND c.name NOT IN ('China', 'Japan', 'Jordan', 'South Korea', 'Taiwan')
AND NOT (c.region_id = 101 AND s.power_kwatt BETWEEN 73 AND 199);

-- Pre-populate parking options
INSERT INTO parking (name, description) VALUES 
    ('Free at all times', 'Unrestricted at all times with no fee to park'),
    ('Free with validation', 'No fee to park for the first N minutes of parking with proof of purchase from certain merchants'),
    ('Free initially', 'No fee to park for the first N minutes of parking'),
    ('Free off-peak', 'No fee to park outside of peak hours/days (e.g. nights, weekends)'),
    ('Paid - self parking', 'Fee to park at all times'),
    ('Paid - valet parking', 'Fee to park at all times with valet assistance'),
    ('Other - see notes', 'Details provided in "Access Notes"');
