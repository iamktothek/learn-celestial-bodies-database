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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying NOT NULL,
    type integer
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_ly integer,
    no_of_stars_in_bn integer,
    galaxy_type character varying(30) NOT NULL
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
    moon_radius_in_km integer,
    is_spherical boolean,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
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
    planet_radius_in_km integer,
    name character varying(30) NOT NULL,
    has_life boolean,
    star_id integer NOT NULL,
    about_planet text
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
    name character varying(30) NOT NULL,
    star_type character varying(30),
    no_of_orbiting_planets numeric(3,0),
    galaxy_id integer NOT NULL
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


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
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'One', NULL);
INSERT INTO public.fifth_table VALUES (2, 'Two', NULL);
INSERT INTO public.fifth_table VALUES (3, 'Three', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 152000, 1000, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 87400, 400, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Hoags', 121000, 8, 'Ring');
INSERT INTO public.galaxy VALUES (4, 'LMC', 32200, 20, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Peekaboo', 1200, 6, 'Irregular');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 144300, 4, 'Ring');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 250, true, 'Enceladus', 6);
INSERT INTO public.moon VALUES (2, 1920, true, 'The Moon', 1);
INSERT INTO public.moon VALUES (3, 1821, true, 'IO', 5);
INSERT INTO public.moon VALUES (4, 49, false, 'Thebe', 5);
INSERT INTO public.moon VALUES (5, 84, false, 'Amalthea', 5);
INSERT INTO public.moon VALUES (6, 1560, true, 'Europa', 5);
INSERT INTO public.moon VALUES (7, 8, false, 'Adrastea', 5);
INSERT INTO public.moon VALUES (8, 2580, true, 'Callisto', 5);
INSERT INTO public.moon VALUES (9, 2634, true, 'Ganymede', 5);
INSERT INTO public.moon VALUES (10, 252, true, 'Encladeus', 6);
INSERT INTO public.moon VALUES (11, 1, true, 'Anthe', 6);
INSERT INTO public.moon VALUES (12, 11, false, 'Phobos', 4);
INSERT INTO public.moon VALUES (13, 6, false, 'Deimos', 4);
INSERT INTO public.moon VALUES (14, 579, true, 'Ariel', 7);
INSERT INTO public.moon VALUES (15, 788, true, 'Titania', 7);
INSERT INTO public.moon VALUES (16, 1373, true, 'Triton', 8);
INSERT INTO public.moon VALUES (17, 606, true, 'Charon', 9);
INSERT INTO public.moon VALUES (18, 38, false, 'Hydra', 9);
INSERT INTO public.moon VALUES (19, 70, true, 'Himalia', 5);
INSERT INTO public.moon VALUES (20, 59, false, 'Epimetheus', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 6371, 'Earth', true, 1, 'Earth is the third planet from the Sun in the Solar System. It is the only planet known to have life on it. The Earth formed about 4.6 billion years ago.');
INSERT INTO public.planet VALUES (2, 2439, 'Mercury', false, 1, 'Mercury is the smallest planet in the Solar System. It is the closest planet to the sun. It makes one trip around the Sun once every 87.969 days');
INSERT INTO public.planet VALUES (3, 6051, 'Venus', false, 1, 'Venus is the second planet from the Sun. Venus is the only planet in the Solar System that has a day longer than a year. The year length of Venus is 225 Earth days. The day length of Venus is 243 Earth days.');
INSERT INTO public.planet VALUES (4, 3390, 'Mars', false, 1, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System. Mars is a terrestrial planet with caps of water and carbon dioxide. It has the largest volcano in the Solar System, and some very large impact craters.');
INSERT INTO public.planet VALUES (5, 69911, 'Jupiter', false, 1, 'Jupiter is the largest planet in the Solar System. It is the fifth planet from the Sun. Jupiter is a gas giant because it is so large, and made mostly of gas. The other gas giants in the Solar System are Saturn, Uranus, and Neptune.');
INSERT INTO public.planet VALUES (6, 58232, 'Saturn', false, 1, 'Saturn is the sixth planet from the Sun in the Solar System. Saturn is one of the four gas giant planets in the Solar System, with Jupiter, Uranus, and Neptune. It is the second largest planet in the Solar System (Jupiter is the largest).');
INSERT INTO public.planet VALUES (7, 25632, 'Uranus', false, 1, 'Uranus is the seventh planet from the Sun in our Solar System. Like Neptune, it is an ice giant. It is the third largest planet in the solar system.');
INSERT INTO public.planet VALUES (8, 24622, 'Neptune', false, 1, 'Neptune is the eighth and farthest planet from the Sun in the Solar System. It is an ice giant. It is the fourth-largest planet in the system. Neptune''s mass is 17 times Earth''s mass and a little bit more than Uranus''s mass. Neptune is denser and smaller than Uranus. Because of its greater mass, Neptune''s gravity makes its atmosphere smaller and denser.');
INSERT INTO public.planet VALUES (9, 1187, 'Pluto', false, 1, 'Pluto is a dwarf planet in the Solar System. Its formal name is 134340 Pluto.] Pluto is the ninth largest body that moves around the Sun. Upon first being discovered, Pluto was considered a planet but was reclassified to a dwarf planet in 2006. It is the largest body in the Kuiper belt.');
INSERT INTO public.planet VALUES (10, 6378, 'Proxima Centauri b', false, 2, 'Proxima Centauri b (or Proxima b), sometimes referred to as Alpha Centauri Cb, is an exoplanet orbiting within the habitable zone of the red dwarf star Proxima Centauri, which is the closest star to the Sun and part of the larger triple star system Alpha Centauri. It is about 4.2 light-years (1.3 parsecs) from Earth in the constellation Centaurus, making it and Proxima d, along with the currently disputed Proxima c, the closest known exoplanets to the Solar System.');
INSERT INTO public.planet VALUES (11, 15432, 'Proxima Centauri c', false, 2, 'Proxima Centauri c (also called Proxima c or Alpha Centauri Cc) is a controversial exoplanet candidate claimed to be orbiting the red dwarf star Proxima Centauri, which is the closest star to the Sun and part of a triple star system. It is located approximately 4.2 light-years (1.3 parsecs; 40 trillion kilometres; 25 trillion miles) from Earth in the constellation of Centaurus, making it, Proxima b, and Proxima d the closest known exoplanets to the Solar System.');
INSERT INTO public.planet VALUES (12, NULL, 'Alpha Centurai Bb', false, 4, 'Alpha Centauri Bb (α Cen Bb) was a proposed exoplanet orbiting the K-type main-sequence star Alpha Centauri B, located 4.37 light-years from Earth in the southern constellation of Centaurus, but there has not been enough evidence to support the claim.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow Dwarf', 9, 2);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red Dwarf', 3, 2);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus', 'Red Dwarf', 1, 2);
INSERT INTO public.star VALUES (4, 'Toliman', 'Yellow Dwarf', 1, 2);
INSERT INTO public.star VALUES (5, 'Lacaille 9352', 'Red Dwarf', 2, 2);
INSERT INTO public.star VALUES (6, 'Gliese 1061', 'Red Dwarf', 3, 2);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: fifth_table fifth_table_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_type_key UNIQUE (type);


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
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

