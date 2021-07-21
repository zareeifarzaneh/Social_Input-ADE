-- This document was automatically created by the ADE-Manager tool of 3DCityDB (https://www.3dcitydb.org) on 2020-03-16 11:50:15 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create tables ************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- scl_cityobject 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_cityobject
(
    id INTEGER NOT NULL,
    ispublic NUMERIC,
    locationtype_broughname VARCHAR(1000),
    locationtype_isexist NUMERIC,
    locationtype_lat INTEGER,
    locationtype_lon INTEGER,
    locationtype_name VARCHAR(1000),
    locationtype_postalcode VARCHAR(1000),
    name VARCHAR(1000),
    numberofcomments INTEGER,
    numberofuseropinion INTEGER,
    sentimenttype_percentage INTEGER,
    sentimenttype_type VARCHAR(1000),
    type VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_comment_ 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_comment_
(
    id INTEGER NOT NULL,
    cityobject_comment_id INTEGER,
    objectclass_id INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_comment_1 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_comment_1
(
    id INTEGER NOT NULL,
    comment_ VARCHAR(1000),
    comments_id INTEGER,
    language VARCHAR(1000),
    likenumber INTEGER,
    time TIMESTAMP WITH TIME ZONE,
    url VARCHAR(1000),
    userid INTEGER,
    weatherdatatyp_weatherdataty VARCHAR(1000),
    weatherdatatype_value VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_commentattributes 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_commentattributes
(
    id INTEGER NOT NULL,
    listofcomments_id INTEGER,
    listofcommentsliked INTEGER,
    numofcomments INTEGER,
    numofcommentsliked INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_datetime 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_datetime
(
    id INTEGER NOT NULL,
    day INTEGER,
    hour INTEGER,
    month INTEGER,
    year INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_keywords 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_keywords
(
    id INTEGER NOT NULL,
    keywordsnumber INTEGER,
    metainformation_keywords_id INTEGER,
    name VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_location 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_location
(
    id INTEGER NOT NULL,
    broughname VARCHAR(1000),
    isexist NUMERIC,
    lat INTEGER,
    lon INTEGER,
    metainformat_locationsmen_id INTEGER,
    name VARCHAR(1000),
    postalcode VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_metainfo 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_metainfo
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_metainformation 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_metainformation
(
    id INTEGER NOT NULL,
    relatedto VARCHAR(1000),
    sentimenttype_percentage INTEGER,
    sentimenttype_type VARCHAR(1000),
    topictype_name VARCHAR(1000),
    topictype_type VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_occupation 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_occupation
(
    id INTEGER NOT NULL,
    journeytypetowork VARCHAR(1000),
    locationtype_broughname VARCHAR(1000),
    locationtype_isexist NUMERIC,
    locationtype_lat INTEGER,
    locationtype_lon INTEGER,
    locationtype_name VARCHAR(1000),
    locationtype_postalcode VARCHAR(1000),
    name VARCHAR(1000),
    type VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_sentiment 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_sentiment
(
    id INTEGER NOT NULL,
    percentage INTEGER,
    type VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_topic 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_topic
(
    id INTEGER NOT NULL,
    name VARCHAR(1000),
    type VARCHAR(1000),
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_user_ 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_user_
(
    id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_user_1 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_user_1
(
    id INTEGER NOT NULL,
    age INTEGER,
    education VARCHAR(1000),
    firstname VARCHAR(1000),
    gender VARCHAR(1000),
    havecare NUMERIC,
    havechild NUMERIC,
    havepet NUMERIC,
    lastname VARCHAR(1000),
    locationtype_broughname VARCHAR(1000),
    locationtype_isexist NUMERIC,
    locationtype_lat INTEGER,
    locationtype_lon INTEGER,
    locationtype_name VARCHAR(1000),
    locationtype_postalcode VARCHAR(1000),
    occupantion_id INTEGER,
    userid INTEGER,
    PRIMARY KEY (id)
);

-- -------------------------------------------------------------------- 
-- scl_weatherdata 
-- -------------------------------------------------------------------- 
CREATE TABLE scl_weatherdata
(
    id INTEGER NOT NULL,
    value VARCHAR(1000),
    weatherdatatype VARCHAR(1000),
    PRIMARY KEY (id)
);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create foreign keys ******************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- scl_cityobject 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_cityobject ADD CONSTRAINT scl_cityobject_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- scl_comment_ 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_comment_ ADD CONSTRAINT scl_comment_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

ALTER TABLE scl_comment_ ADD CONSTRAINT scl_comment_objectclass_fk FOREIGN KEY (objectclass_id)
REFERENCES objectclass (id);

ALTER TABLE scl_comment_ ADD CONSTRAINT scl_commen_cityob_comme_fk FOREIGN KEY (cityobject_comment_id)
REFERENCES scl_cityobject (id)
ON DELETE SET NULL;

-- -------------------------------------------------------------------- 
-- scl_comment_1 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_comment_1 ADD CONSTRAINT scl_comment_fk_1 FOREIGN KEY (id)
REFERENCES scl_comment_ (id);

-- -------------------------------------------------------------------- 
-- scl_commentattributes 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_commentattributes ADD CONSTRAINT scl_commentattributes_fk FOREIGN KEY (id)
REFERENCES scl_comment_ (id);

-- -------------------------------------------------------------------- 
-- scl_keywords 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_keywords ADD CONSTRAINT scl_keywor_metain_keywo_fk FOREIGN KEY (metainformation_keywords_id)
REFERENCES scl_metainformation (id);

-- -------------------------------------------------------------------- 
-- scl_location 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_location ADD CONSTRAINT scl_locati_metain_locat_fk FOREIGN KEY (metainformat_locationsmen_id)
REFERENCES scl_metainformation (id);

-- -------------------------------------------------------------------- 
-- scl_metainfo 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_metainfo ADD CONSTRAINT scl_metainfo_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- scl_metainformation 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_metainformation ADD CONSTRAINT scl_metainformation_fk FOREIGN KEY (id)
REFERENCES scl_metainfo (id);

-- -------------------------------------------------------------------- 
-- scl_user_ 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_user_ ADD CONSTRAINT scl_user_fk FOREIGN KEY (id)
REFERENCES cityobject (id);

-- -------------------------------------------------------------------- 
-- scl_user_1 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_user_1 ADD CONSTRAINT scl_user_fk_1 FOREIGN KEY (id)
REFERENCES scl_user_ (id);

ALTER TABLE scl_user_1 ADD CONSTRAINT scl_user_occupantion_fk FOREIGN KEY (occupantion_id)
REFERENCES scl_occupation (id)
ON DELETE SET NULL;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create Indexes ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- scl_comment_ 
-- -------------------------------------------------------------------- 
CREATE INDEX scl_commen_cityo_comme_fkx ON scl_comment_
    USING btree
    (
      cityobject_comment_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

CREATE INDEX scl_comment_objectclas_fkx ON scl_comment_
    USING btree
    (
      objectclass_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- scl_keywords 
-- -------------------------------------------------------------------- 
CREATE INDEX scl_keywor_metai_keywo_fkx ON scl_keywords
    USING btree
    (
      metainformation_keywords_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- scl_location 
-- -------------------------------------------------------------------- 
CREATE INDEX scl_locati_metai_locat_fkx ON scl_location
    USING btree
    (
      metainformat_locationsmen_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- -------------------------------------------------------------------- 
-- scl_user_1 
-- -------------------------------------------------------------------- 
CREATE INDEX scl_user_occupantion_fkx ON scl_user_1
    USING btree
    (
      occupantion_id ASC NULLS LAST
    )   WITH (FILLFACTOR = 90);

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Create Sequences *********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

CREATE SEQUENCE scl_weatherdata_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE scl_datetime_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE scl_keywords_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE scl_location_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE scl_sentiment_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE scl_topic_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


CREATE SEQUENCE scl_occupation_seq
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2147483647
START WITH 1
CACHE 1
NO CYCLE
OWNED BY NONE;


