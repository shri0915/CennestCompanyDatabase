CREATE TABLE [dbo].[TaskTechnology]
(
	[TaskTechnologyID] INT NOT NULL PRIMARY KEY, 
    [TaskID] INT NOT NULL, 
    [TechnologyID] INT NOT NULL, 
    CONSTRAINT [FK_TaskTechnology_Task] FOREIGN KEY ([TaskID]) REFERENCES [Task]([TaskID]), 
    CONSTRAINT [FK_TaskTechnology_Technology] FOREIGN KEY ([TechnologyID]) REFERENCES [Technology]([TechnologyID])
)
