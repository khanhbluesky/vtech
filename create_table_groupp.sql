use Iswiftco_Vfin23_Esys
go


if exists (select * from sysobjects where id = object_id('mhdkv') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table mhdkv
go
create table mhdkv(
		id int not null,
		ngay_ct datetime null,
		t_so_luong numeric(19,0) null, -- t_so_luong numeric(19,0)
		t_tien_vay numeric(19,0) null, -- t_tien_vay numeric(19,0) > Tiền việt không có .
		t_tien_lai numeric(19,0) null, -- t_tien_lai numeric(19,0) > Tiền việt không có .
		t_tien_tong numeric(19,0) null, -- t_tien_tong numeric(19,0) > Tiền việt không có .
		status tinyint null,
		xstatus tinyint null,
		user_id0 int null,
		user_id2 int null,
		datetime0 datetime null,
		datetime2 datetime null,
		CONSTRAINT [PK_mhdkv] PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dhdkv') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dhdkv
go
create table dhdkv(
		id int null,
		line int null, --- line int
		ngay_ct datetime null,
		app_id varchar(32) not null,
		so_cmnd varchar(32) null,
		so_cccd varchar(32) null,
		unit_id int null, -- khi nào primary key thì mới not null
		ip_number int null,
		ma_hd varchar(255) null,
		ngay_vay date null, -- khi nào primary key thì mới not null
		ma_kh varchar(32) null,
		so_ngay_tre int null,
		tien_vay numeric(19,0) null, -- tien_vay numeric(19,0) > Tiền việt không có .
		tien_lai numeric(19,0) null, -- tien_lai numeric(19,0) > Tiền việt không có .
		tien_thanh_ly numeric(19,0) null, -- tien_thanh_ly numeric(19,0) > Tiền việt không có .
		nhom_no varchar(32) null,
		status tinyint null,
		xstatus tinyint null,
		user_id0 int null,
		user_id2 int null,
		datetime0 datetime null,
		datetime2 datetime null,
CONSTRAINT [PK_dhdkv] PRIMARY KEY CLUSTERED 
(
	app_id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dhdxl') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dhdxl
go
create table dhdxl(
		so_cccd varchar(32) not null,
		unit_id int null,
		ngay_ct datetime null,
		ma_nv varchar(32) null,
		ma_ttcg varchar(32) null,
		ly_do nvarchar(4000) null,
		ghi_chu nvarchar(4000) null,
		so_tk_nh varchar(4000) null,
		ten_tk_nh nvarchar(255) null,
		ten_file nvarchar(4000) null,
		status tinyint null,
		xstatus tinyint null,
		user_id0 int null,
		user_id2 int null,
		datetime0 datetime null,
		datetime2 datetime null,
		ma_tthd varchar(32) null,
		keep_yn bit null,
CONSTRAINT [PK_dhdxl] PRIMARY KEY CLUSTERED 
(
	so_cccd ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dcccd') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dcccd
	go
	create table dcccd(
	so_cccd varchar(32) not null,
	app_id varchar(32) not null,
	status tinyint null,
	xstatus tinyint null,
	user_id0 int null,
	user_id2 int null,
	datetime0 datetime null,
	datetime2 datetime null,
CONSTRAINT [PK_dcccd] PRIMARY KEY CLUSTERED 
(
	so_cccd ASC, 
	app_id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmcccd') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmcccd
go

		create table dmcccd(
		so_cccd varchar(32) not null,
		ten_cccd nvarchar(255) null,
		ten_cccd2 nvarchar(255) null,
		ngay_sinh date null,
		gioi_tinh nvarchar(32) null,
		dc_tam_tru nvarchar(4000) null,
		dc_thuong_tru nvarchar(4000) null,
		dien_thoai varchar(128) null,
		email nvarchar(256) null,
		groupp nvarchar(255) null,
		so_cmnd varchar(32) null,
		ma_ttp varchar(32) null,
		ma_qhuyen varchar(32) null,
		ten_chuc_vu nvarchar(255) null,
		dc_cty nvarchar(4000) null,
		dc_cty2 nvarchar(4000) null,
		so_bhxh varchar(32) null,
		tien_luong numeric(19,0) null,  -- tien_luong numeric(19,0) > Tiền việt không có .
		hs_luong int null,
		xstatus tinyint null,
		status tinyint null,
		user_id0 int null,
		user_id2 int null,
		datetime0 datetime null,
		datetime2 datetime null,
CONSTRAINT [PK_dmcccd] PRIMARY KEY CLUSTERED 
(
	so_cccd ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

if exists (select * from sysobjects where id = object_id('dmdienthoai') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmdienthoai
go
create table dmdienthoai(
	so_cccd varchar(32) not null,
	dien_thoai varchar(256) not null,
	ten_dien_thoai nvarchar(255) null,
	status tinyint null,
	xstatus tinyint null,
	user_id0 int null,
	user_id2 int null,
	datetime0 datetime null,
	datetime2 datetime null,
CONSTRAINT [PK_dmdienthoai] PRIMARY KEY CLUSTERED 
(
	dien_thoai ASC,
	so_cccd ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('dmttdt') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmttdt
go
create table dmttdt(
	dien_thoai varchar(256) not null,
	ma_ttcall varchar(32) not null,
	status tinyint null,
	xstatus tinyint null,
	user_id0 int null,
	user_id2 int null,
	datetime0 datetime null,
	datetime2 datetime null,
CONSTRAINT [PK_dmttdt] PRIMARY KEY CLUSTERED 
(
	dien_thoai ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('dmdemttdt') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmdemttdt
go
create table dmdemttdt(
	dien_thoai varchar(32) not null,
	ma_ttcall varchar(32) not null,
	so_cuoc_goi int not null,
	status tinyint null,
	xstatus tinyint null,
	user_id0 int null,
	user_id2 int null,
	datetime0 datetime null,
	datetime2 datetime null,
CONSTRAINT [PK_dmdemttdt] PRIMARY KEY CLUSTERED 
(
	dien_thoai ASC,
	ma_ttcall ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


if exists (select * from sysobjects where id = object_id('dmcctn') and OBJECTPROPERTY(id, 'IsUserTable') = 1)
drop table dmcctn
go
create table dmcctn(
	so_cccd varchar(32) not null,
	so_cctn varchar(32) not null,
	groupp nvarchar(32) null,
	status tinyint null,
	xstatus tinyint null,
	user_id0 int null,
	user_id2 int null,
	datetime0 datetime null,
	datetime2 datetime null,
CONSTRAINT [PK_dmcctn] PRIMARY KEY CLUSTERED 
(
	so_cccd ASC, 
	so_cctn ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
