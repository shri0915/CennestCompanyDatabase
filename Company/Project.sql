CREATE TABLE [dbo].[Project]
(
	[ProjectID] INT NOT NULL PRIMARY KEY, 
    [ProjectName] TEXT NOT NULL, 
    [ProjectStatus] INT NULL, 
    [ClientID] INT NOT NULL, 
    [DepartmentID] INT NOT NULL, 
    CONSTRAINT [FK_Project_Client] FOREIGN KEY ([ClientID]) REFERENCES [Client]([ClientID]), 
    CONSTRAINT [FK_Project_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [Department]([DepartmentID]), 
    CONSTRAINT [FK_Project_StatusMaster] FOREIGN KEY ([ProjectStatus]) REFERENCES [StatusMaster]([StatusID])
)
