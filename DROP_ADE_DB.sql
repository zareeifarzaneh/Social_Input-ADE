-- This document was automatically created by the ADE-Manager tool of 3DCityDB (https://www.3dcitydb.org) on 2020-03-16 11:50:15 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop foreign keys ********************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- scl_cityobject 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_cityobject
    DROP CONSTRAINT scl_cityobject_fk;

-- -------------------------------------------------------------------- 
-- scl_comment_ 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_comment_
    DROP CONSTRAINT scl_comment_fk;

ALTER TABLE scl_comment_
    DROP CONSTRAINT scl_comment_objectclass_fk;

ALTER TABLE scl_comment_
    DROP CONSTRAINT scl_commen_cityob_comme_fk;

-- -------------------------------------------------------------------- 
-- scl_comment_1 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_comment_1
    DROP CONSTRAINT scl_comment_fk_1;

-- -------------------------------------------------------------------- 
-- scl_commentattributes 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_commentattributes
    DROP CONSTRAINT scl_commentattributes_fk;

-- -------------------------------------------------------------------- 
-- scl_keywords 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_keywords
    DROP CONSTRAINT scl_keywor_metain_keywo_fk;

-- -------------------------------------------------------------------- 
-- scl_location 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_location
    DROP CONSTRAINT scl_locati_metain_locat_fk;

-- -------------------------------------------------------------------- 
-- scl_metainfo 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_metainfo
    DROP CONSTRAINT scl_metainfo_fk;

-- -------------------------------------------------------------------- 
-- scl_metainformation 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_metainformation
    DROP CONSTRAINT scl_metainformation_fk;

-- -------------------------------------------------------------------- 
-- scl_user_ 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_user_
    DROP CONSTRAINT scl_user_fk;

-- -------------------------------------------------------------------- 
-- scl_user_1 
-- -------------------------------------------------------------------- 
ALTER TABLE scl_user_1
    DROP CONSTRAINT scl_user_fk_1;

ALTER TABLE scl_user_1
    DROP CONSTRAINT scl_user_occupantion_fk;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop tables *************************************** 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- -------------------------------------------------------------------- 
-- scl_cityobject 
-- -------------------------------------------------------------------- 
DROP TABLE scl_cityobject;

-- -------------------------------------------------------------------- 
-- scl_comment_ 
-- -------------------------------------------------------------------- 
DROP TABLE scl_comment_;

-- -------------------------------------------------------------------- 
-- scl_comment_1 
-- -------------------------------------------------------------------- 
DROP TABLE scl_comment_1;

-- -------------------------------------------------------------------- 
-- scl_commentattributes 
-- -------------------------------------------------------------------- 
DROP TABLE scl_commentattributes;

-- -------------------------------------------------------------------- 
-- scl_datetime 
-- -------------------------------------------------------------------- 
DROP TABLE scl_datetime;

-- -------------------------------------------------------------------- 
-- scl_keywords 
-- -------------------------------------------------------------------- 
DROP TABLE scl_keywords;

-- -------------------------------------------------------------------- 
-- scl_location 
-- -------------------------------------------------------------------- 
DROP TABLE scl_location;

-- -------------------------------------------------------------------- 
-- scl_metainfo 
-- -------------------------------------------------------------------- 
DROP TABLE scl_metainfo;

-- -------------------------------------------------------------------- 
-- scl_metainformation 
-- -------------------------------------------------------------------- 
DROP TABLE scl_metainformation;

-- -------------------------------------------------------------------- 
-- scl_occupation 
-- -------------------------------------------------------------------- 
DROP TABLE scl_occupation;

-- -------------------------------------------------------------------- 
-- scl_sentiment 
-- -------------------------------------------------------------------- 
DROP TABLE scl_sentiment;

-- -------------------------------------------------------------------- 
-- scl_topic 
-- -------------------------------------------------------------------- 
DROP TABLE scl_topic;

-- -------------------------------------------------------------------- 
-- scl_user_ 
-- -------------------------------------------------------------------- 
DROP TABLE scl_user_;

-- -------------------------------------------------------------------- 
-- scl_user_1 
-- -------------------------------------------------------------------- 
DROP TABLE scl_user_1;

-- -------------------------------------------------------------------- 
-- scl_weatherdata 
-- -------------------------------------------------------------------- 
DROP TABLE scl_weatherdata;

-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
-- *********************************** Drop Sequences ************************************* 
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 

DROP SEQUENCE scl_weatherdata_seq;

DROP SEQUENCE scl_datetime_seq;

DROP SEQUENCE scl_keywords_seq;

DROP SEQUENCE scl_location_seq;

DROP SEQUENCE scl_sentiment_seq;

DROP SEQUENCE scl_topic_seq;

DROP SEQUENCE scl_occupation_seq;
