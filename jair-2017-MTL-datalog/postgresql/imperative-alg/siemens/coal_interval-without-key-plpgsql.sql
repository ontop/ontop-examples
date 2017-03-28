CREATE TYPE coal_interval_without_key AS (dFrom TIMESTAMP, dTo TIMESTAMP);

CREATE OR REPLACE FUNCTION CoalesceIntervalWithoutKey(text, text, text) RETURNS SETOF coal_interval_without_key AS
$BODY$
DECLARE
    r coal_interval_without_key%rowtype;
    dFrom timestamp:=null;
    dTo timestamp:=null;
    result coal_interval_without_key%rowtype;
BEGIN
    FOR r IN EXECUTE 'SELECT ' || $2 || ' AS dFrom, ' || $3 || ' AS dTo' || ' FROM ' || $1 
    LOOP
	IF (dFrom IS null AND dTo IS null) 
		THEN dFrom := r.dFrom; dTo := r.dTo;
	ELSIF (dFrom IS NOT null AND dTo IS NOT null)
		THEN IF r.dFrom >= dFrom AND r.dFrom <= dTo
		     THEN IF r.dTo >= dTo
			      THEN dTo := r.dTo;
			      END IF;
		     ELSIF r.dFrom > dTo
		          THEN result.dFrom := dFrom; result.dTo := dTo; RETURN NEXT result;
			       dFrom = r.dFrom; dTo = r.dTo; 
		     END IF;
	END IF;
    END LOOP;
    IF (dFrom IS NOT null AND dTo IS NOT null) 
    THEN result.dFrom := dFrom; result.dTo := dTo; RETURN NEXT result;
    END IF;
    RETURN;
END
$BODY$
LANGUAGE 'plpgsql' ;
