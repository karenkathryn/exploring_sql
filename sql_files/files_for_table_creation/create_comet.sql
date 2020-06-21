/*
    Author:     Karen Warmbein 
    Date:       June 21, 2020
    Purpose:    Create a data table from  csv               
    Note:       Data is in /data folder and from 
                 https://catalog.data.gov/dataset/wise-nea-comet-discovery-statistics
*/

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

-- enable automatic character set conversion; 
-- tell PostgreSQL the character set (encoding) you would like to use in the client
-- see: https://www.postgresql.org/docs/9.3/multibyte.html
SET client_encoding = 'latin1';


COPY comets
    FROM '/Volumes/Elements/ds/mod6/exploring_sql/data/WISE_NEA_COMET_DISCOVERY_STATISTICS.csv'
    DELIMITER ',' CSV HEADER;
-- see https://www.postgresql.org/docs/9.2/sql-copy.html
-- for extra info on DELIMETER and HEADER