DROP TABLE MYBOARD1;
DROP SEQUENCE MYBOARDSEQ1;

CREATE SEQUENCE MYBOARDSEQ1;

CREATE TABLE MYBOARD1(
	MYNO NUMBER PRIMARY KEY,
	MYNAME VARCHAR2(100) NOT NULL,
	MYTITLE VARCHAR2(1000) NOT NULL,
	MYCONTENT VARCHAR2(4000) NOT NULL,
	MYDATE DATE NOT NULL
);

INSERT INTO MYBOARD1
VALUES(MYBOARDSEQ1.NEXTVAL, '������', '�Խ��� �׽�Ʈ', '�׽�Ʈ �� �Դϴ�. 1123456789', SYSDATE);

SELECT MYNO, MYNAME, MYTITLE, MYCONTENT, MYDATE
FROM MYBOARD1
ORDER BY MYNO DESC;