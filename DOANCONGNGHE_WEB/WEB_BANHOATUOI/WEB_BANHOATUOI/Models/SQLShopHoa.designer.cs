﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WEB_BANHOATUOI.Models
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="QL_SHOPHOATUOI")]
	public partial class SQLShopHoaDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertTAIKHOANADMIN(TAIKHOANADMIN instance);
    partial void UpdateTAIKHOANADMIN(TAIKHOANADMIN instance);
    partial void DeleteTAIKHOANADMIN(TAIKHOANADMIN instance);
    partial void InsertLOAI(LOAI instance);
    partial void UpdateLOAI(LOAI instance);
    partial void DeleteLOAI(LOAI instance);
    partial void InsertKHACHHANG(KHACHHANG instance);
    partial void UpdateKHACHHANG(KHACHHANG instance);
    partial void DeleteKHACHHANG(KHACHHANG instance);
    partial void InsertHOA(HOA instance);
    partial void UpdateHOA(HOA instance);
    partial void DeleteHOA(HOA instance);
    partial void InsertCHUDE(CHUDE instance);
    partial void UpdateCHUDE(CHUDE instance);
    partial void DeleteCHUDE(CHUDE instance);
    partial void InsertCHITIETDONHANG(CHITIETDONHANG instance);
    partial void UpdateCHITIETDONHANG(CHITIETDONHANG instance);
    partial void DeleteCHITIETDONHANG(CHITIETDONHANG instance);
    partial void InsertDONHANG(DONHANG instance);
    partial void UpdateDONHANG(DONHANG instance);
    partial void DeleteDONHANG(DONHANG instance);
    #endregion
		
		public SQLShopHoaDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["QL_SHOPHOATUOIConnectionString3"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public SQLShopHoaDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SQLShopHoaDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SQLShopHoaDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public SQLShopHoaDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<TAIKHOANADMIN> TAIKHOANADMINs
		{
			get
			{
				return this.GetTable<TAIKHOANADMIN>();
			}
		}
		
		public System.Data.Linq.Table<LOAI> LOAIs
		{
			get
			{
				return this.GetTable<LOAI>();
			}
		}
		
		public System.Data.Linq.Table<KHACHHANG> KHACHHANGs
		{
			get
			{
				return this.GetTable<KHACHHANG>();
			}
		}
		
		public System.Data.Linq.Table<HOA> HOAs
		{
			get
			{
				return this.GetTable<HOA>();
			}
		}
		
		public System.Data.Linq.Table<CHUDE> CHUDEs
		{
			get
			{
				return this.GetTable<CHUDE>();
			}
		}
		
		public System.Data.Linq.Table<CHITIETDONHANG> CHITIETDONHANGs
		{
			get
			{
				return this.GetTable<CHITIETDONHANG>();
			}
		}
		
		public System.Data.Linq.Table<DONHANG> DONHANGs
		{
			get
			{
				return this.GetTable<DONHANG>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.TAIKHOANADMIN")]
	public partial class TAIKHOANADMIN : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _TENTK;
		
		private string _MK;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnTENTKChanging(string value);
    partial void OnTENTKChanged();
    partial void OnMKChanging(string value);
    partial void OnMKChanged();
    #endregion
		
		public TAIKHOANADMIN()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TENTK", DbType="NChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string TENTK
		{
			get
			{
				return this._TENTK;
			}
			set
			{
				if ((this._TENTK != value))
				{
					this.OnTENTKChanging(value);
					this.SendPropertyChanging();
					this._TENTK = value;
					this.SendPropertyChanged("TENTK");
					this.OnTENTKChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MK", DbType="NChar(50)")]
		public string MK
		{
			get
			{
				return this._MK;
			}
			set
			{
				if ((this._MK != value))
				{
					this.OnMKChanging(value);
					this.SendPropertyChanging();
					this._MK = value;
					this.SendPropertyChanged("MK");
					this.OnMKChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.LOAI")]
	public partial class LOAI : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MALOAI;
		
		private string _TENLOAI;
		
		private EntitySet<HOA> _HOAs;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMALOAIChanging(int value);
    partial void OnMALOAIChanged();
    partial void OnTENLOAIChanging(string value);
    partial void OnTENLOAIChanged();
    #endregion
		
		public LOAI()
		{
			this._HOAs = new EntitySet<HOA>(new Action<HOA>(this.attach_HOAs), new Action<HOA>(this.detach_HOAs));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MALOAI", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int MALOAI
		{
			get
			{
				return this._MALOAI;
			}
			set
			{
				if ((this._MALOAI != value))
				{
					this.OnMALOAIChanging(value);
					this.SendPropertyChanging();
					this._MALOAI = value;
					this.SendPropertyChanged("MALOAI");
					this.OnMALOAIChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TENLOAI", DbType="NVarChar(50)")]
		public string TENLOAI
		{
			get
			{
				return this._TENLOAI;
			}
			set
			{
				if ((this._TENLOAI != value))
				{
					this.OnTENLOAIChanging(value);
					this.SendPropertyChanging();
					this._TENLOAI = value;
					this.SendPropertyChanged("TENLOAI");
					this.OnTENLOAIChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="LOAI_HOA", Storage="_HOAs", ThisKey="MALOAI", OtherKey="LOAI")]
		public EntitySet<HOA> HOAs
		{
			get
			{
				return this._HOAs;
			}
			set
			{
				this._HOAs.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_HOAs(HOA entity)
		{
			this.SendPropertyChanging();
			entity.LOAI1 = this;
		}
		
		private void detach_HOAs(HOA entity)
		{
			this.SendPropertyChanging();
			entity.LOAI1 = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.KHACHHANG")]
	public partial class KHACHHANG : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MAKH;
		
		private string _HOTEN;
		
		private System.Nullable<System.DateTime> _NGAYSINH;
		
		private string _GIOITINH;
		
		private string _DIENTHOAI;
		
		private string _TAIKHOAN;
		
		private string _MATKHAU;
		
		private string _EMAIL;
		
		private string _DIACHI;
		
		private string _QUYEN;
		
		private EntitySet<DONHANG> _DONHANGs;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMAKHChanging(int value);
    partial void OnMAKHChanged();
    partial void OnHOTENChanging(string value);
    partial void OnHOTENChanged();
    partial void OnNGAYSINHChanging(System.Nullable<System.DateTime> value);
    partial void OnNGAYSINHChanged();
    partial void OnGIOITINHChanging(string value);
    partial void OnGIOITINHChanged();
    partial void OnDIENTHOAIChanging(string value);
    partial void OnDIENTHOAIChanged();
    partial void OnTAIKHOANChanging(string value);
    partial void OnTAIKHOANChanged();
    partial void OnMATKHAUChanging(string value);
    partial void OnMATKHAUChanged();
    partial void OnEMAILChanging(string value);
    partial void OnEMAILChanged();
    partial void OnDIACHIChanging(string value);
    partial void OnDIACHIChanged();
    partial void OnQUYENChanging(string value);
    partial void OnQUYENChanged();
    #endregion
		
		public KHACHHANG()
		{
			this._DONHANGs = new EntitySet<DONHANG>(new Action<DONHANG>(this.attach_DONHANGs), new Action<DONHANG>(this.detach_DONHANGs));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MAKH", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int MAKH
		{
			get
			{
				return this._MAKH;
			}
			set
			{
				if ((this._MAKH != value))
				{
					this.OnMAKHChanging(value);
					this.SendPropertyChanging();
					this._MAKH = value;
					this.SendPropertyChanged("MAKH");
					this.OnMAKHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HOTEN", DbType="NVarChar(50)")]
		public string HOTEN
		{
			get
			{
				return this._HOTEN;
			}
			set
			{
				if ((this._HOTEN != value))
				{
					this.OnHOTENChanging(value);
					this.SendPropertyChanging();
					this._HOTEN = value;
					this.SendPropertyChanged("HOTEN");
					this.OnHOTENChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NGAYSINH", DbType="Date")]
		public System.Nullable<System.DateTime> NGAYSINH
		{
			get
			{
				return this._NGAYSINH;
			}
			set
			{
				if ((this._NGAYSINH != value))
				{
					this.OnNGAYSINHChanging(value);
					this.SendPropertyChanging();
					this._NGAYSINH = value;
					this.SendPropertyChanged("NGAYSINH");
					this.OnNGAYSINHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GIOITINH", DbType="NVarChar(10)")]
		public string GIOITINH
		{
			get
			{
				return this._GIOITINH;
			}
			set
			{
				if ((this._GIOITINH != value))
				{
					this.OnGIOITINHChanging(value);
					this.SendPropertyChanging();
					this._GIOITINH = value;
					this.SendPropertyChanged("GIOITINH");
					this.OnGIOITINHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DIENTHOAI", DbType="NChar(12)")]
		public string DIENTHOAI
		{
			get
			{
				return this._DIENTHOAI;
			}
			set
			{
				if ((this._DIENTHOAI != value))
				{
					this.OnDIENTHOAIChanging(value);
					this.SendPropertyChanging();
					this._DIENTHOAI = value;
					this.SendPropertyChanged("DIENTHOAI");
					this.OnDIENTHOAIChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TAIKHOAN", DbType="NChar(50)")]
		public string TAIKHOAN
		{
			get
			{
				return this._TAIKHOAN;
			}
			set
			{
				if ((this._TAIKHOAN != value))
				{
					this.OnTAIKHOANChanging(value);
					this.SendPropertyChanging();
					this._TAIKHOAN = value;
					this.SendPropertyChanged("TAIKHOAN");
					this.OnTAIKHOANChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MATKHAU", DbType="NChar(30)")]
		public string MATKHAU
		{
			get
			{
				return this._MATKHAU;
			}
			set
			{
				if ((this._MATKHAU != value))
				{
					this.OnMATKHAUChanging(value);
					this.SendPropertyChanging();
					this._MATKHAU = value;
					this.SendPropertyChanged("MATKHAU");
					this.OnMATKHAUChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EMAIL", DbType="NChar(100)")]
		public string EMAIL
		{
			get
			{
				return this._EMAIL;
			}
			set
			{
				if ((this._EMAIL != value))
				{
					this.OnEMAILChanging(value);
					this.SendPropertyChanging();
					this._EMAIL = value;
					this.SendPropertyChanged("EMAIL");
					this.OnEMAILChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DIACHI", DbType="NVarChar(200)")]
		public string DIACHI
		{
			get
			{
				return this._DIACHI;
			}
			set
			{
				if ((this._DIACHI != value))
				{
					this.OnDIACHIChanging(value);
					this.SendPropertyChanging();
					this._DIACHI = value;
					this.SendPropertyChanged("DIACHI");
					this.OnDIACHIChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_QUYEN", DbType="NChar(10)")]
		public string QUYEN
		{
			get
			{
				return this._QUYEN;
			}
			set
			{
				if ((this._QUYEN != value))
				{
					this.OnQUYENChanging(value);
					this.SendPropertyChanging();
					this._QUYEN = value;
					this.SendPropertyChanged("QUYEN");
					this.OnQUYENChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KHACHHANG_DONHANG", Storage="_DONHANGs", ThisKey="MAKH", OtherKey="MAKH")]
		public EntitySet<DONHANG> DONHANGs
		{
			get
			{
				return this._DONHANGs;
			}
			set
			{
				this._DONHANGs.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_DONHANGs(DONHANG entity)
		{
			this.SendPropertyChanging();
			entity.KHACHHANG = this;
		}
		
		private void detach_DONHANGs(DONHANG entity)
		{
			this.SendPropertyChanging();
			entity.KHACHHANG = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.HOA")]
	public partial class HOA : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MAHOA;
		
		private string _TENHOA;
		
		private System.Nullable<int> _GIABAN;
		
		private string _MOTA;
		
		private string _ANHBIA;
		
		private System.Nullable<System.DateTime> _NGAYCAPNHAT;
		
		private System.Nullable<int> _MACHUDE;
		
		private System.Nullable<int> _LOAI;
		
		private EntitySet<CHITIETDONHANG> _CHITIETDONHANGs;
		
		private EntityRef<LOAI> _LOAI1;
		
		private EntityRef<CHUDE> _CHUDE;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMAHOAChanging(int value);
    partial void OnMAHOAChanged();
    partial void OnTENHOAChanging(string value);
    partial void OnTENHOAChanged();
    partial void OnGIABANChanging(System.Nullable<int> value);
    partial void OnGIABANChanged();
    partial void OnMOTAChanging(string value);
    partial void OnMOTAChanged();
    partial void OnANHBIAChanging(string value);
    partial void OnANHBIAChanged();
    partial void OnNGAYCAPNHATChanging(System.Nullable<System.DateTime> value);
    partial void OnNGAYCAPNHATChanged();
    partial void OnMACHUDEChanging(System.Nullable<int> value);
    partial void OnMACHUDEChanged();
    partial void OnLOAIChanging(System.Nullable<int> value);
    partial void OnLOAIChanged();
    #endregion
		
		public HOA()
		{
			this._CHITIETDONHANGs = new EntitySet<CHITIETDONHANG>(new Action<CHITIETDONHANG>(this.attach_CHITIETDONHANGs), new Action<CHITIETDONHANG>(this.detach_CHITIETDONHANGs));
			this._LOAI1 = default(EntityRef<LOAI>);
			this._CHUDE = default(EntityRef<CHUDE>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MAHOA", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int MAHOA
		{
			get
			{
				return this._MAHOA;
			}
			set
			{
				if ((this._MAHOA != value))
				{
					this.OnMAHOAChanging(value);
					this.SendPropertyChanging();
					this._MAHOA = value;
					this.SendPropertyChanged("MAHOA");
					this.OnMAHOAChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TENHOA", DbType="NVarChar(100)")]
		public string TENHOA
		{
			get
			{
				return this._TENHOA;
			}
			set
			{
				if ((this._TENHOA != value))
				{
					this.OnTENHOAChanging(value);
					this.SendPropertyChanging();
					this._TENHOA = value;
					this.SendPropertyChanged("TENHOA");
					this.OnTENHOAChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GIABAN", DbType="Int")]
		public System.Nullable<int> GIABAN
		{
			get
			{
				return this._GIABAN;
			}
			set
			{
				if ((this._GIABAN != value))
				{
					this.OnGIABANChanging(value);
					this.SendPropertyChanging();
					this._GIABAN = value;
					this.SendPropertyChanged("GIABAN");
					this.OnGIABANChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MOTA", DbType="NVarChar(MAX)")]
		public string MOTA
		{
			get
			{
				return this._MOTA;
			}
			set
			{
				if ((this._MOTA != value))
				{
					this.OnMOTAChanging(value);
					this.SendPropertyChanging();
					this._MOTA = value;
					this.SendPropertyChanged("MOTA");
					this.OnMOTAChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ANHBIA", DbType="NVarChar(MAX)")]
		public string ANHBIA
		{
			get
			{
				return this._ANHBIA;
			}
			set
			{
				if ((this._ANHBIA != value))
				{
					this.OnANHBIAChanging(value);
					this.SendPropertyChanging();
					this._ANHBIA = value;
					this.SendPropertyChanged("ANHBIA");
					this.OnANHBIAChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NGAYCAPNHAT", DbType="Date")]
		public System.Nullable<System.DateTime> NGAYCAPNHAT
		{
			get
			{
				return this._NGAYCAPNHAT;
			}
			set
			{
				if ((this._NGAYCAPNHAT != value))
				{
					this.OnNGAYCAPNHATChanging(value);
					this.SendPropertyChanging();
					this._NGAYCAPNHAT = value;
					this.SendPropertyChanged("NGAYCAPNHAT");
					this.OnNGAYCAPNHATChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MACHUDE", DbType="Int")]
		public System.Nullable<int> MACHUDE
		{
			get
			{
				return this._MACHUDE;
			}
			set
			{
				if ((this._MACHUDE != value))
				{
					if (this._CHUDE.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMACHUDEChanging(value);
					this.SendPropertyChanging();
					this._MACHUDE = value;
					this.SendPropertyChanged("MACHUDE");
					this.OnMACHUDEChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LOAI", DbType="Int")]
		public System.Nullable<int> LOAI
		{
			get
			{
				return this._LOAI;
			}
			set
			{
				if ((this._LOAI != value))
				{
					if (this._LOAI1.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnLOAIChanging(value);
					this.SendPropertyChanging();
					this._LOAI = value;
					this.SendPropertyChanged("LOAI");
					this.OnLOAIChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="HOA_CHITIETDONHANG", Storage="_CHITIETDONHANGs", ThisKey="MAHOA", OtherKey="MAHOA")]
		public EntitySet<CHITIETDONHANG> CHITIETDONHANGs
		{
			get
			{
				return this._CHITIETDONHANGs;
			}
			set
			{
				this._CHITIETDONHANGs.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="LOAI_HOA", Storage="_LOAI1", ThisKey="LOAI", OtherKey="MALOAI", IsForeignKey=true)]
		public LOAI LOAI1
		{
			get
			{
				return this._LOAI1.Entity;
			}
			set
			{
				LOAI previousValue = this._LOAI1.Entity;
				if (((previousValue != value) 
							|| (this._LOAI1.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._LOAI1.Entity = null;
						previousValue.HOAs.Remove(this);
					}
					this._LOAI1.Entity = value;
					if ((value != null))
					{
						value.HOAs.Add(this);
						this._LOAI = value.MALOAI;
					}
					else
					{
						this._LOAI = default(Nullable<int>);
					}
					this.SendPropertyChanged("LOAI1");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="CHUDE_HOA", Storage="_CHUDE", ThisKey="MACHUDE", OtherKey="MACHUDE", IsForeignKey=true)]
		public CHUDE CHUDE
		{
			get
			{
				return this._CHUDE.Entity;
			}
			set
			{
				CHUDE previousValue = this._CHUDE.Entity;
				if (((previousValue != value) 
							|| (this._CHUDE.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._CHUDE.Entity = null;
						previousValue.HOAs.Remove(this);
					}
					this._CHUDE.Entity = value;
					if ((value != null))
					{
						value.HOAs.Add(this);
						this._MACHUDE = value.MACHUDE;
					}
					else
					{
						this._MACHUDE = default(Nullable<int>);
					}
					this.SendPropertyChanged("CHUDE");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_CHITIETDONHANGs(CHITIETDONHANG entity)
		{
			this.SendPropertyChanging();
			entity.HOA = this;
		}
		
		private void detach_CHITIETDONHANGs(CHITIETDONHANG entity)
		{
			this.SendPropertyChanging();
			entity.HOA = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.CHUDE")]
	public partial class CHUDE : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MACHUDE;
		
		private string _TENCHUDE;
		
		private EntitySet<HOA> _HOAs;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMACHUDEChanging(int value);
    partial void OnMACHUDEChanged();
    partial void OnTENCHUDEChanging(string value);
    partial void OnTENCHUDEChanged();
    #endregion
		
		public CHUDE()
		{
			this._HOAs = new EntitySet<HOA>(new Action<HOA>(this.attach_HOAs), new Action<HOA>(this.detach_HOAs));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MACHUDE", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int MACHUDE
		{
			get
			{
				return this._MACHUDE;
			}
			set
			{
				if ((this._MACHUDE != value))
				{
					this.OnMACHUDEChanging(value);
					this.SendPropertyChanging();
					this._MACHUDE = value;
					this.SendPropertyChanged("MACHUDE");
					this.OnMACHUDEChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TENCHUDE", DbType="NVarChar(100)")]
		public string TENCHUDE
		{
			get
			{
				return this._TENCHUDE;
			}
			set
			{
				if ((this._TENCHUDE != value))
				{
					this.OnTENCHUDEChanging(value);
					this.SendPropertyChanging();
					this._TENCHUDE = value;
					this.SendPropertyChanged("TENCHUDE");
					this.OnTENCHUDEChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="CHUDE_HOA", Storage="_HOAs", ThisKey="MACHUDE", OtherKey="MACHUDE")]
		public EntitySet<HOA> HOAs
		{
			get
			{
				return this._HOAs;
			}
			set
			{
				this._HOAs.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_HOAs(HOA entity)
		{
			this.SendPropertyChanging();
			entity.CHUDE = this;
		}
		
		private void detach_HOAs(HOA entity)
		{
			this.SendPropertyChanging();
			entity.CHUDE = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.CHITIETDONHANG")]
	public partial class CHITIETDONHANG : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MADH;
		
		private int _MAHOA;
		
		private System.Nullable<int> _SOLUONG;
		
		private System.Nullable<int> _DONGIA;
		
		private EntityRef<HOA> _HOA;
		
		private EntityRef<DONHANG> _DONHANG;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMADHChanging(int value);
    partial void OnMADHChanged();
    partial void OnMAHOAChanging(int value);
    partial void OnMAHOAChanged();
    partial void OnSOLUONGChanging(System.Nullable<int> value);
    partial void OnSOLUONGChanged();
    partial void OnDONGIAChanging(System.Nullable<int> value);
    partial void OnDONGIAChanged();
    #endregion
		
		public CHITIETDONHANG()
		{
			this._HOA = default(EntityRef<HOA>);
			this._DONHANG = default(EntityRef<DONHANG>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MADH", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int MADH
		{
			get
			{
				return this._MADH;
			}
			set
			{
				if ((this._MADH != value))
				{
					if (this._DONHANG.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMADHChanging(value);
					this.SendPropertyChanging();
					this._MADH = value;
					this.SendPropertyChanged("MADH");
					this.OnMADHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MAHOA", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int MAHOA
		{
			get
			{
				return this._MAHOA;
			}
			set
			{
				if ((this._MAHOA != value))
				{
					if (this._HOA.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMAHOAChanging(value);
					this.SendPropertyChanging();
					this._MAHOA = value;
					this.SendPropertyChanged("MAHOA");
					this.OnMAHOAChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SOLUONG", DbType="Int")]
		public System.Nullable<int> SOLUONG
		{
			get
			{
				return this._SOLUONG;
			}
			set
			{
				if ((this._SOLUONG != value))
				{
					this.OnSOLUONGChanging(value);
					this.SendPropertyChanging();
					this._SOLUONG = value;
					this.SendPropertyChanged("SOLUONG");
					this.OnSOLUONGChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DONGIA", DbType="Int")]
		public System.Nullable<int> DONGIA
		{
			get
			{
				return this._DONGIA;
			}
			set
			{
				if ((this._DONGIA != value))
				{
					this.OnDONGIAChanging(value);
					this.SendPropertyChanging();
					this._DONGIA = value;
					this.SendPropertyChanged("DONGIA");
					this.OnDONGIAChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="HOA_CHITIETDONHANG", Storage="_HOA", ThisKey="MAHOA", OtherKey="MAHOA", IsForeignKey=true)]
		public HOA HOA
		{
			get
			{
				return this._HOA.Entity;
			}
			set
			{
				HOA previousValue = this._HOA.Entity;
				if (((previousValue != value) 
							|| (this._HOA.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._HOA.Entity = null;
						previousValue.CHITIETDONHANGs.Remove(this);
					}
					this._HOA.Entity = value;
					if ((value != null))
					{
						value.CHITIETDONHANGs.Add(this);
						this._MAHOA = value.MAHOA;
					}
					else
					{
						this._MAHOA = default(int);
					}
					this.SendPropertyChanged("HOA");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="DONHANG_CHITIETDONHANG", Storage="_DONHANG", ThisKey="MADH", OtherKey="MADH", IsForeignKey=true)]
		public DONHANG DONHANG
		{
			get
			{
				return this._DONHANG.Entity;
			}
			set
			{
				DONHANG previousValue = this._DONHANG.Entity;
				if (((previousValue != value) 
							|| (this._DONHANG.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._DONHANG.Entity = null;
						previousValue.CHITIETDONHANGs.Remove(this);
					}
					this._DONHANG.Entity = value;
					if ((value != null))
					{
						value.CHITIETDONHANGs.Add(this);
						this._MADH = value.MADH;
					}
					else
					{
						this._MADH = default(int);
					}
					this.SendPropertyChanged("DONHANG");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.DONHANG")]
	public partial class DONHANG : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _MADH;
		
		private System.Nullable<System.DateTime> _NGAYDAT;
		
		private System.Nullable<System.DateTime> _NGAYGIAO;
		
		private string _TINHTRANGTHANHTOAN;
		
		private string _TINHTRANGGIAOHANG;
		
		private string _DIACHIGIAOHANG;
		
		private System.Nullable<int> _MAKH;
		
		private System.Nullable<double> _TONGTIEN;
		
		private EntitySet<CHITIETDONHANG> _CHITIETDONHANGs;
		
		private EntityRef<KHACHHANG> _KHACHHANG;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMADHChanging(int value);
    partial void OnMADHChanged();
    partial void OnNGAYDATChanging(System.Nullable<System.DateTime> value);
    partial void OnNGAYDATChanged();
    partial void OnNGAYGIAOChanging(System.Nullable<System.DateTime> value);
    partial void OnNGAYGIAOChanged();
    partial void OnTINHTRANGTHANHTOANChanging(string value);
    partial void OnTINHTRANGTHANHTOANChanged();
    partial void OnTINHTRANGGIAOHANGChanging(string value);
    partial void OnTINHTRANGGIAOHANGChanged();
    partial void OnDIACHIGIAOHANGChanging(string value);
    partial void OnDIACHIGIAOHANGChanged();
    partial void OnMAKHChanging(System.Nullable<int> value);
    partial void OnMAKHChanged();
    partial void OnTONGTIENChanging(System.Nullable<double> value);
    partial void OnTONGTIENChanged();
    #endregion
		
		public DONHANG()
		{
			this._CHITIETDONHANGs = new EntitySet<CHITIETDONHANG>(new Action<CHITIETDONHANG>(this.attach_CHITIETDONHANGs), new Action<CHITIETDONHANG>(this.detach_CHITIETDONHANGs));
			this._KHACHHANG = default(EntityRef<KHACHHANG>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MADH", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int MADH
		{
			get
			{
				return this._MADH;
			}
			set
			{
				if ((this._MADH != value))
				{
					this.OnMADHChanging(value);
					this.SendPropertyChanging();
					this._MADH = value;
					this.SendPropertyChanged("MADH");
					this.OnMADHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NGAYDAT", DbType="DateTime")]
		public System.Nullable<System.DateTime> NGAYDAT
		{
			get
			{
				return this._NGAYDAT;
			}
			set
			{
				if ((this._NGAYDAT != value))
				{
					this.OnNGAYDATChanging(value);
					this.SendPropertyChanging();
					this._NGAYDAT = value;
					this.SendPropertyChanged("NGAYDAT");
					this.OnNGAYDATChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NGAYGIAO", DbType="DateTime")]
		public System.Nullable<System.DateTime> NGAYGIAO
		{
			get
			{
				return this._NGAYGIAO;
			}
			set
			{
				if ((this._NGAYGIAO != value))
				{
					this.OnNGAYGIAOChanging(value);
					this.SendPropertyChanging();
					this._NGAYGIAO = value;
					this.SendPropertyChanged("NGAYGIAO");
					this.OnNGAYGIAOChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TINHTRANGTHANHTOAN", DbType="NVarChar(50)")]
		public string TINHTRANGTHANHTOAN
		{
			get
			{
				return this._TINHTRANGTHANHTOAN;
			}
			set
			{
				if ((this._TINHTRANGTHANHTOAN != value))
				{
					this.OnTINHTRANGTHANHTOANChanging(value);
					this.SendPropertyChanging();
					this._TINHTRANGTHANHTOAN = value;
					this.SendPropertyChanged("TINHTRANGTHANHTOAN");
					this.OnTINHTRANGTHANHTOANChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TINHTRANGGIAOHANG", DbType="NVarChar(50)")]
		public string TINHTRANGGIAOHANG
		{
			get
			{
				return this._TINHTRANGGIAOHANG;
			}
			set
			{
				if ((this._TINHTRANGGIAOHANG != value))
				{
					this.OnTINHTRANGGIAOHANGChanging(value);
					this.SendPropertyChanging();
					this._TINHTRANGGIAOHANG = value;
					this.SendPropertyChanged("TINHTRANGGIAOHANG");
					this.OnTINHTRANGGIAOHANGChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DIACHIGIAOHANG", DbType="NVarChar(200)")]
		public string DIACHIGIAOHANG
		{
			get
			{
				return this._DIACHIGIAOHANG;
			}
			set
			{
				if ((this._DIACHIGIAOHANG != value))
				{
					this.OnDIACHIGIAOHANGChanging(value);
					this.SendPropertyChanging();
					this._DIACHIGIAOHANG = value;
					this.SendPropertyChanged("DIACHIGIAOHANG");
					this.OnDIACHIGIAOHANGChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MAKH", DbType="Int")]
		public System.Nullable<int> MAKH
		{
			get
			{
				return this._MAKH;
			}
			set
			{
				if ((this._MAKH != value))
				{
					if (this._KHACHHANG.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMAKHChanging(value);
					this.SendPropertyChanging();
					this._MAKH = value;
					this.SendPropertyChanged("MAKH");
					this.OnMAKHChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TONGTIEN", DbType="Float")]
		public System.Nullable<double> TONGTIEN
		{
			get
			{
				return this._TONGTIEN;
			}
			set
			{
				if ((this._TONGTIEN != value))
				{
					this.OnTONGTIENChanging(value);
					this.SendPropertyChanging();
					this._TONGTIEN = value;
					this.SendPropertyChanged("TONGTIEN");
					this.OnTONGTIENChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="DONHANG_CHITIETDONHANG", Storage="_CHITIETDONHANGs", ThisKey="MADH", OtherKey="MADH")]
		public EntitySet<CHITIETDONHANG> CHITIETDONHANGs
		{
			get
			{
				return this._CHITIETDONHANGs;
			}
			set
			{
				this._CHITIETDONHANGs.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="KHACHHANG_DONHANG", Storage="_KHACHHANG", ThisKey="MAKH", OtherKey="MAKH", IsForeignKey=true)]
		public KHACHHANG KHACHHANG
		{
			get
			{
				return this._KHACHHANG.Entity;
			}
			set
			{
				KHACHHANG previousValue = this._KHACHHANG.Entity;
				if (((previousValue != value) 
							|| (this._KHACHHANG.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._KHACHHANG.Entity = null;
						previousValue.DONHANGs.Remove(this);
					}
					this._KHACHHANG.Entity = value;
					if ((value != null))
					{
						value.DONHANGs.Add(this);
						this._MAKH = value.MAKH;
					}
					else
					{
						this._MAKH = default(Nullable<int>);
					}
					this.SendPropertyChanged("KHACHHANG");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_CHITIETDONHANGs(CHITIETDONHANG entity)
		{
			this.SendPropertyChanging();
			entity.DONHANG = this;
		}
		
		private void detach_CHITIETDONHANGs(CHITIETDONHANG entity)
		{
			this.SendPropertyChanging();
			entity.DONHANG = null;
		}
	}
}
#pragma warning restore 1591
