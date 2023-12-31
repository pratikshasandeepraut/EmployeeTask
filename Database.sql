USE [EmployeeTaskMVC]
GO
/****** Object:  Table [dbo].[tblInfo]    Script Date: 9/28/2023 10:18:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInfo](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Department] [nvarchar](50) NULL,
	[Phone] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SPEmployeeTask]    Script Date: 9/28/2023 10:19:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SPEmployeeTask]
(

@Name nvarchar(50)=null,
@Designation nvarchar(50)=null,
@Department nvarchar(50)=null,
@Phone nchar(10)=null,
@flag nvarchar(50)=null
)
as
begin
if (@flag='Save')
begin
insert into tblInfo values (@Name,@Designation,@Department,@Phone)
end
if(@flag='Show')
begin
select * from tblInfo
end
end
GO
