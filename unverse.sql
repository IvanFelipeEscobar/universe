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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50) NOT NULL,
    composition character varying(50),
    size integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50),
    avg_temp numeric(8,2),
    num_of_star integer
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
    name character varying(50) NOT NULL,
    compostion character varying(50),
    surface_temp numeric(8,2),
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_moons boolean,
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
    type character varying(50),
    host_to_planets boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 'Carbonaceous', 946);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 'Basaltic', 525);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 'Carbonaceous', 512);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 10.50, 200);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 11.20, 250);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 9.80, 150);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Irregular', 8.40, 120);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Irregular', 7.90, 90);
INSERT INTO public.galaxy VALUES (6, 'M87', 'Elliptical', 12.30, 180);
INSERT INTO public.galaxy VALUES (7, 'Sombrero', 'Spiral', 10.80, 130);
INSERT INTO public.galaxy VALUES (8, 'Sculptor', 'Dwarf Elliptical', 9.10, 80);
INSERT INTO public.galaxy VALUES (9, 'Whirlpool', 'Spiral', 10.20, 160);
INSERT INTO public.galaxy VALUES (10, 'Leo I', 'Dwarf Spheroidal', 8.70, 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Rocky', -233.15, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Rocky', -113.00, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Rocky', -103.00, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ice and Rock', -163.00, 5);
INSERT INTO public.moon VALUES (5, 'Titan', 'Organic-rich', -179.00, 6);
INSERT INTO public.moon VALUES (6, 'Europa', 'Ice', -160.00, 5);
INSERT INTO public.moon VALUES (7, 'Io', 'Volcanic', -130.00, 5);
INSERT INTO public.moon VALUES (8, 'Triton', 'Ice and Rock', -235.00, 8);
INSERT INTO public.moon VALUES (9, 'Callisto', 'Ice and Rock', -139.00, 5);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Ice', -201.00, 6);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Rocky', -187.00, 7);
INSERT INTO public.moon VALUES (12, 'Ariel', 'Ice and Rock', -213.00, 7);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Ice and Rock', -203.00, 7);
INSERT INTO public.moon VALUES (14, 'Tethys', 'Ice', -187.00, 6);
INSERT INTO public.moon VALUES (15, 'Dione', 'Ice and Rock', -186.00, 6);
INSERT INTO public.moon VALUES (16, 'Hyperion', 'Ice and Rock', -203.00, 6);
INSERT INTO public.moon VALUES (17, 'Phoebe', 'Ice and Rock', -200.00, 6);
INSERT INTO public.moon VALUES (18, 'Mimas', 'Rocky', -193.00, 6);
INSERT INTO public.moon VALUES (19, 'Rhea', 'Ice and Rock', -202.00, 6);
INSERT INTO public.moon VALUES (20, 'Iapetus', 'Ice and Rock', -143.00, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the smallest planet in our solar system and is known for its cratered surface.', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is often called Earth’s twin because of their similar size, mass, proximity to the Sun, and bulk composition.', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is known as the Red Planet due to its reddish appearance, and it is home to Olympus Mons, the largest volcano in the solar system.', true, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the largest planet in our solar system and is known for its Great Red Spot, a giant storm that has raged for hundreds of years.', true, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is famous for its rings, made mostly of ice particles with a smaller amount of rocky debris and dust.', true, 4);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is unique among the planets because it orbits the Sun on its side, with its axis tilted nearly perpendicular to the plane of the solar system.', true, 5);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth planet from the Sun and is named after the Roman god of the sea.', true, 6);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 'Kepler-186f is an exoplanet orbiting the red dwarf Kepler-186, about 582 light-years from the Earth.', true, 7);
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1f', 'TRAPPIST-1f is one of the seven Earth-sized exoplanets orbiting the ultra-cool dwarf star TRAPPIST-1.', true, 8);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1g', 'TRAPPIST-1g is one of the seven Earth-sized exoplanets orbiting the ultra-cool dwarf star TRAPPIST-1.', true, 8);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 'TRAPPIST-1e is one of the seven Earth-sized exoplanets orbiting the ultra-cool dwarf star TRAPPIST-1.', true, 8);
INSERT INTO public.planet VALUES (13, 'Gliese 581g', 'Gliese 581g is an exoplanet located in the constellation Libra, about 20 light-years away from Earth.', true, 9);
INSERT INTO public.planet VALUES (14, 'Gliese 667 Cc', 'Gliese 667 Cc is a super-Earth exoplanet orbiting within the habitable zone of the red dwarf star Gliese 667 C.', true, 10);
INSERT INTO public.planet VALUES (15, 'PSR B1257+12 c', 'PSR B1257+12 c is an exoplanet orbiting the pulsar PSR B1257+12 in the constellation Virgo.', true, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type main sequence', true, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'G-type main sequence', true, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 'K-type main sequence', true, 2);
INSERT INTO public.star VALUES (4, 'Sirius', 'A-type main sequence', true, 3);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'M-type main sequence', true, 2);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'M-type supergiant', false, 4);
INSERT INTO public.star VALUES (7, 'Rigel', 'B-type supergiant', false, 4);
INSERT INTO public.star VALUES (8, 'Vega', 'A-type main sequence', true, 5);
INSERT INTO public.star VALUES (9, 'Arcturus', 'K-type giant', true, 6);
INSERT INTO public.star VALUES (10, 'Pollux', 'K-type giant', true, 6);
INSERT INTO public.star VALUES (11, 'Aldebaran', 'K-type giant', true, 6);
INSERT INTO public.star VALUES (12, 'Capella', 'G-type giant', true, 6);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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

