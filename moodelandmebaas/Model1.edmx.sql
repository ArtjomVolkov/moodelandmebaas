
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/07/2022 09:21:08
-- Generated from EDMX file: C:\Users\opilane\source\repos\moodelandmebaas\moodelandmebaas\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [tarpv21];
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

-- Creating table 'EksamSet'
CREATE TABLE [dbo].[EksamSet] (
    [eksamID] int IDENTITY(1,1) NOT NULL,
    [kuupaev] datetime  NOT NULL,
    [oppeaine] nvarchar(max)  NOT NULL,
    [opilane] nvarchar(max)  NOT NULL,
    [hinne] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [eksamID] in table 'EksamSet'
ALTER TABLE [dbo].[EksamSet]
ADD CONSTRAINT [PK_EksamSet]
    PRIMARY KEY CLUSTERED ([eksamID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------