/*
Navicat SQL Server Data Transfer

Source Server         : 192.168.1.11
Source Server Version : 105000
Source Host           : 192.168.1.11:1433
Source Database       : hd_bike
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2019-02-20 09:00:14
*/


-- ----------------------------
-- Table structure for bike
-- ----------------------------
DROP TABLE [dbo].[bike]
GO
CREATE TABLE [dbo].[bike] (
[id] varchar(50) NOT NULL ,
[sn] varchar(255) NULL ,
[location] nvarchar(255) NULL ,
[longitude] numeric(20,15) NULL ,
[latitude] numeric(20,15) NULL ,
[locationType] nvarchar(255) NULL ,
[state] int NULL DEFAULT ((0)) ,
[electric] float(53) NULL ,
[speed] float(53) NULL ,
[locked] int NULL DEFAULT ((0)) ,
[qrCode] varchar(255) NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'单车'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'单车'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'sn')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'设备编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'sn'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'设备编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'sn'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'location')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'位置'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'location'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'位置'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'location'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'longitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'longitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'longitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'latitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'latitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'latitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'locationType')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'定位方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'locationType'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'定位方式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'locationType'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'state')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'在线状态（0-离线，1-在线）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'state'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'在线状态（0-离线，1-在线）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'state'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'electric')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'电量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'electric'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'电量'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'electric'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'speed')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'速度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'speed'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'速度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'speed'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'locked')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否上锁（0-锁关，1-锁开）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'locked'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否上锁（0-锁关，1-锁开）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'locked'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'bike', 
'COLUMN', N'qrCode')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'二维码编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'qrCode'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'二维码编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'bike'
, @level2type = 'COLUMN', @level2name = N'qrCode'
GO

-- ----------------------------
-- Records of bike
-- ----------------------------
INSERT INTO [dbo].[bike] ([id], [sn], [location], [longitude], [latitude], [locationType], [state], [electric], [speed], [locked], [qrCode]) VALUES (N'2177f5d8-232d-4f26-b205-135a954ce951', N'063847887056', N'江苏省苏州市常熟市虹桥路北(泯泾园小区东)', N'120.789895000000000', N'31.690946000000000', N'GPS', N'0', N'0', N'0', N'0', N'063847887056')
GO
GO
INSERT INTO [dbo].[bike] ([id], [sn], [location], [longitude], [latitude], [locationType], [state], [electric], [speed], [locked], [qrCode]) VALUES (N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'062345887056', N'苏州市常熟市虞山镇海虞南路68号', N'120.750083000000000', N'31.682281000000000', N'GPS', N'0', N'0', N'0', N'0', N'062345887056')
GO
GO
INSERT INTO [dbo].[bike] ([id], [sn], [location], [longitude], [latitude], [locationType], [state], [electric], [speed], [locked], [qrCode]) VALUES (N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'063076317037', N'未知', N'120.773438000000000', N'31.681666000000000', N'GPS', N'0', N'0', N'0', N'0', N'063076317037')
GO
GO
INSERT INTO [dbo].[bike] ([id], [sn], [location], [longitude], [latitude], [locationType], [state], [electric], [speed], [locked], [qrCode]) VALUES (N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'063847617037', N'江苏省苏州市常熟市海虞北路12号', N'120.762084000000000', N'31.659785000000000', N'GPS', N'0', N'0', N'0', N'0', N'063847617037')
GO
GO
INSERT INTO [dbo].[bike] ([id], [sn], [location], [longitude], [latitude], [locationType], [state], [electric], [speed], [locked], [qrCode]) VALUES (N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'063075617037', N'江苏省苏州市常熟市宝岩管理区花园浜35-1号', N'120.698556000000000', N'31.674230000000000', N'GPS', N'0', N'0', N'0', N'0', N'063075617037')
GO
GO
INSERT INTO [dbo].[bike] ([id], [sn], [location], [longitude], [latitude], [locationType], [state], [electric], [speed], [locked], [qrCode]) VALUES (N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'630074085180', N'未知', N'120.749669000000000', N'31.641157000000000', N'GPS', N'0', N'0', N'0', N'0', N'014070000006')
GO
GO

-- ----------------------------
-- Table structure for command
-- ----------------------------
DROP TABLE [dbo].[command]
GO
CREATE TABLE [dbo].[command] (
[id] varchar(50) NOT NULL ,
[sn] varchar(255) NULL ,
[command] nvarchar(255) NULL ,
[jg] float(53) NULL ,
[hcjg] float(53) NULL DEFAULT ((0)) ,
[ip] varchar(255) NULL ,
[port] varchar(255) NULL ,
[sendTime] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'command', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'指令'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'指令'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'command', 
'COLUMN', N'id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主键id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主键id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'command', 
'COLUMN', N'sn')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'指令编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'sn'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'指令编号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'sn'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'command', 
'COLUMN', N'command')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'指令'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'command'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'指令'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'command'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'command', 
'COLUMN', N'jg')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'间隔'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'jg'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'间隔'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'jg'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'command', 
'COLUMN', N'hcjg')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'回传间隔'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'hcjg'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'回传间隔'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'command'
, @level2type = 'COLUMN', @level2name = N'hcjg'
GO

-- ----------------------------
-- Records of command
-- ----------------------------
INSERT INTO [dbo].[command] ([id], [sn], [command], [jg], [hcjg], [ip], [port], [sendTime]) VALUES (N'0e7a4bd1-c86c-4019-b92b-53090cdb2a95', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'设置锁开间隔', null, N'0', null, null, N'2018-11-01 15:33:24.707')
GO
GO
INSERT INTO [dbo].[command] ([id], [sn], [command], [jg], [hcjg], [ip], [port], [sendTime]) VALUES (N'54bf6ce8-4e3d-4a03-8264-b1e068cb9211', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'开锁', null, N'0', null, null, N'2018-11-01 16:12:43.757')
GO
GO
INSERT INTO [dbo].[command] ([id], [sn], [command], [jg], [hcjg], [ip], [port], [sendTime]) VALUES (N'566411f0-ce0e-4371-a591-70cab1dc8237', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'打开蜂鸣器', null, N'0', null, null, N'2018-11-01 15:32:55.160')
GO
GO
INSERT INTO [dbo].[command] ([id], [sn], [command], [jg], [hcjg], [ip], [port], [sendTime]) VALUES (N'9eea66e3-2b6e-4a75-b1b6-8dd9e09b1b23', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'开锁', null, N'0', null, null, N'2018-11-01 15:32:44.270')
GO
GO
INSERT INTO [dbo].[command] ([id], [sn], [command], [jg], [hcjg], [ip], [port], [sendTime]) VALUES (N'a1a057c9-2bb8-4cd2-a0e4-90309efc3713', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'关闭蜂鸣器', null, N'0', null, null, N'2018-11-01 16:12:32.030')
GO
GO
INSERT INTO [dbo].[command] ([id], [sn], [command], [jg], [hcjg], [ip], [port], [sendTime]) VALUES (N'ac0ef898-7fe7-45c5-ac2b-fece733f2fbd', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'设置锁开间隔', null, N'0', null, null, N'2018-11-01 16:04:01.757')
GO
GO
INSERT INTO [dbo].[command] ([id], [sn], [command], [jg], [hcjg], [ip], [port], [sendTime]) VALUES (N'ccc16ba6-a55c-48b0-ad77-02a8f025330f', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'打开蜂鸣器', null, N'0', null, null, N'2018-11-01 16:03:55.150')
GO
GO
INSERT INTO [dbo].[command] ([id], [sn], [command], [jg], [hcjg], [ip], [port], [sendTime]) VALUES (N'eda30e8a-621f-4254-85ed-727f038f3ae1', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'关闭蜂鸣器', null, N'0', null, null, N'2018-11-01 16:03:42.717')
GO
GO
INSERT INTO [dbo].[command] ([id], [sn], [command], [jg], [hcjg], [ip], [port], [sendTime]) VALUES (N'f1c1fe60-4519-4b3d-b62d-b9eb391254f6', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'设置锁开间隔', null, N'0', null, null, N'2018-11-01 16:03:50.893')
GO
GO

-- ----------------------------
-- Table structure for track
-- ----------------------------
DROP TABLE [dbo].[track]
GO
CREATE TABLE [dbo].[track] (
[id] varchar(50) NOT NULL ,
[longitude] numeric(20,15) NULL ,
[latitude] numeric(20,15) NULL ,
[bikeId] varchar(50) NULL ,
[recordTime] datetime NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'track', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'轨迹追踪'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'轨迹追踪'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'track', 
'COLUMN', N'longitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
, @level2type = 'COLUMN', @level2name = N'longitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'经度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
, @level2type = 'COLUMN', @level2name = N'longitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'track', 
'COLUMN', N'latitude')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
, @level2type = 'COLUMN', @level2name = N'latitude'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'纬度'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
, @level2type = 'COLUMN', @level2name = N'latitude'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'track', 
'COLUMN', N'bikeId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'车辆id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
, @level2type = 'COLUMN', @level2name = N'bikeId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'车辆id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
, @level2type = 'COLUMN', @level2name = N'bikeId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'track', 
'COLUMN', N'recordTime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'记录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
, @level2type = 'COLUMN', @level2name = N'recordTime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'记录时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'track'
, @level2type = 'COLUMN', @level2name = N'recordTime'
GO

-- ----------------------------
-- Records of track
-- ----------------------------
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'009f8e2e-2702-406c-af98-7d46435e790e', N'120.716306000000000', N'31.660553000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:51.643')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'02c63193-5192-4315-a2b8-2e80eadae69c', N'120.749454000000000', N'31.640927000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:03.103')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'031e3da4-58b7-4352-b6ed-312a3b18f076', N'120.781020000000000', N'31.685691000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:44.167')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'036a489a-094d-4354-91a8-5c449176a4ab', N'120.767096000000000', N'31.680959000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:31.917')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'03cd2fb2-0619-4aeb-b836-1d22a80e1a49', N'120.770564000000000', N'31.669927000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:59.387')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'043d1481-4f05-4a62-9746-991bdb2d60fd', N'120.769270000000000', N'31.678839000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:08.803')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'055c8bfb-82ba-4f84-82f7-6065aaa335c4', N'120.776888000000000', N'31.669927000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:04.177')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'055facc0-863c-4383-99e8-a7f38b1bace6', N'120.754897000000000', N'31.682096000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:38:58.367')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'05ae16e7-fe6b-4ecd-be84-f748d318cabe', N'120.698160000000000', N'31.673584000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:47.963')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'0675f144-2570-4083-a9bd-41c76877dadc', N'120.701538000000000', N'31.669866000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:04.737')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'078e0d38-ffc4-4386-a79d-0c3b2df73a59', N'120.749094000000000', N'31.639635000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:13.753')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'08436e16-f308-4235-9cb9-0a0a913826d3', N'120.761509000000000', N'31.661076000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:42:40.540')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'08daa3ac-e2c4-482c-b153-88c5fbd5684b', N'120.767330000000000', N'31.678870000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:22.130')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'08fd0936-fc58-4b2f-9a40-bc2e83a9cf96', N'120.783140000000000', N'31.671033000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:08.117')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'09af25eb-f419-4731-a253-c3ecca21fa22', N'120.749274000000000', N'31.639958000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:08.413')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'09f457bd-1a5d-4d51-943d-5123c3732c3a', N'120.771857000000000', N'31.675459000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:42.857')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'0aee717c-be71-461c-85c3-189f6cb8e842', N'120.748897000000000', N'31.638652000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:32.190')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'0bb37d03-303e-4381-985d-36904c36b246', N'120.713396000000000', N'31.662182000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:44.757')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'0c46f7b5-a5c9-4672-ab20-dab017c768f7', N'120.770025000000000', N'31.678655000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:07.540')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'0d711492-cf18-44b2-825c-0da0739f00b6', N'120.761365000000000', N'31.668575000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:50.210')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'10a40f64-d25e-4c74-9949-492dfdbdf9c5', N'120.701933000000000', N'31.669466000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:09.897')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'10e9708c-bbb0-40b8-b2ef-0de205e0003a', N'120.773510000000000', N'31.677548000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:40.043')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'1197e052-095e-40b6-90b7-66c79bda6e3a', N'120.770780000000000', N'31.684862000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:21.213')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'125f676e-5c4b-4578-b3fd-6ce2014a88e7', N'120.698556000000000', N'31.674230000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:05.593')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'133cd7de-94d1-4849-ab0b-597ab380558d', N'120.767186000000000', N'31.675766000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:46.807')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'13ae95a1-e85c-48c5-aa69-6a6a8052ee93', N'120.757341000000000', N'31.682158000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:00.367')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'14354bc7-6f91-42ae-91e3-b0e13c3725d3', N'120.773510000000000', N'31.680130000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:34.360')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'14674836-bddb-4629-b03f-f6951f9425af', N'120.766108000000000', N'31.684800000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:15.323')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'1576ec9f-175e-4748-b201-efd9dfdf4ab6', N'120.716594000000000', N'31.661291000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:50.450')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'15d842eb-a0d7-4c33-9f19-2f9655f0a4d0', N'120.708078000000000', N'31.664610000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:36.140')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'165a5b15-03bd-4e58-8796-933e842c912d', N'120.702939000000000', N'31.668513000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:12.537')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'16adbbcd-1518-449d-98c8-e12b796a0e0a', N'120.784398000000000', N'31.692082000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:15.770')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'16dac2cd-941d-4ced-95df-10025aae1a8a', N'120.763162000000000', N'31.669989000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:53.827')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'17363aaa-c706-483e-867f-46070fe8eeb1', N'120.705059000000000', N'31.667284000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:19.390')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'1788b9e1-52e1-490c-bc68-c9477f7d2e63', N'120.767977000000000', N'31.675520000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:45.947')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'180b3607-e470-486b-8cda-849576d0a36b', N'120.702580000000000', N'31.668851000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:11.833')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'193009af-45cd-4a07-beda-e9e5bf422ede', N'120.749049000000000', N'31.639259000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:21.657')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'1991dadb-92aa-4d6c-9589-e71d8467f9c0', N'120.773438000000000', N'31.680806000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:44:43.800')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'19c92d82-ec1b-4a71-aa36-15036f8cba06', N'120.769270000000000', N'31.684800000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:19.023')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'1a908093-89de-421d-8225-363557145b3c', N'120.748933000000000', N'31.638767000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:31.570')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'1a9b2faf-9c91-46b4-a270-317bef6dcbe7', N'120.749005000000000', N'31.639067000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:27.817')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'1d1bfee4-d1ed-4206-b0b7-5fc86ae8f2ed', N'120.699777000000000', N'31.672447000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:54.113')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'1d8d224b-dee2-413d-8b29-00f3977d1e72', N'120.748771000000000', N'31.638429000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:33.833')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'21bf316d-804c-4b3c-9f44-c3d9edfc5028', N'120.715803000000000', N'31.659754000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:53.567')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'21dfd6c7-26f6-4cdb-8cee-c942d3b2c1f8', N'120.764096000000000', N'31.684862000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:13.320')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'22df2aca-fb9c-4eb0-8c42-5e05979c60cb', N'120.761653000000000', N'31.685046000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:11.187')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'232dc993-e49b-4412-956e-9501ec2b3edf', N'120.779619000000000', N'31.669804000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:05.937')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'242b2cd1-72ac-41ef-b6aa-96dd2a3cac47', N'120.700784000000000', N'31.671279000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:58.293')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'246db0e3-e529-4121-be36-899d6d8db62a', N'120.767402000000000', N'31.673185000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:49.403')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'250fd39c-86b7-4217-80f9-a57736f2f9cf', N'120.770618000000000', N'31.681851000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:46.603')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'262a8df0-e881-49b8-bbd1-46b7c074e08a', N'120.781667000000000', N'31.686152000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:40.933')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'270eda71-9b32-4ef3-8ff9-4982cad70d46', N'120.785655000000000', N'31.692820000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:10.243')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'272caf32-4dfa-4dc1-824b-ea0990bffe6a', N'120.772792000000000', N'31.678778000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:00.160')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'277922f7-b683-4cbd-94ef-ee48d3230dfe', N'120.764384000000000', N'31.669927000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:54.567')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'279085ce-c9dc-473a-9082-052ae8b50487', N'120.750083000000000', N'31.682281000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:37:34.807')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'2797b94c-637f-4554-b273-30adf5e6edad', N'120.748178000000000', N'31.638183000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:43.740')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'29253610-d746-4604-9280-b4dd9776fd0c', N'120.775451000000000', N'31.669804000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:03.727')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'29a7c953-4035-43e1-ad68-b12f5fe86c06', N'120.768767000000000', N'31.681912000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:41.830')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'2a9c0f65-0458-457d-89b6-a233cbd07376', N'120.715947000000000', N'31.661875000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:48.477')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'2c0f17d1-8e94-4ea0-8181-6ba91db80ef8', N'120.706676000000000', N'31.665747000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:27.507')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'2c3cab14-c8da-4979-9111-17c535d68012', N'120.783931000000000', N'31.690700000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:20.390')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'2e4edd75-5dd7-4733-8473-68a4b8a71d8b', N'120.709264000000000', N'31.663903000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:38.717')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'2f4b6ff0-aa85-4ec0-bcd3-1cb7b9264e80', N'120.773367000000000', N'31.678470000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:36.150')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'30320625-4ac1-4a9b-bb74-301fba807a23', N'120.699059000000000', N'31.673031000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:50.697')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'30500816-eb22-401e-aded-ced46e79a54b', N'120.714258000000000', N'31.662121000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:45.990')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'30fb3a4f-74b2-42f0-8438-8d72573a2f5a', N'120.711312000000000', N'31.662613000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:41.783')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'31791812-1be3-4e08-8335-1022efd3244b', N'120.749184000000000', N'31.639820000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:09.630')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'317fb13f-2fe6-466b-ab32-5e44ef2513c0', N'120.774301000000000', N'31.669866000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:02.403')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'31b86632-8055-4165-91cd-f06125323f40', N'120.782493000000000', N'31.686337000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:38.123')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'31e5d825-3310-4f66-84bd-dadc0b8552fd', N'120.710845000000000', N'31.663043000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:41.053')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'321e3dea-c222-4ff3-b2fd-7568aca9a0f7', N'120.771534000000000', N'31.681835000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:49.427')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'33276d87-d8ed-4df8-bc3a-44277a1f666e', N'120.708437000000000', N'31.664272000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:36.927')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'34d8bf57-c7e7-494f-8653-60509790fe33', N'120.698160000000000', N'31.673277000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:48.750')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'354fb15d-ed5d-45a5-a337-b0ff07b25c4b', N'120.714869000000000', N'31.662059000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:46.627')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'3674c8f0-4e3f-447a-87b6-1e4bd9b83442', N'120.699993000000000', N'31.672140000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:54.793')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'3788e438-d1df-4c8f-86a3-89011633cbcc', N'120.772289000000000', N'31.669866000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:00.920')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'37cbc88f-3411-4e04-b0c9-c2b521f98b90', N'120.749669000000000', N'31.641157000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:47:58.427')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'3d30bd52-d869-4083-a1dc-cf417f2f9671', N'120.700388000000000', N'31.671710000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:56.567')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'3d46ae30-d66e-47b4-a691-645f3d8aa57d', N'120.705275000000000', N'31.666977000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:20.213')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'3d738e03-2e16-42f2-8273-9aeccdf6f4cd', N'120.705778000000000', N'31.666424000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:21.567')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'3d7421df-a72f-4d94-bb84-95e9d17ef662', N'120.748627000000000', N'31.638144000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:39.090')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'3e5fe4ef-b3a6-4ad7-b6e3-20ff0319957e', N'120.768408000000000', N'31.678793000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:17.597')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'405e4694-1143-45f0-9aa0-1781e8e30c43', N'120.768695000000000', N'31.684739000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:18.297')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'41a25be1-5366-42d2-8678-5bb2af06b61c', N'120.766827000000000', N'31.684677000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:16.380')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'42207b24-927d-4e2d-b4db-cd0c6e9550bd', N'120.773223000000000', N'31.684677000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:24.707')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'444d346d-bec7-46a2-b4d4-833923398bf3', N'120.709982000000000', N'31.663535000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:39.837')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'461526d3-a4c8-4a48-8ccc-149f0b76484e', N'120.771390000000000', N'31.678716000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:04.783')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'4646e040-4190-479f-8848-386c60630aae', N'120.767743000000000', N'31.681958000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:38.837')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'46a92b04-46d7-4bc7-8176-00fcd9349917', N'120.769989000000000', N'31.669804000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:57.943')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'46c373d1-011b-42f1-bfc5-a863a0bddc84', N'120.778756000000000', N'31.669804000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:05.443')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'46c5817d-7f98-4a8f-8fcb-ddd4283c5428', N'120.781128000000000', N'31.685999000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:42.240')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'493479b7-49f4-4258-9835-ee03cf3a7ee4', N'120.780697000000000', N'31.669866000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:06.447')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'4b782cd7-112a-45d0-967b-fc7f49a29072', N'120.709659000000000', N'31.663780000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:39.220')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'4cd0f1f3-a2f2-4984-b16b-efd7ca74e837', N'120.783140000000000', N'31.688027000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:28.517')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'4fc7e0a0-dd1e-450d-9dfc-2619c03db6b5', N'120.788063000000000', N'31.691929000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:33:51.740')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'4ff1d452-22ce-43ed-92f6-1891727c0885', N'120.748061000000000', N'31.638167000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:50.763')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'500b0248-3d0f-4da7-b699-39e44bb3bbe5', N'120.770258000000000', N'31.681866000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:44.837')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'522d9d51-c77f-4f62-8291-4ae2cef8fdee', N'120.749049000000000', N'31.639182000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:22.637')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'536b95c9-b94c-4ad3-be15-62ee0107e6ec', N'120.765390000000000', N'31.669927000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:55.450')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'547b8564-1590-496e-8592-d12475cf0a5b', N'120.756191000000000', N'31.682219000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:38:59.503')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'550cf747-3b92-44e8-bc71-d43b638ea2c0', N'120.702436000000000', N'31.669128000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:11.213')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'55d01f6f-19ae-4b91-827b-6e7de9415177', N'120.747936000000000', N'31.638221000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:59.490')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'57478239-6fc8-4382-be6a-7e428981afbe', N'120.707359000000000', N'31.665133000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:29.680')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'57fce5dd-817b-4c6e-be1c-d00e5dc44147', N'120.773367000000000', N'31.683264000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:28.097')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'58b01f0e-de6f-4cf4-ae0b-7f6ce41e57c1', N'120.767689000000000', N'31.684677000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:17.327')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'58b3b07f-358e-4d25-9c8c-98528003ad36', N'120.758634000000000', N'31.681851000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:01.283')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'595c323e-a974-4846-b02d-25ca4de83bf2', N'120.748942000000000', N'31.638851000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:30.957')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'5c99ed66-bd06-4352-8d07-661ea69f7d96', N'120.786446000000000', N'31.692543000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:07.530')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'60494808-662e-44a4-af76-a760c1438cb5', N'120.773438000000000', N'31.681666000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:44:41.023')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'60fc37af-747b-432c-814a-7e6b8299c90f', N'120.703694000000000', N'31.667929000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:13.720')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'62233f5d-0a51-49cc-a3ef-581c8de17187', N'120.761293000000000', N'31.666854000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:47.670')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'6238d490-e380-4860-a5ec-9def7dfb76a6', N'120.784613000000000', N'31.692574000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:13.540')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'64d650f8-2d05-4beb-adcf-5cd68c547dcd', N'120.706820000000000', N'31.665594000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:28.230')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'6637a88e-e82b-4d82-bea0-6ee1a10562e0', N'120.749094000000000', N'31.639405000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:20.077')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'67c5d3f6-b7ec-4c9e-8dee-1c97142b5512', N'120.773295000000000', N'31.682588000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:29.157')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'6a402780-44f4-49c4-8187-f44bc02651d7', N'120.768480000000000', N'31.681927000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:41.067')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'6c17f19d-c8ac-4463-8a41-63cff762ef0d', N'120.701502000000000', N'31.670173000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:01.190')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'6cb717cc-1dac-44f0-8bf8-21946ebf9bd3', N'120.749328000000000', N'31.640281000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:06.677')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'6d74e0f7-a493-44c9-8ad7-1b6e000be00c', N'120.768138000000000', N'31.678808000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:18.417')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'6e417425-54d5-4791-a9ab-827c6a212ce4', N'120.748753000000000', N'31.638206000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:37.920')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'70040c48-3950-42ad-9b98-2d3e1a84c3cf', N'120.701430000000000', N'31.670542000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:00.473')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'7059c9d7-71f2-43ee-b66b-d93d5cbae845', N'120.767671000000000', N'31.678824000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:21.097')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'706c4611-6138-4223-88a7-3e534aa362fe', N'120.773438000000000', N'31.684001000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:25.923')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'70cc4ea5-0688-4d25-8ea9-5b4f170a6b9f', N'120.748816000000000', N'31.638559000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:33.067')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'72b0c2f3-f2f5-4d9b-bbf1-604f68036530', N'120.773582000000000', N'31.679085000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:35.170')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'73738177-3aee-4441-9c6f-555ca17c5b33', N'120.768085000000000', N'31.681973000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:40.090')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'73d929da-d604-4b46-b7e3-c979fdca9e11', N'120.716558000000000', N'31.661598000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:49.717')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'746febb9-b6bc-4c3b-a463-b60df9cfa2e8', N'120.702257000000000', N'31.669282000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:10.600')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'74c9b581-c189-4e2d-a0b7-748c9f41c6d9', N'120.749310000000000', N'31.640143000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:07.443')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'7516bf97-b4a3-4d96-8858-253b00f3c0f2', N'120.765390000000000', N'31.673000000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:52.540')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'76c70bbf-1e3e-413f-ada8-d9f455c252e3', N'120.783643000000000', N'31.689809000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:22.857')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'77f3778c-b385-4999-912d-b50d80b0d399', N'120.769270000000000', N'31.675582000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:45.197')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'7813bba4-984a-450c-8265-9aaca47cc62d', N'120.761437000000000', N'31.682465000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:06.583')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'78eb2e27-7ede-4501-aff6-a495c2386a3b', N'120.712857000000000', N'31.662121000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:44.037')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'79a0684d-99f7-4ff9-99d4-ddce15c4a91c', N'120.760503000000000', N'31.682096000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:03.613')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'7ac046db-f449-483f-ba73-6b236d28942d', N'120.768408000000000', N'31.669804000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:57.407')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'7db175b6-047d-429a-9545-ab8ff9e66535', N'120.716163000000000', N'31.660061000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:52.887')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'805a8cac-ee17-4ed0-94cd-b338297fa2c5', N'120.699346000000000', N'31.672847000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:51.403')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'80c5d498-3328-442b-86b6-eb87adb506a8', N'120.782853000000000', N'31.687351000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:32.727')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'840b62e2-2ca9-4c52-b16e-be1ed4573207', N'120.773438000000000', N'31.681267000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:44:42.450')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'85eb6c36-6348-4b76-86e1-a2632df607dc', N'120.762946000000000', N'31.685046000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:12.253')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'868fb9d6-40d7-4697-a462-beef47d0df60', N'120.773438000000000', N'31.675643000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:41.650')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'882a4c59-6d75-447e-9ce8-06ac2983a60e', N'120.749094000000000', N'31.639528000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:17.397')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'899a2e9d-0660-4b6f-ba24-84ed1750de57', N'120.767078000000000', N'31.679500000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:24.153')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'8c28aa20-54f8-428d-8a2f-ec6b3c9d5ef2', N'120.765174000000000', N'31.684800000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:14.270')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'8e08342d-7822-4205-bd4c-b1a3d4217939', N'120.715300000000000', N'31.661998000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:47.483')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'905b6294-0d22-4a0e-85f1-157632fcf26e', N'120.747801000000000', N'31.638244000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:49:00.463')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'908e679c-8c3d-4ae0-9571-f89178ce3376', N'120.767384000000000', N'31.681973000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:37.907')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'92842191-6440-4782-931b-82596bf58bef', N'120.748987000000000', N'31.638928000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:30.043')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9295d46a-9afc-45ea-b46a-b65bc7da4ddc', N'120.772989000000000', N'31.681758000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:56.197')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'93d2ba82-a148-46cd-88bd-5ab94bf6cba9', N'120.773403000000000', N'31.679269000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:44:49.023')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'94603c37-8b15-4b29-8b13-4cf1150a8cd7', N'120.716450000000000', N'31.660984000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:51.037')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'95baac77-82da-4ee9-a086-92ed574e96d7', N'120.749382000000000', N'31.640573000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:05.143')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'95d7dd8d-875b-4782-a299-1c3b24e4733c', N'120.771157000000000', N'31.681851000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:48.587')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'961ad16c-a41f-4a6c-b658-52a9b74010dd', N'120.777894000000000', N'31.669804000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:04.803')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'963490d6-9103-44c9-9e0a-516d529aa202', N'120.773403000000000', N'31.680406000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:44:44.993')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'97cfd448-2d58-4345-89f5-e01e38cb08f7', N'120.770564000000000', N'31.678624000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:06.813')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'98785c24-d692-414f-8942-f654fc64fff7', N'120.752454000000000', N'31.682096000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:38:56.390')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9927d18c-783c-4bc4-b0af-ccdfc56ef9ab', N'120.698412000000000', N'31.673738000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:45.917')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9b2c61e9-9a2b-4ded-8023-3343d45a2ee5', N'120.783571000000000', N'31.689317000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:24.120')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9b587693-b06a-4bdb-8d42-429f0fa67f45', N'120.770133000000000', N'31.684800000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:19.827')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9c52dae7-260f-48f9-a3ad-f9c0b9d86799', N'120.701718000000000', N'31.669681000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:05.463')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9cd38d06-2345-455d-8e80-2e4b750d755c', N'120.712354000000000', N'31.662305000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:43.267')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9d4c895e-3db1-40eb-9315-cfd3d2cb3e23', N'120.781990000000000', N'31.670296000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:07.073')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9d4d3784-0681-4358-9d43-4fad62e8a405', N'120.773510000000000', N'31.679699000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:44:47.847')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9da2c661-5289-42d0-ae5f-d3f8d5c17233', N'120.772558000000000', N'31.681789000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:54.837')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'9e47294d-687b-4e3f-8e56-b57f5ba9b531', N'120.782637000000000', N'31.686705000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:35.940')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'a0913b1f-807d-42ca-b4ff-8e477f4d0273', N'120.769270000000000', N'31.681912000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:42.473')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'a2f85b3a-3d71-493a-bf7c-ed1ec53aed1b', N'120.773510000000000', N'31.680990000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:33.213')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'a3cc8312-59b9-4316-a52f-fb2b59b85d90', N'120.767061000000000', N'31.680053000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:25.430')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'a420a542-7c7e-4f98-a213-5c26d538dcf0', N'120.771750000000000', N'31.678778000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:03.893')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'a48dc869-f85c-4dd7-895c-3ebfe54d74b5', N'120.773367000000000', N'31.678747000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:44:54.730')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'a7856018-92ce-4171-8335-d938eac71b89', N'120.773151000000000', N'31.669866000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:01.603')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'a8146dd5-83ec-435a-ad29-1831dd2b9838', N'120.770869000000000', N'31.681897000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:47.877')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'a933883a-2d7e-4241-894f-92ba31dde3b5', N'120.767330000000000', N'31.674783000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:47.690')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'a9da17f3-9083-4e5f-978a-23b180826298', N'120.784003000000000', N'31.691253000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:19.487')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'aad94303-3b8c-4d68-959a-0dd3524d4661', N'120.700245000000000', N'31.671986000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:55.500')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'ac2ca87d-fd46-46d7-8e96-d89b98988658', N'120.772432000000000', N'31.684677000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:23.777')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'ad1544fe-ad86-4066-babb-b3aed742197b', N'120.773510000000000', N'31.680038000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:44:46.963')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'ad72f776-0db9-4199-927d-ba9650ca8c08', N'120.783715000000000', N'31.690270000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:21.537')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'aff8acd8-a331-4dea-b159-4c1316b4722e', N'120.767132000000000', N'31.681405000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:35.463')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'b0980ac8-279e-4ccd-b151-706e3a2f4731', N'120.701215000000000', N'31.670849000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:59.817')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'b0f284b4-6c6c-4d00-98b2-8fcb1b447097', N'120.707179000000000', N'31.665317000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:28.893')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'b1c238bf-4d85-4eda-85b6-ffe53458a97b', N'120.749454000000000', N'31.640757000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:04.207')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'b4b4c7c2-9d83-4534-bad5-c6b6633ebb22', N'120.711815000000000', N'31.662397000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:42.707')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'b5795080-6f09-4351-8ba1-d6944b5f4715', N'120.782996000000000', N'31.687627000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:31.277')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'b60674a1-2d67-4597-a29e-723b668df405', N'120.751304000000000', N'31.682219000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:38:55.297')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'b78c50b9-148d-477a-9b33-92a53a978270', N'120.766324000000000', N'31.669927000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:56.197')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'bad00050-c713-407f-8215-12e0d12ac926', N'120.782637000000000', N'31.687043000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:34.473')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'bc1f82d1-9c36-494b-afd3-40c6dfb9f00c', N'120.704700000000000', N'31.667468000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:15.293')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'bc4e3b61-4cca-48d9-ac46-99effd5745e8', N'120.769917000000000', N'31.681881000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:43.947')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'bdbd02b2-2e70-4eef-bf87-0e1112c0df85', N'120.767132000000000', N'31.681835000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:36.507')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'be9afb2a-faf5-477a-8272-466ddb2bf72d', N'120.749346000000000', N'31.640389000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:05.863')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'bed8911e-827b-4cbf-966c-c8d645c844a3', N'120.772253000000000', N'31.681789000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:53.573')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'bf78d992-f529-4a75-9cf1-57656bf2f080', N'120.759569000000000', N'31.682035000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:02.487')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c2b2883b-295a-41d8-adfb-52b2ab9dcbdb', N'120.771786000000000', N'31.684739000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:22.893')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c3973f07-6135-4dbc-beed-56fa3077d5a8', N'120.773438000000000', N'31.682035000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:31.187')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c536e1ba-4704-4829-88ce-41fc0b2d1806', N'120.784182000000000', N'31.691591000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:17.243')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c5536d9f-adff-4ae3-9508-4732d93690dd', N'120.773295000000000', N'31.682957000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:30.063')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c5ce930e-b1ee-4a3d-a5b2-15b88c7fea66', N'120.748753000000000', N'31.638298000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:36.327')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c5ef7b8d-f741-4681-8d07-6c7be80b18ed', N'120.783392000000000', N'31.688948000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:25.240')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c701b407-f16d-477f-9785-1db7a39ae198', N'120.716270000000000', N'31.660215000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:52.257')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c8bc92b8-bbac-4cad-89f9-50a895e8f89b', N'120.713719000000000', N'31.662121000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:45.360')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c8c5a684-0914-4406-ae8f-0e14a8a5753a', N'120.700532000000000', N'31.671587000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:57.603')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c8e811be-84ae-48b4-9993-5322be27fb0a', N'120.748403000000000', N'31.638198000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:41.200')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'c94d1b92-cd36-4c8d-afb2-8f707c7b94bf', N'120.789033000000000', N'31.691622000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:31:42.557')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'ca4d2444-9376-4b3b-aa42-6ee5b8453b16', N'120.770851000000000', N'31.675828000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:44.397')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'cb67f9bb-a92e-4104-b137-98447350197e', N'120.767043000000000', N'31.679039000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:23.290')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'ccced01d-d3ef-43b6-98f5-48cf8b410fbb', N'120.701071000000000', N'31.671033000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:58.920')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'cd44f94e-9ba7-4646-931a-e610b0858e89', N'120.761653000000000', N'31.684063000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:09.900')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'cdb7829e-62b0-4022-8613-8193ef58ce7f', N'120.705527000000000', N'31.666731000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:20.860')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'cdc48b52-445b-49d0-b6a5-69a82b845809', N'120.753748000000000', N'31.682096000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:38:57.423')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'ce0a7a98-2c4f-4320-8547-0fdf8f56c6a8', N'120.767474000000000', N'31.674045000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:48.347')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'cfff27de-d924-4a29-b054-b2765a335ad7', N'120.672146000000000', N'31.682803000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:06.727')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'd0a6bbcf-f8bb-4502-9885-9580e8d95141', N'120.761437000000000', N'31.669989000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:51.217')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'd1c899aa-6b4f-4873-9c19-40a8107c62e3', N'120.698520000000000', N'31.673062000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:50.000')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'd51d58af-9fe6-4fd7-bc32-78227e155ef5', N'120.748286000000000', N'31.638190000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:43.043')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'd53863ac-8952-4686-9d8c-4948ba0bd096', N'120.707683000000000', N'31.664825000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:31.580')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'd6bf78b1-8147-47c0-9562-4c6499ebd5bf', N'120.772325000000000', N'31.678778000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:01.813')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'd71aa385-e183-41e9-8c93-c3df50d82032', N'120.762084000000000', N'31.659785000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:42:38.923')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'd7219aed-bf10-440b-b153-f6dae99e7baf', N'120.708832000000000', N'31.664088000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:37.363')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'dc0a664d-90cf-499f-87b0-1ebacfcddab3', N'120.766468000000000', N'31.672816000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:50.800')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'dc47f3ac-3264-4456-b4c0-d43e16db34c8', N'120.773582000000000', N'31.676442000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:40.880')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'dd3d57c6-718f-40bb-b2eb-2d9d3b16b252', N'120.787236000000000', N'31.692205000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:02.057')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'dd698861-c7d4-4c08-b33b-4c457dc46e80', N'120.704305000000000', N'31.667745000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:14.233')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'e08f8caf-a3b7-4d5d-aced-d76886af3dcb', N'120.782386000000000', N'31.685999000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:39.733')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'e0b0a5a1-1e31-4759-a224-79779a6550f4', N'120.783356000000000', N'31.688549000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:27.053')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'e4553263-48fe-41d4-88de-f9c7d2f02bf0', N'120.761365000000000', N'31.664580000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:17.840')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'e6e8f9bf-dde0-4337-84ae-4c9d32435a53', N'120.699598000000000', N'31.672632000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:46:52.090')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'e8c8bc74-bb84-48b1-bfdf-8bd0b10abbbb', N'120.769630000000000', N'31.681912000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:43.257')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'e9858e28-a6ca-4d41-9811-ed2e39e3471d', N'120.710485000000000', N'31.663381000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:40.477')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'ec196427-22df-4aed-84a9-6f4d14388197', N'120.773295000000000', N'31.681666000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:32.267')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'ee69dd34-0ce2-45ad-9692-694d68857010', N'120.785009000000000', N'31.693066000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:34:12.223')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f167b31f-1eb4-46d9-ac79-4b69ed65dbf2', N'120.773474000000000', N'31.678962000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:44:49.873')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f3617a87-5297-4459-af54-94cbe8d22dbc', N'120.768983000000000', N'31.678793000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:16.590')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f37eb4fb-ab77-4d99-a2e1-11313bf57da1', N'120.762299000000000', N'31.670173000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:52.937')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f45494ca-367a-49b4-8b9f-a297ec0a9da2', N'120.771786000000000', N'31.669927000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:45:00.007')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f47bb4f2-f9c0-451b-8918-2520207aa18b', N'120.706137000000000', N'31.666393000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:22.230')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f4c5b8b4-f41c-4be0-b626-07c29808aa86', N'120.749508000000000', N'31.641049000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:01.710')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f5049de0-d2e2-4e5d-bf7d-b677d38e3860', N'120.767617000000000', N'31.669804000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:56.727')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f5b273de-182d-4b8d-8ac3-eb65302886a4', N'120.703371000000000', N'31.668237000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:13.097')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f5f93c16-7ae8-4354-9659-ff99fad7e1f6', N'120.763952000000000', N'31.673123000000000', N'294e4e01-4069-4355-8b03-6e7d08a59a89', N'2018-11-02 13:39:53.713')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f837722d-af64-4d9c-94cf-b2bf21c34d06', N'120.767150000000000', N'31.680468000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:30.733')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f85a44a0-7441-4ae1-989d-90837a9be8cf', N'120.706425000000000', N'31.666116000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:26.603')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f88f2ef8-7615-4d4a-8ca4-d9583df2e94e', N'120.761365000000000', N'31.662920000000000', N'41168e57-9a83-4570-8d45-3a0fe4039b72', N'2018-11-02 13:44:15.870')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'f9308838-20cc-42ab-9372-7289ae4c146e', N'120.770959000000000', N'31.678685000000000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd', N'2018-11-01 14:45:05.757')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'fad23c00-5458-463d-8967-e7b26568fc08', N'120.789895000000000', N'31.690946000000000', N'2177f5d8-232d-4f26-b205-135a954ce951', N'2018-11-02 13:31:31.567')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'fb6cdcef-7a57-4af1-9012-a30f9472801e', N'120.747720000000000', N'31.638244000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:49:01.507')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'fcd5ca79-9b94-41fd-848d-0a04a730bb68', N'120.749076000000000', N'31.639343000000000', N'b820790a-7fde-41f5-93ac-14fcdc600f14', N'2018-11-01 14:48:20.960')
GO
GO
INSERT INTO [dbo].[track] ([id], [longitude], [latitude], [bikeId], [recordTime]) VALUES (N'fffe0549-0b0a-483e-8182-6e24f1a24d4e', N'120.716270000000000', N'31.661690000000000', N'5e5779be-d816-4ae6-a2bf-030da8313eb8', N'2018-11-02 13:47:49.037')
GO
GO

-- ----------------------------
-- Table structure for warning
-- ----------------------------
DROP TABLE [dbo].[warning]
GO
CREATE TABLE [dbo].[warning] (
[id] varchar(50) NOT NULL ,
[warningType] varchar(255) NULL ,
[warningTime] datetime NULL ,
[details] nvarchar(255) NULL ,
[handlePerson] nvarchar(255) NULL ,
[handleTime] datetime NULL ,
[bikeId] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of warning
-- ----------------------------
INSERT INTO [dbo].[warning] ([id], [warningType], [warningTime], [details], [handlePerson], [handleTime], [bikeId]) VALUES (N'1', N'锁具故障', N'2018-10-03 16:00:50.000', N'此车无法开锁', N'王超', N'2018-10-04 16:01:55.000', N'2c841aeb-386b-40d6-b81e-351cee2e63cd')
GO
GO
INSERT INTO [dbo].[warning] ([id], [warningType], [warningTime], [details], [handlePerson], [handleTime], [bikeId]) VALUES (N'2', N'刹车失灵', N'2018-10-26 16:02:40.000', N'刹车失灵', N'张伟伟', N'2018-10-28 16:02:59.000', N'b820790a-7fde-41f5-93ac-14fcdc600f14')
GO
GO

-- ----------------------------
-- Indexes structure for table bike
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table bike
-- ----------------------------
ALTER TABLE [dbo].[bike] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table command
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table command
-- ----------------------------
ALTER TABLE [dbo].[command] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table track
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table track
-- ----------------------------
ALTER TABLE [dbo].[track] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table warning
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table warning
-- ----------------------------
ALTER TABLE [dbo].[warning] ADD PRIMARY KEY ([id])
GO
