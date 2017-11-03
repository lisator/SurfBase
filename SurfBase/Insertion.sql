--Inserting to the table with only identity column (when identity insert is off)
INSERT INTO Schools DEFAULT VALUES

--Decrementing identity:
--https://stackoverflow.com/questions/15531077/is-there-any-way-to-decrement-the-identity-value-in-sql-when-a-row-got-deleted


--For loop alike
DECLARE @i int = 0

WHILE @i < 100
BEGIN
    SET @i = @i + 1
    /* do some work */
	
END
-----------------------------


--Insert with foreign key
insert into Hangars values (3)

insert into Equipments values
(scope_identity())--last identity used in a scope
-----------------------------


--On delete actions:
--https://www.techonthenet.com/sql_server/foreign_keys/foreign_delete.php





select * from Hangars
select * from Equipments

delete from Schools where Id = 3