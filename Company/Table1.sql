CREATE TABLE [dbo].[Client]
(
	[ClientID] INT NOT NULL PRIMARY KEY, 
    [ClientName] TEXT NOT NULL, 
    [ClientLocation] TEXT NOT NULL, 
    [DepartmentID] INT NOT NULL, 
    CONSTRAINT [FK_Client_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [Department]([DepartmentID])
)
