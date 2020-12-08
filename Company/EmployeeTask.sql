CREATE TABLE [dbo].[EmployeeTask]
(
	[EmployeeTaskID] INT NOT NULL PRIMARY KEY, 
    [EmployeeID] INT NOT NULL, 
    [TaskID] INT NOT NULL, 
    [EmployeeTaskStatus] INT NULL, 
    CONSTRAINT [FK_EmployeeTask_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [Employee]([EmployeeID]), 
    CONSTRAINT [FK_EmployeeTask_Task] FOREIGN KEY ([TaskID]) REFERENCES [Task]([TaskID]), 
    CONSTRAINT [FK_EmployeeTask_StatusMaster] FOREIGN KEY ([EmployeeTaskStatus]) REFERENCES [StatusMaster]([StatusID])
)
