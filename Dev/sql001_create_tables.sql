--liquibase formatted sql

--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT COUNT(TABLE_NAME) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'CUST_DETS' AND TABLE_SCHEMA='testLiquibase_dev';

--changeset karthik:1
CREATE TABLE CUST_DETS (
	custid INT, 
	firstname VARCHAR(20), 
	lastname VARCHAR(20),
	age INT, 
	state VARCHAR(10)
);

--rollback drop table CUST_DETS;
