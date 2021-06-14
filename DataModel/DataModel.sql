-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
DROP TABLE IF EXISTS public."ca_raw";
DROP TABLE IF EXISTS public."co_raw";
DROP TABLE IF EXISTS public."census";
DROP TABLE IF EXISTS public."census_raw";
DROP TABLE IF EXISTS public."mass_raw";
DROP TABLE IF EXISTS public."sales_by_qtr";
DROP TABLE IF EXISTS public."states";


BEGIN;


CREATE TABLE public."ca_raw"
(
    "Calendar Year" integer,
    "Quarter" character varying(2),
    "Excise Tax" integer,
    "Cultivation Tax" integer,
    "Sales Tax" integer,
    "Total Tax" integer,
    "Year-Quarter" character varying(8),
    "Taxable Sales" integer,
    PRIMARY KEY ("Quarter", "Calendar Year")
)
WITH (
    OIDS = FALSE
);

CREATE TABLE public."co_raw"
(
    "Sales Month" character varying(7),
    "Total Medical Monthly Sales" integer,
    "Total Medical YTD Sales" integer,
    "Total Retail Monthly Sales" integer,
    "Total Retail YTD Sales" integer,
    "Total Monthly Sales" integer,
    "Total YTD Sales" integer,
    PRIMARY KEY ("Sales Month")
)
WITH (
    OIDS = FALSE
);

CREATE TABLE public."census_raw"
(
    "SUMLEV" integer,
    "REGION" integer,
    "DIVISION" integer,
    "STATE" integer,
    "NAME" character varying(255),
    "CENSUS2010POP" integer,
    "ESTIMATESBASE2010" integer,
    "POPESTIMATE2010" integer,
    "POPESTIMATE2011" integer,
    "POPESTIMATE2012" integer,
    "POPESTIMATE2013" integer,
    "POPESTIMATE2014" integer,
    "POPESTIMATE2015" integer,
    "POPESTIMATE2016" integer,
    "POPESTIMATE2017" integer,
    "POPESTIMATE2018" integer,
    "POPESTIMATE2019" integer,
    "POPESTIMATE2020" integer,
    "NPOPCHG_2010" integer,
    "NPOPCHG_2011" integer,
    "NPOPCHG_2012" integer,
    "NPOPCHG_2013" integer,
    "NPOPCHG_2014" integer,
    "NPOPCHG_2015" integer,
    "NPOPCHG_2016" integer,
    "NPOPCHG_2017" integer,
    "NPOPCHG_2018" integer,
    "NPOPCHG_2019" integer,
    "NPOPCHG_2020" integer,
    "BIRTHS2010" integer,
    "BIRTHS2011" integer,
    "BIRTHS2012" integer,
    "BIRTHS2013" integer,
    "BIRTHS2014" integer,
    "BIRTHS2015" integer,
    "BIRTHS2016" integer,
    "BIRTHS2017" integer,
    "BIRTHS2018" integer,
    "BIRTHS2019" integer,
    "BIRTHS2020" integer,
    "DEATHS2010" integer,
    "DEATHS2011" integer,
    "DEATHS2012" integer,
    "DEATHS2013" integer,
    "DEATHS2014" integer,
    "DEATHS2015" integer,
    "DEATHS2016" integer,
    "DEATHS2017" integer,
    "DEATHS2018" integer,
    "DEATHS2019" integer,
    "DEATHS2020" integer,
    "NATURALINC2010" integer,
    "NATURALINC2011" integer,
    "NATURALINC2012" integer,
    "NATURALINC2013" integer,
    "NATURALINC2014" integer,
    "NATURALINC2015" integer,
    "NATURALINC2016" integer,
    "NATURALINC2017" integer,
    "NATURALINC2018" integer,
    "NATURALINC2019" integer,
    "NATURALINC2020" integer,
    "INTERNATIONALMIG2010" integer,
    "INTERNATIONALMIG2011" integer,
    "INTERNATIONALMIG2012" integer,
    "INTERNATIONALMIG2013" integer,
    "INTERNATIONALMIG2014" integer,
    "INTERNATIONALMIG2015" integer,
    "INTERNATIONALMIG2016" integer,
    "INTERNATIONALMIG2017" integer,
    "INTERNATIONALMIG2018" integer,
    "INTERNATIONALMIG2019" integer,
    "INTERNATIONALMIG2020" integer,
    "DOMESTICMIG2010" integer,
    "DOMESTICMIG2011" integer,
    "DOMESTICMIG2012" integer,
    "DOMESTICMIG2013" integer,
    "DOMESTICMIG2014" integer,
    "DOMESTICMIG2015" integer,
    "DOMESTICMIG2016" integer,
    "DOMESTICMIG2017" integer,
    "DOMESTICMIG2018" integer,
    "DOMESTICMIG2019" integer,
    "DOMESTICMIG2020" integer,
    "NETMIG2010" integer,
    "NETMIG2011" integer,
    "NETMIG2012" integer,
    "NETMIG2013" integer,
    "NETMIG2014" integer,
    "NETMIG2015" integer,
    "NETMIG2016" integer,
    "NETMIG2017" integer,
    "NETMIG2018" integer,
    "NETMIG2019" integer,
    "NETMIG2020" integer,
    "RESIDUAL2010" integer,
    "RESIDUAL2011" integer,
    "RESIDUAL2012" integer,
    "RESIDUAL2013" integer,
    "RESIDUAL2014" integer,
    "RESIDUAL2015" integer,
    "RESIDUAL2016" integer,
    "RESIDUAL2017" integer,
    "RESIDUAL2018" integer,
    "RESIDUAL2019" integer,
    "RESIDUAL2020" integer,
    "RBIRTH2011" integer,
    "RBIRTH2012" integer,
    "RBIRTH2013" integer,
    "RBIRTH2014" integer,
    "RBIRTH2015" integer,
    "RBIRTH2016" integer,
    "RBIRTH2017" integer,
    "RBIRTH2018" integer,
    "RBIRTH2019" integer,
    "RBIRTH2020" integer,
    "RDEATH2011" integer,
    "RDEATH2012" integer,
    "RDEATH2013" integer,
    "RDEATH2014" integer,
    "RDEATH2015" integer,
    "RDEATH2016" integer,
    "RDEATH2017" integer,
    "RDEATH2018" integer,
    "RDEATH2019" integer,
    "RDEATH2020" integer,
    "RNATURALINC2011" integer,
    "RNATURALINC2012" integer,
    "RNATURALINC2013" integer,
    "RNATURALINC2014" integer,
    "RNATURALINC2015" integer,
    "RNATURALINC2016" integer,
    "RNATURALINC2017" integer,
    "RNATURALINC2018" integer,
    "RNATURALINC2019" integer,
    "RNATURALINC2020" integer,
    "RINTERNATIONALMIG2011" integer,
    "RINTERNATIONALMIG2012" integer,
    "RINTERNATIONALMIG2013" integer,
    "RINTERNATIONALMIG2014" integer,
    "RINTERNATIONALMIG2015" integer,
    "RINTERNATIONALMIG2016" integer,
    "RINTERNATIONALMIG2017" integer,
    "RINTERNATIONALMIG2018" integer,
    "RINTERNATIONALMIG2019" integer,
    "RINTERNATIONALMIG2020" integer,
    "RDOMESTICMIG2011" integer,
    "RDOMESTICMIG2012" integer,
    "RDOMESTICMIG2013" integer,
    "RDOMESTICMIG2014" integer,
    "RDOMESTICMIG2015" integer,
    "RDOMESTICMIG2016" integer,
    "RDOMESTICMIG2017" integer,
    "RDOMESTICMIG2018" integer,
    "RDOMESTICMIG2019" integer,
    "RDOMESTICMIG2020" integer,
    "RNETMIG2011" integer,
    "RNETMIG2012" integer,
    "RNETMIG2013" integer,
    "RNETMIG2014" integer,
    "RNETMIG2015" integer,
    "RNETMIG2016" integer,
    "RNETMIG2017" integer,
    "RNETMIG2018" integer,
    "RNETMIG2019" integer,
    "RNETMIG2020" integer
)
WITH (
    OIDS = FALSE
);

CREATE TABLE public."mass_raw"
(
    activitysummarydate "char",
    total_plantimmaturecount integer,
    total_planttrackedcount integer,
    total_plantfloweringcount integer,
    total_plantvegetativecount integer,
    total_plantdestroyedcount integer,
    total_plantharvestedcount integer,
    total_plantcount integer,
    salestotal integer,
    total_active_harvestcount integer,
    total_active_packagecount integer,
    total_plantbatchcount integer,
    total_activeproducts integer,
    total_activestrains integer,
    total_employees integer
)
WITH (
    OIDS = FALSE
);

CREATE TABLE public."states"
(
    "StateID" integer NOT NULL,
    "StateDescName" "char" NOT NULL,
    "StateAbbrev" "char" NOT NULL,
    PRIMARY KEY ("StateID")
)
WITH (
    OIDS = FALSE
);

CREATE TABLE public."sales_by_qtr"
(
    "SalesID" integer NOT NULL,
    "StateID" integer NOT NULL,
    "Year" integer,
    "Qtr" integer,
    "TotalSales" integer,
    PRIMARY KEY ("SalesID")
)
WITH (
    OIDS = FALSE
);

CREATE TABLE public."census"
(
    "CensusID" integer NOT NULL,
    "StateID" integer NOT NULL,
    "Year" integer,
    "Population" integer,
    PRIMARY KEY ("CensusID")
)
WITH (
    OIDS = FALSE
);

ALTER TABLE public."sales_by_qtr"
    ADD FOREIGN KEY ("SalesID")
    REFERENCES public."states" ("StateID")
    NOT VALID;


ALTER TABLE public."census"
    ADD FOREIGN KEY ("StateID")
    REFERENCES public."states" ("StateID")
    NOT VALID;

END;