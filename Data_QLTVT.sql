CREATE DATABASE QuanLyThuVienTruong
GO

USE QuanLyThuVienTruong
GO

				-- Tạo Table

CREATE TABLE dbo.DocGia(
	MaDocGia NCHAR(10) NOT NULL PRIMARY KEY,
	HoTen NVARCHAR(50) NULL,
	NgaySinh DATE NULL,
	DiaChi NVARCHAR(100) NULL,
	Sdt NCHAR(20) NULL,
	Email NVARCHAR(50) NULL,
	CMND NCHAR(12) NULL,
	MSSV NCHAR(10) NULL,
	MCB NCHAR(10) NULL,
	LoaiDocGia NCHAR(10) NULL
)
GO

CREATE TABLE dbo.LoaiDocGia(
	MaLoaiDG NCHAR(10) NOT NULL PRIMARY KEY,
	SoNgayMuonToiDa INT NULL,
	SoSachMuonToiDa INT NULL,
	TenLoaiDG NVARCHAR(50) NULL,
	PhiThuongNien INT NULL,
	TaiLieuDB BIT NULL
)
GO

CREATE TABLE dbo.NhanVien(
	MaNV NCHAR(10) NOT NULL PRIMARY KEY,
	CaTruc INT NULL,
	TenDangNhap NCHAR(10) NULL,
	MatKhau NCHAR(200) NULL,
	HoTen NVARCHAR(50) NULL,
	LoginGanNhat DATE NULL,
	LoaiNV NCHAR(10) NULL
)
GO

CREATE TABLE dbo.LoaiNhanVien(
	MaLoaiNV NCHAR(10) NOT NULL PRIMARY KEY,
	TenLoaiNV NVARCHAR(50) NULL
)
GO

CREATE TABLE dbo.LoginRemember(
	Username NCHAR(30) NOT NULL PRIMARY KEY,
	Password NCHAR(30) NOT NULL
)
GO

CREATE TABLE dbo.TaiLieu(
	MaTaiLieu NCHAR(10) NOT NULL PRIMARY KEY,
	TenTaiLieu NVARCHAR(200) NULL,
	LoaiTaiLieu NVARCHAR(50) NULL,
	SoLuong INT NULL,
	DacBiet BIT NULL
)
GO

CREATE TABLE dbo.NhapTaiLieu(
	MaTLNhap NCHAR(10) NOT NULL PRIMARY KEY,
	SoLuong INT NULL,
	NgayNhap DATE NOT NULL
)
GO

CREATE TABLE dbo.YeuCauTaiLieu(
	STT INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	TenTaiLieu NVARCHAR(200) NULL
)
GO

CREATE TABLE dbo.PhieuMuon(
	MaPhieuMuon NCHAR(10) NOT NULL PRIMARY KEY,
	MaNVLapPhieuMuon NCHAR(10) NULL,
	MaDocGia NCHAR(10) NULL,
	NgayLapPhieuMuon DATE NULL
)
GO

CREATE TABLE dbo.ChiTietPhieuMuon(
	MaCTPM NCHAR(10) NOT NULL PRIMARY KEY,
	MaTaiLieu  NCHAR(10) NOT NULL,
	MaPhieuMuon NCHAR(10) NOT NULL
)
GO

CREATE TABLE dbo.PhieuTra(
	MaPhieuTra NCHAR(10) NOT NULL PRIMARY KEY,
	MaNVLapPhieuTra NCHAR(10) NULL
)
GO

CREATE TABLE dbo.ChiTietPhieuTra(
	MaCTPT NCHAR(10) NOT NULL PRIMARY KEY,
	MaPhieuTra NCHAR(10) NOT NULL,
	MaPhieuMuon NCHAR(10) NOT NULL,
	MaTaiLieu NCHAR(10) NOT NULL
)
GO

CREATE TABLE dbo.PhieuNhacNho(
	MaDocGia NCHAR(10) NOT NULL PRIMARY KEY,
	SoLanViPham INT NULL
)
GO

CREATE TABLE dbo.PhieuPhat(
	MaPhieuPhat NCHAR(10) NOT NULL PRIMARY KEY,
	MaNVLapPhieuPhat NCHAR(10) NULL,
	MaPhieuMuon NCHAR(10) NULL,
	SoSachQuaHan INT NULL,
	SoNgayQuaHan INT NULL,
	SoTienPhat INT NULL
)
GO


				-- Nhập dữ liệu bảng Độc Giả

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0001',  -- MaDocGia - nchar(10)
    N'Nguyễn Minh Phúc', -- HoTen - nvarchar(50)
    '2002-02-02', -- NgaySinh - date
    N'290/2b Ấp Hòa Tây, xã Quới Sơn, Châu Thành ,Bến Tre', -- DiaChi - nvarchar(100)
    N'0908420792', -- Sdt - nchar(20)
    N'ngphuc@gmail.com', -- Email - nvarchar(50)
    N'250533628', -- CMND - nchar(12)
    N'6151071084', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0002',  -- MaDocGia - nchar(10)
    N'Nguyễn Thị Thanh Lan', -- HoTen - nvarchar(50)
    '2000-06-23', -- NgaySinh - date
    N'451 Bình Đông, P.13, Q.8, HCM', -- DiaChi - nvarchar(100)
    N'0974105576', -- Sdt - nchar(20)
    N'thanhlan@gmail.com', -- Email - nvarchar(50)
    N'182116400', -- CMND - nchar(12)
    N'6151071123', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0003',  -- MaDocGia - nchar(10)
    N'Nguyễn Hoàng Lâm', -- HoTen - nvarchar(50)
    '2000-03-10', -- NgaySinh - date
    N'978 Hậu Giang, P.11, Q.6, TPHCM', -- DiaChi - nvarchar(100)
    N'0979235435', -- Sdt - nchar(20)
    N'hoanglam1@gmail.com', -- Email - nvarchar(50)
    N'022106702', -- CMND - nchar(12)
    N'6151072563', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0004',  -- MaDocGia - nchar(10)
    N'Trần Bình Liêu', -- HoTen - nvarchar(50)
    '2001-06-30', -- NgaySinh - date
    N'108 CAM ĐÀO MỘC, P.4, Q.8, TPHCM', -- DiaChi - nvarchar(100)
    N'0988807188', -- Sdt - nchar(20)
    N'binhlieu@gmail.com', -- Email - nvarchar(50)
    N'023369993', -- CMND - nchar(12)
    N'6151071027', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0005',  -- MaDocGia - nchar(10)
    N'Nguyễn Hiệp Linh', -- HoTen - nvarchar(50)
    '2002-09-12', -- NgaySinh - date
    N'q79A5/2 Nguyễn Kiệm, Gò Vấp, TPHCM', -- DiaChi - nvarchar(100)
    N'0977412102', -- Sdt - nchar(20)
    N'hieplinh@gmail.com', -- Email - nvarchar(50)
    N'023436305', -- CMND - nchar(12)
    N'6151074290', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0006',  -- MaDocGia - nchar(10)
    N'Nguyễn Thị Thúy Kiều', -- HoTen - nvarchar(50)
    '1999-08-06', -- NgaySinh - date
    N'Hưng Đạo, Hương Nguyên, Nghệ An', -- DiaChi - nvarchar(100)
    N'0376183576', -- Sdt - nchar(20)
    N'thuykieu@gmail.com', -- Email - nvarchar(50)
    N'146348620', -- CMND - nchar(12)
    N'6151073688', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0007',  -- MaDocGia - nchar(10)
    N'Phạm Tấn Kiều', -- HoTen - nvarchar(50)
    '2003-03-22', -- NgaySinh - date
    N'Ấp Bình Tả I, Xã Đức Hòa Hạ, huyện Đức Hòa, Tỉnh Long An', -- DiaChi - nvarchar(100)
    N'0988775511', -- Sdt - nchar(20)
    N'tankieu03@gmail.com', -- Email - nvarchar(50)
    N'264224587', -- CMND - nchar(12)
    N'6151071177', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0008',  -- MaDocGia - nchar(10)
    N'Trần Minh Dũng', -- HoTen - nvarchar(50)
    '2002-12-16', -- NgaySinh - date
    N'961 Hậu Giang, P.11, Q.6, TPHCM', -- DiaChi - nvarchar(100)
    N'0915579872', -- Sdt - nchar(20)
    N'trandung@gmail.com', -- Email - nvarchar(50)
    N'210554821', -- CMND - nchar(12)
    N'6151070366', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0009',  -- MaDocGia - nchar(10)
    N'Mai Chí Tùng', -- HoTen - nvarchar(50)
    '2002-07-14', -- NgaySinh - date
    N'83/5 Trương Đăng Qué, Gò Vấp, TP HCM', -- DiaChi - nvarchar(100)
    N'0393246894', -- Sdt - nchar(20)
    N'chitung364@gmail.com', -- Email - nvarchar(50)
    N'305489772', -- CMND - nchar(12)
    N'6151071547', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )
	
INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0010',  -- MaDocGia - nchar(10)
    N'Tạ Thị Kim Chi', -- HoTen - nvarchar(50)
    '2000-02-27', -- NgaySinh - date
    N'128b/ 13 Tân Hòa Đông, P.14, Q.6, TPHCM', -- DiaChi - nvarchar(100)
    N'0393784449', -- Sdt - nchar(20)
    N'kimchita27@gmail.com', -- Email - nvarchar(50)
    N'199647204', -- CMND - nchar(12)
    N'6151077522', -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'SV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0011',  -- MaDocGia - nchar(10)
    N'Hoàng Đình Long', -- HoTen - nvarchar(50)
    '1984-05-21', -- NgaySinh - date
    N'6/12 Nguyễn Siêu, P.Bến Nghé, TPHCM', -- DiaChi - nvarchar(100)
    N'0907201996', -- Sdt - nchar(20)
    N'dinhlong21@gmail.com', -- Email - nvarchar(50)
    N'334408858', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    N'CB1001', -- MCB - nchar(10)
    N'CBNV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0012',  -- MaDocGia - nchar(10)
    N'Lê Phát Lộc', -- HoTen - nvarchar(50)
    '1979-10-03', -- NgaySinh - date
    N'385 Trường Chinh, TP Tuy Hòa, Phú Yên', -- DiaChi - nvarchar(100)
    N'0955248056', -- Sdt - nchar(20)
    N'phatloc79@gmail.com', -- Email - nvarchar(50)
    N'351915554', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    N'CB1002', -- MCB - nchar(10)
    N'CBNV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0013',  -- MaDocGia - nchar(10)
    N'Nguyễn Thế Lợi', -- HoTen - nvarchar(50)
    '1990-01-29', -- NgaySinh - date
    N'130 Âu Cơ, F.10, Q.Tân Bình,TPHCM ', -- DiaChi - nvarchar(100)
    N'0975371451', -- Sdt - nchar(20)
    N'theloi90@gmail.com', -- Email - nvarchar(50)
    N'212144786', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    N'CB1003', -- MCB - nchar(10)
    N'CBNV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0014',  -- MaDocGia - nchar(10)
    N'Đinh Công Luân', -- HoTen - nvarchar(50)
    '1988-03-25', -- NgaySinh - date
    N'427/8 Minh Phụng, P.10, Q.10, TPHCM ', -- DiaChi - nvarchar(100)
    N'0977694677', -- Sdt - nchar(20)
    N'congluan@gmail.com', -- Email - nvarchar(50)
    N'142027604', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    N'CB1004', -- MCB - nchar(10)
    N'CBNV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0015',  -- MaDocGia - nchar(10)
    N'Phạm Đình Luân', -- HoTen - nvarchar(50)
    '1986-04-30', -- NgaySinh - date
    N'225 Tô Hiến Thành, P.13, Q.10, TPHCM ', -- DiaChi - nvarchar(100)
    N'0903113887', -- Sdt - nchar(20)
    N'dinhluan86@gmail.com', -- Email - nvarchar(50)
    N'260558757', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    N'CB1005', -- MCB - nchar(10)
    N'CBNV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0016',  -- MaDocGia - nchar(10)
    N'Huỳnh Văn Minh', -- HoTen - nvarchar(50)
    '1975-07-11', -- NgaySinh - date
    N'314 Phạm Hữu Lầu, Q.7, TPHCM ', -- DiaChi - nvarchar(100)
    N'0983777391', -- Sdt - nchar(20)
    N'vanminh75@gmail.com', -- Email - nvarchar(50)
    N'221095383', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    N'CB1006', -- MCB - nchar(10)
    N'CBNV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0017',  -- MaDocGia - nchar(10)
    N'Phùng Thị Kim Ngân', -- HoTen - nvarchar(50)
    '1988-09-21', -- NgaySinh - date
    N'277/16 Trường Chinh, Q.Tân Bình, TPHCM ', -- DiaChi - nvarchar(100)
    N'0907647247', -- Sdt - nchar(20)
    N'kimngan88@gmail.com', -- Email - nvarchar(50)
    N'301534719', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    N'CB1007', -- MCB - nchar(10)
    N'CBNV'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0018',  -- MaDocGia - nchar(10)
    N'Bùi Hữu Nghĩa', -- HoTen - nvarchar(50)
    '1993-01-18', -- NgaySinh - date
    N'274 Phạm Thế Hiển, P.2, Q.8, TPHCM ', -- DiaChi - nvarchar(100)
    N'0385267315', -- Sdt - nchar(20)
    N'huunghia@gmail.com', -- Email - nvarchar(50)
    N'286822881', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'K'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0019',  -- MaDocGia - nchar(10)
    N'Tô Anh Nghĩa', -- HoTen - nvarchar(50)
    '1989-04-12', -- NgaySinh - date
    N'209 Nguyễn Tri Phương, P.5, Q.9, TPHCM ', -- DiaChi - nvarchar(100)
    N'0966254367', -- Sdt - nchar(20)
    N'anhnghia89@gmail.com', -- Email - nvarchar(50)
    N'126448671', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'K'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0020',  -- MaDocGia - nchar(10)
    N'Trương Tiến Ngọc', -- HoTen - nvarchar(50)
    '1996-04-30', -- NgaySinh - date
    N'108/8 Hồng Lạc, P.11, Tân BÌnh, TPHCM ', -- DiaChi - nvarchar(100)
    N'0125589657', -- Sdt - nchar(20)
    N'tienngoc@gmail.com', -- Email - nvarchar(50)
    N'252230577', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'K'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0021',  -- MaDocGia - nchar(10)
    N'Lê Vũ Nguyên', -- HoTen - nvarchar(50)
    '1980-11-20', -- NgaySinh - date
    N'83 Bùi Hữu Nghĩa, P.5, Q.5, TPHCM ', -- DiaChi - nvarchar(100)
    N'0364589657', -- Sdt - nchar(20)
    N'LeNguyen80@gmail.com', -- Email - nvarchar(50)
    N'284007784', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'K'  -- LoaiDocGia - nchar(10)
    )

INSERT dbo.DocGia
(
    MaDocGia,
    HoTen,
    NgaySinh,
    DiaChi,
    Sdt,
    Email,
    CMND,
    MSSV,
    MCB,
    LoaiDocGia
)
VALUES
(   N'DG0022',  -- MaDocGia - nchar(10)
    N'Phạm Ánh Nguyệt', -- HoTen - nvarchar(50)
    '1979-03-15', -- NgaySinh - date
    N'51/26 Nguyễn Trãi, F2, Q.5, TPHCM ', -- DiaChi - nvarchar(100)
    N'0915569364', -- Sdt - nchar(20)
    N'anhnguyet79@gmail.com', -- Email - nvarchar(50)
    N'253369798', -- CMND - nchar(12)
    NULL, -- MSSV - nchar(10)
    NULL, -- MCB - nchar(10)
    N'K'  -- LoaiDocGia - nchar(10)
    )

				-- Nhập dữ liệu bảng Loại Độc Giả

INSERT dbo.LoaiDocGia
(
    MaLoaiDG,
    SoNgayMuonToiDa,
    SoSachMuonToiDa,
    TenLoaiDG,
    PhiThuongNien,
    TaiLieuDB
)
VALUES
(   N'CBNV',  -- MaLoaiDG - nchar(10)
    14, -- SoNgayMuonToiDa - int
    10, -- SoSachMuonToiDa - int
    N'Cán Bộ Nhân Viên', -- TenLoaiDG - nvarchar(50)
    70000, -- PhiThuongNien - int
    1  -- TaiLieuDB - bit
    )

INSERT dbo.LoaiDocGia
(
    MaLoaiDG,
    SoNgayMuonToiDa,
    SoSachMuonToiDa,
    TenLoaiDG,
    PhiThuongNien,
    TaiLieuDB
)
VALUES
(   N'K',  -- MaLoaiDG - nchar(10)
    10, -- SoNgayMuonToiDa - int
    5, -- SoSachMuonToiDa - int
    N'Khác', -- TenLoaiDG - nvarchar(50)
    150000, -- PhiThuongNien - int
    0  -- TaiLieuDB - bit
    )

INSERT dbo.LoaiDocGia
(
    MaLoaiDG,
    SoNgayMuonToiDa,
    SoSachMuonToiDa,
    TenLoaiDG,
    PhiThuongNien,
    TaiLieuDB
)
VALUES
(   N'SV',  -- MaLoaiDG - nchar(10)
    10, -- SoNgayMuonToiDa - int
    5, -- SoSachMuonToiDa - int
    N'Sinh Viên', -- TenLoaiDG - nvarchar(50)
    90000, -- PhiThuongNien - int
    0  -- TaiLieuDB - bit
    )

				-- Nhập dữ liệu bảng Nhân Viên

INSERT dbo.NhanVien
(
    MaNV,
    CaTruc,
    TenDangNhap,
    MatKhau,
    HoTen,
    LoginGanNhat,
    LoaiNV
)
VALUES
(   N'NV001',  -- MaNV - nchar(10)
    1, -- CaTruc - int
    N'admin', -- TenDangNhap - nchar(10)
    N'e10adc3949ba59abbe56e057f20f883e', -- MatKhau - nchar(200)
    N'Nguyễn Phúc', -- HoTen - nvarchar(50)
    '2023-05-30', -- LoginGanNhat - date
    N'AD'  -- LoaiNV - nchar(10)
    )

INSERT dbo.NhanVien
(
    MaNV,
    CaTruc,
    TenDangNhap,
    MatKhau,
    HoTen,
    LoginGanNhat,
    LoaiNV
)
VALUES
(   N'NV002',  -- MaNV - nchar(10)
    2, -- CaTruc - int
    N'phong', -- TenDangNhap - nchar(10)
    N'e10adc3949ba59abbe56e057f20f883e', -- MatKhau - nchar(200)
    N'Nguyễn Minh Phong', -- HoTen - nvarchar(50)
    '2023-06-06', -- LoginGanNhat - date
    N'TT'  -- LoaiNV - nchar(10)
    )

				-- Nhập dữ liệu bảng Loại Nhân Viên

INSERT dbo.LoaiNhanVien
(
    MaLoaiNV,
    TenLoaiNV
)
VALUES
(   N'AD', -- MaLoaiNV - nchar(10)
    N'Admin' -- TenLoaiNV - nvarchar(50)
    )

INSERT dbo.LoaiNhanVien
(
    MaLoaiNV,
    TenLoaiNV
)
VALUES
(   N'TT', -- MaLoaiNV - nchar(10)
    N'Thủ Thư' -- TenLoaiNV - nvarchar(50)
    )

				--Nhập dữ liệu bảng Tài Liệu

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0001',  -- MaTaiLieu - nchar(10)
    N'Nhập môn lập trình', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    100, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0002',  -- MaTaiLieu - nchar(10)
    N'Truyền thông vô tuyến và siêu cao tần', -- TenTaiLieu - nvarchar(200)
    N'Tạp chí', -- LoaiTaiLieu - nvarchar(50)
    20, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0003',  -- MaTaiLieu - nchar(10)
    N'Mạng máy tính', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    150, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0004',  -- MaTaiLieu - nchar(10)
    N'Cấu trúc dữ liệu', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    150, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0005',  -- MaTaiLieu - nchar(10)
    N'Các thuật toán tìm kiếm', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    150, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0006',  -- MaTaiLieu - nchar(10)
    N'12 Xu hướng công nghệ trong thời đại 4.0 ', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    70, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0007',  -- MaTaiLieu - nchar(10)
    N'Khoa học khám phá', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    100, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0008',  -- MaTaiLieu - nchar(10)
    N'Công nghệ tương lai', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    200, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0009',  -- MaTaiLieu - nchar(10)
    N'Deep learning - Cuộc cách mạng học sâu', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    50, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0010',  -- MaTaiLieu - nchar(10)
    N'Nghệ thuật ẩn mình', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    30, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0011',  -- MaTaiLieu - nchar(10)
    N'Tính toán phân tán và đám mây', -- TenTaiLieu - nvarchar(200)
    N'Tạp chí', -- LoaiTaiLieu - nvarchar(50)
    40, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0012',  -- MaTaiLieu - nchar(10)
    N'Dữ liệu lớn - Trí tuệ nhân tạo', -- TenTaiLieu - nvarchar(200)
    N'Tạp chí', -- LoaiTaiLieu - nvarchar(50)
    56, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0013',  -- MaTaiLieu - nchar(10)
    N'Giao thức mạng, truyền dữ liệu', -- TenTaiLieu - nvarchar(200)
    N'Tạp chí', -- LoaiTaiLieu - nvarchar(50)
    90, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0014',  -- MaTaiLieu - nchar(10)
    N'Cuốn theo chiều gió', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    8, -- SoLuong - int
    1  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0015',  -- MaTaiLieu - nchar(10)
    N'Gián điệp mạng', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    45, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0016',  -- MaTaiLieu - nchar(10)
    N'Loài người trong ký nguyên trí tuệ nhân tạo', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    100, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0017',  -- MaTaiLieu - nchar(10)
    N'Cải tổ doanh nghiệp trong thời đại số', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    30, -- SoLuong - int
    1  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0018',  -- MaTaiLieu - nchar(10)
    N'Điều khiển và tự động hóa', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    160, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0019',  -- MaTaiLieu - nchar(10)
    N'Trợ giúp quyết định', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    200, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0020',  -- MaTaiLieu - nchar(10)
    N'Kỹ thuật mã hóa và giải mã', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    220, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0021',  -- MaTaiLieu - nchar(10)
    N'Công nghệ đa phương tiện', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    164, -- SoLuong - int
    1  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0022',  -- MaTaiLieu - nchar(10)
    N'Ký sự BrSE - Những nẻo đường nghề BrSE', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    300, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0023',  -- MaTaiLieu - nchar(10)
    N'Thành Phố Thông Minh – Nền Tảng, Nguyên Lý Và Ứng Dụng', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    75, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0024',  -- MaTaiLieu - nchar(10)
    N'Trí Tuệ Giả Tạo', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    100, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0025',  -- MaTaiLieu - nchar(10)
    N'Thị giác máy tính', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    49, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0026',  -- MaTaiLieu - nchar(10)
    N'Nguyên cứu con người', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    21, -- SoLuong - int
    1  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0027',  -- MaTaiLieu - nchar(10)
    N'Khoa học và giáo dục', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    20, -- SoLuong - int
    1  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0028',  -- MaTaiLieu - nchar(10)
    N'Nguyên cứu phát triển bền vững', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    30, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0029',  -- MaTaiLieu - nchar(10)
    N'Thiết Kế Mạng Intranet', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    50, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0030',  -- MaTaiLieu - nchar(10)
    N'Cuộc Chiến Công Nghệ Số', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    150, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0031',  -- MaTaiLieu - nchar(10)
    N'AI Trong Cuộc Cách Mạng Công Nghệ 4.0', -- TenTaiLieu - nvarchar(200)
    N'Sách', -- LoaiTaiLieu - nvarchar(50)
    300, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0032',  -- MaTaiLieu - nchar(10)
    N'Thế giới số', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    89, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0033',  -- MaTaiLieu - nchar(10)
    N'Tạp chí dược học', -- TenTaiLieu - nvarchar(200)
    N'Tài liệu', -- LoaiTaiLieu - nvarchar(50)
    90, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0034',  -- MaTaiLieu - nchar(10)
    N'Nuôi nhầm sói', -- TenTaiLieu - nvarchar(200)
    N'Tiểu thuyết', -- LoaiTaiLieu - nvarchar(50)
    300, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0035',  -- MaTaiLieu - nchar(10)
    N'Lớp học kinh dị', -- TenTaiLieu - nvarchar(200)
    N'Tiểu thuyết', -- LoaiTaiLieu - nvarchar(50)
    200, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0036',  -- MaTaiLieu - nchar(10)
    N'Gây dựng lại gia đình', -- TenTaiLieu - nvarchar(200)
    N'Tiểu thuyết', -- LoaiTaiLieu - nvarchar(50)
    70, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0037',  -- MaTaiLieu - nchar(10)
    N'Tiểu bạch dương', -- TenTaiLieu - nvarchar(200)
    N'Tiểu thuyết', -- LoaiTaiLieu - nvarchar(50)
    100, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0038',  -- MaTaiLieu - nchar(10)
    N'Khi chúng ta lớn lên', -- TenTaiLieu - nvarchar(200)
    N'Tiểu thuyết', -- LoaiTaiLieu - nvarchar(50)
    100, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0039',  -- MaTaiLieu - nchar(10)
    N'Vốn là nhân duyên', -- TenTaiLieu - nvarchar(200)
    N'Tiểu thuyết', -- LoaiTaiLieu - nvarchar(50)
    50, -- SoLuong - int
    0  -- DacBiet - bit
    )

INSERT dbo.TaiLieu
(
    MaTaiLieu,
    TenTaiLieu,
    LoaiTaiLieu,
    SoLuong,
    DacBiet
)
VALUES
(   N'TL0040',  -- MaTaiLieu - nchar(10)
    N'Cây kim sợi chỉ', -- TenTaiLieu - nvarchar(200)
    N'Tiểu thuyết', -- LoaiTaiLieu - nvarchar(50)
    50, -- SoLuong - int
    0  -- DacBiet - bit
    )

				--Ràng buộc khóa ngoại

ALTER TABLE dbo.ChiTietPhieuMuon WITH CHECK ADD CONSTRAINT FK_ChiTietPhieuMuon_PhieuMuon FOREIGN KEY(MaPhieuMuon) REFERENCES dbo.PhieuMuon(MaPhieuMuon)
GO
ALTER TABLE dbo.ChiTietPhieuMuon CHECK CONSTRAINT FK_ChiTietPhieuMuon_PhieuMuon
GO
ALTER TABLE dbo.ChiTietPhieuMuon WITH CHECK ADD CONSTRAINT FK_ChiTietPhieuMuon_TaiLieu FOREIGN KEY(MaTaiLieu) REFERENCES dbo.TaiLieu(MaTaiLieu)
GO
ALTER TABLE dbo.ChiTietPhieuMuon CHECK CONSTRAINT FK_ChiTietPhieuMuon_TaiLieu
GO
ALTER TABLE dbo.ChiTietPhieuTra WITH CHECK ADD CONSTRAINT FK_ChiTietPhieuTra_PhieuMuon FOREIGN KEY(MaPhieuMuon) REFERENCES dbo.PhieuMuon(MaPhieuMuon)
GO
ALTER TABLE dbo.ChiTietPhieuTra CHECK CONSTRAINT FK_ChiTietPhieuTra_PhieuMuon
GO
ALTER TABLE dbo.ChiTietPhieuTra WITH CHECK ADD CONSTRAINT FK_ChiTietPhieuTra_PhieuTra FOREIGN KEY(MaPhieuTra) REFERENCES dbo.PhieuTra(MaPhieuTra)
GO
ALTER TABLE dbo.ChiTietPhieuTra CHECK CONSTRAINT FK_ChiTietPhieuTra_PhieuTra
GO
ALTER TABLE dbo.ChiTietPhieuTra WITH CHECK ADD CONSTRAINT FK_ChiTietPhieuTra_TaiLieu FOREIGN KEY(MaTaiLieu) REFERENCES dbo.TaiLieu(MaTaiLieu)
GO
ALTER TABLE dbo.ChiTietPhieuTra CHECK CONSTRAINT FK_ChiTietPhieuTra_TaiLieu
GO
ALTER TABLE dbo.DocGia WITH CHECK ADD CONSTRAINT FK_DocGia_LoaiDocGia FOREIGN KEY(LoaiDocGia) REFERENCES dbo.LoaiDocGia(MaLoaiDG)
GO
ALTER TABLE dbo.DocGia CHECK CONSTRAINT FK_DocGia_LoaiDocGia
GO
ALTER TABLE dbo.NhanVien WITH CHECK ADD CONSTRAINT FK_NhanVien_LoaiNhanVien FOREIGN KEY(LoaiNV) REFERENCES dbo.LoaiNhanVien(MaLoaiNV)
GO
ALTER TABLE dbo.NhanVien CHECK CONSTRAINT FK_NhanVien_LoaiNhanVien
GO
ALTER TABLE dbo.NhapTaiLieu WITH CHECK ADD CONSTRAINT FK_NhapTaiLieu_TaiLieu FOREIGN KEY(MaTLNhap) REFERENCES dbo.TaiLieu(MaTaiLieu)
GO
ALTER TABLE dbo.NhapTaiLieu CHECK CONSTRAINT FK_NhapTaiLieu_TaiLieu
GO
ALTER TABLE dbo.PhieuMuon WITH CHECK ADD CONSTRAINT FK_PhieuMuon_DocGia FOREIGN KEY(MaDocGia) REFERENCES dbo.DocGia(MaDocGia)
GO
ALTER TABLE dbo.PhieuMuon CHECK CONSTRAINT FK_PhieuMuon_DocGia
GO
ALTER TABLE dbo.PhieuMuon WITH CHECK ADD CONSTRAINT FK_PhieuMuon_NhanVien FOREIGN KEY(MaNVLapPhieuMuon) REFERENCES dbo.NhanVien(MaNV)
GO
ALTER TABLE dbo.PhieuMuon CHECK CONSTRAINT FK_PhieuMuon_NhanVien
GO
ALTER TABLE dbo.PhieuNhacNho WITH CHECK ADD CONSTRAINT FK_PhieuNhacNho_DocGia FOREIGN KEY(MaDocGia) REFERENCES dbo.DocGia(MaDocGia)
GO
ALTER TABLE dbo.PhieuNhacNho CHECK CONSTRAINT FK_PhieuNhacNho_DocGia
GO
ALTER TABLE dbo.PhieuPhat WITH CHECK ADD CONSTRAINT FK_PhieuPhat_NhanVien FOREIGN KEY(MaNVLapPhieuPhat) REFERENCES dbo.NhanVien(MaNV)
GO
ALTER TABLE dbo.PhieuPhat CHECK CONSTRAINT FK_PhieuPhat_NhanVien
GO
ALTER TABLE dbo.PhieuPhat WITH CHECK ADD CONSTRAINT FK_PhieuPhat_PhieuMuon FOREIGN KEY(MaPhieuMuon) REFERENCES dbo.PhieuMuon(MaPhieuMuon)
GO
ALTER TABLE dbo.PhieuPhat CHECK CONSTRAINT FK_PhieuPhat_PhieuMuon
GO
ALTER TABLE dbo.PhieuTra WITH CHECK ADD CONSTRAINT FK_PhieuTra_NhanVien FOREIGN KEY(MaNVLapPhieuTra) REFERENCES dbo.NhanVien(MaNV)
GO
ALTER TABLE dbo.PhieuTra CHECK CONSTRAINT FK_PhieuTra_NhanVien
GO