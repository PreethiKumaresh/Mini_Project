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

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="dbpreethi")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertlogin(login instance);
  partial void Updatelogin(login instance);
  partial void Deletelogin(login instance);
  partial void InsertStudentsJobApplied(StudentsJobApplied instance);
  partial void UpdateStudentsJobApplied(StudentsJobApplied instance);
  partial void DeleteStudentsJobApplied(StudentsJobApplied instance);
  partial void InsertdetailCompany(detailCompany instance);
  partial void UpdatedetailCompany(detailCompany instance);
  partial void DeletedetailCompany(detailCompany instance);
  partial void InsertStudentDetail(StudentDetail instance);
  partial void UpdateStudentDetail(StudentDetail instance);
  partial void DeleteStudentDetail(StudentDetail instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["dbpreethiConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<login> logins
	{
		get
		{
			return this.GetTable<login>();
		}
	}
	
	public System.Data.Linq.Table<StudentsJobApplied> StudentsJobApplieds
	{
		get
		{
			return this.GetTable<StudentsJobApplied>();
		}
	}
	
	public System.Data.Linq.Table<detailCompany> detailCompanies
	{
		get
		{
			return this.GetTable<detailCompany>();
		}
	}
	
	public System.Data.Linq.Table<StudentDetail> StudentDetails
	{
		get
		{
			return this.GetTable<StudentDetail>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.login")]
public partial class login : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _username;
	
	private string _password;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnusernameChanging(string value);
    partial void OnusernameChanged();
    partial void OnpasswordChanging(string value);
    partial void OnpasswordChanged();
    #endregion
	
	public login()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_username", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
	public string username
	{
		get
		{
			return this._username;
		}
		set
		{
			if ((this._username != value))
			{
				this.OnusernameChanging(value);
				this.SendPropertyChanging();
				this._username = value;
				this.SendPropertyChanged("username");
				this.OnusernameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_password", DbType="NChar(10)")]
	public string password
	{
		get
		{
			return this._password;
		}
		set
		{
			if ((this._password != value))
			{
				this.OnpasswordChanging(value);
				this.SendPropertyChanging();
				this._password = value;
				this.SendPropertyChanged("password");
				this.OnpasswordChanged();
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

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.StudentsJobApplied")]
public partial class StudentsJobApplied : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _sno;
	
	private string _studentid;
	
	private string _companyid;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnsnoChanging(int value);
    partial void OnsnoChanged();
    partial void OnstudentidChanging(string value);
    partial void OnstudentidChanged();
    partial void OncompanyidChanging(string value);
    partial void OncompanyidChanged();
    #endregion
	
	public StudentsJobApplied()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_sno", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int sno
	{
		get
		{
			return this._sno;
		}
		set
		{
			if ((this._sno != value))
			{
				this.OnsnoChanging(value);
				this.SendPropertyChanging();
				this._sno = value;
				this.SendPropertyChanged("sno");
				this.OnsnoChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_studentid", DbType="NChar(10)")]
	public string studentid
	{
		get
		{
			return this._studentid;
		}
		set
		{
			if ((this._studentid != value))
			{
				this.OnstudentidChanging(value);
				this.SendPropertyChanging();
				this._studentid = value;
				this.SendPropertyChanged("studentid");
				this.OnstudentidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_companyid", DbType="NChar(10)")]
	public string companyid
	{
		get
		{
			return this._companyid;
		}
		set
		{
			if ((this._companyid != value))
			{
				this.OncompanyidChanging(value);
				this.SendPropertyChanging();
				this._companyid = value;
				this.SendPropertyChanged("companyid");
				this.OncompanyidChanged();
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

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.detailCompany")]
public partial class detailCompany : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _companyid;
	
	private string _name;
	
	private string _emailid;
	
	private string _address;
	
	private string _mobno;
	
	private string _jpost;
	
	private string _jpay;
	
	private string _eligib;
	
	private string _cutoff;
	
	private string _postavai;
	
	private string _app_final_date;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OncompanyidChanging(string value);
    partial void OncompanyidChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    partial void OnemailidChanging(string value);
    partial void OnemailidChanged();
    partial void OnaddressChanging(string value);
    partial void OnaddressChanged();
    partial void OnmobnoChanging(string value);
    partial void OnmobnoChanged();
    partial void OnjpostChanging(string value);
    partial void OnjpostChanged();
    partial void OnjpayChanging(string value);
    partial void OnjpayChanged();
    partial void OneligibChanging(string value);
    partial void OneligibChanged();
    partial void OncutoffChanging(string value);
    partial void OncutoffChanged();
    partial void OnpostavaiChanging(string value);
    partial void OnpostavaiChanged();
    partial void Onapp_final_dateChanging(string value);
    partial void Onapp_final_dateChanged();
    #endregion
	
	public detailCompany()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_companyid", DbType="NChar(10) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
	public string companyid
	{
		get
		{
			return this._companyid;
		}
		set
		{
			if ((this._companyid != value))
			{
				this.OncompanyidChanging(value);
				this.SendPropertyChanging();
				this._companyid = value;
				this.SendPropertyChanged("companyid");
				this.OncompanyidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="VarChar(50)")]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this.OnnameChanging(value);
				this.SendPropertyChanging();
				this._name = value;
				this.SendPropertyChanged("name");
				this.OnnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_emailid", DbType="VarChar(50)")]
	public string emailid
	{
		get
		{
			return this._emailid;
		}
		set
		{
			if ((this._emailid != value))
			{
				this.OnemailidChanging(value);
				this.SendPropertyChanging();
				this._emailid = value;
				this.SendPropertyChanged("emailid");
				this.OnemailidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_address", DbType="VarChar(50)")]
	public string address
	{
		get
		{
			return this._address;
		}
		set
		{
			if ((this._address != value))
			{
				this.OnaddressChanging(value);
				this.SendPropertyChanging();
				this._address = value;
				this.SendPropertyChanged("address");
				this.OnaddressChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_mobno", DbType="VarChar(50)")]
	public string mobno
	{
		get
		{
			return this._mobno;
		}
		set
		{
			if ((this._mobno != value))
			{
				this.OnmobnoChanging(value);
				this.SendPropertyChanging();
				this._mobno = value;
				this.SendPropertyChanged("mobno");
				this.OnmobnoChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_jpost", DbType="VarChar(50)")]
	public string jpost
	{
		get
		{
			return this._jpost;
		}
		set
		{
			if ((this._jpost != value))
			{
				this.OnjpostChanging(value);
				this.SendPropertyChanging();
				this._jpost = value;
				this.SendPropertyChanged("jpost");
				this.OnjpostChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_jpay", DbType="VarChar(50)")]
	public string jpay
	{
		get
		{
			return this._jpay;
		}
		set
		{
			if ((this._jpay != value))
			{
				this.OnjpayChanging(value);
				this.SendPropertyChanging();
				this._jpay = value;
				this.SendPropertyChanged("jpay");
				this.OnjpayChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_eligib", DbType="VarChar(50)")]
	public string eligib
	{
		get
		{
			return this._eligib;
		}
		set
		{
			if ((this._eligib != value))
			{
				this.OneligibChanging(value);
				this.SendPropertyChanging();
				this._eligib = value;
				this.SendPropertyChanged("eligib");
				this.OneligibChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_cutoff", DbType="VarChar(50)")]
	public string cutoff
	{
		get
		{
			return this._cutoff;
		}
		set
		{
			if ((this._cutoff != value))
			{
				this.OncutoffChanging(value);
				this.SendPropertyChanging();
				this._cutoff = value;
				this.SendPropertyChanged("cutoff");
				this.OncutoffChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_postavai", DbType="VarChar(50)")]
	public string postavai
	{
		get
		{
			return this._postavai;
		}
		set
		{
			if ((this._postavai != value))
			{
				this.OnpostavaiChanging(value);
				this.SendPropertyChanging();
				this._postavai = value;
				this.SendPropertyChanged("postavai");
				this.OnpostavaiChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_app_final_date", DbType="VarChar(50)")]
	public string app_final_date
	{
		get
		{
			return this._app_final_date;
		}
		set
		{
			if ((this._app_final_date != value))
			{
				this.Onapp_final_dateChanging(value);
				this.SendPropertyChanging();
				this._app_final_date = value;
				this.SendPropertyChanged("app_final_date");
				this.Onapp_final_dateChanged();
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

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.StudentDetail")]
public partial class StudentDetail : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _studentid;
	
	private string _name;
	
	private string _dob;
	
	private string _mailid;
	
	private string _mobno;
	
	private string _address;
	
	private string _dept;
	
	private string _degree;
	
	private string _ssc;
	
	private string _hsc;
	
	private string _ug;
	
	private string _pg;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnstudentidChanging(string value);
    partial void OnstudentidChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    partial void OndobChanging(string value);
    partial void OndobChanged();
    partial void OnmailidChanging(string value);
    partial void OnmailidChanged();
    partial void OnmobnoChanging(string value);
    partial void OnmobnoChanged();
    partial void OnaddressChanging(string value);
    partial void OnaddressChanged();
    partial void OndeptChanging(string value);
    partial void OndeptChanged();
    partial void OndegreeChanging(string value);
    partial void OndegreeChanged();
    partial void OnsscChanging(string value);
    partial void OnsscChanged();
    partial void OnhscChanging(string value);
    partial void OnhscChanged();
    partial void OnugChanging(string value);
    partial void OnugChanged();
    partial void OnpgChanging(string value);
    partial void OnpgChanged();
    #endregion
	
	public StudentDetail()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_studentid", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
	public string studentid
	{
		get
		{
			return this._studentid;
		}
		set
		{
			if ((this._studentid != value))
			{
				this.OnstudentidChanging(value);
				this.SendPropertyChanging();
				this._studentid = value;
				this.SendPropertyChanged("studentid");
				this.OnstudentidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="VarChar(50)")]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this.OnnameChanging(value);
				this.SendPropertyChanging();
				this._name = value;
				this.SendPropertyChanged("name");
				this.OnnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_dob", DbType="VarChar(50)")]
	public string dob
	{
		get
		{
			return this._dob;
		}
		set
		{
			if ((this._dob != value))
			{
				this.OndobChanging(value);
				this.SendPropertyChanging();
				this._dob = value;
				this.SendPropertyChanged("dob");
				this.OndobChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_mailid", DbType="VarChar(50)")]
	public string mailid
	{
		get
		{
			return this._mailid;
		}
		set
		{
			if ((this._mailid != value))
			{
				this.OnmailidChanging(value);
				this.SendPropertyChanging();
				this._mailid = value;
				this.SendPropertyChanged("mailid");
				this.OnmailidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_mobno", DbType="VarChar(50)")]
	public string mobno
	{
		get
		{
			return this._mobno;
		}
		set
		{
			if ((this._mobno != value))
			{
				this.OnmobnoChanging(value);
				this.SendPropertyChanging();
				this._mobno = value;
				this.SendPropertyChanged("mobno");
				this.OnmobnoChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_address", DbType="VarChar(50)")]
	public string address
	{
		get
		{
			return this._address;
		}
		set
		{
			if ((this._address != value))
			{
				this.OnaddressChanging(value);
				this.SendPropertyChanging();
				this._address = value;
				this.SendPropertyChanged("address");
				this.OnaddressChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_dept", DbType="VarChar(50)")]
	public string dept
	{
		get
		{
			return this._dept;
		}
		set
		{
			if ((this._dept != value))
			{
				this.OndeptChanging(value);
				this.SendPropertyChanging();
				this._dept = value;
				this.SendPropertyChanged("dept");
				this.OndeptChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_degree", DbType="VarChar(50)")]
	public string degree
	{
		get
		{
			return this._degree;
		}
		set
		{
			if ((this._degree != value))
			{
				this.OndegreeChanging(value);
				this.SendPropertyChanging();
				this._degree = value;
				this.SendPropertyChanged("degree");
				this.OndegreeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ssc", DbType="VarChar(50)")]
	public string ssc
	{
		get
		{
			return this._ssc;
		}
		set
		{
			if ((this._ssc != value))
			{
				this.OnsscChanging(value);
				this.SendPropertyChanging();
				this._ssc = value;
				this.SendPropertyChanged("ssc");
				this.OnsscChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_hsc", DbType="VarChar(50)")]
	public string hsc
	{
		get
		{
			return this._hsc;
		}
		set
		{
			if ((this._hsc != value))
			{
				this.OnhscChanging(value);
				this.SendPropertyChanging();
				this._hsc = value;
				this.SendPropertyChanged("hsc");
				this.OnhscChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ug", DbType="VarChar(50)")]
	public string ug
	{
		get
		{
			return this._ug;
		}
		set
		{
			if ((this._ug != value))
			{
				this.OnugChanging(value);
				this.SendPropertyChanging();
				this._ug = value;
				this.SendPropertyChanged("ug");
				this.OnugChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_pg", DbType="VarChar(50)")]
	public string pg
	{
		get
		{
			return this._pg;
		}
		set
		{
			if ((this._pg != value))
			{
				this.OnpgChanging(value);
				this.SendPropertyChanging();
				this._pg = value;
				this.SendPropertyChanged("pg");
				this.OnpgChanged();
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
#pragma warning restore 1591
