﻿--C# for using database:
--https://docs.microsoft.com/en-us/dotnet/framework/data/adonet/ado-net-code-examples#sqlclient
--https://docs.microsoft.com/en-us/azure/sql-database/sql-database-design-first-database-csharp#cs_1_connect




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

--Multiple tables constraints
--https://stackoverflow.com/questions/2588072/how-do-i-create-a-multiple-table-check-constraint


--On delete actions:
--https://www.techonthenet.com/sql_server/foreign_keys/foreign_delete.php

--Getting table from SQL server:
--https://stackoverflow.com/questions/6073382/read-sql-table-into-c-sharp-datatable





select * from Hangars
select * from Equipments

delete from Schools where Id = 3