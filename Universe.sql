--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(50),
    description text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    is_regular boolean,
    age_in_gigayears integer,
    galaxy_types character varying(50)
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
    name character varying(50),
    description text,
    is_spherical boolean,
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
    name character varying(50),
    distance_from_earth_in_miles bigint,
    has_life boolean,
    star_id integer,
    planet_types character varying(50),
    weight numeric(3,1)
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
    name character varying(50),
    age_in_million_years integer,
    galaxy_id integer,
    description text
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'The Hunter; one of the most visible and recognizable constellations, containing the bright stars Betelgeuse and Rigel.');
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 'The Great Bear; its seven brightest stars form the Big Dipper, a key navigation tool used to find the North Star.');
INSERT INTO public.constellation VALUES (3, 'Cassiopeia', 'The Queen; easily identified by its distinct "W" shape formed by five bright stars in the northern sky.');
INSERT INTO public.constellation VALUES (4, 'Crux', 'The Southern Cross; the smallest of the 88 constellations, used for navigation in the Southern Hemisphere.');
INSERT INTO public.constellation VALUES (5, 'Cygnus', 'The Swan; also known as the Northern Cross, it features Deneb, one of the most distant stars visible to the naked eye.');
INSERT INTO public.constellation VALUES (6, 'Scorpius', 'The Scorpion; a large zodiac constellation featuring the red supergiant star Antares at its heart.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 13, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', true, 10, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', false, 13, 'Irregular');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', true, 13, 'Elliptical');
INSERT INTO public.galaxy VALUES (5, 'Triangulum Galaxy', true, 12, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', false, 7, 'Irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', 'Earth''s only natural satellite, stabilizing our planet''s wobble.', true, 15);
INSERT INTO public.moon VALUES (22, 'Phobos', 'The larger, inner moon of Mars; likely a captured asteroid.', false, 16);
INSERT INTO public.moon VALUES (23, 'Deimos', 'Smallest moon of Mars; its name means "terror" in Greek.', false, 16);
INSERT INTO public.moon VALUES (24, 'Io', 'The most volcanically active body in the solar system.', true, 17);
INSERT INTO public.moon VALUES (25, 'Europa', 'Possesses a subsurface liquid water ocean beneath its ice.', true, 17);
INSERT INTO public.moon VALUES (26, 'Ganymede', 'The largest moon in the solar system, bigger than Mercury.', true, 17);
INSERT INTO public.moon VALUES (27, 'Callisto', 'The most heavily cratered object in the solar system.', true, 17);
INSERT INTO public.moon VALUES (28, 'Amalthea', 'Irregularly shaped moon; reddest object in the solar system.', false, 17);
INSERT INTO public.moon VALUES (29, 'Titan', 'Saturn''s largest moon with a thick, nitrogen-rich atmosphere.', true, 18);
INSERT INTO public.moon VALUES (30, 'Enceladus', 'Famous for its water-ice plumes erupting from the south pole.', true, 18);
INSERT INTO public.moon VALUES (31, 'Mimas', 'Known for the giant Herschel Crater, resembling the Death Star.', true, 18);
INSERT INTO public.moon VALUES (32, 'Iapetus', 'Features a prominent equatorial ridge and dual-tone coloring.', true, 18);
INSERT INTO public.moon VALUES (33, 'Rhea', 'Saturn''s second-largest moon, composed mostly of water ice.', true, 18);
INSERT INTO public.moon VALUES (34, 'Dione', 'An icy moon with heavily cratered and bright, wispy terrain.', true, 18);
INSERT INTO public.moon VALUES (35, 'Tethys', 'Contains the massive Odysseus impact basin.', true, 18);
INSERT INTO public.moon VALUES (36, 'Miranda', 'Features extreme geological terrain including giant cliffs.', true, 19);
INSERT INTO public.moon VALUES (37, 'Ariel', 'The brightest and possibly youngest moon of Uranus.', true, 19);
INSERT INTO public.moon VALUES (38, 'Titania', 'The largest moon of Uranus, marked by large canyons.', true, 19);
INSERT INTO public.moon VALUES (39, 'Triton', 'Largest moon of Neptune; orbits in a retrograde direction.', true, 20);
INSERT INTO public.moon VALUES (40, 'Proteus', 'Neptune''s second-largest moon; largest non-spherical moon.', false, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 48000000, false, 1, 'Terrestrial', 0.1);
INSERT INTO public.planet VALUES (14, 'Venus', 25000000, false, 1, 'Terrestrial', 0.8);
INSERT INTO public.planet VALUES (15, 'Earth', 0, true, 1, 'Terrestrial', 1.0);
INSERT INTO public.planet VALUES (16, 'Mars', 33900000, false, 1, 'Terrestrial', 0.1);
INSERT INTO public.planet VALUES (17, 'Jupiter', 365000000, false, 1, 'Gas Giant', 3.8);
INSERT INTO public.planet VALUES (18, 'Saturn', 746000000, false, 1, 'Gas Giant', 95.2);
INSERT INTO public.planet VALUES (19, 'Uranus', 1500000000, false, 1, 'Ice Giant', 14.5);
INSERT INTO public.planet VALUES (20, 'Neptune', 2700000000, false, 1, 'Ice Giant', 17.1);
INSERT INTO public.planet VALUES (21, 'Proxima Centauri', 25000000000000, false, 5, 'Super Earth', 1.1);
INSERT INTO public.planet VALUES (22, 'Kepler 452b', 8230000000000000, false, 4, 'Super Earth', 5.0);
INSERT INTO public.planet VALUES (23, 'TRAPPIST 1e', 235000000000000, false, 4, 'Terrestrial', 0.7);
INSERT INTO public.planet VALUES (24, 'Gliese 581g', 117000000000000, false, 3, 'Super Earth', 3.1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 1, 'The G-type main-sequence star at the center of our Solar System');
INSERT INTO public.star VALUES (2, 'Sirius A', 240, 1, 'The brightest star in Earth''s night sky, located in Canis Major');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 10, 1, 'A massive red supergiant in the Orion constellation, nearing the end of its life');
INSERT INTO public.star VALUES (4, 'Vega', 455, 1, 'A bright white star in the Lyra constellation used as a zero-point for the magnitude scale');
INSERT INTO public.star VALUES (5, 'V766 Centauri', 10, 2, 'A rare yellow hypergiant located in the Andromeda Galaxy (M31)');
INSERT INTO public.star VALUES (6, 'R136a1', 1, 3, 'One of the most massive and luminous stars known, located in the Large Magellanic Cloud');


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_pkey PRIMARY KEY (planet_id);


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
