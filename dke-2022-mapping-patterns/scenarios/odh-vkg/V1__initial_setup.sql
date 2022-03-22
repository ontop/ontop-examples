--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg18.04+1)

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

--
-- Name: AspNetRoles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AspNetRoles" (
    "Id" character varying(128) NOT NULL,
    "Name" character varying(256) NOT NULL
);


--
-- Name: AspNetUserClaims; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AspNetUserClaims" (
    "Id" integer NOT NULL,
    "ClaimType" character varying(256),
    "ClaimValue" character varying(256),
    "UserId" character varying(128) NOT NULL
);


--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."AspNetUserClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."AspNetUserClaims_Id_seq" OWNED BY public."AspNetUserClaims"."Id";


--
-- Name: AspNetUserLogins; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AspNetUserLogins" (
    "UserId" character varying(128) NOT NULL,
    "LoginProvider" character varying(128) NOT NULL,
    "ProviderKey" character varying(128) NOT NULL
);


--
-- Name: AspNetUserRoles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AspNetUserRoles" (
    "UserId" character varying(128) NOT NULL,
    "RoleId" character varying(128) NOT NULL
);


--
-- Name: AspNetUsers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."AspNetUsers" (
    "Id" character varying(128) NOT NULL,
    "UserName" character varying(256) NOT NULL,
    "PasswordHash" character varying(256),
    "SecurityStamp" character varying(256),
    "Email" character varying(256) DEFAULT NULL::character varying,
    "EmailConfirmed" boolean DEFAULT false NOT NULL
);


--
-- Name: accommodationfeatures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accommodationfeatures (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: accommodationrooms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accommodationrooms (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: accommodationroomsopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accommodationroomsopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: accommodations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accommodations (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: accommodationsopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accommodationsopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: accommodationtypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accommodationtypes (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: accothemesmobiles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accothemesmobiles (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: activities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.activities (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: activitiesopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.activitiesopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: activitytypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.activitytypes (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: alpinebits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.alpinebits (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: appmessages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.appmessages (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: appsuggestions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.appsuggestions (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: areas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.areas (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: articles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.articles (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: articlesopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.articlesopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: articletypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.articletypes (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: districts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.districts (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: districtsopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.districtsopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: eventeuracnoi; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.eventeuracnoi (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.events (
    id character varying(50) NOT NULL,
    data jsonb,
    latitude double precision,
    longitude double precision,
    begindate timestamp without time zone,
    enddate timestamp without time zone,
    nextbegindate timestamp without time zone
);


--
-- Name: eventsopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.eventsopen (
    id character varying(50) NOT NULL,
    data jsonb,
    latitude double precision,
    longitude double precision,
    begindate timestamp without time zone,
    enddate timestamp without time zone,
    nextbegindate timestamp without time zone
);


--
-- Name: eventtypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.eventtypes (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: experienceareas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.experienceareas (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: experienceareasopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.experienceareasopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: gastronomies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gastronomies (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: gastronomiesopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gastronomiesopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: gastronomytypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gastronomytypes (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: ltstaggingtypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ltstaggingtypes (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: marketinggroups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.marketinggroups (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: measuringpoints; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.measuringpoints (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: metaregions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.metaregions (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: metaregionsopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.metaregionsopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: mobilehtmls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mobilehtmls (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: municipalities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.municipalities (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: municipalitiesopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.municipalitiesopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: natureparks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.natureparks (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: odhactivitypoimetainfos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.odhactivitypoimetainfos (
    id character varying(100) NOT NULL,
    data jsonb
);


--
-- Name: packages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.packages (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: pois; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pois (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: poisopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.poisopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: poitypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.poitypes (
    id character varying(100) NOT NULL,
    data jsonb
);


--
-- Name: regions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.regions (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: regionsopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.regionsopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: skiareas; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skiareas (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: skiareasopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skiareasopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: skiregions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skiregions (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: skiregionsopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skiregionsopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: smgpois; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.smgpois (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: smgpoismobilefilters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.smgpoismobilefilters (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: smgpoismobiletypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.smgpoismobiletypes (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: smgpoisopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.smgpoisopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: smgpoitypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.smgpoitypes (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: smgtags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.smgtags (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: suedtiroltypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.suedtiroltypes (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: tripplaners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tripplaners (
    id character varying(100) NOT NULL,
    data jsonb
);


--
-- Name: tutorials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tutorials (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: tvs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tvs (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: tvsopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tvsopen (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: userdevices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.userdevices (
    id character varying(100) NOT NULL,
    data jsonb
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id character varying(100) NOT NULL,
    data jsonb
);


--
-- Name: webcams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.webcams (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: webcamsopen; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.webcamsopen (
    id character varying(100) NOT NULL,
    data jsonb
);


--
-- Name: wines; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wines (
    id character varying(50) NOT NULL,
    data jsonb
);


--
-- Name: AspNetUserClaims Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetUserClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."AspNetUserClaims_Id_seq"'::regclass);


--
-- Name: AspNetRoles AspNetRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetRoles"
    ADD CONSTRAINT "AspNetRoles_pkey" PRIMARY KEY ("Id");


--
-- Name: AspNetUserClaims AspNetUserClaims_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "AspNetUserClaims_pkey" PRIMARY KEY ("Id");


--
-- Name: AspNetUserLogins AspNetUserLogins_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "AspNetUserLogins_pkey" PRIMARY KEY ("UserId", "LoginProvider", "ProviderKey");


--
-- Name: AspNetUserRoles AspNetUserRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "AspNetUserRoles_pkey" PRIMARY KEY ("UserId", "RoleId");


--
-- Name: AspNetUsers AspNetUsers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetUsers"
    ADD CONSTRAINT "AspNetUsers_pkey" PRIMARY KEY ("Id");


--
-- Name: accommodationfeatures accommodationfeatures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accommodationfeatures
    ADD CONSTRAINT accommodationfeatures_pkey PRIMARY KEY (id);


--
-- Name: accommodationrooms accommodationrooms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accommodationrooms
    ADD CONSTRAINT accommodationrooms_pkey PRIMARY KEY (id);


--
-- Name: accommodationroomsopen accommodationroomsopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accommodationroomsopen
    ADD CONSTRAINT accommodationroomsopen_pkey PRIMARY KEY (id);


--
-- Name: accommodations accommodations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accommodations
    ADD CONSTRAINT accommodations_pkey PRIMARY KEY (id);


--
-- Name: accommodationsopen accommodationsopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accommodationsopen
    ADD CONSTRAINT accommodationsopen_pkey PRIMARY KEY (id);


--
-- Name: accommodationtypes accommodationtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accommodationtypes
    ADD CONSTRAINT accommodationtypes_pkey PRIMARY KEY (id);


--
-- Name: accothemesmobiles accothemesmobiles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accothemesmobiles
    ADD CONSTRAINT accothemesmobiles_pkey PRIMARY KEY (id);


--
-- Name: activities activities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);


--
-- Name: activitiesopen activitiesopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.activitiesopen
    ADD CONSTRAINT activitiesopen_pkey PRIMARY KEY (id);


--
-- Name: activitytypes activitytypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.activitytypes
    ADD CONSTRAINT activitytypes_pkey PRIMARY KEY (id);


--
-- Name: alpinebits alpinebits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alpinebits
    ADD CONSTRAINT alpinebits_pkey PRIMARY KEY (id);


--
-- Name: appmessages appmessages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appmessages
    ADD CONSTRAINT appmessages_pkey PRIMARY KEY (id);


--
-- Name: appsuggestions appsuggestions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appsuggestions
    ADD CONSTRAINT appsuggestions_pkey PRIMARY KEY (id);


--
-- Name: areas areas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.areas
    ADD CONSTRAINT areas_pkey PRIMARY KEY (id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: articlesopen articlesopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articlesopen
    ADD CONSTRAINT articlesopen_pkey PRIMARY KEY (id);


--
-- Name: articletypes articletypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articletypes
    ADD CONSTRAINT articletypes_pkey PRIMARY KEY (id);


--
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- Name: districtsopen districtsopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.districtsopen
    ADD CONSTRAINT districtsopen_pkey PRIMARY KEY (id);


--
-- Name: eventeuracnoi eventeuracnoi_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eventeuracnoi
    ADD CONSTRAINT eventeuracnoi_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: eventsopen eventsopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eventsopen
    ADD CONSTRAINT eventsopen_pkey PRIMARY KEY (id);


--
-- Name: eventtypes eventtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eventtypes
    ADD CONSTRAINT eventtypes_pkey PRIMARY KEY (id);


--
-- Name: experienceareas experienceareas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.experienceareas
    ADD CONSTRAINT experienceareas_pkey PRIMARY KEY (id);


--
-- Name: experienceareasopen experienceareasopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.experienceareasopen
    ADD CONSTRAINT experienceareasopen_pkey PRIMARY KEY (id);


--
-- Name: gastronomies gastronomies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gastronomies
    ADD CONSTRAINT gastronomies_pkey PRIMARY KEY (id);


--
-- Name: gastronomiesopen gastronomiesopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gastronomiesopen
    ADD CONSTRAINT gastronomiesopen_pkey PRIMARY KEY (id);


--
-- Name: gastronomytypes gastronomytypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gastronomytypes
    ADD CONSTRAINT gastronomytypes_pkey PRIMARY KEY (id);


--
-- Name: ltstaggingtypes ltstaggingtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ltstaggingtypes
    ADD CONSTRAINT ltstaggingtypes_pkey PRIMARY KEY (id);


--
-- Name: marketinggroups marketinggroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.marketinggroups
    ADD CONSTRAINT marketinggroups_pkey PRIMARY KEY (id);


--
-- Name: measuringpoints measuringpoints_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.measuringpoints
    ADD CONSTRAINT measuringpoints_pkey PRIMARY KEY (id);


--
-- Name: metaregions metaregions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.metaregions
    ADD CONSTRAINT metaregions_pkey PRIMARY KEY (id);


--
-- Name: metaregionsopen metaregionsopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.metaregionsopen
    ADD CONSTRAINT metaregionsopen_pkey PRIMARY KEY (id);


--
-- Name: mobilehtmls mobilehtmls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mobilehtmls
    ADD CONSTRAINT mobilehtmls_pkey PRIMARY KEY (id);


--
-- Name: municipalities municipalities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.municipalities
    ADD CONSTRAINT municipalities_pkey PRIMARY KEY (id);


--
-- Name: municipalitiesopen municipalitiesopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.municipalitiesopen
    ADD CONSTRAINT municipalitiesopen_pkey PRIMARY KEY (id);


--
-- Name: natureparks natureparks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.natureparks
    ADD CONSTRAINT natureparks_pkey PRIMARY KEY (id);


--
-- Name: odhactivitypoimetainfos odhactivitypoimetainfos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.odhactivitypoimetainfos
    ADD CONSTRAINT odhactivitypoimetainfos_pkey PRIMARY KEY (id);


--
-- Name: packages packages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_pkey PRIMARY KEY (id);


--
-- Name: pois pois_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pois
    ADD CONSTRAINT pois_pkey PRIMARY KEY (id);


--
-- Name: poisopen poisopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poisopen
    ADD CONSTRAINT poisopen_pkey PRIMARY KEY (id);


--
-- Name: poitypes poitypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poitypes
    ADD CONSTRAINT poitypes_pkey PRIMARY KEY (id);


--
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: regionsopen regionsopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.regionsopen
    ADD CONSTRAINT regionsopen_pkey PRIMARY KEY (id);


--
-- Name: skiareas skiareas_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skiareas
    ADD CONSTRAINT skiareas_pkey PRIMARY KEY (id);


--
-- Name: skiareasopen skiareasopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skiareasopen
    ADD CONSTRAINT skiareasopen_pkey PRIMARY KEY (id);


--
-- Name: skiregions skiregions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skiregions
    ADD CONSTRAINT skiregions_pkey PRIMARY KEY (id);


--
-- Name: skiregionsopen skiregionsopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skiregionsopen
    ADD CONSTRAINT skiregionsopen_pkey PRIMARY KEY (id);


--
-- Name: smgpois smgpois_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.smgpois
    ADD CONSTRAINT smgpois_pkey PRIMARY KEY (id);


--
-- Name: smgpoismobilefilters smgpoismobilefilters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.smgpoismobilefilters
    ADD CONSTRAINT smgpoismobilefilters_pkey PRIMARY KEY (id);


--
-- Name: smgpoismobiletypes smgpoismobiletypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.smgpoismobiletypes
    ADD CONSTRAINT smgpoismobiletypes_pkey PRIMARY KEY (id);


--
-- Name: smgpoisopen smgpoisopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.smgpoisopen
    ADD CONSTRAINT smgpoisopen_pkey PRIMARY KEY (id);


--
-- Name: smgpoitypes smgpoitypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.smgpoitypes
    ADD CONSTRAINT smgpoitypes_pkey PRIMARY KEY (id);


--
-- Name: smgtags smgtags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.smgtags
    ADD CONSTRAINT smgtags_pkey PRIMARY KEY (id);


--
-- Name: suedtiroltypes suedtiroltypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suedtiroltypes
    ADD CONSTRAINT suedtiroltypes_pkey PRIMARY KEY (id);


--
-- Name: tripplaners tripplaners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tripplaners
    ADD CONSTRAINT tripplaners_pkey PRIMARY KEY (id);


--
-- Name: tutorials tutorials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tutorials
    ADD CONSTRAINT tutorials_pkey PRIMARY KEY (id);


--
-- Name: tvs tvs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tvs
    ADD CONSTRAINT tvs_pkey PRIMARY KEY (id);


--
-- Name: tvsopen tvsopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tvsopen
    ADD CONSTRAINT tvsopen_pkey PRIMARY KEY (id);


--
-- Name: userdevices userdevices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userdevices
    ADD CONSTRAINT userdevices_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: webcams webcams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.webcams
    ADD CONSTRAINT webcams_pkey PRIMARY KEY (id);


--
-- Name: webcamsopen webcamsopen_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.webcamsopen
    ADD CONSTRAINT webcamsopen_pkey PRIMARY KEY (id);


--
-- Name: wines wines_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wines
    ADD CONSTRAINT wines_pkey PRIMARY KEY (id);


--
-- Name: IX_AspNetUserClaims_UserId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_AspNetUserClaims_UserId" ON public."AspNetUserClaims" USING btree ("UserId");


--
-- Name: IX_AspNetUserLogins_UserId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_AspNetUserLogins_UserId" ON public."AspNetUserLogins" USING btree ("UserId");


--
-- Name: IX_AspNetUserRoles_RoleId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_AspNetUserRoles_RoleId" ON public."AspNetUserRoles" USING btree ("RoleId");


--
-- Name: IX_AspNetUserRoles_UserId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_AspNetUserRoles_UserId" ON public."AspNetUserRoles" USING btree ("UserId");


--
-- Name: accoearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: accoopenearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: accoopenshortnamebtreeix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX accoopenshortnamebtreeix ON public.accommodationsopen USING btree (((data ->> 'Shortname'::text)));


--
-- Name: accoroomsa0ridbtreeix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX accoroomsa0ridbtreeix ON public.accommodationrooms USING btree (((data ->> 'A0RID'::text)));


--
-- Name: accoroomsopena0ridbtreeix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX accoroomsopena0ridbtreeix ON public.accommodationroomsopen USING btree (((data ->> 'A0RID'::text)));


--
-- Name: accosginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX accosginix ON public.accommodations USING gin (data);


--
-- Name: accoshortnamebtreeix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX accoshortnamebtreeix ON public.accommodations USING btree (((data ->> 'Shortname'::text)));


--
-- Name: accosopenginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX accosopenginix ON public.accommodationsopen USING gin (data);


--
-- Name: activitiesearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: activitiesginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX activitiesginix ON public.activities USING gin (data);


--
-- Name: activitiesopenearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: activitiesopenginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX activitiesopenginix ON public.activitiesopen USING gin (data);


--
-- Name: articlesginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articlesginix ON public.articles USING gin (data);


--
-- Name: articlesopenginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX articlesopenginix ON public.articlesopen USING gin (data);


--
-- Name: eventeuracnoiginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX eventeuracnoiginix ON public.eventeuracnoi USING gin (data);


--
-- Name: eventsearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: eventsginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX eventsginix ON public.events USING gin (data);


--
-- Name: eventsopenearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: eventsopenginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX eventsopenginix ON public.eventsopen USING gin (data);


--
-- Name: gastronomiesearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: gastronomiesginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX gastronomiesginix ON public.gastronomies USING gin (data);


--
-- Name: gastronomiesopenearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: gastronomiesopenginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX gastronomiesopenginix ON public.gastronomiesopen USING gin (data);


--
-- Name: packagesginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX packagesginix ON public.packages USING gin (data);


--
-- Name: poisearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: poisginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX poisginix ON public.pois USING gin (data);


--
-- Name: poisopenearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: poisopenginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX poisopenginix ON public.poisopen USING gin (data);


--
-- Name: smgpoiopensginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX smgpoiopensginix ON public.smgpoisopen USING gin (data);


--
-- Name: smgpoisearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: smgpoisginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX smgpoisginix ON public.smgpois USING gin (data);


--
-- Name: smgpoisopenearthix; Type: INDEX; Schema: public; Owner: -
--



--
-- Name: smgtagsginix; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX smgtagsginix ON public.smgtags USING gin (data);


--
-- Name: AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_User_Id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_User_Id" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

