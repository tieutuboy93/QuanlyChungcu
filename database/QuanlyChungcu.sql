USE [QL_Chungcu]
GO
/****** Object:  Table [dbo].[canho]    Script Date: 1/3/2018 1:25:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[canho](
	[id_canho] [int] IDENTITY(1,1) NOT NULL,
	[id_toanha] [int] NOT NULL,
	[so_nha] [char](10) NOT NULL,
	[dientich] [int] NOT NULL,
	[sophong] [int] NOT NULL,
	[gia_ban] [float] NOT NULL,
	[gia_thue] [float] NOT NULL,
	[mota] [nchar](10) NULL,
	[trangthai] [tinyint] NOT NULL,
	[kichhoat] [tinyint] NOT NULL,
 CONSTRAINT [PK_canho] PRIMARY KEY CLUSTERED 
(
	[id_canho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chitiet_giaodich]    Script Date: 1/3/2018 1:25:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiet_giaodich](
	[id_giaodich] [int] NOT NULL,
	[id_canho] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chungcu]    Script Date: 1/3/2018 1:25:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chungcu](
	[id_chungcu] [int] IDENTITY(1,1) NOT NULL,
	[ten_chungcu] [nchar](255) NOT NULL,
	[so_toanha] [int] NOT NULL,
	[tong_dientich] [int] NOT NULL,
	[diachi] [nchar](255) NOT NULL,
	[chu_dautu] [nchar](255) NOT NULL,
	[mota] [nchar](1000) NULL,
	[kichhoat] [tinyint] NOT NULL,
 CONSTRAINT [PK_chungcu] PRIMARY KEY CLUSTERED 
(
	[id_chungcu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giaodich]    Script Date: 1/3/2018 1:25:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giaodich](
	[id_giaodich] [int] IDENTITY(1,1) NOT NULL,
	[loai_giaodich] [int] NOT NULL,
	[soluong] [int] NOT NULL,
	[tong_gia] [int] NOT NULL,
	[ngaylap_giaodich] [date] NOT NULL,
	[id_nhanvien] [int] NOT NULL,
	[id_khachhang] [int] NOT NULL,
	[mota] [nchar](10) NULL,
 CONSTRAINT [PK_giaodich] PRIMARY KEY CLUSTERED 
(
	[id_giaodich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 1/3/2018 1:25:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[id_khachhang] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nchar](255) NOT NULL,
	[diachi] [nchar](255) NOT NULL,
	[sdt] [nchar](12) NOT NULL,
	[email] [nchar](255) NOT NULL,
	[cmnd] [nchar](20) NULL,
	[ngay_sinh] [date] NULL,
	[gioitinh] [tinyint] NOT NULL,
	[tongtien_giaodich] [float] NOT NULL,
	[mota] [nchar](1000) NULL,
	[kichhoat] [tinyint] NOT NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[id_khachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 1/3/2018 1:25:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[id_nhanvien] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nchar](255) NOT NULL,
	[diachi] [nchar](1000) NOT NULL,
	[sdt] [nchar](20) NOT NULL,
	[ngaysinh] [date] NOT NULL,
	[cmnd] [nchar](20) NOT NULL,
	[luong] [float] NOT NULL,
	[ngay_batdau] [date] NOT NULL,
	[mota] [nchar](1000) NULL,
	[id_toanha] [int] NOT NULL,
	[kichhoat] [tinyint] NOT NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[id_nhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[toanha]    Script Date: 1/3/2018 1:25:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[toanha](
	[id_toanha] [int] IDENTITY(1,1) NOT NULL,
	[ten_toanha] [nchar](255) NOT NULL,
	[diachi] [nchar](255) NOT NULL,
	[sdt_quanly] [nchar](255) NOT NULL,
	[so_tang] [int] NOT NULL,
	[so_canho] [int] NOT NULL,
	[tong_dientich] [int] NOT NULL,
	[ngay_xaydung] [date] NOT NULL,
	[ngay_hoanthanh] [date] NOT NULL,
	[mota] [nchar](1000) NULL,
	[id_chungcu] [int] NOT NULL,
	[kichhoat] [tinyint] NOT NULL,
 CONSTRAINT [PK_toanha] PRIMARY KEY CLUSTERED 
(
	[id_toanha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[canho] ON 

INSERT [dbo].[canho] ([id_canho], [id_toanha], [so_nha], [dientich], [sophong], [gia_ban], [gia_thue], [mota], [trangthai], [kichhoat]) VALUES (1, 1, N'01-B1     ', 60, 4, 1000000, 5000, N'rộng rãi  ', 1, 1)
INSERT [dbo].[canho] ([id_canho], [id_toanha], [so_nha], [dientich], [sophong], [gia_ban], [gia_thue], [mota], [trangthai], [kichhoat]) VALUES (2, 3, N'A2-01-B1  ', 70, 5, 1200000, 6000, N'rộng      ', 2, 1)
INSERT [dbo].[canho] ([id_canho], [id_toanha], [so_nha], [dientich], [sophong], [gia_ban], [gia_thue], [mota], [trangthai], [kichhoat]) VALUES (3, 1, N'B1-02     ', 12344, 3, 13213, 1234, N'Đẹp       ', 0, 1)
INSERT [dbo].[canho] ([id_canho], [id_toanha], [so_nha], [dientich], [sophong], [gia_ban], [gia_thue], [mota], [trangthai], [kichhoat]) VALUES (4, 1, N'B1-978    ', 321, 200, 2311, 2321, N'Đẹp       ', 1, 1)
SET IDENTITY_INSERT [dbo].[canho] OFF
INSERT [dbo].[chitiet_giaodich] ([id_giaodich], [id_canho]) VALUES (8, 2)
INSERT [dbo].[chitiet_giaodich] ([id_giaodich], [id_canho]) VALUES (9, 1)
INSERT [dbo].[chitiet_giaodich] ([id_giaodich], [id_canho]) VALUES (9, 4)
SET IDENTITY_INSERT [dbo].[chungcu] ON 

INSERT [dbo].[chungcu] ([id_chungcu], [ten_chungcu], [so_toanha], [tong_dientich], [diachi], [chu_dautu], [mota], [kichhoat]) VALUES (1, N'Hoàng Gia 1                                                                                                                                                                                                                                                    ', 4, 3000, N'Số 1 Nguyễn Trãi, Thanh Xuân, Hà Nội                                                                                                                                                                                                                           ', N'VinCom                                                                                                                                                                                                                                                         ', N'Rỗng rãi, thoáng mát, đầy đủ tiện nghi cao cấp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 0)
INSERT [dbo].[chungcu] ([id_chungcu], [ten_chungcu], [so_toanha], [tong_dientich], [diachi], [chu_dautu], [mota], [kichhoat]) VALUES (2, N'Hoàng Gia 2                                                                                                                                                                                                                                                    ', 5, 4000, N'Số 2 Cầu Giấy, Hà Nội                                                                                                                                                                                                                                          ', N'VinCom                                                                                                                                                                                                                                                         ', N'Đẹp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 1)
INSERT [dbo].[chungcu] ([id_chungcu], [ten_chungcu], [so_toanha], [tong_dientich], [diachi], [chu_dautu], [mota], [kichhoat]) VALUES (7, N'Hoàng Gia 3                                                                                                                                                                                                                                                    ', 2, 4000, N'Số 2 Cầu Giấy, Hà Nội                                                                                                                                                                                                                                          ', N'Trần Tiến                                                                                                                                                                                                                                                      ', N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 1)
INSERT [dbo].[chungcu] ([id_chungcu], [ten_chungcu], [so_toanha], [tong_dientich], [diachi], [chu_dautu], [mota], [kichhoat]) VALUES (8, N'Trần Tiến 01                                                                                                                                                                                                                                                   ', 3, 21300, N'Sơn Tây, Hà Nội                                                                                                                                                                                                                                                ', N'Trần Tiến                                                                                                                                                                                                                                                      ', N'Đẹp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 1)
SET IDENTITY_INSERT [dbo].[chungcu] OFF
SET IDENTITY_INSERT [dbo].[giaodich] ON 

INSERT [dbo].[giaodich] ([id_giaodich], [loai_giaodich], [soluong], [tong_gia], [ngaylap_giaodich], [id_nhanvien], [id_khachhang], [mota]) VALUES (8, 1, 1, 6000, CAST(0xB83D0B00 AS Date), 1, 1, NULL)
INSERT [dbo].[giaodich] ([id_giaodich], [loai_giaodich], [soluong], [tong_gia], [ngaylap_giaodich], [id_nhanvien], [id_khachhang], [mota]) VALUES (9, 0, 2, 1002311, CAST(0xB83D0B00 AS Date), 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[giaodich] OFF
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([id_khachhang], [hoten], [diachi], [sdt], [email], [cmnd], [ngay_sinh], [gioitinh], [tongtien_giaodich], [mota], [kichhoat]) VALUES (1, N'Bùi Trần Tiến                                                                                                                                                                                                                                                  ', N'Sơn Tây, Hà Nội                                                                                                                                                                                                                                                ', N'0987654321  ', N'trantien@gmailc.om                                                                                                                                                                                                                                             ', N'574632421423        ', CAST(0x0B1A0B00 AS Date), 1, 2000000, N'Siêu giàu                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ', 1)
INSERT [dbo].[khachhang] ([id_khachhang], [hoten], [diachi], [sdt], [email], [cmnd], [ngay_sinh], [gioitinh], [tongtien_giaodich], [mota], [kichhoat]) VALUES (2, N'Nguyễn Thành Chí                                                                                                                                                                                                                                               ', N'Đan Phượng, hà Nội                                                                                                                                                                                                                                             ', N'0984522324  ', N'thanhchi@gmailc.om                                                                                                                                                                                                                                             ', N'21343423423         ', CAST(0xA10E0B00 AS Date), 1, 2234234, N'Thương gia                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 1)
INSERT [dbo].[khachhang] ([id_khachhang], [hoten], [diachi], [sdt], [email], [cmnd], [ngay_sinh], [gioitinh], [tongtien_giaodich], [mota], [kichhoat]) VALUES (3, N'Triệu Vi                                                                                                                                                                                                                                                       ', N'China                                                                                                                                                                                                                                                          ', N'1023981208  ', N'vivu@gmail.com                                                                                                                                                                                                                                                 ', N'1902831283          ', CAST(0x2E170B00 AS Date), 1, 0, N'Đẹp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 1)
INSERT [dbo].[khachhang] ([id_khachhang], [hoten], [diachi], [sdt], [email], [cmnd], [ngay_sinh], [gioitinh], [tongtien_giaodich], [mota], [kichhoat]) VALUES (4, N'Triệu An                                                                                                                                                                                                                                                       ', N'China                                                                                                                                                                                                                                                          ', N'1023981208  ', N'vivu@gmail.com                                                                                                                                                                                                                                                 ', N'1902831283          ', CAST(0x2E170B00 AS Date), 0, 0, N'Đẹp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 1)
INSERT [dbo].[khachhang] ([id_khachhang], [hoten], [diachi], [sdt], [email], [cmnd], [ngay_sinh], [gioitinh], [tongtien_giaodich], [mota], [kichhoat]) VALUES (7, N'Thiên Hà                                                                                                                                                                                                                                                       ', N'Hà Nội                                                                                                                                                                                                                                                         ', N'02384928    ', N'haha@gmail.com                                                                                                                                                                                                                                                 ', N'9012837432          ', CAST(0x29210B00 AS Date), 1, 0, N'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', 1)
SET IDENTITY_INSERT [dbo].[khachhang] OFF
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([id_nhanvien], [hoten], [diachi], [sdt], [ngaysinh], [cmnd], [luong], [ngay_batdau], [mota], [id_toanha], [kichhoat]) VALUES (1, N'Nguyễn Văn A                                                                                                                                                                                                                                                   ', N'Cầy giấy, Hà Nội                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', N'9821379111          ', CAST(0x07F90A00 AS Date), N'102838123801        ', 10000, CAST(0xDB3A0B00 AS Date), N'Cẩn thận                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 1, 1)
INSERT [dbo].[nhanvien] ([id_nhanvien], [hoten], [diachi], [sdt], [ngaysinh], [cmnd], [luong], [ngay_batdau], [mota], [id_toanha], [kichhoat]) VALUES (3, N'Nguyễn Văn B                                                                                                                                                                                                                                                   ', N'Mỹ Đình, hà Nội                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', N'0129831283          ', CAST(0xA4150B00 AS Date), N'0123827439827       ', 8000, CAST(0x543C0B00 AS Date), NULL, 3, 1)
INSERT [dbo].[nhanvien] ([id_nhanvien], [hoten], [diachi], [sdt], [ngaysinh], [cmnd], [luong], [ngay_batdau], [mota], [id_toanha], [kichhoat]) VALUES (4, N'Bùi Trần Tiến                                                                                                                                                                                                                                                  ', N'Sơn Tây, Hà Nội                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', N'097216316           ', CAST(0xC00B0B00 AS Date), N'2141431414          ', 1321323312, CAST(0x493C0B00 AS Date), N'Nhanh nhẹn                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ', 3, 1)
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
SET IDENTITY_INSERT [dbo].[toanha] ON 

INSERT [dbo].[toanha] ([id_toanha], [ten_toanha], [diachi], [sdt_quanly], [so_tang], [so_canho], [tong_dientich], [ngay_xaydung], [ngay_hoanthanh], [mota], [id_chungcu], [kichhoat]) VALUES (1, N'Tòa A1                                                                                                                                                                                                                                                         ', N'Tòa A1, Hoàng Gia 1                                                                                                                                                                                                                                            ', N'0987654321                                                                                                                                                                                                                                                     ', 30, 300, 3000, CAST(0x163C0B00 AS Date), CAST(0x833D0B00 AS Date), N'Đẹp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 1, 0)
INSERT [dbo].[toanha] ([id_toanha], [ten_toanha], [diachi], [sdt_quanly], [so_tang], [so_canho], [tong_dientich], [ngay_xaydung], [ngay_hoanthanh], [mota], [id_chungcu], [kichhoat]) VALUES (3, N'Tòa A2                                                                                                                                                                                                                                                         ', N'Tòa A1, Hoàng Gia 1                                                                                                                                                                                                                                            ', N'0987654321                                                                                                                                                                                                                                                     ', 20, 250, 3000, CAST(0x163C0B00 AS Date), CAST(0x813D0B00 AS Date), NULL, 1, 1)
INSERT [dbo].[toanha] ([id_toanha], [ten_toanha], [diachi], [sdt_quanly], [so_tang], [so_canho], [tong_dientich], [ngay_xaydung], [ngay_hoanthanh], [mota], [id_chungcu], [kichhoat]) VALUES (5, N'TT 01                                                                                                                                                                                                                                                          ', N'Đông 1, Sơn tây                                                                                                                                                                                                                                                ', N'0934543                                                                                                                                                                                                                                                        ', 23, 300, 20000, CAST(0x493C0B00 AS Date), CAST(0xB53D0B00 AS Date), N'đẹp                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', 8, 1)
SET IDENTITY_INSERT [dbo].[toanha] OFF
ALTER TABLE [dbo].[canho] ADD  CONSTRAINT [DF_canho_trangthai]  DEFAULT ((0)) FOR [trangthai]
GO
ALTER TABLE [dbo].[canho] ADD  CONSTRAINT [DF_canho_kichhoat]  DEFAULT ((1)) FOR [kichhoat]
GO
ALTER TABLE [dbo].[chungcu] ADD  CONSTRAINT [DF_chungcu_kichhoat]  DEFAULT ((1)) FOR [kichhoat]
GO
ALTER TABLE [dbo].[giaodich] ADD  CONSTRAINT [DF_giaodich_ngaylap_giaodich]  DEFAULT (getdate()) FOR [ngaylap_giaodich]
GO
ALTER TABLE [dbo].[khachhang] ADD  CONSTRAINT [DF_khachhang_kichhoat]  DEFAULT ((1)) FOR [kichhoat]
GO
ALTER TABLE [dbo].[nhanvien] ADD  CONSTRAINT [DF_nhanvien_kichhoat]  DEFAULT ((1)) FOR [kichhoat]
GO
ALTER TABLE [dbo].[toanha] ADD  CONSTRAINT [DF_toanha_kichhoat]  DEFAULT ((1)) FOR [kichhoat]
GO
ALTER TABLE [dbo].[canho]  WITH CHECK ADD  CONSTRAINT [FK_canho_toanha] FOREIGN KEY([id_toanha])
REFERENCES [dbo].[toanha] ([id_toanha])
GO
ALTER TABLE [dbo].[canho] CHECK CONSTRAINT [FK_canho_toanha]
GO
ALTER TABLE [dbo].[chitiet_giaodich]  WITH CHECK ADD  CONSTRAINT [FK_chitiet_giaodich_canho] FOREIGN KEY([id_canho])
REFERENCES [dbo].[canho] ([id_canho])
GO
ALTER TABLE [dbo].[chitiet_giaodich] CHECK CONSTRAINT [FK_chitiet_giaodich_canho]
GO
ALTER TABLE [dbo].[chitiet_giaodich]  WITH CHECK ADD  CONSTRAINT [FK_chitiet_giaodich_giaodich] FOREIGN KEY([id_giaodich])
REFERENCES [dbo].[giaodich] ([id_giaodich])
GO
ALTER TABLE [dbo].[chitiet_giaodich] CHECK CONSTRAINT [FK_chitiet_giaodich_giaodich]
GO
ALTER TABLE [dbo].[giaodich]  WITH CHECK ADD  CONSTRAINT [FK_giaodich_khachhang] FOREIGN KEY([id_khachhang])
REFERENCES [dbo].[khachhang] ([id_khachhang])
GO
ALTER TABLE [dbo].[giaodich] CHECK CONSTRAINT [FK_giaodich_khachhang]
GO
ALTER TABLE [dbo].[giaodich]  WITH CHECK ADD  CONSTRAINT [FK_giaodich_nhanvien] FOREIGN KEY([id_nhanvien])
REFERENCES [dbo].[nhanvien] ([id_nhanvien])
GO
ALTER TABLE [dbo].[giaodich] CHECK CONSTRAINT [FK_giaodich_nhanvien]
GO
ALTER TABLE [dbo].[nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_nhanvien_toanha] FOREIGN KEY([id_toanha])
REFERENCES [dbo].[toanha] ([id_toanha])
GO
ALTER TABLE [dbo].[nhanvien] CHECK CONSTRAINT [FK_nhanvien_toanha]
GO
ALTER TABLE [dbo].[toanha]  WITH CHECK ADD  CONSTRAINT [FK_toanha_chungcu] FOREIGN KEY([id_chungcu])
REFERENCES [dbo].[chungcu] ([id_chungcu])
GO
ALTER TABLE [dbo].[toanha] CHECK CONSTRAINT [FK_toanha_chungcu]
GO
