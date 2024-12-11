--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Postgres.app)
-- Dumped by pg_dump version 17.2 (Postgres.app)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: asignaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.asignaciones (
    asignacion_id integer NOT NULL,
    empleado_id integer,
    proyecto_id integer,
    horas_asignadas integer
);


ALTER TABLE public.asignaciones OWNER TO postgres;

--
-- Name: asignaciones_asignacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.asignaciones_asignacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.asignaciones_asignacion_id_seq OWNER TO postgres;

--
-- Name: asignaciones_asignacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.asignaciones_asignacion_id_seq OWNED BY public.asignaciones.asignacion_id;


--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamentos (
    departamento_id integer NOT NULL,
    nombre_departamento character varying(100),
    ubicacion character varying(100)
);


ALTER TABLE public.departamentos OWNER TO postgres;

--
-- Name: departamentos_departamento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamentos_departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departamentos_departamento_id_seq OWNER TO postgres;

--
-- Name: departamentos_departamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamentos_departamento_id_seq OWNED BY public.departamentos.departamento_id;


--
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    empleado_id integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    fecha_nacimiento date,
    email character varying(100),
    salario numeric(10,2)
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- Name: empleados_empleado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleados_empleado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleados_empleado_id_seq OWNER TO postgres;

--
-- Name: empleados_empleado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleados_empleado_id_seq OWNED BY public.empleados.empleado_id;


--
-- Name: proyectos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proyectos (
    proyecto_id integer NOT NULL,
    nombre_proyecto character varying(100),
    fecha_inicio date,
    fecha_fin date,
    presupuesto numeric(15,2)
);


ALTER TABLE public.proyectos OWNER TO postgres;

--
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proyectos_proyecto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proyectos_proyecto_id_seq OWNER TO postgres;

--
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proyectos_proyecto_id_seq OWNED BY public.proyectos.proyecto_id;


--
-- Name: asignaciones asignacion_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignaciones ALTER COLUMN asignacion_id SET DEFAULT nextval('public.asignaciones_asignacion_id_seq'::regclass);


--
-- Name: departamentos departamento_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN departamento_id SET DEFAULT nextval('public.departamentos_departamento_id_seq'::regclass);


--
-- Name: empleados empleado_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados ALTER COLUMN empleado_id SET DEFAULT nextval('public.empleados_empleado_id_seq'::regclass);


--
-- Name: proyectos proyecto_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyectos ALTER COLUMN proyecto_id SET DEFAULT nextval('public.proyectos_proyecto_id_seq'::regclass);


--
-- Data for Name: asignaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.asignaciones (asignacion_id, empleado_id, proyecto_id, horas_asignadas) FROM stdin;
\.


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamentos (departamento_id, nombre_departamento, ubicacion) FROM stdin;
\.


--
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (empleado_id, nombre, apellido, fecha_nacimiento, email, salario) FROM stdin;
\.


--
-- Data for Name: proyectos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proyectos (proyecto_id, nombre_proyecto, fecha_inicio, fecha_fin, presupuesto) FROM stdin;
\.


--
-- Name: asignaciones_asignacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.asignaciones_asignacion_id_seq', 1, false);


--
-- Name: departamentos_departamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamentos_departamento_id_seq', 1, false);


--
-- Name: empleados_empleado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleados_empleado_id_seq', 1, false);


--
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proyectos_proyecto_id_seq', 1, false);


--
-- Name: asignaciones asignaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignaciones
    ADD CONSTRAINT asignaciones_pkey PRIMARY KEY (asignacion_id);


--
-- Name: departamentos departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (departamento_id);


--
-- Name: empleados empleados_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_email_key UNIQUE (email);


--
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (empleado_id);


--
-- Name: proyectos proyectos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proyectos
    ADD CONSTRAINT proyectos_pkey PRIMARY KEY (proyecto_id);


--
-- Name: asignaciones asignaciones_empleado_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignaciones
    ADD CONSTRAINT asignaciones_empleado_id_fkey FOREIGN KEY (empleado_id) REFERENCES public.empleados(empleado_id);


--
-- Name: asignaciones asignaciones_proyecto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.asignaciones
    ADD CONSTRAINT asignaciones_proyecto_id_fkey FOREIGN KEY (proyecto_id) REFERENCES public.proyectos(proyecto_id);


--
-- PostgreSQL database dump complete
--

