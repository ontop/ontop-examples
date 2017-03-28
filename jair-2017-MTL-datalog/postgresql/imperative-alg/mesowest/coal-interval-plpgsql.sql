CREATE TYPE coal_interval AS (SID VARCHAR(20), dFrom TIMESTAMP, dTo TIMESTAMP);

CREATE OR REPLACE FUNCTION CoalesceInterval(text, text, text, text) RETURNS SETOF coal_interval AS
$BODY$
DECLARE
    r coal_interval%rowtype;
    SID varchar(20):='';
    dFrom timestamp:=null;
    dTo timestamp:=null;
    result coal_interval%rowtype;
BEGIN
    FOR r IN EXECUTE 'SELECT ' || $2 || ' AS SID, ' || $3 || ' AS dFrom, ' || $4 || ' AS dTo' || ' FROM ' || $1 
    LOOP
	IF (SID = '' AND dFrom IS null AND dTo IS null) 
		THEN SID := r.SID; dFrom := r.dFrom; dTo := r.dTo;
	ELSIF (r.SID <> SID AND SID <> '' AND dFrom IS NOT null AND dTo IS NOT null)
		THEN  result.SID := SID; result.dFrom := dFrom; result.dTo := dTo; RETURN NEXT result; SID := r.SID; dFrom := r.dFrom; dTo := r.dTo;
	ELSIF r.SID = SID
		THEN IF r.dFrom >= dFrom AND r.dFrom <= dTo
		     THEN IF r.dTo >= dTo
			      THEN dTo := r.dTo;
			      END IF;
		     ELSIF r.dFrom > dTo
		          THEN result.SID := SID; result.dFrom := dFrom; result.dTo := dTo; RETURN NEXT result;
			       SID = r.SID; dFrom = r.dFrom; dTo = r.dTo; 
		     END IF;
	END IF;
    END LOOP;
    IF (SID <> '' AND dFrom IS NOT null AND dTo IS NOT null) 
    THEN result.SID := SID; result.dFrom := dFrom; result.dTo := dTo; RETURN NEXT result;
    END IF;
    RETURN;
END
$BODY$
LANGUAGE 'plpgsql' ;