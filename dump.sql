--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

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
    "userId" integer NOT NULL,
    token text NOT NULL
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
-- Name: urls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.urls (
    id integer NOT NULL,
    "userId" integer,
    url text NOT NULL,
    "shortUrl" text NOT NULL,
    "visitCount" numeric
);


--
-- Name: urls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text,
    password text,
    email text
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
-- Name: urls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES (6, 4, 'svdebrgeberbererbebebr');
INSERT INTO public.sessions VALUES (8, 4, 'svdebrgeberbererbebebopr');
INSERT INTO public.sessions VALUES (9, 15, 'a542bfd1-62fb-477e-8569-badd5092a53c');
INSERT INTO public.sessions VALUES (10, 15, 'dfd31aec-cdc0-4652-8a88-32badbd7d82f');
INSERT INTO public.sessions VALUES (11, 15, '5de731fa-3787-401f-9580-4621a93d74ea');
INSERT INTO public.sessions VALUES (12, 17, 'f067b7f7-7d6a-400a-8edc-a6d8e0383d38');
INSERT INTO public.sessions VALUES (13, 17, '9cf2598c-fc0e-43d7-9a88-0a3ed5f2c62a');
INSERT INTO public.sessions VALUES (14, 18, '31e25576-ec9d-426d-b183-d9faac42cca6');
INSERT INTO public.sessions VALUES (15, 18, 'cde886ad-d01e-4514-95f6-6ec4b88b3f45');


--
-- Data for Name: urls; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.urls VALUES (16, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (17, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (18, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (19, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (20, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (21, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (22, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (23, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (24, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (25, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (26, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (27, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (28, 7, '_jELDRc-3gfx08pxqbIEI', 'teste', NULL);
INSERT INTO public.urls VALUES (29, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (30, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (31, 7, 'A6QcCsHD1UrDXVU2zEMcZ', 'teste', NULL);
INSERT INTO public.urls VALUES (32, 7, '1FhB3YxN5eeKHgBAlY8uv', 'teste', NULL);
INSERT INTO public.urls VALUES (33, 7, 'https://www.youtube.com/', 'teste', NULL);
INSERT INTO public.urls VALUES (34, 7, 'QggNNe9x2OCPYxZSBJeiv', 'teste', NULL);
INSERT INTO public.urls VALUES (35, 7, '2_7TLLdfpZrAlSt4rmyJl', '2_7TLLdfpZrAlSt4rmyJl', NULL);
INSERT INTO public.urls VALUES (36, 7, 'E0oBFmR6Y_JPnjH39y4Q8', 'E0oBFmR6Y_JPnjH39y4Q8', NULL);
INSERT INTO public.urls VALUES (37, 7, 'C6WiAQrNCwsh73jJh2T7P', 'C6WiAQrNCwsh73jJh2T7P', NULL);
INSERT INTO public.urls VALUES (38, 7, 'PYSmTJX4M_HK4pCcvQazc', 'PYSmTJX4M_HK4pCcvQazc', NULL);
INSERT INTO public.urls VALUES (39, 7, 'Ckf-02W23vXb6kygStwiw', 'Ckf-02W23vXb6kygStwiw', NULL);
INSERT INTO public.urls VALUES (41, 7, 't2QyjTeAq3TWDOtLq6Mfi', 't2QyjTeAq3TWDOtLq6Mfi', NULL);
INSERT INTO public.urls VALUES (42, 7, 'KszGajaRN16qL4qo5gOjD', 'KszGajaRN16qL4qo5gOjD', NULL);
INSERT INTO public.urls VALUES (43, 7, '6HdGELPdEBLlP_i0u_H26', '6HdGELPdEBLlP_i0u_H26', NULL);
INSERT INTO public.urls VALUES (44, 7, '84Uu6CnoHvMz9ej4T7DzH', '84Uu6CnoHvMz9ej4T7DzH', NULL);
INSERT INTO public.urls VALUES (45, 7, '3BmQpPx9y-6Sb3IQ6Oxna', '3BmQpPx9y-6Sb3IQ6Oxna', NULL);
INSERT INTO public.urls VALUES (46, 7, 'lbC6H5Fu9tq_I3cZMpz64', 'lbC6H5Fu9tq_I3cZMpz64', NULL);
INSERT INTO public.urls VALUES (47, 7, 'HZHs7V8xkCj5_N9M_baQw', 'HZHs7V8xkCj5_N9M_baQw', NULL);
INSERT INTO public.urls VALUES (48, 7, 'pF0o_suavN_S6pNby82JH', 'pF0o_suavN_S6pNby82JH', NULL);
INSERT INTO public.urls VALUES (49, 7, 'GQDYohtpLFBzljwCS190a', 'GQDYohtpLFBzljwCS190a', NULL);
INSERT INTO public.urls VALUES (51, 7, 'ffMfx--QnUBZVpg6t-M6m', 'ffMfx--QnUBZVpg6t-M6m', NULL);
INSERT INTO public.urls VALUES (77, 7, 'https://ge.globo.com/futebol/brasileirao-serie-c/ ', 'j-j7JF7zi4NFexx-q5feg', -154);
INSERT INTO public.urls VALUES (84, 7, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', 'fHT117-ImV2EWJIleJpRt', 0);
INSERT INTO public.urls VALUES (79, 7, 'https://ge.globo.com/futebol/brasileirao-serie-c/ ', 'MWpividzJ06V6ZiIUAKIq', 111111);
INSERT INTO public.urls VALUES (50, 7, 'jRbOBoWfxSNbqnuCDJz29', 'jRbOBoWfxSNbqnuCDJz29', 1111111);
INSERT INTO public.urls VALUES (73, 7, 'https://ge.globo.com/futebol/brasileirao-serie-c/ ', '6cwXUx_sb_82SRNdOAkZb', 2);
INSERT INTO public.urls VALUES (86, 18, 'https://www.notion.so/bootcampra/Projeto-Shortly-API-3ef2afe78c254d069f862c036efa6f04', 'ecnW8VgK6JhY6hnvZVJsW', 6);
INSERT INTO public.urls VALUES (40, 7, 'R1So3ODE6Gd_JEeWDwNDX', 'R1So3ODE6Gd_JEeWDwNDX', 1111);
INSERT INTO public.urls VALUES (52, 7, 'M8r6KrOO2xbB5jScOjpud', 'M8r6KrOO2xbB5jScOjpud', NULL);
INSERT INTO public.urls VALUES (53, 7, 'www.com.br', 'TESTE', NULL);
INSERT INTO public.urls VALUES (54, 7, 'https://ge.globo.com/futebol/brasileirao-serie-c/', 'TESTE', NULL);
INSERT INTO public.urls VALUES (55, 7, '0RGcDoi3j8Iu4tPPZj-Of', '0RGcDoi3j8Iu4tPPZj-Of', NULL);
INSERT INTO public.urls VALUES (56, 7, 'i6C50w9aNASvp0-L_Tqij', 'i6C50w9aNASvp0-L_Tqij', NULL);
INSERT INTO public.urls VALUES (57, 7, 'Y6olXhyjawVVprrNm8nBj', 'Y6olXhyjawVVprrNm8nBj', NULL);
INSERT INTO public.urls VALUES (58, 7, 'https://ge.globo.com/futebol/brasileirao-serie-c/', 'TESTE', NULL);
INSERT INTO public.urls VALUES (59, 7, 'sCNrmgIubXUUm7QtxP6GW', 'sCNrmgIubXUUm7QtxP6GW', NULL);
INSERT INTO public.urls VALUES (60, 7, 'i0f2c2z2nSKc8PV_eaot7', 'i0f2c2z2nSKc8PV_eaot7', NULL);
INSERT INTO public.urls VALUES (61, 7, 'gnCFhWN8UybfYEkaMoLZm', 'gnCFhWN8UybfYEkaMoLZm', NULL);
INSERT INTO public.urls VALUES (62, 7, 'Jk48BtGI19MsPOboRUOrY', 'Jk48BtGI19MsPOboRUOrY', NULL);
INSERT INTO public.urls VALUES (63, 7, 'RF1S_OqTsYLFjKUZUurAk', 'RF1S_OqTsYLFjKUZUurAk', NULL);
INSERT INTO public.urls VALUES (64, 7, 'bE1O76eNMfAvSkigYdpHl', 'bE1O76eNMfAvSkigYdpHl', NULL);
INSERT INTO public.urls VALUES (65, 7, 'nHtJM6fLYbef3jlrqxE2i', 'nHtJM6fLYbef3jlrqxE2i', NULL);
INSERT INTO public.urls VALUES (66, 7, 's7zLJRPnSPGllbmIhQQfX', 's7zLJRPnSPGllbmIhQQfX', NULL);
INSERT INTO public.urls VALUES (67, 7, '0CtzGX-7Ve9gZ7Y5Ef_og', '0CtzGX-7Ve9gZ7Y5Ef_og', NULL);
INSERT INTO public.urls VALUES (68, 7, 'nWbLzxcNyc2bpKWeF5-de', 'nWbLzxcNyc2bpKWeF5-de', NULL);
INSERT INTO public.urls VALUES (69, 7, 'FEBzu8W4dDIUcUeBr3ErL', 'FEBzu8W4dDIUcUeBr3ErL', NULL);
INSERT INTO public.urls VALUES (70, 7, 'UaVyx8z4TghOVOFdMF2kl', 'UaVyx8z4TghOVOFdMF2kl', NULL);
INSERT INTO public.urls VALUES (71, 7, 'https://ge.globo.com/futebol/brasileirao-serie-c/ ', 'LxdlA5hRFJGC801GUQONw', NULL);
INSERT INTO public.urls VALUES (72, 7, 'yY2wlqCeBpUaBTp5pyS66', 'yY2wlqCeBpUaBTp5pyS66', NULL);
INSERT INTO public.urls VALUES (74, 7, 'sMKMlnkVa--oCaiYbWu1l', 'sMKMlnkVa--oCaiYbWu1l', NULL);
INSERT INTO public.urls VALUES (76, 7, 'https://ge.globo.com/futebol/brasileirao-serie-c/ ', 'fRA70_Anw2ua_TbiJrxYp', 151);
INSERT INTO public.urls VALUES (75, 7, 'https://ge.globo.com/futebol/brasileirao-serie-c/ ', 'BBcQNsB81og2NjlYcRI_N', 2);
INSERT INTO public.urls VALUES (78, 7, 'https://ge.globo.com/futebol/brasileirao-serie-c/ ', 'NUoVPF0rrBvh10Z29Nedb', 11111115);
INSERT INTO public.urls VALUES (80, 7, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', 'MKy0T1XOWa5E-Q8iDsyTV', 3);
INSERT INTO public.urls VALUES (81, 7, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', '6viTuRA-mVu5seo33FVn_', 0);
INSERT INTO public.urls VALUES (82, 7, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', 'gHX4GXTaZvLcTkDLe3Yaf', 0);
INSERT INTO public.urls VALUES (83, 7, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', 'JswqixNQtxKJ3Okn-aQ8X', 0);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (4, 'vespa', 'TESTE', 'olamundo@.com');
INSERT INTO public.users VALUES (6, 'vespinha', 'TESTE', 'olamundo@.com');
INSERT INTO public.users VALUES (7, 'gege', '123456', 'olamundo@hotmail.com');
INSERT INTO public.users VALUES (8, 'gege', '123456', 'olamundo@hotmail.com');
INSERT INTO public.users VALUES (9, 'gaga', '123456', 'olamundo@hotmail.com');
INSERT INTO public.users VALUES (10, 'gaga', '123456', 'olamundo@hotmail.com');
INSERT INTO public.users VALUES (11, 'gaga', '123456', 'olamundo@hotmail.com');
INSERT INTO public.users VALUES (12, 'gaga', '123456', 'olamundo@hotmail.com');
INSERT INTO public.users VALUES (13, 'gaga', '123456', 'olamundoOi@hotmail.com');
INSERT INTO public.users VALUES (14, 'gaga', '$2b$10$eMx3JMf2xxIQrwsu8oFSY.LCRIwLHdD5cTW9N6aGIHeR0TZ3wCoLa', 'olamundoLouco@hotmail.com');
INSERT INTO public.users VALUES (15, 'gaga', '$2b$10$.6Um7RfuYbGMdCGJK79k8OyTbW6qhepoAx7qB3qtknFLIsR1ftU.O', 'gege@hotmail.com');
INSERT INTO public.users VALUES (16, 'gaga', '$2b$10$y1sfkX0naKO1kCTKRc5RNurhu57wYG4ZHQt9bqNW2tDWd1PRyHGZ6', 'gegege@hotmail.com');
INSERT INTO public.users VALUES (17, 'giovanne andrade', '$2b$10$PKo28FY8Hs6X.QzngEvZ8Owg96GRoGB75HWADUlp3G3J1DlyBJn5i', 'vespinha.com');
INSERT INTO public.users VALUES (18, 'João', '$2b$10$MMcd69UjMJWbjs1XY1ICN.oX5nTImsw/lskBe820Ahq8LJUjViVlW', 'teste2@driven.com.br');


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 15, true);


--
-- Name: urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.urls_id_seq', 86, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 18, true);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);


--
-- Name: urls urls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: urls urls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT "urls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

