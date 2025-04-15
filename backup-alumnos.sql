-- IMPORTANTE!!!
-- Al crear la base de datos, poner como owner a bd-ort-2025_owner

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.0

-- Started on 2025-04-14 23:12:56 -03

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
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: bd-ort-2025_owner
--

 


ALTER SCHEMA public OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: bd-ort-2025_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 226 (class 1259 OID 32854)
-- Name: ALUMNO; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public."ALUMNO" (
    dni integer NOT NULL,
    nombre text NOT NULL,
    fecha_nac date NOT NULL,
    genero boolean,
    curso_id integer,
    email text
);


ALTER TABLE public."ALUMNO" OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 227 (class 1259 OID 32859)
-- Name: CURSO; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public."CURSO" (
    id integer NOT NULL,
    nombre text NOT NULL,
    "año" integer,
    letra character(1),
    especialidad text
);


ALTER TABLE public."CURSO" OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 228 (class 1259 OID 32864)
-- Name: CURSOMATERIA; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public."CURSOMATERIA" (
    id integer NOT NULL,
    curso_id integer NOT NULL,
    materia_id integer NOT NULL
);


ALTER TABLE public."CURSOMATERIA" OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 229 (class 1259 OID 32867)
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
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 229
-- Name: CURSOMATERIA_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bd-ort-2025_owner
--

ALTER SEQUENCE public."CURSOMATERIA_id_seq" OWNED BY public."CURSOMATERIA".id;


--
-- TOC entry 230 (class 1259 OID 32868)
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
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 230
-- Name: CURSO_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bd-ort-2025_owner
--

ALTER SEQUENCE public."CURSO_id_seq" OWNED BY public."CURSO".id;


--
-- TOC entry 231 (class 1259 OID 32869)
-- Name: ESPECIALIDAD; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public."ESPECIALIDAD" (
    codigo text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public."ESPECIALIDAD" OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 232 (class 1259 OID 32874)
-- Name: MATERIA; Type: TABLE; Schema: public; Owner: bd-ort-2025_owner
--

CREATE TABLE public."MATERIA" (
    id integer NOT NULL,
    nombre text NOT NULL
);


ALTER TABLE public."MATERIA" OWNER TO "bd-ort-2025_owner";

--
-- TOC entry 233 (class 1259 OID 32879)
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
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 233
-- Name: MATERIA_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: bd-ort-2025_owner
--

ALTER SEQUENCE public."MATERIA_id_seq" OWNED BY public."MATERIA".id;


--
-- TOC entry 3224 (class 2604 OID 32880)
-- Name: CURSO id; Type: DEFAULT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."CURSO" ALTER COLUMN id SET DEFAULT nextval('public."CURSO_id_seq"'::regclass);


--
-- TOC entry 3225 (class 2604 OID 32881)
-- Name: CURSOMATERIA id; Type: DEFAULT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."CURSOMATERIA" ALTER COLUMN id SET DEFAULT nextval('public."CURSOMATERIA_id_seq"'::regclass);


--
-- TOC entry 3226 (class 2604 OID 32882)
-- Name: MATERIA id; Type: DEFAULT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."MATERIA" ALTER COLUMN id SET DEFAULT nextval('public."MATERIA_id_seq"'::regclass);


--
-- TOC entry 3386 (class 0 OID 32854)
-- Dependencies: 226
-- Data for Name: ALUMNO; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (41570529, 'Joaquín Rodríguez', '2007-03-26', false, 2, 'joaquin.rodriguez75@hotmail.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (28275445, 'Valentina Díaz', '2003-02-16', false, 5, 'valentina.diaz23@ort.edu.ar');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (34375853, 'Martín García', '1999-04-16', false, 2, 'martin.garcia88@gmail.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (23679214, 'Pedro Rodríguez', '1990-04-30', false, 5, 'pedro.rodriguez19@ort.edu.ar');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (22131636, 'Ana García', '2001-10-29', false, 5, 'ana.garcia92@outlook.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (28436057, 'Valentina Pérez', '2003-01-19', true, 5, 'valentina.perez44@ort.edu.ar');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (28953167, 'Carlos González', '2002-09-05', false, 4, 'carlos.gonzalez11@hotmail.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (25306893, 'Joaquín Pérez', '1991-05-15', false, 5, 'joaquin.perez72@gmail.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (25994562, 'Valentina González', '1991-08-29', false, 5, 'valentina.gonzalez28@ort.edu.ar');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (40433649, 'Lucía Rodríguez', '2009-09-10', false, 2, 'lucia.rodriguez33@yahoo.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (38098556, 'Valentina Pérez', '1996-06-23', false, 4, 'valentina.perez52@gmail.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (20653531, 'María Martínez', '1995-08-29', false, 2, 'maria.martinez19@outlook.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (21943646, 'Lucía Ramírez', '1990-06-01', true, 1, 'lucia.ramirez84@hotmail.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (44558743, 'Joaquín González', '1999-06-06', true, 2, 'joaquin.gonzalez77@ort.edu.ar');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (42137564, 'Joaquín Díaz', '1998-09-06', true, 3, 'joaquin.diaz39@gmail.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (37705794, 'Martín García', '1995-10-06', true, 5, 'martin.garcia45@outlook.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (34700199, 'Valentina Sánchez', '1992-02-04', true, 2, 'valentina.sanchez14@hotmail.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (24641643, 'Valentina Gomez', '1993-08-24', true, 1, 'valentina.g@yahoo.com');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (27539591, 'María Gomez', '2000-07-17', true, 5, 'maria.gomez@ort.edu.ar');
INSERT INTO public."ALUMNO" (dni, nombre, fecha_nac, genero, curso_id, email) VALUES (44492422, 'Lucía Gomez', '1996-12-12', false, 3, 'luciag55@yahoo.com');


--
-- TOC entry 3387 (class 0 OID 32859)
-- Dependencies: 227
-- Data for Name: CURSO; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public."CURSO" (id, nombre, "año", letra, especialidad) VALUES (1, '4A', 4, 'A', 'NR');
INSERT INTO public."CURSO" (id, nombre, "año", letra, especialidad) VALUES (2, '4C', 4, 'C', 'NR');
INSERT INTO public."CURSO" (id, nombre, "año", letra, especialidad) VALUES (3, '3A', 3, 'A', 'NR');
INSERT INTO public."CURSO" (id, nombre, "año", letra, especialidad) VALUES (4, '5B', 5, 'B', 'ME');
INSERT INTO public."CURSO" (id, nombre, "año", letra, especialidad) VALUES (5, '3A', 3, 'A', 'ME');


--
-- TOC entry 3388 (class 0 OID 32864)
-- Dependencies: 228
-- Data for Name: CURSOMATERIA; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (1, 1, 5);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (2, 1, 6);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (3, 1, 7);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (4, 1, 1);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (5, 1, 2);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (6, 2, 6);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (7, 2, 8);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (8, 2, 4);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (9, 2, 5);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (10, 2, 1);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (11, 3, 3);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (12, 3, 8);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (13, 3, 1);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (14, 3, 2);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (15, 3, 5);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (16, 4, 1);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (17, 4, 3);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (18, 4, 4);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (19, 4, 2);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (20, 4, 6);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (21, 5, 8);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (22, 5, 3);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (23, 5, 7);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (24, 5, 6);
INSERT INTO public."CURSOMATERIA" (id, curso_id, materia_id) VALUES (25, 5, 2);


--
-- TOC entry 3391 (class 0 OID 32869)
-- Dependencies: 231
-- Data for Name: ESPECIALIDAD; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public."ESPECIALIDAD" (codigo, descripcion) VALUES ('NR', 'TIC');
INSERT INTO public."ESPECIALIDAD" (codigo, descripcion) VALUES ('DI', 'Diseño');
INSERT INTO public."ESPECIALIDAD" (codigo, descripcion) VALUES ('ME', 'Medios');


--
-- TOC entry 3392 (class 0 OID 32874)
-- Dependencies: 232
-- Data for Name: MATERIA; Type: TABLE DATA; Schema: public; Owner: bd-ort-2025_owner
--

INSERT INTO public."MATERIA" (id, nombre) VALUES (1, 'Arte 3D');
INSERT INTO public."MATERIA" (id, nombre) VALUES (2, 'Unity');
INSERT INTO public."MATERIA" (id, nombre) VALUES (3, 'Física');
INSERT INTO public."MATERIA" (id, nombre) VALUES (4, 'Software');
INSERT INTO public."MATERIA" (id, nombre) VALUES (5, 'Hardware');
INSERT INTO public."MATERIA" (id, nombre) VALUES (6, 'Marketing');
INSERT INTO public."MATERIA" (id, nombre) VALUES (7, 'Matemática');
INSERT INTO public."MATERIA" (id, nombre) VALUES (8, 'Historia');


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 229
-- Name: CURSOMATERIA_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bd-ort-2025_owner
--

SELECT pg_catalog.setval('public."CURSOMATERIA_id_seq"', 1, false);


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 230
-- Name: CURSO_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bd-ort-2025_owner
--

SELECT pg_catalog.setval('public."CURSO_id_seq"', 1, false);


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 233
-- Name: MATERIA_id_seq; Type: SEQUENCE SET; Schema: public; Owner: bd-ort-2025_owner
--

SELECT pg_catalog.setval('public."MATERIA_id_seq"', 1, false);


--
-- TOC entry 3228 (class 2606 OID 32884)
-- Name: ALUMNO ALUMNO_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."ALUMNO"
    ADD CONSTRAINT "ALUMNO_pkey" PRIMARY KEY (dni);


--
-- TOC entry 3232 (class 2606 OID 32886)
-- Name: CURSOMATERIA CURSOMATERIA_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."CURSOMATERIA"
    ADD CONSTRAINT "CURSOMATERIA_pkey" PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 32888)
-- Name: CURSO CURSO_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."CURSO"
    ADD CONSTRAINT "CURSO_pkey" PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 32890)
-- Name: ESPECIALIDAD ESPECIALIDAD_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."ESPECIALIDAD"
    ADD CONSTRAINT "ESPECIALIDAD_pkey" PRIMARY KEY (codigo);


--
-- TOC entry 3236 (class 2606 OID 32892)
-- Name: MATERIA MATERIA_pkey; Type: CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."MATERIA"
    ADD CONSTRAINT "MATERIA_pkey" PRIMARY KEY (id);


--
-- TOC entry 3237 (class 2606 OID 32893)
-- Name: ALUMNO curso; Type: FK CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."ALUMNO"
    ADD CONSTRAINT curso FOREIGN KEY (curso_id) REFERENCES public."CURSO"(id) NOT VALID;


--
-- TOC entry 3239 (class 2606 OID 32898)
-- Name: CURSOMATERIA curso; Type: FK CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."CURSOMATERIA"
    ADD CONSTRAINT curso FOREIGN KEY (curso_id) REFERENCES public."CURSO"(id) NOT VALID;


--
-- TOC entry 3238 (class 2606 OID 32903)
-- Name: CURSO especialidad; Type: FK CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."CURSO"
    ADD CONSTRAINT especialidad FOREIGN KEY (especialidad) REFERENCES public."ESPECIALIDAD"(codigo) NOT VALID;


--
-- TOC entry 3240 (class 2606 OID 32908)
-- Name: CURSOMATERIA materia; Type: FK CONSTRAINT; Schema: public; Owner: bd-ort-2025_owner
--

ALTER TABLE ONLY public."CURSOMATERIA"
    ADD CONSTRAINT materia FOREIGN KEY (materia_id) REFERENCES public."MATERIA"(id) NOT VALID;


 
