USE [demoSpring1]
GO
/****** Object:  Table [dbo].[alarm]    Script Date: 04/06/2021 9:07:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alarm](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rencent_alarms_include] [int] NULL,
	[intital_notification_evacuation] [varchar](50) NULL,
	[ending_notification_evacuation] [varchar](50) NULL,
	[default_evacuation_length] [varchar](50) NULL,
	[man_down_notification] [varchar](50) NULL,
	[dissappears_after_mandown] [int] NULL,
	[man_down_movement_trigger] [bit] NULL,
	[Trigger_movement_man_down] [int] NULL,
	[accelerometer_vector_man_down] [int] NULL,
	[X_axis_exceeds] [int] NULL,
	[Y_axis_exceeds] [int] NULL,
	[Z_axis_exceeds] [int] NULL,
	[panic_notification] [varchar](50) NULL,
	[dissappears_after_panic] [int] NULL,
	[dalily_notification] [varchar](50) NULL,
	[alarm_response_panel] [bit] NULL,
	[zone_breach_time] [int] NULL,
	[dissappears_after_zone_breach] [int] NULL,
	[remove_from_alarm] [int] NULL,
 CONSTRAINT [PK_alarm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[history]    Script Date: 04/06/2021 9:07:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action] [varchar](max) NULL,
	[save_day] [datetime] NULL,
	[alarm_id] [int] NULL,
 CONSTRAINT [PK_historys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[alarm] ON 

INSERT [dbo].[alarm] ([id], [rencent_alarms_include], [intital_notification_evacuation], [ending_notification_evacuation], [default_evacuation_length], [man_down_notification], [dissappears_after_mandown], [man_down_movement_trigger], [Trigger_movement_man_down], [accelerometer_vector_man_down], [X_axis_exceeds], [Y_axis_exceeds], [Z_axis_exceeds], [panic_notification], [dissappears_after_panic], [dalily_notification], [alarm_response_panel], [zone_breach_time], [dissappears_after_zone_breach], [remove_from_alarm]) VALUES (1, NULL, N'Core Evac Notification 2', N'Core Evac Notification 2', N'60', N'Core Man Down Notification 2', 5, 1, 5, 2, 3, 1, 1, N'', NULL, N'', 0, NULL, NULL, NULL)
INSERT [dbo].[alarm] ([id], [rencent_alarms_include], [intital_notification_evacuation], [ending_notification_evacuation], [default_evacuation_length], [man_down_notification], [dissappears_after_mandown], [man_down_movement_trigger], [Trigger_movement_man_down], [accelerometer_vector_man_down], [X_axis_exceeds], [Y_axis_exceeds], [Z_axis_exceeds], [panic_notification], [dissappears_after_panic], [dalily_notification], [alarm_response_panel], [zone_breach_time], [dissappears_after_zone_breach], [remove_from_alarm]) VALUES (2, 7, N'2', N'2', N'2', N'2', 2, 1, 2, 2, NULL, NULL, NULL, N'2', 2, N'2', 1, 2, 3, 2)
INSERT [dbo].[alarm] ([id], [rencent_alarms_include], [intital_notification_evacuation], [ending_notification_evacuation], [default_evacuation_length], [man_down_notification], [dissappears_after_mandown], [man_down_movement_trigger], [Trigger_movement_man_down], [accelerometer_vector_man_down], [X_axis_exceeds], [Y_axis_exceeds], [Z_axis_exceeds], [panic_notification], [dissappears_after_panic], [dalily_notification], [alarm_response_panel], [zone_breach_time], [dissappears_after_zone_breach], [remove_from_alarm]) VALUES (3, 7, N'Core Evac Notification 1', N'Core Evac Notification 1', N'35', N'Core Man Down Notification 1', 1, 1, 3, 3, 3, 3, 3, N'Core Panic Alarm Notification 3', 3, N'Core Zone Breach Notification 1', 1, 2, 2, 2)
INSERT [dbo].[alarm] ([id], [rencent_alarms_include], [intital_notification_evacuation], [ending_notification_evacuation], [default_evacuation_length], [man_down_notification], [dissappears_after_mandown], [man_down_movement_trigger], [Trigger_movement_man_down], [accelerometer_vector_man_down], [X_axis_exceeds], [Y_axis_exceeds], [Z_axis_exceeds], [panic_notification], [dissappears_after_panic], [dalily_notification], [alarm_response_panel], [zone_breach_time], [dissappears_after_zone_breach], [remove_from_alarm]) VALUES (4, NULL, N'Core Evac Notification 3', N'Core Evac Notification 3', N'5', N'', 2, 1, 2, 2, NULL, NULL, NULL, N'Core Panic Alarm Notification 3', 2, N'Core Zone Breach Notification 3', 0, 3, 2, 1)
INSERT [dbo].[alarm] ([id], [rencent_alarms_include], [intital_notification_evacuation], [ending_notification_evacuation], [default_evacuation_length], [man_down_notification], [dissappears_after_mandown], [man_down_movement_trigger], [Trigger_movement_man_down], [accelerometer_vector_man_down], [X_axis_exceeds], [Y_axis_exceeds], [Z_axis_exceeds], [panic_notification], [dissappears_after_panic], [dalily_notification], [alarm_response_panel], [zone_breach_time], [dissappears_after_zone_breach], [remove_from_alarm]) VALUES (5, 8, N'Core Evac Notification 2', N'Core Evac Notification 2', N'2', N'Core Man Down Notification 2', 2, 1, 2, 2, 2, NULL, NULL, N'Core Panic Alarm Notification 3', 2, N'Core Zone Breach Notification 3', 1, 3, 2, 2)
INSERT [dbo].[alarm] ([id], [rencent_alarms_include], [intital_notification_evacuation], [ending_notification_evacuation], [default_evacuation_length], [man_down_notification], [dissappears_after_mandown], [man_down_movement_trigger], [Trigger_movement_man_down], [accelerometer_vector_man_down], [X_axis_exceeds], [Y_axis_exceeds], [Z_axis_exceeds], [panic_notification], [dissappears_after_panic], [dalily_notification], [alarm_response_panel], [zone_breach_time], [dissappears_after_zone_breach], [remove_from_alarm]) VALUES (6, 10, N'Core Evac Notification 1', N'Core Evac Notification 1', N'1', N'Core Man Down Notification 1', 2, 1, 2, 2, 2, 2, 2, N'Core Panic Alarm Notification 2', 2, N'Core Zone Breach Notification 1', 1, 2, 2, 2)
INSERT [dbo].[alarm] ([id], [rencent_alarms_include], [intital_notification_evacuation], [ending_notification_evacuation], [default_evacuation_length], [man_down_notification], [dissappears_after_mandown], [man_down_movement_trigger], [Trigger_movement_man_down], [accelerometer_vector_man_down], [X_axis_exceeds], [Y_axis_exceeds], [Z_axis_exceeds], [panic_notification], [dissappears_after_panic], [dalily_notification], [alarm_response_panel], [zone_breach_time], [dissappears_after_zone_breach], [remove_from_alarm]) VALUES (7, NULL, N'Core Evac Notification 1', N'Core Evac Notification 2', N'', N'Core Man Down Notification 2', 1, 1, 3, 2, NULL, NULL, NULL, N'Core Panic Alarm Notification 3', 2, N'Core Zone Breach Notification 1', 1, 2, 2, 1)
INSERT [dbo].[alarm] ([id], [rencent_alarms_include], [intital_notification_evacuation], [ending_notification_evacuation], [default_evacuation_length], [man_down_notification], [dissappears_after_mandown], [man_down_movement_trigger], [Trigger_movement_man_down], [accelerometer_vector_man_down], [X_axis_exceeds], [Y_axis_exceeds], [Z_axis_exceeds], [panic_notification], [dissappears_after_panic], [dalily_notification], [alarm_response_panel], [zone_breach_time], [dissappears_after_zone_breach], [remove_from_alarm]) VALUES (8, NULL, N'Core Evac Notification 3', N'Core Evac Notification 3', N'3', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, N'', NULL, N'', 0, NULL, NULL, NULL)
INSERT [dbo].[alarm] ([id], [rencent_alarms_include], [intital_notification_evacuation], [ending_notification_evacuation], [default_evacuation_length], [man_down_notification], [dissappears_after_mandown], [man_down_movement_trigger], [Trigger_movement_man_down], [accelerometer_vector_man_down], [X_axis_exceeds], [Y_axis_exceeds], [Z_axis_exceeds], [panic_notification], [dissappears_after_panic], [dalily_notification], [alarm_response_panel], [zone_breach_time], [dissappears_after_zone_breach], [remove_from_alarm]) VALUES (9, 8, N'Core Evac Notification 1', N'Core Evac Notification 1', N'1', N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, N'', NULL, N'', 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[alarm] OFF
SET IDENTITY_INSERT [dbo].[history] ON 

INSERT [dbo].[history] ([id], [action], [save_day], [alarm_id]) VALUES (1, N'Intital Notification Old: Core Evac Notification 3 =>New: Core Evac Notification 1 *** End Notification Old: Core Evac Notification 3 =>New: Core Evac Notification 1 *** Default Evacuation Length Old: 70 =>New: 35 *** Man Down Notification Old: Core Man Down Notification 3 =>New: Core Man Down Notification 1 *** Dissappears After Old: 3 =>New: 1 *** ', CAST(N'2021-06-04T21:00:44.597' AS DateTime), 3)
INSERT [dbo].[history] ([id], [action], [save_day], [alarm_id]) VALUES (2, N'Intital Notification Old: Core Evac Notification 1 =>New: Core Evac Notification 2 *** End Notification Old: Core Evac Notification 1 =>New: Core Evac Notification 2 *** Default Evacuation Length Old: 55 =>New: 60 *** Man Down Notification Old: Core Man Down Notification 1 =>New: Core Man Down Notification 2 *** Dissappears After Old: 3 =>New: 5 *** Trigger No Movement Old: 3 =>New: 5 *** X Y Z Axis Exceeds have changed. *** ', CAST(N'2021-06-04T21:05:54.890' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[history] OFF
