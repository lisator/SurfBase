
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/25/2017 13:08:16
-- Generated from EDMX file: C:\Users\Lisek\Polibuda\Programming Technologies\SurfBase\SurfBase\SurfBase\Base.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SurfBase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_HangarRig]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rigs] DROP CONSTRAINT [FK_HangarRig];
GO
IF OBJECT_ID(N'[dbo].[FK_EquipmentHangar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipments] DROP CONSTRAINT [FK_EquipmentHangar];
GO
IF OBJECT_ID(N'[dbo].[FK_BoardRig]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rigs] DROP CONSTRAINT [FK_BoardRig];
GO
IF OBJECT_ID(N'[dbo].[FK_SailRig]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rigs] DROP CONSTRAINT [FK_SailRig];
GO
IF OBJECT_ID(N'[dbo].[FK_ScheduleDay]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Days] DROP CONSTRAINT [FK_ScheduleDay];
GO
IF OBJECT_ID(N'[dbo].[FK_DayHour]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Hours] DROP CONSTRAINT [FK_DayHour];
GO
IF OBJECT_ID(N'[dbo].[FK_Wetsuit_inherits_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipments_Wetsuit] DROP CONSTRAINT [FK_Wetsuit_inherits_Equipment];
GO
IF OBJECT_ID(N'[dbo].[FK_Harness_inherits_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipments_Harness] DROP CONSTRAINT [FK_Harness_inherits_Equipment];
GO
IF OBJECT_ID(N'[dbo].[FK_Vest_inherits_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipments_Vest] DROP CONSTRAINT [FK_Vest_inherits_Equipment];
GO
IF OBJECT_ID(N'[dbo].[FK_WindHarness_inherits_Harness]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipments_WindHarness] DROP CONSTRAINT [FK_WindHarness_inherits_Harness];
GO
IF OBJECT_ID(N'[dbo].[FK_KiteHarness_inherits_Harness]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipments_KiteHarness] DROP CONSTRAINT [FK_KiteHarness_inherits_Harness];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Hangars]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Hangars];
GO
IF OBJECT_ID(N'[dbo].[Rigs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rigs];
GO
IF OBJECT_ID(N'[dbo].[Equipments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipments];
GO
IF OBJECT_ID(N'[dbo].[Boards]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Boards];
GO
IF OBJECT_ID(N'[dbo].[Sails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sails];
GO
IF OBJECT_ID(N'[dbo].[Schedules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Schedules];
GO
IF OBJECT_ID(N'[dbo].[Days]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Days];
GO
IF OBJECT_ID(N'[dbo].[Hours]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Hours];
GO
IF OBJECT_ID(N'[dbo].[Equipments_Wetsuit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipments_Wetsuit];
GO
IF OBJECT_ID(N'[dbo].[Equipments_Harness]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipments_Harness];
GO
IF OBJECT_ID(N'[dbo].[Equipments_Vest]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipments_Vest];
GO
IF OBJECT_ID(N'[dbo].[Equipments_WindHarness]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipments_WindHarness];
GO
IF OBJECT_ID(N'[dbo].[Equipments_KiteHarness]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipments_KiteHarness];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Hangars'
CREATE TABLE [dbo].[Hangars] (
    [Hangar_id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Rigs'
CREATE TABLE [dbo].[Rigs] (
    [Rig_id] int IDENTITY(1,1) NOT NULL,
    [Board_Board_id] int  NOT NULL,
    [Sail_Sail_id] int  NULL,
    [Rental_Id] int  NOT NULL
);
GO

-- Creating table 'Equipments'
CREATE TABLE [dbo].[Equipments] (
    [Equipment_id] int IDENTITY(1,1) NOT NULL,
    [Hangar_Hangar_id] int  NOT NULL
);
GO

-- Creating table 'Boards'
CREATE TABLE [dbo].[Boards] (
    [Board_id] int IDENTITY(1,1) NOT NULL,
    [Length] int  NULL,
    [Volume] int  NOT NULL,
    [Make] nvarchar(max)  NULL,
    [Type] bit  NOT NULL,
    [Hangar_Hangar_id] int  NOT NULL
);
GO

-- Creating table 'Sails'
CREATE TABLE [dbo].[Sails] (
    [Sail_id] int IDENTITY(1,1) NOT NULL,
    [Size] int  NOT NULL,
    [Make] nvarchar(max)  NULL,
    [Hangar_Hangar_id] int  NOT NULL
);
GO

-- Creating table 'Schedules'
CREATE TABLE [dbo].[Schedules] (
    [Schedule_id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Days'
CREATE TABLE [dbo].[Days] (
    [Day_id] int IDENTITY(1,1) NOT NULL,
    [Week_day] nvarchar(max)  NOT NULL,
    [Schedule_Schedule_id] int  NOT NULL
);
GO

-- Creating table 'Hours'
CREATE TABLE [dbo].[Hours] (
    [Time] time  NOT NULL,
    [Day_Day_id] int  NOT NULL
);
GO

-- Creating table 'Rentals'
CREATE TABLE [dbo].[Rentals] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Equipments_Wetsuit'
CREATE TABLE [dbo].[Equipments_Wetsuit] (
    [Wetsuit_id] int IDENTITY(1,1) NOT NULL,
    [Size] nvarchar(max)  NOT NULL,
    [Type] bit  NULL,
    [Equipment_id] int  NOT NULL
);
GO

-- Creating table 'Equipments_Harness'
CREATE TABLE [dbo].[Equipments_Harness] (
    [Harness_id] int IDENTITY(1,1) NOT NULL,
    [Size] nvarchar(max)  NULL,
    [Equipment_id] int  NOT NULL
);
GO

-- Creating table 'Equipments_Vest'
CREATE TABLE [dbo].[Equipments_Vest] (
    [Vest_id] int IDENTITY(1,1) NOT NULL,
    [Size] nvarchar(max)  NOT NULL,
    [Buoyancy] int  NULL,
    [Equipment_id] int  NOT NULL
);
GO

-- Creating table 'Equipments_WindHarness'
CREATE TABLE [dbo].[Equipments_WindHarness] (
    [Equipment_id] int  NOT NULL
);
GO

-- Creating table 'Equipments_KiteHarness'
CREATE TABLE [dbo].[Equipments_KiteHarness] (
    [Equipment_id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Hangar_id] in table 'Hangars'
ALTER TABLE [dbo].[Hangars]
ADD CONSTRAINT [PK_Hangars]
    PRIMARY KEY CLUSTERED ([Hangar_id] ASC);
GO

-- Creating primary key on [Rig_id] in table 'Rigs'
ALTER TABLE [dbo].[Rigs]
ADD CONSTRAINT [PK_Rigs]
    PRIMARY KEY CLUSTERED ([Rig_id] ASC);
GO

-- Creating primary key on [Equipment_id] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [PK_Equipments]
    PRIMARY KEY CLUSTERED ([Equipment_id] ASC);
GO

-- Creating primary key on [Board_id] in table 'Boards'
ALTER TABLE [dbo].[Boards]
ADD CONSTRAINT [PK_Boards]
    PRIMARY KEY CLUSTERED ([Board_id] ASC);
GO

-- Creating primary key on [Sail_id] in table 'Sails'
ALTER TABLE [dbo].[Sails]
ADD CONSTRAINT [PK_Sails]
    PRIMARY KEY CLUSTERED ([Sail_id] ASC);
GO

-- Creating primary key on [Schedule_id] in table 'Schedules'
ALTER TABLE [dbo].[Schedules]
ADD CONSTRAINT [PK_Schedules]
    PRIMARY KEY CLUSTERED ([Schedule_id] ASC);
GO

-- Creating primary key on [Day_id] in table 'Days'
ALTER TABLE [dbo].[Days]
ADD CONSTRAINT [PK_Days]
    PRIMARY KEY CLUSTERED ([Day_id] ASC);
GO

-- Creating primary key on [Time] in table 'Hours'
ALTER TABLE [dbo].[Hours]
ADD CONSTRAINT [PK_Hours]
    PRIMARY KEY CLUSTERED ([Time] ASC);
GO

-- Creating primary key on [Id] in table 'Rentals'
ALTER TABLE [dbo].[Rentals]
ADD CONSTRAINT [PK_Rentals]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Equipment_id] in table 'Equipments_Wetsuit'
ALTER TABLE [dbo].[Equipments_Wetsuit]
ADD CONSTRAINT [PK_Equipments_Wetsuit]
    PRIMARY KEY CLUSTERED ([Equipment_id] ASC);
GO

-- Creating primary key on [Equipment_id] in table 'Equipments_Harness'
ALTER TABLE [dbo].[Equipments_Harness]
ADD CONSTRAINT [PK_Equipments_Harness]
    PRIMARY KEY CLUSTERED ([Equipment_id] ASC);
GO

-- Creating primary key on [Equipment_id] in table 'Equipments_Vest'
ALTER TABLE [dbo].[Equipments_Vest]
ADD CONSTRAINT [PK_Equipments_Vest]
    PRIMARY KEY CLUSTERED ([Equipment_id] ASC);
GO

-- Creating primary key on [Equipment_id] in table 'Equipments_WindHarness'
ALTER TABLE [dbo].[Equipments_WindHarness]
ADD CONSTRAINT [PK_Equipments_WindHarness]
    PRIMARY KEY CLUSTERED ([Equipment_id] ASC);
GO

-- Creating primary key on [Equipment_id] in table 'Equipments_KiteHarness'
ALTER TABLE [dbo].[Equipments_KiteHarness]
ADD CONSTRAINT [PK_Equipments_KiteHarness]
    PRIMARY KEY CLUSTERED ([Equipment_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Hangar_Hangar_id] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [FK_EquipmentHangar]
    FOREIGN KEY ([Hangar_Hangar_id])
    REFERENCES [dbo].[Hangars]
        ([Hangar_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EquipmentHangar'
CREATE INDEX [IX_FK_EquipmentHangar]
ON [dbo].[Equipments]
    ([Hangar_Hangar_id]);
GO

-- Creating foreign key on [Board_Board_id] in table 'Rigs'
ALTER TABLE [dbo].[Rigs]
ADD CONSTRAINT [FK_BoardRig]
    FOREIGN KEY ([Board_Board_id])
    REFERENCES [dbo].[Boards]
        ([Board_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BoardRig'
CREATE INDEX [IX_FK_BoardRig]
ON [dbo].[Rigs]
    ([Board_Board_id]);
GO

-- Creating foreign key on [Sail_Sail_id] in table 'Rigs'
ALTER TABLE [dbo].[Rigs]
ADD CONSTRAINT [FK_SailRig]
    FOREIGN KEY ([Sail_Sail_id])
    REFERENCES [dbo].[Sails]
        ([Sail_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SailRig'
CREATE INDEX [IX_FK_SailRig]
ON [dbo].[Rigs]
    ([Sail_Sail_id]);
GO

-- Creating foreign key on [Schedule_Schedule_id] in table 'Days'
ALTER TABLE [dbo].[Days]
ADD CONSTRAINT [FK_ScheduleDay]
    FOREIGN KEY ([Schedule_Schedule_id])
    REFERENCES [dbo].[Schedules]
        ([Schedule_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ScheduleDay'
CREATE INDEX [IX_FK_ScheduleDay]
ON [dbo].[Days]
    ([Schedule_Schedule_id]);
GO

-- Creating foreign key on [Day_Day_id] in table 'Hours'
ALTER TABLE [dbo].[Hours]
ADD CONSTRAINT [FK_DayHour]
    FOREIGN KEY ([Day_Day_id])
    REFERENCES [dbo].[Days]
        ([Day_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DayHour'
CREATE INDEX [IX_FK_DayHour]
ON [dbo].[Hours]
    ([Day_Day_id]);
GO

-- Creating foreign key on [Rental_Id] in table 'Rigs'
ALTER TABLE [dbo].[Rigs]
ADD CONSTRAINT [FK_RentalRig]
    FOREIGN KEY ([Rental_Id])
    REFERENCES [dbo].[Rentals]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RentalRig'
CREATE INDEX [IX_FK_RentalRig]
ON [dbo].[Rigs]
    ([Rental_Id]);
GO

-- Creating foreign key on [Hangar_Hangar_id] in table 'Sails'
ALTER TABLE [dbo].[Sails]
ADD CONSTRAINT [FK_HangarSail]
    FOREIGN KEY ([Hangar_Hangar_id])
    REFERENCES [dbo].[Hangars]
        ([Hangar_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HangarSail'
CREATE INDEX [IX_FK_HangarSail]
ON [dbo].[Sails]
    ([Hangar_Hangar_id]);
GO

-- Creating foreign key on [Hangar_Hangar_id] in table 'Boards'
ALTER TABLE [dbo].[Boards]
ADD CONSTRAINT [FK_HangarBoard]
    FOREIGN KEY ([Hangar_Hangar_id])
    REFERENCES [dbo].[Hangars]
        ([Hangar_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HangarBoard'
CREATE INDEX [IX_FK_HangarBoard]
ON [dbo].[Boards]
    ([Hangar_Hangar_id]);
GO

-- Creating foreign key on [Equipment_id] in table 'Equipments_Wetsuit'
ALTER TABLE [dbo].[Equipments_Wetsuit]
ADD CONSTRAINT [FK_Wetsuit_inherits_Equipment]
    FOREIGN KEY ([Equipment_id])
    REFERENCES [dbo].[Equipments]
        ([Equipment_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Equipment_id] in table 'Equipments_Harness'
ALTER TABLE [dbo].[Equipments_Harness]
ADD CONSTRAINT [FK_Harness_inherits_Equipment]
    FOREIGN KEY ([Equipment_id])
    REFERENCES [dbo].[Equipments]
        ([Equipment_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Equipment_id] in table 'Equipments_Vest'
ALTER TABLE [dbo].[Equipments_Vest]
ADD CONSTRAINT [FK_Vest_inherits_Equipment]
    FOREIGN KEY ([Equipment_id])
    REFERENCES [dbo].[Equipments]
        ([Equipment_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Equipment_id] in table 'Equipments_WindHarness'
ALTER TABLE [dbo].[Equipments_WindHarness]
ADD CONSTRAINT [FK_WindHarness_inherits_Harness]
    FOREIGN KEY ([Equipment_id])
    REFERENCES [dbo].[Equipments_Harness]
        ([Equipment_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Equipment_id] in table 'Equipments_KiteHarness'
ALTER TABLE [dbo].[Equipments_KiteHarness]
ADD CONSTRAINT [FK_KiteHarness_inherits_Harness]
    FOREIGN KEY ([Equipment_id])
    REFERENCES [dbo].[Equipments_Harness]
        ([Equipment_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------