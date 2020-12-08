CREATE TABLE [dbo].[ProjectTechnology]
(
	[ProjectTechnologyID] INT NOT NULL PRIMARY KEY, 
    [ProjectID] INT NOT NULL, 
    [TechnologyID] INT NOT NULL, 
    [ProjectTechnologyVersionNumber] TEXT NOT NULL, 
    CONSTRAINT [FK_ProjectTechnology_Project] FOREIGN KEY ([ProjectID]) REFERENCES [Project]([ProjectID]), 
    CONSTRAINT [FK_ProjectTechnology_Technology] FOREIGN KEY ([TechnologyID]) REFERENCES [Technology]([TechnologyID])
)
