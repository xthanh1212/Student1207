USE [master]
GO
/****** Object:  Database [StudentManagement]    Script Date: 06/12/2021 16:48:03 ******/
CREATE DATABASE [StudentManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\StudentManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudentManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\StudentManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [StudentManagement] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [StudentManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [StudentManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentManagement] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [StudentManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StudentManagement] SET  MULTI_USER 
GO
ALTER DATABASE [StudentManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentManagement] SET QUERY_STORE = OFF
GO
USE [StudentManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BellNotification]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BellNotification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateCreated] [datetime] NULL,
	[IsRead] [bit] NULL,
	[NotifiId] [int] NULL,
	[UserId] [nvarchar](250) NULL,
 CONSTRAINT [PK_BellNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](250) NULL,
	[Activities] [nvarchar](250) NULL,
	[Act] [nvarchar](250) NULL,
	[PowerExerted] [nvarchar](250) NULL,
	[PowerDev] [nvarchar](250) NULL,
	[Think] [nchar](10) NULL,
	[ListEventId] [int] NULL,
	[Status] [int] NULL,
	[SchoolYearId] [int] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupInfos]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupInfos](
	[GroupInfoId] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[ConnectionId] [nvarchar](max) NULL,
	[name] [nvarchar](250) NULL,
	[Role] [nvarchar](250) NULL,
	[UserId] [nvarchar](250) NULL,
	[GroupInfoId1] [int] NULL,
 CONSTRAINT [PK_GroupInfos] PRIMARY KEY CLUSTERED 
(
	[GroupInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListEvents]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListEvents](
	[ListEventId] [int] IDENTITY(1,1) NOT NULL,
	[ListEventName] [nvarchar](250) NULL,
	[Icon] [nvarchar](250) NULL,
 CONSTRAINT [PK_ListEvents] PRIMARY KEY CLUSTERED 
(
	[ListEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessagesId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](500) NULL,
	[Timestamp] [datetime] NULL,
	[EventId] [int] NULL,
	[UserId] [nvarchar](250) NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessagesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesSkills]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesSkills](
	[MessagesId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
 CONSTRAINT [PK_MessagesSkills] PRIMARY KEY CLUSTERED 
(
	[MessagesId] ASC,
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolYears]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolYears](
	[SchoolYearId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolYearName] [nvarchar](250) NULL,
 CONSTRAINT [PK_SchoolYears] PRIMARY KEY CLUSTERED 
(
	[SchoolYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](250) NULL,
	[Style] [nvarchar](250) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](250) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogins]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [nvarchar](250) NOT NULL,
	[RoleId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](250) NULL,
	[Active] [bit] NULL,
	[CreateDate] [date] NULL,
	[LastLogin] [date] NULL,
	[Avatar] [nvarchar](250) NULL,
	[ScholasticId] [int] NULL,
	[ParentId] [nvarchar](50) NULL,
	[bellNotifiId] [int] NULL,
	[UserName] [nvarchar](250) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](250) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[StudentCode] [nvarchar](50) NULL,
	[BellNotifiId1] [int] NULL,
	[FullName] [nvarchar](250) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSchoolYears]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSchoolYears](
	[UserId] [nvarchar](250) NOT NULL,
	[SchoolYearId] [int] NOT NULL,
 CONSTRAINT [PK_UserSchoolYears_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[SchoolYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 06/12/2021 16:48:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [nvarchar](250) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211111042114_UpdateIdentity', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[BellNotification] ON 

INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (566, CAST(N'2021-12-02T11:45:26.640' AS DateTime), 1, 544, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (567, CAST(N'2021-12-02T11:55:07.207' AS DateTime), 1, 545, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (568, CAST(N'2021-12-02T11:55:07.210' AS DateTime), 1, 546, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (569, CAST(N'2021-12-02T11:55:43.623' AS DateTime), 1, 544, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (570, CAST(N'2021-12-02T16:15:20.123' AS DateTime), 1, 561, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (571, CAST(N'2021-12-02T16:15:20.130' AS DateTime), 1, 562, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (572, CAST(N'2021-12-03T08:04:19.163' AS DateTime), 1, 563, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (575, CAST(N'2021-12-03T08:04:27.403' AS DateTime), 1, 545, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (576, CAST(N'2021-12-03T08:04:27.410' AS DateTime), 1, 546, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (577, CAST(N'2021-12-03T08:04:27.413' AS DateTime), 1, 547, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (578, CAST(N'2021-12-03T08:20:25.483' AS DateTime), 1, 563, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (580, CAST(N'2021-12-03T10:12:26.487' AS DateTime), 1, 561, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (581, CAST(N'2021-12-03T10:12:26.503' AS DateTime), 1, 562, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (582, CAST(N'2021-12-03T10:12:26.507' AS DateTime), 1, 564, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (583, CAST(N'2021-12-03T11:01:23.827' AS DateTime), 1, 544, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (584, CAST(N'2021-12-03T11:01:29.343' AS DateTime), 1, 561, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (585, CAST(N'2021-12-03T11:01:29.347' AS DateTime), 1, 562, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (586, CAST(N'2021-12-03T11:01:29.347' AS DateTime), 1, 564, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (587, CAST(N'2021-12-03T11:27:52.807' AS DateTime), 1, 545, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (588, CAST(N'2021-12-03T11:27:52.810' AS DateTime), 1, 546, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (589, CAST(N'2021-12-03T11:27:52.810' AS DateTime), 1, 547, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (590, CAST(N'2021-12-03T11:28:03.243' AS DateTime), 1, 563, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (591, CAST(N'2021-12-03T11:28:13.453' AS DateTime), 1, 563, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (592, CAST(N'2021-12-03T11:30:10.310' AS DateTime), 1, 545, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (593, CAST(N'2021-12-03T11:30:10.313' AS DateTime), 1, 546, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (594, CAST(N'2021-12-03T11:30:10.313' AS DateTime), 1, 547, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (595, CAST(N'2021-12-03T14:16:36.213' AS DateTime), 1, 545, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (596, CAST(N'2021-12-03T14:16:36.230' AS DateTime), 1, 546, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (597, CAST(N'2021-12-03T14:16:36.230' AS DateTime), 1, 547, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (598, CAST(N'2021-12-03T14:18:08.730' AS DateTime), 1, 545, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (599, CAST(N'2021-12-03T14:18:08.733' AS DateTime), 1, 546, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (600, CAST(N'2021-12-03T14:18:08.733' AS DateTime), 1, 547, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (601, CAST(N'2021-12-06T10:51:57.130' AS DateTime), 1, 606, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (602, CAST(N'2021-12-06T10:51:57.143' AS DateTime), 1, 608, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (603, CAST(N'2021-12-06T10:51:57.147' AS DateTime), 1, 609, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (604, CAST(N'2021-12-06T10:51:57.150' AS DateTime), 1, 610, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (605, CAST(N'2021-12-06T13:15:39.797' AS DateTime), 1, 611, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (606, CAST(N'2021-12-06T14:44:39.330' AS DateTime), 1, 544, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (607, CAST(N'2021-12-06T14:56:42.710' AS DateTime), 1, 611, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (608, CAST(N'2021-12-06T14:56:46.427' AS DateTime), 1, 603, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (609, CAST(N'2021-12-06T14:59:55.677' AS DateTime), 1, 611, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (612, CAST(N'2021-12-06T15:07:16.427' AS DateTime), 1, 613, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (613, CAST(N'2021-12-06T15:07:16.437' AS DateTime), 1, 614, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (614, CAST(N'2021-12-06T15:07:16.437' AS DateTime), 1, 615, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (615, CAST(N'2021-12-06T15:07:16.440' AS DateTime), 1, 617, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (622, CAST(N'2021-12-06T15:29:52.520' AS DateTime), 1, 606, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (623, CAST(N'2021-12-06T15:29:52.527' AS DateTime), 1, 608, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (624, CAST(N'2021-12-06T15:29:52.527' AS DateTime), 1, 609, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (625, CAST(N'2021-12-06T15:29:52.527' AS DateTime), 1, 610, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (626, CAST(N'2021-12-06T15:29:52.530' AS DateTime), 1, 616, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (636, CAST(N'2021-12-06T15:40:07.447' AS DateTime), 1, 636, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (637, CAST(N'2021-12-06T15:40:07.507' AS DateTime), 1, 637, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (638, CAST(N'2021-12-06T15:40:07.513' AS DateTime), 1, 638, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (639, CAST(N'2021-12-06T15:40:24.403' AS DateTime), 1, 636, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (640, CAST(N'2021-12-06T15:40:24.413' AS DateTime), 1, 637, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (641, CAST(N'2021-12-06T15:40:24.417' AS DateTime), 1, 638, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (642, CAST(N'2021-12-06T16:07:58.350' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (643, CAST(N'2021-12-06T16:07:58.373' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (644, CAST(N'2021-12-06T16:07:58.377' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (645, CAST(N'2021-12-06T16:07:58.380' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (646, CAST(N'2021-12-06T16:08:49.720' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (647, CAST(N'2021-12-06T16:08:49.730' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (648, CAST(N'2021-12-06T16:08:49.733' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (649, CAST(N'2021-12-06T16:08:49.737' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (650, CAST(N'2021-12-06T16:09:20.540' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (651, CAST(N'2021-12-06T16:09:20.553' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (652, CAST(N'2021-12-06T16:09:20.570' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (653, CAST(N'2021-12-06T16:09:20.573' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (654, CAST(N'2021-12-06T16:09:44.233' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (655, CAST(N'2021-12-06T16:09:44.243' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (656, CAST(N'2021-12-06T16:09:44.250' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (657, CAST(N'2021-12-06T16:09:44.257' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (658, CAST(N'2021-12-06T16:10:44.930' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (659, CAST(N'2021-12-06T16:10:44.933' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (660, CAST(N'2021-12-06T16:10:44.937' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (661, CAST(N'2021-12-06T16:10:44.937' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (662, CAST(N'2021-12-06T16:12:38.367' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (663, CAST(N'2021-12-06T16:12:38.370' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (664, CAST(N'2021-12-06T16:12:38.370' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (665, CAST(N'2021-12-06T16:12:38.370' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (666, CAST(N'2021-12-06T16:14:00.570' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (667, CAST(N'2021-12-06T16:14:00.573' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (668, CAST(N'2021-12-06T16:14:00.573' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (669, CAST(N'2021-12-06T16:14:00.573' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (670, CAST(N'2021-12-06T16:16:45.617' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (671, CAST(N'2021-12-06T16:16:45.620' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (672, CAST(N'2021-12-06T16:16:45.623' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (673, CAST(N'2021-12-06T16:16:45.627' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (674, CAST(N'2021-12-06T16:17:28.160' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (675, CAST(N'2021-12-06T16:17:28.163' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (676, CAST(N'2021-12-06T16:17:28.163' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (677, CAST(N'2021-12-06T16:17:28.163' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (678, CAST(N'2021-12-06T16:21:40.837' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (679, CAST(N'2021-12-06T16:21:40.843' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (680, CAST(N'2021-12-06T16:21:40.843' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (681, CAST(N'2021-12-06T16:21:40.847' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (682, CAST(N'2021-12-06T16:23:41.650' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (683, CAST(N'2021-12-06T16:23:41.653' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (684, CAST(N'2021-12-06T16:23:41.653' AS DateTime), 1, 600, N'001')
GO
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (685, CAST(N'2021-12-06T16:23:41.653' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (686, CAST(N'2021-12-06T16:24:07.437' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (687, CAST(N'2021-12-06T16:24:07.440' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (688, CAST(N'2021-12-06T16:24:07.440' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (689, CAST(N'2021-12-06T16:24:07.443' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (690, CAST(N'2021-12-06T16:24:24.030' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (691, CAST(N'2021-12-06T16:24:24.033' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (692, CAST(N'2021-12-06T16:24:24.037' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (693, CAST(N'2021-12-06T16:24:24.037' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (694, CAST(N'2021-12-06T16:27:03.057' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (695, CAST(N'2021-12-06T16:27:03.060' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (696, CAST(N'2021-12-06T16:27:03.063' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (697, CAST(N'2021-12-06T16:27:03.063' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (698, CAST(N'2021-12-06T16:28:21.913' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (699, CAST(N'2021-12-06T16:28:21.917' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (700, CAST(N'2021-12-06T16:28:21.920' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (701, CAST(N'2021-12-06T16:28:21.920' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (702, CAST(N'2021-12-06T16:28:57.963' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (703, CAST(N'2021-12-06T16:28:57.973' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (704, CAST(N'2021-12-06T16:28:57.977' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (705, CAST(N'2021-12-06T16:28:57.977' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (706, CAST(N'2021-12-06T16:29:14.483' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (707, CAST(N'2021-12-06T16:29:14.487' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (708, CAST(N'2021-12-06T16:29:14.490' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (709, CAST(N'2021-12-06T16:29:14.493' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (710, CAST(N'2021-12-06T16:29:28.490' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (711, CAST(N'2021-12-06T16:29:28.500' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (712, CAST(N'2021-12-06T16:29:28.503' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (713, CAST(N'2021-12-06T16:29:28.503' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (714, CAST(N'2021-12-06T16:30:15.580' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (715, CAST(N'2021-12-06T16:30:15.590' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (716, CAST(N'2021-12-06T16:30:15.590' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (717, CAST(N'2021-12-06T16:30:15.593' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (718, CAST(N'2021-12-06T16:32:38.270' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (719, CAST(N'2021-12-06T16:32:38.277' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (720, CAST(N'2021-12-06T16:32:38.280' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (721, CAST(N'2021-12-06T16:32:38.283' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (722, CAST(N'2021-12-06T16:32:50.430' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (723, CAST(N'2021-12-06T16:32:50.440' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (724, CAST(N'2021-12-06T16:32:50.443' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (725, CAST(N'2021-12-06T16:32:50.443' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (726, CAST(N'2021-12-06T16:33:48.513' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (727, CAST(N'2021-12-06T16:33:48.517' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (728, CAST(N'2021-12-06T16:33:48.520' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (729, CAST(N'2021-12-06T16:33:48.523' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (730, CAST(N'2021-12-06T16:34:28.813' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (731, CAST(N'2021-12-06T16:34:28.817' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (732, CAST(N'2021-12-06T16:34:28.820' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (733, CAST(N'2021-12-06T16:34:28.827' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (734, CAST(N'2021-12-06T16:35:14.943' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (735, CAST(N'2021-12-06T16:35:14.947' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (736, CAST(N'2021-12-06T16:35:14.950' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (737, CAST(N'2021-12-06T16:35:14.950' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (738, CAST(N'2021-12-06T16:35:31.517' AS DateTime), 1, 636, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (739, CAST(N'2021-12-06T16:35:31.593' AS DateTime), 1, 637, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (740, CAST(N'2021-12-06T16:35:31.600' AS DateTime), 1, 638, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (741, CAST(N'2021-12-06T16:35:53.193' AS DateTime), 1, 642, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (742, CAST(N'2021-12-06T16:36:22.813' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (743, CAST(N'2021-12-06T16:36:22.817' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (744, CAST(N'2021-12-06T16:36:22.820' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (745, CAST(N'2021-12-06T16:36:22.820' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (746, CAST(N'2021-12-06T16:39:51.680' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (747, CAST(N'2021-12-06T16:39:51.733' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (748, CAST(N'2021-12-06T16:39:51.817' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (749, CAST(N'2021-12-06T16:39:51.820' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (750, CAST(N'2021-12-06T16:40:16.220' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (751, CAST(N'2021-12-06T16:40:16.253' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (752, CAST(N'2021-12-06T16:40:16.253' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (753, CAST(N'2021-12-06T16:40:16.257' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (754, CAST(N'2021-12-06T16:40:32.687' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (755, CAST(N'2021-12-06T16:40:32.697' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (756, CAST(N'2021-12-06T16:40:32.700' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (757, CAST(N'2021-12-06T16:40:32.700' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (758, CAST(N'2021-12-06T16:41:03.923' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (759, CAST(N'2021-12-06T16:41:03.927' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (760, CAST(N'2021-12-06T16:41:03.930' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (761, CAST(N'2021-12-06T16:41:03.930' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (762, CAST(N'2021-12-06T16:41:25.503' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (763, CAST(N'2021-12-06T16:41:25.507' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (764, CAST(N'2021-12-06T16:41:25.510' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (765, CAST(N'2021-12-06T16:41:25.510' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (766, CAST(N'2021-12-06T16:43:51.337' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (767, CAST(N'2021-12-06T16:43:51.343' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (768, CAST(N'2021-12-06T16:43:51.350' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (769, CAST(N'2021-12-06T16:43:51.353' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (770, CAST(N'2021-12-06T16:44:03.370' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (771, CAST(N'2021-12-06T16:44:03.373' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (772, CAST(N'2021-12-06T16:44:03.373' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (773, CAST(N'2021-12-06T16:44:03.373' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (774, CAST(N'2021-12-06T16:44:48.083' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (775, CAST(N'2021-12-06T16:44:48.087' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (776, CAST(N'2021-12-06T16:44:48.090' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (777, CAST(N'2021-12-06T16:44:48.090' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (778, CAST(N'2021-12-06T16:45:37.117' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (779, CAST(N'2021-12-06T16:45:37.117' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (780, CAST(N'2021-12-06T16:45:37.120' AS DateTime), 1, 600, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (781, CAST(N'2021-12-06T16:45:37.120' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (782, CAST(N'2021-12-06T16:45:47.490' AS DateTime), 1, 593, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (783, CAST(N'2021-12-06T16:45:47.493' AS DateTime), 1, 599, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (784, CAST(N'2021-12-06T16:45:47.497' AS DateTime), 1, 600, N'001')
GO
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (785, CAST(N'2021-12-06T16:45:47.500' AS DateTime), 1, 604, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (786, CAST(N'2021-12-06T16:46:19.457' AS DateTime), 1, 640, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (787, CAST(N'2021-12-06T16:46:19.463' AS DateTime), 1, 641, N'004')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (788, CAST(N'2021-12-06T16:46:53.940' AS DateTime), 1, 545, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (789, CAST(N'2021-12-06T16:46:53.953' AS DateTime), 1, 546, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (790, CAST(N'2021-12-06T16:46:53.960' AS DateTime), 1, 547, N'001')
INSERT [dbo].[BellNotification] ([Id], [DateCreated], [IsRead], [NotifiId], [UserId]) VALUES (791, CAST(N'2021-12-06T16:46:53.970' AS DateTime), 1, 612, N'001')
SET IDENTITY_INSERT [dbo].[BellNotification] OFF
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (23, N'82ca568b-07b6-4e1d-889d-de43c735228f', N'sadfsaf', N'asdfasf', N'sadfsadf', N'sadfsaf', N'sadfsdaf  ', 1, 2, 1)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (133, N'001', N'ドは必須', N'ドは必須', N'ドは必須3', N'ドは必須2', N'ドは必須4     ', 7, 3, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (136, N'005', N'出来', N'出来', N'出来', N'出来', N'出来        ', 4, 2, 2)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (143, N'001', N'の', N'の', N'の', N'の', N'の         ', 4, 3, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (147, N'001', N'行', N'行', N'行', N'行', N'行         ', 5, 3, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (148, N'001', N'た', N'た', N'た', N'た', N'た         ', 5, 3, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (149, N'001', N'揮', N'揮', N'揮', N'揮', N'揮         ', 1, 2, 3)
INSERT [dbo].[Events] ([EventId], [UserId], [Activities], [Act], [PowerExerted], [PowerDev], [Think], [ListEventId], [Status], [SchoolYearId]) VALUES (150, N'001', N'行動', N'行動', N'行動', N'行動', N'行動        ', 1, 2, 3)
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupInfos] ON 

INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (1377, 113, N'zBPGPkrXtfArZNbjeuTVSw', N'teacher', N'Teacher', N'002', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (1379, 132, N'zBPGPkrXtfArZNbjeuTVSw', N'teacher', N'Teacher', N'002', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (1381, 135, N'zBPGPkrXtfArZNbjeuTVSw', N'teacher', N'Teacher', N'002', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (4547, 132, N'NczK7SRFGYCHieL6d8aW9A', N'doctor', N'Doctor', N'004', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (4551, 137, N'NczK7SRFGYCHieL6d8aW9A', N'doctor', N'Doctor', N'004', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (14182, 133, N'LInMchwib2PndcMlROyVEw', N'xuanthanh', N'Student', N'001', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (14183, 143, N'LInMchwib2PndcMlROyVEw', N'xuanthanh', N'Student', N'001', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (14184, 147, N'LInMchwib2PndcMlROyVEw', N'xuanthanh', N'Student', N'001', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (14185, 148, N'LInMchwib2PndcMlROyVEw', N'xuanthanh', N'Student', N'001', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (14186, 149, N'LInMchwib2PndcMlROyVEw', N'xuanthanh', N'Student', N'001', NULL)
INSERT [dbo].[GroupInfos] ([GroupInfoId], [EventId], [ConnectionId], [name], [Role], [UserId], [GroupInfoId1]) VALUES (14187, 150, N'LInMchwib2PndcMlROyVEw', N'xuanthanh', N'Student', N'001', NULL)
SET IDENTITY_INSERT [dbo].[GroupInfos] OFF
GO
SET IDENTITY_INSERT [dbo].[ListEvents] ON 

INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (1, N'水泳', N'fas fa-swimmer')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (2, N'サッカー', N'fas fa-futbol')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (3, N'野球', N'fas fa-baseball-ball')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (4, N'バレーボール', N'fas fa-volleyball-ball')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (5, N'歌う', N'fas fa-microphone')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (6, N'読書', N'fas fa-book')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (7, N'チェス', N'fas fa-chess-knight')
INSERT [dbo].[ListEvents] ([ListEventId], [ListEventName], [Icon]) VALUES (8, N'卓球', N'fas fa-table-tennis
')
SET IDENTITY_INSERT [dbo].[ListEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (544, N'sadsadsadsad', CAST(N'2021-12-02T11:45:11.047' AS DateTime), 133, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (545, N'#計画力 ', CAST(N'2021-12-02T11:45:30.793' AS DateTime), 133, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (546, N'🙂🙂🙂', CAST(N'2021-12-02T11:45:34.693' AS DateTime), 133, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (547, N'#働きかけ力 ', CAST(N'2021-12-02T11:55:46.950' AS DateTime), 133, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (549, N'#実行力 ', CAST(N'2021-12-02T13:27:31.310' AS DateTime), 23, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (561, N'fsadfasfd', CAST(N'2021-12-02T16:12:50.443' AS DateTime), NULL, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (562, N'ádasd', CAST(N'2021-12-02T16:14:45.197' AS DateTime), NULL, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (563, N'#働きかけ力 ', CAST(N'2021-12-02T16:15:24.910' AS DateTime), NULL, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (564, N'sdasd', CAST(N'2021-12-03T08:20:34.867' AS DateTime), NULL, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (593, N'#働きかけ力 ', CAST(N'2021-12-03T10:21:42.047' AS DateTime), 143, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (599, N'#実行力 ', CAST(N'2021-12-03T11:01:48.787' AS DateTime), 143, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (600, N'#規律性 ', CAST(N'2021-12-03T11:01:52.130' AS DateTime), 143, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (601, N'#主体性 #働きかけ力 #実行力 #課題発見力 #計画力 #発信力 #柔軟性 #状況把握力 #規律性 #ストレスコントロール力 ', CAST(N'2021-12-03T11:30:54.027' AS DateTime), NULL, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (602, N'#課題発見力 ', CAST(N'2021-12-03T13:16:46.583' AS DateTime), NULL, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (603, N'ádasd', CAST(N'2021-12-03T15:06:25.607' AS DateTime), 148, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (604, N'#ストレスコントロール力 ', CAST(N'2021-12-03T16:57:27.363' AS DateTime), 143, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (606, N'Lô!', CAST(N'2021-12-06T10:51:15.680' AS DateTime), 149, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (608, N'🤠🤠🤠🤠', CAST(N'2021-12-06T10:51:24.857' AS DateTime), 149, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (609, N'Con gà', CAST(N'2021-12-06T10:51:28.963' AS DateTime), 149, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (610, N'#実行力 #創造力 ', CAST(N'2021-12-06T10:51:35.253' AS DateTime), 149, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (611, N'Ok ông già!', CAST(N'2021-12-06T10:52:03.333' AS DateTime), 149, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (612, N'#課題発見力 #ストレスコントロール力 #実行力 #発信力 #柔軟性 ', CAST(N'2021-12-06T14:44:58.430' AS DateTime), 133, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (613, N'wwe', CAST(N'2021-12-06T14:56:50.607' AS DateTime), 148, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (614, N'qwewqe', CAST(N'2021-12-06T14:56:59.457' AS DateTime), 148, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (615, N'sadasd', CAST(N'2021-12-06T14:57:45.643' AS DateTime), 148, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (616, N'dasdsad', CAST(N'2021-12-06T14:59:58.533' AS DateTime), 149, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (617, N'ga', CAST(N'2021-12-06T15:00:06.873' AS DateTime), 148, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (636, N'sadasd', CAST(N'2021-12-06T15:36:29.897' AS DateTime), 150, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (637, N'asdsad', CAST(N'2021-12-06T15:38:37.920' AS DateTime), 150, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (638, N'sadsad', CAST(N'2021-12-06T15:38:42.380' AS DateTime), 150, N'004')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (640, N'asdasd', CAST(N'2021-12-06T16:10:49.290' AS DateTime), 143, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (641, N'g', CAST(N'2021-12-06T16:21:44.410' AS DateTime), 143, N'001')
INSERT [dbo].[Messages] ([MessagesId], [Content], [Timestamp], [EventId], [UserId]) VALUES (642, N'ádasd', CAST(N'2021-12-06T16:35:34.870' AS DateTime), 150, N'001')
SET IDENTITY_INSERT [dbo].[Messages] OFF
GO
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (545, 5)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (547, 2)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (549, 3)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (563, 2)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (593, 2)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (599, 3)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (600, 11)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 1)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 2)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 3)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 4)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 5)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 7)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 9)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 10)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 11)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (601, 12)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (602, 4)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (604, 12)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (610, 3)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (610, 6)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (612, 3)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (612, 4)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (612, 7)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (612, 9)
INSERT [dbo].[MessagesSkills] ([MessagesId], [SkillId]) VALUES (612, 12)
GO
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'001', N'Student', N'Student', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'002', N'Teacher', N'Teacher', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'003', N'Family', N'Family', NULL)
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'004', N'Doctor', N'Dotor', NULL)
GO
SET IDENTITY_INSERT [dbo].[SchoolYears] ON 

INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (1, N'一年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (2, N'二年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (3, N'三年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (4, N'四年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (5, N'五年生')
INSERT [dbo].[SchoolYears] ([SchoolYearId], [SchoolYearName]) VALUES (6, N'六年生')
SET IDENTITY_INSERT [dbo].[SchoolYears] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (1, N'主体性', N'#f44336')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (2, N'働きかけ力', N'#e91e63')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (3, N'実行力', N'#9c27b0')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (4, N'課題発見力', N'#ff5722')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (5, N'計画力', N'#2196f3')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (6, N'創造力', N'#00bcd4')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (7, N'発信力', N'#009688')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (8, N'傾聴力', N'#8bc34a')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (9, N'柔軟性', N'#607d8b')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (10, N'状況把握力', N'#795548')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (11, N'規律性', N'#009688')
INSERT [dbo].[Skills] ([SkillId], [SkillName], [Style]) VALUES (12, N'ストレスコントロール力', N'#9e9e9e')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'001', N'001')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'005', N'001')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'006', N'001')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'82ca568b-07b6-4e1d-889d-de43c735228f', N'001')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'002', N'002')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'003', N'003')
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (N'004', N'004')
GO
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'001', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, N'003', NULL, N'xuanthanh', N'XUANTHANH', N'xuanthanh@gmail.com', N'xuanthanh@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0001', NULL, N'Xuan Thanh')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'002', NULL, NULL, NULL, NULL, N'/images/teacher.png', NULL, NULL, NULL, N'teacher', N'TEACHER', N'teacher@gmail.com', N'teacher@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, NULL, NULL, N'我成')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'003', NULL, NULL, NULL, NULL, N'/images/dad.png', NULL, N'003', NULL, N'family', N'FAMILY', N'family@gmail.com', N'family@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, NULL, NULL, N'野比 玉子')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'004', NULL, NULL, NULL, NULL, N'/images/doctor.png', NULL, NULL, NULL, N'doctor', N'DOCTOR', N'doctor@gmail.com', N'doctor@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, NULL, NULL, N'ヒデヨ')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'005', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, NULL, NULL, N'obito', N'OBITO', N'obito@gmail.com', N'obito@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0003', NULL, N'うちは オビト')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'006', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, N'003', NULL, N'nobita', N'NOBITA', N'nobita@gmail.com', N'nobita@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0004', NULL, N'野比 のび ')
INSERT [dbo].[Users] ([Id], [Phone], [Active], [CreateDate], [LastLogin], [Avatar], [ScholasticId], [ParentId], [bellNotifiId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [StudentCode], [BellNotifiId1], [FullName]) VALUES (N'82ca568b-07b6-4e1d-889d-de43c735228f', NULL, NULL, NULL, NULL, N'/images/student.png', NULL, NULL, NULL, N'sakura', N'SAKURA', N'sakura@gmail.com', N'sakura@gmail.com', 0, N'AQAAAAEAACcQAAAAEPaVi3SnVI7dPGv1FHRL33kWVTczIwMKBgPorlOMMC45bnU9/rR5D4ZjA2ej2dRXrQ==', N'010e52b7-90c1-471c-8af8-5cea09069e7c', N'110bd236-a2f9-43bf-bb8d-eb14c3bc8b46', NULL, 0, 0, NULL, 0, 0, N'ST0002', NULL, N'春野サクラ')
GO
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'001', 1)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'001', 2)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'001', 3)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'005', 1)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'005', 2)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'006', 4)
INSERT [dbo].[UserSchoolYears] ([UserId], [SchoolYearId]) VALUES (N'82ca568b-07b6-4e1d-889d-de43c735228f', 1)
GO
/****** Object:  Index [IX_Events_ListEventId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_Events_ListEventId] ON [dbo].[Events]
(
	[ListEventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Events_UserId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_Events_UserId] ON [dbo].[Events]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Messages_EventId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_Messages_EventId] ON [dbo].[Messages]
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Messages_UserId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_Messages_UserId] ON [dbo].[Messages]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleClaims_RoleId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [dbo].[RoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 06/12/2021 16:48:04 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Roles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserClaims_UserId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [dbo].[UserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserLogins_UserId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId] ON [dbo].[UserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserRoles_RoleId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId] ON [dbo].[UserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Users]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_bellNotifiId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_Users_bellNotifiId] ON [dbo].[Users]
(
	[bellNotifiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 06/12/2021 16:48:04 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Users]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserSchoolYears_ScholYearId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserSchoolYears_ScholYearId] ON [dbo].[UserSchoolYears]
(
	[SchoolYearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserSchoolYears_UserId]    Script Date: 06/12/2021 16:48:04 ******/
CREATE NONCLUSTERED INDEX [IX_UserSchoolYears_UserId] ON [dbo].[UserSchoolYears]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BellNotification]  WITH CHECK ADD  CONSTRAINT [FK_BellNotification_Messages] FOREIGN KEY([NotifiId])
REFERENCES [dbo].[Messages] ([MessagesId])
GO
ALTER TABLE [dbo].[BellNotification] CHECK CONSTRAINT [FK_BellNotification_Messages]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_ListEvents] FOREIGN KEY([ListEventId])
REFERENCES [dbo].[ListEvents] ([ListEventId])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_ListEvents]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Users]
GO
ALTER TABLE [dbo].[GroupInfos]  WITH CHECK ADD  CONSTRAINT [FK_GroupInfos_GroupInfos] FOREIGN KEY([GroupInfoId1])
REFERENCES [dbo].[GroupInfos] ([GroupInfoId])
GO
ALTER TABLE [dbo].[GroupInfos] CHECK CONSTRAINT [FK_GroupInfos_GroupInfos]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Events] ([EventId])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Events]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users]
GO
ALTER TABLE [dbo].[MessagesSkills]  WITH CHECK ADD  CONSTRAINT [FK_MessagesSkills_Messages] FOREIGN KEY([MessagesId])
REFERENCES [dbo].[Messages] ([MessagesId])
GO
ALTER TABLE [dbo].[MessagesSkills] CHECK CONSTRAINT [FK_MessagesSkills_Messages]
GO
ALTER TABLE [dbo].[MessagesSkills]  WITH CHECK ADD  CONSTRAINT [FK_MessagesSkills_Skills] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[MessagesSkills] CHECK CONSTRAINT [FK_MessagesSkills_Skills]
GO
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_BellNotification] FOREIGN KEY([BellNotifiId1])
REFERENCES [dbo].[BellNotification] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_BellNotification]
GO
ALTER TABLE [dbo].[UserSchoolYears]  WITH CHECK ADD  CONSTRAINT [FK_UserSchoolYears_SchoolYears1] FOREIGN KEY([SchoolYearId])
REFERENCES [dbo].[SchoolYears] ([SchoolYearId])
GO
ALTER TABLE [dbo].[UserSchoolYears] CHECK CONSTRAINT [FK_UserSchoolYears_SchoolYears1]
GO
ALTER TABLE [dbo].[UserSchoolYears]  WITH CHECK ADD  CONSTRAINT [FK_UserSchoolYears_Users1] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserSchoolYears] CHECK CONSTRAINT [FK_UserSchoolYears_Users1]
GO
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [StudentManagement] SET  READ_WRITE 
GO
