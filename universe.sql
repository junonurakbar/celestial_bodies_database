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
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying(50),
    distance_from_earth integer,
    has_life boolean NOT NULL
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric(9,1),
    planet_id integer,
    is_spherical boolean
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
    name character varying(50) NOT NULL,
    planet_types character varying(30),
    distance_from_earth numeric(9,1),
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
    name character varying(50) NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric(6,1),
    age_in_million_years numeric(9,1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_and_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_and_planet (
    star_id integer,
    star_name character varying(50),
    age_in_million_years numeric(9,1),
    planet_name character varying(50),
    planet_types character varying(30),
    has_life boolean
);


ALTER TABLE public.star_and_planet OWNER TO freecodecamp;

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
-- Name: teuing_naon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teuing_naon (
    teuing_naon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    apalah integer
);


ALTER TABLE public.teuing_naon OWNER TO freecodecamp;

--
-- Name: teuing_naon_teuing_naon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teuing_naon_teuing_naon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teuing_naon_teuing_naon_id_seq OWNER TO freecodecamp;

--
-- Name: teuing_naon_teuing_naon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teuing_naon_teuing_naon_id_seq OWNED BY public.teuing_naon.teuing_naon_id;


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
-- Name: teuing_naon teuing_naon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teuing_naon ALTER COLUMN teuing_naon_id SET DEFAULT nextval('public.teuing_naon_teuing_naon_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The appearance from Earth of the galaxy—a band of light', 'Spiral', 0, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, 'Spiral', 300, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area of the sky in which it appears, the constellation of Andromeda', 'Spiral', 200, false);
INSERT INTO public.galaxy VALUES (4, 'Comet', 'This galaxy is named after its unusual appearance, looking like a comet', 'Spiral', 320, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', NULL, 'Eliptical', 5500, false);
INSERT INTO public.galaxy VALUES (6, 'Whirpool', NULL, 'Spiral', 2300, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 0.4, 3, true);
INSERT INTO public.moon VALUES (4, 'Ganymede', 627.0, 5, true);
INSERT INTO public.moon VALUES (5, 'Callisto', 641.0, 5, true);
INSERT INTO public.moon VALUES (6, 'Io', 595.0, 5, true);
INSERT INTO public.moon VALUES (7, 'Europa', 667.0, 5, true);
INSERT INTO public.moon VALUES (14, 'Charon', 7500000.0, 9, true);
INSERT INTO public.moon VALUES (8, 'Titan', 1220000.0, 6, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 1270000.0, 6, true);
INSERT INTO public.moon VALUES (10, 'Mimas', 1260000.0, 6, true);
INSERT INTO public.moon VALUES (11, 'Dione', 1200000.0, 6, true);
INSERT INTO public.moon VALUES (12, 'Triton', 4300000.0, 8, true);
INSERT INTO public.moon VALUES (13, 'Nereid', 5800000.0, 8, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.0, 4, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.0, 4, false);
INSERT INTO public.moon VALUES (15, 'Hydra', 7500000.0, 9, false);
INSERT INTO public.moon VALUES (16, 'Miranda', 2640000.0, 7, false);
INSERT INTO public.moon VALUES (17, 'Ariel', 2850000.0, 7, false);
INSERT INTO public.moon VALUES (18, 'Umbriel', 2850000.0, 7, false);
INSERT INTO public.moon VALUES (19, 'Tethys', 1200000.0, 6, false);
INSERT INTO public.moon VALUES (20, 'Rhea', 1200000.0, 6, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestial', 77.0, false, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestial', 40.0, false, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestial', 0.0, true, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestial', 34.0, false, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 365.0, false, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 746.0, false, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 1600.0, false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 2700.0, false, 7);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Trans-Neptunian Object', 2600.0, false, 7);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Dwarf Planet', 154000.0, false, 7);
INSERT INTO public.planet VALUES (11, 'Europa', 'Moon Icy', 365.0, false, 7);
INSERT INTO public.planet VALUES (12, 'Titan', 'Moon Icy', 746.0, false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', true, 4.2, 4.0, 1);
INSERT INTO public.star VALUES (2, 'Alpha Lyrae', true, 25.0, 455.0, 1);
INSERT INTO public.star VALUES (3, 'Betelguese', true, 643.0, 8.5, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri Majoris', true, 8.6, 300.0, 1);
INSERT INTO public.star VALUES (5, 'Antares', true, 550.0, 12.0, 1);
INSERT INTO public.star VALUES (6, 'Aldebaran', false, 65.0, 6300.0, 1);
INSERT INTO public.star VALUES (7, 'Sun', true, 0.1, 4.6, 1);


--
-- Data for Name: star_and_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Mercury', 'Terrestial', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Venus', 'Terrestial', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Earth', 'Terrestial', true);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Mars', 'Terrestial', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Jupiter', 'Gas Giant', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Saturn', 'Gas Giant', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Uranus', 'Ice Giant', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Neptune', 'Ice Giant', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Pluto', 'Trans-Neptunian Object', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Ceres', 'Dwarf Planet', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Europa', 'Moon Icy', false);
INSERT INTO public.star_and_planet VALUES (7, 'Sun', 4.6, 'Titan', 'Moon Icy', false);
INSERT INTO public.star_and_planet VALUES (2, 'Alpha Lyrae', 455.0, NULL, NULL, NULL);
INSERT INTO public.star_and_planet VALUES (5, 'Antares', 12.0, NULL, NULL, NULL);
INSERT INTO public.star_and_planet VALUES (6, 'Aldebaran', 6300.0, NULL, NULL, NULL);
INSERT INTO public.star_and_planet VALUES (4, 'Alpha Centauri Majoris', 300.0, NULL, NULL, NULL);
INSERT INTO public.star_and_planet VALUES (1, 'Proxima Centauri', 4.0, NULL, NULL, NULL);
INSERT INTO public.star_and_planet VALUES (3, 'Betelguese', 8.5, NULL, NULL, NULL);


--
-- Data for Name: teuing_naon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teuing_naon VALUES (1, 'test1', 1);
INSERT INTO public.teuing_naon VALUES (2, 'test2', 2);
INSERT INTO public.teuing_naon VALUES (3, 'test3', 3);


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
-- Name: teuing_naon_teuing_naon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teuing_naon_teuing_naon_id_seq', 3, true);


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
-- Name: teuing_naon teuing_naon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teuing_naon
    ADD CONSTRAINT teuing_naon_name_key UNIQUE (name);


--
-- Name: teuing_naon teuing_naon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teuing_naon
    ADD CONSTRAINT teuing_naon_pkey PRIMARY KEY (teuing_naon_id);


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

