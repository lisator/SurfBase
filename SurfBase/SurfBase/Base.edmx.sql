
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/19/2017 18:22:55
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


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
    [Hangar_Hangar_id] int  NOT NULL,
    [Board_Board_id] int  NOT NULL,
    [Sail_Sail_id] int  NULL
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
    [Volume] int  NOT NULL
);
GO

-- Creating table 'Sails'
CREATE TABLE [dbo].[Sails] (
    [Sail_id] int IDENTITY(1,1) NOT NULL,
    [Size] int  NOT NULL
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
    [WindHarness_id] int IDENTITY(1,1) NOT NULL,
    [Equipment_id] int  NOT NULL
);
GO

-- Creating table 'Equipments_KiteHarness'
CREATE TABLE [dbo].[Equipments_KiteHarness] (
    [KiteHarness_id] int IDENTITY(1,1) NOT NULL,
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

-- Creating foreign key on [Hangar_Hangar_id] in table 'Rigs'
ALTER TABLE [dbo].[Rigs]
ADD CONSTRAINT [FK_HangarRig]
    FOREIGN KEY ([Hangar_Hangar_id])
    REFERENCES [dbo].[Hangars]
        ([Hangar_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HangarRig'
CREATE INDEX [IX_FK_HangarRig]
ON [dbo].[Rigs]
    ([Hangar_Hangar_id]);
GO

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