GO

INSERT INTO dbo.Schools
(
    Name
)
VALUES
(N'Funsport.pl' -- Name - nvarchar(max)
    )

INSERT INTO dbo.Hangars
(
    Name,
    School_Id
)
VALUES
(   N'School', -- Name - nvarchar(max)
    1    -- School_Id - int
    )

INSERT INTO dbo.Trainers
(
    --Name,
    --Last_Name,
    Nickname,
    School_Id
)
VALUES
(   --N'', -- Name - nvarchar(max)
    --N'', -- Last_Name - nvarchar(max)
    N'Rents', -- Nickname - nvarchar(max)
    1    -- School_Id - int
    )

INSERT INTO dbo.Trainers
(
    Name,
    Last_Name,
    Nickname,
    School_Id
)
VALUES
(   N'Michael', -- Name - nvarchar(max)
    N'Lisowski', -- Last_Name - nvarchar(max)
    N'Lisek', -- Nickname - nvarchar(max)
    1    -- School_Id - int
    ),
(	N'Natalia',
	N'Tomaszek',
	N'Surfer',
	1
	),
(	N'Dominika',
	N'Piechota',
	N'Doma',
	1
	)

INSERT INTO dbo.Clients
(
    Name,
    Last_Name,
    Age--,
    --Last_Board_Id,
    --Last_Sail_Id
)
VALUES
(   N'Marcjanna', -- Name - nvarchar(max)
    N'Siedler', -- Last_Name - nvarchar(max)
    19--,   -- Age - int
    --0,   -- Last_Board_Id - int
    --0    -- Last_Sail_Id - int
    ),
(	N'Luiza',
	N'Kowalska',
	19
	),
(	N'Dominik',
	N'Kwiatkowski',
	42
	),
(	N'Krystyna',
	N'Lenart',
	50
	),
(	N'Ela',
	N'Dziomdziora',
	21
	),
(	N'Magda',
	N'Kis',
	17
	),
(	N'Wiktoria',
	N'Mops',
	8
	),
(	N'Filip',
	N'Konkel',
	14
	),
(	N'Jerzy',
	N'Walc',
	63
	),
(	N'Lena',
	N'Szymańska',
	9
	)
INSERT INTO dbo.Boards
(
    Length,
    Volume,
    Make,
    Type,
    Hangar_Id
)
VALUES
(   240,   -- Length - int
    180,   -- Volume - int
    N'F2', -- Make - nvarchar(max)
    N'Basic', -- Type - nvarchar(max)
    1    -- Hangar_Id - int
    ),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	240,
	180,
	N'F2',
	N'Basic',
	1
	),
(	235,
	220,
	N'F2',
	N'Basic',
	1
	),
(	235,
	220,
	N'F2',
	N'Basic',
	1
	),
(	235,
	220,
	N'F2',
	N'Basic',
	1
	),
(	235,
	220,
	N'F2',
	N'Basic',
	1
	),
(	235,
	220,
	N'F2',
	N'Basic',
	1
	),
(	235,
	220,
	N'F2',
	N'Basic',
	1
	),
(	235,
	220,
	N'F2',
	N'Basic',
	1
	),
(	235,
	220,
	N'F2',
	N'Basic',
	1
	),
(	235,
	220,
	N'F2',
	N'Basic',
	1
	),
(	225,
	126,
	N'F2',
	N'Advanced',
	1
	),
(	225,
	126,
	N'F2',
	N'Advanced',
	1
	),
(	225,
	126,
	N'F2',
	N'Advanced',
	1
	),
(	225,
	126,
	N'F2',
	N'Advanced',
	1
	),
(	225,
	126,
	N'F2',
	N'Advanced',
	1
	),
(	240,
	115,
	N'JP',
	N'Advanced',
	1
	),
(	240,
	115,
	N'JP',
	N'Advanced',
	1
	),
(	240,
	115,
	N'JP',
	N'Advanced',
	1
	),
(	240,
	115,
	N'JP',
	N'Advanced',
	1
	),
(	240,
	115,
	N'JP',
	N'Advanced',
	1
	),
(	210,
	90,
	N'JP',
	N'Advanced',
	1
	),
(	210,
	90,
	N'JP',
	N'Advanced',
	1
	),
(	210,
	90,
	N'JP',
	N'Advanced',
	1
	),
(	210,
	90,
	N'JP',
	N'Advanced',
	1
	),
(	210,
	90,
	N'JP',
	N'Advanced',
	1
	)

GO
INSERT INTO dbo.Sails
(
    Size,
    Make,
    Hangar_Id
)
VALUES
(   4.0,   -- Size - float
    N'Point7', -- Make - nvarchar(max)
    1    -- Hangar_Id - int
    ),
(	4.0,
	N'Point7',
	1
	),
(	4.2,
	N'Point7',
	1
	),
(	4.2,
	N'Point7',
	1
	),
(	4.7,
	N'Point7',
	1
	),
(	4.7,
	N'Point7',
	1
	),
(	4.9,
	N'North',
	1
	),
(	4.9,
	N'North',
	1
	),
(	5.5,
	N'North',
	1
	),
(	5.5,
	N'North',
	1
	),
(	5.9,
	N'North',
	1
	),
(	5.9,
	N'North',
	1
	),
(	5.9,
	N'North',
	1
	),
(	5.9,
	N'North',
	1
	),
(	6.5,
	N'Neilpryde',
	1
	),
(	6.5,
	N'Neilpryde',
	1
	),
(	6.5,
	N'Neilpryde',
	1
	),
(	6.5,
	N'Neilpryde',
	1
	),
(	6.5,
	N'Neilpryde',
	1
	),
(	6.5,
	N'Neilpryde',
	1
	),
(	2.0,
	N'XTS',
	1
	),
(	2.0,
	N'XTS',
	1
	),
(	2.0,
	N'XTS',
	1
	),
(	2.0,
	N'XTS',
	1
	),
(	2.0,
	N'XTS',
	1
	),
(	2.0,
	N'XTS',
	1
	),
(	2.5,
	N'XTS',
	1
	),
(	2.5,
	N'XTS',
	1
	),
(	2.5,
	N'XTS',
	1
	),
(	2.5,
	N'XTS',
	1
	),
(	3.0,
	N'XTS',
	1
	),
(	3.0,
	N'XTS',
	1
	),
(	3.0,
	N'XTS',
	1
	)

GO--Creating days for trainers
INSERT INTO dbo.Days
(
    Id,
    Week_day,
    Trainer_Id
)
VALUES ----------------------------trainer 3
(   07013,         -- Id - int
    7, -- Week_day -- int
    3         -- Trainer_Id - int
    ),
(	07023,
	1,-- Week_day -- int
	3
	),
(   07033,         -- Id - int
    2, -- Week_day -- int
    3          -- Trainer_Id - int
    ),
(	07043,
	3,
	3
	),
(   07053,         -- Id - int
    4, -- Week_day -- int
    3         -- Trainer_Id - int
    ),
(	07063,
	5,
	3
	),
(   07073,         -- Id - int
    6, -- Week_day -- int
    3          -- Trainer_Id - int
    ),
(	07083,
	7,
	3
	),
(   07093,         -- Id - int
    1, -- Week_day -- int
    3          -- Trainer_Id - int
    ),
(	07103,
	2,
	3
	),
(   07113,         -- Id - int
    3, -- Week_day -- int
    3          -- Trainer_Id - int
    ),
(	07123,
	4,
	3
	),
(   07133,         -- Id - int
    5, -- Week_day -- int
    3          -- Trainer_Id - int
    ),
(	07143,
	6,
	3
	),----------------------------------- trainer 2
(   07012,         -- Id - int
    7, -- Week_day -- int
    2          -- Trainer_Id - int
    ),
(	07022,
	1,-- Week_day -- int
	2
	),
(   07032,         -- Id - int
    2, -- Week_day -- int
    2          -- Trainer_Id - int
    ),
(	07042,
	3,
	2
	),
(   07052,         -- Id - int
    4, -- Week_day -- int
    2          -- Trainer_Id - int
    ),
(	07062,
	5,
	2
	),
(   07072,         -- Id - int
    6, -- Week_day -- int
    2          -- Trainer_Id - int
    ),
(	07082,
	7,
	2
	),
(   07092,         -- Id - int
    1, -- Week_day -- int
    2          -- Trainer_Id - int
    ),
(	07102,
	2,
	2
	),
(   07112,         -- Id - int
    3, -- Week_day -- int
    2          -- Trainer_Id - int
    ),
(	07122,
	4,
	2
	),
(   07132,         -- Id - int
    5, -- Week_day -- int
    2          -- Trainer_Id - int
    ),
(	07142,
	6,
	2
	),------------------------------trainer 4
(   07014,         -- Id - int
    7, -- Week_day -- int
    4          -- Trainer_Id - int
    ),
(	07024,
	1,-- Week_day -- int
	4
	),
(   07034,         -- Id - int
    2, -- Week_day -- int
    4          -- Trainer_Id - int
    ),
(	07044,
	3,
	4
	),
(   07054,         -- Id - int
    4, -- Week_day -- int
    4          -- Trainer_Id - int
    ),
(	07064,
	5,
	4
	),
(   07074,         -- Id - int
    6, -- Week_day -- int
    4          -- Trainer_Id - int
    ),
(	07084,
	7,
	4
	),
(   07094,         -- Id - int
    1, -- Week_day -- int
    4          -- Trainer_Id - int
    ),
(	07104,
	2,
	4
	),
(   07114,         -- Id - int
    3, -- Week_day -- int
    4          -- Trainer_Id - int
    ),
(	07124,
	4,
	4
	),
(   07134,         -- Id - int
    5, -- Week_day -- int
    4          -- Trainer_Id - int
    ),
(	07144,
	6,
	4
	)

INSERT INTO dbo.Equipments
(
    Hangar_Id
)
VALUES
(0  -- Hangar_Id - int
    )

GO
--Wetsuits
DECLARE @i int = 0
WHILE @i < 20
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	insert into dbo.Equipments_Wetsuit
	(
		Size,
		Type,
		Eq_Id
	)
	VALUES
	(   N'S', -- Size - nvarchar(max)
		N'Short', -- Type - nvarchar(max)
		SCOPE_IDENTITY()    -- Eq_Id - int
    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 20
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	insert into dbo.Equipments_Wetsuit
	(
		Size,
		Type,
		Eq_Id
	)
	VALUES
	(   N'M', -- Size - nvarchar(max)
		N'Short', -- Type - nvarchar(max)
		SCOPE_IDENTITY()    -- Eq_Id - int
    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 20
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	insert into dbo.Equipments_Wetsuit
	(
		Size,
		Type,
		Eq_Id
	)
	VALUES
	(   N'L', -- Size - nvarchar(max)
		N'Short', -- Type - nvarchar(max)
		SCOPE_IDENTITY()    -- Eq_Id - int
    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 4
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	insert into dbo.Equipments_Wetsuit
	(
		Size,
		Type,
		Eq_Id
	)
	VALUES
	(   N'XL', -- Size - nvarchar(max)
		N'Short', -- Type - nvarchar(max)
		SCOPE_IDENTITY()    -- Eq_Id - int
    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 20
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	insert into dbo.Equipments_Wetsuit
	(
		Size,
		Type,
		Eq_Id
	)
	VALUES
	(   N'S', -- Size - nvarchar(max)
		N'Long', -- Type - nvarchar(max)
		SCOPE_IDENTITY()    -- Eq_Id - int
    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 20
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	insert into dbo.Equipments_Wetsuit
	(
		Size,
		Type,
		Eq_Id
	)
	VALUES
	(   N'M', -- Size - nvarchar(max)
		N'Long', -- Type - nvarchar(max)
		SCOPE_IDENTITY()    -- Eq_Id - int
    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 20
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	insert into dbo.Equipments_Wetsuit
	(
		Size,
		Type,
		Eq_Id
	)
	VALUES
	(   N'L', -- Size - nvarchar(max)
		N'Long', -- Type - nvarchar(max)
		SCOPE_IDENTITY()    -- Eq_Id - int
    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 8
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	insert into dbo.Equipments_Wetsuit
	(
		Size,
		Type,
		Eq_Id
	)
	VALUES
	(   N'XL', -- Size - nvarchar(max)
		N'Long', -- Type - nvarchar(max)
		SCOPE_IDENTITY()    -- Eq_Id - int
    )
	
END

SELECT * FROM dbo.Equipments_Wetsuit

--Vests
GO
DECLARE @i int = 0
WHILE @i < 4
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT INTO dbo.Equipments_Vest
	(
	    Size,
	    Buoyancy,
	    Eq_Id
	)
	VALUES
	(   N'XS', -- Size - nvarchar(max)
	    30,   -- Buoyancy - int
	    SCOPE_IDENTITY()    -- Eq_Id - int
	)
	
END

GO
DECLARE @i int = 0
WHILE @i < 15
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT INTO dbo.Equipments_Vest
	(
	    Size,
	    Buoyancy,
	    Eq_Id
	)
	VALUES
	(   N'S', -- Size - nvarchar(max)
	    50,   -- Buoyancy - int
	    SCOPE_IDENTITY()    -- Eq_Id - int
	)
	
END

GO
DECLARE @i int = 0
WHILE @i < 15
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT INTO dbo.Equipments_Vest
	(
	    Size,
	    Buoyancy,
	    Eq_Id
	)
	VALUES
	(   N'M', -- Size - nvarchar(max)
	    60,   -- Buoyancy - int
	    SCOPE_IDENTITY()    -- Eq_Id - int
	)
	
END

GO
DECLARE @i int = 0
WHILE @i < 15
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT INTO dbo.Equipments_Vest
	(
	    Size,
	    Buoyancy,
	    Eq_Id
	)
	VALUES
	(   N'L', -- Size - nvarchar(max)
	    80,   -- Buoyancy - int
	    SCOPE_IDENTITY()    -- Eq_Id - int
	)
	
END

GO
DECLARE @i int = 0
WHILE @i < 15
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT INTO dbo.Equipments_Vest
	(
	    Size,
	    Buoyancy,
	    Eq_Id
	)
	VALUES
	(   N'XL', -- Size - nvarchar(max)
	    100,   -- Buoyancy - int
	    SCOPE_IDENTITY()    -- Eq_Id - int
	)
	
END

SELECT * FROM dbo.Equipments_Vest

--Harnesses

GO
DECLARE @i int = 0
WHILE @i < 5
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'XS', -- Size - nchar(4000)
	    N'Wind', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 10
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'S', -- Size - nchar(4000)
	    N'Wind', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 10
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'M', -- Size - nchar(4000)
	    N'Wind', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 10
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'L', -- Size - nchar(4000)
	    N'Wind', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 5
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'XL', -- Size - nchar(4000)
	    N'Wind', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END
--kite
GO
DECLARE @i int = 0
WHILE @i < 8
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'XS', -- Size - nchar(4000)
	    N'Kite', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 8
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'S', -- Size - nchar(4000)
	    N'Kite', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 8
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'M', -- Size - nchar(4000)
	    N'Kite', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 8
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'L', -- Size - nchar(4000)
	    N'Kite', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END

GO
DECLARE @i int = 0
WHILE @i < 8
BEGIN
    SET @i = @i + 1
    /* do some work */
	INSERT into Equipments values (1)

	INSERT dbo.Equipments_Harness
	(
	    Size,
	    Type,
	    Eq_Id
	)
	VALUES
	(   N'XL', -- Size - nchar(4000)
	    N'Kite', -- Type - nvarchar(max)
	    SCOPE_IDENTITY()    -- Eq_Id - int
	    )
	
END

SELECT * FROM dbo.Equipments_Harness

--assigning clients to their school
SELECT * FROM dbo.Clients
GO
DECLARE @i INT = 0
WHILE @i < (SELECT COUNT(*) FROM dbo.Clients)
BEGIN
	SET @i = @i + 1
	INSERT INTO dbo.ClientSchool
	(
		Clients_Id,
		Schools_Id
	)
	VALUES
	(   @i, -- Clients_Id - int
		1  -- Schools_Id - int
    )
END
SELECT * FROM dbo.ClientSchool

