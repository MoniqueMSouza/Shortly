--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)

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
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    token text NOT NULL,
    active boolean DEFAULT true NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: shortens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shortens (
    id integer NOT NULL,
    url text NOT NULL,
    "shortUrl" text NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: shortens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shortens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shortens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shortens_id_seq OWNED BY public.shortens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
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
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: shortens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shortens ALTER COLUMN id SET DEFAULT nextval('public.shortens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES (1, '2a2360de-20c5-49ba-83e9-7c00447f8767', true, 6, '2023-03-20 06:36:57.290045');
INSERT INTO public.sessions VALUES (2, '9dc5b62f-8c85-4644-94b7-e73a3e528dcc', true, 6, '2023-03-20 06:42:15.690631');
INSERT INTO public.sessions VALUES (3, 'a3500d69-7575-4115-b5b2-da86664b15bf', true, 6, '2023-03-20 06:42:17.215106');
INSERT INTO public.sessions VALUES (4, '5de5c687-ceae-4996-81a4-33dd31a3445c', true, 6, '2023-03-20 06:43:05.038152');
INSERT INTO public.sessions VALUES (5, '4376a540-a79e-4ff2-9d1c-ee31b36ba55d', true, 6, '2023-03-20 06:43:05.974601');
INSERT INTO public.sessions VALUES (6, 'ede22971-7f83-4522-8923-4d0f4601483a', true, 7, '2023-03-20 06:44:02.396194');
INSERT INTO public.sessions VALUES (7, 'f7d2c86f-7582-4e91-b1b0-5af043178274', true, 7, '2023-03-20 10:02:35.409874');
INSERT INTO public.sessions VALUES (8, 'b596d4a9-b160-4017-8fb9-b77ca12ead2d', true, 8, '2023-03-20 10:02:45.326523');
INSERT INTO public.sessions VALUES (9, '55adda63-3fb3-4cc3-9916-59fd6aa9c1b7', true, 8, '2023-03-20 10:02:48.588754');
INSERT INTO public.sessions VALUES (10, '6d1394e8-ea1d-404c-9472-79739922318c', true, 8, '2023-03-20 10:02:49.879216');
INSERT INTO public.sessions VALUES (11, '43288a63-d819-4bca-aa7e-7614b1ce6b66', true, 8, '2023-03-20 10:02:50.475094');
INSERT INTO public.sessions VALUES (12, '10fa1101-9519-4f80-8232-12e1aa7f0491', true, 8, '2023-03-20 11:27:54.537082');
INSERT INTO public.sessions VALUES (13, '0bb654f1-f70d-4b89-a596-5b970f2bc0cf', true, 8, '2023-03-20 11:46:00.989852');
INSERT INTO public.sessions VALUES (14, 'e12c159d-01d8-461a-a226-1d428d9161ff', true, 8, '2023-03-20 11:48:15.43679');
INSERT INTO public.sessions VALUES (15, '8ef84a24-95ea-40c4-a0e3-509a930e028d', true, 8, '2023-03-20 11:50:01.164716');
INSERT INTO public.sessions VALUES (16, 'edd08134-7cf2-4d75-baf1-a99cfb70093e', true, 8, '2023-03-20 11:52:35.50069');
INSERT INTO public.sessions VALUES (17, '067c2d7e-95c2-45a5-8eda-add9a2c91216', true, 8, '2023-03-20 14:44:26.169461');
INSERT INTO public.sessions VALUES (18, 'c4dd0996-fbac-4026-a124-62bf8f2c49be', true, 8, '2023-03-20 14:44:27.446506');
INSERT INTO public.sessions VALUES (19, 'e34073f6-dbf6-48ad-8eba-89c3cfdcf817', true, 8, '2023-03-20 14:44:28.259882');


--
-- Data for Name: shortens; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (5, 'monique@gmail.com', '$2b$10$XtEIiYE/pKVR5zsh7L5Vveej.xF7fFN7ZVTWdgUAQwxI//YSdrrBe', 'Igor', '2023-03-20 05:48:13.559469');
INSERT INTO public.users VALUES (6, 'mona@gmail.com', '$2b$10$pi9qQeEGl04n4n62Bbr5P.DAKJw7QmXffgjS7dE0fdchsadmiV0Qy', 'Mona', '2023-03-20 05:50:36.297838');
INSERT INTO public.users VALUES (7, 'junior@gmail.com', '$2b$10$D5Sr/bXoy8J2aV66thdmQuLKiEDStfizknvaGghu6kYJ8XtCX6oui', 'Ernane JR', '2023-03-20 06:43:46.434053');
INSERT INTO public.users VALUES (8, 'moniquesouza@gmail.com', '$2b$10$P1xZdDmOTWsm5ozA7pZLTOCPi6FGn0SPsdvQGwiQBvKlPP1pC5GUm', 'Monique Souza', '2023-03-20 10:00:51.384168');


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 19, true);


--
-- Name: shortens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shortens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: shortens shortens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shortens
    ADD CONSTRAINT shortens_pkey PRIMARY KEY (id);


--
-- Name: shortens shortens_shortUrl_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shortens
    ADD CONSTRAINT "shortens_shortUrl_key" UNIQUE ("shortUrl");


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: shortens shortens_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shortens
    ADD CONSTRAINT "shortens_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

