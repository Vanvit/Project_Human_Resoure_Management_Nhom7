CREATE DATABASE QUANLYNHANVIEN;
USE QUANLYNHANVIEN;

CREATE TABLE NHANVIEN(
	MaNV INT  PRIMARY KEY AUTO_INCREMENT,
	TenNV VARCHAR(200) NOT NULL,
	GioiTinh VARCHAR(200) NOT NULL,
	ChucVu VARCHAR(200) NOT null,
	CCCD VARCHAR(200)  NOT null,
	NgaySinh DATE NOT NULL, 
	DiaChi VARCHAR(200)  NOT null,
	Sdt VARCHAR(200)  NOT null,
	Email VARCHAR(200)  NOT null,
	Luong int  NOT null,
	Thue INT,
	TruongPhong ENUM ('1'),	
	LoaiHD ENUM ('Partime', 'Fulltime'),
	NgayBatDau DATE NOT NULL,
	TinhTrang ENUM ('Active', 'Deactive'),
	HKTT VARCHAR(200),
	TrinhDo VARCHAR(200)  NOT null,
	QuocTich VARCHAR(200)  NOT null,
	
	PB_ID INT,
	FOREIGN KEY (PB_ID) REFERENCES PHONGBAN(MaPB),	
	UNIQUE (TruongPhong,PB_ID)

);


INSERT INTO NHANVIEN (TenNV, GioiTinh, ChucVu, CCCD, NgaySinh, DiaChi, Sdt, Email, Luong, TruongPhong,
loaiHD, NgayBatDau, TinhTrang, TrinhDo, QuocTich, PB_ID) 
VALUES 
		('Nguyễn Văn Hải', 'NAM', 'Trưởng phòng', '0240678678', '1990-01-01', 'Hà nội', '0901234567', 'emai1@gmail.com', 20000000, 1,'Fulltime', '2020-01-01', 'Active', 'Đại học', 'Việt Nam', 1),
		('Trần Thị Bích', 'NỮ', 'Nhân viên kỹ thuật', '024067192', '1995-05-05', 'Bắc ninh', '0909876543', 'emai2@gmail.com', 10000000, null,'Partime', '2023-01-01', 'Active', 'Cao đẳng', 'Việt Nam', 2),
		('Phạm Văn Cường', 'NAM', 'Nhân viên kỹ thuật', '0240676253', '1992-03-15', 'Bắc giang', '0904567891', 'emai3@gmail.com', 9000000,1,'Fulltime', '2020-02-01', 'Deactive','Đại học', 'Việt Nam', 2),
		('Lê Thị Dung', 'NỮ', 'Nhân viên kỹ thuật', '0240678846', '1997-11-20', 'Hà nội', '0903216549', 'emai4@gmail.com', 8000000, null,'Partime', '2023-04-01', 'Active', 'Trung cấp', 'Việt Nam', 1),
		('Đỗ Văn Bảo', 'NAM', 'Phó phòng', '0240678341', '1993-07-10', 'Thanh hóa', '0906549873', 'email5@gmail.com', 12000000, null,'Fulltime', '2018-05-01', 'Active', 'Đại học', 'Việt Nam', 1),
		('Nguyễn Văn Khoa', 'NAM', 'Trưởng phòng', '0240678678', '1990-01-01', 'Hà nội', '0901234567', 'emai1@gmail.com', 20000000, 1,'Fulltime', '2018-05-01', 'Active', 'Đại học', 'Việt Nam', 3),
		('Trần Thị Hoa', 'NỮ', 'Nhân viên kỹ thuật', '024067192', '1995-05-05', 'Bắc ninh', '0909876543', 'emai2@gmail.com', 10000000, 1,'Fulltime', '2018-05-01', 'Active', 'Cao đẳng', 'Việt Nam', 4),
		('Phạm Văn Hung', 'NAM', 'Nhân viên kỹ thuật', '0240676253', '1992-03-15', 'Bắc giang', '0904567891', 'emai3@gmail.com', 9000000,1,'Partime', '2023-04-01', 'Active','Đại học', 'Việt Nam', 5),
		('Lê Thị Dung', 'NỮ', 'Nhân viên kỹ thuật', '0240678846', '1997-11-20', 'Hà nội', '0903216549', 'emai4@gmail.com', 8000000, NULL,'Fulltime', '2018-05-01', 'Active', 'Trung cấp', 'Việt Nam', 1),
		('Đỗ Văn Khang', 'NAM', 'Phó phòng', '0240678341', '1993-07-10', 'Thanh hóa', '0906549873', 'email5@gmail.com', 12000000, null,'Partime', '2023-04-01', 'Active', 'Đại học', 'Việt Nam', 2);



CREATE TABLE PHONGBAN(
	MaPB INT  PRIMARY KEY AUTO_INCREMENT,
	TenPB VARCHAR(200) NOT NULL,
	SdtPB VARCHAR(200) NOT NULL
	
);

INSERT INTO PHONGBAN(TenPB, SdtPB) 
VALUES
		('Kế toán', '098888666'),
		('Kinh doanh', '098777222'),
		('Công nghệ thông tin', '0347222666'),
		('Nhân sự', '035555888'),
		('Marketing', '034444433');
		

CREATE TABLE ADMIN(
	MaAdmin INT  PRIMARY KEY AUTO_INCREMENT,
	UserName VARCHAR(200) NOT NULL,
	Password VARCHAR(200) NOT NULL,
	FullName VARCHAR(200) NOT NULL
);

INSERT INTO ADMIN(UserName, Password, FullName) 
VALUES
		('admin1', '123456', 'Nguyen Van A');

