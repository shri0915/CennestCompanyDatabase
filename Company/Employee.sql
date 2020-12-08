CREATE TABLE [dbo].[Employee]
(
	[EmployeeID] INT NOT NULL PRIMARY KEY, 
    [EmployeeName] TEXT NOT NULL, 
    [DepartmentID] INT NOT NULL, 
    [EmployeeDesignation] TEXT NOT NULL, 
    [EmployeeAddress] TEXT NOT NULL, 
    [EmployeeContact] TEXT NULL, 
    CONSTRAINT [FK_Employee_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [Department]([DepartmentID])
)
