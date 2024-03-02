--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(20),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_lightyear numeric(4,1),
    has_life boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_key_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_key_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: milkyway; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.milkyway (
    id integer NOT NULL,
    milkyway_id integer NOT NULL,
    name character varying(4)
);


ALTER TABLE public.milkyway OWNER TO freecodecamp;

--
-- Name: milkyway_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.milkyway_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.milkyway_m_id_seq OWNER TO freecodecamp;

--
-- Name: milkyway_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.milkyway_m_id_seq OWNED BY public.milkyway.milkyway_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_lightyear numeric(4,1),
    has_life boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_key_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_key_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_lightyear numeric(4,1),
    has_life boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_key_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_key_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_lightyear numeric(4,1),
    has_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_key_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_key_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_key_seq OWNER TO freecodecamp;

--
-- Name: star_star_key_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_key_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_key_seq'::regclass);


--
-- Name: milkyway milkyway_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milkyway ALTER COLUMN milkyway_id SET DEFAULT nextval('public.milkyway_m_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_key_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_key_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_key_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g-1', 2000, NULL, NULL, 'bigggggggg1');
INSERT INTO public.galaxy VALUES (2, 'g-2', 2300, NULL, NULL, 'bigggggggg2');
INSERT INTO public.galaxy VALUES (3, 'g-3', 2200, NULL, NULL, 'bigggggggg3');
INSERT INTO public.galaxy VALUES (4, 'g-4', 2200, NULL, NULL, 'bigggggggg4');
INSERT INTO public.galaxy VALUES (5, 'g-5', 2200, NULL, NULL, 'bigggggggg5');
INSERT INTO public.galaxy VALUES (6, 'g-6', 2200, NULL, NULL, 'bigggggggg6');
INSERT INTO public.galaxy VALUES (7, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (22, NULL, 600, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (23, NULL, 600, NULL, NULL, NULL);


--
-- Data for Name: milkyway; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.milkyway VALUES (1, 1, 'a');
INSERT INTO public.milkyway VALUES (1, 2, 'b');
INSERT INTO public.milkyway VALUES (1, 3, 'c');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm-1', 3200, NULL, true, 'biggggg3', 2);
INSERT INTO public.moon VALUES (2, 'm-2', 3200, NULL, true, 'big2', 3);
INSERT INTO public.moon VALUES (3, 'm-3', 3200, NULL, true, 'big3', 4);
INSERT INTO public.moon VALUES (4, 'm-4', 3200, NULL, true, 'big4', 4);
INSERT INTO public.moon VALUES (5, 'm-4', 3200, NULL, true, 'big5', 4);
INSERT INTO public.moon VALUES (6, 'm-4', 3200, NULL, true, 'big6', 4);
INSERT INTO public.moon VALUES (7, 'm-4', 3200, NULL, true, 'big7', 4);
INSERT INTO public.moon VALUES (8, 'm-4', 3200, NULL, true, 'big8', 4);
INSERT INTO public.moon VALUES (9, 'm-4', 3200, NULL, true, 'big9', 4);
INSERT INTO public.moon VALUES (10, 'm-4', 3200, NULL, true, 'big10', 4);
INSERT INTO public.moon VALUES (11, 'm-4', 3200, NULL, true, 'big11', 4);
INSERT INTO public.moon VALUES (12, 'm-4', 3200, NULL, true, 'big12', 4);
INSERT INTO public.moon VALUES (13, 'm-4', 3200, NULL, true, 'big13', 4);
INSERT INTO public.moon VALUES (14, 'm-4', 3200, NULL, true, 'big14', 4);
INSERT INTO public.moon VALUES (15, 'm-4', 3200, NULL, true, 'big15', 4);
INSERT INTO public.moon VALUES (16, 'm-4', 3200, NULL, true, 'big16', 4);
INSERT INTO public.moon VALUES (17, 'm-4', 3200, NULL, true, 'big17', 4);
INSERT INTO public.moon VALUES (18, 'm-4', 3200, NULL, true, 'big18', 4);
INSERT INTO public.moon VALUES (19, 'm-4', 3200, NULL, true, 'big19', 4);
INSERT INTO public.moon VALUES (20, 'm-4', 3200, NULL, true, 'big20', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (14, NULL, 600, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (15, NULL, 600, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (16, NULL, 600, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (17, NULL, 600, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (18, NULL, 600, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (19, NULL, 600, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (2, 'p-1', 3200, NULL, NULL, 'bigggggg1', 4);
INSERT INTO public.planet VALUES (3, 'p-2', 3200, NULL, NULL, 'bigggggg2', 4);
INSERT INTO public.planet VALUES (4, 'p-3', 3200, NULL, NULL, 'bigggggg3', 4);
INSERT INTO public.planet VALUES (5, 'p-4', 3200, NULL, NULL, 'bigggggg4', 4);
INSERT INTO public.planet VALUES (6, 'p-4', 3200, NULL, NULL, 'bigggggg5', 4);
INSERT INTO public.planet VALUES (7, 'p-4', 3200, NULL, NULL, 'bigggggg6', 4);
INSERT INTO public.planet VALUES (8, 'p-4', 3200, NULL, NULL, 'bigggggg7', 4);
INSERT INTO public.planet VALUES (9, 'p-4', 3200, NULL, NULL, 'bigggggg8', 4);
INSERT INTO public.planet VALUES (10, 'p-4', 3200, NULL, NULL, 'bigggggg9', 4);
INSERT INTO public.planet VALUES (11, 'p-4', 3200, NULL, NULL, 'bigggggg10', 4);
INSERT INTO public.planet VALUES (12, 'p-4', 3200, NULL, NULL, 'bigggggg11', 4);
INSERT INTO public.planet VALUES (13, 'p-4', 3200, NULL, NULL, 'bigggggg12', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 's-1', 2200, NULL, NULL, 'biggggggg1', 1);
INSERT INTO public.star VALUES (3, 's-2', 2200, NULL, NULL, 'biggggggg2', 2);
INSERT INTO public.star VALUES (4, 's-3', 3200, NULL, NULL, 'biggggggg3', 3);
INSERT INTO public.star VALUES (5, 's-4', 2200, NULL, NULL, 'bigggggggg4', 4);
INSERT INTO public.star VALUES (6, 's-5', 2200, NULL, NULL, 'bigggggggg5', 5);
INSERT INTO public.star VALUES (7, 's-6', 2200, NULL, NULL, 'bigggggggg6', 6);
INSERT INTO public.star VALUES (8, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (9, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (10, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (11, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (12, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (13, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (14, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (15, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (16, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (17, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (18, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (19, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (20, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (21, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (22, NULL, 600, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (23, NULL, 600, NULL, NULL, NULL, 4);


--
-- Name: galaxy_galaxy_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_key_seq', 23, true);


--
-- Name: milkyway_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.milkyway_m_id_seq', 3, true);


--
-- Name: moon_moon_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_key_seq', 20, true);


--
-- Name: planet_planet_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_key_seq', 19, true);


--
-- Name: star_star_key_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_key_seq', 23, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: milkyway milkyway_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milkyway
    ADD CONSTRAINT milkyway_pkey PRIMARY KEY (milkyway_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: milkyway name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.milkyway
    ADD CONSTRAINT name UNIQUE (milkyway_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

