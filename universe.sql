--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: authors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.authors (
    authors_id integer NOT NULL,
    name character varying(60) NOT NULL,
    male boolean
);


ALTER TABLE public.authors OWNER TO freecodecamp;

--
-- Name: authors_author_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.authors_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_author_id_seq OWNER TO freecodecamp;

--
-- Name: authors_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.authors_author_id_seq OWNED BY public.authors.authors_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    discoverer text,
    discover_year integer,
    alias_name text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL,
    revolution integer,
    gravity numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    revolution integer,
    life boolean,
    gravity numeric,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    main_components character varying(60),
    mass integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: authors authors_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.authors ALTER COLUMN authors_id SET DEFAULT nextval('public.authors_author_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.authors VALUES (1, 'Edbert', true);
INSERT INTO public.authors VALUES (2, 'Beti', true);
INSERT INTO public.authors VALUES (3, 'Boti', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Charles Messier', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Simon Marius', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Giovanni Battista Hodierna', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombreo', 'Pierre Méchain', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 'Edward Pigott', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Rose', 'Charles Messier', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Mimas,6),
', 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Narvis', 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Janus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Greip', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Pallene', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Fenrir', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Siarnaq', 6, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Mimas', 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Titania', 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Miranda', 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Cupid', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Ariel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Juliet', 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 365, true, 9.8, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 687, false, 3.72076, 1);
INSERT INTO public.planet VALUES (3, 'Merkurius', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturnus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptunus', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Makemake', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Eris', NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Mirach', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Almach', 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Alpheratz', 2, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Sirius', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Alpha Centauri', 1, NULL, NULL);


--
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (authors_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: authors unique_constraints; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT unique_constraints UNIQUE (name);


--
-- Name: star fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

