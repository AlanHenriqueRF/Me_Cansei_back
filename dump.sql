--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

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
-- Name: shoes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shoes (
    id integer NOT NULL,
    color text NOT NULL,
    size text NOT NULL,
    price_cents integer,
    "jaVendido" boolean,
    url_shoes text NOT NULL,
    shoesname text NOT NULL,
    descricao text NOT NULL,
    marca text NOT NULL,
    "userId" integer,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: shoes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shoes_id_seq OWNED BY public.shoes.id;


--
-- Name: useronline; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.useronline (
    id integer NOT NULL,
    token text NOT NULL,
    "userId" integer,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: useronline_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.useronline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: useronline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.useronline_id_seq OWNED BY public.useronline.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    name text NOT NULL,
    cellnumber character varying(11),
    cpf character varying(11),
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
-- Name: shoes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shoes ALTER COLUMN id SET DEFAULT nextval('public.shoes_id_seq'::regclass);


--
-- Name: useronline id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.useronline ALTER COLUMN id SET DEFAULT nextval('public.useronline_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: shoes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.shoes VALUES (1, 'branco', '44', 4000, false, 'https://thegamecollective.com.br/cdn/shop/products/nike-dunk-low-unc-sneaker-the-game-906029.jpg?v=1678739393&width=1445', 'Nike dunk low "UNC"', 'Vendo tenis Nike dunk low unc,zerado usado apenas uma vez', 'Nike', 1, '2023-08-14 15:05:17.661988');
INSERT INTO public.shoes VALUES (3, 'amarelo', '47', 2000, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-L31-yDpSy827xLzhd8bGczBDy1djb9xNLcYNQ04M4dbSSu6Tfq6rSN-hZYpaFqbHxDk&usqp=CAU', 'nike adidas', 'Tênis lindo', 'nike', 3, '2023-08-14 16:57:02.027623');
INSERT INTO public.shoes VALUES (4, 'amarelo', '47', 2000, false, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-L31-yDpSy827xLzhd8bGczBDy1djb9xNLcYNQ04M4dbSSu6Tfq6rSN-hZYpaFqbHxDk&usqp=CAU', 'nike adidas', 'Tênis lindo', 'nike', 3, '2023-08-14 16:58:09.783864');
INSERT INTO public.shoes VALUES (5, 'as', '47', 2000, false, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-L31-yDpSy827xLzhd8bGczBDy1djb9xNLcYNQ04M4dbSSu6Tfq6rSN-hZYpaFqbHxDk&usqp=CAU', 'nike adidas', 'Tênis lindo', 'nike', 3, '2023-08-14 17:22:21.372289');
INSERT INTO public.shoes VALUES (6, 'azul', '44', 50000, false, 'https://cdn.awsli.com.br/2500x2500/1721/1721956/produto/194591074/whatsapp-image-2022-12-27-at-16.46.06-d8aff04f45.jpg', 'nike nike', 'bem bonito', 'nike', 4, '2023-08-14 17:24:13.419646');


--
-- Data for Name: useronline; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.useronline VALUES (1, '61f992eb-ecbf-4c31-8ad2-ce28e3ba3352', 3, '2023-08-14 16:39:56.970658');
INSERT INTO public.useronline VALUES (2, '13762ade-1794-453e-b752-f7aa5a14724f', 4, '2023-08-14 17:09:57.613642');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'alanalanzinh@o.com', '$2b$10$iexksDwzXLqEAJfHy632KuzVTMwSZCahqNfjr.MKtzrLSqWxRw6o.', 'sdsad', '61982824445', '03795899150', '2023-08-14 15:05:11.818889');
INSERT INTO public.users VALUES (3, 'alanhenran@alanHenEail.co', '$2b$10$Z/TATNpOQj3lstfVNkZVDeTWOeoigAvxT.oyLjJnSHajvGOjFSNyy', 'sdsad', '61982824445', '03795895150', '2023-08-14 16:39:44.565516');
INSERT INTO public.users VALUES (4, 'Alan@gmail.com', '$2b$10$yAbIyJKw7s.y0U9YbKDq8OtbRlKDB6.M49IDXd6DPqo4x5cEFDSFW', 'ALAN HENRIQUE RANGEL FERREIRA', '61999984444', '08009090050', '2023-08-14 17:09:55.736653');


--
-- Name: shoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shoes_id_seq', 6, true);


--
-- Name: useronline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.useronline_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: shoes shoes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shoes
    ADD CONSTRAINT shoes_pkey PRIMARY KEY (id);


--
-- Name: useronline useronline_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.useronline
    ADD CONSTRAINT useronline_pkey PRIMARY KEY (id);


--
-- Name: useronline useronline_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.useronline
    ADD CONSTRAINT useronline_token_key UNIQUE (token);


--
-- Name: users users_cpf_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_cpf_key UNIQUE (cpf);


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
-- Name: shoes shoes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shoes
    ADD CONSTRAINT "shoes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: useronline useronline_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.useronline
    ADD CONSTRAINT "useronline_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

