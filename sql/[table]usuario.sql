USE [cultivo_db]
GO

BEGIN TRANSACTION;

CREATE TABLE [dbo].[usuario]
(
	id INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	nome NVARCHAR(50) NOT NULL,
	sobrenome NVARCHAR(50) NOT NULL,
	email NVARCHAR(100) NOT NULL UNIQUE,
	senha NVARCHAR(256) NOT NULL,
	url_foto NVARCHAR(MAX) NULL
);
GO

COMMIT TRANSACTION;
