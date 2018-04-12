--liquibase formatted sql

--preconditions onFail:HALT onError:HALT
--precondition-sql-check expectedResult:0 SELECT COUNT(*) FROM 'CUST_DETS' WHERE CUSTID IN (1, 2, 3);

--changeset karthik:2
INSERT INTO CUST_DETS VALUES (1, 'John', 'Doe', 34, 'NV');
INSERT INTO CUST_DETS VALUES (2, 'Jane', 'Doe', 30, 'KA');
INSERT INTO CUST_DETS VALUES (3, 'Tom', 'Hanks', 40, 'NY');

--rollback DELETE FROM CUST_DETS WHERE CUSTID IN (1, 2, 3);
