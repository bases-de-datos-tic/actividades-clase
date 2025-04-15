-- IMPORTANTE!!!
-- Al crear la base de datos, poner como owner a bd-ort-2025_owner

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.0

-- Started on 2025-04-14 23:47:38 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: bd-ort-2025_owner
--


ALTER SCHEMA public OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: bd-ort-2025_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 49162)
-- Name: cursomateria; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public.cursomateria (
    id integer NOT NULL,
    curso_id integer NOT NULL,
    materia_id integer NOT NULL
);


ALTER TABLE public.cursomateria OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 220 (class 1259 OID 49165)
-- Name: CURSOMATERIA_id_seq; Type: SEQUENCE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE SEQUENCE public."CURSOMATERIA_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."CURSOMATERIA_id_seq" OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 220
-- Name: CURSOMATERIA_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bd-ort-2025_owner
--

ALTER SEQUENCE public."CURSOMATERIA_id_seq" OWNED BY public.cursomateria.id;


--
-- TOC entry 218 (class 1259 OID 49157)
-- Name: curso; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public.curso (
    id integer NOT NULL,
    nombre text NOT NULL,
    "año" integer,
    letra character(1),
    especialidad text
);


ALTER TABLE public.curso OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 221 (class 1259 OID 49166)
-- Name: CURSO_id_seq; Type: SEQUENCE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE SEQUENCE public."CURSO_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."CURSO_id_seq" OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 221
-- Name: CURSO_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bd-ort-2025_owner
--

ALTER SEQUENCE public."CURSO_id_seq" OWNED BY public.curso.id;


--
-- TOC entry 223 (class 1259 OID 49172)
-- Name: materia; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public.materia (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE public.materia OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 224 (class 1259 OID 49177)
-- Name: MATERIA_id_seq; Type: SEQUENCE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE SEQUENCE public."MATERIA_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."MATERIA_id_seq" OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 224
-- Name: MATERIA_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bd-ort-2025_owner
--

ALTER SEQUENCE public."MATERIA_id_seq" OWNED BY public.materia.id;


--
-- TOC entry 217 (class 1259 OID 49152)
-- Name: alumno; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public.alumno (
    dni integer NOT NULL,
    nombre text NOT NULL,
    fecha_nac date NOT NULL,
    genero boolean,
    curso_id integer,
    email text
);


ALTER TABLE public.alumno OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 222 (class 1259 OID 49167)
-- Name: especialidad; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public.especialidad (
    codigo text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.especialidad OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 3205 (class 2604 OID 49178)
-- Name: curso id; Type: DEFAULT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.curso ALTER COLUMN id SET DEFAULT nextval('public."CURSO_id_seq"'::regclass);


--
-- TOC entry 3206 (class 2604 OID 49179)
-- Name: cursomateria id; Type: DEFAULT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.cursomateria ALTER COLUMN id SET DEFAULT nextval('public."CURSOMATERIA_id_seq"'::regclass);


--
-- TOC entry 3207 (class 2604 OID 49180)
-- Name: materia id; Type: DEFAULT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.materia ALTER COLUMN id SET DEFAULT nextval('public."MATERIA_id_seq"'::regclass);


--
-- TOC entry 3367 (class 0 OID 49152)
-- Dependencies: 217
-- Data for Name: alumno; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (41570529, 'Joaquín Rodríguez', '2007-03-26', false, 2, 'joaquin.rodriguez75@hotmail.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (28275445, 'Valentina Díaz', '2003-02-16', false, 5, 'valentina.diaz23@ort.edu.ar');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (34375853, 'Martín García', '1999-04-16', false, 2, 'martin.garcia88@gmail.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (23679214, 'Pedro Rodríguez', '1990-04-30', false, 5, 'pedro.rodriguez19@ort.edu.ar');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (22131636, 'Ana García', '2001-10-29', false, 5, 'ana.garcia92@outlook.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (28436057, 'Valentina Pérez', '2003-01-19', true, 5, 'valentina.perez44@ort.edu.ar');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (28953167, 'Carlos González', '2002-09-05', false, 4, 'carlos.gonzalez11@hotmail.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (25306893, 'Joaquín Pérez', '1991-05-15', false, 5, 'joaquin.perez72@gmail.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (25994562, 'Valentina González', '1991-08-29', false, 5, 'valentina.gonzalez28@ort.edu.ar');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (40433649, 'Lucía Rodríguez', '2009-09-10', false, 2, 'lucia.rodriguez33@yahoo.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (38098556, 'Valentina Pérez', '1996-06-23', false, 4, 'valentina.perez52@gmail.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (20653531, 'María Martínez', '1995-08-29', false, 2, 'maria.martinez19@outlook.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (21943646, 'Lucía Ramírez', '1990-06-01', true, 1, 'lucia.ramirez84@hotmail.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (44558743, 'Joaquín González', '1999-06-06', true, 2, 'joaquin.gonzalez77@ort.edu.ar');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (42137564, 'Joaquín Díaz', '1998-09-06', true, 3, 'joaquin.diaz39@gmail.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (37705794, 'Martín García', '1995-10-06', true, 5, 'martin.garcia45@outlook.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (34700199, 'Valentina Sánchez', '1992-02-04', true, 2, 'valentina.sanchez14@hotmail.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (24641643, 'Valentina Gomez', '1993-08-24', true, 1, 'valentina.g@yahoo.com');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (27539591, 'María Gomez', '2000-07-17', true, 5, 'maria.gomez@ort.edu.ar');
INSERT INTO public.alumno (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (44492422, 'Lucía Gomez', '1996-12-12', false, 3, 'luciag55@yahoo.com');


--
-- TOC entry 3368 (class 0 OID 49157)
-- Dependencies: 218
-- Data for Name: curso; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public.curso (id, nombre, "año", letra, especialidad) VALUES (1, '4A', 4, 'A', 'NR');
INSERT INTO public.curso (id, nombre, "año", letra, especialidad) VALUES (2, '4C', 4, 'C', 'NR');
INSERT INTO public.curso (id, nombre, "año", letra, especialidad) VALUES (3, '3A', 3, 'A', 'NR');
INSERT INTO public.curso (id, nombre, "año", letra, especialidad) VALUES (4, '5B', 5, 'B', 'ME');
INSERT INTO public.curso (id, nombre, "año", letra, especialidad) VALUES (5, '3A', 3, 'A', 'ME');


--
-- TOC entry 3369 (class 0 OID 49162)
-- Dependencies: 219
-- Data for Name: cursomateria; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (1, 1, 5);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (2, 1, 6);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (3, 1, 7);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (4, 1, 1);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (5, 1, 2);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (6, 2, 6);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (7, 2, 8);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (8, 2, 4);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (9, 2, 5);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (10, 2, 1);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (11, 3, 3);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (12, 3, 8);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (13, 3, 1);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (14, 3, 2);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (15, 3, 5);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (16, 4, 1);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (17, 4, 3);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (18, 4, 4);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (19, 4, 2);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (20, 4, 6);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (21, 5, 8);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (22, 5, 3);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (23, 5, 7);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (24, 5, 6);
INSERT INTO public.cursomateria (id, curso_id, materia_id) VALUES (25, 5, 2);


--
-- TOC entry 3372 (class 0 OID 49167)
-- Dependencies: 222
-- Data for Name: especialidad; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public.especialidad (codigo, descripcion) VALUES ('NR', 'TIC');
INSERT INTO public.especialidad (codigo, descripcion) VALUES ('DI', 'Diseño');
INSERT INTO public.especialidad (codigo, descripcion) VALUES ('ME', 'Medios');


--
-- TOC entry 3373 (class 0 OID 49172)
-- Dependencies: 223
-- Data for Name: materia; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public.materia (id, nombre) VALUES (1, 'Arte 3D');
INSERT INTO public.materia (id, nombre) VALUES (2, 'Unity');
INSERT INTO public.materia (id, nombre) VALUES (3, 'Física');
INSERT INTO public.materia (id, nombre) VALUES (4, 'Software');
INSERT INTO public.materia (id, nombre) VALUES (5, 'Hardware');
INSERT INTO public.materia (id, nombre) VALUES (6, 'Marketing');
INSERT INTO public.materia (id, nombre) VALUES (7, 'Matemática');
INSERT INTO public.materia (id, nombre) VALUES (8, 'Historia');


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 220
-- Name: CURSOMATERIA_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bd-ort-2025_owner
--

SELECT pg_catalog.setval('public."CURSOMATERIA_id_seq"', 1, false);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 221
-- Name: CURSO_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bd-ort-2025_owner
--

SELECT pg_catalog.setval('public."CURSO_id_seq"', 1, false);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 224
-- Name: MATERIA_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bd-ort-2025_owner
--

SELECT pg_catalog.setval('public."MATERIA_id_seq"', 1, false);


--
-- TOC entry 3209 (class 2606 OID 49182)
-- Name: alumno ALUMNO_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT "ALUMNO_pkey" PRIMARY KEY (dni);


--
-- TOC entry 3213 (class 2606 OID 49184)
-- Name: cursomateria CURSOMATERIA_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.cursomateria
    ADD CONSTRAINT "CURSOMATERIA_pkey" PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 49186)
-- Name: curso CURSO_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT "CURSO_pkey" PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 49188)
-- Name: especialidad ESPECIALIDAD_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.especialidad
    ADD CONSTRAINT "ESPECIALIDAD_pkey" PRIMARY KEY (codigo);


--
-- TOC entry 3217 (class 2606 OID 49190)
-- Name: materia MATERIA_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.materia
    ADD CONSTRAINT "MATERIA_pkey" PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 49191)
-- Name: alumno curso; Type: FK CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT curso FOREIGN KEY (curso_id) REFERENCES public.curso(id) NOT VALID;


--
-- TOC entry 3220 (class 2606 OID 49196)
-- Name: cursomateria curso; Type: FK CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.cursomateria
    ADD CONSTRAINT curso FOREIGN KEY (curso_id) REFERENCES public.curso(id) NOT VALID;


--
-- TOC entry 3219 (class 2606 OID 49201)
-- Name: curso especialidad; Type: FK CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT especialidad FOREIGN KEY (especialidad) REFERENCES public.especialidad(codigo) NOT VALID;


--
-- TOC entry 3221 (class 2606 OID 49206)
-- Name: cursomateria materia; Type: FK CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public.cursomateria
    ADD CONSTRAINT materia FOREIGN KEY (materia_id) REFERENCES public.materia(id) NOT VALID;


--
-- TOC entry 2063 (class 826 OID 41083)
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON SEQUENCES TO neon_superuser WITH GRANT OPTION;


--
-- TOC entry 2062 (class 826 OID 41082)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: cloud_admin
--

ALTER DEFAULT PRIVILEGES FOR ROLE cloud_admin IN SCHEMA public GRANT ALL ON TABLES TO neon_superuser WITH GRANT OPTION;


-- Completed on 2025-04-14 23:47:43 -03

--
-- PostgreSQL database dump complete
--

