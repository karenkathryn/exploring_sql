DROP TABLE IF EXISTS comets;

CREATE TABLE comets (   
    designation TEXT, 
    discovery_date DATE,
    h_mag FLOAT,
    moid_au FLOAT,
    q_au_1 FLOAT,
    q_au_2 FLOAT,
    period_yr FLOAT,
    i_deg FLOAT,
    pha TEXT,
    orbit_class TEXT
);


SET client_encoding = 'latin1';

COPY comets
    FROM '/Volumes/Elements/ds/mod6/exploring_sql/data/WISE_NEA_COMET_DISCOVERY_STATISTICS.csv'
    DELIMITER ',' CSV HEADER;