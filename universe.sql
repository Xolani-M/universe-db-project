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
    name character varying(30) NOT NULL,
    description text,
    galaxy_types character varying(30),
    is_spherical boolean
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
    moon_type character varying(30),
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer,
    planet_id integer,
    description text
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
    name character varying(30) NOT NULL,
    planet_types character varying(30),
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer,
    star_id integer,
    has_life boolean
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
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    name character varying(30) NOT NULL,
    space_station_type character varying(30),
    distance_from_earth numeric
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_space_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_space_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_space_station_id_seq OWNED BY public.space_station.space_station_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_type character varying(30),
    distance_from_earth integer NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    is_spherical boolean
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_station space_station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN space_station_id SET DEFAULT nextval('public.space_station_space_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our Solar System', 'Spiral', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'One of the closest galaxies to the Milky Way', 'Spiral', NULL);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'A supergiant elliptical galaxy in the Virgo cluster', 'Elliptical', NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'A spiral galaxy with a prominent dust lane', 'Spiral', NULL);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'A peculiar elliptical galaxy', 'Elliptical', NULL);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'A satellite dwarf galaxy of the Milky Way', 'Irregular', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Terrestrial', 0, 4425, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Terrestrial', 78, 4503, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Terrestrial', 78, 4503, 2, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 'Terrestrial', 628, 4503, 3, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 'Terrestrial', 628, 4503, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Terrestrial', 628, 4503, 3, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Terrestrial', 628, 4503, 3, NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', 'Terrestrial', 1277, 4503, 4, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Terrestrial', 1277, 4503, 4, NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 'Terrestrial', 1277, 4503, 4, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', 'Terrestrial', 1277, 4503, 4, NULL);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Terrestrial', 1277, 4503, 4, NULL);
INSERT INTO public.moon VALUES (13, 'Titan', 'Terrestrial', 1277, 4503, 4, NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'Terrestrial', 1277, 4503, 4, NULL);
INSERT INTO public.moon VALUES (15, 'Ariel', 'Terrestrial', 2723, 4503, 5, NULL);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Terrestrial', 2723, 4503, 5, NULL);
INSERT INTO public.moon VALUES (17, 'Titania', 'Terrestrial', 2723, 4503, 5, NULL);
INSERT INTO public.moon VALUES (18, 'Oberon', 'Terrestrial', 2723, 4503, 5, NULL);
INSERT INTO public.moon VALUES (19, 'Triton', 'Terrestrial', 4351, 4503, 6, NULL);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Terrestrial', 4351, 4503, 6, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 0, 4543, 1, true);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 78, 4603, 1, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas Giant', 628, 4603, 1, false);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Gas Giant', 1277, 4503, 1, false);
INSERT INTO public.planet VALUES (5, 'Uranus', 'Ice Giant', 2723, 4503, 1, false);
INSERT INTO public.planet VALUES (6, 'Neptune', 'Ice Giant', 4351, 4503, 1, false);
INSERT INTO public.planet VALUES (7, 'Proxima Centauri b', 'Terrestrial', 4, 4850, 3, false);
INSERT INTO public.planet VALUES (8, 'Andromeda I b', 'Gas Giant', 2500000, 10000, 11, false);
INSERT INTO public.planet VALUES (9, 'Messier 87 A b', 'Terrestrial', 53000000, 13250, 12, false);
INSERT INTO public.planet VALUES (10, 'Sombrero A b', 'Ice Giant', 28000000, 13250, 13, false);
INSERT INTO public.planet VALUES (11, 'Centaurus A A b', 'Gas Giant', 13000000, 13070, 14, false);
INSERT INTO public.planet VALUES (12, 'Centaurus A A c', 'Terrestrial', 13000000, 13070, 14, false);


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'International', 'Research', 400);
INSERT INTO public.space_station VALUES (2, 'Tiangong', 'Research', 389);
INSERT INTO public.space_station VALUES (3, 'Mir Space Station', 'Research', 396);
INSERT INTO public.space_station VALUES (4, 'Skylab (Decommissioned)', 'Research', 435);
INSERT INTO public.space_station VALUES (5, 'Salyut 1 (Decommissioned)', 'Research', 347);
INSERT INTO public.space_station VALUES (6, 'Genesis I (Proposed)', 'Commercial', 500);
INSERT INTO public.space_station VALUES (7, 'Orbital Cloud (Proposed)', 'Commercial', 600);
INSERT INTO public.space_station VALUES (8, 'Voyager Station (Proposed)', 'Tourism', 35786);
INSERT INTO public.space_station VALUES (9, 'Gateway Lunar', 'Research', 2556);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow Dwarf', 0, 4603, 1, true);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'G-type Main Sequence', 4, 6000, 1, true);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 'Red Dwarf', 4, 4850, 1, true);
INSERT INTO public.star VALUES (4, 'Sirius', 'A-type Main Sequence', 8, 242, 1, true);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'Red Supergiant', 640, 8, 1, true);
INSERT INTO public.star VALUES (6, 'Rigel', 'Blue Supergiant', 860, 8, 1, true);
INSERT INTO public.star VALUES (7, 'Vega', 'A-type Main Sequence', 25, 455, 1, true);
INSERT INTO public.star VALUES (8, 'Antares', 'Red Supergiant', 550, 11, 1, true);
INSERT INTO public.star VALUES (9, 'Deneb', 'A-type Supergiant', 2600, 8, 1, true);
INSERT INTO public.star VALUES (10, 'Polaris', 'F-type Supergiant', 430, 7500, 1, true);
INSERT INTO public.star VALUES (11, 'Andromeda I', 'Yellow Dwarf', 2500000, 10000, 2, true);
INSERT INTO public.star VALUES (12, 'Messier 87 A', 'Red Supergiant', 53000000, 13250, 3, true);
INSERT INTO public.star VALUES (13, 'Sombrero A', 'Blue Supergiant', 28000000, 13250, 4, true);
INSERT INTO public.star VALUES (14, 'Centaurus A A', 'Yellow Dwarf', 13000000, 13070, 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_station_space_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_space_station_id_seq', 9, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


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
-- Name: space_station space_station_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_name_key UNIQUE (name);


--
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (space_station_id);


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
