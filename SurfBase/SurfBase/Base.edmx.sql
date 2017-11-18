
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/16/2017 19:55:10
-- Generated from EDMX file: L:\Lisek\Polibuda\Programming Technologies\SurfBase\SurfBase\SurfBase\Base.edmx
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

IF OBJECT_ID(N'[dbo].[FK_EquipmentHangar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipments] DROP CONSTRAINT [FK_EquipmentHangar];
GO
IF OBJECT_ID(N'[dbo].[FK_BoardRig]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rigs] DROP CONSTRAINT [FK_BoardRig];
GO
IF OBJECT_ID(N'[dbo].[FK_SailRig]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rigs] DROP CONSTRAINT [FK_SailRig];
GO
IF OBJECT_ID(N'[dbo].[FK_DayHour]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Hours] DROP CONSTRAINT [FK_DayHour];
GO
IF OBJECT_ID(N'[dbo].[FK_RentalRig]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rentals] DROP CONSTRAINT [FK_RentalRig];
GO
IF OBJECT_ID(N'[dbo].[FK_HangarSail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sails] DROP CONSTRAINT [FK_HangarSail];
GO
IF OBJECT_ID(N'[dbo].[FK_HangarBoard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Boards] DROP CONSTRAINT [FK_HangarBoard];
GO
IF OBJECT_ID(N'[dbo].[FK_SchoolHangar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Hangars] DROP CONSTRAINT [FK_SchoolHangar];
GO
IF OBJECT_ID(N'[dbo].[FK_SchoolTrainer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trainers] DROP CONSTRAINT [FK_SchoolTrainer];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientSchool_Client]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientSchool] DROP CONSTRAINT [FK_ClientSchool_Client];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientSchool_School]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientSchool] DROP CONSTRAINT [FK_ClientSchool_School];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientTrainer_Client]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientTrainer] DROP CONSTRAINT [FK_ClientTrainer_Client];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientTrainer_Trainer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientTrainer] DROP CONSTRAINT [FK_ClientTrainer_Trainer];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientHour]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Hours] DROP CONSTRAINT [FK_ClientHour];
GO
IF OBJECT_ID(N'[dbo].[FK_RentalHour]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rentals] DROP CONSTRAINT [FK_RentalHour];
GO
IF OBJECT_ID(N'[dbo].[FK_RentalClient]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rentals] DROP CONSTRAINT [FK_RentalClient];
GO
IF OBJECT_ID(N'[dbo].[FK_TrainerDay]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Days] DROP CONSTRAINT [FK_TrainerDay];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientBoard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [FK_ClientBoard];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientSail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [FK_ClientSail];
GO
IF OBJECT_ID(N'[dbo].[FK_RentalEquipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipments] DROP CONSTRAINT [FK_RentalEquipment];
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
IF OBJECT_ID(N'[dbo].[Days]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Days];
GO
IF OBJECT_ID(N'[dbo].[Hours]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Hours];
GO
IF OBJECT_ID(N'[dbo].[Rentals]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rentals];
GO
IF OBJECT_ID(N'[dbo].[Schools]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Schools];
GO
IF OBJECT_ID(N'[dbo].[Trainers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Trainers];
GO
IF OBJECT_ID(N'[dbo].[Clients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clients];
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
IF OBJECT_ID(N'[dbo].[ClientSchool]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClientSchool];
GO
IF OBJECT_ID(N'[dbo].[ClientTrainer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClientTrainer];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Hangars'
CREATE TABLE [dbo].[Hangars] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL,
    [School_Id] int  NOT NULL
);
GO

-- Creating table 'Rigs'
CREATE TABLE [dbo].[Rigs] (
    [Id] int  NOT NULL,
    [Board_Id] int  NOT NULL,
    [Sail_Id] int  NULL
);
GO

-- Creating table 'Equipments'
CREATE TABLE [dbo].[Equipments] (
    [Eq_Id] int IDENTITY(1,1) NOT NULL,
    [Hangar_Id] int  NOT NULL
);
GO

-- Creating table 'Boards'
CREATE TABLE [dbo].[Boards] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Length] int  NULL,
    [Volume] int  NOT NULL,
    [Make] nvarchar(max)  NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Hangar_Id] int  NOT NULL
);
GO

-- Creating table 'Sails'
CREATE TABLE [dbo].[Sails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Size] float  NOT NULL,
    [Make] nvarchar(max)  NULL,
    [Hangar_Id] int  NOT NULL
);
GO

-- Creating table 'Days'
CREATE TABLE [dbo].[Days] (
    [Id] int  NOT NULL,
    [Week_day] int  NOT NULL,
    [Trainer_Id] int  NOT NULL
);
GO

-- Creating table 'Hours'
CREATE TABLE [dbo].[Hours] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Day_Id] int  NOT NULL,
    [Client_Id] int  NULL
);
GO

-- Creating table 'Rentals'
CREATE TABLE [dbo].[Rentals] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Rig_Id] int  NOT NULL,
    [Hour_Id] int  NOT NULL,
    [Client_Id] int  NOT NULL
);
GO

-- Creating table 'Schools'
CREATE TABLE [dbo].[Schools] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL
);
GO

-- Creating table 'Trainers'
CREATE TABLE [dbo].[Trainers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL,
    [Last_Name] nvarchar(max)  NULL,
    [Nickname] nvarchar(max)  NULL,
    [School_Id] int  NOT NULL
);
GO

-- Creating table 'Clients'
CREATE TABLE [dbo].[Clients] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Last_Name] nvarchar(max)  NOT NULL,
    [Age] int  NOT NULL,
    [Last_Board_Id] int  NULL,
    [Last_Sail_Id] int  NULL
);
GO

-- Creating table 'Equipments_Wetsuit'
CREATE TABLE [dbo].[Equipments_Wetsuit] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Size] nvarchar(max)  NOT NULL,
    [Type] nvarchar(max)  NULL,
    [Eq_Id] int  NOT NULL
);
GO

-- Creating table 'Equipments_Harness'
CREATE TABLE [dbo].[Equipments_Harness] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Size] nvarchar(4000)  NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Eq_Id] int  NOT NULL
);
GO

-- Creating table 'Equipments_Vest'
CREATE TABLE [dbo].[Equipments_Vest] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Size] nvarchar(max)  NOT NULL,
    [Buoyancy] int  NULL,
    [Eq_Id] int  NOT NULL
);
GO

-- Creating table 'ClientSchool'
CREATE TABLE [dbo].[ClientSchool] (
    [Clients_Id] int  NOT NULL,
    [Schools_Id] int  NOT NULL
);
GO

-- Creating table 'ClientTrainer'
CREATE TABLE [dbo].[ClientTrainer] (
    [Clients_Id] int  NOT NULL,
    [Trainers_Id] int  NOT NULL
);
GO

-- Creating table 'RentalEquipment'
CREATE TABLE [dbo].[RentalEquipment] (
    [Rental_Id] int  NOT NULL,
    [Equipments_Eq_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Hangars'
ALTER TABLE [dbo].[Hangars]
ADD CONSTRAINT [PK_Hangars]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Rigs'
ALTER TABLE [dbo].[Rigs]
ADD CONSTRAINT [PK_Rigs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Eq_Id] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [PK_Equipments]
    PRIMARY KEY CLUSTERED ([Eq_Id] ASC);
GO

-- Creating primary key on [Id] in table 'Boards'
ALTER TABLE [dbo].[Boards]
ADD CONSTRAINT [PK_Boards]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sails'
ALTER TABLE [dbo].[Sails]
ADD CONSTRAINT [PK_Sails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Days'
ALTER TABLE [dbo].[Days]
ADD CONSTRAINT [PK_Days]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Hours'
ALTER TABLE [dbo].[Hours]
ADD CONSTRAINT [PK_Hours]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Rentals'
ALTER TABLE [dbo].[Rentals]
ADD CONSTRAINT [PK_Rentals]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Schools'
ALTER TABLE [dbo].[Schools]
ADD CONSTRAINT [PK_Schools]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Trainers'
ALTER TABLE [dbo].[Trainers]
ADD CONSTRAINT [PK_Trainers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Eq_Id] in table 'Equipments_Wetsuit'
ALTER TABLE [dbo].[Equipments_Wetsuit]
ADD CONSTRAINT [PK_Equipments_Wetsuit]
    PRIMARY KEY CLUSTERED ([Eq_Id] ASC);
GO

-- Creating primary key on [Eq_Id] in table 'Equipments_Harness'
ALTER TABLE [dbo].[Equipments_Harness]
ADD CONSTRAINT [PK_Equipments_Harness]
    PRIMARY KEY CLUSTERED ([Eq_Id] ASC);
GO

-- Creating primary key on [Eq_Id] in table 'Equipments_Vest'
ALTER TABLE [dbo].[Equipments_Vest]
ADD CONSTRAINT [PK_Equipments_Vest]
    PRIMARY KEY CLUSTERED ([Eq_Id] ASC);
GO

-- Creating primary key on [Clients_Id], [Schools_Id] in table 'ClientSchool'
ALTER TABLE [dbo].[ClientSchool]
ADD CONSTRAINT [PK_ClientSchool]
    PRIMARY KEY CLUSTERED ([Clients_Id], [Schools_Id] ASC);
GO

-- Creating primary key on [Clients_Id], [Trainers_Id] in table 'ClientTrainer'
ALTER TABLE [dbo].[ClientTrainer]
ADD CONSTRAINT [PK_ClientTrainer]
    PRIMARY KEY CLUSTERED ([Clients_Id], [Trainers_Id] ASC);
GO

-- Creating primary key on [Rental_Id], [Equipments_Eq_Id] in table 'RentalEquipment'
ALTER TABLE [dbo].[RentalEquipment]
ADD CONSTRAINT [PK_RentalEquipment]
    PRIMARY KEY CLUSTERED ([Rental_Id], [Equipments_Eq_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Hangar_Id] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [FK_EquipmentHangar]
    FOREIGN KEY ([Hangar_Id])
    REFERENCES [dbo].[Hangars]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EquipmentHangar'
CREATE INDEX [IX_FK_EquipmentHangar]
ON [dbo].[Equipments]
    ([Hangar_Id]);
GO

-- Creating foreign key on [Board_Id] in table 'Rigs'
ALTER TABLE [dbo].[Rigs]
ADD CONSTRAINT [FK_BoardRig]
    FOREIGN KEY ([Board_Id])
    REFERENCES [dbo].[Boards]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BoardRig'
CREATE INDEX [IX_FK_BoardRig]
ON [dbo].[Rigs]
    ([Board_Id]);
GO

-- Creating foreign key on [Sail_Id] in table 'Rigs'
ALTER TABLE [dbo].[Rigs]
ADD CONSTRAINT [FK_SailRig]
    FOREIGN KEY ([Sail_Id])
    REFERENCES [dbo].[Sails]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SailRig'
CREATE INDEX [IX_FK_SailRig]
ON [dbo].[Rigs]
    ([Sail_Id]);
GO

-- Creating foreign key on [Day_Id] in table 'Hours'
ALTER TABLE [dbo].[Hours]
ADD CONSTRAINT [FK_DayHour]
    FOREIGN KEY ([Day_Id])
    REFERENCES [dbo].[Days]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DayHour'
CREATE INDEX [IX_FK_DayHour]
ON [dbo].[Hours]
    ([Day_Id]);
GO

-- Creating foreign key on [Rig_Id] in table 'Rentals'
ALTER TABLE [dbo].[Rentals]
ADD CONSTRAINT [FK_RentalRig]
    FOREIGN KEY ([Rig_Id])
    REFERENCES [dbo].[Rigs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RentalRig'
CREATE INDEX [IX_FK_RentalRig]
ON [dbo].[Rentals]
    ([Rig_Id]);
GO

-- Creating foreign key on [Hangar_Id] in table 'Sails'
ALTER TABLE [dbo].[Sails]
ADD CONSTRAINT [FK_HangarSail]
    FOREIGN KEY ([Hangar_Id])
    REFERENCES [dbo].[Hangars]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HangarSail'
CREATE INDEX [IX_FK_HangarSail]
ON [dbo].[Sails]
    ([Hangar_Id]);
GO

-- Creating foreign key on [Hangar_Id] in table 'Boards'
ALTER TABLE [dbo].[Boards]
ADD CONSTRAINT [FK_HangarBoard]
    FOREIGN KEY ([Hangar_Id])
    REFERENCES [dbo].[Hangars]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HangarBoard'
CREATE INDEX [IX_FK_HangarBoard]
ON [dbo].[Boards]
    ([Hangar_Id]);
GO

-- Creating foreign key on [School_Id] in table 'Hangars'
ALTER TABLE [dbo].[Hangars]
ADD CONSTRAINT [FK_SchoolHangar]
    FOREIGN KEY ([School_Id])
    REFERENCES [dbo].[Schools]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolHangar'
CREATE INDEX [IX_FK_SchoolHangar]
ON [dbo].[Hangars]
    ([School_Id]);
GO

-- Creating foreign key on [School_Id] in table 'Trainers'
ALTER TABLE [dbo].[Trainers]
ADD CONSTRAINT [FK_SchoolTrainer]
    FOREIGN KEY ([School_Id])
    REFERENCES [dbo].[Schools]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SchoolTrainer'
CREATE INDEX [IX_FK_SchoolTrainer]
ON [dbo].[Trainers]
    ([School_Id]);
GO

-- Creating foreign key on [Clients_Id] in table 'ClientSchool'
ALTER TABLE [dbo].[ClientSchool]
ADD CONSTRAINT [FK_ClientSchool_Client]
    FOREIGN KEY ([Clients_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Schools_Id] in table 'ClientSchool'
ALTER TABLE [dbo].[ClientSchool]
ADD CONSTRAINT [FK_ClientSchool_School]
    FOREIGN KEY ([Schools_Id])
    REFERENCES [dbo].[Schools]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientSchool_School'
CREATE INDEX [IX_FK_ClientSchool_School]
ON [dbo].[ClientSchool]
    ([Schools_Id]);
GO

-- Creating foreign key on [Clients_Id] in table 'ClientTrainer'
ALTER TABLE [dbo].[ClientTrainer]
ADD CONSTRAINT [FK_ClientTrainer_Client]
    FOREIGN KEY ([Clients_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Trainers_Id] in table 'ClientTrainer'
ALTER TABLE [dbo].[ClientTrainer]
ADD CONSTRAINT [FK_ClientTrainer_Trainer]
    FOREIGN KEY ([Trainers_Id])
    REFERENCES [dbo].[Trainers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientTrainer_Trainer'
CREATE INDEX [IX_FK_ClientTrainer_Trainer]
ON [dbo].[ClientTrainer]
    ([Trainers_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'Hours'
ALTER TABLE [dbo].[Hours]
ADD CONSTRAINT [FK_ClientHour]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientHour'
CREATE INDEX [IX_FK_ClientHour]
ON [dbo].[Hours]
    ([Client_Id]);
GO

-- Creating foreign key on [Hour_Id] in table 'Rentals'
ALTER TABLE [dbo].[Rentals]
ADD CONSTRAINT [FK_RentalHour]
    FOREIGN KEY ([Hour_Id])
    REFERENCES [dbo].[Hours]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RentalHour'
CREATE INDEX [IX_FK_RentalHour]
ON [dbo].[Rentals]
    ([Hour_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'Rentals'
ALTER TABLE [dbo].[Rentals]
ADD CONSTRAINT [FK_RentalClient]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Clients]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RentalClient'
CREATE INDEX [IX_FK_RentalClient]
ON [dbo].[Rentals]
    ([Client_Id]);
GO

-- Creating foreign key on [Trainer_Id] in table 'Days'
ALTER TABLE [dbo].[Days]
ADD CONSTRAINT [FK_TrainerDay]
    FOREIGN KEY ([Trainer_Id])
    REFERENCES [dbo].[Trainers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrainerDay'
CREATE INDEX [IX_FK_TrainerDay]
ON [dbo].[Days]
    ([Trainer_Id]);
GO

-- Creating foreign key on [Last_Board_Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [FK_ClientBoard]
    FOREIGN KEY ([Last_Board_Id])
    REFERENCES [dbo].[Boards]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientBoard'
CREATE INDEX [IX_FK_ClientBoard]
ON [dbo].[Clients]
    ([Last_Board_Id]);
GO

-- Creating foreign key on [Last_Sail_Id] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [FK_ClientSail]
    FOREIGN KEY ([Last_Sail_Id])
    REFERENCES [dbo].[Sails]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientSail'
CREATE INDEX [IX_FK_ClientSail]
ON [dbo].[Clients]
    ([Last_Sail_Id]);
GO

-- Creating foreign key on [Rental_Id] in table 'RentalEquipment'
ALTER TABLE [dbo].[RentalEquipment]
ADD CONSTRAINT [FK_RentalEquipment_Rental]
    FOREIGN KEY ([Rental_Id])
    REFERENCES [dbo].[Rentals]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Equipments_Eq_Id] in table 'RentalEquipment'
ALTER TABLE [dbo].[RentalEquipment]
ADD CONSTRAINT [FK_RentalEquipment_Equipment]
    FOREIGN KEY ([Equipments_Eq_Id])
    REFERENCES [dbo].[Equipments]
        ([Eq_Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RentalEquipment_Equipment'
CREATE INDEX [IX_FK_RentalEquipment_Equipment]
ON [dbo].[RentalEquipment]
    ([Equipments_Eq_Id]);
GO

-- Creating foreign key on [Eq_Id] in table 'Equipments_Wetsuit'
ALTER TABLE [dbo].[Equipments_Wetsuit]
ADD CONSTRAINT [FK_Wetsuit_inherits_Equipment]
    FOREIGN KEY ([Eq_Id])
    REFERENCES [dbo].[Equipments]
        ([Eq_Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Eq_Id] in table 'Equipments_Harness'
ALTER TABLE [dbo].[Equipments_Harness]
ADD CONSTRAINT [FK_Harness_inherits_Equipment]
    FOREIGN KEY ([Eq_Id])
    REFERENCES [dbo].[Equipments]
        ([Eq_Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Eq_Id] in table 'Equipments_Vest'
ALTER TABLE [dbo].[Equipments_Vest]
ADD CONSTRAINT [FK_Vest_inherits_Equipment]
    FOREIGN KEY ([Eq_Id])
    REFERENCES [dbo].[Equipments]
        ([Eq_Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------