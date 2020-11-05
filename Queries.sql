USE [SLK_HUB]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Cust_Id], [FullName], [Email], [Mobile], [Location]) VALUES (1, N'Gururaj', N'gururaj.e@slkgroup.com', N'9731544949', N'Bangalore')
GO
INSERT [dbo].[Customers] ([Cust_Id], [FullName], [Email], [Mobile], [Location]) VALUES (2, N'Gururaj1', N'gururaj1.e@slkgroup.com', N'9731544949', N'Bangalore')
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (1, N'Pranaya', N'Rout', N'Male', 60000)
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (2, N'Anurag', N'Mohanty', N'Male', 45000)
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (3, N'Preety', N'Tiwari', N'Female', 45000)
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (4, N'Sambit', N'Mohanty', N'Male', 70000)
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (5, N'Shushanta', N'Jena', N'Male', 45000)
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (6, N'Priyanka', N'Dewangan', N'Female', 30000)
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (7, N'Sandeep', N'Kiran', N'Male', 45000)
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (8, N'Shudhansshu', N'Nayak', N'Male', 30000)
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (9, N'Hina', N'Sharma', N'Female', 35000)
GO
INSERT [dbo].[Employees] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (10, N'Preetiranjan', N'Sahoo', N'Male', 80000)
GO
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees_Copy] ON 
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (1, N'Pranaya', N'Rout', N'Male', 60000)
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (2, N'Anurag', N'Mohanty', N'Male', 45000)
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (3, N'Preety', N'Tiwari', N'Female', 45000)
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (4, N'Sambit', N'Mohanty', N'Male', 70000)
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (5, N'Shushanta', N'Jena', N'Male', 45000)
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (6, N'Priyanka', N'Dewangan', N'Female', 30000)
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (7, N'Sandeep', N'Kiran', N'Male', 45000)
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (8, N'Shudhansshu', N'Nayak', N'Male', 30000)
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (9, N'Hina', N'Sharma', N'Female', 35000)
GO
INSERT [dbo].[Employees_Copy] ([ID], [FirstName], [LastName], [Gender], [Salary]) VALUES (10, N'Preetiranjan', N'Sahoo', N'Male', 80000)
GO
SET IDENTITY_INSERT [dbo].[Employees_Copy] OFF
GO
