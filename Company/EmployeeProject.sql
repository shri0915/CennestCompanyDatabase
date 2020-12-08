CREATE TABLE [dbo].[EmployeeProject]
(
	[EmployeeProjectID] INT NOT NULL PRIMARY KEY, 
    [EmployeeID] INT NOT NULL, 
    [ProjectID] INT NOT NULL, 
    [EmployeeRoleID] INT NOT NULL, 
    CONSTRAINT [FK_EmployeeProject_Employee] FOREIGN KEY ([EmployeeID]) REFERENCES [Employee]([EmployeeID]), 
    CONSTRAINT [FK_EmployeeProject_Project] FOREIGN KEY ([ProjectID]) REFERENCES [Project]([ProjectID]), 
    CONSTRAINT [FK_EmployeeProject_RoleMaster] FOREIGN KEY ([EmployeeRoleID]) REFERENCES [RoleMaster]([RoleID])
)
