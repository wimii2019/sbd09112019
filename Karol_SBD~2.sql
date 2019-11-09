DROP TABLE regions CASCADE CONSTRAINTS;
DROP TABLE countries CASCADE CONSTRAINTS;

CREATE TABLE regions(
  region_id NUMBER(4,0) CONSTRAINT regions_pk PRIMARY KEY,
  region_name VARCHAR2(50) NOT NULL
);

CREATE SEQUENCE region_seq START WITH 10 INCREMENT BY 10;

CREATE TABLE countries(
  country_id CHAR(2) CONSTRAINT conuntries_pk PRIMARY KEY,
  country_name VARCHAR2(50),
  region_id NUMBER(4,0) CONSTRAINT countries_regions_fk REFERENCES regions(region_id)
);