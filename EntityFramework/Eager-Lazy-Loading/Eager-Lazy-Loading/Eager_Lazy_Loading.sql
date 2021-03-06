USE [master]
GO
/****** Object:  Database [Eager_Lazy_Loading]    Script Date: 12/14/2017 8:31:33 PM ******/
CREATE DATABASE [Eager_Lazy_Loading]

USE [Eager_Lazy_Loading]
GO
/****** Object:  Table [dbo].[tblDepartment]    Script Date: 12/14/2017 8:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDepartment](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Departme__B2079BEDFB27B4E1] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 12/14/2017 8:31:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[EmployeeId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[DepartmentID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tblDepartment] ON 

INSERT [dbo].[tblDepartment] ([DepartmentId], [Name]) VALUES (1, N'HR')
INSERT [dbo].[tblDepartment] ([DepartmentId], [Name]) VALUES (2, N'Accounts')
INSERT [dbo].[tblDepartment] ([DepartmentId], [Name]) VALUES (3, N'IT')
SET IDENTITY_INSERT [dbo].[tblDepartment] OFF
INSERT [dbo].[tblEmployee] ([EmployeeId], [Name], [DepartmentID]) VALUES (100, N'User1', 1)
INSERT [dbo].[tblEmployee] ([EmployeeId], [Name], [DepartmentID]) VALUES (101, N'User2', 1)
INSERT [dbo].[tblEmployee] ([EmployeeId], [Name], [DepartmentID]) VALUES (103, N'User3', 2)
INSERT [dbo].[tblEmployee] ([EmployeeId], [Name], [DepartmentID]) VALUES (104, N'User4', 2)
INSERT [dbo].[tblEmployee] ([EmployeeId], [Name], [DepartmentID]) VALUES (105, N'User5', 3)
ALTER TABLE [dbo].[tblEmployee]  WITH CHECK ADD  CONSTRAINT [FK__Employee__Depart__25869641] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[tblDepartment] ([DepartmentId])
GO
ALTER TABLE [dbo].[tblEmployee] CHECK CONSTRAINT [FK__Employee__Depart__25869641]
GO
USE [master]
GO
ALTER DATABASE [Eager_Lazy_Loading] SET  READ_WRITE 
GO
