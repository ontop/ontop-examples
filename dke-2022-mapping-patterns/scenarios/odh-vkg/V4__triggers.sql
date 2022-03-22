
DROP TABLE IF EXISTS "v_accommodationsopen";

CREATE TABLE "v_accommodationsopen" (
                                        "Id" varchar,
                                        "Beds" integer,
                                        "Units" integer,
                                        "Active" bool,
                                        "Gpstype" varchar,
                                        "HasRoom" bool,
                                        "Altitude" float,
                                        "Latitude" float,
                                        "TVMember" bool,
                                        "IsCamping" bool,
                                        "Longitude" float,
                                        "Shortname" varchar,
                                        "SmgActive" bool,
                                        "AccoTypeId" varchar,
                                        "DistrictId" varchar,
                                        "IsBookable" bool,
                                        "LastChange" varchar,
                                        "FirstImport" varchar,
                                        "GastronomyId" varchar,
                                        "HasApartment" bool,
                                        "IsGastronomy" bool,
                                        "MainLanguage" varchar,
                                        "TrustYouScore" float,
                                        "TrustYouState" integer,
                                        "AccoCategoryId" varchar,
                                        "Representation" integer,
                                        "TrustYouActive" bool,
                                        "IsAccommodation" bool,
                                        "TourismVereinId" varchar,
                                        "TrustYouResults" integer,
                                        "AltitudeUnitofMeasure" varchar,
                                        "AccoDetail-de-Fax" varchar,
                                        "AccoDetail-de-Zip" varchar,
                                        "AccoDetail-de-City" varchar,
                                        "AccoDetail-de-Name" varchar,
                                        "AccoDetail-de-Email" varchar,
                                        "AccoDetail-de-Phone" varchar,
                                        "AccoDetail-de-Mobile" varchar,
                                        "AccoDetail-de-Street" varchar,
                                        "AccoDetail-de-Language" varchar,
                                        "AccoDetail-de-Lastname" varchar,
                                        "AccoDetail-de-Firstname" varchar,
                                        "AccoDetail-de-NameAddition" varchar,
                                        "AccoDetail-en-Fax" varchar,
                                        "AccoDetail-en-Zip" varchar,
                                        "AccoDetail-en-City" varchar,
                                        "AccoDetail-en-Name" varchar,
                                        "AccoDetail-en-Email" varchar,
                                        "AccoDetail-en-Phone" varchar,
                                        "AccoDetail-en-Mobile" varchar,
                                        "AccoDetail-en-Street" varchar,
                                        "AccoDetail-en-Language" varchar,
                                        "AccoDetail-en-Lastname" varchar,
                                        "AccoDetail-en-Firstname" varchar,
                                        "AccoDetail-en-NameAddition" varchar,
                                        "AccoDetail-it-Fax" varchar,
                                        "AccoDetail-it-Zip" varchar,
                                        "AccoDetail-it-City" varchar,
                                        "AccoDetail-it-Name" varchar,
                                        "AccoDetail-it-Email" varchar,
                                        "AccoDetail-it-Phone" varchar,
                                        "AccoDetail-it-Mobile" varchar,
                                        "AccoDetail-it-Street" varchar,
                                        "AccoDetail-it-Language" varchar,
                                        "AccoDetail-it-Lastname" varchar,
                                        "AccoDetail-it-Longdesc" varchar,
                                        "AccoDetail-it-Firstname" varchar,
                                        "AccoDetail-it-Shortdesc" varchar,
                                        "AccoDetail-it-NameAddition" varchar,
                                        "LocationInfo-TvInfo-Id" varchar,
                                        "LocationInfo-TvInfo-Name-cs" varchar,
                                        "LocationInfo-TvInfo-Name-de" varchar,
                                        "LocationInfo-TvInfo-Name-en" varchar,
                                        "LocationInfo-TvInfo-Name-fr" varchar,
                                        "LocationInfo-TvInfo-Name-it" varchar,
                                        "LocationInfo-TvInfo-Name-nl" varchar,
                                        "LocationInfo-TvInfo-Name-pl" varchar,
                                        "LocationInfo-TvInfo-Name-ru" varchar,
                                        "LocationInfo-RegionInfo-Id" varchar,
                                        "LocationInfo-RegionInfo-Name-cs" varchar,
                                        "LocationInfo-RegionInfo-Name-de" varchar,
                                        "LocationInfo-RegionInfo-Name-en" varchar,
                                        "LocationInfo-RegionInfo-Name-fr" varchar,
                                        "LocationInfo-RegionInfo-Name-it" varchar,
                                        "LocationInfo-RegionInfo-Name-nl" varchar,
                                        "LocationInfo-RegionInfo-Name-pl" varchar,
                                        "LocationInfo-RegionInfo-Name-ru" varchar,
                                        "LocationInfo-DistrictInfo-Id" varchar,
                                        "LocationInfo-DistrictInfo-Name-cs" varchar,
                                        "LocationInfo-DistrictInfo-Name-de" varchar,
                                        "LocationInfo-DistrictInfo-Name-en" varchar,
                                        "LocationInfo-DistrictInfo-Name-fr" varchar,
                                        "LocationInfo-DistrictInfo-Name-it" varchar,
                                        "LocationInfo-DistrictInfo-Name-nl" varchar,
                                        "LocationInfo-DistrictInfo-Name-pl" varchar,
                                        "LocationInfo-DistrictInfo-Name-ru" varchar,
                                        "LocationInfo-MunicipalityInfo-Id" varchar,
                                        "LocationInfo-MunicipalityInfo-Name-cs" varchar,
                                        "LocationInfo-MunicipalityInfo-Name-de" varchar,
                                        "LocationInfo-MunicipalityInfo-Name-en" varchar,
                                        "LocationInfo-MunicipalityInfo-Name-fr" varchar,
                                        "LocationInfo-MunicipalityInfo-Name-it" varchar,
                                        "LocationInfo-MunicipalityInfo-Name-nl" varchar,
                                        "LocationInfo-MunicipalityInfo-Name-pl" varchar,
                                        "LocationInfo-MunicipalityInfo-Name-ru" varchar
);

ALTER TABLE "v_accommodationsopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_accommodationsopen_fn CASCADE;

CREATE FUNCTION v_accommodationsopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_accommodationsopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Beds' As integer) AS "Beds",
        CAST(NEW."data"->>'Units' As integer) AS "Units",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'HasRoom' As bool) AS "HasRoom",
        CAST(NEW."data"->>'Altitude' As float) AS "Altitude",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'TVMember' As bool) AS "TVMember",
        CAST(NEW."data"->>'IsCamping' As bool) AS "IsCamping",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'AccoTypeId' As varchar) AS "AccoTypeId",
        CAST(NEW."data"->>'DistrictId' As varchar) AS "DistrictId",
        CAST(NEW."data"->>'IsBookable' As bool) AS "IsBookable",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'FirstImport' As varchar) AS "FirstImport",
        CAST(NEW."data"->>'GastronomyId' As varchar) AS "GastronomyId",
        CAST(NEW."data"->>'HasApartment' As bool) AS "HasApartment",
        CAST(NEW."data"->>'IsGastronomy' As bool) AS "IsGastronomy",
        CAST(NEW."data"->>'MainLanguage' As varchar) AS "MainLanguage",
        CAST(NEW."data"->>'TrustYouScore' As float) AS "TrustYouScore",
        CAST(NEW."data"->>'TrustYouState' As integer) AS "TrustYouState",
        CAST(NEW."data"->>'AccoCategoryId' As varchar) AS "AccoCategoryId",
        CAST(NEW."data"->>'Representation' As integer) AS "Representation",
        CAST(NEW."data"->>'TrustYouActive' As bool) AS "TrustYouActive",
        CAST(NEW."data"->>'IsAccommodation' As bool) AS "IsAccommodation",
        CAST(NEW."data"->>'TourismVereinId' As varchar) AS "TourismVereinId",
        CAST(NEW."data"->>'TrustYouResults' As integer) AS "TrustYouResults",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Fax' As varchar) AS "AccoDetail-de-Fax",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Zip' As varchar) AS "AccoDetail-de-Zip",
        CAST(NEW."data"->'AccoDetail'->'de'->>'City' As varchar) AS "AccoDetail-de-City",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Name' As varchar) AS "AccoDetail-de-Name",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Email' As varchar) AS "AccoDetail-de-Email",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Phone' As varchar) AS "AccoDetail-de-Phone",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Mobile' As varchar) AS "AccoDetail-de-Mobile",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Street' As varchar) AS "AccoDetail-de-Street",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Language' As varchar) AS "AccoDetail-de-Language",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Lastname' As varchar) AS "AccoDetail-de-Lastname",
        CAST(NEW."data"->'AccoDetail'->'de'->>'Firstname' As varchar) AS "AccoDetail-de-Firstname",
        CAST(NEW."data"->'AccoDetail'->'de'->>'NameAddition' As varchar) AS "AccoDetail-de-NameAddition",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Fax' As varchar) AS "AccoDetail-en-Fax",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Zip' As varchar) AS "AccoDetail-en-Zip",
        CAST(NEW."data"->'AccoDetail'->'en'->>'City' As varchar) AS "AccoDetail-en-City",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Name' As varchar) AS "AccoDetail-en-Name",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Email' As varchar) AS "AccoDetail-en-Email",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Phone' As varchar) AS "AccoDetail-en-Phone",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Mobile' As varchar) AS "AccoDetail-en-Mobile",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Street' As varchar) AS "AccoDetail-en-Street",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Language' As varchar) AS "AccoDetail-en-Language",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Lastname' As varchar) AS "AccoDetail-en-Lastname",
        CAST(NEW."data"->'AccoDetail'->'en'->>'Firstname' As varchar) AS "AccoDetail-en-Firstname",
        CAST(NEW."data"->'AccoDetail'->'en'->>'NameAddition' As varchar) AS "AccoDetail-en-NameAddition",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Fax' As varchar) AS "AccoDetail-it-Fax",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Zip' As varchar) AS "AccoDetail-it-Zip",
        CAST(NEW."data"->'AccoDetail'->'it'->>'City' As varchar) AS "AccoDetail-it-City",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Name' As varchar) AS "AccoDetail-it-Name",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Email' As varchar) AS "AccoDetail-it-Email",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Phone' As varchar) AS "AccoDetail-it-Phone",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Mobile' As varchar) AS "AccoDetail-it-Mobile",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Street' As varchar) AS "AccoDetail-it-Street",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Language' As varchar) AS "AccoDetail-it-Language",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Lastname' As varchar) AS "AccoDetail-it-Lastname",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Longdesc' As varchar) AS "AccoDetail-it-Longdesc",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Firstname' As varchar) AS "AccoDetail-it-Firstname",
        CAST(NEW."data"->'AccoDetail'->'it'->>'Shortdesc' As varchar) AS "AccoDetail-it-Shortdesc",
        CAST(NEW."data"->'AccoDetail'->'it'->>'NameAddition' As varchar) AS "AccoDetail-it-NameAddition",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->>'Id' As varchar) AS "LocationInfo-TvInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-TvInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'de' As varchar) AS "LocationInfo-TvInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'en' As varchar) AS "LocationInfo-TvInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-TvInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'it' As varchar) AS "LocationInfo-TvInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-TvInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-TvInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-TvInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->>'Id' As varchar) AS "LocationInfo-RegionInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-RegionInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'de' As varchar) AS "LocationInfo-RegionInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'en' As varchar) AS "LocationInfo-RegionInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-RegionInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'it' As varchar) AS "LocationInfo-RegionInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-RegionInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-RegionInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-RegionInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->>'Id' As varchar) AS "LocationInfo-DistrictInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-DistrictInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'de' As varchar) AS "LocationInfo-DistrictInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'en' As varchar) AS "LocationInfo-DistrictInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-DistrictInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'it' As varchar) AS "LocationInfo-DistrictInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-DistrictInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-DistrictInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-DistrictInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->>'Id' As varchar) AS "LocationInfo-MunicipalityInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-MunicipalityInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'de' As varchar) AS "LocationInfo-MunicipalityInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'en' As varchar) AS "LocationInfo-MunicipalityInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-MunicipalityInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'it' As varchar) AS "LocationInfo-MunicipalityInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-MunicipalityInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-MunicipalityInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-MunicipalityInfo-Name-ru";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_accommodationsopen
    BEFORE INSERT
    ON accommodationsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_accommodationsopen_fn();

ALTER TABLE accommodationsopen
    ENABLE ALWAYS TRIGGER t_v_accommodationsopen;

DROP TABLE IF EXISTS "v_accommodationsopen_SmgTags";

CREATE TABLE  "v_accommodationsopen_SmgTags" (
                                                 "Id" varchar,
                                                 "data" varchar
);

DROP FUNCTION IF EXISTS v_accommodationsopen_SmgTags_fn CASCADE;

CREATE FUNCTION v_accommodationsopen_SmgTags_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_accommodationsopen_SmgTags"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'SmgTags') AS "data"
    WHERE NEW."data" -> 'SmgTags' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_accommodationsopen_SmgTags
    BEFORE INSERT
    ON accommodationsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_accommodationsopen_SmgTags_fn();

ALTER TABLE accommodationsopen
    ENABLE ALWAYS TRIGGER t_v_accommodationsopen_SmgTags;

DROP TABLE IF EXISTS "v_accommodationsopen_ThemeIds";

CREATE TABLE  "v_accommodationsopen_ThemeIds" (
                                                  "Id" varchar,
                                                  "data" varchar
);

DROP FUNCTION IF EXISTS v_accommodationsopen_ThemeIds_fn CASCADE;

CREATE FUNCTION v_accommodationsopen_ThemeIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_accommodationsopen_ThemeIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'ThemeIds') AS "data"
    WHERE NEW."data" -> 'ThemeIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_accommodationsopen_ThemeIds
    BEFORE INSERT
    ON accommodationsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_accommodationsopen_ThemeIds_fn();

ALTER TABLE accommodationsopen
    ENABLE ALWAYS TRIGGER t_v_accommodationsopen_ThemeIds;

DROP TABLE IF EXISTS "v_accommodationsopen_HasLanguage";

CREATE TABLE  "v_accommodationsopen_HasLanguage" (
                                                     "Id" varchar,
                                                     "data" varchar
);

DROP FUNCTION IF EXISTS v_accommodationsopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_accommodationsopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_accommodationsopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_accommodationsopen_HasLanguage
    BEFORE INSERT
    ON accommodationsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_accommodationsopen_HasLanguage_fn();

ALTER TABLE accommodationsopen
    ENABLE ALWAYS TRIGGER t_v_accommodationsopen_HasLanguage;

DROP TABLE IF EXISTS "v_accommodationsopen_SpecialFeaturesIds";

CREATE TABLE  "v_accommodationsopen_SpecialFeaturesIds" (
                                                            "Id" varchar,
                                                            "data" varchar
);

DROP FUNCTION IF EXISTS v_accommodationsopen_SpecialFeaturesIds_fn CASCADE;

CREATE FUNCTION v_accommodationsopen_SpecialFeaturesIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_accommodationsopen_SpecialFeaturesIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'SpecialFeaturesIds') AS "data"
    WHERE NEW."data" -> 'SpecialFeaturesIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_accommodationsopen_SpecialFeaturesIds
    BEFORE INSERT
    ON accommodationsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_accommodationsopen_SpecialFeaturesIds_fn();

ALTER TABLE accommodationsopen
    ENABLE ALWAYS TRIGGER t_v_accommodationsopen_SpecialFeaturesIds;

DROP TABLE IF EXISTS "v_accommodationsopen_Features";

CREATE TABLE "v_accommodationsopen_Features" (
                                                 "accommodationsopen_Id" varchar,
                                                 "Id" varchar,
                                                 "Name" varchar
);

DROP FUNCTION IF EXISTS v_accommodationsopen_Features_fn CASCADE;

CREATE FUNCTION v_accommodationsopen_Features_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_accommodationsopen_Features"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'Features') AS "data"
        WHERE NEW."data" -> 'Features' != 'null')
    SELECT "Id" AS "accommodationsopen_Id", CAST("data"->>'Id' As varchar) AS "Id",
           CAST("data"->>'Name' As varchar) AS "Name"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_accommodationsopen_Features
    BEFORE INSERT
    ON accommodationsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_accommodationsopen_Features_fn();

ALTER TABLE accommodationsopen
    ENABLE ALWAYS TRIGGER t_v_accommodationsopen_Features;


DROP TABLE IF EXISTS "v_areas";

CREATE TABLE "v_areas" (
                           "Id" varchar,
                           "GID" varchar,
                           "Active" bool,
                           "AreaType" varchar,
                           "RegionId" varchar,
                           "Shortname" varchar,
                           "SmgActive" bool,
                           "TourismvereinId" varchar
);

ALTER TABLE "v_areas" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_areas_fn CASCADE;

CREATE FUNCTION v_areas_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_areas
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'GID' As varchar) AS "GID",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'AreaType' As varchar) AS "AreaType",
        CAST(NEW."data"->>'RegionId' As varchar) AS "RegionId",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'TourismvereinId' As varchar) AS "TourismvereinId";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_areas
    BEFORE INSERT
    ON areas
    FOR EACH ROW
EXECUTE PROCEDURE v_areas_fn();

ALTER TABLE areas
    ENABLE ALWAYS TRIGGER t_v_areas;

DROP TABLE IF EXISTS "v_articlesopen";

CREATE TABLE "v_articlesopen" (
                                  "Id" varchar,
                                  "Type" varchar,
                                  "Active" bool,
                                  "SubType" varchar,
                                  "Highlight" bool,
                                  "Shortname" varchar,
                                  "SmgActive" bool,
                                  "LastChange" varchar,
                                  "FirstImport" varchar,
                                  "Detail-de-Title" varchar,
                                  "Detail-de-BaseText" varchar
);

ALTER TABLE "v_articlesopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_articlesopen_fn CASCADE;

CREATE FUNCTION v_articlesopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_articlesopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Type' As varchar) AS "Type",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'SubType' As varchar) AS "SubType",
        CAST(NEW."data"->>'Highlight' As bool) AS "Highlight",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'FirstImport' As varchar) AS "FirstImport",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_articlesopen
    BEFORE INSERT
    ON articlesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_articlesopen_fn();

ALTER TABLE articlesopen
    ENABLE ALWAYS TRIGGER t_v_articlesopen;

DROP TABLE IF EXISTS "v_articlesopen_HasLanguage";

CREATE TABLE  "v_articlesopen_HasLanguage" (
                                               "Id" varchar,
                                               "data" varchar
);

DROP FUNCTION IF EXISTS v_articlesopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_articlesopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_articlesopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_articlesopen_HasLanguage
    BEFORE INSERT
    ON articlesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_articlesopen_HasLanguage_fn();

ALTER TABLE articlesopen
    ENABLE ALWAYS TRIGGER t_v_articlesopen_HasLanguage;

DROP TABLE IF EXISTS "v_districtsopen";

CREATE TABLE "v_districtsopen" (
                                   "Id" varchar,
                                   "Active" bool,
                                   "SiagId" varchar,
                                   "Gpstype" varchar,
                                   "Altitude" float,
                                   "CustomId" varchar,
                                   "Latitude" float,
                                   "RegionId" varchar,
                                   "Longitude" float,
                                   "Shortname" varchar,
                                   "SmgActive" bool,
                                   "LastChange" varchar,
                                   "MunicipalityId" varchar,
                                   "TourismvereinId" varchar,
                                   "VisibleInSearch" bool,
                                   "AltitudeUnitofMeasure" varchar,
                                   "Detail-cs-Title" varchar,
                                   "Detail-cs-Language" varchar,
                                   "Detail-de-Title" varchar,
                                   "Detail-de-Language" varchar,
                                   "Detail-en-Title" varchar,
                                   "Detail-en-Language" varchar,
                                   "Detail-fr-Title" varchar,
                                   "Detail-fr-Language" varchar,
                                   "Detail-it-Title" varchar,
                                   "Detail-it-Language" varchar,
                                   "Detail-nl-Title" varchar,
                                   "Detail-nl-Language" varchar,
                                   "Detail-pl-Title" varchar,
                                   "Detail-pl-Language" varchar,
                                   "Detail-ru-Title" varchar,
                                   "Detail-ru-Language" varchar
);

ALTER TABLE "v_districtsopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_districtsopen_fn CASCADE;

CREATE FUNCTION v_districtsopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_districtsopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'SiagId' As varchar) AS "SiagId",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Altitude' As float) AS "Altitude",
        CAST(NEW."data"->>'CustomId' As varchar) AS "CustomId",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'RegionId' As varchar) AS "RegionId",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'MunicipalityId' As varchar) AS "MunicipalityId",
        CAST(NEW."data"->>'TourismvereinId' As varchar) AS "TourismvereinId",
        CAST(NEW."data"->>'VisibleInSearch' As bool) AS "VisibleInSearch",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->'Detail'->'cs'->>'Title' As varchar) AS "Detail-cs-Title",
        CAST(NEW."data"->'Detail'->'cs'->>'Language' As varchar) AS "Detail-cs-Language",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'fr'->>'Title' As varchar) AS "Detail-fr-Title",
        CAST(NEW."data"->'Detail'->'fr'->>'Language' As varchar) AS "Detail-fr-Language",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Detail'->'nl'->>'Title' As varchar) AS "Detail-nl-Title",
        CAST(NEW."data"->'Detail'->'nl'->>'Language' As varchar) AS "Detail-nl-Language",
        CAST(NEW."data"->'Detail'->'pl'->>'Title' As varchar) AS "Detail-pl-Title",
        CAST(NEW."data"->'Detail'->'pl'->>'Language' As varchar) AS "Detail-pl-Language",
        CAST(NEW."data"->'Detail'->'ru'->>'Title' As varchar) AS "Detail-ru-Title",
        CAST(NEW."data"->'Detail'->'ru'->>'Language' As varchar) AS "Detail-ru-Language";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_districtsopen
    BEFORE INSERT
    ON districtsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_districtsopen_fn();

ALTER TABLE districtsopen
    ENABLE ALWAYS TRIGGER t_v_districtsopen;

DROP TABLE IF EXISTS "v_districtsopen_HasLanguage";

CREATE TABLE  "v_districtsopen_HasLanguage" (
                                                "Id" varchar,
                                                "data" varchar
);

DROP FUNCTION IF EXISTS v_districtsopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_districtsopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_districtsopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_districtsopen_HasLanguage
    BEFORE INSERT
    ON districtsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_districtsopen_HasLanguage_fn();

ALTER TABLE districtsopen
    ENABLE ALWAYS TRIGGER t_v_districtsopen_HasLanguage;

DROP TABLE IF EXISTS "v_eventeuracnoi";

CREATE TABLE "v_eventeuracnoi" (
                                   "Id" varchar,
                                   "Source" varchar,
                                   "EndDate" varchar,
                                   "EventId" integer,
                                   "Display1" varchar,
                                   "Display2" varchar,
                                   "Display3" varchar,
                                   "Display4" varchar,
                                   "Display5" varchar,
                                   "Display6" varchar,
                                   "Display7" varchar,
                                   "Display8" varchar,
                                   "Display9" varchar,
                                   "ChangedOn" varchar,
                                   "CompanyId" varchar,
                                   "StartDate" varchar,
                                   "CompanyFax" varchar,
                                   "CompanyUrl" varchar,
                                   "ContactFax" varchar,
                                   "EndDateUTC" float,
                                   "WebAddress" varchar,
                                   "AnchorVenue" varchar,
                                   "CompanyCity" varchar,
                                   "CompanyMail" varchar,
                                   "CompanyName" varchar,
                                   "ContactCell" varchar,
                                   "ContactCity" varchar,
                                   "ContactCode" varchar,
                                   "CompanyPhone" varchar,
                                   "ContactEmail" varchar,
                                   "ContactPhone" varchar,
                                   "StartDateUTC" float,
                                   "EventLocation" varchar,
                                   "CompanyCountry" varchar,
                                   "ContactCountry" varchar,
                                   "ContactLastName" varchar,
                                   "AnchorVenueShort" varchar,
                                   "ContactFirstName" varchar,
                                   "EventDescription" varchar,
                                   "CompanyPostalCode" varchar,
                                   "ContactPostalCode" varchar,
                                   "EventDescriptionDE" varchar,
                                   "EventDescriptionEN" varchar,
                                   "EventDescriptionIT" varchar,
                                   "CompanyAddressLine1" varchar,
                                   "CompanyAddressLine2" varchar,
                                   "CompanyAddressLine3" varchar,
                                   "ContactAddressLine1" varchar,
                                   "ContactAddressLine2" varchar,
                                   "ContactAddressLine3" varchar
);

ALTER TABLE "v_eventeuracnoi" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_eventeuracnoi_fn CASCADE;

CREATE FUNCTION v_eventeuracnoi_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_eventeuracnoi
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Source' As varchar) AS "Source",
        CAST(NEW."data"->>'EndDate' As varchar) AS "EndDate",
        CAST(NEW."data"->>'EventId' As integer) AS "EventId",
        CAST(NEW."data"->>'Display1' As varchar) AS "Display1",
        CAST(NEW."data"->>'Display2' As varchar) AS "Display2",
        CAST(NEW."data"->>'Display3' As varchar) AS "Display3",
        CAST(NEW."data"->>'Display4' As varchar) AS "Display4",
        CAST(NEW."data"->>'Display5' As varchar) AS "Display5",
        CAST(NEW."data"->>'Display6' As varchar) AS "Display6",
        CAST(NEW."data"->>'Display7' As varchar) AS "Display7",
        CAST(NEW."data"->>'Display8' As varchar) AS "Display8",
        CAST(NEW."data"->>'Display9' As varchar) AS "Display9",
        CAST(NEW."data"->>'ChangedOn' As varchar) AS "ChangedOn",
        CAST(NEW."data"->>'CompanyId' As varchar) AS "CompanyId",
        CAST(NEW."data"->>'StartDate' As varchar) AS "StartDate",
        CAST(NEW."data"->>'CompanyFax' As varchar) AS "CompanyFax",
        CAST(NEW."data"->>'CompanyUrl' As varchar) AS "CompanyUrl",
        CAST(NEW."data"->>'ContactFax' As varchar) AS "ContactFax",
        CAST(NEW."data"->>'EndDateUTC' As float) AS "EndDateUTC",
        CAST(NEW."data"->>'WebAddress' As varchar) AS "WebAddress",
        CAST(NEW."data"->>'AnchorVenue' As varchar) AS "AnchorVenue",
        CAST(NEW."data"->>'CompanyCity' As varchar) AS "CompanyCity",
        CAST(NEW."data"->>'CompanyMail' As varchar) AS "CompanyMail",
        CAST(NEW."data"->>'CompanyName' As varchar) AS "CompanyName",
        CAST(NEW."data"->>'ContactCell' As varchar) AS "ContactCell",
        CAST(NEW."data"->>'ContactCity' As varchar) AS "ContactCity",
        CAST(NEW."data"->>'ContactCode' As varchar) AS "ContactCode",
        CAST(NEW."data"->>'CompanyPhone' As varchar) AS "CompanyPhone",
        CAST(NEW."data"->>'ContactEmail' As varchar) AS "ContactEmail",
        CAST(NEW."data"->>'ContactPhone' As varchar) AS "ContactPhone",
        CAST(NEW."data"->>'StartDateUTC' As float) AS "StartDateUTC",
        CAST(NEW."data"->>'EventLocation' As varchar) AS "EventLocation",
        CAST(NEW."data"->>'CompanyCountry' As varchar) AS "CompanyCountry",
        CAST(NEW."data"->>'ContactCountry' As varchar) AS "ContactCountry",
        CAST(NEW."data"->>'ContactLastName' As varchar) AS "ContactLastName",
        CAST(NEW."data"->>'AnchorVenueShort' As varchar) AS "AnchorVenueShort",
        CAST(NEW."data"->>'ContactFirstName' As varchar) AS "ContactFirstName",
        CAST(NEW."data"->>'EventDescription' As varchar) AS "EventDescription",
        CAST(NEW."data"->>'CompanyPostalCode' As varchar) AS "CompanyPostalCode",
        CAST(NEW."data"->>'ContactPostalCode' As varchar) AS "ContactPostalCode",
        CAST(NEW."data"->>'EventDescriptionDE' As varchar) AS "EventDescriptionDE",
        CAST(NEW."data"->>'EventDescriptionEN' As varchar) AS "EventDescriptionEN",
        CAST(NEW."data"->>'EventDescriptionIT' As varchar) AS "EventDescriptionIT",
        CAST(NEW."data"->>'CompanyAddressLine1' As varchar) AS "CompanyAddressLine1",
        CAST(NEW."data"->>'CompanyAddressLine2' As varchar) AS "CompanyAddressLine2",
        CAST(NEW."data"->>'CompanyAddressLine3' As varchar) AS "CompanyAddressLine3",
        CAST(NEW."data"->>'ContactAddressLine1' As varchar) AS "ContactAddressLine1",
        CAST(NEW."data"->>'ContactAddressLine2' As varchar) AS "ContactAddressLine2",
        CAST(NEW."data"->>'ContactAddressLine3' As varchar) AS "ContactAddressLine3";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventeuracnoi
    BEFORE INSERT
    ON eventeuracnoi
    FOR EACH ROW
EXECUTE PROCEDURE v_eventeuracnoi_fn();

ALTER TABLE eventeuracnoi
    ENABLE ALWAYS TRIGGER t_v_eventeuracnoi;

DROP TABLE IF EXISTS "v_eventeuracnoi_RoomBooked";

CREATE TABLE "v_eventeuracnoi_RoomBooked" (
                                              "eventeuracnoi_Id" varchar,
                                              "Space" varchar,
                                              "Comment" varchar,
                                              "EndDate" varchar,
                                              "Subtitle" varchar,
                                              "SpaceDesc" varchar,
                                              "SpaceType" varchar,
                                              "StartDate" varchar,
                                              "EndDateUTC" float,
                                              "SpaceAbbrev" varchar,
                                              "StartDateUTC" float
);

DROP FUNCTION IF EXISTS v_eventeuracnoi_RoomBooked_fn CASCADE;

CREATE FUNCTION v_eventeuracnoi_RoomBooked_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_eventeuracnoi_RoomBooked"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'RoomBooked') AS "data"
        WHERE NEW."data" -> 'RoomBooked' != 'null')
    SELECT "Id" AS "eventeuracnoi_Id", CAST("data"->>'Space' As varchar) AS "Space",
           CAST("data"->>'Comment' As varchar) AS "Comment",
           CAST("data"->>'EndDate' As varchar) AS "EndDate",
           CAST("data"->>'Subtitle' As varchar) AS "Subtitle",
           CAST("data"->>'SpaceDesc' As varchar) AS "SpaceDesc",
           CAST("data"->>'SpaceType' As varchar) AS "SpaceType",
           CAST("data"->>'StartDate' As varchar) AS "StartDate",
           CAST("data"->>'EndDateUTC' As float) AS "EndDateUTC",
           CAST("data"->>'SpaceAbbrev' As varchar) AS "SpaceAbbrev",
           CAST("data"->>'StartDateUTC' As float) AS "StartDateUTC"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventeuracnoi_RoomBooked
    BEFORE INSERT
    ON eventeuracnoi
    FOR EACH ROW
EXECUTE PROCEDURE v_eventeuracnoi_RoomBooked_fn();

ALTER TABLE eventeuracnoi
    ENABLE ALWAYS TRIGGER t_v_eventeuracnoi_RoomBooked;


DROP TABLE IF EXISTS "v_eventsopen";

CREATE TABLE "v_eventsopen" (
                                "Id" varchar,
                                "Ranc" integer,
                                "Type" varchar,
                                "Active" bool,
                                "OrgRID" varchar,
                                "PayMet" varchar,
                                "SignOn" varchar,
                                "Ticket" varchar,
                                "DateEnd" varchar,
                                "Gpstype" varchar,
                                "Latitude" float,
                                "DateBegin" varchar,
                                "Longitude" float,
                                "Shortname" varchar,
                                "SmgActive" bool,
                                "DistrictId" varchar,
                                "LastChange" varchar,
                                "FirstImport" varchar,
                                "NextBeginDate" varchar,
                                "EventDateCounter" integer,
                                "Detail-de-Title" varchar,
                                "Detail-de-BaseText" varchar,
                                "Detail-de-Language" varchar,
                                "Detail-en-Title" varchar,
                                "Detail-en-BaseText" varchar,
                                "Detail-en-Language" varchar,
                                "Detail-it-Title" varchar,
                                "Detail-it-BaseText" varchar,
                                "Detail-it-Language" varchar,
                                "ContactInfos-de-Url" varchar,
                                "ContactInfos-de-City" varchar,
                                "ContactInfos-de-Email" varchar,
                                "ContactInfos-de-Address" varchar,
                                "ContactInfos-de-ZipCode" varchar,
                                "ContactInfos-de-Language" varchar,
                                "ContactInfos-de-CompanyName" varchar,
                                "ContactInfos-de-Phonenumber" varchar,
                                "ContactInfos-en-Url" varchar,
                                "ContactInfos-en-City" varchar,
                                "ContactInfos-en-Email" varchar,
                                "ContactInfos-en-Address" varchar,
                                "ContactInfos-en-ZipCode" varchar,
                                "ContactInfos-en-Language" varchar,
                                "ContactInfos-en-CompanyName" varchar,
                                "ContactInfos-en-Phonenumber" varchar,
                                "ContactInfos-it-Url" varchar,
                                "ContactInfos-it-City" varchar,
                                "ContactInfos-it-Email" varchar,
                                "ContactInfos-it-Address" varchar,
                                "ContactInfos-it-ZipCode" varchar,
                                "ContactInfos-it-Language" varchar,
                                "ContactInfos-it-CompanyName" varchar,
                                "ContactInfos-it-Phonenumber" varchar,
                                "LocationInfo-TvInfo-Id" varchar,
                                "LocationInfo-TvInfo-Name-cs" varchar,
                                "LocationInfo-TvInfo-Name-de" varchar,
                                "LocationInfo-TvInfo-Name-en" varchar,
                                "LocationInfo-TvInfo-Name-fr" varchar,
                                "LocationInfo-TvInfo-Name-it" varchar,
                                "LocationInfo-TvInfo-Name-nl" varchar,
                                "LocationInfo-TvInfo-Name-pl" varchar,
                                "LocationInfo-TvInfo-Name-ru" varchar,
                                "LocationInfo-RegionInfo-Id" varchar,
                                "LocationInfo-RegionInfo-Name-cs" varchar,
                                "LocationInfo-RegionInfo-Name-de" varchar,
                                "LocationInfo-RegionInfo-Name-en" varchar,
                                "LocationInfo-RegionInfo-Name-fr" varchar,
                                "LocationInfo-RegionInfo-Name-it" varchar,
                                "LocationInfo-RegionInfo-Name-nl" varchar,
                                "LocationInfo-RegionInfo-Name-pl" varchar,
                                "LocationInfo-RegionInfo-Name-ru" varchar,
                                "LocationInfo-DistrictInfo-Id" varchar,
                                "LocationInfo-DistrictInfo-Name-cs" varchar,
                                "LocationInfo-DistrictInfo-Name-de" varchar,
                                "LocationInfo-DistrictInfo-Name-en" varchar,
                                "LocationInfo-DistrictInfo-Name-fr" varchar,
                                "LocationInfo-DistrictInfo-Name-it" varchar,
                                "LocationInfo-DistrictInfo-Name-nl" varchar,
                                "LocationInfo-DistrictInfo-Name-pl" varchar,
                                "LocationInfo-DistrictInfo-Name-ru" varchar,
                                "LocationInfo-MunicipalityInfo-Id" varchar,
                                "LocationInfo-MunicipalityInfo-Name-cs" varchar,
                                "LocationInfo-MunicipalityInfo-Name-de" varchar,
                                "LocationInfo-MunicipalityInfo-Name-en" varchar,
                                "LocationInfo-MunicipalityInfo-Name-fr" varchar,
                                "LocationInfo-MunicipalityInfo-Name-it" varchar,
                                "LocationInfo-MunicipalityInfo-Name-nl" varchar,
                                "LocationInfo-MunicipalityInfo-Name-pl" varchar,
                                "LocationInfo-MunicipalityInfo-Name-ru" varchar,
                                "OrganizerInfos-de-Tax" varchar,
                                "OrganizerInfos-de-Url" varchar,
                                "OrganizerInfos-de-Vat" varchar,
                                "OrganizerInfos-de-City" varchar,
                                "OrganizerInfos-de-Email" varchar,
                                "OrganizerInfos-de-Address" varchar,
                                "OrganizerInfos-de-Surname" varchar,
                                "OrganizerInfos-de-ZipCode" varchar,
                                "OrganizerInfos-de-Language" varchar,
                                "OrganizerInfos-de-Faxnumber" varchar,
                                "OrganizerInfos-de-Givenname" varchar,
                                "OrganizerInfos-de-CompanyName" varchar,
                                "OrganizerInfos-de-Phonenumber" varchar,
                                "OrganizerInfos-en-Tax" varchar,
                                "OrganizerInfos-en-Url" varchar,
                                "OrganizerInfos-en-Vat" varchar,
                                "OrganizerInfos-en-City" varchar,
                                "OrganizerInfos-en-Email" varchar,
                                "OrganizerInfos-en-Address" varchar,
                                "OrganizerInfos-en-Surname" varchar,
                                "OrganizerInfos-en-ZipCode" varchar,
                                "OrganizerInfos-en-Language" varchar,
                                "OrganizerInfos-en-Faxnumber" varchar,
                                "OrganizerInfos-en-Givenname" varchar,
                                "OrganizerInfos-en-CompanyName" varchar,
                                "OrganizerInfos-en-Phonenumber" varchar,
                                "OrganizerInfos-it-Tax" varchar,
                                "OrganizerInfos-it-Url" varchar,
                                "OrganizerInfos-it-Vat" varchar,
                                "OrganizerInfos-it-City" varchar,
                                "OrganizerInfos-it-Email" varchar,
                                "OrganizerInfos-it-Address" varchar,
                                "OrganizerInfos-it-Surname" varchar,
                                "OrganizerInfos-it-ZipCode" varchar,
                                "OrganizerInfos-it-Language" varchar,
                                "OrganizerInfos-it-Faxnumber" varchar,
                                "OrganizerInfos-it-Givenname" varchar,
                                "OrganizerInfos-it-CompanyName" varchar,
                                "OrganizerInfos-it-Phonenumber" varchar,
                                "EventAdditionalInfos-de-Reg" varchar,
                                "EventAdditionalInfos-de-Mplace" varchar,
                                "EventAdditionalInfos-de-Language" varchar,
                                "EventAdditionalInfos-de-Location" varchar,
                                "EventAdditionalInfos-en-Reg" varchar,
                                "EventAdditionalInfos-en-Mplace" varchar,
                                "EventAdditionalInfos-en-Language" varchar,
                                "EventAdditionalInfos-en-Location" varchar,
                                "EventAdditionalInfos-it-Reg" varchar,
                                "EventAdditionalInfos-it-Mplace" varchar,
                                "EventAdditionalInfos-it-Language" varchar,
                                "EventAdditionalInfos-it-Location" varchar
);

ALTER TABLE "v_eventsopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_eventsopen_fn CASCADE;

CREATE FUNCTION v_eventsopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_eventsopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Ranc' As integer) AS "Ranc",
        CAST(NEW."data"->>'Type' As varchar) AS "Type",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'OrgRID' As varchar) AS "OrgRID",
        CAST(NEW."data"->>'PayMet' As varchar) AS "PayMet",
        CAST(NEW."data"->>'SignOn' As varchar) AS "SignOn",
        CAST(NEW."data"->>'Ticket' As varchar) AS "Ticket",
        CAST(NEW."data"->>'DateEnd' As varchar) AS "DateEnd",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'DateBegin' As varchar) AS "DateBegin",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'DistrictId' As varchar) AS "DistrictId",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'FirstImport' As varchar) AS "FirstImport",
        CAST(NEW."data"->>'NextBeginDate' As varchar) AS "NextBeginDate",
        CAST(NEW."data"->>'EventDateCounter' As integer) AS "EventDateCounter",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Url' As varchar) AS "ContactInfos-de-Url",
        CAST(NEW."data"->'ContactInfos'->'de'->>'City' As varchar) AS "ContactInfos-de-City",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Email' As varchar) AS "ContactInfos-de-Email",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Address' As varchar) AS "ContactInfos-de-Address",
        CAST(NEW."data"->'ContactInfos'->'de'->>'ZipCode' As varchar) AS "ContactInfos-de-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Language' As varchar) AS "ContactInfos-de-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CompanyName' As varchar) AS "ContactInfos-de-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Phonenumber' As varchar) AS "ContactInfos-de-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Url' As varchar) AS "ContactInfos-en-Url",
        CAST(NEW."data"->'ContactInfos'->'en'->>'City' As varchar) AS "ContactInfos-en-City",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Email' As varchar) AS "ContactInfos-en-Email",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Address' As varchar) AS "ContactInfos-en-Address",
        CAST(NEW."data"->'ContactInfos'->'en'->>'ZipCode' As varchar) AS "ContactInfos-en-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Language' As varchar) AS "ContactInfos-en-Language",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CompanyName' As varchar) AS "ContactInfos-en-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Phonenumber' As varchar) AS "ContactInfos-en-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Url' As varchar) AS "ContactInfos-it-Url",
        CAST(NEW."data"->'ContactInfos'->'it'->>'City' As varchar) AS "ContactInfos-it-City",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Email' As varchar) AS "ContactInfos-it-Email",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Address' As varchar) AS "ContactInfos-it-Address",
        CAST(NEW."data"->'ContactInfos'->'it'->>'ZipCode' As varchar) AS "ContactInfos-it-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Language' As varchar) AS "ContactInfos-it-Language",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CompanyName' As varchar) AS "ContactInfos-it-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Phonenumber' As varchar) AS "ContactInfos-it-Phonenumber",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->>'Id' As varchar) AS "LocationInfo-TvInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-TvInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'de' As varchar) AS "LocationInfo-TvInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'en' As varchar) AS "LocationInfo-TvInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-TvInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'it' As varchar) AS "LocationInfo-TvInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-TvInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-TvInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-TvInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->>'Id' As varchar) AS "LocationInfo-RegionInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-RegionInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'de' As varchar) AS "LocationInfo-RegionInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'en' As varchar) AS "LocationInfo-RegionInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-RegionInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'it' As varchar) AS "LocationInfo-RegionInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-RegionInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-RegionInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-RegionInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->>'Id' As varchar) AS "LocationInfo-DistrictInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-DistrictInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'de' As varchar) AS "LocationInfo-DistrictInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'en' As varchar) AS "LocationInfo-DistrictInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-DistrictInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'it' As varchar) AS "LocationInfo-DistrictInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-DistrictInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-DistrictInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-DistrictInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->>'Id' As varchar) AS "LocationInfo-MunicipalityInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-MunicipalityInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'de' As varchar) AS "LocationInfo-MunicipalityInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'en' As varchar) AS "LocationInfo-MunicipalityInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-MunicipalityInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'it' As varchar) AS "LocationInfo-MunicipalityInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-MunicipalityInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-MunicipalityInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-MunicipalityInfo-Name-ru",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Tax' As varchar) AS "OrganizerInfos-de-Tax",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Url' As varchar) AS "OrganizerInfos-de-Url",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Vat' As varchar) AS "OrganizerInfos-de-Vat",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'City' As varchar) AS "OrganizerInfos-de-City",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Email' As varchar) AS "OrganizerInfos-de-Email",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Address' As varchar) AS "OrganizerInfos-de-Address",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Surname' As varchar) AS "OrganizerInfos-de-Surname",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'ZipCode' As varchar) AS "OrganizerInfos-de-ZipCode",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Language' As varchar) AS "OrganizerInfos-de-Language",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Faxnumber' As varchar) AS "OrganizerInfos-de-Faxnumber",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Givenname' As varchar) AS "OrganizerInfos-de-Givenname",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'CompanyName' As varchar) AS "OrganizerInfos-de-CompanyName",
        CAST(NEW."data"->'OrganizerInfos'->'de'->>'Phonenumber' As varchar) AS "OrganizerInfos-de-Phonenumber",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Tax' As varchar) AS "OrganizerInfos-en-Tax",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Url' As varchar) AS "OrganizerInfos-en-Url",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Vat' As varchar) AS "OrganizerInfos-en-Vat",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'City' As varchar) AS "OrganizerInfos-en-City",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Email' As varchar) AS "OrganizerInfos-en-Email",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Address' As varchar) AS "OrganizerInfos-en-Address",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Surname' As varchar) AS "OrganizerInfos-en-Surname",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'ZipCode' As varchar) AS "OrganizerInfos-en-ZipCode",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Language' As varchar) AS "OrganizerInfos-en-Language",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Faxnumber' As varchar) AS "OrganizerInfos-en-Faxnumber",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Givenname' As varchar) AS "OrganizerInfos-en-Givenname",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'CompanyName' As varchar) AS "OrganizerInfos-en-CompanyName",
        CAST(NEW."data"->'OrganizerInfos'->'en'->>'Phonenumber' As varchar) AS "OrganizerInfos-en-Phonenumber",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Tax' As varchar) AS "OrganizerInfos-it-Tax",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Url' As varchar) AS "OrganizerInfos-it-Url",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Vat' As varchar) AS "OrganizerInfos-it-Vat",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'City' As varchar) AS "OrganizerInfos-it-City",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Email' As varchar) AS "OrganizerInfos-it-Email",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Address' As varchar) AS "OrganizerInfos-it-Address",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Surname' As varchar) AS "OrganizerInfos-it-Surname",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'ZipCode' As varchar) AS "OrganizerInfos-it-ZipCode",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Language' As varchar) AS "OrganizerInfos-it-Language",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Faxnumber' As varchar) AS "OrganizerInfos-it-Faxnumber",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Givenname' As varchar) AS "OrganizerInfos-it-Givenname",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'CompanyName' As varchar) AS "OrganizerInfos-it-CompanyName",
        CAST(NEW."data"->'OrganizerInfos'->'it'->>'Phonenumber' As varchar) AS "OrganizerInfos-it-Phonenumber",
        CAST(NEW."data"->'EventAdditionalInfos'->'de'->>'Reg' As varchar) AS "EventAdditionalInfos-de-Reg",
        CAST(NEW."data"->'EventAdditionalInfos'->'de'->>'Mplace' As varchar) AS "EventAdditionalInfos-de-Mplace",
        CAST(NEW."data"->'EventAdditionalInfos'->'de'->>'Language' As varchar) AS "EventAdditionalInfos-de-Language",
        CAST(NEW."data"->'EventAdditionalInfos'->'de'->>'Location' As varchar) AS "EventAdditionalInfos-de-Location",
        CAST(NEW."data"->'EventAdditionalInfos'->'en'->>'Reg' As varchar) AS "EventAdditionalInfos-en-Reg",
        CAST(NEW."data"->'EventAdditionalInfos'->'en'->>'Mplace' As varchar) AS "EventAdditionalInfos-en-Mplace",
        CAST(NEW."data"->'EventAdditionalInfos'->'en'->>'Language' As varchar) AS "EventAdditionalInfos-en-Language",
        CAST(NEW."data"->'EventAdditionalInfos'->'en'->>'Location' As varchar) AS "EventAdditionalInfos-en-Location",
        CAST(NEW."data"->'EventAdditionalInfos'->'it'->>'Reg' As varchar) AS "EventAdditionalInfos-it-Reg",
        CAST(NEW."data"->'EventAdditionalInfos'->'it'->>'Mplace' As varchar) AS "EventAdditionalInfos-it-Mplace",
        CAST(NEW."data"->'EventAdditionalInfos'->'it'->>'Language' As varchar) AS "EventAdditionalInfos-it-Language",
        CAST(NEW."data"->'EventAdditionalInfos'->'it'->>'Location' As varchar) AS "EventAdditionalInfos-it-Location";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventsopen
    BEFORE INSERT
    ON eventsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_eventsopen_fn();

ALTER TABLE eventsopen
    ENABLE ALWAYS TRIGGER t_v_eventsopen;

DROP TABLE IF EXISTS "v_eventsopen_TopicRIDs";

CREATE TABLE  "v_eventsopen_TopicRIDs" (
                                           "Id" varchar,
                                           "data" varchar
);

DROP FUNCTION IF EXISTS v_eventsopen_TopicRIDs_fn CASCADE;

CREATE FUNCTION v_eventsopen_TopicRIDs_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_eventsopen_TopicRIDs"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'TopicRIDs') AS "data"
    WHERE NEW."data" -> 'TopicRIDs' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventsopen_TopicRIDs
    BEFORE INSERT
    ON eventsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_eventsopen_TopicRIDs_fn();

ALTER TABLE eventsopen
    ENABLE ALWAYS TRIGGER t_v_eventsopen_TopicRIDs;

DROP TABLE IF EXISTS "v_eventsopen_DistrictIds";

CREATE TABLE  "v_eventsopen_DistrictIds" (
                                             "Id" varchar,
                                             "data" varchar
);

DROP FUNCTION IF EXISTS v_eventsopen_DistrictIds_fn CASCADE;

CREATE FUNCTION v_eventsopen_DistrictIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_eventsopen_DistrictIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'DistrictIds') AS "data"
    WHERE NEW."data" -> 'DistrictIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventsopen_DistrictIds
    BEFORE INSERT
    ON eventsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_eventsopen_DistrictIds_fn();

ALTER TABLE eventsopen
    ENABLE ALWAYS TRIGGER t_v_eventsopen_DistrictIds;

DROP TABLE IF EXISTS "v_eventsopen_HasLanguage";

CREATE TABLE  "v_eventsopen_HasLanguage" (
                                             "Id" varchar,
                                             "data" varchar
);

DROP FUNCTION IF EXISTS v_eventsopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_eventsopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_eventsopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventsopen_HasLanguage
    BEFORE INSERT
    ON eventsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_eventsopen_HasLanguage_fn();

ALTER TABLE eventsopen
    ENABLE ALWAYS TRIGGER t_v_eventsopen_HasLanguage;

DROP TABLE IF EXISTS "v_eventsopen_EventDatesEnd";

CREATE TABLE  "v_eventsopen_EventDatesEnd" (
                                               "Id" varchar,
                                               "data" varchar
);

DROP FUNCTION IF EXISTS v_eventsopen_EventDatesEnd_fn CASCADE;

CREATE FUNCTION v_eventsopen_EventDatesEnd_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_eventsopen_EventDatesEnd"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'EventDatesEnd') AS "data"
    WHERE NEW."data" -> 'EventDatesEnd' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventsopen_EventDatesEnd
    BEFORE INSERT
    ON eventsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_eventsopen_EventDatesEnd_fn();

ALTER TABLE eventsopen
    ENABLE ALWAYS TRIGGER t_v_eventsopen_EventDatesEnd;

DROP TABLE IF EXISTS "v_eventsopen_EventDatesBegin";

CREATE TABLE  "v_eventsopen_EventDatesBegin" (
                                                 "Id" varchar,
                                                 "data" varchar
);

DROP FUNCTION IF EXISTS v_eventsopen_EventDatesBegin_fn CASCADE;

CREATE FUNCTION v_eventsopen_EventDatesBegin_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_eventsopen_EventDatesBegin"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'EventDatesBegin') AS "data"
    WHERE NEW."data" -> 'EventDatesBegin' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventsopen_EventDatesBegin
    BEFORE INSERT
    ON eventsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_eventsopen_EventDatesBegin_fn();

ALTER TABLE eventsopen
    ENABLE ALWAYS TRIGGER t_v_eventsopen_EventDatesBegin;

DROP TABLE IF EXISTS "v_eventsopen_Topics";

CREATE TABLE "v_eventsopen_Topics" (
                                       "eventsopen_Id" varchar,
                                       "TopicRID" varchar,
                                       "TopicInfo" varchar
);

DROP FUNCTION IF EXISTS v_eventsopen_Topics_fn CASCADE;

CREATE FUNCTION v_eventsopen_Topics_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_eventsopen_Topics"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'Topics') AS "data"
        WHERE NEW."data" -> 'Topics' != 'null')
    SELECT "Id" AS "eventsopen_Id", CAST("data"->>'TopicRID' As varchar) AS "TopicRID",
           CAST("data"->>'TopicInfo' As varchar) AS "TopicInfo"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventsopen_Topics
    BEFORE INSERT
    ON eventsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_eventsopen_Topics_fn();

ALTER TABLE eventsopen
    ENABLE ALWAYS TRIGGER t_v_eventsopen_Topics;


DROP TABLE IF EXISTS "v_eventsopen_EventDate";

CREATE TABLE "v_eventsopen_EventDate" (
                                          "eventsopen_Id" varchar,
                                          "To" varchar,
                                          "End" varchar,
                                          "From" varchar,
                                          "Begin" varchar,
                                          "Ticket" bool,
                                          "GpsEast" float,
                                          "Entrance" varchar,
                                          "GpsNorth" float,
                                          "MaxPersons" integer,
                                          "MinPersons" integer,
                                          "SingleDays" bool
);

DROP FUNCTION IF EXISTS v_eventsopen_EventDate_fn CASCADE;

CREATE FUNCTION v_eventsopen_EventDate_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_eventsopen_EventDate"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'EventDate') AS "data"
        WHERE NEW."data" -> 'EventDate' != 'null')
    SELECT "Id" AS "eventsopen_Id", CAST("data"->>'To' As varchar) AS "To",
           CAST("data"->>'End' As varchar) AS "End",
           CAST("data"->>'From' As varchar) AS "From",
           CAST("data"->>'Begin' As varchar) AS "Begin",
           CAST("data"->>'Ticket' As bool) AS "Ticket",
           CAST("data"->>'GpsEast' As float) AS "GpsEast",
           CAST("data"->>'Entrance' As varchar) AS "Entrance",
           CAST("data"->>'GpsNorth' As float) AS "GpsNorth",
           CAST("data"->>'MaxPersons' As integer) AS "MaxPersons",
           CAST("data"->>'MinPersons' As integer) AS "MinPersons",
           CAST("data"->>'SingleDays' As bool) AS "SingleDays"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_eventsopen_EventDate
    BEFORE INSERT
    ON eventsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_eventsopen_EventDate_fn();

ALTER TABLE eventsopen
    ENABLE ALWAYS TRIGGER t_v_eventsopen_EventDate;


DROP TABLE IF EXISTS "v_experienceareas";

CREATE TABLE "v_experienceareas" (
                                     "Id" varchar,
                                     "Active" bool,
                                     "Gpstype" varchar,
                                     "Latitude" float,
                                     "Longitude" float,
                                     "Shortname" varchar,
                                     "SmgActive" bool,
                                     "LastChange" varchar,
                                     "VisibleInSearch" bool,
                                     "AltitudeUnitofMeasure" varchar,
                                     "Detail-cs-Title" varchar,
                                     "Detail-de-Title" varchar,
                                     "Detail-de-BaseText" varchar,
                                     "Detail-de-IntroText" varchar,
                                     "Detail-en-Title" varchar,
                                     "Detail-fr-Title" varchar,
                                     "Detail-it-Title" varchar,
                                     "Detail-nl-Title" varchar,
                                     "Detail-pl-Title" varchar,
                                     "Detail-ru-Title" varchar
);

ALTER TABLE "v_experienceareas" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_experienceareas_fn CASCADE;

CREATE FUNCTION v_experienceareas_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_experienceareas
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'VisibleInSearch' As bool) AS "VisibleInSearch",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->'Detail'->'cs'->>'Title' As varchar) AS "Detail-cs-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'IntroText' As varchar) AS "Detail-de-IntroText",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'fr'->>'Title' As varchar) AS "Detail-fr-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'nl'->>'Title' As varchar) AS "Detail-nl-Title",
        CAST(NEW."data"->'Detail'->'pl'->>'Title' As varchar) AS "Detail-pl-Title",
        CAST(NEW."data"->'Detail'->'ru'->>'Title' As varchar) AS "Detail-ru-Title";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_experienceareas
    BEFORE INSERT
    ON experienceareas
    FOR EACH ROW
EXECUTE PROCEDURE v_experienceareas_fn();

ALTER TABLE experienceareas
    ENABLE ALWAYS TRIGGER t_v_experienceareas;

DROP TABLE IF EXISTS "v_experienceareas_TourismvereinIds";

CREATE TABLE  "v_experienceareas_TourismvereinIds" (
                                                       "Id" varchar,
                                                       "data" varchar
);

DROP FUNCTION IF EXISTS v_experienceareas_TourismvereinIds_fn CASCADE;

CREATE FUNCTION v_experienceareas_TourismvereinIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_experienceareas_TourismvereinIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'TourismvereinIds') AS "data"
    WHERE NEW."data" -> 'TourismvereinIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_experienceareas_TourismvereinIds
    BEFORE INSERT
    ON experienceareas
    FOR EACH ROW
EXECUTE PROCEDURE v_experienceareas_TourismvereinIds_fn();

ALTER TABLE experienceareas
    ENABLE ALWAYS TRIGGER t_v_experienceareas_TourismvereinIds;

DROP TABLE IF EXISTS "v_gastronomiesopen";

CREATE TABLE "v_gastronomiesopen" (
                                      "Id" varchar,
                                      "Active" bool,
                                      "Gpstype" varchar,
                                      "Altitude" float,
                                      "Latitude" float,
                                      "Longitude" float,
                                      "Shortname" varchar,
                                      "SmgActive" bool,
                                      "DistrictId" varchar,
                                      "LastChange" varchar,
                                      "FirstImport" varchar,
                                      "AccommodationId" varchar,
                                      "MaxSeatingCapacity" integer,
                                      "AltitudeUnitofMeasure" varchar,
                                      "RepresentationRestriction" integer,
                                      "Detail-de-Title" varchar,
                                      "Detail-de-Header" varchar,
                                      "Detail-de-BaseText" varchar,
                                      "Detail-de-Language" varchar,
                                      "Detail-de-MetaDesc" varchar,
                                      "Detail-de-MetaTitle" varchar,
                                      "Detail-de-GetThereText" varchar,
                                      "Detail-de-AdditionalText" varchar,
                                      "Detail-en-Title" varchar,
                                      "Detail-en-Header" varchar,
                                      "Detail-en-BaseText" varchar,
                                      "Detail-en-Language" varchar,
                                      "Detail-en-MetaDesc" varchar,
                                      "Detail-en-MetaTitle" varchar,
                                      "Detail-en-GetThereText" varchar,
                                      "Detail-en-AdditionalText" varchar,
                                      "Detail-it-Title" varchar,
                                      "Detail-it-Header" varchar,
                                      "Detail-it-BaseText" varchar,
                                      "Detail-it-Language" varchar,
                                      "Detail-it-MetaDesc" varchar,
                                      "Detail-it-MetaTitle" varchar,
                                      "Detail-it-GetThereText" varchar,
                                      "Detail-it-AdditionalText" varchar,
                                      "ContactInfos-de-Url" varchar,
                                      "ContactInfos-de-City" varchar,
                                      "ContactInfos-de-Email" varchar,
                                      "ContactInfos-de-Address" varchar,
                                      "ContactInfos-de-Surname" varchar,
                                      "ContactInfos-de-ZipCode" varchar,
                                      "ContactInfos-de-Language" varchar,
                                      "ContactInfos-de-Faxnumber" varchar,
                                      "ContactInfos-de-Givenname" varchar,
                                      "ContactInfos-de-CompanyName" varchar,
                                      "ContactInfos-de-CountryCode" varchar,
                                      "ContactInfos-de-CountryName" varchar,
                                      "ContactInfos-de-Phonenumber" varchar,
                                      "ContactInfos-en-Url" varchar,
                                      "ContactInfos-en-City" varchar,
                                      "ContactInfos-en-Email" varchar,
                                      "ContactInfos-en-Address" varchar,
                                      "ContactInfos-en-Surname" varchar,
                                      "ContactInfos-en-ZipCode" varchar,
                                      "ContactInfos-en-Language" varchar,
                                      "ContactInfos-en-Faxnumber" varchar,
                                      "ContactInfos-en-Givenname" varchar,
                                      "ContactInfos-en-CompanyName" varchar,
                                      "ContactInfos-en-CountryCode" varchar,
                                      "ContactInfos-en-CountryName" varchar,
                                      "ContactInfos-en-Phonenumber" varchar,
                                      "ContactInfos-it-Url" varchar,
                                      "ContactInfos-it-City" varchar,
                                      "ContactInfos-it-Email" varchar,
                                      "ContactInfos-it-Address" varchar,
                                      "ContactInfos-it-Surname" varchar,
                                      "ContactInfos-it-ZipCode" varchar,
                                      "ContactInfos-it-Language" varchar,
                                      "ContactInfos-it-Faxnumber" varchar,
                                      "ContactInfos-it-Givenname" varchar,
                                      "ContactInfos-it-CompanyName" varchar,
                                      "ContactInfos-it-CountryCode" varchar,
                                      "ContactInfos-it-CountryName" varchar,
                                      "ContactInfos-it-Phonenumber" varchar,
                                      "LocationInfo-TvInfo-Id" varchar,
                                      "LocationInfo-TvInfo-Name-cs" varchar,
                                      "LocationInfo-TvInfo-Name-de" varchar,
                                      "LocationInfo-TvInfo-Name-en" varchar,
                                      "LocationInfo-TvInfo-Name-fr" varchar,
                                      "LocationInfo-TvInfo-Name-it" varchar,
                                      "LocationInfo-TvInfo-Name-nl" varchar,
                                      "LocationInfo-TvInfo-Name-pl" varchar,
                                      "LocationInfo-TvInfo-Name-ru" varchar,
                                      "LocationInfo-RegionInfo-Id" varchar,
                                      "LocationInfo-RegionInfo-Name-cs" varchar,
                                      "LocationInfo-RegionInfo-Name-de" varchar,
                                      "LocationInfo-RegionInfo-Name-en" varchar,
                                      "LocationInfo-RegionInfo-Name-fr" varchar,
                                      "LocationInfo-RegionInfo-Name-it" varchar,
                                      "LocationInfo-RegionInfo-Name-nl" varchar,
                                      "LocationInfo-RegionInfo-Name-pl" varchar,
                                      "LocationInfo-RegionInfo-Name-ru" varchar,
                                      "LocationInfo-DistrictInfo-Id" varchar,
                                      "LocationInfo-DistrictInfo-Name-cs" varchar,
                                      "LocationInfo-DistrictInfo-Name-de" varchar,
                                      "LocationInfo-DistrictInfo-Name-en" varchar,
                                      "LocationInfo-DistrictInfo-Name-fr" varchar,
                                      "LocationInfo-DistrictInfo-Name-it" varchar,
                                      "LocationInfo-DistrictInfo-Name-nl" varchar,
                                      "LocationInfo-DistrictInfo-Name-pl" varchar,
                                      "LocationInfo-DistrictInfo-Name-ru" varchar,
                                      "LocationInfo-MunicipalityInfo-Id" varchar,
                                      "LocationInfo-MunicipalityInfo-Name-cs" varchar,
                                      "LocationInfo-MunicipalityInfo-Name-de" varchar,
                                      "LocationInfo-MunicipalityInfo-Name-en" varchar,
                                      "LocationInfo-MunicipalityInfo-Name-fr" varchar,
                                      "LocationInfo-MunicipalityInfo-Name-it" varchar,
                                      "LocationInfo-MunicipalityInfo-Name-nl" varchar,
                                      "LocationInfo-MunicipalityInfo-Name-pl" varchar,
                                      "LocationInfo-MunicipalityInfo-Name-ru" varchar
);

ALTER TABLE "v_gastronomiesopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_gastronomiesopen_fn CASCADE;

CREATE FUNCTION v_gastronomiesopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_gastronomiesopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Altitude' As float) AS "Altitude",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'DistrictId' As varchar) AS "DistrictId",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'FirstImport' As varchar) AS "FirstImport",
        CAST(NEW."data"->>'AccommodationId' As varchar) AS "AccommodationId",
        CAST(NEW."data"->>'MaxSeatingCapacity' As integer) AS "MaxSeatingCapacity",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->>'RepresentationRestriction' As integer) AS "RepresentationRestriction",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Header' As varchar) AS "Detail-de-Header",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'de'->>'MetaDesc' As varchar) AS "Detail-de-MetaDesc",
        CAST(NEW."data"->'Detail'->'de'->>'MetaTitle' As varchar) AS "Detail-de-MetaTitle",
        CAST(NEW."data"->'Detail'->'de'->>'GetThereText' As varchar) AS "Detail-de-GetThereText",
        CAST(NEW."data"->'Detail'->'de'->>'AdditionalText' As varchar) AS "Detail-de-AdditionalText",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'Header' As varchar) AS "Detail-en-Header",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'en'->>'MetaDesc' As varchar) AS "Detail-en-MetaDesc",
        CAST(NEW."data"->'Detail'->'en'->>'MetaTitle' As varchar) AS "Detail-en-MetaTitle",
        CAST(NEW."data"->'Detail'->'en'->>'GetThereText' As varchar) AS "Detail-en-GetThereText",
        CAST(NEW."data"->'Detail'->'en'->>'AdditionalText' As varchar) AS "Detail-en-AdditionalText",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Header' As varchar) AS "Detail-it-Header",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Detail'->'it'->>'MetaDesc' As varchar) AS "Detail-it-MetaDesc",
        CAST(NEW."data"->'Detail'->'it'->>'MetaTitle' As varchar) AS "Detail-it-MetaTitle",
        CAST(NEW."data"->'Detail'->'it'->>'GetThereText' As varchar) AS "Detail-it-GetThereText",
        CAST(NEW."data"->'Detail'->'it'->>'AdditionalText' As varchar) AS "Detail-it-AdditionalText",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Url' As varchar) AS "ContactInfos-de-Url",
        CAST(NEW."data"->'ContactInfos'->'de'->>'City' As varchar) AS "ContactInfos-de-City",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Email' As varchar) AS "ContactInfos-de-Email",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Address' As varchar) AS "ContactInfos-de-Address",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Surname' As varchar) AS "ContactInfos-de-Surname",
        CAST(NEW."data"->'ContactInfos'->'de'->>'ZipCode' As varchar) AS "ContactInfos-de-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Language' As varchar) AS "ContactInfos-de-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Faxnumber' As varchar) AS "ContactInfos-de-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Givenname' As varchar) AS "ContactInfos-de-Givenname",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CompanyName' As varchar) AS "ContactInfos-de-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryCode' As varchar) AS "ContactInfos-de-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryName' As varchar) AS "ContactInfos-de-CountryName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Phonenumber' As varchar) AS "ContactInfos-de-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Url' As varchar) AS "ContactInfos-en-Url",
        CAST(NEW."data"->'ContactInfos'->'en'->>'City' As varchar) AS "ContactInfos-en-City",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Email' As varchar) AS "ContactInfos-en-Email",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Address' As varchar) AS "ContactInfos-en-Address",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Surname' As varchar) AS "ContactInfos-en-Surname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'ZipCode' As varchar) AS "ContactInfos-en-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Language' As varchar) AS "ContactInfos-en-Language",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Faxnumber' As varchar) AS "ContactInfos-en-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Givenname' As varchar) AS "ContactInfos-en-Givenname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CompanyName' As varchar) AS "ContactInfos-en-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryCode' As varchar) AS "ContactInfos-en-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryName' As varchar) AS "ContactInfos-en-CountryName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Phonenumber' As varchar) AS "ContactInfos-en-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Url' As varchar) AS "ContactInfos-it-Url",
        CAST(NEW."data"->'ContactInfos'->'it'->>'City' As varchar) AS "ContactInfos-it-City",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Email' As varchar) AS "ContactInfos-it-Email",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Address' As varchar) AS "ContactInfos-it-Address",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Surname' As varchar) AS "ContactInfos-it-Surname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'ZipCode' As varchar) AS "ContactInfos-it-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Language' As varchar) AS "ContactInfos-it-Language",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Faxnumber' As varchar) AS "ContactInfos-it-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Givenname' As varchar) AS "ContactInfos-it-Givenname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CompanyName' As varchar) AS "ContactInfos-it-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryCode' As varchar) AS "ContactInfos-it-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryName' As varchar) AS "ContactInfos-it-CountryName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Phonenumber' As varchar) AS "ContactInfos-it-Phonenumber",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->>'Id' As varchar) AS "LocationInfo-TvInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-TvInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'de' As varchar) AS "LocationInfo-TvInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'en' As varchar) AS "LocationInfo-TvInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-TvInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'it' As varchar) AS "LocationInfo-TvInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-TvInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-TvInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-TvInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->>'Id' As varchar) AS "LocationInfo-RegionInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-RegionInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'de' As varchar) AS "LocationInfo-RegionInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'en' As varchar) AS "LocationInfo-RegionInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-RegionInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'it' As varchar) AS "LocationInfo-RegionInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-RegionInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-RegionInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-RegionInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->>'Id' As varchar) AS "LocationInfo-DistrictInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-DistrictInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'de' As varchar) AS "LocationInfo-DistrictInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'en' As varchar) AS "LocationInfo-DistrictInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-DistrictInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'it' As varchar) AS "LocationInfo-DistrictInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-DistrictInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-DistrictInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-DistrictInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->>'Id' As varchar) AS "LocationInfo-MunicipalityInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-MunicipalityInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'de' As varchar) AS "LocationInfo-MunicipalityInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'en' As varchar) AS "LocationInfo-MunicipalityInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-MunicipalityInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'it' As varchar) AS "LocationInfo-MunicipalityInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-MunicipalityInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-MunicipalityInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-MunicipalityInfo-Name-ru";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_gastronomiesopen
    BEFORE INSERT
    ON gastronomiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_gastronomiesopen_fn();

ALTER TABLE gastronomiesopen
    ENABLE ALWAYS TRIGGER t_v_gastronomiesopen;

DROP TABLE IF EXISTS "v_gastronomiesopen_HasLanguage";

CREATE TABLE  "v_gastronomiesopen_HasLanguage" (
                                                   "Id" varchar,
                                                   "data" varchar
);

DROP FUNCTION IF EXISTS v_gastronomiesopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_gastronomiesopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_gastronomiesopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_gastronomiesopen_HasLanguage
    BEFORE INSERT
    ON gastronomiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_gastronomiesopen_HasLanguage_fn();

ALTER TABLE gastronomiesopen
    ENABLE ALWAYS TRIGGER t_v_gastronomiesopen_HasLanguage;

DROP TABLE IF EXISTS "v_gastronomiesopen_CategoryCodes";

CREATE TABLE "v_gastronomiesopen_CategoryCodes" (
                                                    "gastronomiesopen_Id" varchar,
                                                    "Id" varchar,
                                                    "Shortname" varchar
);

DROP FUNCTION IF EXISTS v_gastronomiesopen_CategoryCodes_fn CASCADE;

CREATE FUNCTION v_gastronomiesopen_CategoryCodes_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_gastronomiesopen_CategoryCodes"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'CategoryCodes') AS "data"
        WHERE NEW."data" -> 'CategoryCodes' != 'null')
    SELECT "Id" AS "gastronomiesopen_Id", CAST("data"->>'Id' As varchar) AS "Id",
           CAST("data"->>'Shortname' As varchar) AS "Shortname"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_gastronomiesopen_CategoryCodes
    BEFORE INSERT
    ON gastronomiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_gastronomiesopen_CategoryCodes_fn();

ALTER TABLE gastronomiesopen
    ENABLE ALWAYS TRIGGER t_v_gastronomiesopen_CategoryCodes;


DROP TABLE IF EXISTS "v_gastronomiesopen_OperationSchedule";

CREATE TABLE "v_gastronomiesopen_OperationSchedule" (
                                                        "gastronomiesopen_Id" varchar,
                                                        "Stop" varchar,
                                                        "Type" varchar,
                                                        "Start" varchar,
                                                        "OperationscheduleName-de" varchar
);

DROP FUNCTION IF EXISTS v_gastronomiesopen_OperationSchedule_fn CASCADE;

CREATE FUNCTION v_gastronomiesopen_OperationSchedule_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_gastronomiesopen_OperationSchedule"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'OperationSchedule') AS "data"
        WHERE NEW."data" -> 'OperationSchedule' != 'null')
    SELECT "Id" AS "gastronomiesopen_Id", CAST("data"->>'Stop' As varchar) AS "Stop",
           CAST("data"->>'Type' As varchar) AS "Type",
           CAST("data"->>'Start' As varchar) AS "Start",
           CAST("data"->'OperationscheduleName'->>'de' As varchar) AS "OperationscheduleName-de"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_gastronomiesopen_OperationSchedule
    BEFORE INSERT
    ON gastronomiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_gastronomiesopen_OperationSchedule_fn();

ALTER TABLE gastronomiesopen
    ENABLE ALWAYS TRIGGER t_v_gastronomiesopen_OperationSchedule;


DROP TABLE IF EXISTS "v_gastronomiesopen_OperationSchedule_OperationScheduleTime";

CREATE TABLE "v_gastronomiesopen_OperationSchedule_OperationScheduleTime" (
                                                                              "gastronomiesopen_Id" varchar,
                                                                              "End" varchar,
                                                                              "Start" varchar,
                                                                              "State" integer,
                                                                              "Friday" bool,
                                                                              "Monday" bool,
                                                                              "Sunday" bool,
                                                                              "Tuesday" bool,
                                                                              "Saturday" bool,
                                                                              "Timecode" integer,
                                                                              "Thuresday" bool,
                                                                              "Wednesday" bool
);

DROP FUNCTION IF EXISTS v_gastronomiesopen_OperationSchedule_OperationScheduleTime_fn CASCADE;

CREATE FUNCTION v_gastronomiesopen_OperationSchedule_OperationScheduleTime_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_gastronomiesopen_OperationSchedule_OperationScheduleTime"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'OperationSchedule_OperationScheduleTime') AS "data"
        WHERE NEW."data" -> 'OperationSchedule_OperationScheduleTime' != 'null')
    SELECT "Id" AS "gastronomiesopen_Id", CAST("data"->>'End' As varchar) AS "End",
           CAST("data"->>'Start' As varchar) AS "Start",
           CAST("data"->>'State' As integer) AS "State",
           CAST("data"->>'Friday' As bool) AS "Friday",
           CAST("data"->>'Monday' As bool) AS "Monday",
           CAST("data"->>'Sunday' As bool) AS "Sunday",
           CAST("data"->>'Tuesday' As bool) AS "Tuesday",
           CAST("data"->>'Saturday' As bool) AS "Saturday",
           CAST("data"->>'Timecode' As integer) AS "Timecode",
           CAST("data"->>'Thuresday' As bool) AS "Thuresday",
           CAST("data"->>'Wednesday' As bool) AS "Wednesday"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_gastronomiesopen_OperationSchedule_OperationScheduleTime
    BEFORE INSERT
    ON gastronomiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_gastronomiesopen_OperationSchedule_OperationScheduleTime_fn();

ALTER TABLE gastronomiesopen
    ENABLE ALWAYS TRIGGER t_v_gastronomiesopen_OperationSchedule_OperationScheduleTime;


DROP TABLE IF EXISTS "v_ltstaggingtypes";

CREATE TABLE "v_ltstaggingtypes" (
                                     "Id" varchar,
                                     "Key" varchar,
                                     "Level" integer,
                                     "Entity" varchar,
                                     "TypeParent" varchar,
                                     "TypeNames-de" varchar,
                                     "TypeNames-en" varchar,
                                     "TypeNames-it" varchar,
                                     "TypeDescriptions-de" varchar,
                                     "TypeDescriptions-en" varchar,
                                     "TypeDescriptions-it" varchar
);

ALTER TABLE "v_ltstaggingtypes" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_ltstaggingtypes_fn CASCADE;

CREATE FUNCTION v_ltstaggingtypes_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_ltstaggingtypes
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Key' As varchar) AS "Key",
        CAST(NEW."data"->>'Level' As integer) AS "Level",
        CAST(NEW."data"->>'Entity' As varchar) AS "Entity",
        CAST(NEW."data"->>'TypeParent' As varchar) AS "TypeParent",
        CAST(NEW."data"->'TypeNames'->>'de' As varchar) AS "TypeNames-de",
        CAST(NEW."data"->'TypeNames'->>'en' As varchar) AS "TypeNames-en",
        CAST(NEW."data"->'TypeNames'->>'it' As varchar) AS "TypeNames-it",
        CAST(NEW."data"->'TypeDescriptions'->>'de' As varchar) AS "TypeDescriptions-de",
        CAST(NEW."data"->'TypeDescriptions'->>'en' As varchar) AS "TypeDescriptions-en",
        CAST(NEW."data"->'TypeDescriptions'->>'it' As varchar) AS "TypeDescriptions-it";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_ltstaggingtypes
    BEFORE INSERT
    ON ltstaggingtypes
    FOR EACH ROW
EXECUTE PROCEDURE v_ltstaggingtypes_fn();

ALTER TABLE ltstaggingtypes
    ENABLE ALWAYS TRIGGER t_v_ltstaggingtypes;

DROP TABLE IF EXISTS "v_measuringpoints";

CREATE TABLE "v_measuringpoints" (
                                     "Id" varchar,
                                     "Active" bool,
                                     "Gpstype" varchar,
                                     "OwnerId" varchar,
                                     "Altitude" float,
                                     "Latitude" float,
                                     "Longitude" float,
                                     "Shortname" varchar,
                                     "SmgActive" bool,
                                     "LastUpdate" varchar,
                                     "SnowHeight" varchar,
                                     "FirstImport" varchar,
                                     "Temperature" varchar,
                                     "LastSnowDate" varchar,
                                     "newSnowHeight" varchar,
                                     "AltitudeUnitofMeasure" varchar,
                                     "LocationInfo-TvInfo-Id" varchar,
                                     "LocationInfo-TvInfo-Name-cs" varchar,
                                     "LocationInfo-TvInfo-Name-de" varchar,
                                     "LocationInfo-TvInfo-Name-en" varchar,
                                     "LocationInfo-TvInfo-Name-fr" varchar,
                                     "LocationInfo-TvInfo-Name-it" varchar,
                                     "LocationInfo-TvInfo-Name-nl" varchar,
                                     "LocationInfo-TvInfo-Name-pl" varchar,
                                     "LocationInfo-TvInfo-Name-ru" varchar,
                                     "LocationInfo-AreaInfo-Id" varchar,
                                     "LocationInfo-AreaInfo-Name-cs" varchar,
                                     "LocationInfo-AreaInfo-Name-de" varchar,
                                     "LocationInfo-AreaInfo-Name-en" varchar,
                                     "LocationInfo-AreaInfo-Name-fr" varchar,
                                     "LocationInfo-AreaInfo-Name-it" varchar,
                                     "LocationInfo-AreaInfo-Name-nl" varchar,
                                     "LocationInfo-AreaInfo-Name-pl" varchar,
                                     "LocationInfo-AreaInfo-Name-ru" varchar,
                                     "LocationInfo-RegionInfo-Id" varchar,
                                     "LocationInfo-RegionInfo-Name-cs" varchar,
                                     "LocationInfo-RegionInfo-Name-de" varchar,
                                     "LocationInfo-RegionInfo-Name-en" varchar,
                                     "LocationInfo-RegionInfo-Name-fr" varchar,
                                     "LocationInfo-RegionInfo-Name-it" varchar,
                                     "LocationInfo-RegionInfo-Name-nl" varchar,
                                     "LocationInfo-RegionInfo-Name-pl" varchar,
                                     "LocationInfo-RegionInfo-Name-ru" varchar
);

ALTER TABLE "v_measuringpoints" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_measuringpoints_fn CASCADE;

CREATE FUNCTION v_measuringpoints_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_measuringpoints
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'OwnerId' As varchar) AS "OwnerId",
        CAST(NEW."data"->>'Altitude' As float) AS "Altitude",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastUpdate' As varchar) AS "LastUpdate",
        CAST(NEW."data"->>'SnowHeight' As varchar) AS "SnowHeight",
        CAST(NEW."data"->>'FirstImport' As varchar) AS "FirstImport",
        CAST(NEW."data"->>'Temperature' As varchar) AS "Temperature",
        CAST(NEW."data"->>'LastSnowDate' As varchar) AS "LastSnowDate",
        CAST(NEW."data"->>'newSnowHeight' As varchar) AS "newSnowHeight",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->>'Id' As varchar) AS "LocationInfo-TvInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-TvInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'de' As varchar) AS "LocationInfo-TvInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'en' As varchar) AS "LocationInfo-TvInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-TvInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'it' As varchar) AS "LocationInfo-TvInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-TvInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-TvInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-TvInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->>'Id' As varchar) AS "LocationInfo-AreaInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-AreaInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'de' As varchar) AS "LocationInfo-AreaInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'en' As varchar) AS "LocationInfo-AreaInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-AreaInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'it' As varchar) AS "LocationInfo-AreaInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-AreaInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-AreaInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-AreaInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->>'Id' As varchar) AS "LocationInfo-RegionInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-RegionInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'de' As varchar) AS "LocationInfo-RegionInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'en' As varchar) AS "LocationInfo-RegionInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-RegionInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'it' As varchar) AS "LocationInfo-RegionInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-RegionInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-RegionInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-RegionInfo-Name-ru";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_measuringpoints
    BEFORE INSERT
    ON measuringpoints
    FOR EACH ROW
EXECUTE PROCEDURE v_measuringpoints_fn();

ALTER TABLE measuringpoints
    ENABLE ALWAYS TRIGGER t_v_measuringpoints;

DROP TABLE IF EXISTS "v_measuringpoints_AreaIds";

CREATE TABLE  "v_measuringpoints_AreaIds" (
                                              "Id" varchar,
                                              "data" varchar
);

DROP FUNCTION IF EXISTS v_measuringpoints_AreaIds_fn CASCADE;

CREATE FUNCTION v_measuringpoints_AreaIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_measuringpoints_AreaIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'AreaIds') AS "data"
    WHERE NEW."data" -> 'AreaIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_measuringpoints_AreaIds
    BEFORE INSERT
    ON measuringpoints
    FOR EACH ROW
EXECUTE PROCEDURE v_measuringpoints_AreaIds_fn();

ALTER TABLE measuringpoints
    ENABLE ALWAYS TRIGGER t_v_measuringpoints_AreaIds;

DROP TABLE IF EXISTS "v_metaregionsopen";

CREATE TABLE "v_metaregionsopen" (
                                     "Id" varchar,
                                     "Active" bool,
                                     "Gpstype" varchar,
                                     "Latitude" float,
                                     "Longitude" float,
                                     "Shortname" varchar,
                                     "SmgActive" bool,
                                     "LastChange" varchar,
                                     "VisibleInSearch" bool,
                                     "Detail-cs-Title" varchar,
                                     "Detail-cs-Header" varchar,
                                     "Detail-cs-BaseText" varchar,
                                     "Detail-cs-MetaDesc" varchar,
                                     "Detail-cs-IntroText" varchar,
                                     "Detail-cs-MetaTitle" varchar,
                                     "Detail-cs-SubHeader" varchar,
                                     "Detail-cs-GetThereText" varchar,
                                     "Detail-cs-AdditionalText" varchar,
                                     "Detail-de-Title" varchar,
                                     "Detail-de-Header" varchar,
                                     "Detail-de-BaseText" varchar,
                                     "Detail-de-MetaDesc" varchar,
                                     "Detail-de-IntroText" varchar,
                                     "Detail-de-MetaTitle" varchar,
                                     "Detail-de-SubHeader" varchar,
                                     "Detail-en-Title" varchar,
                                     "Detail-en-Header" varchar,
                                     "Detail-en-BaseText" varchar,
                                     "Detail-en-MetaDesc" varchar,
                                     "Detail-en-IntroText" varchar,
                                     "Detail-en-MetaTitle" varchar,
                                     "Detail-en-SubHeader" varchar,
                                     "Detail-en-GetThereText" varchar,
                                     "Detail-en-AdditionalText" varchar,
                                     "Detail-fr-Title" varchar,
                                     "Detail-fr-Header" varchar,
                                     "Detail-fr-BaseText" varchar,
                                     "Detail-fr-MetaDesc" varchar,
                                     "Detail-fr-IntroText" varchar,
                                     "Detail-fr-MetaTitle" varchar,
                                     "Detail-fr-SubHeader" varchar,
                                     "Detail-fr-GetThereText" varchar,
                                     "Detail-fr-AdditionalText" varchar,
                                     "Detail-it-Title" varchar,
                                     "Detail-it-Header" varchar,
                                     "Detail-it-BaseText" varchar,
                                     "Detail-it-MetaDesc" varchar,
                                     "Detail-it-IntroText" varchar,
                                     "Detail-it-MetaTitle" varchar,
                                     "Detail-it-SubHeader" varchar,
                                     "Detail-it-GetThereText" varchar,
                                     "Detail-it-AdditionalText" varchar,
                                     "Detail-nl-Title" varchar,
                                     "Detail-nl-Header" varchar,
                                     "Detail-nl-BaseText" varchar,
                                     "Detail-nl-MetaDesc" varchar,
                                     "Detail-nl-IntroText" varchar,
                                     "Detail-nl-MetaTitle" varchar,
                                     "Detail-nl-SubHeader" varchar,
                                     "Detail-nl-GetThereText" varchar,
                                     "Detail-nl-AdditionalText" varchar,
                                     "Detail-pl-Title" varchar,
                                     "Detail-pl-Header" varchar,
                                     "Detail-pl-BaseText" varchar,
                                     "Detail-pl-MetaDesc" varchar,
                                     "Detail-pl-IntroText" varchar,
                                     "Detail-pl-MetaTitle" varchar,
                                     "Detail-pl-SubHeader" varchar,
                                     "Detail-pl-GetThereText" varchar,
                                     "Detail-pl-AdditionalText" varchar,
                                     "Detail-ru-Title" varchar,
                                     "Detail-ru-Header" varchar,
                                     "Detail-ru-BaseText" varchar,
                                     "Detail-ru-MetaDesc" varchar,
                                     "Detail-ru-IntroText" varchar,
                                     "Detail-ru-MetaTitle" varchar,
                                     "Detail-ru-SubHeader" varchar,
                                     "Detail-ru-GetThereText" varchar,
                                     "Detail-ru-AdditionalText" varchar,
                                     "DetailThemed-cs-Language" varchar,
                                     "DetailThemed-cs-DetailsThemed-Sommer-Intro" varchar,
                                     "DetailThemed-cs-DetailsThemed-Sommer-Title" varchar,
                                     "DetailThemed-cs-DetailsThemed-Sommer-MetaDesc" varchar,
                                     "DetailThemed-cs-DetailsThemed-Sommer-MetaTitle" varchar,
                                     "DetailThemed-cs-DetailsThemed-Winter-Intro" varchar,
                                     "DetailThemed-cs-DetailsThemed-Winter-Title" varchar,
                                     "DetailThemed-cs-DetailsThemed-Winter-MetaDesc" varchar,
                                     "DetailThemed-cs-DetailsThemed-Winter-MetaTitle" varchar,
                                     "DetailThemed-cs-DetailsThemed-Familienurlaub-Intro" varchar,
                                     "DetailThemed-cs-DetailsThemed-Familienurlaub-Title" varchar,
                                     "DetailThemed-cs-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                     "DetailThemed-cs-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                     "DetailThemed-cs-DetailsThemed-Essen und Trinken-Intro" varchar,
                                     "DetailThemed-cs-DetailsThemed-Essen und Trinken-Title" varchar,
                                     "DetailThemed-cs-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                     "DetailThemed-cs-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                     "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                     "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                     "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                     "D-cs-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                     "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                     "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                     "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                     "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                     "DetailThemed-de-Language" varchar,
                                     "DetailThemed-de-DetailsThemed-Sommer-Intro" varchar,
                                     "DetailThemed-de-DetailsThemed-Sommer-Title" varchar,
                                     "DetailThemed-de-DetailsThemed-Sommer-MetaDesc" varchar,
                                     "DetailThemed-de-DetailsThemed-Sommer-MetaTitle" varchar,
                                     "DetailThemed-de-DetailsThemed-Winter-Intro" varchar,
                                     "DetailThemed-de-DetailsThemed-Winter-Title" varchar,
                                     "DetailThemed-de-DetailsThemed-Winter-MetaDesc" varchar,
                                     "DetailThemed-de-DetailsThemed-Winter-MetaTitle" varchar,
                                     "DetailThemed-de-DetailsThemed-Familienurlaub-Intro" varchar,
                                     "DetailThemed-de-DetailsThemed-Familienurlaub-Title" varchar,
                                     "DetailThemed-de-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                     "DetailThemed-de-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                     "DetailThemed-de-DetailsThemed-Essen und Trinken-Intro" varchar,
                                     "DetailThemed-de-DetailsThemed-Essen und Trinken-Title" varchar,
                                     "DetailThemed-de-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                     "DetailThemed-de-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                     "DetailThemed-de-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                     "DetailThemed-de-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                     "DetailThemed-de-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                     "D-de-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                     "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                     "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                     "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                     "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                     "DetailThemed-en-Language" varchar,
                                     "DetailThemed-en-DetailsThemed-Sommer-Intro" varchar,
                                     "DetailThemed-en-DetailsThemed-Sommer-Title" varchar,
                                     "DetailThemed-en-DetailsThemed-Sommer-MetaDesc" varchar,
                                     "DetailThemed-en-DetailsThemed-Sommer-MetaTitle" varchar,
                                     "DetailThemed-en-DetailsThemed-Winter-Intro" varchar,
                                     "DetailThemed-en-DetailsThemed-Winter-Title" varchar,
                                     "DetailThemed-en-DetailsThemed-Winter-MetaDesc" varchar,
                                     "DetailThemed-en-DetailsThemed-Winter-MetaTitle" varchar,
                                     "DetailThemed-en-DetailsThemed-Familienurlaub-Intro" varchar,
                                     "DetailThemed-en-DetailsThemed-Familienurlaub-Title" varchar,
                                     "DetailThemed-en-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                     "DetailThemed-en-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                     "DetailThemed-en-DetailsThemed-Essen und Trinken-Intro" varchar,
                                     "DetailThemed-en-DetailsThemed-Essen und Trinken-Title" varchar,
                                     "DetailThemed-en-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                     "DetailThemed-en-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                     "DetailThemed-en-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                     "DetailThemed-en-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                     "DetailThemed-en-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                     "D-en-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                     "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                     "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                     "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                     "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                     "DetailThemed-fr-Language" varchar,
                                     "DetailThemed-fr-DetailsThemed-Sommer-Intro" varchar,
                                     "DetailThemed-fr-DetailsThemed-Sommer-Title" varchar,
                                     "DetailThemed-fr-DetailsThemed-Sommer-MetaDesc" varchar,
                                     "DetailThemed-fr-DetailsThemed-Sommer-MetaTitle" varchar,
                                     "DetailThemed-fr-DetailsThemed-Winter-Intro" varchar,
                                     "DetailThemed-fr-DetailsThemed-Winter-Title" varchar,
                                     "DetailThemed-fr-DetailsThemed-Winter-MetaDesc" varchar,
                                     "DetailThemed-fr-DetailsThemed-Winter-MetaTitle" varchar,
                                     "DetailThemed-fr-DetailsThemed-Familienurlaub-Intro" varchar,
                                     "DetailThemed-fr-DetailsThemed-Familienurlaub-Title" varchar,
                                     "DetailThemed-fr-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                     "DetailThemed-fr-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                     "DetailThemed-fr-DetailsThemed-Essen und Trinken-Intro" varchar,
                                     "DetailThemed-fr-DetailsThemed-Essen und Trinken-Title" varchar,
                                     "DetailThemed-fr-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                     "DetailThemed-fr-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                     "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                     "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                     "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                     "D-fr-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                     "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                     "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                     "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                     "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                     "DetailThemed-it-Language" varchar,
                                     "DetailThemed-it-DetailsThemed-Sommer-Intro" varchar,
                                     "DetailThemed-it-DetailsThemed-Sommer-Title" varchar,
                                     "DetailThemed-it-DetailsThemed-Sommer-MetaDesc" varchar,
                                     "DetailThemed-it-DetailsThemed-Sommer-MetaTitle" varchar,
                                     "DetailThemed-it-DetailsThemed-Winter-Intro" varchar,
                                     "DetailThemed-it-DetailsThemed-Winter-Title" varchar,
                                     "DetailThemed-it-DetailsThemed-Winter-MetaDesc" varchar,
                                     "DetailThemed-it-DetailsThemed-Winter-MetaTitle" varchar,
                                     "DetailThemed-it-DetailsThemed-Familienurlaub-Intro" varchar,
                                     "DetailThemed-it-DetailsThemed-Familienurlaub-Title" varchar,
                                     "DetailThemed-it-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                     "DetailThemed-it-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                     "DetailThemed-it-DetailsThemed-Essen und Trinken-Intro" varchar,
                                     "DetailThemed-it-DetailsThemed-Essen und Trinken-Title" varchar,
                                     "DetailThemed-it-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                     "DetailThemed-it-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                     "DetailThemed-it-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                     "DetailThemed-it-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                     "DetailThemed-it-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                     "D-it-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                     "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                     "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                     "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                     "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                     "DetailThemed-nl-Language" varchar,
                                     "DetailThemed-nl-DetailsThemed-Sommer-Intro" varchar,
                                     "DetailThemed-nl-DetailsThemed-Sommer-Title" varchar,
                                     "DetailThemed-nl-DetailsThemed-Sommer-MetaDesc" varchar,
                                     "DetailThemed-nl-DetailsThemed-Sommer-MetaTitle" varchar,
                                     "DetailThemed-nl-DetailsThemed-Winter-Intro" varchar,
                                     "DetailThemed-nl-DetailsThemed-Winter-Title" varchar,
                                     "DetailThemed-nl-DetailsThemed-Winter-MetaDesc" varchar,
                                     "DetailThemed-nl-DetailsThemed-Winter-MetaTitle" varchar,
                                     "DetailThemed-nl-DetailsThemed-Familienurlaub-Intro" varchar,
                                     "DetailThemed-nl-DetailsThemed-Familienurlaub-Title" varchar,
                                     "DetailThemed-nl-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                     "DetailThemed-nl-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                     "DetailThemed-nl-DetailsThemed-Essen und Trinken-Intro" varchar,
                                     "DetailThemed-nl-DetailsThemed-Essen und Trinken-Title" varchar,
                                     "DetailThemed-nl-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                     "DetailThemed-nl-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                     "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                     "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                     "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                     "D-nl-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                     "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                     "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                     "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                     "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                     "DetailThemed-pl-Language" varchar,
                                     "DetailThemed-pl-DetailsThemed-Sommer-Intro" varchar,
                                     "DetailThemed-pl-DetailsThemed-Sommer-Title" varchar,
                                     "DetailThemed-pl-DetailsThemed-Sommer-MetaDesc" varchar,
                                     "DetailThemed-pl-DetailsThemed-Sommer-MetaTitle" varchar,
                                     "DetailThemed-pl-DetailsThemed-Winter-Intro" varchar,
                                     "DetailThemed-pl-DetailsThemed-Winter-Title" varchar,
                                     "DetailThemed-pl-DetailsThemed-Winter-MetaDesc" varchar,
                                     "DetailThemed-pl-DetailsThemed-Winter-MetaTitle" varchar,
                                     "DetailThemed-pl-DetailsThemed-Familienurlaub-Intro" varchar,
                                     "DetailThemed-pl-DetailsThemed-Familienurlaub-Title" varchar,
                                     "DetailThemed-pl-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                     "DetailThemed-pl-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                     "DetailThemed-pl-DetailsThemed-Essen und Trinken-Intro" varchar,
                                     "DetailThemed-pl-DetailsThemed-Essen und Trinken-Title" varchar,
                                     "DetailThemed-pl-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                     "DetailThemed-pl-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                     "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                     "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                     "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                     "D-pl-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                     "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                     "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                     "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                     "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                     "DetailThemed-ru-Language" varchar,
                                     "DetailThemed-ru-DetailsThemed-Sommer-Intro" varchar,
                                     "DetailThemed-ru-DetailsThemed-Sommer-Title" varchar,
                                     "DetailThemed-ru-DetailsThemed-Sommer-MetaDesc" varchar,
                                     "DetailThemed-ru-DetailsThemed-Sommer-MetaTitle" varchar,
                                     "DetailThemed-ru-DetailsThemed-Winter-Intro" varchar,
                                     "DetailThemed-ru-DetailsThemed-Winter-Title" varchar,
                                     "DetailThemed-ru-DetailsThemed-Winter-MetaDesc" varchar,
                                     "DetailThemed-ru-DetailsThemed-Winter-MetaTitle" varchar,
                                     "DetailThemed-ru-DetailsThemed-Familienurlaub-Intro" varchar,
                                     "DetailThemed-ru-DetailsThemed-Familienurlaub-Title" varchar,
                                     "DetailThemed-ru-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                     "DetailThemed-ru-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                     "DetailThemed-ru-DetailsThemed-Essen und Trinken-Intro" varchar,
                                     "DetailThemed-ru-DetailsThemed-Essen und Trinken-Title" varchar,
                                     "DetailThemed-ru-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                     "DetailThemed-ru-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                     "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                     "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                     "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                     "D-ru-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                     "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                     "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                     "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                     "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar
);

ALTER TABLE "v_metaregionsopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_metaregionsopen_fn CASCADE;

CREATE FUNCTION v_metaregionsopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_metaregionsopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'VisibleInSearch' As bool) AS "VisibleInSearch",
        CAST(NEW."data"->'Detail'->'cs'->>'Title' As varchar) AS "Detail-cs-Title",
        CAST(NEW."data"->'Detail'->'cs'->>'Header' As varchar) AS "Detail-cs-Header",
        CAST(NEW."data"->'Detail'->'cs'->>'BaseText' As varchar) AS "Detail-cs-BaseText",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaDesc' As varchar) AS "Detail-cs-MetaDesc",
        CAST(NEW."data"->'Detail'->'cs'->>'IntroText' As varchar) AS "Detail-cs-IntroText",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaTitle' As varchar) AS "Detail-cs-MetaTitle",
        CAST(NEW."data"->'Detail'->'cs'->>'SubHeader' As varchar) AS "Detail-cs-SubHeader",
        CAST(NEW."data"->'Detail'->'cs'->>'GetThereText' As varchar) AS "Detail-cs-GetThereText",
        CAST(NEW."data"->'Detail'->'cs'->>'AdditionalText' As varchar) AS "Detail-cs-AdditionalText",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Header' As varchar) AS "Detail-de-Header",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'MetaDesc' As varchar) AS "Detail-de-MetaDesc",
        CAST(NEW."data"->'Detail'->'de'->>'IntroText' As varchar) AS "Detail-de-IntroText",
        CAST(NEW."data"->'Detail'->'de'->>'MetaTitle' As varchar) AS "Detail-de-MetaTitle",
        CAST(NEW."data"->'Detail'->'de'->>'SubHeader' As varchar) AS "Detail-de-SubHeader",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'Header' As varchar) AS "Detail-en-Header",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'MetaDesc' As varchar) AS "Detail-en-MetaDesc",
        CAST(NEW."data"->'Detail'->'en'->>'IntroText' As varchar) AS "Detail-en-IntroText",
        CAST(NEW."data"->'Detail'->'en'->>'MetaTitle' As varchar) AS "Detail-en-MetaTitle",
        CAST(NEW."data"->'Detail'->'en'->>'SubHeader' As varchar) AS "Detail-en-SubHeader",
        CAST(NEW."data"->'Detail'->'en'->>'GetThereText' As varchar) AS "Detail-en-GetThereText",
        CAST(NEW."data"->'Detail'->'en'->>'AdditionalText' As varchar) AS "Detail-en-AdditionalText",
        CAST(NEW."data"->'Detail'->'fr'->>'Title' As varchar) AS "Detail-fr-Title",
        CAST(NEW."data"->'Detail'->'fr'->>'Header' As varchar) AS "Detail-fr-Header",
        CAST(NEW."data"->'Detail'->'fr'->>'BaseText' As varchar) AS "Detail-fr-BaseText",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaDesc' As varchar) AS "Detail-fr-MetaDesc",
        CAST(NEW."data"->'Detail'->'fr'->>'IntroText' As varchar) AS "Detail-fr-IntroText",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaTitle' As varchar) AS "Detail-fr-MetaTitle",
        CAST(NEW."data"->'Detail'->'fr'->>'SubHeader' As varchar) AS "Detail-fr-SubHeader",
        CAST(NEW."data"->'Detail'->'fr'->>'GetThereText' As varchar) AS "Detail-fr-GetThereText",
        CAST(NEW."data"->'Detail'->'fr'->>'AdditionalText' As varchar) AS "Detail-fr-AdditionalText",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Header' As varchar) AS "Detail-it-Header",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'MetaDesc' As varchar) AS "Detail-it-MetaDesc",
        CAST(NEW."data"->'Detail'->'it'->>'IntroText' As varchar) AS "Detail-it-IntroText",
        CAST(NEW."data"->'Detail'->'it'->>'MetaTitle' As varchar) AS "Detail-it-MetaTitle",
        CAST(NEW."data"->'Detail'->'it'->>'SubHeader' As varchar) AS "Detail-it-SubHeader",
        CAST(NEW."data"->'Detail'->'it'->>'GetThereText' As varchar) AS "Detail-it-GetThereText",
        CAST(NEW."data"->'Detail'->'it'->>'AdditionalText' As varchar) AS "Detail-it-AdditionalText",
        CAST(NEW."data"->'Detail'->'nl'->>'Title' As varchar) AS "Detail-nl-Title",
        CAST(NEW."data"->'Detail'->'nl'->>'Header' As varchar) AS "Detail-nl-Header",
        CAST(NEW."data"->'Detail'->'nl'->>'BaseText' As varchar) AS "Detail-nl-BaseText",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaDesc' As varchar) AS "Detail-nl-MetaDesc",
        CAST(NEW."data"->'Detail'->'nl'->>'IntroText' As varchar) AS "Detail-nl-IntroText",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaTitle' As varchar) AS "Detail-nl-MetaTitle",
        CAST(NEW."data"->'Detail'->'nl'->>'SubHeader' As varchar) AS "Detail-nl-SubHeader",
        CAST(NEW."data"->'Detail'->'nl'->>'GetThereText' As varchar) AS "Detail-nl-GetThereText",
        CAST(NEW."data"->'Detail'->'nl'->>'AdditionalText' As varchar) AS "Detail-nl-AdditionalText",
        CAST(NEW."data"->'Detail'->'pl'->>'Title' As varchar) AS "Detail-pl-Title",
        CAST(NEW."data"->'Detail'->'pl'->>'Header' As varchar) AS "Detail-pl-Header",
        CAST(NEW."data"->'Detail'->'pl'->>'BaseText' As varchar) AS "Detail-pl-BaseText",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaDesc' As varchar) AS "Detail-pl-MetaDesc",
        CAST(NEW."data"->'Detail'->'pl'->>'IntroText' As varchar) AS "Detail-pl-IntroText",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaTitle' As varchar) AS "Detail-pl-MetaTitle",
        CAST(NEW."data"->'Detail'->'pl'->>'SubHeader' As varchar) AS "Detail-pl-SubHeader",
        CAST(NEW."data"->'Detail'->'pl'->>'GetThereText' As varchar) AS "Detail-pl-GetThereText",
        CAST(NEW."data"->'Detail'->'pl'->>'AdditionalText' As varchar) AS "Detail-pl-AdditionalText",
        CAST(NEW."data"->'Detail'->'ru'->>'Title' As varchar) AS "Detail-ru-Title",
        CAST(NEW."data"->'Detail'->'ru'->>'Header' As varchar) AS "Detail-ru-Header",
        CAST(NEW."data"->'Detail'->'ru'->>'BaseText' As varchar) AS "Detail-ru-BaseText",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaDesc' As varchar) AS "Detail-ru-MetaDesc",
        CAST(NEW."data"->'Detail'->'ru'->>'IntroText' As varchar) AS "Detail-ru-IntroText",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaTitle' As varchar) AS "Detail-ru-MetaTitle",
        CAST(NEW."data"->'Detail'->'ru'->>'SubHeader' As varchar) AS "Detail-ru-SubHeader",
        CAST(NEW."data"->'Detail'->'ru'->>'GetThereText' As varchar) AS "Detail-ru-GetThereText",
        CAST(NEW."data"->'Detail'->'ru'->>'AdditionalText' As varchar) AS "Detail-ru-AdditionalText",
        CAST(NEW."data"->'DetailThemed'->'cs'->>'Language' As varchar) AS "DetailThemed-cs-Language",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-cs-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-cs-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-cs-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-cs-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-cs-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->>'Language' As varchar) AS "DetailThemed-de-Language",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-de-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-de-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-de-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-de-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-de-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->>'Language' As varchar) AS "DetailThemed-en-Language",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-en-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-en-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-en-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-en-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-en-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->>'Language' As varchar) AS "DetailThemed-fr-Language",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-fr-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-fr-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-fr-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-fr-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-fr-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->>'Language' As varchar) AS "DetailThemed-it-Language",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-it-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-it-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-it-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-it-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-it-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->>'Language' As varchar) AS "DetailThemed-nl-Language",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-nl-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-nl-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-nl-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-nl-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-nl-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->>'Language' As varchar) AS "DetailThemed-pl-Language",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-pl-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-pl-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-pl-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-pl-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-pl-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->>'Language' As varchar) AS "DetailThemed-ru-Language",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-ru-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-ru-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-ru-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-ru-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-ru-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_metaregionsopen
    BEFORE INSERT
    ON metaregionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_metaregionsopen_fn();

ALTER TABLE metaregionsopen
    ENABLE ALWAYS TRIGGER t_v_metaregionsopen;

DROP TABLE IF EXISTS "v_metaregionsopen_RegionIds";

CREATE TABLE  "v_metaregionsopen_RegionIds" (
                                                "Id" varchar,
                                                "data" varchar
);

DROP FUNCTION IF EXISTS v_metaregionsopen_RegionIds_fn CASCADE;

CREATE FUNCTION v_metaregionsopen_RegionIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_metaregionsopen_RegionIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'RegionIds') AS "data"
    WHERE NEW."data" -> 'RegionIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_metaregionsopen_RegionIds
    BEFORE INSERT
    ON metaregionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_metaregionsopen_RegionIds_fn();

ALTER TABLE metaregionsopen
    ENABLE ALWAYS TRIGGER t_v_metaregionsopen_RegionIds;

DROP TABLE IF EXISTS "v_metaregionsopen_DistrictIds";

CREATE TABLE  "v_metaregionsopen_DistrictIds" (
                                                  "Id" varchar,
                                                  "data" varchar
);

DROP FUNCTION IF EXISTS v_metaregionsopen_DistrictIds_fn CASCADE;

CREATE FUNCTION v_metaregionsopen_DistrictIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_metaregionsopen_DistrictIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'DistrictIds') AS "data"
    WHERE NEW."data" -> 'DistrictIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_metaregionsopen_DistrictIds
    BEFORE INSERT
    ON metaregionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_metaregionsopen_DistrictIds_fn();

ALTER TABLE metaregionsopen
    ENABLE ALWAYS TRIGGER t_v_metaregionsopen_DistrictIds;

DROP TABLE IF EXISTS "v_metaregionsopen_HasLanguage";

CREATE TABLE  "v_metaregionsopen_HasLanguage" (
                                                  "Id" varchar,
                                                  "data" varchar
);

DROP FUNCTION IF EXISTS v_metaregionsopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_metaregionsopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_metaregionsopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_metaregionsopen_HasLanguage
    BEFORE INSERT
    ON metaregionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_metaregionsopen_HasLanguage_fn();

ALTER TABLE metaregionsopen
    ENABLE ALWAYS TRIGGER t_v_metaregionsopen_HasLanguage;

DROP TABLE IF EXISTS "v_metaregionsopen_TourismvereinIds";

CREATE TABLE  "v_metaregionsopen_TourismvereinIds" (
                                                       "Id" varchar,
                                                       "data" varchar
);

DROP FUNCTION IF EXISTS v_metaregionsopen_TourismvereinIds_fn CASCADE;

CREATE FUNCTION v_metaregionsopen_TourismvereinIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_metaregionsopen_TourismvereinIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'TourismvereinIds') AS "data"
    WHERE NEW."data" -> 'TourismvereinIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_metaregionsopen_TourismvereinIds
    BEFORE INSERT
    ON metaregionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_metaregionsopen_TourismvereinIds_fn();

ALTER TABLE metaregionsopen
    ENABLE ALWAYS TRIGGER t_v_metaregionsopen_TourismvereinIds;

DROP TABLE IF EXISTS "v_activitiesopen";

CREATE TABLE "v_activitiesopen" (
                                    "Id" varchar,
                                    "Type" varchar,
                                    "Active" bool,
                                    "IsOpen" bool,
                                    "PoiType" varchar,
                                    "SubType" varchar,
                                    "FeetClimb" bool,
                                    "Highlight" bool,
                                    "Shortname" varchar,
                                    "SmgActive" bool,
                                    "Difficulty" varchar,
                                    "HasRentals" bool,
                                    "IsPrepared" bool,
                                    "LastChange" varchar,
                                    "FirstImport" varchar,
                                    "IsWithLigth" bool,
                                    "RunToValley" bool,
                                    "AltitudeSumUp" float,
                                    "BikeTransport" bool,
                                    "LiftAvailable" bool,
                                    "DistanceLength" float,
                                    "AltitudeSumDown" float,
                                    "HasFreeEntrance" bool,
                                    "OutdooractiveID" varchar,
                                    "DistanceDuration" float,
                                    "AltitudeDifference" float,
                                    "AltitudeLowestPoint" float,
                                    "AltitudeHighestPoint" float,
                                    "TourismorganizationId" varchar,
                                    "Detail-de-Title" varchar,
                                    "Detail-de-BaseText" varchar,
                                    "Detail-de-Language" varchar,
                                    "Detail-de-GetThereText" varchar,
                                    "Detail-en-Title" varchar,
                                    "Detail-en-BaseText" varchar,
                                    "Detail-en-Language" varchar,
                                    "Detail-it-Title" varchar,
                                    "Detail-it-BaseText" varchar,
                                    "Detail-it-Language" varchar,
                                    "Ratings-Stamina" varchar,
                                    "Ratings-Landscape" varchar,
                                    "Ratings-Technique" varchar,
                                    "Ratings-Difficulty" varchar,
                                    "Ratings-Experience" varchar,
                                    "GpsPoints-position-Gpstype" varchar,
                                    "GpsPoints-position-Altitude" float,
                                    "GpsPoints-position-Latitude" float,
                                    "GpsPoints-position-Longitude" float,
                                    "GpsPoints-position-AltitudeUnitofMeasure" varchar,
                                    "GpsPoints-endposition-Gpstype" varchar,
                                    "GpsPoints-endposition-Altitude" float,
                                    "GpsPoints-endposition-Latitude" float,
                                    "GpsPoints-endposition-Longitude" float,
                                    "GpsPoints-endposition-AltitudeUnitofMeasure" varchar,
                                    "ContactInfos-de-Url" varchar,
                                    "ContactInfos-de-City" varchar,
                                    "ContactInfos-de-Email" varchar,
                                    "ContactInfos-de-Address" varchar,
                                    "ContactInfos-de-Surname" varchar,
                                    "ContactInfos-de-ZipCode" varchar,
                                    "ContactInfos-de-Language" varchar,
                                    "ContactInfos-de-Faxnumber" varchar,
                                    "ContactInfos-de-Givenname" varchar,
                                    "ContactInfos-de-NamePrefix" varchar,
                                    "ContactInfos-de-CompanyName" varchar,
                                    "ContactInfos-de-CountryCode" varchar,
                                    "ContactInfos-de-CountryName" varchar,
                                    "ContactInfos-de-Phonenumber" varchar,
                                    "ContactInfos-en-Url" varchar,
                                    "ContactInfos-en-City" varchar,
                                    "ContactInfos-en-Email" varchar,
                                    "ContactInfos-en-Address" varchar,
                                    "ContactInfos-en-Surname" varchar,
                                    "ContactInfos-en-ZipCode" varchar,
                                    "ContactInfos-en-Language" varchar,
                                    "ContactInfos-en-Faxnumber" varchar,
                                    "ContactInfos-en-Givenname" varchar,
                                    "ContactInfos-en-NamePrefix" varchar,
                                    "ContactInfos-en-CompanyName" varchar,
                                    "ContactInfos-en-CountryCode" varchar,
                                    "ContactInfos-en-CountryName" varchar,
                                    "ContactInfos-en-Phonenumber" varchar,
                                    "ContactInfos-it-Url" varchar,
                                    "ContactInfos-it-City" varchar,
                                    "ContactInfos-it-Email" varchar,
                                    "ContactInfos-it-Address" varchar,
                                    "ContactInfos-it-Surname" varchar,
                                    "ContactInfos-it-ZipCode" varchar,
                                    "ContactInfos-it-Language" varchar,
                                    "ContactInfos-it-Faxnumber" varchar,
                                    "ContactInfos-it-Givenname" varchar,
                                    "ContactInfos-it-NamePrefix" varchar,
                                    "ContactInfos-it-CompanyName" varchar,
                                    "ContactInfos-it-CountryCode" varchar,
                                    "ContactInfos-it-CountryName" varchar,
                                    "ContactInfos-it-Phonenumber" varchar,
                                    "LocationInfo-TvInfo-Id" varchar,
                                    "LocationInfo-TvInfo-Name-cs" varchar,
                                    "LocationInfo-TvInfo-Name-de" varchar,
                                    "LocationInfo-TvInfo-Name-en" varchar,
                                    "LocationInfo-TvInfo-Name-fr" varchar,
                                    "LocationInfo-TvInfo-Name-it" varchar,
                                    "LocationInfo-TvInfo-Name-nl" varchar,
                                    "LocationInfo-TvInfo-Name-pl" varchar,
                                    "LocationInfo-TvInfo-Name-ru" varchar,
                                    "LocationInfo-AreaInfo-Id" varchar,
                                    "LocationInfo-AreaInfo-Name-cs" varchar,
                                    "LocationInfo-AreaInfo-Name-de" varchar,
                                    "LocationInfo-AreaInfo-Name-en" varchar,
                                    "LocationInfo-AreaInfo-Name-fr" varchar,
                                    "LocationInfo-AreaInfo-Name-it" varchar,
                                    "LocationInfo-AreaInfo-Name-nl" varchar,
                                    "LocationInfo-AreaInfo-Name-pl" varchar,
                                    "LocationInfo-AreaInfo-Name-ru" varchar,
                                    "LocationInfo-RegionInfo-Id" varchar,
                                    "LocationInfo-RegionInfo-Name-cs" varchar,
                                    "LocationInfo-RegionInfo-Name-de" varchar,
                                    "LocationInfo-RegionInfo-Name-en" varchar,
                                    "LocationInfo-RegionInfo-Name-fr" varchar,
                                    "LocationInfo-RegionInfo-Name-it" varchar,
                                    "LocationInfo-RegionInfo-Name-nl" varchar,
                                    "LocationInfo-RegionInfo-Name-pl" varchar,
                                    "LocationInfo-RegionInfo-Name-ru" varchar,
                                    "AdditionalPoiInfos-de-PoiType" varchar,
                                    "AdditionalPoiInfos-de-SubType" varchar,
                                    "AdditionalPoiInfos-de-Language" varchar,
                                    "AdditionalPoiInfos-de-MainType" varchar,
                                    "AdditionalPoiInfos-en-PoiType" varchar,
                                    "AdditionalPoiInfos-en-SubType" varchar,
                                    "AdditionalPoiInfos-en-Language" varchar,
                                    "AdditionalPoiInfos-en-MainType" varchar,
                                    "AdditionalPoiInfos-it-PoiType" varchar,
                                    "AdditionalPoiInfos-it-SubType" varchar,
                                    "AdditionalPoiInfos-it-Language" varchar,
                                    "AdditionalPoiInfos-it-MainType" varchar
);

ALTER TABLE "v_activitiesopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_activitiesopen_fn CASCADE;

CREATE FUNCTION v_activitiesopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_activitiesopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Type' As varchar) AS "Type",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'IsOpen' As bool) AS "IsOpen",
        CAST(NEW."data"->>'PoiType' As varchar) AS "PoiType",
        CAST(NEW."data"->>'SubType' As varchar) AS "SubType",
        CAST(NEW."data"->>'FeetClimb' As bool) AS "FeetClimb",
        CAST(NEW."data"->>'Highlight' As bool) AS "Highlight",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'Difficulty' As varchar) AS "Difficulty",
        CAST(NEW."data"->>'HasRentals' As bool) AS "HasRentals",
        CAST(NEW."data"->>'IsPrepared' As bool) AS "IsPrepared",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'FirstImport' As varchar) AS "FirstImport",
        CAST(NEW."data"->>'IsWithLigth' As bool) AS "IsWithLigth",
        CAST(NEW."data"->>'RunToValley' As bool) AS "RunToValley",
        CAST(NEW."data"->>'AltitudeSumUp' As float) AS "AltitudeSumUp",
        CAST(NEW."data"->>'BikeTransport' As bool) AS "BikeTransport",
        CAST(NEW."data"->>'LiftAvailable' As bool) AS "LiftAvailable",
        CAST(NEW."data"->>'DistanceLength' As float) AS "DistanceLength",
        CAST(NEW."data"->>'AltitudeSumDown' As float) AS "AltitudeSumDown",
        CAST(NEW."data"->>'HasFreeEntrance' As bool) AS "HasFreeEntrance",
        CAST(NEW."data"->>'OutdooractiveID' As varchar) AS "OutdooractiveID",
        CAST(NEW."data"->>'DistanceDuration' As float) AS "DistanceDuration",
        CAST(NEW."data"->>'AltitudeDifference' As float) AS "AltitudeDifference",
        CAST(NEW."data"->>'AltitudeLowestPoint' As float) AS "AltitudeLowestPoint",
        CAST(NEW."data"->>'AltitudeHighestPoint' As float) AS "AltitudeHighestPoint",
        CAST(NEW."data"->>'TourismorganizationId' As varchar) AS "TourismorganizationId",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'de'->>'GetThereText' As varchar) AS "Detail-de-GetThereText",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Ratings'->>'Stamina' As varchar) AS "Ratings-Stamina",
        CAST(NEW."data"->'Ratings'->>'Landscape' As varchar) AS "Ratings-Landscape",
        CAST(NEW."data"->'Ratings'->>'Technique' As varchar) AS "Ratings-Technique",
        CAST(NEW."data"->'Ratings'->>'Difficulty' As varchar) AS "Ratings-Difficulty",
        CAST(NEW."data"->'Ratings'->>'Experience' As varchar) AS "Ratings-Experience",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Gpstype' As varchar) AS "GpsPoints-position-Gpstype",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Altitude' As float) AS "GpsPoints-position-Altitude",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Latitude' As float) AS "GpsPoints-position-Latitude",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Longitude' As float) AS "GpsPoints-position-Longitude",
        CAST(NEW."data"->'GpsPoints'->'position'->>'AltitudeUnitofMeasure' As varchar) AS "GpsPoints-position-AltitudeUnitofMeasure",
        CAST(NEW."data"->'GpsPoints'->'endposition'->>'Gpstype' As varchar) AS "GpsPoints-endposition-Gpstype",
        CAST(NEW."data"->'GpsPoints'->'endposition'->>'Altitude' As float) AS "GpsPoints-endposition-Altitude",
        CAST(NEW."data"->'GpsPoints'->'endposition'->>'Latitude' As float) AS "GpsPoints-endposition-Latitude",
        CAST(NEW."data"->'GpsPoints'->'endposition'->>'Longitude' As float) AS "GpsPoints-endposition-Longitude",
        CAST(NEW."data"->'GpsPoints'->'endposition'->>'AltitudeUnitofMeasure' As varchar) AS "GpsPoints-endposition-AltitudeUnitofMeasure",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Url' As varchar) AS "ContactInfos-de-Url",
        CAST(NEW."data"->'ContactInfos'->'de'->>'City' As varchar) AS "ContactInfos-de-City",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Email' As varchar) AS "ContactInfos-de-Email",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Address' As varchar) AS "ContactInfos-de-Address",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Surname' As varchar) AS "ContactInfos-de-Surname",
        CAST(NEW."data"->'ContactInfos'->'de'->>'ZipCode' As varchar) AS "ContactInfos-de-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Language' As varchar) AS "ContactInfos-de-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Faxnumber' As varchar) AS "ContactInfos-de-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Givenname' As varchar) AS "ContactInfos-de-Givenname",
        CAST(NEW."data"->'ContactInfos'->'de'->>'NamePrefix' As varchar) AS "ContactInfos-de-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CompanyName' As varchar) AS "ContactInfos-de-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryCode' As varchar) AS "ContactInfos-de-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryName' As varchar) AS "ContactInfos-de-CountryName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Phonenumber' As varchar) AS "ContactInfos-de-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Url' As varchar) AS "ContactInfos-en-Url",
        CAST(NEW."data"->'ContactInfos'->'en'->>'City' As varchar) AS "ContactInfos-en-City",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Email' As varchar) AS "ContactInfos-en-Email",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Address' As varchar) AS "ContactInfos-en-Address",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Surname' As varchar) AS "ContactInfos-en-Surname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'ZipCode' As varchar) AS "ContactInfos-en-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Language' As varchar) AS "ContactInfos-en-Language",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Faxnumber' As varchar) AS "ContactInfos-en-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Givenname' As varchar) AS "ContactInfos-en-Givenname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'NamePrefix' As varchar) AS "ContactInfos-en-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CompanyName' As varchar) AS "ContactInfos-en-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryCode' As varchar) AS "ContactInfos-en-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryName' As varchar) AS "ContactInfos-en-CountryName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Phonenumber' As varchar) AS "ContactInfos-en-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Url' As varchar) AS "ContactInfos-it-Url",
        CAST(NEW."data"->'ContactInfos'->'it'->>'City' As varchar) AS "ContactInfos-it-City",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Email' As varchar) AS "ContactInfos-it-Email",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Address' As varchar) AS "ContactInfos-it-Address",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Surname' As varchar) AS "ContactInfos-it-Surname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'ZipCode' As varchar) AS "ContactInfos-it-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Language' As varchar) AS "ContactInfos-it-Language",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Faxnumber' As varchar) AS "ContactInfos-it-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Givenname' As varchar) AS "ContactInfos-it-Givenname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'NamePrefix' As varchar) AS "ContactInfos-it-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CompanyName' As varchar) AS "ContactInfos-it-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryCode' As varchar) AS "ContactInfos-it-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryName' As varchar) AS "ContactInfos-it-CountryName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Phonenumber' As varchar) AS "ContactInfos-it-Phonenumber",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->>'Id' As varchar) AS "LocationInfo-TvInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-TvInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'de' As varchar) AS "LocationInfo-TvInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'en' As varchar) AS "LocationInfo-TvInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-TvInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'it' As varchar) AS "LocationInfo-TvInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-TvInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-TvInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-TvInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->>'Id' As varchar) AS "LocationInfo-AreaInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-AreaInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'de' As varchar) AS "LocationInfo-AreaInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'en' As varchar) AS "LocationInfo-AreaInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-AreaInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'it' As varchar) AS "LocationInfo-AreaInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-AreaInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-AreaInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-AreaInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->>'Id' As varchar) AS "LocationInfo-RegionInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-RegionInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'de' As varchar) AS "LocationInfo-RegionInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'en' As varchar) AS "LocationInfo-RegionInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-RegionInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'it' As varchar) AS "LocationInfo-RegionInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-RegionInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-RegionInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-RegionInfo-Name-ru",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'PoiType' As varchar) AS "AdditionalPoiInfos-de-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'SubType' As varchar) AS "AdditionalPoiInfos-de-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'Language' As varchar) AS "AdditionalPoiInfos-de-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'MainType' As varchar) AS "AdditionalPoiInfos-de-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'PoiType' As varchar) AS "AdditionalPoiInfos-en-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'SubType' As varchar) AS "AdditionalPoiInfos-en-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'Language' As varchar) AS "AdditionalPoiInfos-en-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'MainType' As varchar) AS "AdditionalPoiInfos-en-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'PoiType' As varchar) AS "AdditionalPoiInfos-it-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'SubType' As varchar) AS "AdditionalPoiInfos-it-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'Language' As varchar) AS "AdditionalPoiInfos-it-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'MainType' As varchar) AS "AdditionalPoiInfos-it-MainType";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_activitiesopen
    BEFORE INSERT
    ON activitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_activitiesopen_fn();

ALTER TABLE activitiesopen
    ENABLE ALWAYS TRIGGER t_v_activitiesopen;

DROP TABLE IF EXISTS "v_activitiesopen_AreaId";

CREATE TABLE  "v_activitiesopen_AreaId" (
                                            "Id" varchar,
                                            "data" varchar
);

DROP FUNCTION IF EXISTS v_activitiesopen_AreaId_fn CASCADE;

CREATE FUNCTION v_activitiesopen_AreaId_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_activitiesopen_AreaId"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'AreaId') AS "data"
    WHERE NEW."data" -> 'AreaId' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_activitiesopen_AreaId
    BEFORE INSERT
    ON activitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_activitiesopen_AreaId_fn();

ALTER TABLE activitiesopen
    ENABLE ALWAYS TRIGGER t_v_activitiesopen_AreaId;

DROP TABLE IF EXISTS "v_activitiesopen_SmgTags";

CREATE TABLE  "v_activitiesopen_SmgTags" (
                                             "Id" varchar,
                                             "data" varchar
);

DROP FUNCTION IF EXISTS v_activitiesopen_SmgTags_fn CASCADE;

CREATE FUNCTION v_activitiesopen_SmgTags_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_activitiesopen_SmgTags"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'SmgTags') AS "data"
    WHERE NEW."data" -> 'SmgTags' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_activitiesopen_SmgTags
    BEFORE INSERT
    ON activitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_activitiesopen_SmgTags_fn();

ALTER TABLE activitiesopen
    ENABLE ALWAYS TRIGGER t_v_activitiesopen_SmgTags;

DROP TABLE IF EXISTS "v_activitiesopen_Exposition";

CREATE TABLE  "v_activitiesopen_Exposition" (
                                                "Id" varchar,
                                                "data" varchar
);

DROP FUNCTION IF EXISTS v_activitiesopen_Exposition_fn CASCADE;

CREATE FUNCTION v_activitiesopen_Exposition_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_activitiesopen_Exposition"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'Exposition') AS "data"
    WHERE NEW."data" -> 'Exposition' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_activitiesopen_Exposition
    BEFORE INSERT
    ON activitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_activitiesopen_Exposition_fn();

ALTER TABLE activitiesopen
    ENABLE ALWAYS TRIGGER t_v_activitiesopen_Exposition;

DROP TABLE IF EXISTS "v_activitiesopen_HasLanguage";

CREATE TABLE  "v_activitiesopen_HasLanguage" (
                                                 "Id" varchar,
                                                 "data" varchar
);

DROP FUNCTION IF EXISTS v_activitiesopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_activitiesopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_activitiesopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_activitiesopen_HasLanguage
    BEFORE INSERT
    ON activitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_activitiesopen_HasLanguage_fn();

ALTER TABLE activitiesopen
    ENABLE ALWAYS TRIGGER t_v_activitiesopen_HasLanguage;

DROP TABLE IF EXISTS "v_activitiesopen_GpsInfo";

CREATE TABLE "v_activitiesopen_GpsInfo" (
                                            "activitiesopen_Id" varchar,
                                            "Gpstype" varchar,
                                            "Altitude" float,
                                            "Latitude" float,
                                            "Longitude" float,
                                            "AltitudeUnitofMeasure" varchar
);

DROP FUNCTION IF EXISTS v_activitiesopen_GpsInfo_fn CASCADE;

CREATE FUNCTION v_activitiesopen_GpsInfo_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_activitiesopen_GpsInfo"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'GpsInfo') AS "data"
        WHERE NEW."data" -> 'GpsInfo' != 'null')
    SELECT "Id" AS "activitiesopen_Id", CAST("data"->>'Gpstype' As varchar) AS "Gpstype",
           CAST("data"->>'Altitude' As float) AS "Altitude",
           CAST("data"->>'Latitude' As float) AS "Latitude",
           CAST("data"->>'Longitude' As float) AS "Longitude",
           CAST("data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_activitiesopen_GpsInfo
    BEFORE INSERT
    ON activitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_activitiesopen_GpsInfo_fn();

ALTER TABLE activitiesopen
    ENABLE ALWAYS TRIGGER t_v_activitiesopen_GpsInfo;


DROP TABLE IF EXISTS "v_activitiesopen_GpsTrack";

CREATE TABLE "v_activitiesopen_GpsTrack" (
                                             "activitiesopen_Id" varchar,
                                             "Id" varchar,
                                             "Type" varchar,
                                             "GpxTrackUrl" varchar,
                                             "GpxTrackDesc-de" varchar,
                                             "GpxTrackDesc-en" varchar,
                                             "GpxTrackDesc-it" varchar
);

DROP FUNCTION IF EXISTS v_activitiesopen_GpsTrack_fn CASCADE;

CREATE FUNCTION v_activitiesopen_GpsTrack_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_activitiesopen_GpsTrack"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'GpsTrack') AS "data"
        WHERE NEW."data" -> 'GpsTrack' != 'null')
    SELECT "Id" AS "activitiesopen_Id", CAST("data"->>'Id' As varchar) AS "Id",
           CAST("data"->>'Type' As varchar) AS "Type",
           CAST("data"->>'GpxTrackUrl' As varchar) AS "GpxTrackUrl",
           CAST("data"->'GpxTrackDesc'->>'de' As varchar) AS "GpxTrackDesc-de",
           CAST("data"->'GpxTrackDesc'->>'en' As varchar) AS "GpxTrackDesc-en",
           CAST("data"->'GpxTrackDesc'->>'it' As varchar) AS "GpxTrackDesc-it"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_activitiesopen_GpsTrack
    BEFORE INSERT
    ON activitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_activitiesopen_GpsTrack_fn();

ALTER TABLE activitiesopen
    ENABLE ALWAYS TRIGGER t_v_activitiesopen_GpsTrack;


DROP TABLE IF EXISTS "v_activitiesopen_OperationSchedule";

CREATE TABLE "v_activitiesopen_OperationSchedule" (
                                                      "activitiesopen_Id" varchar,
                                                      "Stop" varchar,
                                                      "Type" varchar,
                                                      "Start" varchar,
                                                      "OperationscheduleName-de" varchar
);

DROP FUNCTION IF EXISTS v_activitiesopen_OperationSchedule_fn CASCADE;

CREATE FUNCTION v_activitiesopen_OperationSchedule_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_activitiesopen_OperationSchedule"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'OperationSchedule') AS "data"
        WHERE NEW."data" -> 'OperationSchedule' != 'null')
    SELECT "Id" AS "activitiesopen_Id", CAST("data"->>'Stop' As varchar) AS "Stop",
           CAST("data"->>'Type' As varchar) AS "Type",
           CAST("data"->>'Start' As varchar) AS "Start",
           CAST("data"->'OperationscheduleName'->>'de' As varchar) AS "OperationscheduleName-de"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_activitiesopen_OperationSchedule
    BEFORE INSERT
    ON activitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_activitiesopen_OperationSchedule_fn();

ALTER TABLE activitiesopen
    ENABLE ALWAYS TRIGGER t_v_activitiesopen_OperationSchedule;


DROP TABLE IF EXISTS "v_accommodationroomsopen";

CREATE TABLE "v_accommodationroomsopen" (
                                            "Id" varchar,
                                            "A0RID" varchar,
                                            "HGVId" varchar,
                                            "LTSId" varchar,
                                            "Source" varchar,
                                            "Roommax" integer,
                                            "Roommin" integer,
                                            "Roomstd" integer,
                                            "RoomCode" varchar,
                                            "Roomtype" varchar,
                                            "Shortname" varchar,
                                            "RoomQuantity" integer,
                                            "AccoRoomDetail-de-Name" varchar,
                                            "AccoRoomDetail-de-Language" varchar,
                                            "AccoRoomDetail-de-Longdesc" varchar,
                                            "AccoRoomDetail-de-Shortdesc" varchar,
                                            "AccoRoomDetail-en-Name" varchar,
                                            "AccoRoomDetail-en-Language" varchar,
                                            "AccoRoomDetail-it-Name" varchar,
                                            "AccoRoomDetail-it-Language" varchar,
                                            "AccoRoomDetail-it-Longdesc" varchar,
                                            "AccoRoomDetail-it-Shortdesc" varchar
);

ALTER TABLE "v_accommodationroomsopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_accommodationroomsopen_fn CASCADE;

CREATE FUNCTION v_accommodationroomsopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_accommodationroomsopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'A0RID' As varchar) AS "A0RID",
        CAST(NEW."data"->>'HGVId' As varchar) AS "HGVId",
        CAST(NEW."data"->>'LTSId' As varchar) AS "LTSId",
        CAST(NEW."data"->>'Source' As varchar) AS "Source",
        CAST(NEW."data"->>'Roommax' As integer) AS "Roommax",
        CAST(NEW."data"->>'Roommin' As integer) AS "Roommin",
        CAST(NEW."data"->>'Roomstd' As integer) AS "Roomstd",
        CAST(NEW."data"->>'RoomCode' As varchar) AS "RoomCode",
        CAST(NEW."data"->>'Roomtype' As varchar) AS "Roomtype",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'RoomQuantity' As integer) AS "RoomQuantity",
        CAST(NEW."data"->'AccoRoomDetail'->'de'->>'Name' As varchar) AS "AccoRoomDetail-de-Name",
        CAST(NEW."data"->'AccoRoomDetail'->'de'->>'Language' As varchar) AS "AccoRoomDetail-de-Language",
        CAST(NEW."data"->'AccoRoomDetail'->'de'->>'Longdesc' As varchar) AS "AccoRoomDetail-de-Longdesc",
        CAST(NEW."data"->'AccoRoomDetail'->'de'->>'Shortdesc' As varchar) AS "AccoRoomDetail-de-Shortdesc",
        CAST(NEW."data"->'AccoRoomDetail'->'en'->>'Name' As varchar) AS "AccoRoomDetail-en-Name",
        CAST(NEW."data"->'AccoRoomDetail'->'en'->>'Language' As varchar) AS "AccoRoomDetail-en-Language",
        CAST(NEW."data"->'AccoRoomDetail'->'it'->>'Name' As varchar) AS "AccoRoomDetail-it-Name",
        CAST(NEW."data"->'AccoRoomDetail'->'it'->>'Language' As varchar) AS "AccoRoomDetail-it-Language",
        CAST(NEW."data"->'AccoRoomDetail'->'it'->>'Longdesc' As varchar) AS "AccoRoomDetail-it-Longdesc",
        CAST(NEW."data"->'AccoRoomDetail'->'it'->>'Shortdesc' As varchar) AS "AccoRoomDetail-it-Shortdesc";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_accommodationroomsopen
    BEFORE INSERT
    ON accommodationroomsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_accommodationroomsopen_fn();

ALTER TABLE accommodationroomsopen
    ENABLE ALWAYS TRIGGER t_v_accommodationroomsopen;

DROP TABLE IF EXISTS "v_accommodationroomsopen_Features";

CREATE TABLE "v_accommodationroomsopen_Features" (
                                                     "accommodationroomsopen_Id" varchar,
                                                     "Id" varchar,
                                                     "Name" varchar
);

DROP FUNCTION IF EXISTS v_accommodationroomsopen_Features_fn CASCADE;

CREATE FUNCTION v_accommodationroomsopen_Features_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_accommodationroomsopen_Features"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'Features') AS "data"
        WHERE NEW."data" -> 'Features' != 'null')
    SELECT "Id" AS "accommodationroomsopen_Id", CAST("data"->>'Id' As varchar) AS "Id",
           CAST("data"->>'Name' As varchar) AS "Name"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_accommodationroomsopen_Features
    BEFORE INSERT
    ON accommodationroomsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_accommodationroomsopen_Features_fn();

ALTER TABLE accommodationroomsopen
    ENABLE ALWAYS TRIGGER t_v_accommodationroomsopen_Features;


DROP TABLE IF EXISTS "v_regionsopen";

CREATE TABLE "v_regionsopen" (
                                 "Id" varchar,
                                 "Active" bool,
                                 "Gpstype" varchar,
                                 "Altitude" float,
                                 "CustomId" varchar,
                                 "Latitude" float,
                                 "Longitude" float,
                                 "Shortname" varchar,
                                 "SmgActive" bool,
                                 "LastChange" varchar,
                                 "VisibleInSearch" bool,
                                 "AltitudeUnitofMeasure" varchar,
                                 "Detail-cs-Title" varchar,
                                 "Detail-cs-Header" varchar,
                                 "Detail-cs-BaseText" varchar,
                                 "Detail-cs-Language" varchar,
                                 "Detail-cs-MetaDesc" varchar,
                                 "Detail-cs-IntroText" varchar,
                                 "Detail-cs-MetaTitle" varchar,
                                 "Detail-cs-SubHeader" varchar,
                                 "Detail-cs-GetThereText" varchar,
                                 "Detail-cs-AdditionalText" varchar,
                                 "Detail-de-Title" varchar,
                                 "Detail-de-Header" varchar,
                                 "Detail-de-BaseText" varchar,
                                 "Detail-de-Language" varchar,
                                 "Detail-de-MetaDesc" varchar,
                                 "Detail-de-IntroText" varchar,
                                 "Detail-de-MetaTitle" varchar,
                                 "Detail-de-SubHeader" varchar,
                                 "Detail-en-Title" varchar,
                                 "Detail-en-Header" varchar,
                                 "Detail-en-BaseText" varchar,
                                 "Detail-en-Language" varchar,
                                 "Detail-en-MetaDesc" varchar,
                                 "Detail-en-IntroText" varchar,
                                 "Detail-en-MetaTitle" varchar,
                                 "Detail-en-SubHeader" varchar,
                                 "Detail-en-GetThereText" varchar,
                                 "Detail-en-AdditionalText" varchar,
                                 "Detail-fr-Title" varchar,
                                 "Detail-fr-Header" varchar,
                                 "Detail-fr-BaseText" varchar,
                                 "Detail-fr-Language" varchar,
                                 "Detail-fr-MetaDesc" varchar,
                                 "Detail-fr-IntroText" varchar,
                                 "Detail-fr-MetaTitle" varchar,
                                 "Detail-fr-SubHeader" varchar,
                                 "Detail-fr-GetThereText" varchar,
                                 "Detail-fr-AdditionalText" varchar,
                                 "Detail-it-Title" varchar,
                                 "Detail-it-Header" varchar,
                                 "Detail-it-BaseText" varchar,
                                 "Detail-it-Language" varchar,
                                 "Detail-it-MetaDesc" varchar,
                                 "Detail-it-IntroText" varchar,
                                 "Detail-it-MetaTitle" varchar,
                                 "Detail-it-SubHeader" varchar,
                                 "Detail-it-GetThereText" varchar,
                                 "Detail-it-AdditionalText" varchar,
                                 "Detail-nl-Title" varchar,
                                 "Detail-nl-Header" varchar,
                                 "Detail-nl-BaseText" varchar,
                                 "Detail-nl-Language" varchar,
                                 "Detail-nl-MetaDesc" varchar,
                                 "Detail-nl-IntroText" varchar,
                                 "Detail-nl-MetaTitle" varchar,
                                 "Detail-nl-SubHeader" varchar,
                                 "Detail-nl-GetThereText" varchar,
                                 "Detail-nl-AdditionalText" varchar,
                                 "Detail-pl-Title" varchar,
                                 "Detail-pl-Header" varchar,
                                 "Detail-pl-BaseText" varchar,
                                 "Detail-pl-Language" varchar,
                                 "Detail-pl-MetaDesc" varchar,
                                 "Detail-pl-IntroText" varchar,
                                 "Detail-pl-MetaTitle" varchar,
                                 "Detail-pl-SubHeader" varchar,
                                 "Detail-pl-GetThereText" varchar,
                                 "Detail-pl-AdditionalText" varchar,
                                 "Detail-ru-Title" varchar,
                                 "Detail-ru-Header" varchar,
                                 "Detail-ru-BaseText" varchar,
                                 "Detail-ru-Language" varchar,
                                 "Detail-ru-MetaDesc" varchar,
                                 "Detail-ru-IntroText" varchar,
                                 "Detail-ru-MetaTitle" varchar,
                                 "Detail-ru-SubHeader" varchar,
                                 "Detail-ru-GetThereText" varchar,
                                 "Detail-ru-AdditionalText" varchar,
                                 "ContactInfos-cs-Url" varchar,
                                 "ContactInfos-cs-Vat" varchar,
                                 "ContactInfos-cs-City" varchar,
                                 "ContactInfos-cs-Email" varchar,
                                 "ContactInfos-cs-Address" varchar,
                                 "ContactInfos-cs-LogoUrl" varchar,
                                 "ContactInfos-cs-Surname" varchar,
                                 "ContactInfos-cs-ZipCode" varchar,
                                 "ContactInfos-cs-Language" varchar,
                                 "ContactInfos-cs-Faxnumber" varchar,
                                 "ContactInfos-cs-Givenname" varchar,
                                 "ContactInfos-cs-NamePrefix" varchar,
                                 "ContactInfos-cs-CompanyName" varchar,
                                 "ContactInfos-cs-CountryCode" varchar,
                                 "ContactInfos-cs-CountryName" varchar,
                                 "ContactInfos-cs-Phonenumber" varchar,
                                 "ContactInfos-de-Url" varchar,
                                 "ContactInfos-de-City" varchar,
                                 "ContactInfos-de-Email" varchar,
                                 "ContactInfos-de-Address" varchar,
                                 "ContactInfos-de-LogoUrl" varchar,
                                 "ContactInfos-de-ZipCode" varchar,
                                 "ContactInfos-de-Language" varchar,
                                 "ContactInfos-de-CompanyName" varchar,
                                 "ContactInfos-de-CountryCode" varchar,
                                 "ContactInfos-de-CountryName" varchar,
                                 "ContactInfos-de-Phonenumber" varchar,
                                 "ContactInfos-en-Url" varchar,
                                 "ContactInfos-en-Vat" varchar,
                                 "ContactInfos-en-City" varchar,
                                 "ContactInfos-en-Email" varchar,
                                 "ContactInfos-en-Address" varchar,
                                 "ContactInfos-en-LogoUrl" varchar,
                                 "ContactInfos-en-Surname" varchar,
                                 "ContactInfos-en-ZipCode" varchar,
                                 "ContactInfos-en-Language" varchar,
                                 "ContactInfos-en-Faxnumber" varchar,
                                 "ContactInfos-en-Givenname" varchar,
                                 "ContactInfos-en-NamePrefix" varchar,
                                 "ContactInfos-en-CompanyName" varchar,
                                 "ContactInfos-en-CountryCode" varchar,
                                 "ContactInfos-en-CountryName" varchar,
                                 "ContactInfos-en-Phonenumber" varchar,
                                 "ContactInfos-fr-Url" varchar,
                                 "ContactInfos-fr-Vat" varchar,
                                 "ContactInfos-fr-City" varchar,
                                 "ContactInfos-fr-Email" varchar,
                                 "ContactInfos-fr-Address" varchar,
                                 "ContactInfos-fr-LogoUrl" varchar,
                                 "ContactInfos-fr-Surname" varchar,
                                 "ContactInfos-fr-ZipCode" varchar,
                                 "ContactInfos-fr-Language" varchar,
                                 "ContactInfos-fr-Faxnumber" varchar,
                                 "ContactInfos-fr-Givenname" varchar,
                                 "ContactInfos-fr-NamePrefix" varchar,
                                 "ContactInfos-fr-CompanyName" varchar,
                                 "ContactInfos-fr-CountryCode" varchar,
                                 "ContactInfos-fr-CountryName" varchar,
                                 "ContactInfos-fr-Phonenumber" varchar,
                                 "ContactInfos-it-Url" varchar,
                                 "ContactInfos-it-Vat" varchar,
                                 "ContactInfos-it-City" varchar,
                                 "ContactInfos-it-Email" varchar,
                                 "ContactInfos-it-Address" varchar,
                                 "ContactInfos-it-LogoUrl" varchar,
                                 "ContactInfos-it-Surname" varchar,
                                 "ContactInfos-it-ZipCode" varchar,
                                 "ContactInfos-it-Language" varchar,
                                 "ContactInfos-it-Faxnumber" varchar,
                                 "ContactInfos-it-Givenname" varchar,
                                 "ContactInfos-it-NamePrefix" varchar,
                                 "ContactInfos-it-CompanyName" varchar,
                                 "ContactInfos-it-CountryCode" varchar,
                                 "ContactInfos-it-CountryName" varchar,
                                 "ContactInfos-it-Phonenumber" varchar,
                                 "ContactInfos-nl-Url" varchar,
                                 "ContactInfos-nl-Vat" varchar,
                                 "ContactInfos-nl-City" varchar,
                                 "ContactInfos-nl-Email" varchar,
                                 "ContactInfos-nl-Address" varchar,
                                 "ContactInfos-nl-LogoUrl" varchar,
                                 "ContactInfos-nl-Surname" varchar,
                                 "ContactInfos-nl-ZipCode" varchar,
                                 "ContactInfos-nl-Language" varchar,
                                 "ContactInfos-nl-Faxnumber" varchar,
                                 "ContactInfos-nl-Givenname" varchar,
                                 "ContactInfos-nl-NamePrefix" varchar,
                                 "ContactInfos-nl-CompanyName" varchar,
                                 "ContactInfos-nl-CountryCode" varchar,
                                 "ContactInfos-nl-CountryName" varchar,
                                 "ContactInfos-nl-Phonenumber" varchar,
                                 "ContactInfos-pl-Url" varchar,
                                 "ContactInfos-pl-Vat" varchar,
                                 "ContactInfos-pl-City" varchar,
                                 "ContactInfos-pl-Email" varchar,
                                 "ContactInfos-pl-Address" varchar,
                                 "ContactInfos-pl-LogoUrl" varchar,
                                 "ContactInfos-pl-Surname" varchar,
                                 "ContactInfos-pl-ZipCode" varchar,
                                 "ContactInfos-pl-Language" varchar,
                                 "ContactInfos-pl-Faxnumber" varchar,
                                 "ContactInfos-pl-Givenname" varchar,
                                 "ContactInfos-pl-NamePrefix" varchar,
                                 "ContactInfos-pl-CompanyName" varchar,
                                 "ContactInfos-pl-CountryCode" varchar,
                                 "ContactInfos-pl-CountryName" varchar,
                                 "ContactInfos-pl-Phonenumber" varchar,
                                 "ContactInfos-ru-Url" varchar,
                                 "ContactInfos-ru-Vat" varchar,
                                 "ContactInfos-ru-City" varchar,
                                 "ContactInfos-ru-Email" varchar,
                                 "ContactInfos-ru-Address" varchar,
                                 "ContactInfos-ru-LogoUrl" varchar,
                                 "ContactInfos-ru-Surname" varchar,
                                 "ContactInfos-ru-ZipCode" varchar,
                                 "ContactInfos-ru-Language" varchar,
                                 "ContactInfos-ru-Faxnumber" varchar,
                                 "ContactInfos-ru-Givenname" varchar,
                                 "ContactInfos-ru-NamePrefix" varchar,
                                 "ContactInfos-ru-CompanyName" varchar,
                                 "ContactInfos-ru-CountryCode" varchar,
                                 "ContactInfos-ru-CountryName" varchar,
                                 "ContactInfos-ru-Phonenumber" varchar,
                                 "DetailThemed-cs-Language" varchar,
                                 "DetailThemed-cs-DetailsThemed-Sommer-Intro" varchar,
                                 "DetailThemed-cs-DetailsThemed-Sommer-Title" varchar,
                                 "DetailThemed-cs-DetailsThemed-Sommer-MetaDesc" varchar,
                                 "DetailThemed-cs-DetailsThemed-Sommer-MetaTitle" varchar,
                                 "DetailThemed-cs-DetailsThemed-Winter-Intro" varchar,
                                 "DetailThemed-cs-DetailsThemed-Winter-Title" varchar,
                                 "DetailThemed-cs-DetailsThemed-Winter-MetaDesc" varchar,
                                 "DetailThemed-cs-DetailsThemed-Winter-MetaTitle" varchar,
                                 "DetailThemed-cs-DetailsThemed-Familienurlaub-Intro" varchar,
                                 "DetailThemed-cs-DetailsThemed-Familienurlaub-Title" varchar,
                                 "DetailThemed-cs-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                 "DetailThemed-cs-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                 "DetailThemed-cs-DetailsThemed-Essen und Trinken-Intro" varchar,
                                 "DetailThemed-cs-DetailsThemed-Essen und Trinken-Title" varchar,
                                 "DetailThemed-cs-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                 "DetailThemed-cs-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                 "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                 "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                 "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                 "D-cs-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                 "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                 "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                 "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                 "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                 "DetailThemed-de-Language" varchar,
                                 "DetailThemed-de-DetailsThemed-Sommer-Intro" varchar,
                                 "DetailThemed-de-DetailsThemed-Sommer-Title" varchar,
                                 "DetailThemed-de-DetailsThemed-Sommer-MetaDesc" varchar,
                                 "DetailThemed-de-DetailsThemed-Sommer-MetaTitle" varchar,
                                 "DetailThemed-de-DetailsThemed-Winter-Intro" varchar,
                                 "DetailThemed-de-DetailsThemed-Winter-Title" varchar,
                                 "DetailThemed-de-DetailsThemed-Winter-MetaDesc" varchar,
                                 "DetailThemed-de-DetailsThemed-Winter-MetaTitle" varchar,
                                 "DetailThemed-de-DetailsThemed-Familienurlaub-Intro" varchar,
                                 "DetailThemed-de-DetailsThemed-Familienurlaub-Title" varchar,
                                 "DetailThemed-de-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                 "DetailThemed-de-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                 "DetailThemed-de-DetailsThemed-Essen und Trinken-Intro" varchar,
                                 "DetailThemed-de-DetailsThemed-Essen und Trinken-Title" varchar,
                                 "DetailThemed-de-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                 "DetailThemed-de-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                 "DetailThemed-de-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                 "DetailThemed-de-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                 "DetailThemed-de-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                 "D-de-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                 "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                 "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                 "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                 "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                 "DetailThemed-en-Language" varchar,
                                 "DetailThemed-en-DetailsThemed-Sommer-Intro" varchar,
                                 "DetailThemed-en-DetailsThemed-Sommer-Title" varchar,
                                 "DetailThemed-en-DetailsThemed-Sommer-MetaDesc" varchar,
                                 "DetailThemed-en-DetailsThemed-Sommer-MetaTitle" varchar,
                                 "DetailThemed-en-DetailsThemed-Winter-Intro" varchar,
                                 "DetailThemed-en-DetailsThemed-Winter-Title" varchar,
                                 "DetailThemed-en-DetailsThemed-Winter-MetaDesc" varchar,
                                 "DetailThemed-en-DetailsThemed-Winter-MetaTitle" varchar,
                                 "DetailThemed-en-DetailsThemed-Familienurlaub-Intro" varchar,
                                 "DetailThemed-en-DetailsThemed-Familienurlaub-Title" varchar,
                                 "DetailThemed-en-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                 "DetailThemed-en-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                 "DetailThemed-en-DetailsThemed-Essen und Trinken-Intro" varchar,
                                 "DetailThemed-en-DetailsThemed-Essen und Trinken-Title" varchar,
                                 "DetailThemed-en-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                 "DetailThemed-en-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                 "DetailThemed-en-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                 "DetailThemed-en-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                 "DetailThemed-en-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                 "D-en-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                 "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                 "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                 "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                 "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                 "DetailThemed-fr-Language" varchar,
                                 "DetailThemed-fr-DetailsThemed-Sommer-Intro" varchar,
                                 "DetailThemed-fr-DetailsThemed-Sommer-Title" varchar,
                                 "DetailThemed-fr-DetailsThemed-Sommer-MetaDesc" varchar,
                                 "DetailThemed-fr-DetailsThemed-Sommer-MetaTitle" varchar,
                                 "DetailThemed-fr-DetailsThemed-Winter-Intro" varchar,
                                 "DetailThemed-fr-DetailsThemed-Winter-Title" varchar,
                                 "DetailThemed-fr-DetailsThemed-Winter-MetaDesc" varchar,
                                 "DetailThemed-fr-DetailsThemed-Winter-MetaTitle" varchar,
                                 "DetailThemed-fr-DetailsThemed-Familienurlaub-Intro" varchar,
                                 "DetailThemed-fr-DetailsThemed-Familienurlaub-Title" varchar,
                                 "DetailThemed-fr-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                 "DetailThemed-fr-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                 "DetailThemed-fr-DetailsThemed-Essen und Trinken-Intro" varchar,
                                 "DetailThemed-fr-DetailsThemed-Essen und Trinken-Title" varchar,
                                 "DetailThemed-fr-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                 "DetailThemed-fr-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                 "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                 "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                 "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                 "D-fr-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                 "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                 "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                 "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                 "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                 "DetailThemed-it-Language" varchar,
                                 "DetailThemed-it-DetailsThemed-Sommer-Intro" varchar,
                                 "DetailThemed-it-DetailsThemed-Sommer-Title" varchar,
                                 "DetailThemed-it-DetailsThemed-Sommer-MetaDesc" varchar,
                                 "DetailThemed-it-DetailsThemed-Sommer-MetaTitle" varchar,
                                 "DetailThemed-it-DetailsThemed-Winter-Intro" varchar,
                                 "DetailThemed-it-DetailsThemed-Winter-Title" varchar,
                                 "DetailThemed-it-DetailsThemed-Winter-MetaDesc" varchar,
                                 "DetailThemed-it-DetailsThemed-Winter-MetaTitle" varchar,
                                 "DetailThemed-it-DetailsThemed-Familienurlaub-Intro" varchar,
                                 "DetailThemed-it-DetailsThemed-Familienurlaub-Title" varchar,
                                 "DetailThemed-it-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                 "DetailThemed-it-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                 "DetailThemed-it-DetailsThemed-Essen und Trinken-Intro" varchar,
                                 "DetailThemed-it-DetailsThemed-Essen und Trinken-Title" varchar,
                                 "DetailThemed-it-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                 "DetailThemed-it-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                 "DetailThemed-it-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                 "DetailThemed-it-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                 "DetailThemed-it-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                 "D-it-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                 "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                 "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                 "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                 "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                 "DetailThemed-nl-Language" varchar,
                                 "DetailThemed-nl-DetailsThemed-Sommer-Intro" varchar,
                                 "DetailThemed-nl-DetailsThemed-Sommer-Title" varchar,
                                 "DetailThemed-nl-DetailsThemed-Sommer-MetaDesc" varchar,
                                 "DetailThemed-nl-DetailsThemed-Sommer-MetaTitle" varchar,
                                 "DetailThemed-nl-DetailsThemed-Winter-Intro" varchar,
                                 "DetailThemed-nl-DetailsThemed-Winter-Title" varchar,
                                 "DetailThemed-nl-DetailsThemed-Winter-MetaDesc" varchar,
                                 "DetailThemed-nl-DetailsThemed-Winter-MetaTitle" varchar,
                                 "DetailThemed-nl-DetailsThemed-Familienurlaub-Intro" varchar,
                                 "DetailThemed-nl-DetailsThemed-Familienurlaub-Title" varchar,
                                 "DetailThemed-nl-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                 "DetailThemed-nl-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                 "DetailThemed-nl-DetailsThemed-Essen und Trinken-Intro" varchar,
                                 "DetailThemed-nl-DetailsThemed-Essen und Trinken-Title" varchar,
                                 "DetailThemed-nl-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                 "DetailThemed-nl-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                 "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                 "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                 "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                 "D-nl-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                 "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                 "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                 "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                 "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                 "DetailThemed-pl-Language" varchar,
                                 "DetailThemed-pl-DetailsThemed-Sommer-Intro" varchar,
                                 "DetailThemed-pl-DetailsThemed-Sommer-Title" varchar,
                                 "DetailThemed-pl-DetailsThemed-Sommer-MetaDesc" varchar,
                                 "DetailThemed-pl-DetailsThemed-Sommer-MetaTitle" varchar,
                                 "DetailThemed-pl-DetailsThemed-Winter-Intro" varchar,
                                 "DetailThemed-pl-DetailsThemed-Winter-Title" varchar,
                                 "DetailThemed-pl-DetailsThemed-Winter-MetaDesc" varchar,
                                 "DetailThemed-pl-DetailsThemed-Winter-MetaTitle" varchar,
                                 "DetailThemed-pl-DetailsThemed-Familienurlaub-Intro" varchar,
                                 "DetailThemed-pl-DetailsThemed-Familienurlaub-Title" varchar,
                                 "DetailThemed-pl-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                 "DetailThemed-pl-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                 "DetailThemed-pl-DetailsThemed-Essen und Trinken-Intro" varchar,
                                 "DetailThemed-pl-DetailsThemed-Essen und Trinken-Title" varchar,
                                 "DetailThemed-pl-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                 "DetailThemed-pl-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                 "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                 "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                 "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                 "D-pl-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                 "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                 "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                 "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                 "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar,
                                 "DetailThemed-ru-Language" varchar,
                                 "DetailThemed-ru-DetailsThemed-Sommer-Intro" varchar,
                                 "DetailThemed-ru-DetailsThemed-Sommer-Title" varchar,
                                 "DetailThemed-ru-DetailsThemed-Sommer-MetaDesc" varchar,
                                 "DetailThemed-ru-DetailsThemed-Sommer-MetaTitle" varchar,
                                 "DetailThemed-ru-DetailsThemed-Winter-Intro" varchar,
                                 "DetailThemed-ru-DetailsThemed-Winter-Title" varchar,
                                 "DetailThemed-ru-DetailsThemed-Winter-MetaDesc" varchar,
                                 "DetailThemed-ru-DetailsThemed-Winter-MetaTitle" varchar,
                                 "DetailThemed-ru-DetailsThemed-Familienurlaub-Intro" varchar,
                                 "DetailThemed-ru-DetailsThemed-Familienurlaub-Title" varchar,
                                 "DetailThemed-ru-DetailsThemed-Familienurlaub-MetaDesc" varchar,
                                 "DetailThemed-ru-DetailsThemed-Familienurlaub-MetaTitle" varchar,
                                 "DetailThemed-ru-DetailsThemed-Essen und Trinken-Intro" varchar,
                                 "DetailThemed-ru-DetailsThemed-Essen und Trinken-Title" varchar,
                                 "DetailThemed-ru-DetailsThemed-Essen und Trinken-MetaDesc" varchar,
                                 "DetailThemed-ru-DetailsThemed-Essen und Trinken-MetaTitle" varchar,
                                 "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-Intro" varchar,
                                 "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-Title" varchar,
                                 "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-MetaDesc" varchar,
                                 "D-ru-DetailsThemed-Wellness und Entspannung-MetaTitle" varchar,
                                 "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro" varchar,
                                 "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-Title" varchar,
                                 "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc" varchar,
                                 "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle" varchar
);

ALTER TABLE "v_regionsopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_regionsopen_fn CASCADE;

CREATE FUNCTION v_regionsopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_regionsopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Altitude' As float) AS "Altitude",
        CAST(NEW."data"->>'CustomId' As varchar) AS "CustomId",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'VisibleInSearch' As bool) AS "VisibleInSearch",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->'Detail'->'cs'->>'Title' As varchar) AS "Detail-cs-Title",
        CAST(NEW."data"->'Detail'->'cs'->>'Header' As varchar) AS "Detail-cs-Header",
        CAST(NEW."data"->'Detail'->'cs'->>'BaseText' As varchar) AS "Detail-cs-BaseText",
        CAST(NEW."data"->'Detail'->'cs'->>'Language' As varchar) AS "Detail-cs-Language",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaDesc' As varchar) AS "Detail-cs-MetaDesc",
        CAST(NEW."data"->'Detail'->'cs'->>'IntroText' As varchar) AS "Detail-cs-IntroText",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaTitle' As varchar) AS "Detail-cs-MetaTitle",
        CAST(NEW."data"->'Detail'->'cs'->>'SubHeader' As varchar) AS "Detail-cs-SubHeader",
        CAST(NEW."data"->'Detail'->'cs'->>'GetThereText' As varchar) AS "Detail-cs-GetThereText",
        CAST(NEW."data"->'Detail'->'cs'->>'AdditionalText' As varchar) AS "Detail-cs-AdditionalText",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Header' As varchar) AS "Detail-de-Header",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'de'->>'MetaDesc' As varchar) AS "Detail-de-MetaDesc",
        CAST(NEW."data"->'Detail'->'de'->>'IntroText' As varchar) AS "Detail-de-IntroText",
        CAST(NEW."data"->'Detail'->'de'->>'MetaTitle' As varchar) AS "Detail-de-MetaTitle",
        CAST(NEW."data"->'Detail'->'de'->>'SubHeader' As varchar) AS "Detail-de-SubHeader",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'Header' As varchar) AS "Detail-en-Header",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'en'->>'MetaDesc' As varchar) AS "Detail-en-MetaDesc",
        CAST(NEW."data"->'Detail'->'en'->>'IntroText' As varchar) AS "Detail-en-IntroText",
        CAST(NEW."data"->'Detail'->'en'->>'MetaTitle' As varchar) AS "Detail-en-MetaTitle",
        CAST(NEW."data"->'Detail'->'en'->>'SubHeader' As varchar) AS "Detail-en-SubHeader",
        CAST(NEW."data"->'Detail'->'en'->>'GetThereText' As varchar) AS "Detail-en-GetThereText",
        CAST(NEW."data"->'Detail'->'en'->>'AdditionalText' As varchar) AS "Detail-en-AdditionalText",
        CAST(NEW."data"->'Detail'->'fr'->>'Title' As varchar) AS "Detail-fr-Title",
        CAST(NEW."data"->'Detail'->'fr'->>'Header' As varchar) AS "Detail-fr-Header",
        CAST(NEW."data"->'Detail'->'fr'->>'BaseText' As varchar) AS "Detail-fr-BaseText",
        CAST(NEW."data"->'Detail'->'fr'->>'Language' As varchar) AS "Detail-fr-Language",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaDesc' As varchar) AS "Detail-fr-MetaDesc",
        CAST(NEW."data"->'Detail'->'fr'->>'IntroText' As varchar) AS "Detail-fr-IntroText",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaTitle' As varchar) AS "Detail-fr-MetaTitle",
        CAST(NEW."data"->'Detail'->'fr'->>'SubHeader' As varchar) AS "Detail-fr-SubHeader",
        CAST(NEW."data"->'Detail'->'fr'->>'GetThereText' As varchar) AS "Detail-fr-GetThereText",
        CAST(NEW."data"->'Detail'->'fr'->>'AdditionalText' As varchar) AS "Detail-fr-AdditionalText",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Header' As varchar) AS "Detail-it-Header",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Detail'->'it'->>'MetaDesc' As varchar) AS "Detail-it-MetaDesc",
        CAST(NEW."data"->'Detail'->'it'->>'IntroText' As varchar) AS "Detail-it-IntroText",
        CAST(NEW."data"->'Detail'->'it'->>'MetaTitle' As varchar) AS "Detail-it-MetaTitle",
        CAST(NEW."data"->'Detail'->'it'->>'SubHeader' As varchar) AS "Detail-it-SubHeader",
        CAST(NEW."data"->'Detail'->'it'->>'GetThereText' As varchar) AS "Detail-it-GetThereText",
        CAST(NEW."data"->'Detail'->'it'->>'AdditionalText' As varchar) AS "Detail-it-AdditionalText",
        CAST(NEW."data"->'Detail'->'nl'->>'Title' As varchar) AS "Detail-nl-Title",
        CAST(NEW."data"->'Detail'->'nl'->>'Header' As varchar) AS "Detail-nl-Header",
        CAST(NEW."data"->'Detail'->'nl'->>'BaseText' As varchar) AS "Detail-nl-BaseText",
        CAST(NEW."data"->'Detail'->'nl'->>'Language' As varchar) AS "Detail-nl-Language",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaDesc' As varchar) AS "Detail-nl-MetaDesc",
        CAST(NEW."data"->'Detail'->'nl'->>'IntroText' As varchar) AS "Detail-nl-IntroText",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaTitle' As varchar) AS "Detail-nl-MetaTitle",
        CAST(NEW."data"->'Detail'->'nl'->>'SubHeader' As varchar) AS "Detail-nl-SubHeader",
        CAST(NEW."data"->'Detail'->'nl'->>'GetThereText' As varchar) AS "Detail-nl-GetThereText",
        CAST(NEW."data"->'Detail'->'nl'->>'AdditionalText' As varchar) AS "Detail-nl-AdditionalText",
        CAST(NEW."data"->'Detail'->'pl'->>'Title' As varchar) AS "Detail-pl-Title",
        CAST(NEW."data"->'Detail'->'pl'->>'Header' As varchar) AS "Detail-pl-Header",
        CAST(NEW."data"->'Detail'->'pl'->>'BaseText' As varchar) AS "Detail-pl-BaseText",
        CAST(NEW."data"->'Detail'->'pl'->>'Language' As varchar) AS "Detail-pl-Language",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaDesc' As varchar) AS "Detail-pl-MetaDesc",
        CAST(NEW."data"->'Detail'->'pl'->>'IntroText' As varchar) AS "Detail-pl-IntroText",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaTitle' As varchar) AS "Detail-pl-MetaTitle",
        CAST(NEW."data"->'Detail'->'pl'->>'SubHeader' As varchar) AS "Detail-pl-SubHeader",
        CAST(NEW."data"->'Detail'->'pl'->>'GetThereText' As varchar) AS "Detail-pl-GetThereText",
        CAST(NEW."data"->'Detail'->'pl'->>'AdditionalText' As varchar) AS "Detail-pl-AdditionalText",
        CAST(NEW."data"->'Detail'->'ru'->>'Title' As varchar) AS "Detail-ru-Title",
        CAST(NEW."data"->'Detail'->'ru'->>'Header' As varchar) AS "Detail-ru-Header",
        CAST(NEW."data"->'Detail'->'ru'->>'BaseText' As varchar) AS "Detail-ru-BaseText",
        CAST(NEW."data"->'Detail'->'ru'->>'Language' As varchar) AS "Detail-ru-Language",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaDesc' As varchar) AS "Detail-ru-MetaDesc",
        CAST(NEW."data"->'Detail'->'ru'->>'IntroText' As varchar) AS "Detail-ru-IntroText",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaTitle' As varchar) AS "Detail-ru-MetaTitle",
        CAST(NEW."data"->'Detail'->'ru'->>'SubHeader' As varchar) AS "Detail-ru-SubHeader",
        CAST(NEW."data"->'Detail'->'ru'->>'GetThereText' As varchar) AS "Detail-ru-GetThereText",
        CAST(NEW."data"->'Detail'->'ru'->>'AdditionalText' As varchar) AS "Detail-ru-AdditionalText",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Url' As varchar) AS "ContactInfos-cs-Url",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Vat' As varchar) AS "ContactInfos-cs-Vat",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'City' As varchar) AS "ContactInfos-cs-City",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Email' As varchar) AS "ContactInfos-cs-Email",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Address' As varchar) AS "ContactInfos-cs-Address",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'LogoUrl' As varchar) AS "ContactInfos-cs-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Surname' As varchar) AS "ContactInfos-cs-Surname",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'ZipCode' As varchar) AS "ContactInfos-cs-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Language' As varchar) AS "ContactInfos-cs-Language",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Faxnumber' As varchar) AS "ContactInfos-cs-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Givenname' As varchar) AS "ContactInfos-cs-Givenname",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'NamePrefix' As varchar) AS "ContactInfos-cs-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CompanyName' As varchar) AS "ContactInfos-cs-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CountryCode' As varchar) AS "ContactInfos-cs-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CountryName' As varchar) AS "ContactInfos-cs-CountryName",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Phonenumber' As varchar) AS "ContactInfos-cs-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Url' As varchar) AS "ContactInfos-de-Url",
        CAST(NEW."data"->'ContactInfos'->'de'->>'City' As varchar) AS "ContactInfos-de-City",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Email' As varchar) AS "ContactInfos-de-Email",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Address' As varchar) AS "ContactInfos-de-Address",
        CAST(NEW."data"->'ContactInfos'->'de'->>'LogoUrl' As varchar) AS "ContactInfos-de-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'de'->>'ZipCode' As varchar) AS "ContactInfos-de-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Language' As varchar) AS "ContactInfos-de-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CompanyName' As varchar) AS "ContactInfos-de-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryCode' As varchar) AS "ContactInfos-de-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryName' As varchar) AS "ContactInfos-de-CountryName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Phonenumber' As varchar) AS "ContactInfos-de-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Url' As varchar) AS "ContactInfos-en-Url",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Vat' As varchar) AS "ContactInfos-en-Vat",
        CAST(NEW."data"->'ContactInfos'->'en'->>'City' As varchar) AS "ContactInfos-en-City",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Email' As varchar) AS "ContactInfos-en-Email",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Address' As varchar) AS "ContactInfos-en-Address",
        CAST(NEW."data"->'ContactInfos'->'en'->>'LogoUrl' As varchar) AS "ContactInfos-en-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Surname' As varchar) AS "ContactInfos-en-Surname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'ZipCode' As varchar) AS "ContactInfos-en-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Language' As varchar) AS "ContactInfos-en-Language",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Faxnumber' As varchar) AS "ContactInfos-en-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Givenname' As varchar) AS "ContactInfos-en-Givenname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'NamePrefix' As varchar) AS "ContactInfos-en-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CompanyName' As varchar) AS "ContactInfos-en-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryCode' As varchar) AS "ContactInfos-en-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryName' As varchar) AS "ContactInfos-en-CountryName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Phonenumber' As varchar) AS "ContactInfos-en-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Url' As varchar) AS "ContactInfos-fr-Url",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Vat' As varchar) AS "ContactInfos-fr-Vat",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'City' As varchar) AS "ContactInfos-fr-City",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Email' As varchar) AS "ContactInfos-fr-Email",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Address' As varchar) AS "ContactInfos-fr-Address",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'LogoUrl' As varchar) AS "ContactInfos-fr-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Surname' As varchar) AS "ContactInfos-fr-Surname",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'ZipCode' As varchar) AS "ContactInfos-fr-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Language' As varchar) AS "ContactInfos-fr-Language",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Faxnumber' As varchar) AS "ContactInfos-fr-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Givenname' As varchar) AS "ContactInfos-fr-Givenname",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'NamePrefix' As varchar) AS "ContactInfos-fr-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CompanyName' As varchar) AS "ContactInfos-fr-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CountryCode' As varchar) AS "ContactInfos-fr-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CountryName' As varchar) AS "ContactInfos-fr-CountryName",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Phonenumber' As varchar) AS "ContactInfos-fr-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Url' As varchar) AS "ContactInfos-it-Url",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Vat' As varchar) AS "ContactInfos-it-Vat",
        CAST(NEW."data"->'ContactInfos'->'it'->>'City' As varchar) AS "ContactInfos-it-City",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Email' As varchar) AS "ContactInfos-it-Email",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Address' As varchar) AS "ContactInfos-it-Address",
        CAST(NEW."data"->'ContactInfos'->'it'->>'LogoUrl' As varchar) AS "ContactInfos-it-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Surname' As varchar) AS "ContactInfos-it-Surname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'ZipCode' As varchar) AS "ContactInfos-it-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Language' As varchar) AS "ContactInfos-it-Language",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Faxnumber' As varchar) AS "ContactInfos-it-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Givenname' As varchar) AS "ContactInfos-it-Givenname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'NamePrefix' As varchar) AS "ContactInfos-it-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CompanyName' As varchar) AS "ContactInfos-it-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryCode' As varchar) AS "ContactInfos-it-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryName' As varchar) AS "ContactInfos-it-CountryName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Phonenumber' As varchar) AS "ContactInfos-it-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Url' As varchar) AS "ContactInfos-nl-Url",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Vat' As varchar) AS "ContactInfos-nl-Vat",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'City' As varchar) AS "ContactInfos-nl-City",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Email' As varchar) AS "ContactInfos-nl-Email",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Address' As varchar) AS "ContactInfos-nl-Address",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'LogoUrl' As varchar) AS "ContactInfos-nl-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Surname' As varchar) AS "ContactInfos-nl-Surname",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'ZipCode' As varchar) AS "ContactInfos-nl-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Language' As varchar) AS "ContactInfos-nl-Language",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Faxnumber' As varchar) AS "ContactInfos-nl-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Givenname' As varchar) AS "ContactInfos-nl-Givenname",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'NamePrefix' As varchar) AS "ContactInfos-nl-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CompanyName' As varchar) AS "ContactInfos-nl-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CountryCode' As varchar) AS "ContactInfos-nl-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CountryName' As varchar) AS "ContactInfos-nl-CountryName",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Phonenumber' As varchar) AS "ContactInfos-nl-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Url' As varchar) AS "ContactInfos-pl-Url",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Vat' As varchar) AS "ContactInfos-pl-Vat",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'City' As varchar) AS "ContactInfos-pl-City",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Email' As varchar) AS "ContactInfos-pl-Email",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Address' As varchar) AS "ContactInfos-pl-Address",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'LogoUrl' As varchar) AS "ContactInfos-pl-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Surname' As varchar) AS "ContactInfos-pl-Surname",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'ZipCode' As varchar) AS "ContactInfos-pl-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Language' As varchar) AS "ContactInfos-pl-Language",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Faxnumber' As varchar) AS "ContactInfos-pl-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Givenname' As varchar) AS "ContactInfos-pl-Givenname",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'NamePrefix' As varchar) AS "ContactInfos-pl-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CompanyName' As varchar) AS "ContactInfos-pl-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CountryCode' As varchar) AS "ContactInfos-pl-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CountryName' As varchar) AS "ContactInfos-pl-CountryName",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Phonenumber' As varchar) AS "ContactInfos-pl-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Url' As varchar) AS "ContactInfos-ru-Url",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Vat' As varchar) AS "ContactInfos-ru-Vat",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'City' As varchar) AS "ContactInfos-ru-City",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Email' As varchar) AS "ContactInfos-ru-Email",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Address' As varchar) AS "ContactInfos-ru-Address",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'LogoUrl' As varchar) AS "ContactInfos-ru-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Surname' As varchar) AS "ContactInfos-ru-Surname",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'ZipCode' As varchar) AS "ContactInfos-ru-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Language' As varchar) AS "ContactInfos-ru-Language",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Faxnumber' As varchar) AS "ContactInfos-ru-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Givenname' As varchar) AS "ContactInfos-ru-Givenname",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'NamePrefix' As varchar) AS "ContactInfos-ru-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CompanyName' As varchar) AS "ContactInfos-ru-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CountryCode' As varchar) AS "ContactInfos-ru-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CountryName' As varchar) AS "ContactInfos-ru-CountryName",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Phonenumber' As varchar) AS "ContactInfos-ru-Phonenumber",
        CAST(NEW."data"->'DetailThemed'->'cs'->>'Language' As varchar) AS "DetailThemed-cs-Language",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-cs-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-cs-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-cs-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-cs-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-cs-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-cs-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'cs'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-c-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->>'Language' As varchar) AS "DetailThemed-de-Language",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-de-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-de-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-de-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-de-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-de-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-de-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-de-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-de-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'de'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-d-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->>'Language' As varchar) AS "DetailThemed-en-Language",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-en-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-en-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-en-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-en-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-en-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-en-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-en-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-en-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'en'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-e-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->>'Language' As varchar) AS "DetailThemed-fr-Language",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-fr-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-fr-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-fr-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-fr-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-fr-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-fr-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'fr'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-f-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->>'Language' As varchar) AS "DetailThemed-it-Language",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-it-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-it-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-it-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-it-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-it-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-it-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-it-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-it-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'it'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-i-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->>'Language' As varchar) AS "DetailThemed-nl-Language",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-nl-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-nl-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-nl-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-nl-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-nl-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-nl-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'nl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-n-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->>'Language' As varchar) AS "DetailThemed-pl-Language",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-pl-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-pl-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-pl-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-pl-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-pl-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-pl-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'pl'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-p-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->>'Language' As varchar) AS "DetailThemed-ru-Language",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Sommer'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Sommer-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Sommer'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Sommer-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Sommer'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Sommer-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Sommer'->>'MetaTitle' As varchar) AS "DetailThemed-ru-DetailsThemed-Sommer-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Winter'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Winter-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Winter'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Winter-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Winter'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Winter-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Winter'->>'MetaTitle' As varchar) AS "DetailThemed-ru-DetailsThemed-Winter-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Familienurlaub'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Familienurlaub-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Familienurlaub'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Familienurlaub-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Familienurlaub'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Familienurlaub-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Familienurlaub'->>'MetaTitle' As varchar) AS "DetailThemed-ru-DetailsThemed-Familienurlaub-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Essen und Trinken'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Essen und Trinken-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Essen und Trinken'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Essen und Trinken-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Essen und Trinken'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Essen und Trinken-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Essen und Trinken'->>'MetaTitle' As varchar) AS "DetailThemed-ru-DetailsThemed-Essen und Trinken-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Wellness und Entspannung'->>'Intro' As varchar) AS "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Wellness und Entspannung'->>'Title' As varchar) AS "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaDesc' As varchar) AS "DetailThemed-ru-DetailsThemed-Wellness und Entspannung-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Wellness und Entspannung'->>'MetaTitle' As varchar) AS "D-ru-DetailsThemed-Wellness und Entspannung-MetaTitle",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Intro' As varchar) AS "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-Intro",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'Title' As varchar) AS "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-Title",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaDesc' As varchar) AS "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaDesc",
        CAST(NEW."data"->'DetailThemed'->'ru'->'DetailsThemed'->'Kultur und Sehenswürdigkeiten'->>'MetaTitle' As varchar) AS "D-r-DetailsThemed-Kultur und Sehenswürdigkeiten-MetaTitle";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_regionsopen
    BEFORE INSERT
    ON regionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_regionsopen_fn();

ALTER TABLE regionsopen
    ENABLE ALWAYS TRIGGER t_v_regionsopen;

DROP TABLE IF EXISTS "v_regionsopen_SkiareaIds";

CREATE TABLE  "v_regionsopen_SkiareaIds" (
                                             "Id" varchar,
                                             "data" varchar
);

DROP FUNCTION IF EXISTS v_regionsopen_SkiareaIds_fn CASCADE;

CREATE FUNCTION v_regionsopen_SkiareaIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_regionsopen_SkiareaIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'SkiareaIds') AS "data"
    WHERE NEW."data" -> 'SkiareaIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_regionsopen_SkiareaIds
    BEFORE INSERT
    ON regionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_regionsopen_SkiareaIds_fn();

ALTER TABLE regionsopen
    ENABLE ALWAYS TRIGGER t_v_regionsopen_SkiareaIds;

DROP TABLE IF EXISTS "v_regionsopen_HasLanguage";

CREATE TABLE  "v_regionsopen_HasLanguage" (
                                              "Id" varchar,
                                              "data" varchar
);

DROP FUNCTION IF EXISTS v_regionsopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_regionsopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_regionsopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_regionsopen_HasLanguage
    BEFORE INSERT
    ON regionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_regionsopen_HasLanguage_fn();

ALTER TABLE regionsopen
    ENABLE ALWAYS TRIGGER t_v_regionsopen_HasLanguage;

DROP TABLE IF EXISTS "v_skiareasopen";

CREATE TABLE "v_skiareasopen" (
                                  "Id" varchar,
                                  "Active" bool,
                                  "Gpstype" varchar,
                                  "Latitude" float,
                                  "LiftCount" varchar,
                                  "Longitude" float,
                                  "Shortname" varchar,
                                  "SmgActive" bool,
                                  "AltitudeTo" integer,
                                  "LastChange" varchar,
                                  "SlopeKmRed" varchar,
                                  "SkiRegionId" varchar,
                                  "SlopeKmBlue" varchar,
                                  "AltitudeFrom" integer,
                                  "SlopeKmBlack" varchar,
                                  "TotalSlopeKm" varchar,
                                  "SkiAreaMapURL" varchar,
                                  "AltitudeUnitofMeasure" varchar,
                                  "Detail-cs-Title" varchar,
                                  "Detail-cs-Header" varchar,
                                  "Detail-cs-BaseText" varchar,
                                  "Detail-cs-Language" varchar,
                                  "Detail-cs-MetaDesc" varchar,
                                  "Detail-cs-IntroText" varchar,
                                  "Detail-cs-MetaTitle" varchar,
                                  "Detail-cs-SubHeader" varchar,
                                  "Detail-de-Title" varchar,
                                  "Detail-de-Header" varchar,
                                  "Detail-de-BaseText" varchar,
                                  "Detail-de-Language" varchar,
                                  "Detail-de-MetaDesc" varchar,
                                  "Detail-de-IntroText" varchar,
                                  "Detail-de-MetaTitle" varchar,
                                  "Detail-de-SubHeader" varchar,
                                  "Detail-en-Title" varchar,
                                  "Detail-en-Header" varchar,
                                  "Detail-en-BaseText" varchar,
                                  "Detail-en-Language" varchar,
                                  "Detail-en-MetaDesc" varchar,
                                  "Detail-en-IntroText" varchar,
                                  "Detail-en-MetaTitle" varchar,
                                  "Detail-en-SubHeader" varchar,
                                  "Detail-fr-Title" varchar,
                                  "Detail-fr-Header" varchar,
                                  "Detail-fr-BaseText" varchar,
                                  "Detail-fr-Language" varchar,
                                  "Detail-fr-MetaDesc" varchar,
                                  "Detail-fr-IntroText" varchar,
                                  "Detail-fr-MetaTitle" varchar,
                                  "Detail-fr-SubHeader" varchar,
                                  "Detail-it-Title" varchar,
                                  "Detail-it-Header" varchar,
                                  "Detail-it-BaseText" varchar,
                                  "Detail-it-Language" varchar,
                                  "Detail-it-MetaDesc" varchar,
                                  "Detail-it-IntroText" varchar,
                                  "Detail-it-MetaTitle" varchar,
                                  "Detail-it-SubHeader" varchar,
                                  "Detail-it-GetThereText" varchar,
                                  "Detail-nl-Title" varchar,
                                  "Detail-nl-Header" varchar,
                                  "Detail-nl-BaseText" varchar,
                                  "Detail-nl-Language" varchar,
                                  "Detail-nl-MetaDesc" varchar,
                                  "Detail-nl-IntroText" varchar,
                                  "Detail-nl-MetaTitle" varchar,
                                  "Detail-nl-SubHeader" varchar,
                                  "Detail-pl-Title" varchar,
                                  "Detail-pl-Header" varchar,
                                  "Detail-pl-BaseText" varchar,
                                  "Detail-pl-Language" varchar,
                                  "Detail-pl-MetaDesc" varchar,
                                  "Detail-pl-IntroText" varchar,
                                  "Detail-pl-MetaTitle" varchar,
                                  "Detail-pl-SubHeader" varchar,
                                  "Detail-ru-Title" varchar,
                                  "Detail-ru-Header" varchar,
                                  "Detail-ru-BaseText" varchar,
                                  "Detail-ru-Language" varchar,
                                  "Detail-ru-MetaDesc" varchar,
                                  "Detail-ru-IntroText" varchar,
                                  "Detail-ru-MetaTitle" varchar,
                                  "Detail-ru-SubHeader" varchar,
                                  "ContactInfos-cs-Url" varchar,
                                  "ContactInfos-cs-City" varchar,
                                  "ContactInfos-cs-Email" varchar,
                                  "ContactInfos-cs-Address" varchar,
                                  "ContactInfos-cs-LogoUrl" varchar,
                                  "ContactInfos-cs-ZipCode" varchar,
                                  "ContactInfos-cs-Language" varchar,
                                  "ContactInfos-cs-CompanyName" varchar,
                                  "ContactInfos-cs-CountryCode" varchar,
                                  "ContactInfos-cs-CountryName" varchar,
                                  "ContactInfos-cs-Phonenumber" varchar,
                                  "ContactInfos-de-Url" varchar,
                                  "ContactInfos-de-City" varchar,
                                  "ContactInfos-de-Email" varchar,
                                  "ContactInfos-de-Address" varchar,
                                  "ContactInfos-de-LogoUrl" varchar,
                                  "ContactInfos-de-ZipCode" varchar,
                                  "ContactInfos-de-Language" varchar,
                                  "ContactInfos-de-CompanyName" varchar,
                                  "ContactInfos-de-CountryCode" varchar,
                                  "ContactInfos-de-CountryName" varchar,
                                  "ContactInfos-de-Phonenumber" varchar,
                                  "ContactInfos-en-Url" varchar,
                                  "ContactInfos-en-City" varchar,
                                  "ContactInfos-en-Email" varchar,
                                  "ContactInfos-en-Address" varchar,
                                  "ContactInfos-en-LogoUrl" varchar,
                                  "ContactInfos-en-ZipCode" varchar,
                                  "ContactInfos-en-Language" varchar,
                                  "ContactInfos-en-CompanyName" varchar,
                                  "ContactInfos-en-CountryCode" varchar,
                                  "ContactInfos-en-CountryName" varchar,
                                  "ContactInfos-en-Phonenumber" varchar,
                                  "ContactInfos-fr-Url" varchar,
                                  "ContactInfos-fr-City" varchar,
                                  "ContactInfos-fr-Email" varchar,
                                  "ContactInfos-fr-Address" varchar,
                                  "ContactInfos-fr-LogoUrl" varchar,
                                  "ContactInfos-fr-ZipCode" varchar,
                                  "ContactInfos-fr-Language" varchar,
                                  "ContactInfos-fr-CompanyName" varchar,
                                  "ContactInfos-fr-CountryCode" varchar,
                                  "ContactInfos-fr-CountryName" varchar,
                                  "ContactInfos-fr-Phonenumber" varchar,
                                  "ContactInfos-it-Url" varchar,
                                  "ContactInfos-it-City" varchar,
                                  "ContactInfos-it-Email" varchar,
                                  "ContactInfos-it-Address" varchar,
                                  "ContactInfos-it-LogoUrl" varchar,
                                  "ContactInfos-it-ZipCode" varchar,
                                  "ContactInfos-it-Language" varchar,
                                  "ContactInfos-it-CompanyName" varchar,
                                  "ContactInfos-it-CountryCode" varchar,
                                  "ContactInfos-it-CountryName" varchar,
                                  "ContactInfos-it-Phonenumber" varchar,
                                  "ContactInfos-nl-Url" varchar,
                                  "ContactInfos-nl-City" varchar,
                                  "ContactInfos-nl-Email" varchar,
                                  "ContactInfos-nl-Address" varchar,
                                  "ContactInfos-nl-LogoUrl" varchar,
                                  "ContactInfos-nl-ZipCode" varchar,
                                  "ContactInfos-nl-Language" varchar,
                                  "ContactInfos-nl-CompanyName" varchar,
                                  "ContactInfos-nl-CountryCode" varchar,
                                  "ContactInfos-nl-CountryName" varchar,
                                  "ContactInfos-nl-Phonenumber" varchar,
                                  "ContactInfos-pl-Url" varchar,
                                  "ContactInfos-pl-City" varchar,
                                  "ContactInfos-pl-Email" varchar,
                                  "ContactInfos-pl-Address" varchar,
                                  "ContactInfos-pl-LogoUrl" varchar,
                                  "ContactInfos-pl-ZipCode" varchar,
                                  "ContactInfos-pl-Language" varchar,
                                  "ContactInfos-pl-CompanyName" varchar,
                                  "ContactInfos-pl-CountryCode" varchar,
                                  "ContactInfos-pl-CountryName" varchar,
                                  "ContactInfos-pl-Phonenumber" varchar,
                                  "ContactInfos-ru-Url" varchar,
                                  "ContactInfos-ru-City" varchar,
                                  "ContactInfos-ru-Email" varchar,
                                  "ContactInfos-ru-Address" varchar,
                                  "ContactInfos-ru-LogoUrl" varchar,
                                  "ContactInfos-ru-ZipCode" varchar,
                                  "ContactInfos-ru-Language" varchar,
                                  "ContactInfos-ru-CompanyName" varchar,
                                  "ContactInfos-ru-CountryCode" varchar,
                                  "ContactInfos-ru-CountryName" varchar,
                                  "ContactInfos-ru-Phonenumber" varchar,
                                  "LocationInfo-TvInfo-Id" varchar,
                                  "LocationInfo-TvInfo-Name-cs" varchar,
                                  "LocationInfo-TvInfo-Name-de" varchar,
                                  "LocationInfo-TvInfo-Name-en" varchar,
                                  "LocationInfo-TvInfo-Name-fr" varchar,
                                  "LocationInfo-TvInfo-Name-it" varchar,
                                  "LocationInfo-TvInfo-Name-nl" varchar,
                                  "LocationInfo-TvInfo-Name-pl" varchar,
                                  "LocationInfo-TvInfo-Name-ru" varchar,
                                  "LocationInfo-RegionInfo-Id" varchar,
                                  "LocationInfo-RegionInfo-Name-cs" varchar,
                                  "LocationInfo-RegionInfo-Name-de" varchar,
                                  "LocationInfo-RegionInfo-Name-en" varchar,
                                  "LocationInfo-RegionInfo-Name-fr" varchar,
                                  "LocationInfo-RegionInfo-Name-it" varchar,
                                  "LocationInfo-RegionInfo-Name-nl" varchar,
                                  "LocationInfo-RegionInfo-Name-pl" varchar,
                                  "LocationInfo-RegionInfo-Name-ru" varchar,
                                  "SkiRegionName-cs" varchar,
                                  "SkiRegionName-de" varchar,
                                  "SkiRegionName-en" varchar,
                                  "SkiRegionName-fr" varchar,
                                  "SkiRegionName-it" varchar,
                                  "SkiRegionName-nl" varchar,
                                  "SkiRegionName-pl" varchar,
                                  "SkiRegionName-ru" varchar
);

ALTER TABLE "v_skiareasopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_skiareasopen_fn CASCADE;

CREATE FUNCTION v_skiareasopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_skiareasopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'LiftCount' As varchar) AS "LiftCount",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'AltitudeTo' As integer) AS "AltitudeTo",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'SlopeKmRed' As varchar) AS "SlopeKmRed",
        CAST(NEW."data"->>'SkiRegionId' As varchar) AS "SkiRegionId",
        CAST(NEW."data"->>'SlopeKmBlue' As varchar) AS "SlopeKmBlue",
        CAST(NEW."data"->>'AltitudeFrom' As integer) AS "AltitudeFrom",
        CAST(NEW."data"->>'SlopeKmBlack' As varchar) AS "SlopeKmBlack",
        CAST(NEW."data"->>'TotalSlopeKm' As varchar) AS "TotalSlopeKm",
        CAST(NEW."data"->>'SkiAreaMapURL' As varchar) AS "SkiAreaMapURL",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->'Detail'->'cs'->>'Title' As varchar) AS "Detail-cs-Title",
        CAST(NEW."data"->'Detail'->'cs'->>'Header' As varchar) AS "Detail-cs-Header",
        CAST(NEW."data"->'Detail'->'cs'->>'BaseText' As varchar) AS "Detail-cs-BaseText",
        CAST(NEW."data"->'Detail'->'cs'->>'Language' As varchar) AS "Detail-cs-Language",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaDesc' As varchar) AS "Detail-cs-MetaDesc",
        CAST(NEW."data"->'Detail'->'cs'->>'IntroText' As varchar) AS "Detail-cs-IntroText",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaTitle' As varchar) AS "Detail-cs-MetaTitle",
        CAST(NEW."data"->'Detail'->'cs'->>'SubHeader' As varchar) AS "Detail-cs-SubHeader",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Header' As varchar) AS "Detail-de-Header",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'de'->>'MetaDesc' As varchar) AS "Detail-de-MetaDesc",
        CAST(NEW."data"->'Detail'->'de'->>'IntroText' As varchar) AS "Detail-de-IntroText",
        CAST(NEW."data"->'Detail'->'de'->>'MetaTitle' As varchar) AS "Detail-de-MetaTitle",
        CAST(NEW."data"->'Detail'->'de'->>'SubHeader' As varchar) AS "Detail-de-SubHeader",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'Header' As varchar) AS "Detail-en-Header",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'en'->>'MetaDesc' As varchar) AS "Detail-en-MetaDesc",
        CAST(NEW."data"->'Detail'->'en'->>'IntroText' As varchar) AS "Detail-en-IntroText",
        CAST(NEW."data"->'Detail'->'en'->>'MetaTitle' As varchar) AS "Detail-en-MetaTitle",
        CAST(NEW."data"->'Detail'->'en'->>'SubHeader' As varchar) AS "Detail-en-SubHeader",
        CAST(NEW."data"->'Detail'->'fr'->>'Title' As varchar) AS "Detail-fr-Title",
        CAST(NEW."data"->'Detail'->'fr'->>'Header' As varchar) AS "Detail-fr-Header",
        CAST(NEW."data"->'Detail'->'fr'->>'BaseText' As varchar) AS "Detail-fr-BaseText",
        CAST(NEW."data"->'Detail'->'fr'->>'Language' As varchar) AS "Detail-fr-Language",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaDesc' As varchar) AS "Detail-fr-MetaDesc",
        CAST(NEW."data"->'Detail'->'fr'->>'IntroText' As varchar) AS "Detail-fr-IntroText",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaTitle' As varchar) AS "Detail-fr-MetaTitle",
        CAST(NEW."data"->'Detail'->'fr'->>'SubHeader' As varchar) AS "Detail-fr-SubHeader",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Header' As varchar) AS "Detail-it-Header",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Detail'->'it'->>'MetaDesc' As varchar) AS "Detail-it-MetaDesc",
        CAST(NEW."data"->'Detail'->'it'->>'IntroText' As varchar) AS "Detail-it-IntroText",
        CAST(NEW."data"->'Detail'->'it'->>'MetaTitle' As varchar) AS "Detail-it-MetaTitle",
        CAST(NEW."data"->'Detail'->'it'->>'SubHeader' As varchar) AS "Detail-it-SubHeader",
        CAST(NEW."data"->'Detail'->'it'->>'GetThereText' As varchar) AS "Detail-it-GetThereText",
        CAST(NEW."data"->'Detail'->'nl'->>'Title' As varchar) AS "Detail-nl-Title",
        CAST(NEW."data"->'Detail'->'nl'->>'Header' As varchar) AS "Detail-nl-Header",
        CAST(NEW."data"->'Detail'->'nl'->>'BaseText' As varchar) AS "Detail-nl-BaseText",
        CAST(NEW."data"->'Detail'->'nl'->>'Language' As varchar) AS "Detail-nl-Language",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaDesc' As varchar) AS "Detail-nl-MetaDesc",
        CAST(NEW."data"->'Detail'->'nl'->>'IntroText' As varchar) AS "Detail-nl-IntroText",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaTitle' As varchar) AS "Detail-nl-MetaTitle",
        CAST(NEW."data"->'Detail'->'nl'->>'SubHeader' As varchar) AS "Detail-nl-SubHeader",
        CAST(NEW."data"->'Detail'->'pl'->>'Title' As varchar) AS "Detail-pl-Title",
        CAST(NEW."data"->'Detail'->'pl'->>'Header' As varchar) AS "Detail-pl-Header",
        CAST(NEW."data"->'Detail'->'pl'->>'BaseText' As varchar) AS "Detail-pl-BaseText",
        CAST(NEW."data"->'Detail'->'pl'->>'Language' As varchar) AS "Detail-pl-Language",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaDesc' As varchar) AS "Detail-pl-MetaDesc",
        CAST(NEW."data"->'Detail'->'pl'->>'IntroText' As varchar) AS "Detail-pl-IntroText",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaTitle' As varchar) AS "Detail-pl-MetaTitle",
        CAST(NEW."data"->'Detail'->'pl'->>'SubHeader' As varchar) AS "Detail-pl-SubHeader",
        CAST(NEW."data"->'Detail'->'ru'->>'Title' As varchar) AS "Detail-ru-Title",
        CAST(NEW."data"->'Detail'->'ru'->>'Header' As varchar) AS "Detail-ru-Header",
        CAST(NEW."data"->'Detail'->'ru'->>'BaseText' As varchar) AS "Detail-ru-BaseText",
        CAST(NEW."data"->'Detail'->'ru'->>'Language' As varchar) AS "Detail-ru-Language",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaDesc' As varchar) AS "Detail-ru-MetaDesc",
        CAST(NEW."data"->'Detail'->'ru'->>'IntroText' As varchar) AS "Detail-ru-IntroText",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaTitle' As varchar) AS "Detail-ru-MetaTitle",
        CAST(NEW."data"->'Detail'->'ru'->>'SubHeader' As varchar) AS "Detail-ru-SubHeader",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Url' As varchar) AS "ContactInfos-cs-Url",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'City' As varchar) AS "ContactInfos-cs-City",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Email' As varchar) AS "ContactInfos-cs-Email",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Address' As varchar) AS "ContactInfos-cs-Address",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'LogoUrl' As varchar) AS "ContactInfos-cs-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'ZipCode' As varchar) AS "ContactInfos-cs-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Language' As varchar) AS "ContactInfos-cs-Language",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CompanyName' As varchar) AS "ContactInfos-cs-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CountryCode' As varchar) AS "ContactInfos-cs-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CountryName' As varchar) AS "ContactInfos-cs-CountryName",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Phonenumber' As varchar) AS "ContactInfos-cs-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Url' As varchar) AS "ContactInfos-de-Url",
        CAST(NEW."data"->'ContactInfos'->'de'->>'City' As varchar) AS "ContactInfos-de-City",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Email' As varchar) AS "ContactInfos-de-Email",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Address' As varchar) AS "ContactInfos-de-Address",
        CAST(NEW."data"->'ContactInfos'->'de'->>'LogoUrl' As varchar) AS "ContactInfos-de-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'de'->>'ZipCode' As varchar) AS "ContactInfos-de-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Language' As varchar) AS "ContactInfos-de-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CompanyName' As varchar) AS "ContactInfos-de-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryCode' As varchar) AS "ContactInfos-de-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryName' As varchar) AS "ContactInfos-de-CountryName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Phonenumber' As varchar) AS "ContactInfos-de-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Url' As varchar) AS "ContactInfos-en-Url",
        CAST(NEW."data"->'ContactInfos'->'en'->>'City' As varchar) AS "ContactInfos-en-City",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Email' As varchar) AS "ContactInfos-en-Email",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Address' As varchar) AS "ContactInfos-en-Address",
        CAST(NEW."data"->'ContactInfos'->'en'->>'LogoUrl' As varchar) AS "ContactInfos-en-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'en'->>'ZipCode' As varchar) AS "ContactInfos-en-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Language' As varchar) AS "ContactInfos-en-Language",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CompanyName' As varchar) AS "ContactInfos-en-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryCode' As varchar) AS "ContactInfos-en-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryName' As varchar) AS "ContactInfos-en-CountryName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Phonenumber' As varchar) AS "ContactInfos-en-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Url' As varchar) AS "ContactInfos-fr-Url",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'City' As varchar) AS "ContactInfos-fr-City",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Email' As varchar) AS "ContactInfos-fr-Email",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Address' As varchar) AS "ContactInfos-fr-Address",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'LogoUrl' As varchar) AS "ContactInfos-fr-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'ZipCode' As varchar) AS "ContactInfos-fr-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Language' As varchar) AS "ContactInfos-fr-Language",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CompanyName' As varchar) AS "ContactInfos-fr-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CountryCode' As varchar) AS "ContactInfos-fr-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CountryName' As varchar) AS "ContactInfos-fr-CountryName",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Phonenumber' As varchar) AS "ContactInfos-fr-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Url' As varchar) AS "ContactInfos-it-Url",
        CAST(NEW."data"->'ContactInfos'->'it'->>'City' As varchar) AS "ContactInfos-it-City",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Email' As varchar) AS "ContactInfos-it-Email",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Address' As varchar) AS "ContactInfos-it-Address",
        CAST(NEW."data"->'ContactInfos'->'it'->>'LogoUrl' As varchar) AS "ContactInfos-it-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'it'->>'ZipCode' As varchar) AS "ContactInfos-it-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Language' As varchar) AS "ContactInfos-it-Language",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CompanyName' As varchar) AS "ContactInfos-it-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryCode' As varchar) AS "ContactInfos-it-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryName' As varchar) AS "ContactInfos-it-CountryName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Phonenumber' As varchar) AS "ContactInfos-it-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Url' As varchar) AS "ContactInfos-nl-Url",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'City' As varchar) AS "ContactInfos-nl-City",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Email' As varchar) AS "ContactInfos-nl-Email",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Address' As varchar) AS "ContactInfos-nl-Address",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'LogoUrl' As varchar) AS "ContactInfos-nl-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'ZipCode' As varchar) AS "ContactInfos-nl-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Language' As varchar) AS "ContactInfos-nl-Language",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CompanyName' As varchar) AS "ContactInfos-nl-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CountryCode' As varchar) AS "ContactInfos-nl-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CountryName' As varchar) AS "ContactInfos-nl-CountryName",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Phonenumber' As varchar) AS "ContactInfos-nl-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Url' As varchar) AS "ContactInfos-pl-Url",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'City' As varchar) AS "ContactInfos-pl-City",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Email' As varchar) AS "ContactInfos-pl-Email",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Address' As varchar) AS "ContactInfos-pl-Address",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'LogoUrl' As varchar) AS "ContactInfos-pl-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'ZipCode' As varchar) AS "ContactInfos-pl-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Language' As varchar) AS "ContactInfos-pl-Language",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CompanyName' As varchar) AS "ContactInfos-pl-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CountryCode' As varchar) AS "ContactInfos-pl-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CountryName' As varchar) AS "ContactInfos-pl-CountryName",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Phonenumber' As varchar) AS "ContactInfos-pl-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Url' As varchar) AS "ContactInfos-ru-Url",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'City' As varchar) AS "ContactInfos-ru-City",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Email' As varchar) AS "ContactInfos-ru-Email",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Address' As varchar) AS "ContactInfos-ru-Address",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'LogoUrl' As varchar) AS "ContactInfos-ru-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'ZipCode' As varchar) AS "ContactInfos-ru-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Language' As varchar) AS "ContactInfos-ru-Language",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CompanyName' As varchar) AS "ContactInfos-ru-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CountryCode' As varchar) AS "ContactInfos-ru-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CountryName' As varchar) AS "ContactInfos-ru-CountryName",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Phonenumber' As varchar) AS "ContactInfos-ru-Phonenumber",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->>'Id' As varchar) AS "LocationInfo-TvInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-TvInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'de' As varchar) AS "LocationInfo-TvInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'en' As varchar) AS "LocationInfo-TvInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-TvInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'it' As varchar) AS "LocationInfo-TvInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-TvInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-TvInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-TvInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->>'Id' As varchar) AS "LocationInfo-RegionInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-RegionInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'de' As varchar) AS "LocationInfo-RegionInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'en' As varchar) AS "LocationInfo-RegionInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-RegionInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'it' As varchar) AS "LocationInfo-RegionInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-RegionInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-RegionInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-RegionInfo-Name-ru",
        CAST(NEW."data"->'SkiRegionName'->>'cs' As varchar) AS "SkiRegionName-cs",
        CAST(NEW."data"->'SkiRegionName'->>'de' As varchar) AS "SkiRegionName-de",
        CAST(NEW."data"->'SkiRegionName'->>'en' As varchar) AS "SkiRegionName-en",
        CAST(NEW."data"->'SkiRegionName'->>'fr' As varchar) AS "SkiRegionName-fr",
        CAST(NEW."data"->'SkiRegionName'->>'it' As varchar) AS "SkiRegionName-it",
        CAST(NEW."data"->'SkiRegionName'->>'nl' As varchar) AS "SkiRegionName-nl",
        CAST(NEW."data"->'SkiRegionName'->>'pl' As varchar) AS "SkiRegionName-pl",
        CAST(NEW."data"->'SkiRegionName'->>'ru' As varchar) AS "SkiRegionName-ru";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiareasopen
    BEFORE INSERT
    ON skiareasopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiareasopen_fn();

ALTER TABLE skiareasopen
    ENABLE ALWAYS TRIGGER t_v_skiareasopen;

DROP TABLE IF EXISTS "v_skiareasopen_AreaId";

CREATE TABLE  "v_skiareasopen_AreaId" (
                                          "Id" varchar,
                                          "data" varchar
);

DROP FUNCTION IF EXISTS v_skiareasopen_AreaId_fn CASCADE;

CREATE FUNCTION v_skiareasopen_AreaId_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_skiareasopen_AreaId"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'AreaId') AS "data"
    WHERE NEW."data" -> 'AreaId' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiareasopen_AreaId
    BEFORE INSERT
    ON skiareasopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiareasopen_AreaId_fn();

ALTER TABLE skiareasopen
    ENABLE ALWAYS TRIGGER t_v_skiareasopen_AreaId;

DROP TABLE IF EXISTS "v_skiareasopen_SmgTags";

CREATE TABLE  "v_skiareasopen_SmgTags" (
                                           "Id" varchar,
                                           "data" varchar
);

DROP FUNCTION IF EXISTS v_skiareasopen_SmgTags_fn CASCADE;

CREATE FUNCTION v_skiareasopen_SmgTags_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_skiareasopen_SmgTags"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'SmgTags') AS "data"
    WHERE NEW."data" -> 'SmgTags' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiareasopen_SmgTags
    BEFORE INSERT
    ON skiareasopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiareasopen_SmgTags_fn();

ALTER TABLE skiareasopen
    ENABLE ALWAYS TRIGGER t_v_skiareasopen_SmgTags;

DROP TABLE IF EXISTS "v_skiareasopen_RegionIds";

CREATE TABLE  "v_skiareasopen_RegionIds" (
                                             "Id" varchar,
                                             "data" varchar
);

DROP FUNCTION IF EXISTS v_skiareasopen_RegionIds_fn CASCADE;

CREATE FUNCTION v_skiareasopen_RegionIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_skiareasopen_RegionIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'RegionIds') AS "data"
    WHERE NEW."data" -> 'RegionIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiareasopen_RegionIds
    BEFORE INSERT
    ON skiareasopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiareasopen_RegionIds_fn();

ALTER TABLE skiareasopen
    ENABLE ALWAYS TRIGGER t_v_skiareasopen_RegionIds;

DROP TABLE IF EXISTS "v_skiareasopen_HasLanguage";

CREATE TABLE  "v_skiareasopen_HasLanguage" (
                                               "Id" varchar,
                                               "data" varchar
);

DROP FUNCTION IF EXISTS v_skiareasopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_skiareasopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_skiareasopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiareasopen_HasLanguage
    BEFORE INSERT
    ON skiareasopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiareasopen_HasLanguage_fn();

ALTER TABLE skiareasopen
    ENABLE ALWAYS TRIGGER t_v_skiareasopen_HasLanguage;

DROP TABLE IF EXISTS "v_skiareasopen_TourismvereinIds";

CREATE TABLE  "v_skiareasopen_TourismvereinIds" (
                                                    "Id" varchar,
                                                    "data" varchar
);

DROP FUNCTION IF EXISTS v_skiareasopen_TourismvereinIds_fn CASCADE;

CREATE FUNCTION v_skiareasopen_TourismvereinIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_skiareasopen_TourismvereinIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'TourismvereinIds') AS "data"
    WHERE NEW."data" -> 'TourismvereinIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiareasopen_TourismvereinIds
    BEFORE INSERT
    ON skiareasopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiareasopen_TourismvereinIds_fn();

ALTER TABLE skiareasopen
    ENABLE ALWAYS TRIGGER t_v_skiareasopen_TourismvereinIds;

DROP TABLE IF EXISTS "v_skiareasopen_Webcam";

CREATE TABLE "v_skiareasopen_Webcam" (
                                         "skiareasopen_Id" varchar,
                                         "WebcamId" varchar,
                                         "Webcamurl" varchar,
                                         "GpsInfo-Gpstype" varchar,
                                         "GpsInfo-Latitude" float,
                                         "GpsInfo-Longitude" float,
                                         "GpsInfo-AltitudeUnitofMeasure" varchar
);

DROP FUNCTION IF EXISTS v_skiareasopen_Webcam_fn CASCADE;

CREATE FUNCTION v_skiareasopen_Webcam_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_skiareasopen_Webcam"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'Webcam') AS "data"
        WHERE NEW."data" -> 'Webcam' != 'null')
    SELECT "Id" AS "skiareasopen_Id", CAST("data"->>'WebcamId' As varchar) AS "WebcamId",
           CAST("data"->>'Webcamurl' As varchar) AS "Webcamurl",
           CAST("data"->'GpsInfo'->>'Gpstype' As varchar) AS "GpsInfo-Gpstype",
           CAST("data"->'GpsInfo'->>'Latitude' As float) AS "GpsInfo-Latitude",
           CAST("data"->'GpsInfo'->>'Longitude' As float) AS "GpsInfo-Longitude",
           CAST("data"->'GpsInfo'->>'AltitudeUnitofMeasure' As varchar) AS "GpsInfo-AltitudeUnitofMeasure"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiareasopen_Webcam
    BEFORE INSERT
    ON skiareasopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiareasopen_Webcam_fn();

ALTER TABLE skiareasopen
    ENABLE ALWAYS TRIGGER t_v_skiareasopen_Webcam;


DROP TABLE IF EXISTS "v_skiareasopen_OperationSchedule";

CREATE TABLE "v_skiareasopen_OperationSchedule" (
                                                    "skiareasopen_Id" varchar,
                                                    "Stop" varchar,
                                                    "Type" varchar,
                                                    "Start" varchar,
                                                    "OperationscheduleName-cs" varchar,
                                                    "OperationscheduleName-de" varchar,
                                                    "OperationscheduleName-en" varchar,
                                                    "OperationscheduleName-it" varchar,
                                                    "OperationscheduleName-nl" varchar,
                                                    "OperationscheduleName-pl" varchar
);

DROP FUNCTION IF EXISTS v_skiareasopen_OperationSchedule_fn CASCADE;

CREATE FUNCTION v_skiareasopen_OperationSchedule_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_skiareasopen_OperationSchedule"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'OperationSchedule') AS "data"
        WHERE NEW."data" -> 'OperationSchedule' != 'null')
    SELECT "Id" AS "skiareasopen_Id", CAST("data"->>'Stop' As varchar) AS "Stop",
           CAST("data"->>'Type' As varchar) AS "Type",
           CAST("data"->>'Start' As varchar) AS "Start",
           CAST("data"->'OperationscheduleName'->>'cs' As varchar) AS "OperationscheduleName-cs",
           CAST("data"->'OperationscheduleName'->>'de' As varchar) AS "OperationscheduleName-de",
           CAST("data"->'OperationscheduleName'->>'en' As varchar) AS "OperationscheduleName-en",
           CAST("data"->'OperationscheduleName'->>'it' As varchar) AS "OperationscheduleName-it",
           CAST("data"->'OperationscheduleName'->>'nl' As varchar) AS "OperationscheduleName-nl",
           CAST("data"->'OperationscheduleName'->>'pl' As varchar) AS "OperationscheduleName-pl"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiareasopen_OperationSchedule
    BEFORE INSERT
    ON skiareasopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiareasopen_OperationSchedule_fn();

ALTER TABLE skiareasopen
    ENABLE ALWAYS TRIGGER t_v_skiareasopen_OperationSchedule;


DROP TABLE IF EXISTS "v_skiregionsopen";

CREATE TABLE "v_skiregionsopen" (
                                    "Id" varchar,
                                    "Active" bool,
                                    "Gpstype" varchar,
                                    "Altitude" float,
                                    "Latitude" float,
                                    "Longitude" float,
                                    "Shortname" varchar,
                                    "SmgActive" bool,
                                    "LastChange" varchar,
                                    "AltitudeUnitofMeasure" varchar,
                                    "Detail-cs-Title" varchar,
                                    "Detail-cs-BaseText" varchar,
                                    "Detail-cs-Language" varchar,
                                    "Detail-cs-IntroText" varchar,
                                    "Detail-cs-SubHeader" varchar,
                                    "Detail-cs-GetThereText" varchar,
                                    "Detail-de-Title" varchar,
                                    "Detail-de-BaseText" varchar,
                                    "Detail-de-Language" varchar,
                                    "Detail-de-IntroText" varchar,
                                    "Detail-de-SubHeader" varchar,
                                    "Detail-de-GetThereText" varchar,
                                    "Detail-en-Title" varchar,
                                    "Detail-en-BaseText" varchar,
                                    "Detail-en-Language" varchar,
                                    "Detail-en-IntroText" varchar,
                                    "Detail-en-SubHeader" varchar,
                                    "Detail-en-GetThereText" varchar,
                                    "Detail-fr-Title" varchar,
                                    "Detail-fr-Header" varchar,
                                    "Detail-fr-BaseText" varchar,
                                    "Detail-fr-Language" varchar,
                                    "Detail-fr-IntroText" varchar,
                                    "Detail-fr-SubHeader" varchar,
                                    "Detail-fr-GetThereText" varchar,
                                    "Detail-it-Title" varchar,
                                    "Detail-it-BaseText" varchar,
                                    "Detail-it-Language" varchar,
                                    "Detail-it-IntroText" varchar,
                                    "Detail-it-SubHeader" varchar,
                                    "Detail-it-GetThereText" varchar,
                                    "Detail-nl-Title" varchar,
                                    "Detail-nl-BaseText" varchar,
                                    "Detail-nl-Language" varchar,
                                    "Detail-nl-IntroText" varchar,
                                    "Detail-nl-SubHeader" varchar,
                                    "Detail-nl-GetThereText" varchar,
                                    "Detail-pl-Title" varchar,
                                    "Detail-pl-BaseText" varchar,
                                    "Detail-pl-Language" varchar,
                                    "Detail-pl-IntroText" varchar,
                                    "Detail-pl-SubHeader" varchar,
                                    "Detail-pl-GetThereText" varchar,
                                    "Detail-ru-Title" varchar,
                                    "Detail-ru-Header" varchar,
                                    "Detail-ru-BaseText" varchar,
                                    "Detail-ru-Language" varchar,
                                    "Detail-ru-IntroText" varchar,
                                    "Detail-ru-SubHeader" varchar,
                                    "Detail-ru-GetThereText" varchar,
                                    "ContactInfos-cs-Url" varchar,
                                    "ContactInfos-cs-City" varchar,
                                    "ContactInfos-cs-Email" varchar,
                                    "ContactInfos-cs-Address" varchar,
                                    "ContactInfos-cs-LogoUrl" varchar,
                                    "ContactInfos-cs-ZipCode" varchar,
                                    "ContactInfos-cs-Language" varchar,
                                    "ContactInfos-cs-CompanyName" varchar,
                                    "ContactInfos-cs-CountryCode" varchar,
                                    "ContactInfos-cs-CountryName" varchar,
                                    "ContactInfos-cs-Phonenumber" varchar,
                                    "ContactInfos-de-Url" varchar,
                                    "ContactInfos-de-City" varchar,
                                    "ContactInfos-de-Email" varchar,
                                    "ContactInfos-de-Address" varchar,
                                    "ContactInfos-de-LogoUrl" varchar,
                                    "ContactInfos-de-ZipCode" varchar,
                                    "ContactInfos-de-Language" varchar,
                                    "ContactInfos-de-CompanyName" varchar,
                                    "ContactInfos-de-CountryCode" varchar,
                                    "ContactInfos-de-CountryName" varchar,
                                    "ContactInfos-de-Phonenumber" varchar,
                                    "ContactInfos-en-Url" varchar,
                                    "ContactInfos-en-City" varchar,
                                    "ContactInfos-en-Email" varchar,
                                    "ContactInfos-en-Address" varchar,
                                    "ContactInfos-en-LogoUrl" varchar,
                                    "ContactInfos-en-ZipCode" varchar,
                                    "ContactInfos-en-Language" varchar,
                                    "ContactInfos-en-CompanyName" varchar,
                                    "ContactInfos-en-CountryCode" varchar,
                                    "ContactInfos-en-CountryName" varchar,
                                    "ContactInfos-en-Phonenumber" varchar,
                                    "ContactInfos-fr-Url" varchar,
                                    "ContactInfos-fr-City" varchar,
                                    "ContactInfos-fr-Email" varchar,
                                    "ContactInfos-fr-Address" varchar,
                                    "ContactInfos-fr-LogoUrl" varchar,
                                    "ContactInfos-fr-ZipCode" varchar,
                                    "ContactInfos-fr-Language" varchar,
                                    "ContactInfos-fr-CompanyName" varchar,
                                    "ContactInfos-fr-CountryCode" varchar,
                                    "ContactInfos-fr-CountryName" varchar,
                                    "ContactInfos-fr-Phonenumber" varchar,
                                    "ContactInfos-it-Url" varchar,
                                    "ContactInfos-it-City" varchar,
                                    "ContactInfos-it-Email" varchar,
                                    "ContactInfos-it-Address" varchar,
                                    "ContactInfos-it-LogoUrl" varchar,
                                    "ContactInfos-it-ZipCode" varchar,
                                    "ContactInfos-it-Language" varchar,
                                    "ContactInfos-it-CompanyName" varchar,
                                    "ContactInfos-it-CountryCode" varchar,
                                    "ContactInfos-it-CountryName" varchar,
                                    "ContactInfos-it-Phonenumber" varchar,
                                    "ContactInfos-nl-Url" varchar,
                                    "ContactInfos-nl-City" varchar,
                                    "ContactInfos-nl-Email" varchar,
                                    "ContactInfos-nl-Address" varchar,
                                    "ContactInfos-nl-LogoUrl" varchar,
                                    "ContactInfos-nl-ZipCode" varchar,
                                    "ContactInfos-nl-Language" varchar,
                                    "ContactInfos-nl-CompanyName" varchar,
                                    "ContactInfos-nl-CountryCode" varchar,
                                    "ContactInfos-nl-CountryName" varchar,
                                    "ContactInfos-nl-Phonenumber" varchar,
                                    "ContactInfos-pl-Url" varchar,
                                    "ContactInfos-pl-City" varchar,
                                    "ContactInfos-pl-Email" varchar,
                                    "ContactInfos-pl-Address" varchar,
                                    "ContactInfos-pl-LogoUrl" varchar,
                                    "ContactInfos-pl-ZipCode" varchar,
                                    "ContactInfos-pl-Language" varchar,
                                    "ContactInfos-pl-CompanyName" varchar,
                                    "ContactInfos-pl-CountryCode" varchar,
                                    "ContactInfos-pl-CountryName" varchar,
                                    "ContactInfos-pl-Phonenumber" varchar,
                                    "ContactInfos-ru-Url" varchar,
                                    "ContactInfos-ru-City" varchar,
                                    "ContactInfos-ru-Email" varchar,
                                    "ContactInfos-ru-Address" varchar,
                                    "ContactInfos-ru-LogoUrl" varchar,
                                    "ContactInfos-ru-ZipCode" varchar,
                                    "ContactInfos-ru-Language" varchar,
                                    "ContactInfos-ru-CompanyName" varchar,
                                    "ContactInfos-ru-CountryCode" varchar,
                                    "ContactInfos-ru-CountryName" varchar,
                                    "ContactInfos-ru-Phonenumber" varchar
);

ALTER TABLE "v_skiregionsopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_skiregionsopen_fn CASCADE;

CREATE FUNCTION v_skiregionsopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_skiregionsopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Altitude' As float) AS "Altitude",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->'Detail'->'cs'->>'Title' As varchar) AS "Detail-cs-Title",
        CAST(NEW."data"->'Detail'->'cs'->>'BaseText' As varchar) AS "Detail-cs-BaseText",
        CAST(NEW."data"->'Detail'->'cs'->>'Language' As varchar) AS "Detail-cs-Language",
        CAST(NEW."data"->'Detail'->'cs'->>'IntroText' As varchar) AS "Detail-cs-IntroText",
        CAST(NEW."data"->'Detail'->'cs'->>'SubHeader' As varchar) AS "Detail-cs-SubHeader",
        CAST(NEW."data"->'Detail'->'cs'->>'GetThereText' As varchar) AS "Detail-cs-GetThereText",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'de'->>'IntroText' As varchar) AS "Detail-de-IntroText",
        CAST(NEW."data"->'Detail'->'de'->>'SubHeader' As varchar) AS "Detail-de-SubHeader",
        CAST(NEW."data"->'Detail'->'de'->>'GetThereText' As varchar) AS "Detail-de-GetThereText",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'en'->>'IntroText' As varchar) AS "Detail-en-IntroText",
        CAST(NEW."data"->'Detail'->'en'->>'SubHeader' As varchar) AS "Detail-en-SubHeader",
        CAST(NEW."data"->'Detail'->'en'->>'GetThereText' As varchar) AS "Detail-en-GetThereText",
        CAST(NEW."data"->'Detail'->'fr'->>'Title' As varchar) AS "Detail-fr-Title",
        CAST(NEW."data"->'Detail'->'fr'->>'Header' As varchar) AS "Detail-fr-Header",
        CAST(NEW."data"->'Detail'->'fr'->>'BaseText' As varchar) AS "Detail-fr-BaseText",
        CAST(NEW."data"->'Detail'->'fr'->>'Language' As varchar) AS "Detail-fr-Language",
        CAST(NEW."data"->'Detail'->'fr'->>'IntroText' As varchar) AS "Detail-fr-IntroText",
        CAST(NEW."data"->'Detail'->'fr'->>'SubHeader' As varchar) AS "Detail-fr-SubHeader",
        CAST(NEW."data"->'Detail'->'fr'->>'GetThereText' As varchar) AS "Detail-fr-GetThereText",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Detail'->'it'->>'IntroText' As varchar) AS "Detail-it-IntroText",
        CAST(NEW."data"->'Detail'->'it'->>'SubHeader' As varchar) AS "Detail-it-SubHeader",
        CAST(NEW."data"->'Detail'->'it'->>'GetThereText' As varchar) AS "Detail-it-GetThereText",
        CAST(NEW."data"->'Detail'->'nl'->>'Title' As varchar) AS "Detail-nl-Title",
        CAST(NEW."data"->'Detail'->'nl'->>'BaseText' As varchar) AS "Detail-nl-BaseText",
        CAST(NEW."data"->'Detail'->'nl'->>'Language' As varchar) AS "Detail-nl-Language",
        CAST(NEW."data"->'Detail'->'nl'->>'IntroText' As varchar) AS "Detail-nl-IntroText",
        CAST(NEW."data"->'Detail'->'nl'->>'SubHeader' As varchar) AS "Detail-nl-SubHeader",
        CAST(NEW."data"->'Detail'->'nl'->>'GetThereText' As varchar) AS "Detail-nl-GetThereText",
        CAST(NEW."data"->'Detail'->'pl'->>'Title' As varchar) AS "Detail-pl-Title",
        CAST(NEW."data"->'Detail'->'pl'->>'BaseText' As varchar) AS "Detail-pl-BaseText",
        CAST(NEW."data"->'Detail'->'pl'->>'Language' As varchar) AS "Detail-pl-Language",
        CAST(NEW."data"->'Detail'->'pl'->>'IntroText' As varchar) AS "Detail-pl-IntroText",
        CAST(NEW."data"->'Detail'->'pl'->>'SubHeader' As varchar) AS "Detail-pl-SubHeader",
        CAST(NEW."data"->'Detail'->'pl'->>'GetThereText' As varchar) AS "Detail-pl-GetThereText",
        CAST(NEW."data"->'Detail'->'ru'->>'Title' As varchar) AS "Detail-ru-Title",
        CAST(NEW."data"->'Detail'->'ru'->>'Header' As varchar) AS "Detail-ru-Header",
        CAST(NEW."data"->'Detail'->'ru'->>'BaseText' As varchar) AS "Detail-ru-BaseText",
        CAST(NEW."data"->'Detail'->'ru'->>'Language' As varchar) AS "Detail-ru-Language",
        CAST(NEW."data"->'Detail'->'ru'->>'IntroText' As varchar) AS "Detail-ru-IntroText",
        CAST(NEW."data"->'Detail'->'ru'->>'SubHeader' As varchar) AS "Detail-ru-SubHeader",
        CAST(NEW."data"->'Detail'->'ru'->>'GetThereText' As varchar) AS "Detail-ru-GetThereText",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Url' As varchar) AS "ContactInfos-cs-Url",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'City' As varchar) AS "ContactInfos-cs-City",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Email' As varchar) AS "ContactInfos-cs-Email",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Address' As varchar) AS "ContactInfos-cs-Address",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'LogoUrl' As varchar) AS "ContactInfos-cs-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'ZipCode' As varchar) AS "ContactInfos-cs-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Language' As varchar) AS "ContactInfos-cs-Language",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CompanyName' As varchar) AS "ContactInfos-cs-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CountryCode' As varchar) AS "ContactInfos-cs-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CountryName' As varchar) AS "ContactInfos-cs-CountryName",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Phonenumber' As varchar) AS "ContactInfos-cs-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Url' As varchar) AS "ContactInfos-de-Url",
        CAST(NEW."data"->'ContactInfos'->'de'->>'City' As varchar) AS "ContactInfos-de-City",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Email' As varchar) AS "ContactInfos-de-Email",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Address' As varchar) AS "ContactInfos-de-Address",
        CAST(NEW."data"->'ContactInfos'->'de'->>'LogoUrl' As varchar) AS "ContactInfos-de-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'de'->>'ZipCode' As varchar) AS "ContactInfos-de-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Language' As varchar) AS "ContactInfos-de-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CompanyName' As varchar) AS "ContactInfos-de-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryCode' As varchar) AS "ContactInfos-de-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryName' As varchar) AS "ContactInfos-de-CountryName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Phonenumber' As varchar) AS "ContactInfos-de-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Url' As varchar) AS "ContactInfos-en-Url",
        CAST(NEW."data"->'ContactInfos'->'en'->>'City' As varchar) AS "ContactInfos-en-City",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Email' As varchar) AS "ContactInfos-en-Email",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Address' As varchar) AS "ContactInfos-en-Address",
        CAST(NEW."data"->'ContactInfos'->'en'->>'LogoUrl' As varchar) AS "ContactInfos-en-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'en'->>'ZipCode' As varchar) AS "ContactInfos-en-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Language' As varchar) AS "ContactInfos-en-Language",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CompanyName' As varchar) AS "ContactInfos-en-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryCode' As varchar) AS "ContactInfos-en-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryName' As varchar) AS "ContactInfos-en-CountryName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Phonenumber' As varchar) AS "ContactInfos-en-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Url' As varchar) AS "ContactInfos-fr-Url",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'City' As varchar) AS "ContactInfos-fr-City",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Email' As varchar) AS "ContactInfos-fr-Email",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Address' As varchar) AS "ContactInfos-fr-Address",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'LogoUrl' As varchar) AS "ContactInfos-fr-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'ZipCode' As varchar) AS "ContactInfos-fr-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Language' As varchar) AS "ContactInfos-fr-Language",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CompanyName' As varchar) AS "ContactInfos-fr-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CountryCode' As varchar) AS "ContactInfos-fr-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CountryName' As varchar) AS "ContactInfos-fr-CountryName",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Phonenumber' As varchar) AS "ContactInfos-fr-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Url' As varchar) AS "ContactInfos-it-Url",
        CAST(NEW."data"->'ContactInfos'->'it'->>'City' As varchar) AS "ContactInfos-it-City",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Email' As varchar) AS "ContactInfos-it-Email",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Address' As varchar) AS "ContactInfos-it-Address",
        CAST(NEW."data"->'ContactInfos'->'it'->>'LogoUrl' As varchar) AS "ContactInfos-it-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'it'->>'ZipCode' As varchar) AS "ContactInfos-it-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Language' As varchar) AS "ContactInfos-it-Language",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CompanyName' As varchar) AS "ContactInfos-it-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryCode' As varchar) AS "ContactInfos-it-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryName' As varchar) AS "ContactInfos-it-CountryName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Phonenumber' As varchar) AS "ContactInfos-it-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Url' As varchar) AS "ContactInfos-nl-Url",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'City' As varchar) AS "ContactInfos-nl-City",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Email' As varchar) AS "ContactInfos-nl-Email",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Address' As varchar) AS "ContactInfos-nl-Address",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'LogoUrl' As varchar) AS "ContactInfos-nl-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'ZipCode' As varchar) AS "ContactInfos-nl-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Language' As varchar) AS "ContactInfos-nl-Language",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CompanyName' As varchar) AS "ContactInfos-nl-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CountryCode' As varchar) AS "ContactInfos-nl-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CountryName' As varchar) AS "ContactInfos-nl-CountryName",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Phonenumber' As varchar) AS "ContactInfos-nl-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Url' As varchar) AS "ContactInfos-pl-Url",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'City' As varchar) AS "ContactInfos-pl-City",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Email' As varchar) AS "ContactInfos-pl-Email",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Address' As varchar) AS "ContactInfos-pl-Address",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'LogoUrl' As varchar) AS "ContactInfos-pl-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'ZipCode' As varchar) AS "ContactInfos-pl-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Language' As varchar) AS "ContactInfos-pl-Language",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CompanyName' As varchar) AS "ContactInfos-pl-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CountryCode' As varchar) AS "ContactInfos-pl-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CountryName' As varchar) AS "ContactInfos-pl-CountryName",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Phonenumber' As varchar) AS "ContactInfos-pl-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Url' As varchar) AS "ContactInfos-ru-Url",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'City' As varchar) AS "ContactInfos-ru-City",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Email' As varchar) AS "ContactInfos-ru-Email",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Address' As varchar) AS "ContactInfos-ru-Address",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'LogoUrl' As varchar) AS "ContactInfos-ru-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'ZipCode' As varchar) AS "ContactInfos-ru-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Language' As varchar) AS "ContactInfos-ru-Language",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CompanyName' As varchar) AS "ContactInfos-ru-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CountryCode' As varchar) AS "ContactInfos-ru-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CountryName' As varchar) AS "ContactInfos-ru-CountryName",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Phonenumber' As varchar) AS "ContactInfos-ru-Phonenumber";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiregionsopen
    BEFORE INSERT
    ON skiregionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiregionsopen_fn();

ALTER TABLE skiregionsopen
    ENABLE ALWAYS TRIGGER t_v_skiregionsopen;

DROP TABLE IF EXISTS "v_skiregionsopen_HasLanguage";

CREATE TABLE  "v_skiregionsopen_HasLanguage" (
                                                 "Id" varchar,
                                                 "data" varchar
);

DROP FUNCTION IF EXISTS v_skiregionsopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_skiregionsopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_skiregionsopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiregionsopen_HasLanguage
    BEFORE INSERT
    ON skiregionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiregionsopen_HasLanguage_fn();

ALTER TABLE skiregionsopen
    ENABLE ALWAYS TRIGGER t_v_skiregionsopen_HasLanguage;

DROP TABLE IF EXISTS "v_skiregionsopen_GpsPolygon";

CREATE TABLE "v_skiregionsopen_GpsPolygon" (
                                               "skiregionsopen_Id" varchar,
                                               "Latitude" float,
                                               "Longitude" float
);

DROP FUNCTION IF EXISTS v_skiregionsopen_GpsPolygon_fn CASCADE;

CREATE FUNCTION v_skiregionsopen_GpsPolygon_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_skiregionsopen_GpsPolygon"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'GpsPolygon') AS "data"
        WHERE NEW."data" -> 'GpsPolygon' != 'null')
    SELECT "Id" AS "skiregionsopen_Id", CAST("data"->>'Latitude' As float) AS "Latitude",
           CAST("data"->>'Longitude' As float) AS "Longitude"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_skiregionsopen_GpsPolygon
    BEFORE INSERT
    ON skiregionsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_skiregionsopen_GpsPolygon_fn();

ALTER TABLE skiregionsopen
    ENABLE ALWAYS TRIGGER t_v_skiregionsopen_GpsPolygon;


DROP TABLE IF EXISTS "v_smgpoisopen";

CREATE TABLE "v_smgpoisopen" (
                                 "Id" varchar,
                                 "Type" varchar,
                                 "AgeTo" integer,
                                 "SmgId" varchar,
                                 "Active" bool,
                                 "IsOpen" bool,
                                 "Source" varchar,
                                 "AgeFrom" integer,
                                 "PoiType" varchar,
                                 "SubType" varchar,
                                 "CustomId" varchar,
                                 "OwnerRid" varchar,
                                 "FeetClimb" bool,
                                 "Highlight" bool,
                                 "Shortname" varchar,
                                 "SmgActive" bool,
                                 "Difficulty" varchar,
                                 "HasRentals" bool,
                                 "IsPrepared" bool,
                                 "LastChange" varchar,
                                 "FirstImport" varchar,
                                 "IsWithLigth" bool,
                                 "RunToValley" bool,
                                 "AltitudeSumUp" float,
                                 "LiftAvailable" bool,
                                 "DistanceLength" float,
                                 "SyncUpdateMode" varchar,
                                 "AltitudeSumDown" float,
                                 "HasFreeEntrance" bool,
                                 "OutdooractiveID" varchar,
                                 "CopyrightChecked" bool,
                                 "DistanceDuration" float,
                                 "AltitudeDifference" float,
                                 "MaxSeatingCapacity" integer,
                                 "AltitudeLowestPoint" float,
                                 "SyncSourceInterface" varchar,
                                 "AltitudeHighestPoint" float,
                                 "TourismorganizationId" varchar,
                                 "Detail-cs-Title" varchar,
                                 "Detail-cs-BaseText" varchar,
                                 "Detail-cs-MetaDesc" varchar,
                                 "Detail-cs-MetaTitle" varchar,
                                 "Detail-de-Title" varchar,
                                 "Detail-de-BaseText" varchar,
                                 "Detail-de-Language" varchar,
                                 "Detail-de-MetaDesc" varchar,
                                 "Detail-de-IntroText" varchar,
                                 "Detail-de-MetaTitle" varchar,
                                 "Detail-de-GetThereText" varchar,
                                 "Detail-en-Title" varchar,
                                 "Detail-en-BaseText" varchar,
                                 "Detail-en-Language" varchar,
                                 "Detail-en-MetaDesc" varchar,
                                 "Detail-en-MetaTitle" varchar,
                                 "Detail-en-GetThereText" varchar,
                                 "Detail-fr-Title" varchar,
                                 "Detail-fr-BaseText" varchar,
                                 "Detail-fr-MetaDesc" varchar,
                                 "Detail-fr-MetaTitle" varchar,
                                 "Detail-it-Title" varchar,
                                 "Detail-it-BaseText" varchar,
                                 "Detail-it-Language" varchar,
                                 "Detail-it-MetaDesc" varchar,
                                 "Detail-it-IntroText" varchar,
                                 "Detail-it-MetaTitle" varchar,
                                 "Detail-it-GetThereText" varchar,
                                 "Detail-nl-Title" varchar,
                                 "Detail-nl-BaseText" varchar,
                                 "Detail-nl-MetaDesc" varchar,
                                 "Detail-nl-MetaTitle" varchar,
                                 "Detail-pl-Title" varchar,
                                 "Detail-pl-BaseText" varchar,
                                 "Detail-pl-MetaDesc" varchar,
                                 "Detail-pl-MetaTitle" varchar,
                                 "Detail-ru-Title" varchar,
                                 "Detail-ru-BaseText" varchar,
                                 "Detail-ru-MetaDesc" varchar,
                                 "Detail-ru-MetaTitle" varchar,
                                 "Ratings-Stamina" varchar,
                                 "Ratings-Landscape" varchar,
                                 "Ratings-Technique" varchar,
                                 "Ratings-Difficulty" varchar,
                                 "Ratings-Experience" varchar,
                                 "GpsPoints-position-Gpstype" varchar,
                                 "GpsPoints-position-Altitude" float,
                                 "GpsPoints-position-Latitude" float,
                                 "GpsPoints-position-Longitude" float,
                                 "GpsPoints-position-AltitudeUnitofMeasure" varchar,
                                 "GpsPoints-arrivalpoint-Gpstype" varchar,
                                 "GpsPoints-arrivalpoint-Altitude" float,
                                 "GpsPoints-arrivalpoint-Latitude" float,
                                 "GpsPoints-arrivalpoint-Longitude" float,
                                 "GpsPoints-arrivalpoint-AltitudeUnitofMeasure" varchar,
                                 "GpsPoints-startingpoint-Gpstype" varchar,
                                 "GpsPoints-startingpoint-Altitude" float,
                                 "GpsPoints-startingpoint-Latitude" float,
                                 "GpsPoints-startingpoint-Longitude" float,
                                 "GpsPoints-startingpoint-AltitudeUnitofMeasure" varchar,
                                 "ContactInfos-de-Url" varchar,
                                 "ContactInfos-de-City" varchar,
                                 "ContactInfos-de-Email" varchar,
                                 "ContactInfos-de-Address" varchar,
                                 "ContactInfos-de-Surname" varchar,
                                 "ContactInfos-de-ZipCode" varchar,
                                 "ContactInfos-de-Language" varchar,
                                 "ContactInfos-de-Faxnumber" varchar,
                                 "ContactInfos-de-Givenname" varchar,
                                 "ContactInfos-de-NamePrefix" varchar,
                                 "ContactInfos-de-CompanyName" varchar,
                                 "ContactInfos-de-CountryCode" varchar,
                                 "ContactInfos-de-CountryName" varchar,
                                 "ContactInfos-de-Phonenumber" varchar,
                                 "ContactInfos-en-Url" varchar,
                                 "ContactInfos-en-City" varchar,
                                 "ContactInfos-en-Email" varchar,
                                 "ContactInfos-en-Address" varchar,
                                 "ContactInfos-en-Surname" varchar,
                                 "ContactInfos-en-ZipCode" varchar,
                                 "ContactInfos-en-Language" varchar,
                                 "ContactInfos-en-Faxnumber" varchar,
                                 "ContactInfos-en-Givenname" varchar,
                                 "ContactInfos-en-NamePrefix" varchar,
                                 "ContactInfos-en-CompanyName" varchar,
                                 "ContactInfos-en-CountryCode" varchar,
                                 "ContactInfos-en-CountryName" varchar,
                                 "ContactInfos-en-Phonenumber" varchar,
                                 "ContactInfos-it-Url" varchar,
                                 "ContactInfos-it-City" varchar,
                                 "ContactInfos-it-Email" varchar,
                                 "ContactInfos-it-Address" varchar,
                                 "ContactInfos-it-Surname" varchar,
                                 "ContactInfos-it-ZipCode" varchar,
                                 "ContactInfos-it-Language" varchar,
                                 "ContactInfos-it-Faxnumber" varchar,
                                 "ContactInfos-it-Givenname" varchar,
                                 "ContactInfos-it-NamePrefix" varchar,
                                 "ContactInfos-it-CompanyName" varchar,
                                 "ContactInfos-it-CountryCode" varchar,
                                 "ContactInfos-it-CountryName" varchar,
                                 "ContactInfos-it-Phonenumber" varchar,
                                 "LocationInfo-TvInfo-Id" varchar,
                                 "LocationInfo-TvInfo-Name-cs" varchar,
                                 "LocationInfo-TvInfo-Name-de" varchar,
                                 "LocationInfo-TvInfo-Name-en" varchar,
                                 "LocationInfo-TvInfo-Name-fr" varchar,
                                 "LocationInfo-TvInfo-Name-it" varchar,
                                 "LocationInfo-TvInfo-Name-nl" varchar,
                                 "LocationInfo-TvInfo-Name-pl" varchar,
                                 "LocationInfo-TvInfo-Name-ru" varchar,
                                 "LocationInfo-RegionInfo-Id" varchar,
                                 "LocationInfo-RegionInfo-Name-cs" varchar,
                                 "LocationInfo-RegionInfo-Name-de" varchar,
                                 "LocationInfo-RegionInfo-Name-en" varchar,
                                 "LocationInfo-RegionInfo-Name-fr" varchar,
                                 "LocationInfo-RegionInfo-Name-it" varchar,
                                 "LocationInfo-RegionInfo-Name-nl" varchar,
                                 "LocationInfo-RegionInfo-Name-pl" varchar,
                                 "LocationInfo-RegionInfo-Name-ru" varchar,
                                 "LocationInfo-DistrictInfo-Id" varchar,
                                 "LocationInfo-DistrictInfo-Name-cs" varchar,
                                 "LocationInfo-DistrictInfo-Name-de" varchar,
                                 "LocationInfo-DistrictInfo-Name-en" varchar,
                                 "LocationInfo-DistrictInfo-Name-fr" varchar,
                                 "LocationInfo-DistrictInfo-Name-it" varchar,
                                 "LocationInfo-DistrictInfo-Name-nl" varchar,
                                 "LocationInfo-DistrictInfo-Name-pl" varchar,
                                 "LocationInfo-DistrictInfo-Name-ru" varchar,
                                 "LocationInfo-MunicipalityInfo-Id" varchar,
                                 "LocationInfo-MunicipalityInfo-Name-cs" varchar,
                                 "LocationInfo-MunicipalityInfo-Name-de" varchar,
                                 "LocationInfo-MunicipalityInfo-Name-en" varchar,
                                 "LocationInfo-MunicipalityInfo-Name-fr" varchar,
                                 "LocationInfo-MunicipalityInfo-Name-it" varchar,
                                 "LocationInfo-MunicipalityInfo-Name-nl" varchar,
                                 "LocationInfo-MunicipalityInfo-Name-pl" varchar,
                                 "LocationInfo-MunicipalityInfo-Name-ru" varchar,
                                 "AdditionalPoiInfos-cs-Novelty" varchar,
                                 "AdditionalPoiInfos-cs-PoiType" varchar,
                                 "AdditionalPoiInfos-cs-SubType" varchar,
                                 "AdditionalPoiInfos-cs-Language" varchar,
                                 "AdditionalPoiInfos-cs-MainType" varchar,
                                 "AdditionalPoiInfos-de-PoiType" varchar,
                                 "AdditionalPoiInfos-de-SubType" varchar,
                                 "AdditionalPoiInfos-de-Language" varchar,
                                 "AdditionalPoiInfos-de-MainType" varchar,
                                 "AdditionalPoiInfos-en-PoiType" varchar,
                                 "AdditionalPoiInfos-en-SubType" varchar,
                                 "AdditionalPoiInfos-en-Language" varchar,
                                 "AdditionalPoiInfos-en-MainType" varchar,
                                 "AdditionalPoiInfos-fr-Novelty" varchar,
                                 "AdditionalPoiInfos-fr-PoiType" varchar,
                                 "AdditionalPoiInfos-fr-SubType" varchar,
                                 "AdditionalPoiInfos-fr-Language" varchar,
                                 "AdditionalPoiInfos-fr-MainType" varchar,
                                 "AdditionalPoiInfos-it-PoiType" varchar,
                                 "AdditionalPoiInfos-it-SubType" varchar,
                                 "AdditionalPoiInfos-it-Language" varchar,
                                 "AdditionalPoiInfos-it-MainType" varchar,
                                 "AdditionalPoiInfos-nl-Novelty" varchar,
                                 "AdditionalPoiInfos-nl-PoiType" varchar,
                                 "AdditionalPoiInfos-nl-SubType" varchar,
                                 "AdditionalPoiInfos-nl-Language" varchar,
                                 "AdditionalPoiInfos-nl-MainType" varchar,
                                 "AdditionalPoiInfos-pl-Novelty" varchar,
                                 "AdditionalPoiInfos-pl-PoiType" varchar,
                                 "AdditionalPoiInfos-pl-SubType" varchar,
                                 "AdditionalPoiInfos-pl-Language" varchar,
                                 "AdditionalPoiInfos-pl-MainType" varchar,
                                 "AdditionalPoiInfos-ru-Novelty" varchar,
                                 "AdditionalPoiInfos-ru-PoiType" varchar,
                                 "AdditionalPoiInfos-ru-SubType" varchar,
                                 "AdditionalPoiInfos-ru-Language" varchar,
                                 "AdditionalPoiInfos-ru-MainType" varchar
);

ALTER TABLE "v_smgpoisopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_smgpoisopen_fn CASCADE;

CREATE FUNCTION v_smgpoisopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_smgpoisopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Type' As varchar) AS "Type",
        CAST(NEW."data"->>'AgeTo' As integer) AS "AgeTo",
        CAST(NEW."data"->>'SmgId' As varchar) AS "SmgId",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'IsOpen' As bool) AS "IsOpen",
        CAST(NEW."data"->>'Source' As varchar) AS "Source",
        CAST(NEW."data"->>'AgeFrom' As integer) AS "AgeFrom",
        CAST(NEW."data"->>'PoiType' As varchar) AS "PoiType",
        CAST(NEW."data"->>'SubType' As varchar) AS "SubType",
        CAST(NEW."data"->>'CustomId' As varchar) AS "CustomId",
        CAST(NEW."data"->>'OwnerRid' As varchar) AS "OwnerRid",
        CAST(NEW."data"->>'FeetClimb' As bool) AS "FeetClimb",
        CAST(NEW."data"->>'Highlight' As bool) AS "Highlight",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'Difficulty' As varchar) AS "Difficulty",
        CAST(NEW."data"->>'HasRentals' As bool) AS "HasRentals",
        CAST(NEW."data"->>'IsPrepared' As bool) AS "IsPrepared",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'FirstImport' As varchar) AS "FirstImport",
        CAST(NEW."data"->>'IsWithLigth' As bool) AS "IsWithLigth",
        CAST(NEW."data"->>'RunToValley' As bool) AS "RunToValley",
        CAST(NEW."data"->>'AltitudeSumUp' As float) AS "AltitudeSumUp",
        CAST(NEW."data"->>'LiftAvailable' As bool) AS "LiftAvailable",
        CAST(NEW."data"->>'DistanceLength' As float) AS "DistanceLength",
        CAST(NEW."data"->>'SyncUpdateMode' As varchar) AS "SyncUpdateMode",
        CAST(NEW."data"->>'AltitudeSumDown' As float) AS "AltitudeSumDown",
        CAST(NEW."data"->>'HasFreeEntrance' As bool) AS "HasFreeEntrance",
        CAST(NEW."data"->>'OutdooractiveID' As varchar) AS "OutdooractiveID",
        CAST(NEW."data"->>'CopyrightChecked' As bool) AS "CopyrightChecked",
        CAST(NEW."data"->>'DistanceDuration' As float) AS "DistanceDuration",
        CAST(NEW."data"->>'AltitudeDifference' As float) AS "AltitudeDifference",
        CAST(NEW."data"->>'MaxSeatingCapacity' As integer) AS "MaxSeatingCapacity",
        CAST(NEW."data"->>'AltitudeLowestPoint' As float) AS "AltitudeLowestPoint",
        CAST(NEW."data"->>'SyncSourceInterface' As varchar) AS "SyncSourceInterface",
        CAST(NEW."data"->>'AltitudeHighestPoint' As float) AS "AltitudeHighestPoint",
        CAST(NEW."data"->>'TourismorganizationId' As varchar) AS "TourismorganizationId",
        CAST(NEW."data"->'Detail'->'cs'->>'Title' As varchar) AS "Detail-cs-Title",
        CAST(NEW."data"->'Detail'->'cs'->>'BaseText' As varchar) AS "Detail-cs-BaseText",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaDesc' As varchar) AS "Detail-cs-MetaDesc",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaTitle' As varchar) AS "Detail-cs-MetaTitle",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'de'->>'MetaDesc' As varchar) AS "Detail-de-MetaDesc",
        CAST(NEW."data"->'Detail'->'de'->>'IntroText' As varchar) AS "Detail-de-IntroText",
        CAST(NEW."data"->'Detail'->'de'->>'MetaTitle' As varchar) AS "Detail-de-MetaTitle",
        CAST(NEW."data"->'Detail'->'de'->>'GetThereText' As varchar) AS "Detail-de-GetThereText",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'en'->>'MetaDesc' As varchar) AS "Detail-en-MetaDesc",
        CAST(NEW."data"->'Detail'->'en'->>'MetaTitle' As varchar) AS "Detail-en-MetaTitle",
        CAST(NEW."data"->'Detail'->'en'->>'GetThereText' As varchar) AS "Detail-en-GetThereText",
        CAST(NEW."data"->'Detail'->'fr'->>'Title' As varchar) AS "Detail-fr-Title",
        CAST(NEW."data"->'Detail'->'fr'->>'BaseText' As varchar) AS "Detail-fr-BaseText",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaDesc' As varchar) AS "Detail-fr-MetaDesc",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaTitle' As varchar) AS "Detail-fr-MetaTitle",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Detail'->'it'->>'MetaDesc' As varchar) AS "Detail-it-MetaDesc",
        CAST(NEW."data"->'Detail'->'it'->>'IntroText' As varchar) AS "Detail-it-IntroText",
        CAST(NEW."data"->'Detail'->'it'->>'MetaTitle' As varchar) AS "Detail-it-MetaTitle",
        CAST(NEW."data"->'Detail'->'it'->>'GetThereText' As varchar) AS "Detail-it-GetThereText",
        CAST(NEW."data"->'Detail'->'nl'->>'Title' As varchar) AS "Detail-nl-Title",
        CAST(NEW."data"->'Detail'->'nl'->>'BaseText' As varchar) AS "Detail-nl-BaseText",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaDesc' As varchar) AS "Detail-nl-MetaDesc",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaTitle' As varchar) AS "Detail-nl-MetaTitle",
        CAST(NEW."data"->'Detail'->'pl'->>'Title' As varchar) AS "Detail-pl-Title",
        CAST(NEW."data"->'Detail'->'pl'->>'BaseText' As varchar) AS "Detail-pl-BaseText",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaDesc' As varchar) AS "Detail-pl-MetaDesc",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaTitle' As varchar) AS "Detail-pl-MetaTitle",
        CAST(NEW."data"->'Detail'->'ru'->>'Title' As varchar) AS "Detail-ru-Title",
        CAST(NEW."data"->'Detail'->'ru'->>'BaseText' As varchar) AS "Detail-ru-BaseText",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaDesc' As varchar) AS "Detail-ru-MetaDesc",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaTitle' As varchar) AS "Detail-ru-MetaTitle",
        CAST(NEW."data"->'Ratings'->>'Stamina' As varchar) AS "Ratings-Stamina",
        CAST(NEW."data"->'Ratings'->>'Landscape' As varchar) AS "Ratings-Landscape",
        CAST(NEW."data"->'Ratings'->>'Technique' As varchar) AS "Ratings-Technique",
        CAST(NEW."data"->'Ratings'->>'Difficulty' As varchar) AS "Ratings-Difficulty",
        CAST(NEW."data"->'Ratings'->>'Experience' As varchar) AS "Ratings-Experience",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Gpstype' As varchar) AS "GpsPoints-position-Gpstype",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Altitude' As float) AS "GpsPoints-position-Altitude",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Latitude' As float) AS "GpsPoints-position-Latitude",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Longitude' As float) AS "GpsPoints-position-Longitude",
        CAST(NEW."data"->'GpsPoints'->'position'->>'AltitudeUnitofMeasure' As varchar) AS "GpsPoints-position-AltitudeUnitofMeasure",
        CAST(NEW."data"->'GpsPoints'->'arrivalpoint'->>'Gpstype' As varchar) AS "GpsPoints-arrivalpoint-Gpstype",
        CAST(NEW."data"->'GpsPoints'->'arrivalpoint'->>'Altitude' As float) AS "GpsPoints-arrivalpoint-Altitude",
        CAST(NEW."data"->'GpsPoints'->'arrivalpoint'->>'Latitude' As float) AS "GpsPoints-arrivalpoint-Latitude",
        CAST(NEW."data"->'GpsPoints'->'arrivalpoint'->>'Longitude' As float) AS "GpsPoints-arrivalpoint-Longitude",
        CAST(NEW."data"->'GpsPoints'->'arrivalpoint'->>'AltitudeUnitofMeasure' As varchar) AS "GpsPoints-arrivalpoint-AltitudeUnitofMeasure",
        CAST(NEW."data"->'GpsPoints'->'startingpoint'->>'Gpstype' As varchar) AS "GpsPoints-startingpoint-Gpstype",
        CAST(NEW."data"->'GpsPoints'->'startingpoint'->>'Altitude' As float) AS "GpsPoints-startingpoint-Altitude",
        CAST(NEW."data"->'GpsPoints'->'startingpoint'->>'Latitude' As float) AS "GpsPoints-startingpoint-Latitude",
        CAST(NEW."data"->'GpsPoints'->'startingpoint'->>'Longitude' As float) AS "GpsPoints-startingpoint-Longitude",
        CAST(NEW."data"->'GpsPoints'->'startingpoint'->>'AltitudeUnitofMeasure' As varchar) AS "GpsPoints-startingpoint-AltitudeUnitofMeasure",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Url' As varchar) AS "ContactInfos-de-Url",
        CAST(NEW."data"->'ContactInfos'->'de'->>'City' As varchar) AS "ContactInfos-de-City",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Email' As varchar) AS "ContactInfos-de-Email",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Address' As varchar) AS "ContactInfos-de-Address",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Surname' As varchar) AS "ContactInfos-de-Surname",
        CAST(NEW."data"->'ContactInfos'->'de'->>'ZipCode' As varchar) AS "ContactInfos-de-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Language' As varchar) AS "ContactInfos-de-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Faxnumber' As varchar) AS "ContactInfos-de-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Givenname' As varchar) AS "ContactInfos-de-Givenname",
        CAST(NEW."data"->'ContactInfos'->'de'->>'NamePrefix' As varchar) AS "ContactInfos-de-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CompanyName' As varchar) AS "ContactInfos-de-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryCode' As varchar) AS "ContactInfos-de-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryName' As varchar) AS "ContactInfos-de-CountryName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Phonenumber' As varchar) AS "ContactInfos-de-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Url' As varchar) AS "ContactInfos-en-Url",
        CAST(NEW."data"->'ContactInfos'->'en'->>'City' As varchar) AS "ContactInfos-en-City",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Email' As varchar) AS "ContactInfos-en-Email",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Address' As varchar) AS "ContactInfos-en-Address",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Surname' As varchar) AS "ContactInfos-en-Surname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'ZipCode' As varchar) AS "ContactInfos-en-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Language' As varchar) AS "ContactInfos-en-Language",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Faxnumber' As varchar) AS "ContactInfos-en-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Givenname' As varchar) AS "ContactInfos-en-Givenname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'NamePrefix' As varchar) AS "ContactInfos-en-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CompanyName' As varchar) AS "ContactInfos-en-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryCode' As varchar) AS "ContactInfos-en-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryName' As varchar) AS "ContactInfos-en-CountryName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Phonenumber' As varchar) AS "ContactInfos-en-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Url' As varchar) AS "ContactInfos-it-Url",
        CAST(NEW."data"->'ContactInfos'->'it'->>'City' As varchar) AS "ContactInfos-it-City",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Email' As varchar) AS "ContactInfos-it-Email",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Address' As varchar) AS "ContactInfos-it-Address",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Surname' As varchar) AS "ContactInfos-it-Surname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'ZipCode' As varchar) AS "ContactInfos-it-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Language' As varchar) AS "ContactInfos-it-Language",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Faxnumber' As varchar) AS "ContactInfos-it-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Givenname' As varchar) AS "ContactInfos-it-Givenname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'NamePrefix' As varchar) AS "ContactInfos-it-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CompanyName' As varchar) AS "ContactInfos-it-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryCode' As varchar) AS "ContactInfos-it-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryName' As varchar) AS "ContactInfos-it-CountryName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Phonenumber' As varchar) AS "ContactInfos-it-Phonenumber",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->>'Id' As varchar) AS "LocationInfo-TvInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-TvInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'de' As varchar) AS "LocationInfo-TvInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'en' As varchar) AS "LocationInfo-TvInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-TvInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'it' As varchar) AS "LocationInfo-TvInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-TvInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-TvInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-TvInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->>'Id' As varchar) AS "LocationInfo-RegionInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-RegionInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'de' As varchar) AS "LocationInfo-RegionInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'en' As varchar) AS "LocationInfo-RegionInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-RegionInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'it' As varchar) AS "LocationInfo-RegionInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-RegionInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-RegionInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-RegionInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->>'Id' As varchar) AS "LocationInfo-DistrictInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-DistrictInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'de' As varchar) AS "LocationInfo-DistrictInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'en' As varchar) AS "LocationInfo-DistrictInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-DistrictInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'it' As varchar) AS "LocationInfo-DistrictInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-DistrictInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-DistrictInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'DistrictInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-DistrictInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->>'Id' As varchar) AS "LocationInfo-MunicipalityInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-MunicipalityInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'de' As varchar) AS "LocationInfo-MunicipalityInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'en' As varchar) AS "LocationInfo-MunicipalityInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-MunicipalityInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'it' As varchar) AS "LocationInfo-MunicipalityInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-MunicipalityInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-MunicipalityInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'MunicipalityInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-MunicipalityInfo-Name-ru",
        CAST(NEW."data"->'AdditionalPoiInfos'->'cs'->>'Novelty' As varchar) AS "AdditionalPoiInfos-cs-Novelty",
        CAST(NEW."data"->'AdditionalPoiInfos'->'cs'->>'PoiType' As varchar) AS "AdditionalPoiInfos-cs-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'cs'->>'SubType' As varchar) AS "AdditionalPoiInfos-cs-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'cs'->>'Language' As varchar) AS "AdditionalPoiInfos-cs-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'cs'->>'MainType' As varchar) AS "AdditionalPoiInfos-cs-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'PoiType' As varchar) AS "AdditionalPoiInfos-de-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'SubType' As varchar) AS "AdditionalPoiInfos-de-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'Language' As varchar) AS "AdditionalPoiInfos-de-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'MainType' As varchar) AS "AdditionalPoiInfos-de-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'PoiType' As varchar) AS "AdditionalPoiInfos-en-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'SubType' As varchar) AS "AdditionalPoiInfos-en-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'Language' As varchar) AS "AdditionalPoiInfos-en-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'MainType' As varchar) AS "AdditionalPoiInfos-en-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'fr'->>'Novelty' As varchar) AS "AdditionalPoiInfos-fr-Novelty",
        CAST(NEW."data"->'AdditionalPoiInfos'->'fr'->>'PoiType' As varchar) AS "AdditionalPoiInfos-fr-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'fr'->>'SubType' As varchar) AS "AdditionalPoiInfos-fr-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'fr'->>'Language' As varchar) AS "AdditionalPoiInfos-fr-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'fr'->>'MainType' As varchar) AS "AdditionalPoiInfos-fr-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'PoiType' As varchar) AS "AdditionalPoiInfos-it-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'SubType' As varchar) AS "AdditionalPoiInfos-it-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'Language' As varchar) AS "AdditionalPoiInfos-it-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'MainType' As varchar) AS "AdditionalPoiInfos-it-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'nl'->>'Novelty' As varchar) AS "AdditionalPoiInfos-nl-Novelty",
        CAST(NEW."data"->'AdditionalPoiInfos'->'nl'->>'PoiType' As varchar) AS "AdditionalPoiInfos-nl-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'nl'->>'SubType' As varchar) AS "AdditionalPoiInfos-nl-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'nl'->>'Language' As varchar) AS "AdditionalPoiInfos-nl-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'nl'->>'MainType' As varchar) AS "AdditionalPoiInfos-nl-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'pl'->>'Novelty' As varchar) AS "AdditionalPoiInfos-pl-Novelty",
        CAST(NEW."data"->'AdditionalPoiInfos'->'pl'->>'PoiType' As varchar) AS "AdditionalPoiInfos-pl-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'pl'->>'SubType' As varchar) AS "AdditionalPoiInfos-pl-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'pl'->>'Language' As varchar) AS "AdditionalPoiInfos-pl-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'pl'->>'MainType' As varchar) AS "AdditionalPoiInfos-pl-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'ru'->>'Novelty' As varchar) AS "AdditionalPoiInfos-ru-Novelty",
        CAST(NEW."data"->'AdditionalPoiInfos'->'ru'->>'PoiType' As varchar) AS "AdditionalPoiInfos-ru-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'ru'->>'SubType' As varchar) AS "AdditionalPoiInfos-ru-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'ru'->>'Language' As varchar) AS "AdditionalPoiInfos-ru-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'ru'->>'MainType' As varchar) AS "AdditionalPoiInfos-ru-MainType";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgpoisopen
    BEFORE INSERT
    ON smgpoisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_smgpoisopen_fn();

ALTER TABLE smgpoisopen
    ENABLE ALWAYS TRIGGER t_v_smgpoisopen;

DROP TABLE IF EXISTS "v_smgpoisopen_AreaId";

CREATE TABLE  "v_smgpoisopen_AreaId" (
                                         "Id" varchar,
                                         "data" varchar
);

DROP FUNCTION IF EXISTS v_smgpoisopen_AreaId_fn CASCADE;

CREATE FUNCTION v_smgpoisopen_AreaId_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_smgpoisopen_AreaId"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'AreaId') AS "data"
    WHERE NEW."data" -> 'AreaId' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgpoisopen_AreaId
    BEFORE INSERT
    ON smgpoisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_smgpoisopen_AreaId_fn();

ALTER TABLE smgpoisopen
    ENABLE ALWAYS TRIGGER t_v_smgpoisopen_AreaId;

DROP TABLE IF EXISTS "v_smgpoisopen_SmgTags";

CREATE TABLE  "v_smgpoisopen_SmgTags" (
                                          "Id" varchar,
                                          "data" varchar
);

DROP FUNCTION IF EXISTS v_smgpoisopen_SmgTags_fn CASCADE;

CREATE FUNCTION v_smgpoisopen_SmgTags_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_smgpoisopen_SmgTags"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'SmgTags') AS "data"
    WHERE NEW."data" -> 'SmgTags' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgpoisopen_SmgTags
    BEFORE INSERT
    ON smgpoisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_smgpoisopen_SmgTags_fn();

ALTER TABLE smgpoisopen
    ENABLE ALWAYS TRIGGER t_v_smgpoisopen_SmgTags;

DROP TABLE IF EXISTS "v_smgpoisopen_Exposition";

CREATE TABLE  "v_smgpoisopen_Exposition" (
                                             "Id" varchar,
                                             "data" varchar
);

DROP FUNCTION IF EXISTS v_smgpoisopen_Exposition_fn CASCADE;

CREATE FUNCTION v_smgpoisopen_Exposition_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_smgpoisopen_Exposition"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'Exposition') AS "data"
    WHERE NEW."data" -> 'Exposition' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgpoisopen_Exposition
    BEFORE INSERT
    ON smgpoisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_smgpoisopen_Exposition_fn();

ALTER TABLE smgpoisopen
    ENABLE ALWAYS TRIGGER t_v_smgpoisopen_Exposition;

DROP TABLE IF EXISTS "v_smgpoisopen_HasLanguage";

CREATE TABLE  "v_smgpoisopen_HasLanguage" (
                                              "Id" varchar,
                                              "data" varchar
);

DROP FUNCTION IF EXISTS v_smgpoisopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_smgpoisopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_smgpoisopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgpoisopen_HasLanguage
    BEFORE INSERT
    ON smgpoisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_smgpoisopen_HasLanguage_fn();

ALTER TABLE smgpoisopen
    ENABLE ALWAYS TRIGGER t_v_smgpoisopen_HasLanguage;

DROP TABLE IF EXISTS "v_smgpoisopen_GpsInfo";

CREATE TABLE "v_smgpoisopen_GpsInfo" (
                                         "smgpoisopen_Id" varchar,
                                         "Gpstype" varchar,
                                         "Altitude" float,
                                         "Latitude" float,
                                         "Longitude" float,
                                         "AltitudeUnitofMeasure" varchar
);

DROP FUNCTION IF EXISTS v_smgpoisopen_GpsInfo_fn CASCADE;

CREATE FUNCTION v_smgpoisopen_GpsInfo_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_smgpoisopen_GpsInfo"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'GpsInfo') AS "data"
        WHERE NEW."data" -> 'GpsInfo' != 'null')
    SELECT "Id" AS "smgpoisopen_Id", CAST("data"->>'Gpstype' As varchar) AS "Gpstype",
           CAST("data"->>'Altitude' As float) AS "Altitude",
           CAST("data"->>'Latitude' As float) AS "Latitude",
           CAST("data"->>'Longitude' As float) AS "Longitude",
           CAST("data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgpoisopen_GpsInfo
    BEFORE INSERT
    ON smgpoisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_smgpoisopen_GpsInfo_fn();

ALTER TABLE smgpoisopen
    ENABLE ALWAYS TRIGGER t_v_smgpoisopen_GpsInfo;


DROP TABLE IF EXISTS "v_smgpoisopen_GpsTrack";

CREATE TABLE "v_smgpoisopen_GpsTrack" (
                                          "smgpoisopen_Id" varchar,
                                          "Id" varchar,
                                          "Type" varchar,
                                          "GpxTrackUrl" varchar,
                                          "GpxTrackDesc-de" varchar,
                                          "GpxTrackDesc-en" varchar,
                                          "GpxTrackDesc-it" varchar
);

DROP FUNCTION IF EXISTS v_smgpoisopen_GpsTrack_fn CASCADE;

CREATE FUNCTION v_smgpoisopen_GpsTrack_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_smgpoisopen_GpsTrack"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'GpsTrack') AS "data"
        WHERE NEW."data" -> 'GpsTrack' != 'null')
    SELECT "Id" AS "smgpoisopen_Id", CAST("data"->>'Id' As varchar) AS "Id",
           CAST("data"->>'Type' As varchar) AS "Type",
           CAST("data"->>'GpxTrackUrl' As varchar) AS "GpxTrackUrl",
           CAST("data"->'GpxTrackDesc'->>'de' As varchar) AS "GpxTrackDesc-de",
           CAST("data"->'GpxTrackDesc'->>'en' As varchar) AS "GpxTrackDesc-en",
           CAST("data"->'GpxTrackDesc'->>'it' As varchar) AS "GpxTrackDesc-it"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgpoisopen_GpsTrack
    BEFORE INSERT
    ON smgpoisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_smgpoisopen_GpsTrack_fn();

ALTER TABLE smgpoisopen
    ENABLE ALWAYS TRIGGER t_v_smgpoisopen_GpsTrack;


DROP TABLE IF EXISTS "v_smgpoisopen_OperationSchedule";

CREATE TABLE "v_smgpoisopen_OperationSchedule" (
                                                   "smgpoisopen_Id" varchar,
                                                   "Stop" varchar,
                                                   "Type" varchar,
                                                   "Start" varchar,
                                                   "OperationscheduleName-de" varchar
);

DROP FUNCTION IF EXISTS v_smgpoisopen_OperationSchedule_fn CASCADE;

CREATE FUNCTION v_smgpoisopen_OperationSchedule_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_smgpoisopen_OperationSchedule"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'OperationSchedule') AS "data"
        WHERE NEW."data" -> 'OperationSchedule' != 'null')
    SELECT "Id" AS "smgpoisopen_Id", CAST("data"->>'Stop' As varchar) AS "Stop",
           CAST("data"->>'Type' As varchar) AS "Type",
           CAST("data"->>'Start' As varchar) AS "Start",
           CAST("data"->'OperationscheduleName'->>'de' As varchar) AS "OperationscheduleName-de"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgpoisopen_OperationSchedule
    BEFORE INSERT
    ON smgpoisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_smgpoisopen_OperationSchedule_fn();

ALTER TABLE smgpoisopen
    ENABLE ALWAYS TRIGGER t_v_smgpoisopen_OperationSchedule;


DROP TABLE IF EXISTS "v_poisopen";

CREATE TABLE "v_poisopen" (
                              "Id" varchar,
                              "Type" varchar,
                              "Active" bool,
                              "IsOpen" bool,
                              "PoiType" varchar,
                              "SubType" varchar,
                              "FeetClimb" bool,
                              "Highlight" bool,
                              "Shortname" varchar,
                              "SmgActive" bool,
                              "HasRentals" bool,
                              "IsPrepared" bool,
                              "LastChange" varchar,
                              "FirstImport" varchar,
                              "IsWithLigth" bool,
                              "RunToValley" bool,
                              "AltitudeSumUp" float,
                              "LiftAvailable" bool,
                              "DistanceLength" float,
                              "AltitudeSumDown" float,
                              "HasFreeEntrance" bool,
                              "DistanceDuration" float,
                              "AltitudeDifference" float,
                              "AltitudeLowestPoint" float,
                              "AltitudeHighestPoint" float,
                              "TourismorganizationId" varchar,
                              "Detail-de-Title" varchar,
                              "Detail-de-Header" varchar,
                              "Detail-de-BaseText" varchar,
                              "Detail-de-Language" varchar,
                              "Detail-de-IntroText" varchar,
                              "Detail-de-GetThereText" varchar,
                              "Detail-de-AdditionalText" varchar,
                              "Detail-en-Title" varchar,
                              "Detail-en-Header" varchar,
                              "Detail-en-BaseText" varchar,
                              "Detail-en-Language" varchar,
                              "Detail-en-IntroText" varchar,
                              "Detail-en-GetThereText" varchar,
                              "Detail-en-AdditionalText" varchar,
                              "Detail-it-Title" varchar,
                              "Detail-it-Header" varchar,
                              "Detail-it-BaseText" varchar,
                              "Detail-it-Language" varchar,
                              "Detail-it-IntroText" varchar,
                              "Detail-it-GetThereText" varchar,
                              "Detail-it-AdditionalText" varchar,
                              "GpsPoints-position-Gpstype" varchar,
                              "GpsPoints-position-Altitude" float,
                              "GpsPoints-position-Latitude" float,
                              "GpsPoints-position-Longitude" float,
                              "GpsPoints-position-AltitudeUnitofMeasure" varchar,
                              "ContactInfos-de-Url" varchar,
                              "ContactInfos-de-City" varchar,
                              "ContactInfos-de-Email" varchar,
                              "ContactInfos-de-Address" varchar,
                              "ContactInfos-de-Surname" varchar,
                              "ContactInfos-de-ZipCode" varchar,
                              "ContactInfos-de-Language" varchar,
                              "ContactInfos-de-Faxnumber" varchar,
                              "ContactInfos-de-Givenname" varchar,
                              "ContactInfos-de-NamePrefix" varchar,
                              "ContactInfos-de-CompanyName" varchar,
                              "ContactInfos-de-CountryCode" varchar,
                              "ContactInfos-de-CountryName" varchar,
                              "ContactInfos-de-Phonenumber" varchar,
                              "ContactInfos-en-Url" varchar,
                              "ContactInfos-en-City" varchar,
                              "ContactInfos-en-Email" varchar,
                              "ContactInfos-en-Address" varchar,
                              "ContactInfos-en-Surname" varchar,
                              "ContactInfos-en-ZipCode" varchar,
                              "ContactInfos-en-Language" varchar,
                              "ContactInfos-en-Faxnumber" varchar,
                              "ContactInfos-en-Givenname" varchar,
                              "ContactInfos-en-NamePrefix" varchar,
                              "ContactInfos-en-CompanyName" varchar,
                              "ContactInfos-en-CountryCode" varchar,
                              "ContactInfos-en-CountryName" varchar,
                              "ContactInfos-en-Phonenumber" varchar,
                              "ContactInfos-it-Url" varchar,
                              "ContactInfos-it-City" varchar,
                              "ContactInfos-it-Email" varchar,
                              "ContactInfos-it-Address" varchar,
                              "ContactInfos-it-Surname" varchar,
                              "ContactInfos-it-ZipCode" varchar,
                              "ContactInfos-it-Language" varchar,
                              "ContactInfos-it-Faxnumber" varchar,
                              "ContactInfos-it-Givenname" varchar,
                              "ContactInfos-it-NamePrefix" varchar,
                              "ContactInfos-it-CompanyName" varchar,
                              "ContactInfos-it-CountryCode" varchar,
                              "ContactInfos-it-CountryName" varchar,
                              "ContactInfos-it-Phonenumber" varchar,
                              "LocationInfo-TvInfo-Id" varchar,
                              "LocationInfo-TvInfo-Name-cs" varchar,
                              "LocationInfo-TvInfo-Name-de" varchar,
                              "LocationInfo-TvInfo-Name-en" varchar,
                              "LocationInfo-TvInfo-Name-fr" varchar,
                              "LocationInfo-TvInfo-Name-it" varchar,
                              "LocationInfo-TvInfo-Name-nl" varchar,
                              "LocationInfo-TvInfo-Name-pl" varchar,
                              "LocationInfo-TvInfo-Name-ru" varchar,
                              "LocationInfo-AreaInfo-Id" varchar,
                              "LocationInfo-AreaInfo-Name-cs" varchar,
                              "LocationInfo-AreaInfo-Name-de" varchar,
                              "LocationInfo-AreaInfo-Name-en" varchar,
                              "LocationInfo-AreaInfo-Name-fr" varchar,
                              "LocationInfo-AreaInfo-Name-it" varchar,
                              "LocationInfo-AreaInfo-Name-nl" varchar,
                              "LocationInfo-AreaInfo-Name-pl" varchar,
                              "LocationInfo-AreaInfo-Name-ru" varchar,
                              "LocationInfo-RegionInfo-Id" varchar,
                              "LocationInfo-RegionInfo-Name-cs" varchar,
                              "LocationInfo-RegionInfo-Name-de" varchar,
                              "LocationInfo-RegionInfo-Name-en" varchar,
                              "LocationInfo-RegionInfo-Name-fr" varchar,
                              "LocationInfo-RegionInfo-Name-it" varchar,
                              "LocationInfo-RegionInfo-Name-nl" varchar,
                              "LocationInfo-RegionInfo-Name-pl" varchar,
                              "LocationInfo-RegionInfo-Name-ru" varchar,
                              "AdditionalPoiInfos-de-PoiType" varchar,
                              "AdditionalPoiInfos-de-SubType" varchar,
                              "AdditionalPoiInfos-de-Language" varchar,
                              "AdditionalPoiInfos-de-MainType" varchar,
                              "AdditionalPoiInfos-en-PoiType" varchar,
                              "AdditionalPoiInfos-en-SubType" varchar,
                              "AdditionalPoiInfos-en-Language" varchar,
                              "AdditionalPoiInfos-en-MainType" varchar,
                              "AdditionalPoiInfos-it-PoiType" varchar,
                              "AdditionalPoiInfos-it-SubType" varchar,
                              "AdditionalPoiInfos-it-Language" varchar,
                              "AdditionalPoiInfos-it-MainType" varchar
);

ALTER TABLE "v_poisopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_poisopen_fn CASCADE;

CREATE FUNCTION v_poisopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_poisopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Type' As varchar) AS "Type",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'IsOpen' As bool) AS "IsOpen",
        CAST(NEW."data"->>'PoiType' As varchar) AS "PoiType",
        CAST(NEW."data"->>'SubType' As varchar) AS "SubType",
        CAST(NEW."data"->>'FeetClimb' As bool) AS "FeetClimb",
        CAST(NEW."data"->>'Highlight' As bool) AS "Highlight",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'HasRentals' As bool) AS "HasRentals",
        CAST(NEW."data"->>'IsPrepared' As bool) AS "IsPrepared",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'FirstImport' As varchar) AS "FirstImport",
        CAST(NEW."data"->>'IsWithLigth' As bool) AS "IsWithLigth",
        CAST(NEW."data"->>'RunToValley' As bool) AS "RunToValley",
        CAST(NEW."data"->>'AltitudeSumUp' As float) AS "AltitudeSumUp",
        CAST(NEW."data"->>'LiftAvailable' As bool) AS "LiftAvailable",
        CAST(NEW."data"->>'DistanceLength' As float) AS "DistanceLength",
        CAST(NEW."data"->>'AltitudeSumDown' As float) AS "AltitudeSumDown",
        CAST(NEW."data"->>'HasFreeEntrance' As bool) AS "HasFreeEntrance",
        CAST(NEW."data"->>'DistanceDuration' As float) AS "DistanceDuration",
        CAST(NEW."data"->>'AltitudeDifference' As float) AS "AltitudeDifference",
        CAST(NEW."data"->>'AltitudeLowestPoint' As float) AS "AltitudeLowestPoint",
        CAST(NEW."data"->>'AltitudeHighestPoint' As float) AS "AltitudeHighestPoint",
        CAST(NEW."data"->>'TourismorganizationId' As varchar) AS "TourismorganizationId",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Header' As varchar) AS "Detail-de-Header",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'de'->>'IntroText' As varchar) AS "Detail-de-IntroText",
        CAST(NEW."data"->'Detail'->'de'->>'GetThereText' As varchar) AS "Detail-de-GetThereText",
        CAST(NEW."data"->'Detail'->'de'->>'AdditionalText' As varchar) AS "Detail-de-AdditionalText",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'Header' As varchar) AS "Detail-en-Header",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'en'->>'IntroText' As varchar) AS "Detail-en-IntroText",
        CAST(NEW."data"->'Detail'->'en'->>'GetThereText' As varchar) AS "Detail-en-GetThereText",
        CAST(NEW."data"->'Detail'->'en'->>'AdditionalText' As varchar) AS "Detail-en-AdditionalText",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Header' As varchar) AS "Detail-it-Header",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Detail'->'it'->>'IntroText' As varchar) AS "Detail-it-IntroText",
        CAST(NEW."data"->'Detail'->'it'->>'GetThereText' As varchar) AS "Detail-it-GetThereText",
        CAST(NEW."data"->'Detail'->'it'->>'AdditionalText' As varchar) AS "Detail-it-AdditionalText",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Gpstype' As varchar) AS "GpsPoints-position-Gpstype",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Altitude' As float) AS "GpsPoints-position-Altitude",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Latitude' As float) AS "GpsPoints-position-Latitude",
        CAST(NEW."data"->'GpsPoints'->'position'->>'Longitude' As float) AS "GpsPoints-position-Longitude",
        CAST(NEW."data"->'GpsPoints'->'position'->>'AltitudeUnitofMeasure' As varchar) AS "GpsPoints-position-AltitudeUnitofMeasure",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Url' As varchar) AS "ContactInfos-de-Url",
        CAST(NEW."data"->'ContactInfos'->'de'->>'City' As varchar) AS "ContactInfos-de-City",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Email' As varchar) AS "ContactInfos-de-Email",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Address' As varchar) AS "ContactInfos-de-Address",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Surname' As varchar) AS "ContactInfos-de-Surname",
        CAST(NEW."data"->'ContactInfos'->'de'->>'ZipCode' As varchar) AS "ContactInfos-de-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Language' As varchar) AS "ContactInfos-de-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Faxnumber' As varchar) AS "ContactInfos-de-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Givenname' As varchar) AS "ContactInfos-de-Givenname",
        CAST(NEW."data"->'ContactInfos'->'de'->>'NamePrefix' As varchar) AS "ContactInfos-de-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CompanyName' As varchar) AS "ContactInfos-de-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryCode' As varchar) AS "ContactInfos-de-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryName' As varchar) AS "ContactInfos-de-CountryName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Phonenumber' As varchar) AS "ContactInfos-de-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Url' As varchar) AS "ContactInfos-en-Url",
        CAST(NEW."data"->'ContactInfos'->'en'->>'City' As varchar) AS "ContactInfos-en-City",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Email' As varchar) AS "ContactInfos-en-Email",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Address' As varchar) AS "ContactInfos-en-Address",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Surname' As varchar) AS "ContactInfos-en-Surname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'ZipCode' As varchar) AS "ContactInfos-en-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Language' As varchar) AS "ContactInfos-en-Language",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Faxnumber' As varchar) AS "ContactInfos-en-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Givenname' As varchar) AS "ContactInfos-en-Givenname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'NamePrefix' As varchar) AS "ContactInfos-en-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CompanyName' As varchar) AS "ContactInfos-en-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryCode' As varchar) AS "ContactInfos-en-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryName' As varchar) AS "ContactInfos-en-CountryName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Phonenumber' As varchar) AS "ContactInfos-en-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Url' As varchar) AS "ContactInfos-it-Url",
        CAST(NEW."data"->'ContactInfos'->'it'->>'City' As varchar) AS "ContactInfos-it-City",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Email' As varchar) AS "ContactInfos-it-Email",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Address' As varchar) AS "ContactInfos-it-Address",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Surname' As varchar) AS "ContactInfos-it-Surname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'ZipCode' As varchar) AS "ContactInfos-it-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Language' As varchar) AS "ContactInfos-it-Language",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Faxnumber' As varchar) AS "ContactInfos-it-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Givenname' As varchar) AS "ContactInfos-it-Givenname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'NamePrefix' As varchar) AS "ContactInfos-it-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CompanyName' As varchar) AS "ContactInfos-it-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryCode' As varchar) AS "ContactInfos-it-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryName' As varchar) AS "ContactInfos-it-CountryName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Phonenumber' As varchar) AS "ContactInfos-it-Phonenumber",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->>'Id' As varchar) AS "LocationInfo-TvInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-TvInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'de' As varchar) AS "LocationInfo-TvInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'en' As varchar) AS "LocationInfo-TvInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-TvInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'it' As varchar) AS "LocationInfo-TvInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-TvInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-TvInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'TvInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-TvInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->>'Id' As varchar) AS "LocationInfo-AreaInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-AreaInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'de' As varchar) AS "LocationInfo-AreaInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'en' As varchar) AS "LocationInfo-AreaInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-AreaInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'it' As varchar) AS "LocationInfo-AreaInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-AreaInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-AreaInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'AreaInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-AreaInfo-Name-ru",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->>'Id' As varchar) AS "LocationInfo-RegionInfo-Id",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'cs' As varchar) AS "LocationInfo-RegionInfo-Name-cs",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'de' As varchar) AS "LocationInfo-RegionInfo-Name-de",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'en' As varchar) AS "LocationInfo-RegionInfo-Name-en",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'fr' As varchar) AS "LocationInfo-RegionInfo-Name-fr",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'it' As varchar) AS "LocationInfo-RegionInfo-Name-it",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'nl' As varchar) AS "LocationInfo-RegionInfo-Name-nl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'pl' As varchar) AS "LocationInfo-RegionInfo-Name-pl",
        CAST(NEW."data"->'LocationInfo'->'RegionInfo'->'Name'->>'ru' As varchar) AS "LocationInfo-RegionInfo-Name-ru",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'PoiType' As varchar) AS "AdditionalPoiInfos-de-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'SubType' As varchar) AS "AdditionalPoiInfos-de-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'Language' As varchar) AS "AdditionalPoiInfos-de-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'de'->>'MainType' As varchar) AS "AdditionalPoiInfos-de-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'PoiType' As varchar) AS "AdditionalPoiInfos-en-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'SubType' As varchar) AS "AdditionalPoiInfos-en-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'Language' As varchar) AS "AdditionalPoiInfos-en-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'en'->>'MainType' As varchar) AS "AdditionalPoiInfos-en-MainType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'PoiType' As varchar) AS "AdditionalPoiInfos-it-PoiType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'SubType' As varchar) AS "AdditionalPoiInfos-it-SubType",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'Language' As varchar) AS "AdditionalPoiInfos-it-Language",
        CAST(NEW."data"->'AdditionalPoiInfos'->'it'->>'MainType' As varchar) AS "AdditionalPoiInfos-it-MainType";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_poisopen
    BEFORE INSERT
    ON poisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_poisopen_fn();

ALTER TABLE poisopen
    ENABLE ALWAYS TRIGGER t_v_poisopen;

DROP TABLE IF EXISTS "v_poisopen_AreaId";

CREATE TABLE  "v_poisopen_AreaId" (
                                      "Id" varchar,
                                      "data" varchar
);

DROP FUNCTION IF EXISTS v_poisopen_AreaId_fn CASCADE;

CREATE FUNCTION v_poisopen_AreaId_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_poisopen_AreaId"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'AreaId') AS "data"
    WHERE NEW."data" -> 'AreaId' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_poisopen_AreaId
    BEFORE INSERT
    ON poisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_poisopen_AreaId_fn();

ALTER TABLE poisopen
    ENABLE ALWAYS TRIGGER t_v_poisopen_AreaId;

DROP TABLE IF EXISTS "v_poisopen_SmgTags";

CREATE TABLE  "v_poisopen_SmgTags" (
                                       "Id" varchar,
                                       "data" varchar
);

DROP FUNCTION IF EXISTS v_poisopen_SmgTags_fn CASCADE;

CREATE FUNCTION v_poisopen_SmgTags_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_poisopen_SmgTags"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'SmgTags') AS "data"
    WHERE NEW."data" -> 'SmgTags' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_poisopen_SmgTags
    BEFORE INSERT
    ON poisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_poisopen_SmgTags_fn();

ALTER TABLE poisopen
    ENABLE ALWAYS TRIGGER t_v_poisopen_SmgTags;

DROP TABLE IF EXISTS "v_poisopen_HasLanguage";

CREATE TABLE  "v_poisopen_HasLanguage" (
                                           "Id" varchar,
                                           "data" varchar
);

DROP FUNCTION IF EXISTS v_poisopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_poisopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_poisopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_poisopen_HasLanguage
    BEFORE INSERT
    ON poisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_poisopen_HasLanguage_fn();

ALTER TABLE poisopen
    ENABLE ALWAYS TRIGGER t_v_poisopen_HasLanguage;

DROP TABLE IF EXISTS "v_poisopen_GpsInfo";

CREATE TABLE "v_poisopen_GpsInfo" (
                                      "poisopen_Id" varchar,
                                      "Gpstype" varchar,
                                      "Altitude" float,
                                      "Latitude" float,
                                      "Longitude" float,
                                      "AltitudeUnitofMeasure" varchar
);

DROP FUNCTION IF EXISTS v_poisopen_GpsInfo_fn CASCADE;

CREATE FUNCTION v_poisopen_GpsInfo_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_poisopen_GpsInfo"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'GpsInfo') AS "data"
        WHERE NEW."data" -> 'GpsInfo' != 'null')
    SELECT "Id" AS "poisopen_Id", CAST("data"->>'Gpstype' As varchar) AS "Gpstype",
           CAST("data"->>'Altitude' As float) AS "Altitude",
           CAST("data"->>'Latitude' As float) AS "Latitude",
           CAST("data"->>'Longitude' As float) AS "Longitude",
           CAST("data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_poisopen_GpsInfo
    BEFORE INSERT
    ON poisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_poisopen_GpsInfo_fn();

ALTER TABLE poisopen
    ENABLE ALWAYS TRIGGER t_v_poisopen_GpsInfo;


DROP TABLE IF EXISTS "v_poisopen_LTSTags";

CREATE TABLE "v_poisopen_LTSTags" (
                                      "poisopen_Id" varchar,
                                      "Id" varchar,
                                      "Level" integer,
                                      "TagName-de" varchar,
                                      "TagName-en" varchar,
                                      "TagName-it" varchar
);

DROP FUNCTION IF EXISTS v_poisopen_LTSTags_fn CASCADE;

CREATE FUNCTION v_poisopen_LTSTags_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_poisopen_LTSTags"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'LTSTags') AS "data"
        WHERE NEW."data" -> 'LTSTags' != 'null')
    SELECT "Id" AS "poisopen_Id", CAST("data"->>'Id' As varchar) AS "Id",
           CAST("data"->>'Level' As integer) AS "Level",
           CAST("data"->'TagName'->>'de' As varchar) AS "TagName-de",
           CAST("data"->'TagName'->>'en' As varchar) AS "TagName-en",
           CAST("data"->'TagName'->>'it' As varchar) AS "TagName-it"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_poisopen_LTSTags
    BEFORE INSERT
    ON poisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_poisopen_LTSTags_fn();

ALTER TABLE poisopen
    ENABLE ALWAYS TRIGGER t_v_poisopen_LTSTags;


DROP TABLE IF EXISTS "v_poisopen_OperationSchedule";

CREATE TABLE "v_poisopen_OperationSchedule" (
                                                "poisopen_Id" varchar,
                                                "Stop" varchar,
                                                "Type" varchar,
                                                "Start" varchar,
                                                "OperationscheduleName-de" varchar
);

DROP FUNCTION IF EXISTS v_poisopen_OperationSchedule_fn CASCADE;

CREATE FUNCTION v_poisopen_OperationSchedule_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_poisopen_OperationSchedule"
    WITH t ("Id", "data") AS (
        SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
               jsonb_array_elements(NEW."data" -> 'OperationSchedule') AS "data"
        WHERE NEW."data" -> 'OperationSchedule' != 'null')
    SELECT "Id" AS "poisopen_Id", CAST("data"->>'Stop' As varchar) AS "Stop",
           CAST("data"->>'Type' As varchar) AS "Type",
           CAST("data"->>'Start' As varchar) AS "Start",
           CAST("data"->'OperationscheduleName'->>'de' As varchar) AS "OperationscheduleName-de"
    FROM t;
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_poisopen_OperationSchedule
    BEFORE INSERT
    ON poisopen
    FOR EACH ROW
EXECUTE PROCEDURE v_poisopen_OperationSchedule_fn();

ALTER TABLE poisopen
    ENABLE ALWAYS TRIGGER t_v_poisopen_OperationSchedule;


DROP TABLE IF EXISTS "v_suedtiroltypes";

CREATE TABLE "v_suedtiroltypes" (
                                    "Id" varchar,
                                    "Key" varchar,
                                    "Level" integer,
                                    "Entity" varchar,
                                    "TypeNames-cs" varchar,
                                    "TypeNames-de" varchar,
                                    "TypeNames-en" varchar,
                                    "TypeNames-fr" varchar,
                                    "TypeNames-it" varchar,
                                    "TypeNames-nl" varchar,
                                    "TypeNames-pl" varchar,
                                    "TypeNames-ru" varchar
);

ALTER TABLE "v_suedtiroltypes" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_suedtiroltypes_fn CASCADE;

CREATE FUNCTION v_suedtiroltypes_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_suedtiroltypes
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Key' As varchar) AS "Key",
        CAST(NEW."data"->>'Level' As integer) AS "Level",
        CAST(NEW."data"->>'Entity' As varchar) AS "Entity",
        CAST(NEW."data"->'TypeNames'->>'cs' As varchar) AS "TypeNames-cs",
        CAST(NEW."data"->'TypeNames'->>'de' As varchar) AS "TypeNames-de",
        CAST(NEW."data"->'TypeNames'->>'en' As varchar) AS "TypeNames-en",
        CAST(NEW."data"->'TypeNames'->>'fr' As varchar) AS "TypeNames-fr",
        CAST(NEW."data"->'TypeNames'->>'it' As varchar) AS "TypeNames-it",
        CAST(NEW."data"->'TypeNames'->>'nl' As varchar) AS "TypeNames-nl",
        CAST(NEW."data"->'TypeNames'->>'pl' As varchar) AS "TypeNames-pl",
        CAST(NEW."data"->'TypeNames'->>'ru' As varchar) AS "TypeNames-ru";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_suedtiroltypes
    BEFORE INSERT
    ON suedtiroltypes
    FOR EACH ROW
EXECUTE PROCEDURE v_suedtiroltypes_fn();

ALTER TABLE suedtiroltypes
    ENABLE ALWAYS TRIGGER t_v_suedtiroltypes;

DROP TABLE IF EXISTS "v_tvsopen";

CREATE TABLE "v_tvsopen" (
                             "Id" varchar,
                             "Active" bool,
                             "Gpstype" varchar,
                             "Altitude" float,
                             "CustomId" varchar,
                             "Latitude" float,
                             "RegionId" varchar,
                             "Longitude" float,
                             "Shortname" varchar,
                             "SmgActive" bool,
                             "LastChange" varchar,
                             "VisibleInSearch" bool,
                             "AltitudeUnitofMeasure" varchar,
                             "Detail-cs-Title" varchar,
                             "Detail-cs-Header" varchar,
                             "Detail-cs-BaseText" varchar,
                             "Detail-cs-Language" varchar,
                             "Detail-cs-MetaDesc" varchar,
                             "Detail-cs-IntroText" varchar,
                             "Detail-cs-MetaTitle" varchar,
                             "Detail-cs-SubHeader" varchar,
                             "Detail-cs-GetThereText" varchar,
                             "Detail-cs-AdditionalText" varchar,
                             "Detail-de-Title" varchar,
                             "Detail-de-Header" varchar,
                             "Detail-de-BaseText" varchar,
                             "Detail-de-Language" varchar,
                             "Detail-de-MetaDesc" varchar,
                             "Detail-de-IntroText" varchar,
                             "Detail-de-MetaTitle" varchar,
                             "Detail-de-SubHeader" varchar,
                             "Detail-en-Title" varchar,
                             "Detail-en-Header" varchar,
                             "Detail-en-BaseText" varchar,
                             "Detail-en-Language" varchar,
                             "Detail-en-MetaDesc" varchar,
                             "Detail-en-IntroText" varchar,
                             "Detail-en-MetaTitle" varchar,
                             "Detail-en-SubHeader" varchar,
                             "Detail-en-GetThereText" varchar,
                             "Detail-en-AdditionalText" varchar,
                             "Detail-fr-Title" varchar,
                             "Detail-fr-Header" varchar,
                             "Detail-fr-BaseText" varchar,
                             "Detail-fr-Language" varchar,
                             "Detail-fr-MetaDesc" varchar,
                             "Detail-fr-IntroText" varchar,
                             "Detail-fr-MetaTitle" varchar,
                             "Detail-fr-SubHeader" varchar,
                             "Detail-fr-GetThereText" varchar,
                             "Detail-fr-AdditionalText" varchar,
                             "Detail-it-Title" varchar,
                             "Detail-it-Header" varchar,
                             "Detail-it-BaseText" varchar,
                             "Detail-it-Language" varchar,
                             "Detail-it-MetaDesc" varchar,
                             "Detail-it-IntroText" varchar,
                             "Detail-it-MetaTitle" varchar,
                             "Detail-it-SubHeader" varchar,
                             "Detail-it-GetThereText" varchar,
                             "Detail-it-AdditionalText" varchar,
                             "Detail-nl-Title" varchar,
                             "Detail-nl-Header" varchar,
                             "Detail-nl-BaseText" varchar,
                             "Detail-nl-Language" varchar,
                             "Detail-nl-MetaDesc" varchar,
                             "Detail-nl-IntroText" varchar,
                             "Detail-nl-MetaTitle" varchar,
                             "Detail-nl-SubHeader" varchar,
                             "Detail-nl-GetThereText" varchar,
                             "Detail-nl-AdditionalText" varchar,
                             "Detail-pl-Title" varchar,
                             "Detail-pl-Header" varchar,
                             "Detail-pl-BaseText" varchar,
                             "Detail-pl-Language" varchar,
                             "Detail-pl-MetaDesc" varchar,
                             "Detail-pl-IntroText" varchar,
                             "Detail-pl-MetaTitle" varchar,
                             "Detail-pl-SubHeader" varchar,
                             "Detail-pl-GetThereText" varchar,
                             "Detail-pl-AdditionalText" varchar,
                             "Detail-ru-Title" varchar,
                             "Detail-ru-Header" varchar,
                             "Detail-ru-BaseText" varchar,
                             "Detail-ru-Language" varchar,
                             "Detail-ru-MetaDesc" varchar,
                             "Detail-ru-IntroText" varchar,
                             "Detail-ru-MetaTitle" varchar,
                             "Detail-ru-SubHeader" varchar,
                             "Detail-ru-GetThereText" varchar,
                             "Detail-ru-AdditionalText" varchar,
                             "ContactInfos-cs-Url" varchar,
                             "ContactInfos-cs-Vat" varchar,
                             "ContactInfos-cs-City" varchar,
                             "ContactInfos-cs-Email" varchar,
                             "ContactInfos-cs-Address" varchar,
                             "ContactInfos-cs-LogoUrl" varchar,
                             "ContactInfos-cs-Surname" varchar,
                             "ContactInfos-cs-ZipCode" varchar,
                             "ContactInfos-cs-Language" varchar,
                             "ContactInfos-cs-Faxnumber" varchar,
                             "ContactInfos-cs-Givenname" varchar,
                             "ContactInfos-cs-NamePrefix" varchar,
                             "ContactInfos-cs-CompanyName" varchar,
                             "ContactInfos-cs-CountryCode" varchar,
                             "ContactInfos-cs-CountryName" varchar,
                             "ContactInfos-cs-Phonenumber" varchar,
                             "ContactInfos-de-Url" varchar,
                             "ContactInfos-de-City" varchar,
                             "ContactInfos-de-Email" varchar,
                             "ContactInfos-de-Address" varchar,
                             "ContactInfos-de-LogoUrl" varchar,
                             "ContactInfos-de-ZipCode" varchar,
                             "ContactInfos-de-Language" varchar,
                             "ContactInfos-de-CompanyName" varchar,
                             "ContactInfos-de-CountryCode" varchar,
                             "ContactInfos-de-CountryName" varchar,
                             "ContactInfos-de-Phonenumber" varchar,
                             "ContactInfos-en-Url" varchar,
                             "ContactInfos-en-Vat" varchar,
                             "ContactInfos-en-City" varchar,
                             "ContactInfos-en-Email" varchar,
                             "ContactInfos-en-Address" varchar,
                             "ContactInfos-en-LogoUrl" varchar,
                             "ContactInfos-en-Surname" varchar,
                             "ContactInfos-en-ZipCode" varchar,
                             "ContactInfos-en-Language" varchar,
                             "ContactInfos-en-Faxnumber" varchar,
                             "ContactInfos-en-Givenname" varchar,
                             "ContactInfos-en-NamePrefix" varchar,
                             "ContactInfos-en-CompanyName" varchar,
                             "ContactInfos-en-CountryCode" varchar,
                             "ContactInfos-en-CountryName" varchar,
                             "ContactInfos-en-Phonenumber" varchar,
                             "ContactInfos-fr-Url" varchar,
                             "ContactInfos-fr-Vat" varchar,
                             "ContactInfos-fr-City" varchar,
                             "ContactInfos-fr-Email" varchar,
                             "ContactInfos-fr-Address" varchar,
                             "ContactInfos-fr-LogoUrl" varchar,
                             "ContactInfos-fr-Surname" varchar,
                             "ContactInfos-fr-ZipCode" varchar,
                             "ContactInfos-fr-Language" varchar,
                             "ContactInfos-fr-Faxnumber" varchar,
                             "ContactInfos-fr-Givenname" varchar,
                             "ContactInfos-fr-NamePrefix" varchar,
                             "ContactInfos-fr-CompanyName" varchar,
                             "ContactInfos-fr-CountryCode" varchar,
                             "ContactInfos-fr-CountryName" varchar,
                             "ContactInfos-fr-Phonenumber" varchar,
                             "ContactInfos-it-Url" varchar,
                             "ContactInfos-it-Vat" varchar,
                             "ContactInfos-it-City" varchar,
                             "ContactInfos-it-Email" varchar,
                             "ContactInfos-it-Address" varchar,
                             "ContactInfos-it-LogoUrl" varchar,
                             "ContactInfos-it-Surname" varchar,
                             "ContactInfos-it-ZipCode" varchar,
                             "ContactInfos-it-Language" varchar,
                             "ContactInfos-it-Faxnumber" varchar,
                             "ContactInfos-it-Givenname" varchar,
                             "ContactInfos-it-NamePrefix" varchar,
                             "ContactInfos-it-CompanyName" varchar,
                             "ContactInfos-it-CountryCode" varchar,
                             "ContactInfos-it-CountryName" varchar,
                             "ContactInfos-it-Phonenumber" varchar,
                             "ContactInfos-nl-Url" varchar,
                             "ContactInfos-nl-Vat" varchar,
                             "ContactInfos-nl-City" varchar,
                             "ContactInfos-nl-Email" varchar,
                             "ContactInfos-nl-Address" varchar,
                             "ContactInfos-nl-LogoUrl" varchar,
                             "ContactInfos-nl-Surname" varchar,
                             "ContactInfos-nl-ZipCode" varchar,
                             "ContactInfos-nl-Language" varchar,
                             "ContactInfos-nl-Faxnumber" varchar,
                             "ContactInfos-nl-Givenname" varchar,
                             "ContactInfos-nl-NamePrefix" varchar,
                             "ContactInfos-nl-CompanyName" varchar,
                             "ContactInfos-nl-CountryCode" varchar,
                             "ContactInfos-nl-CountryName" varchar,
                             "ContactInfos-nl-Phonenumber" varchar,
                             "ContactInfos-pl-Url" varchar,
                             "ContactInfos-pl-Vat" varchar,
                             "ContactInfos-pl-City" varchar,
                             "ContactInfos-pl-Email" varchar,
                             "ContactInfos-pl-Address" varchar,
                             "ContactInfos-pl-LogoUrl" varchar,
                             "ContactInfos-pl-Surname" varchar,
                             "ContactInfos-pl-ZipCode" varchar,
                             "ContactInfos-pl-Language" varchar,
                             "ContactInfos-pl-Faxnumber" varchar,
                             "ContactInfos-pl-Givenname" varchar,
                             "ContactInfos-pl-NamePrefix" varchar,
                             "ContactInfos-pl-CompanyName" varchar,
                             "ContactInfos-pl-CountryCode" varchar,
                             "ContactInfos-pl-CountryName" varchar,
                             "ContactInfos-pl-Phonenumber" varchar,
                             "ContactInfos-ru-Url" varchar,
                             "ContactInfos-ru-Vat" varchar,
                             "ContactInfos-ru-City" varchar,
                             "ContactInfos-ru-Email" varchar,
                             "ContactInfos-ru-Address" varchar,
                             "ContactInfos-ru-LogoUrl" varchar,
                             "ContactInfos-ru-Surname" varchar,
                             "ContactInfos-ru-ZipCode" varchar,
                             "ContactInfos-ru-Language" varchar,
                             "ContactInfos-ru-Faxnumber" varchar,
                             "ContactInfos-ru-Givenname" varchar,
                             "ContactInfos-ru-NamePrefix" varchar,
                             "ContactInfos-ru-CompanyName" varchar,
                             "ContactInfos-ru-CountryCode" varchar,
                             "ContactInfos-ru-CountryName" varchar,
                             "ContactInfos-ru-Phonenumber" varchar
);

ALTER TABLE "v_tvsopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_tvsopen_fn CASCADE;

CREATE FUNCTION v_tvsopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_tvsopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Altitude' As float) AS "Altitude",
        CAST(NEW."data"->>'CustomId' As varchar) AS "CustomId",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'RegionId' As varchar) AS "RegionId",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'VisibleInSearch' As bool) AS "VisibleInSearch",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->'Detail'->'cs'->>'Title' As varchar) AS "Detail-cs-Title",
        CAST(NEW."data"->'Detail'->'cs'->>'Header' As varchar) AS "Detail-cs-Header",
        CAST(NEW."data"->'Detail'->'cs'->>'BaseText' As varchar) AS "Detail-cs-BaseText",
        CAST(NEW."data"->'Detail'->'cs'->>'Language' As varchar) AS "Detail-cs-Language",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaDesc' As varchar) AS "Detail-cs-MetaDesc",
        CAST(NEW."data"->'Detail'->'cs'->>'IntroText' As varchar) AS "Detail-cs-IntroText",
        CAST(NEW."data"->'Detail'->'cs'->>'MetaTitle' As varchar) AS "Detail-cs-MetaTitle",
        CAST(NEW."data"->'Detail'->'cs'->>'SubHeader' As varchar) AS "Detail-cs-SubHeader",
        CAST(NEW."data"->'Detail'->'cs'->>'GetThereText' As varchar) AS "Detail-cs-GetThereText",
        CAST(NEW."data"->'Detail'->'cs'->>'AdditionalText' As varchar) AS "Detail-cs-AdditionalText",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Header' As varchar) AS "Detail-de-Header",
        CAST(NEW."data"->'Detail'->'de'->>'BaseText' As varchar) AS "Detail-de-BaseText",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'de'->>'MetaDesc' As varchar) AS "Detail-de-MetaDesc",
        CAST(NEW."data"->'Detail'->'de'->>'IntroText' As varchar) AS "Detail-de-IntroText",
        CAST(NEW."data"->'Detail'->'de'->>'MetaTitle' As varchar) AS "Detail-de-MetaTitle",
        CAST(NEW."data"->'Detail'->'de'->>'SubHeader' As varchar) AS "Detail-de-SubHeader",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'Header' As varchar) AS "Detail-en-Header",
        CAST(NEW."data"->'Detail'->'en'->>'BaseText' As varchar) AS "Detail-en-BaseText",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'en'->>'MetaDesc' As varchar) AS "Detail-en-MetaDesc",
        CAST(NEW."data"->'Detail'->'en'->>'IntroText' As varchar) AS "Detail-en-IntroText",
        CAST(NEW."data"->'Detail'->'en'->>'MetaTitle' As varchar) AS "Detail-en-MetaTitle",
        CAST(NEW."data"->'Detail'->'en'->>'SubHeader' As varchar) AS "Detail-en-SubHeader",
        CAST(NEW."data"->'Detail'->'en'->>'GetThereText' As varchar) AS "Detail-en-GetThereText",
        CAST(NEW."data"->'Detail'->'en'->>'AdditionalText' As varchar) AS "Detail-en-AdditionalText",
        CAST(NEW."data"->'Detail'->'fr'->>'Title' As varchar) AS "Detail-fr-Title",
        CAST(NEW."data"->'Detail'->'fr'->>'Header' As varchar) AS "Detail-fr-Header",
        CAST(NEW."data"->'Detail'->'fr'->>'BaseText' As varchar) AS "Detail-fr-BaseText",
        CAST(NEW."data"->'Detail'->'fr'->>'Language' As varchar) AS "Detail-fr-Language",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaDesc' As varchar) AS "Detail-fr-MetaDesc",
        CAST(NEW."data"->'Detail'->'fr'->>'IntroText' As varchar) AS "Detail-fr-IntroText",
        CAST(NEW."data"->'Detail'->'fr'->>'MetaTitle' As varchar) AS "Detail-fr-MetaTitle",
        CAST(NEW."data"->'Detail'->'fr'->>'SubHeader' As varchar) AS "Detail-fr-SubHeader",
        CAST(NEW."data"->'Detail'->'fr'->>'GetThereText' As varchar) AS "Detail-fr-GetThereText",
        CAST(NEW."data"->'Detail'->'fr'->>'AdditionalText' As varchar) AS "Detail-fr-AdditionalText",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Header' As varchar) AS "Detail-it-Header",
        CAST(NEW."data"->'Detail'->'it'->>'BaseText' As varchar) AS "Detail-it-BaseText",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Detail'->'it'->>'MetaDesc' As varchar) AS "Detail-it-MetaDesc",
        CAST(NEW."data"->'Detail'->'it'->>'IntroText' As varchar) AS "Detail-it-IntroText",
        CAST(NEW."data"->'Detail'->'it'->>'MetaTitle' As varchar) AS "Detail-it-MetaTitle",
        CAST(NEW."data"->'Detail'->'it'->>'SubHeader' As varchar) AS "Detail-it-SubHeader",
        CAST(NEW."data"->'Detail'->'it'->>'GetThereText' As varchar) AS "Detail-it-GetThereText",
        CAST(NEW."data"->'Detail'->'it'->>'AdditionalText' As varchar) AS "Detail-it-AdditionalText",
        CAST(NEW."data"->'Detail'->'nl'->>'Title' As varchar) AS "Detail-nl-Title",
        CAST(NEW."data"->'Detail'->'nl'->>'Header' As varchar) AS "Detail-nl-Header",
        CAST(NEW."data"->'Detail'->'nl'->>'BaseText' As varchar) AS "Detail-nl-BaseText",
        CAST(NEW."data"->'Detail'->'nl'->>'Language' As varchar) AS "Detail-nl-Language",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaDesc' As varchar) AS "Detail-nl-MetaDesc",
        CAST(NEW."data"->'Detail'->'nl'->>'IntroText' As varchar) AS "Detail-nl-IntroText",
        CAST(NEW."data"->'Detail'->'nl'->>'MetaTitle' As varchar) AS "Detail-nl-MetaTitle",
        CAST(NEW."data"->'Detail'->'nl'->>'SubHeader' As varchar) AS "Detail-nl-SubHeader",
        CAST(NEW."data"->'Detail'->'nl'->>'GetThereText' As varchar) AS "Detail-nl-GetThereText",
        CAST(NEW."data"->'Detail'->'nl'->>'AdditionalText' As varchar) AS "Detail-nl-AdditionalText",
        CAST(NEW."data"->'Detail'->'pl'->>'Title' As varchar) AS "Detail-pl-Title",
        CAST(NEW."data"->'Detail'->'pl'->>'Header' As varchar) AS "Detail-pl-Header",
        CAST(NEW."data"->'Detail'->'pl'->>'BaseText' As varchar) AS "Detail-pl-BaseText",
        CAST(NEW."data"->'Detail'->'pl'->>'Language' As varchar) AS "Detail-pl-Language",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaDesc' As varchar) AS "Detail-pl-MetaDesc",
        CAST(NEW."data"->'Detail'->'pl'->>'IntroText' As varchar) AS "Detail-pl-IntroText",
        CAST(NEW."data"->'Detail'->'pl'->>'MetaTitle' As varchar) AS "Detail-pl-MetaTitle",
        CAST(NEW."data"->'Detail'->'pl'->>'SubHeader' As varchar) AS "Detail-pl-SubHeader",
        CAST(NEW."data"->'Detail'->'pl'->>'GetThereText' As varchar) AS "Detail-pl-GetThereText",
        CAST(NEW."data"->'Detail'->'pl'->>'AdditionalText' As varchar) AS "Detail-pl-AdditionalText",
        CAST(NEW."data"->'Detail'->'ru'->>'Title' As varchar) AS "Detail-ru-Title",
        CAST(NEW."data"->'Detail'->'ru'->>'Header' As varchar) AS "Detail-ru-Header",
        CAST(NEW."data"->'Detail'->'ru'->>'BaseText' As varchar) AS "Detail-ru-BaseText",
        CAST(NEW."data"->'Detail'->'ru'->>'Language' As varchar) AS "Detail-ru-Language",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaDesc' As varchar) AS "Detail-ru-MetaDesc",
        CAST(NEW."data"->'Detail'->'ru'->>'IntroText' As varchar) AS "Detail-ru-IntroText",
        CAST(NEW."data"->'Detail'->'ru'->>'MetaTitle' As varchar) AS "Detail-ru-MetaTitle",
        CAST(NEW."data"->'Detail'->'ru'->>'SubHeader' As varchar) AS "Detail-ru-SubHeader",
        CAST(NEW."data"->'Detail'->'ru'->>'GetThereText' As varchar) AS "Detail-ru-GetThereText",
        CAST(NEW."data"->'Detail'->'ru'->>'AdditionalText' As varchar) AS "Detail-ru-AdditionalText",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Url' As varchar) AS "ContactInfos-cs-Url",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Vat' As varchar) AS "ContactInfos-cs-Vat",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'City' As varchar) AS "ContactInfos-cs-City",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Email' As varchar) AS "ContactInfos-cs-Email",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Address' As varchar) AS "ContactInfos-cs-Address",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'LogoUrl' As varchar) AS "ContactInfos-cs-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Surname' As varchar) AS "ContactInfos-cs-Surname",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'ZipCode' As varchar) AS "ContactInfos-cs-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Language' As varchar) AS "ContactInfos-cs-Language",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Faxnumber' As varchar) AS "ContactInfos-cs-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Givenname' As varchar) AS "ContactInfos-cs-Givenname",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'NamePrefix' As varchar) AS "ContactInfos-cs-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CompanyName' As varchar) AS "ContactInfos-cs-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CountryCode' As varchar) AS "ContactInfos-cs-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'CountryName' As varchar) AS "ContactInfos-cs-CountryName",
        CAST(NEW."data"->'ContactInfos'->'cs'->>'Phonenumber' As varchar) AS "ContactInfos-cs-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Url' As varchar) AS "ContactInfos-de-Url",
        CAST(NEW."data"->'ContactInfos'->'de'->>'City' As varchar) AS "ContactInfos-de-City",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Email' As varchar) AS "ContactInfos-de-Email",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Address' As varchar) AS "ContactInfos-de-Address",
        CAST(NEW."data"->'ContactInfos'->'de'->>'LogoUrl' As varchar) AS "ContactInfos-de-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'de'->>'ZipCode' As varchar) AS "ContactInfos-de-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Language' As varchar) AS "ContactInfos-de-Language",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CompanyName' As varchar) AS "ContactInfos-de-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryCode' As varchar) AS "ContactInfos-de-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'de'->>'CountryName' As varchar) AS "ContactInfos-de-CountryName",
        CAST(NEW."data"->'ContactInfos'->'de'->>'Phonenumber' As varchar) AS "ContactInfos-de-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Url' As varchar) AS "ContactInfos-en-Url",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Vat' As varchar) AS "ContactInfos-en-Vat",
        CAST(NEW."data"->'ContactInfos'->'en'->>'City' As varchar) AS "ContactInfos-en-City",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Email' As varchar) AS "ContactInfos-en-Email",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Address' As varchar) AS "ContactInfos-en-Address",
        CAST(NEW."data"->'ContactInfos'->'en'->>'LogoUrl' As varchar) AS "ContactInfos-en-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Surname' As varchar) AS "ContactInfos-en-Surname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'ZipCode' As varchar) AS "ContactInfos-en-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Language' As varchar) AS "ContactInfos-en-Language",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Faxnumber' As varchar) AS "ContactInfos-en-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Givenname' As varchar) AS "ContactInfos-en-Givenname",
        CAST(NEW."data"->'ContactInfos'->'en'->>'NamePrefix' As varchar) AS "ContactInfos-en-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CompanyName' As varchar) AS "ContactInfos-en-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryCode' As varchar) AS "ContactInfos-en-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'en'->>'CountryName' As varchar) AS "ContactInfos-en-CountryName",
        CAST(NEW."data"->'ContactInfos'->'en'->>'Phonenumber' As varchar) AS "ContactInfos-en-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Url' As varchar) AS "ContactInfos-fr-Url",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Vat' As varchar) AS "ContactInfos-fr-Vat",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'City' As varchar) AS "ContactInfos-fr-City",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Email' As varchar) AS "ContactInfos-fr-Email",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Address' As varchar) AS "ContactInfos-fr-Address",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'LogoUrl' As varchar) AS "ContactInfos-fr-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Surname' As varchar) AS "ContactInfos-fr-Surname",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'ZipCode' As varchar) AS "ContactInfos-fr-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Language' As varchar) AS "ContactInfos-fr-Language",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Faxnumber' As varchar) AS "ContactInfos-fr-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Givenname' As varchar) AS "ContactInfos-fr-Givenname",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'NamePrefix' As varchar) AS "ContactInfos-fr-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CompanyName' As varchar) AS "ContactInfos-fr-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CountryCode' As varchar) AS "ContactInfos-fr-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'CountryName' As varchar) AS "ContactInfos-fr-CountryName",
        CAST(NEW."data"->'ContactInfos'->'fr'->>'Phonenumber' As varchar) AS "ContactInfos-fr-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Url' As varchar) AS "ContactInfos-it-Url",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Vat' As varchar) AS "ContactInfos-it-Vat",
        CAST(NEW."data"->'ContactInfos'->'it'->>'City' As varchar) AS "ContactInfos-it-City",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Email' As varchar) AS "ContactInfos-it-Email",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Address' As varchar) AS "ContactInfos-it-Address",
        CAST(NEW."data"->'ContactInfos'->'it'->>'LogoUrl' As varchar) AS "ContactInfos-it-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Surname' As varchar) AS "ContactInfos-it-Surname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'ZipCode' As varchar) AS "ContactInfos-it-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Language' As varchar) AS "ContactInfos-it-Language",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Faxnumber' As varchar) AS "ContactInfos-it-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Givenname' As varchar) AS "ContactInfos-it-Givenname",
        CAST(NEW."data"->'ContactInfos'->'it'->>'NamePrefix' As varchar) AS "ContactInfos-it-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CompanyName' As varchar) AS "ContactInfos-it-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryCode' As varchar) AS "ContactInfos-it-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'it'->>'CountryName' As varchar) AS "ContactInfos-it-CountryName",
        CAST(NEW."data"->'ContactInfos'->'it'->>'Phonenumber' As varchar) AS "ContactInfos-it-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Url' As varchar) AS "ContactInfos-nl-Url",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Vat' As varchar) AS "ContactInfos-nl-Vat",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'City' As varchar) AS "ContactInfos-nl-City",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Email' As varchar) AS "ContactInfos-nl-Email",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Address' As varchar) AS "ContactInfos-nl-Address",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'LogoUrl' As varchar) AS "ContactInfos-nl-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Surname' As varchar) AS "ContactInfos-nl-Surname",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'ZipCode' As varchar) AS "ContactInfos-nl-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Language' As varchar) AS "ContactInfos-nl-Language",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Faxnumber' As varchar) AS "ContactInfos-nl-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Givenname' As varchar) AS "ContactInfos-nl-Givenname",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'NamePrefix' As varchar) AS "ContactInfos-nl-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CompanyName' As varchar) AS "ContactInfos-nl-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CountryCode' As varchar) AS "ContactInfos-nl-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'CountryName' As varchar) AS "ContactInfos-nl-CountryName",
        CAST(NEW."data"->'ContactInfos'->'nl'->>'Phonenumber' As varchar) AS "ContactInfos-nl-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Url' As varchar) AS "ContactInfos-pl-Url",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Vat' As varchar) AS "ContactInfos-pl-Vat",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'City' As varchar) AS "ContactInfos-pl-City",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Email' As varchar) AS "ContactInfos-pl-Email",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Address' As varchar) AS "ContactInfos-pl-Address",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'LogoUrl' As varchar) AS "ContactInfos-pl-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Surname' As varchar) AS "ContactInfos-pl-Surname",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'ZipCode' As varchar) AS "ContactInfos-pl-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Language' As varchar) AS "ContactInfos-pl-Language",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Faxnumber' As varchar) AS "ContactInfos-pl-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Givenname' As varchar) AS "ContactInfos-pl-Givenname",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'NamePrefix' As varchar) AS "ContactInfos-pl-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CompanyName' As varchar) AS "ContactInfos-pl-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CountryCode' As varchar) AS "ContactInfos-pl-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'CountryName' As varchar) AS "ContactInfos-pl-CountryName",
        CAST(NEW."data"->'ContactInfos'->'pl'->>'Phonenumber' As varchar) AS "ContactInfos-pl-Phonenumber",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Url' As varchar) AS "ContactInfos-ru-Url",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Vat' As varchar) AS "ContactInfos-ru-Vat",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'City' As varchar) AS "ContactInfos-ru-City",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Email' As varchar) AS "ContactInfos-ru-Email",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Address' As varchar) AS "ContactInfos-ru-Address",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'LogoUrl' As varchar) AS "ContactInfos-ru-LogoUrl",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Surname' As varchar) AS "ContactInfos-ru-Surname",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'ZipCode' As varchar) AS "ContactInfos-ru-ZipCode",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Language' As varchar) AS "ContactInfos-ru-Language",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Faxnumber' As varchar) AS "ContactInfos-ru-Faxnumber",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Givenname' As varchar) AS "ContactInfos-ru-Givenname",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'NamePrefix' As varchar) AS "ContactInfos-ru-NamePrefix",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CompanyName' As varchar) AS "ContactInfos-ru-CompanyName",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CountryCode' As varchar) AS "ContactInfos-ru-CountryCode",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'CountryName' As varchar) AS "ContactInfos-ru-CountryName",
        CAST(NEW."data"->'ContactInfos'->'ru'->>'Phonenumber' As varchar) AS "ContactInfos-ru-Phonenumber";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_tvsopen
    BEFORE INSERT
    ON tvsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_tvsopen_fn();

ALTER TABLE tvsopen
    ENABLE ALWAYS TRIGGER t_v_tvsopen;

DROP TABLE IF EXISTS "v_tvsopen_SkiareaIds";

CREATE TABLE  "v_tvsopen_SkiareaIds" (
                                         "Id" varchar,
                                         "data" varchar
);

DROP FUNCTION IF EXISTS v_tvsopen_SkiareaIds_fn CASCADE;

CREATE FUNCTION v_tvsopen_SkiareaIds_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_tvsopen_SkiareaIds"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'SkiareaIds') AS "data"
    WHERE NEW."data" -> 'SkiareaIds' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_tvsopen_SkiareaIds
    BEFORE INSERT
    ON tvsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_tvsopen_SkiareaIds_fn();

ALTER TABLE tvsopen
    ENABLE ALWAYS TRIGGER t_v_tvsopen_SkiareaIds;

DROP TABLE IF EXISTS "v_tvsopen_HasLanguage";

CREATE TABLE  "v_tvsopen_HasLanguage" (
                                          "Id" varchar,
                                          "data" varchar
);

DROP FUNCTION IF EXISTS v_tvsopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_tvsopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_tvsopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_tvsopen_HasLanguage
    BEFORE INSERT
    ON tvsopen
    FOR EACH ROW
EXECUTE PROCEDURE v_tvsopen_HasLanguage_fn();

ALTER TABLE tvsopen
    ENABLE ALWAYS TRIGGER t_v_tvsopen_HasLanguage;

DROP TABLE IF EXISTS "v_wines";

CREATE TABLE "v_wines" (
                           "Id" varchar,
                           "Active" bool,
                           "Vintage" integer,
                           "CustomId" varchar,
                           "Awardyear" integer,
                           "CompanyId" varchar,
                           "Shortname" varchar,
                           "SmgActive" bool,
                           "LastChange" varchar,
                           "FirstImport" varchar,
                           "Detail-de-Title" varchar,
                           "Detail-de-Header" varchar,
                           "Detail-de-Language" varchar,
                           "Detail-en-Title" varchar,
                           "Detail-en-Header" varchar,
                           "Detail-en-Language" varchar,
                           "Detail-it-Title" varchar,
                           "Detail-it-Header" varchar,
                           "Detail-it-Language" varchar
);

ALTER TABLE "v_wines" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_wines_fn CASCADE;

CREATE FUNCTION v_wines_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_wines
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'Vintage' As integer) AS "Vintage",
        CAST(NEW."data"->>'CustomId' As varchar) AS "CustomId",
        CAST(NEW."data"->>'Awardyear' As integer) AS "Awardyear",
        CAST(NEW."data"->>'CompanyId' As varchar) AS "CompanyId",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'FirstImport' As varchar) AS "FirstImport",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Header' As varchar) AS "Detail-de-Header",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'Header' As varchar) AS "Detail-en-Header",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Header' As varchar) AS "Detail-it-Header",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_wines
    BEFORE INSERT
    ON wines
    FOR EACH ROW
EXECUTE PROCEDURE v_wines_fn();

ALTER TABLE wines
    ENABLE ALWAYS TRIGGER t_v_wines;

DROP TABLE IF EXISTS "v_wines_Awards";

CREATE TABLE  "v_wines_Awards" (
                                   "Id" varchar,
                                   "data" varchar
);

DROP FUNCTION IF EXISTS v_wines_Awards_fn CASCADE;

CREATE FUNCTION v_wines_Awards_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_wines_Awards"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'Awards') AS "data"
    WHERE NEW."data" -> 'Awards' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_wines_Awards
    BEFORE INSERT
    ON wines
    FOR EACH ROW
EXECUTE PROCEDURE v_wines_Awards_fn();

ALTER TABLE wines
    ENABLE ALWAYS TRIGGER t_v_wines_Awards;

DROP TABLE IF EXISTS "v_municipalitiesopen";

CREATE TABLE "v_municipalitiesopen" (
                                        "Id" varchar,
                                        "Plz" varchar,
                                        "Active" bool,
                                        "SiagId" varchar,
                                        "Gpstype" varchar,
                                        "Altitude" float,
                                        "CustomId" varchar,
                                        "Latitude" float,
                                        "RegionId" varchar,
                                        "Longitude" float,
                                        "Shortname" varchar,
                                        "SmgActive" bool,
                                        "LastChange" varchar,
                                        "Inhabitants" integer,
                                        "IstatNumber" varchar,
                                        "TourismvereinId" varchar,
                                        "VisibleInSearch" bool,
                                        "AltitudeUnitofMeasure" varchar,
                                        "Detail-cs-Title" varchar,
                                        "Detail-cs-Language" varchar,
                                        "Detail-de-Title" varchar,
                                        "Detail-de-Language" varchar,
                                        "Detail-en-Title" varchar,
                                        "Detail-en-Language" varchar,
                                        "Detail-fr-Title" varchar,
                                        "Detail-fr-Language" varchar,
                                        "Detail-it-Title" varchar,
                                        "Detail-it-Language" varchar,
                                        "Detail-nl-Title" varchar,
                                        "Detail-nl-Language" varchar,
                                        "Detail-pl-Title" varchar,
                                        "Detail-pl-Language" varchar,
                                        "Detail-ru-Title" varchar,
                                        "Detail-ru-Language" varchar
);

ALTER TABLE "v_municipalitiesopen" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_municipalitiesopen_fn CASCADE;

CREATE FUNCTION v_municipalitiesopen_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_municipalitiesopen
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Plz' As varchar) AS "Plz",
        CAST(NEW."data"->>'Active' As bool) AS "Active",
        CAST(NEW."data"->>'SiagId' As varchar) AS "SiagId",
        CAST(NEW."data"->>'Gpstype' As varchar) AS "Gpstype",
        CAST(NEW."data"->>'Altitude' As float) AS "Altitude",
        CAST(NEW."data"->>'CustomId' As varchar) AS "CustomId",
        CAST(NEW."data"->>'Latitude' As float) AS "Latitude",
        CAST(NEW."data"->>'RegionId' As varchar) AS "RegionId",
        CAST(NEW."data"->>'Longitude' As float) AS "Longitude",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'SmgActive' As bool) AS "SmgActive",
        CAST(NEW."data"->>'LastChange' As varchar) AS "LastChange",
        CAST(NEW."data"->>'Inhabitants' As integer) AS "Inhabitants",
        CAST(NEW."data"->>'IstatNumber' As varchar) AS "IstatNumber",
        CAST(NEW."data"->>'TourismvereinId' As varchar) AS "TourismvereinId",
        CAST(NEW."data"->>'VisibleInSearch' As bool) AS "VisibleInSearch",
        CAST(NEW."data"->>'AltitudeUnitofMeasure' As varchar) AS "AltitudeUnitofMeasure",
        CAST(NEW."data"->'Detail'->'cs'->>'Title' As varchar) AS "Detail-cs-Title",
        CAST(NEW."data"->'Detail'->'cs'->>'Language' As varchar) AS "Detail-cs-Language",
        CAST(NEW."data"->'Detail'->'de'->>'Title' As varchar) AS "Detail-de-Title",
        CAST(NEW."data"->'Detail'->'de'->>'Language' As varchar) AS "Detail-de-Language",
        CAST(NEW."data"->'Detail'->'en'->>'Title' As varchar) AS "Detail-en-Title",
        CAST(NEW."data"->'Detail'->'en'->>'Language' As varchar) AS "Detail-en-Language",
        CAST(NEW."data"->'Detail'->'fr'->>'Title' As varchar) AS "Detail-fr-Title",
        CAST(NEW."data"->'Detail'->'fr'->>'Language' As varchar) AS "Detail-fr-Language",
        CAST(NEW."data"->'Detail'->'it'->>'Title' As varchar) AS "Detail-it-Title",
        CAST(NEW."data"->'Detail'->'it'->>'Language' As varchar) AS "Detail-it-Language",
        CAST(NEW."data"->'Detail'->'nl'->>'Title' As varchar) AS "Detail-nl-Title",
        CAST(NEW."data"->'Detail'->'nl'->>'Language' As varchar) AS "Detail-nl-Language",
        CAST(NEW."data"->'Detail'->'pl'->>'Title' As varchar) AS "Detail-pl-Title",
        CAST(NEW."data"->'Detail'->'pl'->>'Language' As varchar) AS "Detail-pl-Language",
        CAST(NEW."data"->'Detail'->'ru'->>'Title' As varchar) AS "Detail-ru-Title",
        CAST(NEW."data"->'Detail'->'ru'->>'Language' As varchar) AS "Detail-ru-Language";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_municipalitiesopen
    BEFORE INSERT
    ON municipalitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_municipalitiesopen_fn();

ALTER TABLE municipalitiesopen
    ENABLE ALWAYS TRIGGER t_v_municipalitiesopen;

DROP TABLE IF EXISTS "v_municipalitiesopen_HasLanguage";

CREATE TABLE  "v_municipalitiesopen_HasLanguage" (
                                                     "Id" varchar,
                                                     "data" varchar
);

DROP FUNCTION IF EXISTS v_municipalitiesopen_HasLanguage_fn CASCADE;

CREATE FUNCTION v_municipalitiesopen_HasLanguage_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_municipalitiesopen_HasLanguage"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'HasLanguage') AS "data"
    WHERE NEW."data" -> 'HasLanguage' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_municipalitiesopen_HasLanguage
    BEFORE INSERT
    ON municipalitiesopen
    FOR EACH ROW
EXECUTE PROCEDURE v_municipalitiesopen_HasLanguage_fn();

ALTER TABLE municipalitiesopen
    ENABLE ALWAYS TRIGGER t_v_municipalitiesopen_HasLanguage;

DROP TABLE IF EXISTS "v_smgtags";

CREATE TABLE "v_smgtags" (
                             "Id" varchar,
                             "Shortname" varchar,
                             "MainEntity" varchar,
                             "TagName-de" varchar
);

ALTER TABLE "v_smgtags" ADD PRIMARY KEY ("Id");

DROP FUNCTION IF EXISTS v_smgtags_fn CASCADE;

CREATE FUNCTION v_smgtags_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO v_smgtags
    SELECT
        CAST(NEW."data"->>'Id' As varchar) AS "Id",
        CAST(NEW."data"->>'Shortname' As varchar) AS "Shortname",
        CAST(NEW."data"->>'MainEntity' As varchar) AS "MainEntity",
        CAST(NEW."data"->'TagName'->>'de' As varchar) AS "TagName-de";
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgtags
    BEFORE INSERT
    ON smgtags
    FOR EACH ROW
EXECUTE PROCEDURE v_smgtags_fn();

ALTER TABLE smgtags
    ENABLE ALWAYS TRIGGER t_v_smgtags;

DROP TABLE IF EXISTS "v_smgtags_ValidForEntity";

CREATE TABLE  "v_smgtags_ValidForEntity" (
                                             "Id" varchar,
                                             "data" varchar
);

DROP FUNCTION IF EXISTS v_smgtags_ValidForEntity_fn CASCADE;

CREATE FUNCTION v_smgtags_ValidForEntity_fn()
    RETURNS TRIGGER
AS $$
BEGIN
    INSERT INTO "v_smgtags_ValidForEntity"
    SELECT CAST(NEW."data"->>'Id' As varchar) AS "Id",
           jsonb_array_elements_text(NEW."data" -> 'ValidForEntity') AS "data"
    WHERE NEW."data" -> 'ValidForEntity' != 'null';
    RETURN NEW;
END;
$$
    LANGUAGE plpgsql;

CREATE TRIGGER t_v_smgtags_ValidForEntity
    BEFORE INSERT
    ON smgtags
    FOR EACH ROW
EXECUTE PROCEDURE v_smgtags_ValidForEntity_fn();

ALTER TABLE smgtags
    ENABLE ALWAYS TRIGGER t_v_smgtags_ValidForEntity;
