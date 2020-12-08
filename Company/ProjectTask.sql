CREATE TABLE [dbo].[ProjectTask]
(
	[ProjectTaskID] INT NOT NULL PRIMARY KEY, 
    [ProjectID] INT NOT NULL, 
    [TaskID] INT NOT NULL, 
    [ProjectTaskStatus] INT NULL, 
    CONSTRAINT [FK_ProjectTask_Project] FOREIGN KEY ([ProjectID]) REFERENCES [Project]([ProjectID]), 
    CONSTRAINT [FK_ProjectTask_Task] FOREIGN KEY ([TaskID]) REFERENCES [Task]([TaskID]), 
    CONSTRAINT [FK_ProjectTask_StatusMaster] FOREIGN KEY ([ProjectTaskStatus]) REFERENCES [StatusMaster]([StatusID])
)
