create database Lab33_View_Storeprocedure
USE Lab33_View_Storeprocedure
GO
/******  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ketqua](
	[MaSV] [nvarchar](3) NOT NULL,
	[MaMH] [nvarchar](2) NOT NULL,
	[Diem] [real] NULL,
 CONSTRAINT [Prk_MaSV_MAMH] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/******  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKH] [nvarchar](2) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [Prk_KHOA_khoa] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/******  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](2) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[Sotiet] [tinyint] NULL,
 CONSTRAINT [Prk_MONHOC_MaMH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/******  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[NoiSinh] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](2) NOT NULL,
	[HocBong] [float] NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [Prk_SINHVIEN_MaSV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'03', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'04', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'05', 3.9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'01', 4.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'05', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'08', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'01', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'02', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'03', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'04', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'08', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'01', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'04', 4)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'04', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'08', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'01', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'03', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'04', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'05', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'06', 6)
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'DT', N'Điện tử')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TR', N'Triết')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'01', N'Cơ sở dữ liệu', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'02', N'Trí tuệ nhân tạo', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'03', N'Toán rời rạc ứng dụng', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'04', N'Đồ họa ứng dụng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'05', N'Tiếng Anh cơ bản', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'06', N'Tin học văn phòng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'07', N'Pháp luật đại cương', 30)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'08', N'Anh chuyên Ngành', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'09', N'PTTK Hệ thống', 60)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A01', N'Nguyễn Thị', N'Vân', 0, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A02', N'Trần Văn', N'Chính', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A04', N'Trần Anh', N'Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A10', N'Trần Thị', N'Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A11', N'Nguyễn Thành', N'Nam', 0, CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Cà Mau', N'AV', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A12', N'Nguyễn Quang', N'Quyền', 0, CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'Đồng Nai', N'DT', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B01', N'Hoàng Thanh', N'Mai', 1, CAST(N'1992-08-12T00:00:00' AS SmallDateTime), N'Hải Phòng', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B03', N'Đố Văn', N'Lâm', 0, CAST(N'1994-02-26T00:00:00' AS SmallDateTime), N'Bình Định', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B04', N'Bùi Kim', N'Dung', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hµ Néi', N'TH', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C01', N'Hà Quang', N'Anh', 0, CAST(N'1985-03-11T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C03', N'Lê Quang', N'Lưu', 0, CAST(N'1985-02-23T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T03', N'Hoàng Thị Hải', N'Yến', 1, CAST(N'1989-09-10T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T06', N'Nguyễn Văn', N'Thắng', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 1500000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B06', N'Phạm Minh', N'Tuấn', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 120000, NULL)


ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [Def_SINHVIEN_HocBong]  DEFAULT ((0)) FOR [HocBong]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Makh] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Makh]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Mamh] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Mamh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [Frk_SINHVIEN_Makh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khoa] ([MaKH])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [Frk_SINHVIEN_Makh]
GO
--1--
--Liệt kê các sinh viên có học bổng lớn hơn 100,000 và sinh ở--
--TP HCM gồm các thông tin họ tên sinh viên, mã khoa, nơi sinh, học bổng
SELECT HoSV + ' ' + TenSV AS HoTen, MaKH, NoiSinh, HocBong                         
FROM dbo.SinhVien
WHERE HocBong > 100000 AND NoiSinh LIKE '%Tp. HCM%';  
GO
--2--
--Danh sách các sinh viên của khoa anh văn 
--Và khoa triết gồm các thông tin: Mã sinh viên, mã khoa, phái
SELECT MaSV, MaKH, Phai        
FROM dbo.SinhVien
WHERE MaKH IN ('AV', 'TR');  
GO
--3--
--Cho biết những sinh viên có ngày sinh từ 01/01/1986 đến ngày 05/06/1992,--
--gồm các thông tin : Mã sinh viên, Ngày sinh, Nơi sinh, Học bổng.--
SELECT MaSV, NgaySinh, NoiSinh, HocBong
FROM SinhVien
WHERE NgaySinh BETWEEN '1986-01-01' AND '1992-06-05';
GO
--4--
--Danh sách những sinh viên có học bổng từ 100000 đến 200000--
--gồm các thông tin: Mã sinh viên, Phái, Mã khoa--
SELECT MaSV, Phai, MaKH
FROM SinhVien
WHERE HocBong BETWEEN 100000 AND 200000;
GO
--5--
--Cho biết những môn học có số tiết lớn hơn 40 và nhỏ hơn 60--
--gồm các thông tin: Mã môn học, tên môn học, số tiết--
SELECT MaMH, TenMH, Sotiet
FROM MonHoc
WHERE Sotiet > 40 AND Sotiet < 60;
GO
--6--
--Liệt kê những sinh viên nam của khoa Anh Văn--
--gồm các thông tin: Mã sinh viên, Họ và tên Sinh VIÊN, PHÁI--
SELECT MaSV, HoSV + ' ' + TenSV AS HoTen, Phai
FROM SinhVien
WHERE MaKH IN ('AV')
GO
--7--
--danh sách sinh viên có nơi sinh ở Hà Nội và ngày sinh sau 01/01/1990,
--gồm các thông tin: Họ sinh viên, tên sinh viên, nơi sinh, ngày sinh--
SELECT HoSV, TenSV, NoiSinh, NgaySinh
FROM SinhVien
WHERE NoiSinh = N'Hà Nội' AND NgaySinh > '1990/01/01';
GO
--8--
-- Liệt kê những sinh viên nữ, tên có chứa chữ N--
SELECT HoSV, TenSV, Phai
FROM SinhVien
WHERE Phai = 1 AND TenSV LIKE '%N%';
GO
--9--
--Danh sách các nam sinh viên khoa Tin Học có ngày sinh sau ngày 30/5/1990--
SELECT HoSV, TenSV, MaKH, NgaySinh
FROM SinhVien
WHERE Phai = 0 AND MaKH = 'TH' AND NgaySinh > '1990-05-30';
GO
--10--
--Liệt kê danh sách sinh viên gồm các thông tin sau:
--Mã sinh viên, giới tính, ngày sinh. Trong đó giới tính hiển thị dưới dạng Nam/Nữ
--tùy theo giá trị của field Phai là True hay False--
SELECT 
    MaSV,
    CASE 
        WHEN Phai = 1 THEN N'Nữ'
        ELSE N'Nam'
    END AS GioiTinh,
    NgaySinh
FROM SinhVien;
GO
--11.cho biết danh sách sinh viên gồm các thông tin sau:mã sinh viên, tuổi, nơi sinh, mã khoa. trong đó tuổi sẽ được tính bằng cách lấy năm hiện hành trừ cho năm sinh
create view vw_SVTuoi
as 
	SELECT MaSV, DATEDIFF(YEAR, NgaySinh, GETDATE()) AS Tuoi, NoiSinh, MaKH
	FROM SinhVien
	go
select*from vw_SVTuoi
--12.danh sách những sinh viên có tuổi từ 20 đến 30, thông tin gồm:họ tên sinh viên, tuổi, tên khoa
SELECT 
    HoSV + ' ' + TenSV AS HoTenSinhVien,
    DATEDIFF(YEAR, NgaySinh, GETDATE()) AS Tuoi,
    Khoa.TenKH AS TenKhoa
FROM 
    SinhVien
JOIN 
    Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE 
    DATEDIFF(YEAR, NgaySinh, GETDATE()) BETWEEN 20 AND 30;

--13.cho biết thông tin về mức học bổng của các sinh viên, gồm:
--mã sinh viên,phái,mã khoa, mức học bổng.trong đó,
--mức học bổng sẽ hiển thị là học bổng cao nếu giá trị của field học bổng lớn hơn 500000 và ngược lại hiển thị là mức trung bình 
SELECT 
    MaSV,
    CASE 
        WHEN Phai = 1 THEN 'Nam'
        WHEN Phai = 0 THEN 'Nữ'
    END AS Phai,
    MaKH,
    CASE 
        WHEN HocBong > 500000 THEN 'Học bổng cao'
        ELSE 'Mức trung bình'
    END AS MucHocBong
FROM 
    SinhVien;
--14.danh sách sinh viên của khoa anh văn, điều kiện lọc phải sử dụng tên khoa, gồm các thông tin sau: họ tên sinh viên, giới tính, tên khoa. trong đó giới tính sẽ hiển thị dạng nam/nữ
SELECT 
    SV.HoSV, 
    SV.TenSV, 
    CASE 
        WHEN SV.Phai = 1 THEN 'Nam'
        WHEN SV.Phai = 0 THEN 'Nữ'
    END AS GioiTinh,
    KH.TenKH
FROM 
    SinhVien SV
JOIN 
    Khoa KH ON SV.MaKH = KH.MaKH
WHERE 
    KH.TenKH = 'Anh Văn';
--15.liệt kê bảng điểm của sinh viên khoa tin học, gồm các thông tin :tên khoa, học tên sinh viên, tên môn học, số tiết, số điêm
CREATE VIEW vw_bangdiemsv
as
	select TenKH,CONCAT(S.HoSV, ' ', S.TenSV) AS HoTen,
    TenMH,Sotiet,Diem
FROM SinhVien S JOIN 
    Khoa K ON S.MaKH = K.MaKH
JOIN 
	Ketqua KQ ON S.MaSV = KQ.MaSV
JOIN 
    MonHoc mh ON KQ.MaMH = mh.MaMH
WHERE 
    TenKH = N'Tin Học'
	GO
select*from vw_bangdiemsv
--16.kết quả học tập của sinh viên,gồm các thông tin: họ tên sinh viên, mã khoa, tên môn học, điểm thi, loại.trong đó, loại sẽ là giỏi nếu điểm thi>8, từ 6 đến 8 thì loại là khá, nhỏ hơn 6 thì loại là trung bình
create view vw_kqsinhvien
as
	SELECT CONCAT(HoSV, ' ',TenSV) AS HoTen,MaKH,TenMH,Diem AS DiemThi,
    CASE 
        WHEN Diem > 8 THEN 'Giỏi'
        WHEN Diem BETWEEN 6 AND 8 THEN 'Khá'
        ELSE 'Trung Bình'
    END AS Loai
FROM SinhVien S
JOIN 
    Ketqua kq ON S.MaSV = kq.MaSV
JOIN 
    MonHoc M ON kq.MaMH = M.MaMH
Go
select*from vw_kqsinhvien