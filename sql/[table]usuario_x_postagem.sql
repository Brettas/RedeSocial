USE [cultivo_db]
GO

BEGIN TRANSACTION;

CREATE TABLE [dbo].[usuario_x_postagem]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	[id_usuario] INT NOT NULL,
	[id_postagem] INT NOT NULL
)
GO

COMMIT TRANSACTION;

BEGIN TRANSACTION;

	ALTER TABLE [dbo].[usuario_x_postagem] WITH CHECK
		ADD CONSTRAINT [FK_usuario] FOREIGN KEY ([id_usuario]) REFERENCES [dbo].[usuario] ([id])
		ON DELETE CASCADE
		ON UPDATE CASCADE
	GO

COMMIT TRANSACTION;

BEGIN TRANSACTION;

	ALTER TABLE [dbo].[usuario_x_postagem] WITH CHECK
		ADD CONSTRAINT [FK_postagem] FOREIGN KEY ([id_postagem]) REFERENCES [dbo].[postagem] ([id])
		ON DELETE CASCADE
		ON UPDATE CASCADE
	GO
		
COMMIT TRANSACTION;
