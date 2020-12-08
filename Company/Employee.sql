CREATE TABLE [dbo].[Employee]
(
	[EmployeeID] INT NOT NULL PRIMARY KEY, 
    [EmployeeName] TEXT NULL, 
    [DepartmentID] INT NULL, 
    CONSTRAINT [FK_Employee_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [Department]([DepartmentID])
)
