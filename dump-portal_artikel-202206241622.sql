--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-06-24 16:22:36

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 16414)
-- Name: komentar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.komentar (
    id integer NOT NULL,
    konten character varying,
    postingan_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.komentar OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16403)
-- Name: postingan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.postingan (
    id integer NOT NULL,
    judul character varying,
    waktu_dibuat date,
    konten text,
    lokasi character varying,
    user_id integer NOT NULL
);


ALTER TABLE public.postingan OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16402)
-- Name: postingan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.postingan ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.postingan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16419)
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile (
    id integer NOT NULL,
    no_telp character varying,
    tanggal_lahir date,
    tempat_lahir character varying,
    bio character varying,
    user_id character varying,
    saldo double precision,
    gender character varying
);


ALTER TABLE public.profile OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16409)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    nama character varying,
    email character varying NOT NULL,
    password character varying NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16397)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    nik character varying(255) NOT NULL,
    nama character varying(255),
    email character varying(255) NOT NULL,
    password character varying(48) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16396)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3325 (class 0 OID 16414)
-- Dependencies: 214
-- Data for Name: komentar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.komentar (id, konten, postingan_id, user_id) FROM stdin;
\.


--
-- TOC entry 3323 (class 0 OID 16403)
-- Dependencies: 212
-- Data for Name: postingan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.postingan (id, judul, waktu_dibuat, konten, lokasi, user_id) FROM stdin;
\.


--
-- TOC entry 3326 (class 0 OID 16419)
-- Dependencies: 215
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile (id, no_telp, tanggal_lahir, tempat_lahir, bio, user_id, saldo, gender) FROM stdin;
\.


--
-- TOC entry 3324 (class 0 OID 16409)
-- Dependencies: 213
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, nama, email, password) FROM stdin;
\.


--
-- TOC entry 3321 (class 0 OID 16397)
-- Dependencies: 210
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, nik, nama, email, password) FROM stdin;
\.


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 211
-- Name: postingan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.postingan_id_seq', 1, false);


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


-- Completed on 2022-06-24 16:22:38

--
-- PostgreSQL database dump complete
--

