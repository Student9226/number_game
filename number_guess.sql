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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 746);
INSERT INTO public.games VALUES (2, 1, 872);
INSERT INTO public.games VALUES (3, 2, 39);
INSERT INTO public.games VALUES (4, 2, 909);
INSERT INTO public.games VALUES (5, 1, 72);
INSERT INTO public.games VALUES (6, 1, 5);
INSERT INTO public.games VALUES (7, 1, 208);
INSERT INTO public.games VALUES (8, 3, 561);
INSERT INTO public.games VALUES (9, 3, 100);
INSERT INTO public.games VALUES (10, 4, 777);
INSERT INTO public.games VALUES (11, 4, 194);
INSERT INTO public.games VALUES (12, 3, 236);
INSERT INTO public.games VALUES (13, 3, 431);
INSERT INTO public.games VALUES (14, 3, 896);
INSERT INTO public.games VALUES (15, 5, 759);
INSERT INTO public.games VALUES (16, 5, 456);
INSERT INTO public.games VALUES (17, 6, 874);
INSERT INTO public.games VALUES (18, 6, 74);
INSERT INTO public.games VALUES (19, 5, 564);
INSERT INTO public.games VALUES (20, 5, 142);
INSERT INTO public.games VALUES (21, 5, 875);
INSERT INTO public.games VALUES (22, 7, 845);
INSERT INTO public.games VALUES (23, 7, 114);
INSERT INTO public.games VALUES (24, 8, 781);
INSERT INTO public.games VALUES (25, 8, 324);
INSERT INTO public.games VALUES (26, 7, 588);
INSERT INTO public.games VALUES (27, 7, 184);
INSERT INTO public.games VALUES (28, 7, 522);
INSERT INTO public.games VALUES (29, 9, 624);
INSERT INTO public.games VALUES (30, 9, 269);
INSERT INTO public.games VALUES (31, 10, 562);
INSERT INTO public.games VALUES (32, 10, 834);
INSERT INTO public.games VALUES (33, 9, 67);
INSERT INTO public.games VALUES (34, 9, 136);
INSERT INTO public.games VALUES (35, 9, 179);
INSERT INTO public.games VALUES (36, 11, 72);
INSERT INTO public.games VALUES (37, 11, 261);
INSERT INTO public.games VALUES (38, 12, 881);
INSERT INTO public.games VALUES (39, 12, 272);
INSERT INTO public.games VALUES (40, 11, 551);
INSERT INTO public.games VALUES (41, 11, 515);
INSERT INTO public.games VALUES (42, 11, 309);
INSERT INTO public.games VALUES (43, 13, 175);
INSERT INTO public.games VALUES (44, 13, 299);
INSERT INTO public.games VALUES (45, 14, 636);
INSERT INTO public.games VALUES (46, 14, 295);
INSERT INTO public.games VALUES (47, 13, 179);
INSERT INTO public.games VALUES (48, 13, 813);
INSERT INTO public.games VALUES (49, 13, 2);
INSERT INTO public.games VALUES (50, 15, 374);
INSERT INTO public.games VALUES (51, 15, 133);
INSERT INTO public.games VALUES (52, 16, 296);
INSERT INTO public.games VALUES (53, 16, 452);
INSERT INTO public.games VALUES (54, 15, 196);
INSERT INTO public.games VALUES (55, 15, 175);
INSERT INTO public.games VALUES (56, 15, 820);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1720856642368');
INSERT INTO public.users VALUES (2, 'user_1720856642367');
INSERT INTO public.users VALUES (3, 'user_1720856808898');
INSERT INTO public.users VALUES (4, 'user_1720856808897');
INSERT INTO public.users VALUES (5, 'user_1720856819929');
INSERT INTO public.users VALUES (6, 'user_1720856819928');
INSERT INTO public.users VALUES (7, 'user_1720856885066');
INSERT INTO public.users VALUES (8, 'user_1720856885065');
INSERT INTO public.users VALUES (9, 'user_1720856915453');
INSERT INTO public.users VALUES (10, 'user_1720856915452');
INSERT INTO public.users VALUES (11, 'user_1720856935106');
INSERT INTO public.users VALUES (12, 'user_1720856935105');
INSERT INTO public.users VALUES (13, 'user_1720857009156');
INSERT INTO public.users VALUES (14, 'user_1720857009155');
INSERT INTO public.users VALUES (15, 'user_1720857026914');
INSERT INTO public.users VALUES (16, 'user_1720857026913');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

