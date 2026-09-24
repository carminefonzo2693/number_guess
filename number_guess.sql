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
    guesses integer NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 918);
INSERT INTO public.games VALUES (2, 1, 597);
INSERT INTO public.games VALUES (3, 2, 502);
INSERT INTO public.games VALUES (4, 2, 543);
INSERT INTO public.games VALUES (5, 1, 14);
INSERT INTO public.games VALUES (6, 1, 314);
INSERT INTO public.games VALUES (7, 1, 629);
INSERT INTO public.games VALUES (8, 3, 653);
INSERT INTO public.games VALUES (9, 4, 456);
INSERT INTO public.games VALUES (10, 4, 247);
INSERT INTO public.games VALUES (11, 3, 847);
INSERT INTO public.games VALUES (12, 3, 44);
INSERT INTO public.games VALUES (13, 3, 591);
INSERT INTO public.games VALUES (14, 5, 72);
INSERT INTO public.games VALUES (15, 5, 53);
INSERT INTO public.games VALUES (16, 6, 200);
INSERT INTO public.games VALUES (17, 6, 665);
INSERT INTO public.games VALUES (18, 5, 869);
INSERT INTO public.games VALUES (19, 5, 576);
INSERT INTO public.games VALUES (20, 5, 750);
INSERT INTO public.games VALUES (21, 8, 209);
INSERT INTO public.games VALUES (22, 8, 383);
INSERT INTO public.games VALUES (23, 9, 557);
INSERT INTO public.games VALUES (24, 9, 928);
INSERT INTO public.games VALUES (25, 8, 62);
INSERT INTO public.games VALUES (26, 8, 996);
INSERT INTO public.games VALUES (27, 8, 372);
INSERT INTO public.games VALUES (28, 10, 389);
INSERT INTO public.games VALUES (29, 10, 157);
INSERT INTO public.games VALUES (30, 11, 861);
INSERT INTO public.games VALUES (31, 11, 442);
INSERT INTO public.games VALUES (32, 10, 810);
INSERT INTO public.games VALUES (33, 10, 438);
INSERT INTO public.games VALUES (34, 10, 649);
INSERT INTO public.games VALUES (35, 12, 805);
INSERT INTO public.games VALUES (36, 12, 614);
INSERT INTO public.games VALUES (37, 13, 728);
INSERT INTO public.games VALUES (38, 13, 450);
INSERT INTO public.games VALUES (39, 12, 51);
INSERT INTO public.games VALUES (40, 12, 804);
INSERT INTO public.games VALUES (41, 12, 201);
INSERT INTO public.games VALUES (42, 14, 223);
INSERT INTO public.games VALUES (43, 14, 129);
INSERT INTO public.games VALUES (44, 15, 308);
INSERT INTO public.games VALUES (45, 16, 714);
INSERT INTO public.games VALUES (46, 15, 769);
INSERT INTO public.games VALUES (47, 16, 390);
INSERT INTO public.games VALUES (48, 17, 598);
INSERT INTO public.games VALUES (49, 14, 502);
INSERT INTO public.games VALUES (50, 14, 923);
INSERT INTO public.games VALUES (51, 17, 983);
INSERT INTO public.games VALUES (52, 14, 482);
INSERT INTO public.games VALUES (53, 15, 348);
INSERT INTO public.games VALUES (54, 15, 286);
INSERT INTO public.games VALUES (55, 15, 618);
INSERT INTO public.games VALUES (56, 18, 810);
INSERT INTO public.games VALUES (57, 18, 358);
INSERT INTO public.games VALUES (58, 19, 399);
INSERT INTO public.games VALUES (59, 19, 222);
INSERT INTO public.games VALUES (60, 18, 887);
INSERT INTO public.games VALUES (61, 18, 561);
INSERT INTO public.games VALUES (62, 18, 268);
INSERT INTO public.games VALUES (63, 20, 282);
INSERT INTO public.games VALUES (64, 20, 373);
INSERT INTO public.games VALUES (65, 21, 638);
INSERT INTO public.games VALUES (66, 21, 249);
INSERT INTO public.games VALUES (67, 20, 244);
INSERT INTO public.games VALUES (68, 20, 5);
INSERT INTO public.games VALUES (69, 20, 162);
INSERT INTO public.games VALUES (70, 22, 517);
INSERT INTO public.games VALUES (71, 22, 259);
INSERT INTO public.games VALUES (72, 23, 953);
INSERT INTO public.games VALUES (73, 23, 425);
INSERT INTO public.games VALUES (74, 22, 392);
INSERT INTO public.games VALUES (75, 22, 587);
INSERT INTO public.games VALUES (76, 22, 705);
INSERT INTO public.games VALUES (77, 24, 194);
INSERT INTO public.games VALUES (78, 24, 28);
INSERT INTO public.games VALUES (79, 25, 184);
INSERT INTO public.games VALUES (80, 25, 151);
INSERT INTO public.games VALUES (81, 24, 500);
INSERT INTO public.games VALUES (82, 24, 717);
INSERT INTO public.games VALUES (83, 24, 421);
INSERT INTO public.games VALUES (84, 26, 894);
INSERT INTO public.games VALUES (85, 26, 565);
INSERT INTO public.games VALUES (86, 27, 50);
INSERT INTO public.games VALUES (87, 27, 679);
INSERT INTO public.games VALUES (88, 26, 160);
INSERT INTO public.games VALUES (89, 26, 135);
INSERT INTO public.games VALUES (90, 26, 537);
INSERT INTO public.games VALUES (91, 28, 364);
INSERT INTO public.games VALUES (92, 28, 596);
INSERT INTO public.games VALUES (93, 29, 773);
INSERT INTO public.games VALUES (94, 29, 960);
INSERT INTO public.games VALUES (95, 28, 174);
INSERT INTO public.games VALUES (96, 28, 350);
INSERT INTO public.games VALUES (97, 28, 208);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1790286763140');
INSERT INTO public.users VALUES (2, 'user_1790286763139');
INSERT INTO public.users VALUES (3, 'user_1790286791564');
INSERT INTO public.users VALUES (4, 'user_1790286791563');
INSERT INTO public.users VALUES (5, 'user_1790286825039');
INSERT INTO public.users VALUES (6, 'user_1790286825038');
INSERT INTO public.users VALUES (7, 'carmine');
INSERT INTO public.users VALUES (8, 'user_1790286972663');
INSERT INTO public.users VALUES (9, 'user_1790286972662');
INSERT INTO public.users VALUES (10, 'user_1790287064867');
INSERT INTO public.users VALUES (11, 'user_1790287064866');
INSERT INTO public.users VALUES (12, 'user_1790287089210');
INSERT INTO public.users VALUES (13, 'user_1790287089209');
INSERT INTO public.users VALUES (14, 'user_1790287249466');
INSERT INTO public.users VALUES (15, 'user_1790287250026');
INSERT INTO public.users VALUES (16, 'user_1790287249465');
INSERT INTO public.users VALUES (17, 'user_1790287250025');
INSERT INTO public.users VALUES (18, 'user_1790287294842');
INSERT INTO public.users VALUES (19, 'user_1790287294841');
INSERT INTO public.users VALUES (20, 'user_1790287644738');
INSERT INTO public.users VALUES (21, 'user_1790287644737');
INSERT INTO public.users VALUES (22, 'user_1790287970569');
INSERT INTO public.users VALUES (23, 'user_1790287970568');
INSERT INTO public.users VALUES (24, 'user_1790288089540');
INSERT INTO public.users VALUES (25, 'user_1790288089539');
INSERT INTO public.users VALUES (26, 'user_1790288091762');
INSERT INTO public.users VALUES (27, 'user_1790288091761');
INSERT INTO public.users VALUES (28, 'user_1790288197856');
INSERT INTO public.users VALUES (29, 'user_1790288197855');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 97, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 29, true);


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

