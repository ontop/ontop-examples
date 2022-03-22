--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: grid_in_south_tyrol; Type: TABLE; Schema: public; Owner: ding
--

CREATE TABLE public.grid_in_south_tyrol (
    gid integer NOT NULL,
    id bigint,
    __xmin numeric,
    __xmax numeric,
    ymin numeric,
    ymax numeric,
    geom public.geometry(MultiPolygon,3044)
);


ALTER TABLE public.grid_in_south_tyrol OWNER TO ding;

--
-- Name: grid_in_south_tyrol_gid_seq; Type: SEQUENCE; Schema: public; Owner: ding
--

CREATE SEQUENCE public.grid_in_south_tyrol_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grid_in_south_tyrol_gid_seq OWNER TO ding;

--
-- Name: grid_in_south_tyrol_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ding
--

ALTER SEQUENCE public.grid_in_south_tyrol_gid_seq OWNED BY public.grid_in_south_tyrol.gid;


--
-- Name: grids_precipitation; Type: TABLE; Schema: public; Owner: ding
--

CREATE TABLE public.grids_precipitation (
    id bigint NOT NULL,
    date date NOT NULL,
    precipitation double precision
);


ALTER TABLE public.grids_precipitation OWNER TO ding;

--
-- Name: interpolated_precipitation; Type: TABLE; Schema: public; Owner: ding
--

CREATE TABLE public.interpolated_precipitation (
    traffic_station_id character varying,
    date date,
    precipitation double precision
);


ALTER TABLE public.interpolated_precipitation OWNER TO ding;

--
-- Name: meteo_measurements; Type: TABLE; Schema: public; Owner: ding
--

CREATE TABLE public.meteo_measurements (
    station_code character varying NOT NULL,
    date date NOT NULL,
    precipitation_mm double precision,
    temperature_max double precision,
    temperature_min double precision
);


ALTER TABLE public.meteo_measurements OWNER TO ding;

--
-- Name: meteo_stations; Type: TABLE; Schema: public; Owner: ding
--

CREATE TABLE public.meteo_stations (
    gid integer NOT NULL,
    scode character varying(254),
    name_d character varying(254),
    name_i character varying(254),
    name_l character varying(254),
    name_e character varying(254),
    alt numeric,
    long numeric,
    lat numeric,
    geom public.geometry(Point,3044)
);


ALTER TABLE public.meteo_stations OWNER TO ding;

--
-- Name: meteo_stations_gid_seq; Type: SEQUENCE; Schema: public; Owner: ding
--

CREATE SEQUENCE public.meteo_stations_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteo_stations_gid_seq OWNER TO ding;

--
-- Name: meteo_stations_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ding
--

ALTER SEQUENCE public.meteo_stations_gid_seq OWNED BY public.meteo_stations.gid;


--
-- Name: municipalities; Type: TABLE; Schema: public; Owner: ding
--

CREATE TABLE public.municipalities (
    gid integer NOT NULL,
    objectid integer,
    gem_id integer,
    name_i character varying(254),
    name_d character varying(254),
    name_l character varying(254),
    istat_code integer,
    area numeric,
    shape character varying(254),
    geom public.geometry(MultiPolygonZM,3044)
);


ALTER TABLE public.municipalities OWNER TO ding;

--
-- Name: municipalities_gid_seq; Type: SEQUENCE; Schema: public; Owner: ding
--

CREATE SEQUENCE public.municipalities_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipalities_gid_seq OWNER TO ding;

--
-- Name: municipalities_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ding
--

ALTER SEQUENCE public.municipalities_gid_seq OWNED BY public.municipalities.gid;


--
-- Name: traffic_counters; Type: TABLE; Schema: public; Owner: ding
--

CREATE TABLE public.traffic_counters (
    gid integer NOT NULL,
    trst_id numeric,
    trst_road_ character varying(254),
    trst_roa00 character varying(254),
    trst_place character varying(254),
    trst_pla00 character varying(254),
    trst_direc character varying(254),
    trst_dir00 character varying(254),
    trst_dir01 character varying(254),
    trst_dir02 character varying(254),
    trst_name character varying(254),
    trst_descr character varying(254),
    trst_des00 character varying(254),
    trst_km_po numeric,
    trst_wege numeric,
    trst_shape character varying(254),
    trst_inter character varying(254),
    trst_type numeric,
    trst_exter character varying(254),
    trst_stree character varying(254),
    trst_str00 character varying(254),
    trst_notes character varying(254),
    geom public.geometry(PointZM,3044),
    grid_id bigint
);


ALTER TABLE public.traffic_counters OWNER TO ding;

--
-- Name: traffic_speed; Type: TABLE; Schema: public; Owner: ding
--

CREATE TABLE public.traffic_speed (
    station_code character varying(254) NOT NULL,
    str_num character varying,
    station_name character varying,
    date date NOT NULL,
    speed double precision,
    motorcycles double precision,
    cars_and_small_vans double precision,
    cars_and_small_vans_with_trailers double precision,
    vans_and_minibuses double precision,
    light_trucks double precision,
    heavy_trucks double precision,
    tractors_and_trucks double precision,
    articulated_trucks double precision,
    buses double precision
);


ALTER TABLE public.traffic_speed OWNER TO ding;

--
-- Name: traffic_volume; Type: TABLE; Schema: public; Owner: ding
--

CREATE TABLE public.traffic_volume (
    station_code character varying(254),
    str_num character varying,
    station_name character varying,
    date date,
    daily_volume integer,
    motorcycles integer,
    cars_and_small_vans integer,
    cars_and_small_vans_with_trailers integer,
    vans_and_minibuses integer,
    light_trucks integer,
    heavy_trucks integer,
    tractors_and_trucks integer,
    articulated_trucks integer,
    buses integer
);


ALTER TABLE public.traffic_volume OWNER TO ding;

--
-- Name: trafficcounters_gid_seq; Type: SEQUENCE; Schema: public; Owner: ding
--

CREATE SEQUENCE public.trafficcounters_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trafficcounters_gid_seq OWNER TO ding;

--
-- Name: trafficcounters_gid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ding
--

ALTER SEQUENCE public.trafficcounters_gid_seq OWNED BY public.traffic_counters.gid;


--
-- Name: grid_in_south_tyrol gid; Type: DEFAULT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.grid_in_south_tyrol ALTER COLUMN gid SET DEFAULT nextval('public.grid_in_south_tyrol_gid_seq'::regclass);


--
-- Name: meteo_stations gid; Type: DEFAULT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.meteo_stations ALTER COLUMN gid SET DEFAULT nextval('public.meteo_stations_gid_seq'::regclass);


--
-- Name: municipalities gid; Type: DEFAULT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.municipalities ALTER COLUMN gid SET DEFAULT nextval('public.municipalities_gid_seq'::regclass);


--
-- Name: traffic_counters gid; Type: DEFAULT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.traffic_counters ALTER COLUMN gid SET DEFAULT nextval('public.trafficcounters_gid_seq'::regclass);

--
-- Name: grid_in_south_tyrol_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: ding
--

SELECT pg_catalog.setval('public.grid_in_south_tyrol_gid_seq', 7793, true);


--
-- Name: meteo_stations_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: ding
--

SELECT pg_catalog.setval('public.meteo_stations_gid_seq', 103, true);


--
-- Name: municipalities_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: ding
--

SELECT pg_catalog.setval('public.municipalities_gid_seq', 116, true);


--
-- Name: trafficcounters_gid_seq; Type: SEQUENCE SET; Schema: public; Owner: ding
--

SELECT pg_catalog.setval('public.trafficcounters_gid_seq', 93, true);


--
-- Name: grid_in_south_tyrol grid_in_south_tyrol_id_pk; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.grid_in_south_tyrol
    ADD CONSTRAINT grid_in_south_tyrol_id_pk UNIQUE (id);


--
-- Name: grid_in_south_tyrol grid_in_south_tyrol_pkey; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.grid_in_south_tyrol
    ADD CONSTRAINT grid_in_south_tyrol_pkey PRIMARY KEY (gid);


--
-- Name: grids_precipitation grids_precipitation_id_date_pk; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.grids_precipitation
    ADD CONSTRAINT grids_precipitation_id_date_pk PRIMARY KEY (id, date);


--
-- Name: meteo_measurements meteo_measurements_station_code_date_pk; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.meteo_measurements
    ADD CONSTRAINT meteo_measurements_station_code_date_pk PRIMARY KEY (station_code, date);


--
-- Name: meteo_stations meteo_stations_pkey; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.meteo_stations
    ADD CONSTRAINT meteo_stations_pkey UNIQUE (gid);


--
-- Name: meteo_stations meteo_stations_scode_pk; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.meteo_stations
    ADD CONSTRAINT meteo_stations_scode_pk UNIQUE (scode);


--
-- Name: municipalities municipalities_istat_code_key; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.municipalities
    ADD CONSTRAINT municipalities_istat_code_key UNIQUE (istat_code);


--
-- Name: municipalities municipalities_pkey; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.municipalities
    ADD CONSTRAINT municipalities_pkey PRIMARY KEY (gid);


--
-- Name: traffic_counters traffic_counters_trst_inter_pk; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.traffic_counters
    ADD CONSTRAINT traffic_counters_trst_inter_pk UNIQUE (trst_inter);


--
-- Name: traffic_speed traffic_speed_station_code_date_pk; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.traffic_speed
    ADD CONSTRAINT traffic_speed_station_code_date_pk PRIMARY KEY (station_code, date);


--
-- Name: traffic_volume traffic_volume_station_code_date_pk; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.traffic_volume
    ADD CONSTRAINT traffic_volume_station_code_date_pk UNIQUE (station_code, date);


--
-- Name: traffic_counters trafficcounters_pkey; Type: CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.traffic_counters
    ADD CONSTRAINT trafficcounters_pkey PRIMARY KEY (gid);


--
-- Name: idx_municipalities_geom; Type: INDEX; Schema: public; Owner: ding
--

CREATE INDEX idx_municipalities_geom ON public.municipalities USING gist (geom);


--
-- Name: idx_municipalities_name_i; Type: INDEX; Schema: public; Owner: ding
--

CREATE INDEX idx_municipalities_name_i ON public.municipalities USING btree (name_i);


--
-- Name: grids_precipitation grids_precipitation_grid_in_south_tyrol_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.grids_precipitation
    ADD CONSTRAINT grids_precipitation_grid_in_south_tyrol_id_fk FOREIGN KEY (id) REFERENCES public.grid_in_south_tyrol(id);


--
-- Name: traffic_speed traffic_speed_traffic_counters_trst_inter_fk; Type: FK CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.traffic_speed
    ADD CONSTRAINT traffic_speed_traffic_counters_trst_inter_fk FOREIGN KEY (station_code) REFERENCES public.traffic_counters(trst_inter);


--
-- Name: traffic_volume traffic_volume_traffic_counters_trst_inter_fk; Type: FK CONSTRAINT; Schema: public; Owner: ding
--

ALTER TABLE ONLY public.traffic_volume
    ADD CONSTRAINT traffic_volume_traffic_counters_trst_inter_fk FOREIGN KEY (station_code) REFERENCES public.traffic_counters(trst_inter);


--
-- PostgreSQL database dump complete
--
