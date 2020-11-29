select username as schema_name
from sys.dba_users
order by username;

CREATE TABLE openwebinar_oracle_docker(key integer, value varchar(20));

SELECT * FROM  openwebinar_oracle_docker;

DELETE FROM OPENWEBINAR_ORACLE_DOCKER;

INSERT INTO openwebinar_oracle_docker (key, value) VALUES (0, 'Iron Man');
INSERT INTO openwebinar_oracle_docker (key, value) VALUES (1, 'Capi');
INSERT INTO openwebinar_oracle_docker (key, value) VALUES (2, 'Spider Man');
INSERT INTO openwebinar_oracle_docker (key, value) VALUES (3, 'Capitana Marvel');
INSERT INTO openwebinar_oracle_docker (key, value) VALUES (3, 'Miles Morales');
INSERT INTO openwebinar_oracle_docker (key, value) VALUES (4, 'Hulk');
INSERT INTO openwebinar_oracle_docker (key, value) VALUES (5, 'Thor');

