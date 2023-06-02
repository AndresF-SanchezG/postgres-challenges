--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer
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
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_id integer
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
-- Name: ovnis; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ovnis (
    ovnis_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_light boolean
);


ALTER TABLE public.ovnis OWNER TO freecodecamp;

--
-- Name: ovnis_ovnis_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ovnis_ovnis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ovnis_ovnis_id_seq OWNER TO freecodecamp;

--
-- Name: ovnis_ovnis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ovnis_ovnis_id_seq OWNED BY public.ovnis.ovnis_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_from_hearth integer,
    age_in_millions_of_years integer,
    weight_planet numeric(4,1),
    description text,
    is_spherical boolean,
    has_life boolean,
    star_id integer
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
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: ovnis ovnis_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ovnis ALTER COLUMN ovnis_id SET DEFAULT nextval('public.ovnis_ovnis_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', NULL, 1000012, 100000012);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', NULL, 1000012, 100000012);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', NULL, 1000012, 100000012);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', NULL, 1000012, 100000012);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', NULL, 1000012, 100000012);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', NULL, 1000012, 100000012);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (2, 'Moon 2', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (3, 'Moon 3', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (4, 'Moon 4', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (5, 'Moon 5', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (6, 'Moon 6', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (7, 'Moon 7', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (8, 'Moon 8', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (9, 'Moon 9', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (10, 'Moon 10', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (11, 'Moon 11', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (12, 'Moon 12', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (13, 'Moon 13', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (14, 'Moon 14', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (15, 'Moon 15', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (16, 'Moon 16', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (17, 'Moon 17', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (18, 'Moon 18', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (19, 'Moon 19', NULL, 1000012, 100000012, NULL);
INSERT INTO public.moon VALUES (20, 'Moon 20', NULL, 1000012, 100000012, NULL);


--
-- Data for Name: ovnis; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ovnis VALUES (1, 'Ovni 1', NULL);
INSERT INTO public.ovnis VALUES (2, 'Ovni 2', NULL);
INSERT INTO public.ovnis VALUES (3, 'Ovni 3', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet 1', 100001, 10000001, 70.1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Planet 2', 100002, 10000002, 70.2, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Planet 3', 100003, 10000003, 70.3, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Planet 4', 100004, 10000004, 70.4, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Planet 5', 100005, 10000005, 70.5, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Planet 6', 100006, 10000006, 70.6, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Planet 7', 100007, 10000007, 70.7, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Planet 8', 100008, 10000008, 70.8, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Planet 9', 100009, 10000008, 70.9, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet 10', 1000010, 10000008, 70.1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet 11', 1000011, 10000008, 70.1, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet 12', 1000012, 100000012, 70.1, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Star 1', NULL, 1000012, 100000012, NULL);
INSERT INTO public.star VALUES (3, 'Star 2', NULL, 1000012, 100000012, NULL);
INSERT INTO public.star VALUES (4, 'Star 3', NULL, 1000012, 100000012, NULL);
INSERT INTO public.star VALUES (5, 'Star 4', NULL, 1000012, 100000012, NULL);
INSERT INTO public.star VALUES (6, 'Star 5', NULL, 1000012, 100000012, NULL);
INSERT INTO public.star VALUES (7, 'Star 6', NULL, 1000012, 100000012, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: ovnis_ovnis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ovnis_ovnis_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: ovnis ovnis_ovnis_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ovnis
    ADD CONSTRAINT ovnis_ovnis_id_key UNIQUE (ovnis_id);


--
-- Name: ovnis ovnis_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ovnis
    ADD CONSTRAINT ovnis_pkey PRIMARY KEY (ovnis_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--