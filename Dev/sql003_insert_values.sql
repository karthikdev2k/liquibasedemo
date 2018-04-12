--liquibase formatted sql

--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM 'CUST_DETS' WHERE CUSTID IN (4, 5);

--changeset karthik:3
INSERT INTO CUST_DETS VALUES (4, 'John', 'Travolta', 54, 'NY');
INSERT INTO CUST_DETS VALUES (5, 'Jane', 'Eyer', 40, 'AK');

--rollback DELETE FROM CUST_DETS WHERE CUSTID IN (4, 5);
