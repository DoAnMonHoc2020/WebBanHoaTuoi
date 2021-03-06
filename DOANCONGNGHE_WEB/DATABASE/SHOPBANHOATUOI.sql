USE [master]
GO
/****** Object:  Database [QL_SHOPHOATUOI]    Script Date: 12/03/2019 12:40:30 AM ******/
CREATE DATABASE [QL_SHOPHOATUOI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_SHOPHOATUOI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QL_SHOPHOATUOI.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_SHOPHOATUOI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QL_SHOPHOATUOI_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_SHOPHOATUOI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET  MULTI_USER 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QL_SHOPHOATUOI]
GO
/****** Object:  Table [dbo].[CHITIETDONHANG]    Script Date: 12/03/2019 12:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONHANG](
	[MADH] [int] NOT NULL,
	[MAHOA] [int] NOT NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [int] NULL,
 CONSTRAINT [PK_CHITIETDONHANG] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC,
	[MAHOA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 12/03/2019 12:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MACHUDE] [int] IDENTITY(1,1) NOT NULL,
	[TENCHUDE] [nvarchar](100) NULL,
 CONSTRAINT [PK_CHUDE] PRIMARY KEY CLUSTERED 
(
	[MACHUDE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 12/03/2019 12:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONHANG](
	[MADH] [int] IDENTITY(1,1) NOT NULL,
	[NGAYDAT] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[TINHTRANGTHANHTOAN] [nvarchar](50) NULL,
	[TINHTRANGGIAOHANG] [nvarchar](50) NULL,
	[DIACHIGIAOHANG] [nvarchar](200) NULL,
	[MAKH] [int] NULL,
	[TONGTIEN] [float] NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOA]    Script Date: 12/03/2019 12:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOA](
	[MAHOA] [int] IDENTITY(1,1) NOT NULL,
	[TENHOA] [nvarchar](100) NULL,
	[GIABAN] [int] NULL,
	[MOTA] [nvarchar](max) NULL,
	[ANHBIA] [nvarchar](max) NULL,
	[NGAYCAPNHAT] [date] NULL,
	[MACHUDE] [int] NULL,
	[LOAI] [int] NULL,
 CONSTRAINT [PK_HOA] PRIMARY KEY CLUSTERED 
(
	[MAHOA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/03/2019 12:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[HOTEN] [nvarchar](50) NULL,
	[NGAYSINH] [date] NULL,
	[GIOITINH] [nvarchar](10) NULL,
	[DIENTHOAI] [nchar](12) NULL,
	[TAIKHOAN] [nchar](50) NULL,
	[MATKHAU] [nchar](30) NULL,
	[EMAIL] [nchar](100) NULL,
	[DIACHI] [nvarchar](200) NULL,
	[QUYEN] [nchar](10) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 12/03/2019 12:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAI] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOANADMIN]    Script Date: 12/03/2019 12:40:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOANADMIN](
	[TENTK] [nchar](50) NOT NULL,
	[MK] [nchar](50) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TENTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CHITIETDONHANG] ([MADH], [MAHOA], [SOLUONG], [DONGIA]) VALUES (4, 2, 1, 600000)
INSERT [dbo].[CHITIETDONHANG] ([MADH], [MAHOA], [SOLUONG], [DONGIA]) VALUES (4, 3, 1, 500000)
INSERT [dbo].[CHITIETDONHANG] ([MADH], [MAHOA], [SOLUONG], [DONGIA]) VALUES (4, 4, 1, 500000)
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MACHUDE], [TENCHUDE]) VALUES (1, N'HOA SINH NHẬT ')
INSERT [dbo].[CHUDE] ([MACHUDE], [TENCHUDE]) VALUES (2, N'HOA TẶNG MẸ')
INSERT [dbo].[CHUDE] ([MACHUDE], [TENCHUDE]) VALUES (3, N'HOA TÌNH YÊU')
INSERT [dbo].[CHUDE] ([MACHUDE], [TENCHUDE]) VALUES (4, N'HOA MỪNG TỐT NGHIỆP')
INSERT [dbo].[CHUDE] ([MACHUDE], [TENCHUDE]) VALUES (5, N'HOA CHÚC SỨC KHỎE')
INSERT [dbo].[CHUDE] ([MACHUDE], [TENCHUDE]) VALUES (6, N'HOA GIÁNG SINH')
INSERT [dbo].[CHUDE] ([MACHUDE], [TENCHUDE]) VALUES (7, N'HOA CHIA BUỒN')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
SET IDENTITY_INSERT [dbo].[DONHANG] ON 

INSERT [dbo].[DONHANG] ([MADH], [NGAYDAT], [NGAYGIAO], [TINHTRANGTHANHTOAN], [TINHTRANGGIAOHANG],[DIACHIGIAOHANG], [MAKH], [TONGTIEN]) VALUES (4, CAST(0x0000AB170176BD84 AS DateTime), CAST(0x0000AB1800000000 AS DateTime), N'Chưa thanh toán', N'Chưa giao hàng','NULL', 2, 1600000)
SET IDENTITY_INSERT [dbo].[DONHANG] OFF
SET IDENTITY_INSERT [dbo].[HOA] ON 

INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (1, N'PHÚC YÊU ĐẦU 2', 350000, N'Với tone màu hồng nhẹ nhàng, nữ tính. Bó hoa là món quà tuyệt vời dành tặng cho những bạn nữ yêu thích sự lãng mạn và tràn đầy yêu thương. Thích hợp tặng dịp sinh nhật, làm quen, kỷ niệm ... ', N'1.png', CAST(0x48400B00 AS Date), 1, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (2, N'HOA HỒNG TẶNG MẸ - DUYÊN DÁNG', 600000, N'Hoa hồng trứng gà mang ý nghĩa của sự thanh nhã và sang trọng cũng như sự ngọt ngào và lãng mạn trữ tình, được phối cùng hoa cúc tana, thể hiện sự nhẹ nhàng và sự cảm phục. Như sự dịu dàng và duyên dáng của người thiếu nữ . Bó hoa được sử dụng như một cách bày tỏ tình yêu thương với người mà bạn đang thầm thương trộm nhớ ', N'2.png', CAST(0x48400B00 AS Date), 2, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (3, N'HOA SINH NHẬT - SỰ QUAN TÂM 2', 500000, N'Bó hoa hồng vàng được thiết kế xen kẽ cẩm chướng vàng thể hiện sự kính trọng và quan tâm đến người nhận. Sự quan tâm được thể hiện qua bó hoa này rất tinh tế và sang trọng. Thích hợp tặng cho bạn nam và người thích tone màu vàng trong những dịp đặc biệt', N'SN1.png', CAST(0x48400B00 AS Date), 1, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (4, N'HOA SINH NHẬT - SẮC HỒNG XINH', 500000, N'Hộp hoa với tone màu hồng pastel chủ đạo đã làm say đắm bao cô nàng đáng yêu. Hộp hoa này chắc chắn sẽ là món quà tuyệt vời dành tặng cho các fangirl có sự yêu thích đặc biệt dành cho màu hồng.', N'SN2.png', CAST(0x48400B00 AS Date), 1, 2)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (5, N'HOA SINH NHẬT - KHÚC CA MÊ LY', 2000000, N'Với tone màu vàng đậm của hoa hồng vàng và sự nhẹ nhàng của hoa hồng da và hoa hồng trứng gà, điểm xuyết cùng tone lạnh của green wicky tạo ra khúc ca mê ly của các loài hoa nhằm cầu chúc cho tất cả mọi người có cuộc sống vui vẻ hạnh phúc , gặt hái nhiều thành công trong công việc. Thích hợp dành tặng cho các dịp khai trương, tân gia, thăng chức...', N'SN3.png', CAST(0x48400B00 AS Date), 1, 2)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (6, N'HOA SINH NHẬT - NỤ CƯỜI', 450000, N'Giỏ hoa với hoa hồng da và hồng trứng gà cùng với cúc calimero trắng giỏ hoa như một cô nàng tươi trẻ, vui vẻ chào đón cuộc sống với niêm vui và nụ cười. Thích hợp tặng dịp sinh nhật, làm quen, tỏ tình, hay là điều bất ngờ cho người yêu. Giỏ hoa cắm 1 mặt', N'SN4.png', CAST(0x48400B00 AS Date), 1, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (7, N'HOA SINH NHẬT - RED ROSES', 2000000, N'Bình hoa với hoa hồng đỏ là chủ đạo được bạn florist thiết kế đặc biệt dùng để tặng cho những fan cuồng hoa hồng đỏ. Loài hoa được yêu thích nhất trong các màu của hoa hồng. Bình hoa sẽ là món quà tuyệt vời dành tặng cho người thân yêu của bạn', N'SN5.png', CAST(0x48400B00 AS Date), 1, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (8, N'HOA SINH NHẬT - TINH KHÔI', 1500000, N'Màu trắng luôn có sự cuốn hút ánh nhìn của mọi người. Màu trắng là màu sắc hội tụ của tất cả các màu, nó thể hiện một sự tinh khiết. Mặc dù màu trắng không nổi trội hay rực rở như những màu khác, nhưng nó có thể kết hợp với tất cả các màu khác hay đơn giản chỉ mỗi màu trắng cũng tạo nên sự khác biệt.', N'SN6.png', CAST(0x48400B00 AS Date), 1, 5)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (9, N'HOA SINH NHẬT - LOVE HEART', 1500000, N'Ta đi tìm một trái tim. Hỡi trái tim yêu nay về đâu. Ta đi tìm người năm tháng. Những phút đam mê trong tình yêu. khi đã yêu thì ai cũng muốn say đắm trong men tình. Hộp hoa này với hoa hồng được kết thành trái tim thích hợp dành tặng cho những ai đang đươc thưởng thức men say tình ái thật hạnh phúc và tràn ngập niềm vui', N'SN7.png', CAST(0x48400B00 AS Date), 1, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (10, N'HOA SINH NHẬT - ROSE LOVE', 1000000, N'Bó hoa gồm chủ yếu là hoa hồng màu trứng gà, màu hoa mới và đẹp được phối hợp với baby trắng tinh khôi cùng với hoa thủy tiên tạo nên sự đặc sắc riêng biệt của bó hoa. Bó hoa này thích hợp dành tặng cho các fan của hoa hồng nhưng yêu thích sự mới lạ và độc đáo', N'SN8.png', CAST(0x48400B00 AS Date), 1, 2)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (11, N'HOA SINH NHẬT - FOR LADY', 1200000, N'Gần như mọi kí ức ngọt ngào hay mãnh liệt nhất của chúng ta đều có hình bóng phụ nữ. Bạn sẽ không thể tìm được một quyển sách hay tài liệu nào nêu ra nổi định nghĩa rõ ràng, ngoại trừ đọc trong chính người bà, người mẹ, người chị, người yêu hay vợ tương lai của mình. Bình hoa này được lên ý tưởng dùng để dành tặng cho những người phụ nữ bạn quý trọng trong cuộc đời này.', N'SN9.png', CAST(0x48400B00 AS Date), 1, 4)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (12, N'HOA SINH NHẬT - ROMANTIC', 1500000, N'Lãng mạng là gì? Câu ấy toàn thế giới đã hỏi và tự hỏi bao nhiêu thế kỷ nay mà chưa thấu đáo...Lãng mạn ko phải một món đồ, ko phải một món ăn, ko phải trang sức, ko phải nước hoa. Đối với hoayeuthuong.com thì lãng mạn là những khoảnh khắc thoáng qua nhanh, nhưng đọng lại rất nhiều luôn để lại trong ta những cảm xúc khó thể quên. Hãy "Romantic" với người mình yêu với bình hoa hồng pastel này bạn nhé.', N'SN10.png', CAST(0x48400B00 AS Date), 1, 5)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (13, N'HOA TẶNG MẸ - DUYÊN DÁNG', 600000, N'Hoa hồng trứng gà mang ý nghĩa của sự thanh nhã và sang trọng cũng như sự ngọt ngào và lãng mạn trữ tình, được phối cùng hoa cúc tana, thể hiện sự nhẹ nhàng và sự cảm phục. Như sự dịu dàng và duyên dáng của người thiếu nữ . Bó hoa được sử dụng như một cách bày tỏ tình yêu thương với người mà bạn đang thầm thương trộm nhớ', N'TM1.png', CAST(0x48400B00 AS Date), 2, 2)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (14, N'HOA TẶNG MẸ - HỒNG TƯƠI', 300000, N'Bó hoa hồng xinh xắn được thiết kế tông hồng nhạt từ những bông hoa hồng giống mới nở to và đẹp, phù hợp cho việc tặng các bạn nữ trong các dịp chúc mừng, sinh nhật.', N'TM2.png', CAST(0x48400B00 AS Date), 2, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (15, N'HOA TẶNG MẸ - ĐIỀU KỲ DIỆU', 600000, N'Thời gian trôi qua, thời gian có thể thay đổi con người và vạn vật. Cùng với một vài điều bất tử, tình yêu thật sự luôn tồn tại và sống mãi trong tâm hồn chúng ta. Đó là điều kỳ diệu.', N'TM3.png', CAST(0x48400B00 AS Date), 2, 4)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (16, N'HOA TẶNG MẸ - SỰ QUAN TÂM', 500000, N'Bó hoa với chủ đạo là hoa hồng da là sự thể hiện tin tưởng, tình yêu mến. Bó hoa đơn giản, mộc mạc nhưng vẫn không kém phần sang trọng và quyến rũ. Phong cách vintage chính là ý tưởng để sáng tạo ra sản phẩm này. Thích hợp tặng dịp sinh nhật, kỷ niệm ngày cưới, kỷ niệm yêu nhau, chào ngày mới....', N'TM4.png', CAST(0x48400B00 AS Date), 2, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (17, N'HOA TẶNG MẸ - KÍNH TRỌNG 2', 600000, N'Những đóa sen tươi thắm đang đua nhau khoe sắc màu cao quý và sang trọng kính tặng ông bà, cha mẹ, thầy cô, những người lớn tuổi,... để thể hiện lòng hiếu thảo, sự biết ơn vô bờ bến của con cháu, của học trò và kính chúc ông bà, cha mẹ, thầy cô sức khỏe thật dồi dào và vui vẻ. Thích hợp để tặng chúc mừng, kỉ niệm,...', N'TM5.png', CAST(0x48400B00 AS Date), 2, 5)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (18, N'HOA TẶNG MẸ - TÌNH ẤM ÁP', 350000, N'Hoa hồng đỏ là loại hoa được yêu thích nhất trong các loại hoa hồng ở Việt Nam, đã được các nghệ nhân của Hoayeuthuong thiết kế đơn giản kết hợp thêm một ít hoa baby trắng đan xen lẫn nhau giúp bó hoa càng thêm nổi bật. Mẫu hoa thích hợp tặng trong mọi dịp dành cho người mà bạn yêu mến.', N'TM6.png', CAST(0x48400B00 AS Date), 2, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (19, N'HOA TẶNG MẸ - TÌNH ẤM ÁP 2', 350000, N'Hoa hồng đỏ - nữ hoàng của loài hoa hồng. Dù có bao nhiêu loại hoa khác thì hoa hồng đỏ vẫn luôn là ưu tiên hàng đầu trong các dịp lễ. Được thiết kế đơn giản kết hợp thêm một ít hoa baby trắng đan xen lẫn nhau giúp bó hoa càng thêm nổi bật. Mẫu hoa thích hợp tặng trong mọi dịp dành cho người mà bạn yêu mến.', N'TM7.png', CAST(0x48400B00 AS Date), 2, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (20, N'HOA TẶNG MẸ - MÙA HỒNG', 700000, N'Bó hoa hồng sen điểm baby trắng tuy đơn giản nhưng cũng thật sang trọng và cuốn hút. Lớp giấy gói viền đen càng làm tôn thêm vẻ đẹp của bó hoa. Đây chắc chắn là món quà tuyệt vời dành tặng cho người yêu, bạn bè, đồng nghiệp vào những dịp quan trọng để lưu lại khoảnh khắcn đáng nhớ', N'TM8.png', CAST(0x48400B00 AS Date), 2, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (21, N'HOA TẶNG MẸ - MAMA LOVE', 500000, N'Mothers Day đây là dịp để con cái tỏ lòng biết ơn công sinh thành, nuôi dưỡng của mẹ. Sản phẩm giỏ hoa này được thiết kế cho dịp đặc biệt này dùng để dành tặng cho những người mẹ đáng kính của bạn. Hãy bày tỏ lòng yêu thương và kính yêu đến người mẹ của mình bằng giỏ hoa này bạn nhé.', N'TM9.png', CAST(0x48400B00 AS Date), 2, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (22, N'HOA TẶNG MẸ - HƯƠNG NẮNG', 1500000, N'Cuộc sống vội vàng đôi lúc khiến chúng ta cảm thấy mệt mỏi, chán chường. Sao bạn không thử dậy thật sớm - mở toang cửa ra hít 1 hơi thật sâu. Cảm nhận không khí trong lành buổi sáng, hơi sương lạnh lạnh, hương nắng ấm áp. Bắt đầu một ngày thật nhiều năng lượng và sảng khoái tinh thần.', N'TM10.png', CAST(0x48400B00 AS Date), 2, 4)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (23, N'HOA TÌNH YÊU - NỒNG NÀN', 1000000, N'Tình yêu đến khẽ như một cơn gió sớm mai với những tia nắng ngọt ngào và ấm áp. Ai đó đã từng nói rằng thật tội nghiệp cho những kẻ chưa từng được yêu. Khi thì nồng nàn và khi thì sâu lắng tạo nên những dư vị tuyệt vời của tình yêu.', N'TY1.png', CAST(0x48400B00 AS Date), 3, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (24, N'HOA TÌNH YÊU - YÊU THƯƠNG HẠNH PHÚC', 350000, N'"Yêu Thương Hạnh Phúc"kể một câu chuyện tình yêu ngọt ngào và lãng mạn. Bó hoa là sự kết hợp của hoa hồng tím và hoa hồng da đan xen và hòa quyện cùng với cúc calimero tựa như giai điệu của những đôi đang hạnh phúc khi bên nhau. Lúc sôi động khi thì trầm lắng nhẹ nhàng.', N'TY2.png', CAST(0x48400B00 AS Date), 3, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (25, N'HOA TÌNH YÊU - TƯƠNG TƯ', 1000000, N'Tương tư như một giấc mơ, lang thang đi khắp bốn phương tìm kiếm một hình bóng quen thuộc. Và em là người đã làm anh tương tư quên tháng ngày. Chỉ cần nhìn thấy em, được nói chuyện với em cũng đủ làm anh cảm thấy hạnh phúc. Thích hợp tặng sinh nhật, làm quen, kỉ niệm...', N'TY3.png', CAST(0x48400B00 AS Date), 3, 4)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (26, N'HOA TÌNH YÊU - MEMORY OF LOVE', 450000, N'Bó hoa của những dịu dàng, những ngây thơ và cả những hoài niệm về những phút giây đầu gặp gỡ. Ký ức về tình yêu đôi ta thật tự nhiên, đằm thắm mà vẫn để lại biết bao xúc cảm trong lòng của ta. Đó là những kỉ niệm đẹp, chỉ nghĩ cần đến thôi thì nụ cười hạnh phúc bất chợt nở trên mội.', N'TY4.png', CAST(0x48400B00 AS Date), 3, 2)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (27, N'HOA TÌNH YÊU - NHỊP ĐẬP YÊU THƯƠNG', 1500000, N'Cuộc sống hiện đại khiến nhiều người bị cuốn vào vòng xoáy công việc mà đôi khi quên đi việc phải nuôi dưỡng mối quan hệ xung quay và cũng có đôi lúc quên mất phải hăm nóng tình yêu với người bạn đời của mình. Và đó là lý do mà những bông hoa tươi tắn được sinh ra để giúp chúng ta truyền tải những thông điệp yêu thương trong cuộc sống. Một bình hoa tươi đặt trên bàn làm việc, trong tổ ấm thân yêu hay một bình hoa trao đến ngày đặc biệt của người thân và bạn bè sẽ giúp chúng ta giữ được các mối quan hệ và ngày càng trân quý nhau hơn.', N'TY5.png', CAST(0x48400B00 AS Date), 3, 6)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (28, N'HOA TÌNH YÊU - HẠNH PHÚC BẮT ĐẦU', 600000, N'Đã không ít lần ta tự hỏi “hạnh phúc là gì?”, rồi cho đến một ngày khi tâm hồn ta bỗng trong trẻo đến lạ, tràn ánh nắng và cảm giác yên bình, ta chợt thốt lên: Đó chính là hạnh phúc. Lấy cảm hứng từ đó, bình hoa được thiết kế với tông màu pastel nhẹ nhàng, tươi sáng và sẽ là món quà tuyệt vời dành tặng những người thân yêu của bạn.', N'TY6.png', CAST(0x48400B00 AS Date), 3, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (29, N'HOA TÌNH YÊU - CHUYỆN TÌNH TA', 500000, N'Niềm vui chỉ chờ đợi những người đã từng khóc, những người đã từng thương tâm và những người đã từng tìm kiếm, tại vì chỉ có những người đó mới biết từng yêu quý trong niềm vui của mình và của những người bên mình. Chuyện tình ta cũng như vậy, những phút bên nhau luôn là đẹp đẽ nhất. Thích hợp tặng sinh nhật, kỉ niệm, hoa văn phòng...', N'TY7.png', CAST(0x48400B00 AS Date), 3, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (30, N'HOA TÌNH YÊU - TRỌN VẸN BÊN NHAU', 500000, N'Hạnh phúc nhất là khi hai con tim cùng nhịp đâp. Sự trọn vẹn trong tình yêu chỉ có thể xảy ra khi mỗi bên phải biết nhường nhịn nhau. Đừng vì cái tôi của bản thân để rồi hai ta rời xa nhau. Hãy cùng nhau bước đến trọn vẹn yêu thương bên nhau.', N'TY8.png', CAST(0x48400B00 AS Date), 3, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (31, N'HOA TÌNH YÊU - KEEP LOVING', 1000000, N'Bó hoa được phối hợp màu tím và màu đỏ như lời khẳng định dù có chuyện gì sau này thì tình yêu ta dành cho nhau mãi mãi bền lâu. Tím chung thủy, đỏ mạnh mẽ son sắc sẽ là món quà dành tặng cho người yêu của mình để tạo sự bất ngờ bạn nhé', N'TY9.png', CAST(0x48400B00 AS Date), 3, 2)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (32, N'HOA TÌNH YÊU - CHIỀU TÍM NHỚ EM', 1000000, N'Với tone màu tím - màu của nỗi nhớ. Bó hoa gợi những sợi nhớ, sợi thương cứ như nối dài theo năm tháng. Có đôi lúc vui tươi nhộn nhịp như màu hồng của cẩm chướng, có lúc thăng trầm da diết như màu tím của hoa hồng. Tất cả được kết hợp lại với nhau để tạo nên bó hoa này như nói lên nỗi nhung nhớ da diết đến người yêu.', N'TY10.png', CAST(0x48400B00 AS Date), 3, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (33, N'HOA MỪNG TỐT NGHIỆP - SỰ NGHIỆP THÀNH CÔNG', 1500000, N'Những bông hoa với màu sắc tươi sáng, mạnh mẽ được cắm dáng cao tượng trưng cho sự thành đạt, sung túc trong sự nghiệp và cuộc sống. Kèm theo đó là những cành hạnh phúc lên tượng trưng cho ngọn lửa của sự khát khao và ý chí vươn lên mạnh mẽ. Mẫu hoa thích hơp dành tặng cho bạn bè, người thân, khách hàng nhân dịp sinh nhật, khai trương, kỉ niệm thay cho lời chúc mừng..', N'TN1.png', CAST(0x48400B00 AS Date), 4, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (34, N'HOA MỪNG TỐT NGHIỆP - SUNG TÚC', 3750000, N'Sung túc vào nhà, phú quý vinh hoa. Chậu lan như lời cầu chúc cho cuộc sống sung túc và đầy đủ. Đây chắc chắn sẽ là món quà tuyệt vời dành tặng cho đối tác, cho người thân yêu', N'TN2.png', CAST(0x48400B00 AS Date), 4, 6)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (35, N'HOA MỪNG TỐT NGHIỆP - PHÚ QUÝ TÀI LỘC', 3900000, N'Chậu lan hồ điệp 15 cành được trang trí cực kì sang trọng và bắt mắt. Một món quà không thể tuyệt vời hơn để dành tặng cho những người thân yêu và đối tác vào những dịp quan trọng chắc chắn sẽ làm mối quan hệ ngày càng thắt chặt và bền vững hơn nữa.', N'TN3.png', CAST(0x48400B00 AS Date), 4, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (36, N'HOA MỪNG TỐT NGHIỆP - PHÚC LỘC THỌ', 750000, N'Chậu lan "Phúc - Lộc - Thọ" gồm 3 cành lan vàng. Tượng trưng cho 3 điều may mắn trong cuộc sống. Không chỉ là lời chúc mừng dành tặng người thân yêu mà còn là món quà tuyệt vời dành tặng đối tác dịp mùa xuân đang đến.', N'TN4.png', CAST(0x48400B00 AS Date), 4, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (37, N'HOA MỪNG TỐT NGHIỆP - LỘC XUÂN', 750000, N'Lan hồ điệp với tông màu trắng tinh khôi được trồng trong chậu sứ cao cấp và được trang trí thật đẹp đẽ chắc chắn sẽ là món quà đặc biệt để trao tặng cho nhau vào những dịp đặc biệt như mừng khai trương và dịp xuân về... cùng với lời chúc mọi thứ đều sẽ được như ý mình mong muốn - năm mới sẽ thành công trong công việc và hạnh phúc trong cuộc sống', N'TN5.png', CAST(0x48400B00 AS Date), 4, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (38, N'HOA MỪNG TỐT NGHIỆP - NHỊP ĐIỆU THÀNH CÔNG', 750000, N'Với kiểu cắm vươn cao và thẳng đứng như những sự vươn lên mạnh mẽ tạo nên một nhịp điệu lúc cao lúc thấp cũng như cuộc sống lúc sung sướng lúc cực khổ nhưng ta cứ cố gắng thì sự thành công sẽ đến với ta vào ngày gần nhất. Thích hợp tặng dịp khai trương, sinh nhật sếp, kỷ niệm...', N'TN6.png', CAST(0x48400B00 AS Date), 4, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (39, N'HOA MỪNG TỐT NGHIỆP - THE WINNER', 3000000, N'Bình hoa với tone màu đỏ tượng trưng cho sự thành công vẻ vang trong công việc xen kẽ là những bông hồng trắng tượng trưng cho sự nhẹ nhàng, thoải mái tận hưởng phút giây thư giản sau khi đã đạt được những thành công trong cuộc sống. Bình hoa này sẽ là món quà đặc biệt dành tặng tôn vinh cho những thành công của người thân yêu của bạn.', N'TN7.png', CAST(0x48400B00 AS Date), 4, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (40, N'HOA MỪNG TỐT NGHIỆP - HOPEFULLY', 1700000, N'Trong cuộc sống ai cũng có lúc gặp phải khó khăn, thất vọng khi nhận được những kết quả không như mình mong muốn. Nhưng mọi thứ vẫn còn hy vọng khi chúng ta vẫn có những người thân, bạn bè bên cạnh cùng nhau giúp đỡ và dìu dắt ta qua quãng thời gian khó khăn. Họ chính là những niềm hy vọng và hạnh phúc trong đời mà ta có được trên cuộc sống này. Thích hợp tặng khai trương, sinh nhật, chúc mừng...', N'TN8.png', CAST(0x48400B00 AS Date), 4, 6)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (41, N'HOA MỪNG TỐT NGHIỆP - TRÓT YÊU NGƯỜI', 500000, N'Tâm trạng của bạn khi yêu ai đó như thế nào? Chắc hẳn là một chuỗi các cảm xúc như hồi hộp, ngại ngùng sẽ phần nào xâm chiếm cảm xúc bạn và mong muốn lúc nào cũng được ở bên cạnh người bạn yêu thương. Tuy nhiên, càng trưởng thành, chúng ta luôn bận rộn với công việc và áp lực cuộc sống và có quá ít thời gian dành cho họ vì thế hãy gửi những bông hoa xinh đẹp đến người ấy để họ cảm thấy được sự quan tâm ngay khi bạn không ở cạnh họ, đây sẽ là một liều thuốc tinh thần góp phần nuôi dưỡng mỗi quan hệ của cả hai đây nhé.', N'TN9.png', CAST(0x48400B00 AS Date), 4, 5)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (42, N'HOA MỪNG TỐT NGHIỆP - SỨC SỐNG MỚI', 500000, N'Hoa sen là một biểu tưởng của sự thuần khiết và sự thanh tao. Bên cạnh đó, hoa sen còn giúp con người điều hòa khí vượng và tăng cường năng lượng tốt . về mặt phong thủy, hoa sen có thể ngăn chặn những điều xấu, giúp cho gia chủ tránh ưu phiền để tĩnh tâm an hưởng hạnh phúc. Bình hoa sen sẽ là món quà ý nghĩa dành cho những người thân yêu của bạn như ông bà và cha mẹ vào những dịp đặc biệt và những người thích sự nhẹ nhàng, tao nhã.', N'TN10.png', CAST(0x48400B00 AS Date), 4, 8)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (43, N'HOA CHÚC SỨC KHỎE - KÍNH TRỌNG 2', 600000, N'Những đóa sen tươi thắm đang đua nhau khoe sắc màu cao quý và sang trọng kính tặng ông bà, cha mẹ, thầy cô, những người lớn tuổi,... để thể hiện lòng hiếu thảo, sự biết ơn vô bờ bến của con cháu, của học trò và kính chúc ông bà, cha mẹ, thầy cô sức khỏe thật dồi dào và vui vẻ. Thích hợp để tặng chúc mừng, kỉ niệm,...', N'SK1.png', CAST(0x48400B00 AS Date), 5, 8)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (44, N'HOA CHÚC SỨC KHỎE - VƯƠN LÊN', 500000, N'Ai cũng có ước mơ và hoài bão trong cuộc đời. Họ làm việc hăng say cùng với quyết tâm mạnh mẽ như những hoa cúc ping pong vươn lên đầy sức sống được phối hợp cùng hoa hồng cam lửa thật mãnh liệt và mạnh mẽ như lời chúc góp thêm động lực để tiếp tục tiến bước phía trước.', N'SK2.png', CAST(0x48400B00 AS Date), 5, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (45, N'HOA CHÚC SỨC KHỎE - NGÀY ĐÔNG', 600000, N'"Điều gì khiến tôi yêu em đến trọn vẹn". Phải chăng là ánh mắt ngời ngời trong sáng của em mỗi khi nhìn tôi khiến tim tôi xao xuyến đến lạ kì. Nếu lựa chọn tôi sẽ chọn bó hoa hồng trắng để gửi tặng người con gái tôi yêu. Bởi bó hoa thay lời tôi muốn nói, rằng tình yêu tôi dành cho em trong sáng,không lẫn vật chất và vô cùng thiêng liêng. Và bó hoa này sẽ là món quà đặc biệt tôi dành tặng cho em, cô gái nhỏ của tôi.', N'SK3.png', CAST(0x48400B00 AS Date), 5, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (46, N'HOA CHÚC SỨC KHỎE - TÌNH BẠN HỮU', 700000, N'Cuộc đời của mỗi người ai cũng có những mối quan hệ, qua những mối quan hệ đó ta lại có thêm tình bạn đẹp. Tình bạn, định nghĩa đơn giản mà mỗi chúng ta đều biết, chính là sự sẻ chia, gắn bó, đồng cảm, giúp đỡ và tâm sự cùng nhau. Họ đến với nhau bởi cùng quan điểm, lý tưởng và khát vọng sống.', N'SK4.png', CAST(0x48400B00 AS Date), 5, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (47, N'HOA CHÚC SỨC KHỎE - GIỎ HOA HỒNG', 550000, N'Giỏ hoa là sự kết hợp của nhiều loại hoa hồng phối hợp cùng hoa baby trắng thật đơn giản và tự nhiên. Thích hợp dành tặng cho những ai có niềm yêu thích đặc biệt với loài hoa hồng.', N'SK5.png', CAST(0x48400B00 AS Date), 5, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (48, N'HOA CHÚC SỨC KHỎE - GOLD FRIENDSHIP', 550000, N'" Những điều tuyệt vời nhất trên thế giới bạn không thể nhìn thấy và chạm được mà bạn sẽ phải cảm nhận chúng bằng trái tim và những mối quan hệ trong cuộc sống là một trong những điều tuyệt vời ấy. Có những người đến để giúp đỡ chúng ta trong những lúc khó khăn tuy nhiên cũng có những người dạy ta cách trưởng thành hơn trong cuộc sống. Do đó, chúng ta cần duy trì và quý trọng các mối quan hệ xung quanh chúng ta bằng cách quan tâm nhiều hơn và hoa là một trong những sứ giả truyền tải cảm xúc số một đến những người bạn yêu quý trong những dịp đặc biết như sinh nhật, chúc mừng và kỷ niệm.', N'SK6.png', CAST(0x48400B00 AS Date), 5, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (49, N'HOA CHÚC SỨC KHỎE - TUỔI XANH', 450000, N'Mẫu hoa được thiết kế đặc biệt với sự pha trộn giữa tông màu xanh lá tươi mát của thiên nhiên và tông màu xanh dương mạnh mẽ, giỏ hoa mang thông điệp của sự phát triển mạnh mẽ, hoa thuận và tươi mát thích hợp dành tặng các bạn nam vào những dịp đặc biệt như sinh nhật, chúc mừng kỉ niệm và thăng chức.', N'SK7.png', CAST(0x48400B00 AS Date), 5, 4)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (50, N'HOA CHÚC SỨC KHỎE - TỰ DO', 870000, N'Lẵng hoa “Tự do” là một khúc ca đầy ngẫu hứng, reo vang thông điệp: Tôi yêu tự do, yêu lắm cái cách con người ta sống không ngần ngại những ràng buộc cứng nhắc. Tự do làm điều mình thích, tự do làm những chuyện mình yêu. Tôi muốn nuôi dưỡng một tâm hồn tự do, thỏa thích bay đến những phương trời mới, khám phá những điều kỳ thú và chinh phục mọi giới hạn của bản thân', N'SK8.png', CAST(0x48400B00 AS Date), 5, 5)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (51, N'HOA CHÚC SỨC KHỎE - AN NHIÊN', 1000000, N'Tông màu pastel ngọt ngào của hộp hoa dễ dàng chiều lòng bất kỳ ai. Những hoa lan hồ điệp trắng muốt trên nền hoa hồng da dịu dàng như mang đến khung cảnh một vườn hoa xanh mướt, tươi tắn trong buổi sớm mai. Ta ngắm nhìn và hít căng tràn hương thơm cỏ cây, để thấy an nhiên, tự tại và trong trẻo đến vô cùng. Hộp hoa sẽ là món quà tuyệt vời dành tặng cho những người thân yêu của bạn.', N'SK9.png', CAST(0x48400B00 AS Date), 5, 6)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (52, N'HOA CHÚC SỨC KHỎE - SỰ SỐNG', 800000, N'Hộp hoa được thiết kế với tông màu đỏ của hoa hồng đỏ và màu kem của hoa hồng da. Tất cả hòa quyện vào như sức sống mãnh liệt luôn vươn lên để vươn tới cuộc sống tốt đẹp. Thích hợp tặng sinh nhật, kỉ niệm, thăng chức...', N'SK10.png', CAST(0x48400B00 AS Date), 5, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (53, N'HOA GIÁNG SINH - YÊU THƯƠNG NỒNG CHÁY', 600000, N'HOA GIÁNG SINH - YÊU THƯƠNG NỒNG CHÁY', N'GS1.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (54, N'HOA GIÁNG SINH - NGÀY ĐÔNG', 600000, N'"Điều gì khiến tôi yêu em đến trọn vẹn". Phải chăng là ánh mắt ngời ngời trong sáng của em mỗi khi nhìn tôi khiến tim tôi xao xuyến đến lạ kì. Nếu lựa chọn tôi sẽ chọn bó hoa hồng trắng để gửi tặng người con gái tôi yêu. Bởi bó hoa thay lời tôi muốn nói, rằng tình yêu tôi dành cho em trong sáng,không lẫn vật chất và vô cùng thiêng liêng. Và bó hoa này sẽ là món quà đặc biệt tôi dành tặng cho em, cô gái nhỏ của tôi. ', N'GS2.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (55, N'HOA GIÁNG SINH - SỰ SỐNG', 800000, N'Hộp hoa được thiết kế với tông màu đỏ của hoa hồng đỏ và màu kem của hoa hồng da. Tất cả hòa quyện vào như sức sống mãnh liệt luôn vươn lên để vươn tới cuộc sống tốt đẹp. Thích hợp tặng sinh nhật, kỉ niệm, thăng chức... ', N'GS3.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (56, N'HOA GIÁNG SINH - BÙNG CHÁY', 500000, N'Mượn màu đỏ của Hoa Hồng làm màu chủ đạo, “Bùng cháy” chất chứa trong mình thông điệp về việc thể hiện cảm xúc của mỗi người. “Bùng cháy” có thể là sự nổ tung, chìm đắm trong tình yêu, cũng có thể là sự tuôn trào nhiệt huyết của tuổi trẻ hay cảm giác tự hào khi vượt qua biết bao gian lao, thử thách … Dù những cảm xúc ấy có gửi đến ai đi chăng nữa thì đó cũng là tình cảm mãnh liệt và chân thành nhất. Chọn “Bùng cháy” để gửi tặng đến một người cũng có nghĩa ta quý trọng và tin yêu họ biết bao nhiêu!', N'GS4.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (57, N'HOA GIÁNG SINH - CHUYỆN TÌNH TÔI', 1200000, N'Hệt như những rung động thưở ban đầu tinh khôi và đầy mơ mộng. Rồi trải qua biết bao thăng trầm, biết bao xúc cảm của những hờn giận vu vơ, tình yêu ấy ngày càng bền chặt, ngày càng nồng nàn như sắc màu đằm thắm của những đóa hồng tươi. "Chuyện tình tôi" thích hợp để bạn dành tặng ai kia, như một cách ôn lại những kỉ niệm lãng mạn của mình.', N'GS5.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (58, N'HOA GIÁNG SINH - ĐIỀU KỲ DIỆU', 600000, N'Thời gian trôi qua, thời gian có thể thay đổi con người và vạn vật. Cùng với một vài điều bất tử, tình yêu thật sự luôn tồn tại và sống mãi trong tâm hồn chúng ta. Đó là điều kỳ diệu.', N'GS6.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (59, N'HOA GIÁNG SINH - ĐẮM SAY', 350000, N'Sắc đỏ nồng nàn và quyến rũ của những bông hồng sasa này chắc chắn sẽ đem đến cho người nhận cảm giác về một tình yêu đầy lãng mạn, ngọt ngào. Còn chần chờ gì nữa mà không cùng "Đắm say" thể hiện tình yêu của bạn. Hãy chọn "Đắm say" trong những dịp như sinh nhật, chúc mừng, giáng sinh, cầu hôn hay thậm chí chẳng vì một ngày đặc biệt nào cả. Chỉ đơn giản là thể hiện tình yêu mà thôi.', N'GS7.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (60, N'HOA GIÁNG SINH - GỬI TÌNH YÊU CỦA TÔI 1', 550000, N'Trái tim bằng hoa hồng được kết trên hộp gỗ mộc mạc, nền lá xanh hi vọng tượng trưng cho tình yêu mà bạn muốn nhắn gửi đến người ấy. Đối với tình yêu, càng đơn giản càng hạnh phúc, giống như hộp hoa trái tim này vậy.', N'GS8.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (61, N'HOA GIÁNG SINH - YÊU THƯƠNG NỒNG CHÁY', 600000, N'Hoa hồng đỏ thể hiện ý nghĩa tình yêu chân thành, mãnh liệt bất chấp mọi chông gai. Đối với những mối quan hệ mới vừa bắt đầu hoặc là gắn bó dài lâu thì một bó hoa hồng đỏ như cách khẳng định tình cảm chân thành, đồng thời là lời hứa cho sự phát triển lâu dài về sau, cùng nhau đi đến đoạn cuối con đường. Bó hoa thích hợp tặng dịp đặc biệt Valentine, ngày kỉ niệm, cầu hôn....', N'GS9.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (62, N'HOA GIÁNG SINH - NGÀY DỊU ÊM', 1200000, N'Cuộc sống vốn đầy những khó khăn, thất bại, nhiều khi ta cảm thấy mệt mỏi, áp lực và không muốn làm gì nữa. Lúc ấy nếu như có một lời động viên, một cái nắm tay, một cái ôm dịu dàng từ những người thương yêu thì chúng ta sẽ thấy vô cùng ấm áp, bình yên. Bình hoa tone tím được phối nhẹ nhàng tạo cảm giác thư thái sau một ngày làm việc mệt nhọc.', N'GS10.png', CAST(0x48400B00 AS Date), 6, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (63, N'HOA CHIA BUỒN - ĐÊM TÀN', 1000000, N'Với sự mất mát to lớn khi người thân ra đi thì người ở lại rất cần những sự an ủi, sẻ chia để vượt qua giai đoạn khó khăn này. Kệ hoa chia buồn tone màu trắng tím như sự kính dâng với lòng thành kính trang trọng nhất đến người đã khuất. Mong họ được an nghỉ và đừng vương vấn muộn phiền nữa. Rồi mọi thứ sẽ qua và sẽ ổn thôi', N'CB1.png', CAST(0x48400B00 AS Date), 7, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (64, N'HOA CHIA BUỒN - VIÊN MÃN', 350000, N'Sau mỗi đám tang là những sự chia ly mất mát của gia chủ, bởi vậy họ vô cùng đau buồn rất cần đến những lời động viên, an ủi chân thành từ bạn bè, người thân. Vòng hoa này như một lời chia buồn chân thành nhất chúng tôi muốn gửi đến gia đình. Mong gia đình vượt qua khó khăn này. Vô cùng thương tiếc.', N'CB2.png', CAST(0x48400B00 AS Date), 7, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (65, N'HOA CHIA BUỒN - LUÂN HỒI', 1200000, N'Ai rồi cũng sẽ phải ra đi, người ở lại sẽ luôn ghi nhớ những việc làm và nghĩa cử cao đẹp của người ra đi... Xin phép gia đình cho phép chúng tôi được cùng san sẻ nỗi buồn này bằng vòng hoa chia buồn này. Hy vọng thân chủ sẽ sớm vượt qua nỗi đau buồn này.', N'CB3.png', CAST(0x48400B00 AS Date), 7, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (66, N'HOA CHIA BUỒN - THÁNH GIÁ', 2000000, N'Có người nói rằng chết là sự kết thúc, có người lại nói chết là một sự khởi đầu mới, có người lại phủ nhận nó trên một lối sống khác về tinh thần. Nhưng dẫu cuộc đời bạn có thế nào đi nữa thì hãy luôn nhớ rằng cái chết là điều không thể tránh khỏi. Kệ hoa được thiết kế đặc biệt dành riêng cho Đạo Chúa', N'CB4.png', CAST(0x48400B00 AS Date), 7, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (67, N'HOA CHIA BUỒN - YÊN GIẤC', 1000000, N'Việc chuyển đổi trạng thái từ sự sống sang cái chết là một quy luật tự nhiên tuy nhiên nó lại tạo ra cảm giác vô cùng đau buồn cho người ở lại. Khi một người ra đi thì luôn để lại sự luyến tiếc trên cõi đời này. 1 vòng hoa chia buồn sẽ thay bạn an ủi và chia sẻ nỗi buồn tột cùng với gia đình người đã khuất.', N'CB5.png', CAST(0x48400B00 AS Date), 7, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (68, N'HOA CHIA BUỒN - ÁNH CHIỀU TÀ', 850000, N'Con người ai rồi cũng sẽ già đi. Tựa như ánh chiều tà buồn man mác rồi cũng sẽ lụi tàn theo thời gian. Cuộc đời không ai biết trước được ngày mai hãy sống hết mình cho ngày hôm nay để khi ra đi không có gì để hối tiếc. Hãy đừng quá đau buồn rồi mọi chuyện sẽ qua mau thôi.', N'CB6.png', CAST(0x48400B00 AS Date), 7, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (69, N'HOA CHIA BUỒN - NGƯỜI XA KHUẤT', 1400000, N'Cuộc sống nào ai biết trước được điều gì. Hôm qua còn đang nói chuyện vui cười, hôm nay đã mỗi người mỗi thế giới khác. Người đã xa khuất rồi bạn cũng đừng quá đau buồn hãy mạnh mẽ lên để họ được yên giấc ngàn thu.', N'CB7.png', CAST(0x48400B00 AS Date), 7, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (70, N'HOA CHIA BUỒN - SƯƠNG TRẮNG', 1500000, N'Cuộc sống là một chặn đường giữa sự sống và cái chết. Khi bạn được sinh ra trên cõi đời này cũng là lúc bạn đang đối diện với cái chết, quan trọng là nó ở gần hay xa mà thôi. Khi ai đó vừa mất đi người thân hoặc một người bạn rất yêu quý thì nỗi đau đó sẽ rất khó phai. 1 vòng hoa trắng để chia sẻ nỗi buồn góp phần làm xoa dịu nỗi đau của người đó', N'CB8.png', CAST(0x48400B00 AS Date), 7, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (71, N'HOA CHIA BUỒN - KHOẢNG LẶNG', 1500000, N'Người ra đi mãi mãi luôn để lại trong mỗi chúng ta một khoảng lặng đến não lòng. Lặng yên khi suy nghĩ về những kỉ niệm của ta với người. Đừng quá đau buồn vì những mất mát vì "sinh, lão, bệnh, tử" là điều không ai có thể tránh khỏi.', N'CB9.png', CAST(0x48400B00 AS Date), 7, 3)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (72, N'HOA CHIA BUỒN - NIỆM KHÚC CUỐI', 1000000, N'Niệm khúc cuối cất lên tiễn người ra đi mãi mãi. Dù người đi xa nhưng vẫn hiện hữu trong từng nỗi nhớ, từng kỉ niệm được nhắc lại khi nói chuyện với nhau. Hy vọng họ ra đi thanh thản và nhẹ nhàng.', N'CB10.png', CAST(0x48400B00 AS Date), 7, 1)
INSERT [dbo].[HOA] ([MAHOA], [TENHOA], [GIABAN], [MOTA], [ANHBIA], [NGAYCAPNHAT], [MACHUDE], [LOAI]) VALUES (73, N'PHÚC YÊU ĐẦU 3', 350000, N'<p>skldfhklk dlkf sd lfmk slf&nbsp;</p>', N'akbt4.png', CAST(0x71400B00 AS Date), 6, 8)
SET IDENTITY_INSERT [dbo].[HOA] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [NGAYSINH], [GIOITINH], [DIENTHOAI], [TAIKHOAN], [MATKHAU], [EMAIL], [DIACHI], [QUYEN]) VALUES (1, N'Huỳnh Ngọc Trí', CAST(0xDB220B00 AS Date), N'Nam', N'0967579921  ', N'Admin                                             ', N'123                           ', N'huynhngoctri1999@gmail.com                                                                          ', N'Gò Dầu - Tây Ninh', N'Admin     ')
INSERT [dbo].[KHACHHANG] ([MAKH], [HOTEN], [NGAYSINH], [GIOITINH], [DIENTHOAI], [TAIKHOAN], [MATKHAU], [EMAIL], [DIACHI], [QUYEN]) VALUES (2, N'Nguyễn Tấn Sý', CAST(0xB7200B00 AS Date), N'Nam', NULL, N'tansy123                                          ', N'123                           ', NULL, N'Gia Lai', N'User      ')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[LOAI] ON 

INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (1, N'HOA HỒNG')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (2, N'HOA CẨM CHƯỚNG')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (3, N'HOA CÚC')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (4, N'HOA ĐỒNG TIỀN')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (5, N'LAN HỒ ĐIỆP')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (6, N'HOA LOA KÈN')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (7, N'HOA LY')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (8, N'HOA SEN')
INSERT [dbo].[LOAI] ([MALOAI], [TENLOAI]) VALUES (9, N'HOA TULIP')
SET IDENTITY_INSERT [dbo].[LOAI] OFF
INSERT [dbo].[TAIKHOANADMIN] ([TENTK], [MK]) VALUES (N'huynhngoctri1999                                  ', N'123                                               ')
INSERT [dbo].[TAIKHOANADMIN] ([TENTK], [MK]) VALUES (N'ngoduythai                                        ', N'123                                               ')
INSERT [dbo].[TAIKHOANADMIN] ([TENTK], [MK]) VALUES (N'nguyentansy                                       ', N'123                                               ')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UNIQUE_TENTK]    Script Date: 12/03/2019 12:40:30 AM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD  CONSTRAINT [UNIQUE_TENTK] UNIQUE NONCLUSTERED 
(
	[TAIKHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_DONHANG] FOREIGN KEY([MADH])
REFERENCES [dbo].[DONHANG] ([MADH])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_DONHANG]
GO
ALTER TABLE [dbo].[CHITIETDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONHANG_HOA] FOREIGN KEY([MAHOA])
REFERENCES [dbo].[HOA] ([MAHOA])
GO
ALTER TABLE [dbo].[CHITIETDONHANG] CHECK CONSTRAINT [FK_CHITIETDONHANG_HOA]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[HOA]  WITH CHECK ADD  CONSTRAINT [FK_HOA_CHUDE] FOREIGN KEY([MACHUDE])
REFERENCES [dbo].[CHUDE] ([MACHUDE])
GO
ALTER TABLE [dbo].[HOA] CHECK CONSTRAINT [FK_HOA_CHUDE]
GO
ALTER TABLE [dbo].[HOA]  WITH CHECK ADD  CONSTRAINT [FK_HOA_LOAI] FOREIGN KEY([LOAI])
REFERENCES [dbo].[LOAI] ([MALOAI])
GO
ALTER TABLE [dbo].[HOA] CHECK CONSTRAINT [FK_HOA_LOAI]
GO
USE [master]
GO
ALTER DATABASE [QL_SHOPHOATUOI] SET  READ_WRITE 
GO
