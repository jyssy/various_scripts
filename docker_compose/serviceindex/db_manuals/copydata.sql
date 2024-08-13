COPY serviceindex.host (id, hostname, ip_address, qualys, nagios, label, note, host_last_verified, availability_id, location_id, poc_backup_id, poc_primary_id, service_id, support_id, sys_admin_id, syslog_relp_10515, syslog_standard_10514) FROM stdin;
133	cilogon.org		t	t	primary		2024-05-02	1	34	67	34	69	3	34	f	f
10	awsadmin1.operations.access-ci.org	18.223.120.0	t	t	PRIMARY	updated 4/3/2024	\N	1	2	2	9	6	2	9	t	f
11	awsadmin2.operations.access-ci.org	35.163.136.203	t	t	SECONDARY	updated 4/3/2024	\N	1	2	2	9	6	2	9	t	f
22	ip-172-23-30-217.us-east-2.compute.internal	172.23.30.217	f	f	PRIMARY	OS last updated 2024-06-19	\N	3	2	2	1	14	3	1	t	f
31	omnisoc-kafka1.access-ci.org	3.138.51.159	f	f	Primary		\N	1	2	13	12	21	3	12	f	f
166	registry.access-ci.org		f	f	primary		2024-05-02	1	34	67	34	68	3	34	f	f
32	omnisoc-kafka2.access-ci.org	3.128.112.244	f	f	Secondary		\N	1	2	13	12	21	3	12	f	f
9	syslog.access-ci.org	3.132.136.60	t	t	PRIMARY	updated 2/7/2023	\N	1	2	10	9	5	2	9	t	f
5	tg-kdc.psc.teragrid.org	128.182.112.80	t	t	REPLICA		\N	1	8	4	6	2	1	6	f	f
16	ip-172-23-53-194.us-east-2.compute.internal	172.23.53.194	f	f	PRIMARY	OS last updated 2024-06-19	\N	1	2	2	1	11	2	1	t	f
12	monitor.access-ci.org	35.85.23.44	t	f	PRIMARY	updated 06/06/2024	\N	1	2	9	10	7	2	10	t	f
68	syslog	172.23.30.6	f	f	Secondary	updated 2/7/2023	\N	1	2	10	9	5	2	9	t	t
15	opsapi1.access-ci.org	3.19.165.63	t	t	PRIMARY	OS last updated 2024-06-19	\N	1	2	2	1	10	2	1	t	f
8			t	t	PRIMARY		\N	2	1	8	7	4	3	7	t	f
18	software.operations.access-ci.org	3.17.194.2	t	t	PRIMARY	OS last updated 2024-06-19	\N	3	2	2	1	13	3	1	t	f
13	tickets.access-ci.org	129.79.43.153	t	t	PRIMARY		\N	1	12	10	11	8	2	11	t	f
19	software2.dyn.xsede.org	18.218.220.126	t	t	DEVELOPMENT	Intentionally down	\N	3	2	2	1	13	3	1	t	f
34	omnisoc-kafka3.access-ci.org	3.16.119.98	f	f	Tertiary		\N	1	2	13	12	21	3	12	f	f
1	service-index.operations.access-ci.org	3.134.18.35	t	t	PRIMARY	OS last updated 2024-06-19	\N	1	2	2	1	1	2	1	t	f
28	omnisoc-logstash1.access-ci.org	3.18.22.219	f	f	Primary		\N	1	2	13	12	18	2	12	f	f
69	search-pilot.operations.access-ci.org	18.224.12.75	f	t	Primary	OS last updated 2024-06-19	\N	3	2	2	1	34	3	1	t	f
29	metrics.access-ci.org	128.205.11.48	f	t	Primary		\N	2	4	15	14	19	3	14	f	f
30	xdmod.access-ci.org	128.205.11.48	f	t	Primary		\N	2	4	15	14	20	3	14	f	f
26	opspub.access-ci.org	13.59.89.167	t	t	PRIMARY	OS last updated 2024-01-10	\N	1	2	2	1	16	2	2	t	f
23	info4.dyn.xsede.org	3.17.101.99	t	t	INFO4	OS last updated 2024-06-19	\N	1	2	2	1	15	2	2	t	f
3	tg-kdc0.security.ncsa.illinois.edu	141.142.148.22	t	t	PRIMARY		2022-11-18	1	11	5	4	2	1	3	f	t
4	tg-kdc1.security.ncsa.illinois.edu	141.142.236.28	t	t	REPLICA		2022-11-18	1	11	3	4	2	1	5	f	t
27	opspub-alt.access-ci.org	3.135.143.225	t	t	ALTERNATE	OS last updated 2024-01-10	\N	1	2	2	1	16	2	2	t	f
100	idp.access-ci.org		f	f	primary		2024-05-01	1	2	6	34	67	3	34	f	f
17	awsadmin.xsede.org	18.224.128.157	t	t	PRIMARY	OS last updated 2024-06-19	\N	1	2	2	1	12	2	1	t	f
14	usage.operations.access-ci.org	149.165.154.96	t	t	PRIMARY	OS last updated 2024-06-19	\N	2	12	2	1	9	3	1	t	f
7		18.220.209.177	t	t	PRIMARY	OS last updated 2024-06-19	\N	1	2	2	1	3	2	1	t	f
20	operation2.access-ci.org	18.218.41.164	t	t	DEVELOPMENT	OS last updated 2024-06-19	\N	3	2	2	1	3	3	1	t	f
24	info5.dyn.xsede.org	18.217.79.68	t	t	INFO5	OS last updated 2024-06-19	\N	1	2	2	1	15	2	2	t	f
\.


--
-- Data for Name: hosteventlog; Type: TABLE DATA; Schema: serviceindex; Owner: serviceindex_django
--

COPY serviceindex.hosteventlog (id, "timestamp", username, note, status, event_id, host_id) FROM stdin;
\.


--
-- Data for Name: hosteventstatus; Type: TABLE DATA; Schema: serviceindex; Owner: serviceindex_django
--

COPY serviceindex.hosteventstatus (id, status, event_id, host_id) FROM stdin;
6	unchecked	3	3
7	unchecked	3	4
8	unchecked	3	5
9	unchecked	3	7
10	unchecked	3	8
11	unchecked	3	9
12	unchecked	3	10
13	unchecked	3	11
14	unchecked	3	12
15	unchecked	3	13
16	unchecked	3	14
17	unchecked	3	15
18	unchecked	3	16
19	unchecked	3	17
20	unchecked	3	18
21	unchecked	3	19
22	unchecked	3	1
23	unchecked	3	20
24	unchecked	3	22
25	unchecked	3	23
26	unchecked	3	24
28	unchecked	3	26
29	unchecked	3	27
\.


--
-- Data for Name: link; Type: TABLE DATA; Schema: serviceindex; Owner: serviceindex_django
--

COPY serviceindex.link (id, url, description, service_id) FROM stdin;
1	https://service-index.operations.access-ci.org/	Primary web interface	1
3	https://operations.access-ci.org/	Primary web interface	3
4	https://cider.access-ci.org/	Primary web interface	4
6	https://tickets.access-ci.org/	Primary web interface	8
8	https://operations-api.access-ci.org/	Primary public API	10
10	https://info.xsede.org/	Primary web interface	15
12	https://readthedocs.access-ci.org/	Primary web interface	17
13	http://siem.osoc.grnoc.iu.edu/	Kibana GUI for security team (not setup yet)	18
14	https://metrics.access-ci.org/	Primary web interface	19
15	https://xdmod.access-ci.org/	Primary public website	20
16	http://siem.osoc.grnoc.iu.edu/	Kibana GUI for security team (not setup yet)	21
67	https://idp.access-ci.org/idp/	Primary IdP service	67
9	https://software.operations.access-ci.org/	Primary user interface	13
69	https://www.cilogon.org/	Documentation site	69
7	https://usage.operations.access-ci.org:3000/	Grafana user interface	9
68	https://registry.access-ci.org/	ACCESS COmanage Registry user management system	68
11	https://opspub.access-ci.org:15671	Primary web interface	16
34	https://search-pilot.operations.access-ci.org/	Primary web interface	34
5	https://monitor.access-ci.org/	Primary web interface	7
\.


--
-- Data for Name: logentry; Type: TABLE DATA; Schema: serviceindex; Owner: serviceindex_django
--

COPY serviceindex.logentry (id, "timestamp", username, msg, service_id, event_id, host_id, staff_id) FROM stdin;
1	2022-10-29 11:28:10.516095+00	navarro	navarro added new 'Operations Service Index' service	1	\N	\N	\N
2	2022-10-29 11:28:10.52951+00	navarro	navarro added new 'Primary' host to 'Operations Service Index' service	1	\N	\N	\N
3	2022-11-10 11:33:51.644541+00	navarro	navarro updated 'Operations Service Index' service	1	\N	\N	\N
4	2022-11-18 20:34:18.377178+00	cclausen	cclausen added 'Kerberos' service	2	\N	\N	\N
5	2022-11-18 21:07:29.75291+00	eblau	eblau updated 'Operations Service Index' service	1	\N	\N	\N
6	2022-11-18 21:08:01.618962+00	eblau	eblau updated 'Operations Service Index' service	1	\N	\N	\N
7	2022-12-03 14:31:34.574499+00	navarro	navarro added 'Operations Portal' service	3	\N	\N	\N
8	2022-12-07 22:15:21.775714+00	navarro	navarro updated 'Operations Portal' service	3	\N	\N	\N
9	2022-12-07 22:18:00.640508+00	navarro	navarro updated 'Operations Service Index' service	1	\N	\N	\N
10	2022-12-07 22:27:35.733893+00	navarro	navarro added 'CyberInfrastruture Description Repository - CiDeR' service	4	\N	\N	\N
11	2022-12-07 22:29:31.053551+00	navarro	navarro updated 'CiDeR' service	4	\N	\N	\N
12	2022-12-07 22:30:34.200841+00	navarro	navarro updated 'CyberInfrastruture Description Repository - CiDeR' service	4	\N	\N	\N
13	2022-12-07 22:36:14.156896+00	navarro	navarro added 'Central Logging Service - SysLog' service	5	\N	\N	\N
14	2022-12-07 22:40:21.836738+00	navarro	navarro added 'Login Bastions' service	6	\N	\N	\N
15	2022-12-07 22:43:50.87061+00	navarro	navarro added 'Monitoring Service - Nagios' service	7	\N	\N	\N
16	2022-12-07 22:47:08.106605+00	navarro	navarro added 'Ticket Service - RT' service	8	\N	\N	\N
17	2022-12-07 23:05:53.598195+00	navarro	navarro updated 'Ticket System - RT' service	8	\N	\N	\N
18	2022-12-07 23:08:58.125175+00	navarro	navarro added 'Usage Tracking Service' service	9	\N	\N	\N
19	2022-12-07 23:09:30.701216+00	navarro	navarro updated 'Administrator Login Bastions' service	6	\N	\N	\N
20	2022-12-07 23:12:02.509154+00	navarro	navarro added 'Operations API' service	10	\N	\N	\N
21	2022-12-07 23:19:15.568236+00	navarro	navarro added 'Operations Information Router' service	11	\N	\N	\N
22	2022-12-07 23:21:05.16467+00	navarro	navarro added 'XSEDE Login Bastion' service	12	\N	\N	\N
23	2022-12-07 23:21:39.7966+00	navarro	navarro updated 'Legacy Administrator Login Bastion from XSEDE' service	12	\N	\N	\N
24	2022-12-07 23:24:36.759819+00	navarro	navarro added 'Research Software Portal' service	13	\N	\N	\N
25	2022-12-07 23:25:17.708226+00	navarro	navarro updated 'XSEDE Administrator Login Bastion' service	12	\N	\N	\N
26	2022-12-07 23:34:24.676331+00	navarro	navarro added 'XSEDE Information Router' service	14	\N	\N	\N
27	2022-12-07 23:40:51.903857+00	navarro	navarro added 'XSEDE Information Services' service	15	\N	\N	\N
28	2022-12-08 15:19:40.768204+00	navarro	navarro updated 'XSEDE Information Services API' service	15	\N	\N	\N
29	2022-12-08 15:19:56.995702+00	navarro	navarro updated 'XSEDE Information Services Router' service	14	\N	\N	\N
30	2022-12-08 15:27:01.628221+00	navarro	navarro added 'Operations RabbitMQ' service	16	\N	\N	\N
31	2022-12-08 15:56:05.945189+00	navarro	navarro updated 'Central SysLog Service' service	5	\N	\N	\N
32	2022-12-08 15:56:29.206673+00	navarro	navarro updated 'SysAdmin Login Bastions' service	6	\N	\N	\N
33	2022-12-08 15:56:51.380541+00	navarro	navarro updated 'XSEDE SysAdmin Login Bastion' service	12	\N	\N	\N
34	2022-12-08 15:57:27.704486+00	navarro	navarro updated 'Central Nagios Monitoring Service' service	7	\N	\N	\N
35	2022-12-08 15:57:41.268308+00	navarro	navarro updated 'Central SysLog Logging Service' service	5	\N	\N	\N
36	2022-12-08 15:57:59.857441+00	navarro	navarro updated 'Operations Nagios Monitoring Service' service	7	\N	\N	\N
37	2022-12-08 15:58:15.528525+00	navarro	navarro updated 'Operations SysLog Logging Service' service	5	\N	\N	\N
38	2022-12-08 15:59:07.113667+00	navarro	navarro updated 'Information Sharing Router' service	11	\N	\N	\N
39	2022-12-08 15:59:41.510757+00	navarro	navarro updated 'Information Sharing RabbitMQ' service	16	\N	\N	\N
40	2022-12-08 16:00:13.093858+00	navarro	navarro updated 'Nagios Monitoring Service' service	7	\N	\N	\N
41	2022-12-08 16:00:25.204723+00	navarro	navarro updated 'SysLog Logging Service' service	5	\N	\N	\N
42	2022-12-08 16:00:50.220302+00	navarro	navarro updated 'Service Index' service	1	\N	\N	\N
43	2022-12-08 17:11:42.694124+00	navarro	navarro updated 'SysLog Logging Service' service	5	\N	\N	\N
44	2022-12-08 17:11:57.819103+00	navarro	navarro updated 'Usage Tracking Service' service	9	\N	\N	\N
45	2022-12-26 14:35:58.118142+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
46	2023-01-04 17:21:05.910177+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
47	2023-01-04 17:29:12.540445+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
48	2023-01-04 17:33:33.016621+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
49	2023-01-04 21:53:10.601924+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
50	2023-01-09 14:59:42.128934+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
51	2023-01-12 12:33:21.990846+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
52	2023-01-25 15:52:51.481645+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
53	2023-01-25 15:54:40.685398+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
54	2023-01-25 16:25:54.057769+00	wellsaar	login from 73.146.245.90	\N	\N	\N	\N
55	2023-01-25 16:27:03.313641+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
56	2023-01-25 16:27:28.957591+00	stebird	login from 73.103.166.169	\N	\N	\N	\N
57	2023-01-26 17:35:20.886191+00	jbasney	login from 192.80.104.210	\N	\N	\N	\N
58	2023-01-26 17:35:23.409124+00	awithers	login from 192.80.101.167	\N	\N	\N	\N
59	2023-01-26 17:35:23.829752+00	dsimmel	login from 128.182.168.115	\N	\N	\N	\N
60	2023-01-26 17:35:34.173957+00	tfleury	login from 73.210.154.40	\N	\N	\N	\N
61	2023-01-26 17:36:20.52656+00	cclausen	login from 192.80.100.186	\N	\N	\N	\N
62	2023-01-26 17:38:01.24628+00	filus	login from 72.77.45.83	\N	\N	\N	\N
63	2023-01-31 15:40:46.015372+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
64	2023-01-31 15:43:52.543289+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
65	2023-01-31 15:48:54.204032+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
66	2023-02-03 13:16:24.598252+00	navarro	login from 130.202.232.225	\N	\N	\N	\N
67	2023-02-03 13:19:28.042099+00	navarro	login from 208.86.161.195	\N	\N	\N	\N
68	2023-02-07 22:38:03.202896+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
69	2023-02-07 22:39:41.837283+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
70	2023-02-08 14:05:33.581607+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
71	2023-02-08 18:38:30.433921+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
72	2023-02-17 21:56:43.631294+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
73	2023-02-19 14:24:47.383799+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
74	2023-02-20 14:48:19.322918+00	wellsaar	login from 73.146.245.90	\N	\N	\N	\N
75	2023-02-22 13:59:55.572006+00	stebird	login from 73.103.166.169	\N	\N	\N	\N
76	2023-02-22 16:53:49.542325+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
77	2023-03-10 19:35:53.933394+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
78	2023-03-15 17:48:34.565526+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
79	2023-03-15 17:51:04.843281+00	navarro	added new	17	\N	\N	\N
80	2023-03-15 21:08:52.602765+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
539	2024-05-01 18:10:07.697274+00	tfleury	updated	69	\N	\N	\N
81	2023-03-21 20:49:10.139633+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
82	2023-03-21 23:16:35.369768+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
83	2023-03-22 16:46:15.228557+00	stebird	login from 73.103.166.169	\N	\N	\N	\N
84	2023-03-23 10:52:11.481104+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
85	2023-03-27 15:39:29.477511+00	stebird	login from 73.103.166.169	\N	\N	\N	\N
86	2023-03-27 19:56:17.978032+00	stebird	login from 73.103.166.169	\N	\N	\N	\N
87	2023-03-30 19:58:50.422002+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
88	2023-03-30 20:11:36.9388+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
89	2023-03-31 19:37:33.945189+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
90	2023-04-03 13:15:33.317739+00	cclausen	login from 192.80.100.186	\N	\N	\N	\N
91	2023-04-03 17:07:22.184553+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
92	2023-04-04 18:08:04.011909+00	stebird	login from 129.79.197.114	\N	\N	\N	\N
93	2023-04-12 20:32:28.131496+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
94	2023-04-17 02:32:14.470174+00	dsimmel	login from 72.95.245.131	\N	\N	\N	\N
95	2023-04-17 19:57:56.481469+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
96	2023-04-17 19:59:52.106112+00	navarro	updated	7	\N	12	\N
97	2023-05-10 23:41:47.98285+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
98	2023-05-17 15:25:53.140049+00	stebird	login from 129.79.197.227	\N	\N	\N	\N
99	2023-05-18 14:50:12.318391+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
100	2023-05-18 14:50:35.929424+00	navarro	updated	4	\N	\N	\N
101	2023-05-18 16:39:36.222596+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
102	2023-06-05 19:48:41.832521+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
103	2023-06-12 20:05:57.446536+00	dsimmel	login from 72.95.245.131	\N	\N	\N	\N
104	2023-06-14 14:40:41.028497+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
105	2023-06-20 17:39:26.756406+00	dsimmel	login from 147.73.193.18	\N	\N	\N	\N
106	2023-06-23 16:58:33.965528+00	jgallion	login from 130.126.255.218	\N	\N	\N	\N
107	2023-06-26 13:59:38.430273+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
108	2023-06-26 18:10:39.122361+00	cclausen	login from 192.80.100.186	\N	\N	\N	\N
109	2023-06-29 19:30:43.318154+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
110	2023-07-03 19:04:18.355545+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
111	2023-07-06 18:04:57.231+00	dsimmel	login from 72.95.245.131	\N	\N	\N	\N
112	2023-07-12 14:41:05.583893+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
113	2023-07-12 18:05:32.274253+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
114	2023-07-12 18:06:15.178912+00	navarro	updated	1	\N	1	\N
115	2023-07-12 18:09:09.957045+00	navarro	updated	11	\N	16	\N
116	2023-07-12 18:14:48.735821+00	navarro	updated	13	\N	18	\N
117	2023-07-12 18:29:55.723889+00	navarro	updated	10	\N	15	\N
118	2023-07-12 21:48:01.741337+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
119	2023-07-21 15:50:44.47287+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
120	2023-08-02 19:54:33.539037+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
121	2023-08-04 17:56:20.611665+00	cclausen	login from 192.80.100.186	\N	\N	\N	\N
122	2023-08-04 17:56:33.517485+00	cclausen	login from 192.80.100.186	\N	\N	\N	\N
123	2023-08-16 19:01:13.123977+00	wellsaar	login from 104.28.104.208	\N	\N	\N	\N
124	2023-08-16 19:02:27.321761+00	wellsaar	login from 104.28.104.208	\N	\N	\N	\N
125	2023-08-23 21:07:38.117909+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
126	2023-08-23 21:37:50.627279+00	jnavarro	login from 209.122.131.132	\N	\N	\N	\N
127	2023-08-23 21:41:02.775379+00	jnavarro	login from 209.122.131.132	\N	\N	\N	\N
128	2023-08-23 21:43:38.636251+00	jnavarro	login from 209.122.131.132	\N	\N	\N	\N
129	2023-08-24 18:47:34.565026+00	bpolley	login from 140.182.106.203	\N	\N	\N	\N
130	2023-08-31 18:15:57.777713+00	jnavarro	login from 209.122.131.132	\N	\N	\N	\N
131	2023-09-05 20:44:08.02928+00	jgallion	login from 130.126.255.119	\N	\N	\N	\N
132	2023-09-06 14:41:55.498332+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
133	2023-09-11 16:27:06.02324+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
134	2023-09-18 19:25:10.705636+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
135	2023-09-18 19:41:45.066059+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
136	2023-09-20 19:52:47.035781+00	bpolley	login from 140.182.106.203	\N	\N	\N	\N
137	2023-09-20 20:25:08.772477+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
138	2023-09-21 16:41:29.83867+00	mlutz1	login from 140.182.106.208	\N	\N	\N	\N
139	2023-09-21 16:57:18.019065+00	kbarton	login from 140.182.106.195	\N	\N	\N	\N
140	2023-09-21 17:03:46.322333+00	rcarlsen	login from 140.182.106.200	\N	\N	\N	\N
141	2023-09-22 14:09:18.144814+00	mlutz1	login from 140.182.106.215	\N	\N	\N	\N
142	2023-09-25 18:47:46.356447+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
143	2023-10-03 16:46:15.1369+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
144	2023-10-04 16:08:21.548115+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
145	2023-10-12 18:13:24.310498+00	eblau	login from 98.222.121.95	\N	\N	\N	\N
146	2023-10-12 18:15:00.576803+00	eblau	updated	\N	\N	\N	2
147	2023-10-12 18:39:33.370876+00	eblau	login from 98.222.121.95	\N	\N	\N	\N
148	2023-10-12 19:01:02.889584+00	blau	login from 98.222.121.95	\N	\N	\N	\N
149	2023-10-12 19:15:56.699173+00	blau	login from 98.222.121.95	\N	\N	\N	\N
150	2023-10-12 19:16:10.361728+00	blau	login from 98.222.121.95	\N	\N	\N	\N
151	2023-10-12 19:27:47.285591+00	eblau	login from 98.222.121.95	\N	\N	\N	\N
152	2023-10-12 19:53:25.915263+00	mmoncy	login from 134.68.238.150	\N	\N	\N	\N
153	2023-10-12 19:54:55.796771+00	mmoncy	login from 134.68.238.150	\N	\N	\N	\N
154	2023-10-13 14:33:33.754008+00	jgallion	login from 192.80.111.187	\N	\N	\N	\N
155	2023-10-16 18:18:22.778227+00	mmoncy	login from 35.147.33.47	\N	\N	\N	\N
156	2023-10-16 19:50:04.944344+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
157	2023-10-18 14:49:42.116711+00	wellsaar	login from 104.28.103.209	\N	\N	\N	\N
158	2023-10-18 15:14:08.819508+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
159	2023-10-18 18:19:58.138199+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
160	2023-10-18 18:38:25.531016+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
161	2023-10-18 19:03:07.718381+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
162	2023-10-19 12:11:33.864026+00	navarro	added new	18	\N	\N	\N
163	2023-10-19 13:20:58.795217+00	navarro	added new	\N	\N	\N	12
164	2023-10-19 13:20:58.803537+00	navarro	added new	\N	\N	\N	13
165	2023-10-19 13:20:58.811958+00	navarro	added new	18	\N	28	\N
166	2023-10-19 13:21:24.409133+00	navarro	updated	18	\N	28	\N
167	2023-10-19 15:10:07.574014+00	navarro	added new	19	\N	\N	\N
168	2023-10-19 15:10:07.598692+00	navarro	added new	\N	\N	\N	14
169	2023-10-19 15:10:07.606525+00	navarro	added new	19	\N	29	\N
170	2023-10-19 15:11:35.781811+00	navarro	added new	\N	\N	\N	15
171	2023-10-19 15:11:35.789537+00	navarro	updated	19	\N	29	\N
172	2023-10-19 15:12:02.258047+00	navarro	updated	\N	\N	\N	15
173	2023-10-19 15:14:23.028678+00	navarro	added new	20	\N	\N	\N
174	2023-10-19 15:15:43.0563+00	navarro	added new	20	\N	30	\N
175	2023-10-19 15:36:01.158279+00	navarro	updated	18	\N	\N	\N
176	2023-10-19 15:40:39.906616+00	navarro	added new	21	\N	\N	\N
177	2023-10-19 15:40:39.933572+00	navarro	added new	21	\N	31	\N
178	2023-10-19 15:42:34.821673+00	navarro	updated	21	\N	\N	\N
179	2023-10-19 15:42:34.84671+00	navarro	added new	21	\N	32	\N
331	2024-03-14 21:35:34.688182+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
181	2023-10-19 15:42:46.361026+00	navarro	added new	21	\N	34	\N
332	2024-03-15 14:23:29.997903+00	bpolley	login from 140.182.106.194	\N	\N	\N	\N
364	2024-03-21 18:50:41.220299+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
397	2024-04-03 15:34:02.989594+00	wellsaar	updated	6	\N	10	\N
398	2024-04-03 15:34:03.034861+00	wellsaar	updated	6	\N	11	\N
400	2024-04-03 16:00:28.646772+00	stebird	updated	7	\N	12	\N
403	2024-04-03 16:13:28.995136+00	navarro	updated	10	\N	15	\N
405	2024-04-03 16:25:05.934633+00	navarro	updated	3	\N	7	\N
406	2024-04-03 16:25:05.951996+00	navarro	updated	3	\N	20	\N
430	2024-04-17 14:46:20.49865+00	dsimmel	login from 128.237.82.10	\N	\N	\N	\N
463	2024-04-22 13:28:51.114843+00	cclausen	login from 192.80.100.186	\N	\N	\N	\N
496	2024-04-30 14:51:15.493927+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
529	2024-05-01 15:20:32.535544+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
531	2024-05-01 16:37:44.953127+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
533	2024-05-01 16:50:15.987416+00	navarro	added new	68	\N	\N	\N
540	2024-05-02 19:11:54.681768+00	tfleury	added new	\N	\N	\N	67
541	2024-05-02 19:11:54.70954+00	tfleury	added new	69	\N	133	\N
562	2024-05-02 21:15:40.487905+00	tfleury	updated	68	\N	\N	\N
563	2024-05-02 21:15:40.545431+00	tfleury	added new	68	\N	166	\N
595	2024-05-14 16:13:28.791316+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
628	2024-05-23 14:15:27.523536+00	navarro	login from 24.206.174.219	\N	\N	\N	\N
661	2024-06-05 13:35:17.183694+00	navarro	login from 172.56.17.71	\N	\N	\N	\N
694	2024-06-12 21:13:22.3032+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
727	2024-06-14 15:38:19.118921+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
760	2024-06-17 20:36:22.35569+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
793	2024-06-19 19:08:20.922287+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
826	2024-06-19 21:42:12.057349+00	navarro	updated	1	\N	1	\N
829	2024-06-19 21:59:27.265692+00	navarro	updated	11	\N	16	\N
832	2024-06-19 22:05:58.2666+00	navarro	updated	9	\N	14	\N
833	2024-06-19 22:08:36.035846+00	navarro	updated	13	\N	18	\N
836	2024-06-19 22:16:12.771405+00	navarro	updated	12	\N	17	\N
837	2024-06-19 22:24:41.60599+00	navarro	updated	14	\N	22	\N
843	2024-06-20 19:51:43.234709+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
399	2024-04-03 15:59:57.938431+00	stebird	login from 68.60.226.171	\N	\N	\N	\N
183	2023-10-25 21:36:08.089464+00	jgallion	login from 141.142.146.197	\N	\N	\N	\N
184	2023-10-25 21:39:53.596978+00	filus	login from 198.128.201.6	\N	\N	\N	\N
185	2023-10-25 21:43:51.905188+00	mmoncy	login from 16.98.92.25	\N	\N	\N	\N
186	2023-10-29 12:09:33.100837+00	navarro	updated	11	\N	16	\N
187	2023-10-30 15:30:09.128028+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
188	2023-10-31 19:22:47.896654+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
189	2023-10-31 19:23:27.021462+00	jgallion	updated	2	\N	3	\N
190	2023-10-31 19:23:27.040642+00	jgallion	updated	2	\N	4	\N
191	2023-11-02 18:36:53.292631+00	mlutz1	login from 140.182.106.197	\N	\N	\N	\N
192	2023-11-03 14:57:18.2584+00	navarro	updated	13	\N	\N	\N
193	2023-11-03 14:57:18.306352+00	navarro	updated	13	\N	18	\N
194	2023-11-03 14:58:09.013367+00	navarro	updated	19	\N	\N	\N
195	2023-11-03 18:12:06.483534+00	navarro	updated	9	\N	\N	\N
196	2023-11-03 18:13:28.355696+00	navarro	updated	9	\N	\N	\N
197	2023-11-03 18:13:28.392739+00	navarro	updated	9	\N	14	\N
198	2023-11-03 18:25:02.017707+00	navarro	updated	9	\N	\N	\N
199	2023-11-03 18:25:02.044994+00	navarro	updated	9	\N	14	\N
200	2023-11-03 18:39:50.087402+00	navarro	updated	16	\N	\N	\N
201	2023-11-03 18:39:50.116686+00	navarro	updated	16	\N	26	\N
202	2023-11-03 18:39:50.134269+00	navarro	updated	16	\N	27	\N
203	2023-11-03 18:40:14.195746+00	navarro	updated	16	\N	27	\N
204	2023-11-07 14:09:14.489256+00	navarro	updated	9	\N	14	\N
205	2023-11-07 14:09:44.345142+00	navarro	updated	9	\N	14	\N
206	2023-11-07 14:13:50.072457+00	navarro	updated	9	\N	14	\N
207	2023-11-07 14:14:16.224218+00	navarro	updated	13	\N	18	\N
232	2023-11-13 21:34:52.170898+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
233	2023-12-07 19:55:54.432129+00	filus	login from 96.236.155.118	\N	\N	\N	\N
234	2023-12-11 21:09:11.5505+00	mmoncy	login from 49.36.26.177	\N	\N	\N	\N
235	2023-12-11 21:56:37.544533+00	mmoncy	login from 49.36.26.177	\N	\N	\N	\N
236	2023-12-13 16:30:15.497296+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
237	2023-12-13 16:32:19.167179+00	navarro	updated	10	\N	15	\N
238	2023-12-13 16:37:58.337968+00	wellsaar	login from 104.28.104.208	\N	\N	\N	\N
239	2023-12-13 22:50:32.666708+00	mmoncy	login from 49.36.26.177	\N	\N	\N	\N
240	2023-12-14 20:04:10.744229+00	mmoncy	login from 49.36.26.177	\N	\N	\N	\N
241	2023-12-18 18:58:30.23474+00	mmoncy	login from 49.36.26.177	\N	\N	\N	\N
242	2023-12-20 20:49:27.35031+00	mmoncy	login from 49.36.27.245	\N	\N	\N	\N
243	2024-01-08 16:13:57.466509+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
244	2024-01-10 16:36:57.441199+00	eblau	login from 98.222.121.95	\N	\N	\N	\N
245	2024-01-10 17:38:06.491016+00	navarro	updated	1	\N	1	\N
246	2024-01-10 17:42:01.127763+00	navarro	updated	11	\N	16	\N
247	2024-01-10 17:51:07.465445+00	navarro	updated	10	\N	15	\N
248	2024-01-10 17:52:13.910914+00	navarro	updated	9	\N	14	\N
249	2024-01-11 12:07:56.987599+00	navarro	updated	3	\N	7	\N
250	2024-01-11 12:07:57.006967+00	navarro	updated	3	\N	20	\N
251	2024-01-23 14:38:09.484162+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
252	2024-02-05 14:48:55.856852+00	stebird	login from 68.60.226.171	\N	\N	\N	\N
253	2024-02-07 15:48:51.196771+00	eblau	login from 98.222.121.95	\N	\N	\N	\N
254	2024-02-07 15:51:34.689486+00	eblau	login from 98.222.121.95	\N	\N	\N	\N
255	2024-02-07 15:52:02.872962+00	eblau	updated	16	\N	26	\N
256	2024-02-07 15:52:02.890458+00	eblau	updated	16	\N	27	\N
257	2024-02-07 15:57:30.137191+00	stebird	login from 68.60.226.171	\N	\N	\N	\N
258	2024-02-07 16:52:04.374702+00	wellsaar	login from 104.28.104.206	\N	\N	\N	\N
259	2024-02-07 16:52:31.83628+00	wellsaar	updated	6	\N	10	\N
260	2024-02-07 16:52:31.853731+00	wellsaar	updated	6	\N	11	\N
261	2024-02-07 16:54:12.645639+00	wellsaar	updated	5	\N	9	\N
262	2024-02-07 16:55:19.571414+00	wellsaar	added new	5	\N	68	\N
263	2024-02-07 16:55:51.420625+00	stebird	updated	7	\N	12	\N
264	2024-02-07 16:56:14.980037+00	stebird	updated	7	\N	12	\N
265	2024-02-07 17:55:01.984725+00	navarro	added new	34	\N	\N	\N
266	2024-02-07 17:56:26.275983+00	navarro	added new	34	\N	69	\N
267	2024-02-09 19:43:42.311356+00	stebird	updated	7	\N	\N	\N
298	2024-02-15 17:16:20.587483+00	jgallion	login from 140.177.159.226	\N	\N	\N	\N
401	2024-04-03 16:01:14.157342+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
402	2024-04-03 16:12:07.716678+00	navarro	updated	11	\N	16	\N
404	2024-04-03 16:23:00.778004+00	navarro	updated	9	\N	14	\N
407	2024-04-03 16:27:32.105196+00	navarro	updated	1	\N	1	\N
530	2024-05-01 15:44:36.950577+00	wellsaar	login from 104.28.104.206	\N	\N	\N	\N
532	2024-05-01 16:48:50.480089+00	navarro	added new	67	\N	\N	\N
534	2024-05-01 16:53:04.570162+00	navarro	updated	68	\N	\N	\N
535	2024-05-01 16:56:44.130795+00	navarro	added new	69	\N	\N	\N
536	2024-05-01 18:06:32.060423+00	tfleury	updated	67	\N	\N	\N
537	2024-05-01 18:06:32.094418+00	tfleury	added new	\N	\N	\N	34
538	2024-05-01 18:06:32.126278+00	tfleury	added new	67	\N	100	\N
542	2024-05-02 19:16:06.590754+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
662	2024-06-06 16:04:34.175445+00	stebird	updated	7	\N	12	\N
794	2024-06-19 20:06:06.675839+00	navarro	updated	13	\N	18	\N
827	2024-06-19 21:46:22.387942+00	navarro	updated	3	\N	7	\N
828	2024-06-19 21:46:22.406666+00	navarro	updated	3	\N	20	\N
830	2024-06-19 22:01:05.167527+00	navarro	updated	10	\N	15	\N
831	2024-06-19 22:03:30.872788+00	navarro	updated	34	\N	69	\N
834	2024-06-19 22:10:01.652618+00	navarro	updated	13	\N	18	\N
835	2024-06-19 22:10:01.675127+00	navarro	updated	13	\N	19	\N
838	2024-06-20 00:01:55.525115+00	navarro	updated	15	\N	23	\N
839	2024-06-20 00:01:55.542193+00	navarro	updated	15	\N	24	\N
842	2024-06-20 13:12:59.023178+00	navarro	login from 209.122.131.132	\N	\N	\N	\N
\.