
-- Restoring Database:

bash-4.1$ pg_restore --dbname=postgres /home/cloudera/Desktop/CaseQuero/inep.dump
pg_restore: [archiver (db)] Error while PROCESSING TOC:
pg_restore: [archiver (db)] Error from TOC entry 196; 1259 24637 TABLE dm_curso_2009 ricardo
pg_restore: [archiver (db)] could not execute query: ERROR:  role "ricardo" does not exist
    Command was: ALTER TABLE public.dm_curso_2009 OWNER TO ricardo;


pg_restore: [archiver (db)] Error from TOC entry 197; 1259 24643 TABLE dm_curso_2010 ricardo
pg_restore: [archiver (db)] could not execute query: ERROR:  role "ricardo" does not exist
    Command was: ALTER TABLE public.dm_curso_2010 OWNER TO ricardo;


pg_restore: [archiver (db)] Error from TOC entry 198; 1259 24649 TABLE dm_curso_2011 ricardo
pg_restore: [archiver (db)] could not execute query: ERROR:  role "ricardo" does not exist
    Command was: ALTER TABLE public.dm_curso_2011 OWNER TO ricardo;


pg_restore: [archiver (db)] Error from TOC entry 199; 1259 24655 TABLE dm_curso_2012 ricardo
pg_restore: [archiver (db)] could not execute query: ERROR:  role "ricardo" does not exist
    Command was: ALTER TABLE public.dm_curso_2012 OWNER TO ricardo;


pg_restore: [archiver (db)] Error from TOC entry 200; 1259 24661 TABLE dm_curso_2013 ricardo
pg_restore: [archiver (db)] could not execute query: ERROR:  role "ricardo" does not exist
    Command was: ALTER TABLE public.dm_curso_2013 OWNER TO ricardo;


pg_restore: [archiver (db)] Error from TOC entry 201; 1259 24667 TABLE dm_curso_2014 ricardo
pg_restore: [archiver (db)] could not execute query: ERROR:  role "ricardo" does not exist
    Command was: ALTER TABLE public.dm_curso_2014 OWNER TO ricardo;


pg_restore: [archiver (db)] Error from TOC entry 202; 1259 24673 TABLE dm_curso_2015 ricardo
pg_restore: [archiver (db)] could not execute query: ERROR:  role "ricardo" does not exist
    Command was: ALTER TABLE public.dm_curso_2015 OWNER TO ricardo;


pg_restore: [archiver (db)] Error from TOC entry 203; 1259 24679 TABLE dm_curso_2016 ricardo
pg_restore: [archiver (db)] could not execute query: ERROR:  role "ricardo" does not exist
    Command was: ALTER TABLE public.dm_curso_2016 OWNER TO ricardo;


WARNING: errors ignored on restore: 8
bash-4.1$ 



queroed=# \c postgres
You are now connected to database "postgres" as user "postgres".
postgres-# \dt
Did not find any relations.
postgres-# 
postgres-# 
postgres-# \dt
             List of relations
 Schema |     Name      | Type  |  Owner   
--------+---------------+-------+----------
 public | dm_curso_2009 | table | postgres
 public | dm_curso_2010 | table | postgres
 public | dm_curso_2011 | table | postgres
 public | dm_curso_2012 | table | postgres
 public | dm_curso_2013 | table | postgres
 public | dm_curso_2014 | table | postgres
 public | dm_curso_2015 | table | postgres
 public | dm_curso_2016 | table | postgres
(8 rows)

postgres-# 




COPY dm_curso_2009  TO '/home/cloudera/Desktop/CaseQuero/Data/dm_cursos_2009' DELIMITER ';' HEADER CSV
COPY dm_curso_2010  TO '/home/cloudera/Desktop/CaseQuero/Data/dm_cursos_2010' DELIMITER ';' HEADER CSV;
COPY dm_curso_2011  TO '/home/cloudera/Desktop/CaseQuero/Data/dm_cursos_2011' DELIMITER ';' HEADER CSV;
COPY dm_curso_2012  TO '/home/cloudera/Desktop/CaseQuero/Data/dm_cursos_2012' DELIMITER ';' HEADER CSV;
COPY dm_curso_2013  TO '/home/cloudera/Desktop/CaseQuero/Data/dm_cursos_2013' DELIMITER ';' HEADER CSV;
COPY dm_curso_2014  TO '/home/cloudera/Desktop/CaseQuero/Data/dm_cursos_2014' DELIMITER ';' HEADER CSV;
COPY dm_curso_2015  TO '/home/cloudera/Desktop/CaseQuero/Data/dm_cursos_2015' DELIMITER ';' HEADER CSV;
COPY dm_curso_2016  TO '/home/cloudera/Desktop/CaseQuero/Data/dm_cursos_2016' DELIMITER ';' HEADER CSV;

