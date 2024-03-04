
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/04/2024 14:30:49
-- Generated from EDMX file: C:\Users\opilane\source\repos\Rogovski tarpv22\WebForms\kutsekool_mudel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [kutsekool_Rogovski];
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

-- Creating table 'opilaneSet'
CREATE TABLE [dbo].[opilaneSet] (
    [opilaneId] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [synniaeg] nvarchar(max)  NOT NULL,
    [ryhm_ryhmId] int  NOT NULL
);
GO

-- Creating table 'ryhmSet'
CREATE TABLE [dbo].[ryhmSet] (
    [ryhmId] int IDENTITY(1,1) NOT NULL,
    [ryhmNimi] nvarchar(max)  NOT NULL,
    [osakond] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [opilaneId] in table 'opilaneSet'
ALTER TABLE [dbo].[opilaneSet]
ADD CONSTRAINT [PK_opilaneSet]
    PRIMARY KEY CLUSTERED ([opilaneId] ASC);
GO

-- Creating primary key on [ryhmId] in table 'ryhmSet'
ALTER TABLE [dbo].[ryhmSet]
ADD CONSTRAINT [PK_ryhmSet]
    PRIMARY KEY CLUSTERED ([ryhmId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ryhm_ryhmId] in table 'opilaneSet'
ALTER TABLE [dbo].[opilaneSet]
ADD CONSTRAINT [FK_ryhmopilane]
    FOREIGN KEY ([ryhm_ryhmId])
    REFERENCES [dbo].[ryhmSet]
        ([ryhmId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ryhmopilane'
CREATE INDEX [IX_FK_ryhmopilane]
ON [dbo].[opilaneSet]
    ([ryhm_ryhmId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------