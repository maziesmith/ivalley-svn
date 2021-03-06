
/*
'===============================================================================
'  Generated From - CSharp_dOOdads_BusinessEntity.vbgen
' 
'  ** IMPORTANT  ** 
'  How to Generate your stored procedures:
' 
'  SQL        = SQL_StoredProcs.vbgen
'  ACCESS     = Access_StoredProcs.vbgen
'  ORACLE     = Oracle_StoredProcs.vbgen
'  FIREBIRD   = FirebirdStoredProcs.vbgen
'  POSTGRESQL = PostgreSQL_StoredProcs.vbgen
'
'  The supporting base class SqlClientEntity is in the Architecture directory in "dOOdads".
'  
'  This object is 'abstract' which means you need to inherit from it to be able
'  to instantiate it.  This is very easilly done. You can override properties and
'  methods in your derived class, this allows you to regenerate this class at any
'  time and not worry about overwriting custom code. 
'
'  NEVER EDIT THIS FILE.
'
'  public class YourObject :  _YourObject
'  {
'
'  }
'
'===============================================================================
*/

// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Specialized;

using MyGeneration.dOOdads;

namespace YMC.DAL
{
	public abstract class _SiteUsers : SqlClientEntity
	{
		public _SiteUsers()
		{
			this.QuerySource = "SiteUsers";
			this.MappingName = "SiteUsers";

		}	

		//=================================================================
		//  public Overrides void AddNew()
		//=================================================================
		//
		//=================================================================
		public override void AddNew()
		{
			base.AddNew();
			
		}
		
		
		public override void FlushData()
		{
			this._whereClause = null;
			this._aggregateClause = null;
			base.FlushData();
		}
		
		//=================================================================
		//  	public Function LoadAll() As Boolean
		//=================================================================
		//  Loads all of the records in the database, and sets the currentRow to the first row
		//=================================================================
		public bool LoadAll() 
		{
			ListDictionary parameters = null;
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_SiteUsersLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int ID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ID, ID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_SiteUsersLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ID
			{
				get
				{
					return new SqlParameter("@ID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter UserFullName
			{
				get
				{
					return new SqlParameter("@UserFullName", SqlDbType.NVarChar, 250);
				}
			}
			
			public static SqlParameter UserName
			{
				get
				{
					return new SqlParameter("@UserName", SqlDbType.NVarChar, 50);
				}
			}
			
			public static SqlParameter UserPassword
			{
				get
				{
					return new SqlParameter("@UserPassword", SqlDbType.NVarChar, 50);
				}
			}
			
			public static SqlParameter Telephone
			{
				get
				{
					return new SqlParameter("@Telephone", SqlDbType.NVarChar, 50);
				}
			}
			
			public static SqlParameter Email
			{
				get
				{
					return new SqlParameter("@Email", SqlDbType.NVarChar, 150);
				}
			}
			
			public static SqlParameter Job
			{
				get
				{
					return new SqlParameter("@Job", SqlDbType.NVarChar, 250);
				}
			}
			
			public static SqlParameter Reason
			{
				get
				{
					return new SqlParameter("@Reason", SqlDbType.NVarChar, 1073741823);
				}
			}
			
			public static SqlParameter OtherInfo
			{
				get
				{
					return new SqlParameter("@OtherInfo", SqlDbType.NVarChar, 1073741823);
				}
			}
			
			public static SqlParameter UserPage
			{
				get
				{
					return new SqlParameter("@UserPage", SqlDbType.Text, 2147483647);
				}
			}
			
			public static SqlParameter IsApproved
			{
				get
				{
					return new SqlParameter("@IsApproved", SqlDbType.Bit, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ID = "ID";
            public const string UserFullName = "UserFullName";
            public const string UserName = "UserName";
            public const string UserPassword = "UserPassword";
            public const string Telephone = "Telephone";
            public const string Email = "Email";
            public const string Job = "Job";
            public const string Reason = "Reason";
            public const string OtherInfo = "OtherInfo";
            public const string UserPage = "UserPage";
            public const string IsApproved = "IsApproved";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ID] = _SiteUsers.PropertyNames.ID;
					ht[UserFullName] = _SiteUsers.PropertyNames.UserFullName;
					ht[UserName] = _SiteUsers.PropertyNames.UserName;
					ht[UserPassword] = _SiteUsers.PropertyNames.UserPassword;
					ht[Telephone] = _SiteUsers.PropertyNames.Telephone;
					ht[Email] = _SiteUsers.PropertyNames.Email;
					ht[Job] = _SiteUsers.PropertyNames.Job;
					ht[Reason] = _SiteUsers.PropertyNames.Reason;
					ht[OtherInfo] = _SiteUsers.PropertyNames.OtherInfo;
					ht[UserPage] = _SiteUsers.PropertyNames.UserPage;
					ht[IsApproved] = _SiteUsers.PropertyNames.IsApproved;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string ID = "ID";
            public const string UserFullName = "UserFullName";
            public const string UserName = "UserName";
            public const string UserPassword = "UserPassword";
            public const string Telephone = "Telephone";
            public const string Email = "Email";
            public const string Job = "Job";
            public const string Reason = "Reason";
            public const string OtherInfo = "OtherInfo";
            public const string UserPage = "UserPage";
            public const string IsApproved = "IsApproved";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ID] = _SiteUsers.ColumnNames.ID;
					ht[UserFullName] = _SiteUsers.ColumnNames.UserFullName;
					ht[UserName] = _SiteUsers.ColumnNames.UserName;
					ht[UserPassword] = _SiteUsers.ColumnNames.UserPassword;
					ht[Telephone] = _SiteUsers.ColumnNames.Telephone;
					ht[Email] = _SiteUsers.ColumnNames.Email;
					ht[Job] = _SiteUsers.ColumnNames.Job;
					ht[Reason] = _SiteUsers.ColumnNames.Reason;
					ht[OtherInfo] = _SiteUsers.ColumnNames.OtherInfo;
					ht[UserPage] = _SiteUsers.ColumnNames.UserPage;
					ht[IsApproved] = _SiteUsers.ColumnNames.IsApproved;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string ID = "s_ID";
            public const string UserFullName = "s_UserFullName";
            public const string UserName = "s_UserName";
            public const string UserPassword = "s_UserPassword";
            public const string Telephone = "s_Telephone";
            public const string Email = "s_Email";
            public const string Job = "s_Job";
            public const string Reason = "s_Reason";
            public const string OtherInfo = "s_OtherInfo";
            public const string UserPage = "s_UserPage";
            public const string IsApproved = "s_IsApproved";

		}
		#endregion		
		
		#region Properties
	
		public virtual int ID
	    {
			get
	        {
				return base.Getint(ColumnNames.ID);
			}
			set
	        {
				base.Setint(ColumnNames.ID, value);
			}
		}

		public virtual string UserFullName
	    {
			get
	        {
				return base.Getstring(ColumnNames.UserFullName);
			}
			set
	        {
				base.Setstring(ColumnNames.UserFullName, value);
			}
		}

		public virtual string UserName
	    {
			get
	        {
				return base.Getstring(ColumnNames.UserName);
			}
			set
	        {
				base.Setstring(ColumnNames.UserName, value);
			}
		}

		public virtual string UserPassword
	    {
			get
	        {
				return base.Getstring(ColumnNames.UserPassword);
			}
			set
	        {
				base.Setstring(ColumnNames.UserPassword, value);
			}
		}

		public virtual string Telephone
	    {
			get
	        {
				return base.Getstring(ColumnNames.Telephone);
			}
			set
	        {
				base.Setstring(ColumnNames.Telephone, value);
			}
		}

		public virtual string Email
	    {
			get
	        {
				return base.Getstring(ColumnNames.Email);
			}
			set
	        {
				base.Setstring(ColumnNames.Email, value);
			}
		}

		public virtual string Job
	    {
			get
	        {
				return base.Getstring(ColumnNames.Job);
			}
			set
	        {
				base.Setstring(ColumnNames.Job, value);
			}
		}

		public virtual string Reason
	    {
			get
	        {
				return base.Getstring(ColumnNames.Reason);
			}
			set
	        {
				base.Setstring(ColumnNames.Reason, value);
			}
		}

		public virtual string OtherInfo
	    {
			get
	        {
				return base.Getstring(ColumnNames.OtherInfo);
			}
			set
	        {
				base.Setstring(ColumnNames.OtherInfo, value);
			}
		}

		public virtual string UserPage
	    {
			get
	        {
				return base.Getstring(ColumnNames.UserPage);
			}
			set
	        {
				base.Setstring(ColumnNames.UserPage, value);
			}
		}

		public virtual bool IsApproved
	    {
			get
	        {
				return base.Getbool(ColumnNames.IsApproved);
			}
			set
	        {
				base.Setbool(ColumnNames.IsApproved, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ID) ? string.Empty : base.GetintAsString(ColumnNames.ID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ID);
				else
					this.ID = base.SetintAsString(ColumnNames.ID, value);
			}
		}

		public virtual string s_UserFullName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.UserFullName) ? string.Empty : base.GetstringAsString(ColumnNames.UserFullName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.UserFullName);
				else
					this.UserFullName = base.SetstringAsString(ColumnNames.UserFullName, value);
			}
		}

		public virtual string s_UserName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.UserName) ? string.Empty : base.GetstringAsString(ColumnNames.UserName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.UserName);
				else
					this.UserName = base.SetstringAsString(ColumnNames.UserName, value);
			}
		}

		public virtual string s_UserPassword
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.UserPassword) ? string.Empty : base.GetstringAsString(ColumnNames.UserPassword);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.UserPassword);
				else
					this.UserPassword = base.SetstringAsString(ColumnNames.UserPassword, value);
			}
		}

		public virtual string s_Telephone
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Telephone) ? string.Empty : base.GetstringAsString(ColumnNames.Telephone);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Telephone);
				else
					this.Telephone = base.SetstringAsString(ColumnNames.Telephone, value);
			}
		}

		public virtual string s_Email
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Email) ? string.Empty : base.GetstringAsString(ColumnNames.Email);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Email);
				else
					this.Email = base.SetstringAsString(ColumnNames.Email, value);
			}
		}

		public virtual string s_Job
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Job) ? string.Empty : base.GetstringAsString(ColumnNames.Job);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Job);
				else
					this.Job = base.SetstringAsString(ColumnNames.Job, value);
			}
		}

		public virtual string s_Reason
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Reason) ? string.Empty : base.GetstringAsString(ColumnNames.Reason);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Reason);
				else
					this.Reason = base.SetstringAsString(ColumnNames.Reason, value);
			}
		}

		public virtual string s_OtherInfo
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.OtherInfo) ? string.Empty : base.GetstringAsString(ColumnNames.OtherInfo);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.OtherInfo);
				else
					this.OtherInfo = base.SetstringAsString(ColumnNames.OtherInfo, value);
			}
		}

		public virtual string s_UserPage
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.UserPage) ? string.Empty : base.GetstringAsString(ColumnNames.UserPage);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.UserPage);
				else
					this.UserPage = base.SetstringAsString(ColumnNames.UserPage, value);
			}
		}

		public virtual string s_IsApproved
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.IsApproved) ? string.Empty : base.GetboolAsString(ColumnNames.IsApproved);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.IsApproved);
				else
					this.IsApproved = base.SetboolAsString(ColumnNames.IsApproved, value);
			}
		}


		#endregion		
	
		#region Where Clause
		public class WhereClause
		{
			public WhereClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffWhereParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffWhereParameter(this);
					}

					return _tearOff;
				}
			}

			#region WhereParameter TearOff's
			public class TearOffWhereParameter
			{
				public TearOffWhereParameter(WhereClause clause)
				{
					this._clause = clause;
				}
				
				
				public WhereParameter ID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ID, Parameters.ID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter UserFullName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.UserFullName, Parameters.UserFullName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter UserName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.UserName, Parameters.UserName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter UserPassword
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.UserPassword, Parameters.UserPassword);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Telephone
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Telephone, Parameters.Telephone);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Email
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Email, Parameters.Email);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Job
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Job, Parameters.Job);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Reason
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Reason, Parameters.Reason);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter OtherInfo
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.OtherInfo, Parameters.OtherInfo);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter UserPage
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.UserPage, Parameters.UserPage);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter IsApproved
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.IsApproved, Parameters.IsApproved);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter ID
		    {
				get
		        {
					if(_ID_W == null)
	        	    {
						_ID_W = TearOff.ID;
					}
					return _ID_W;
				}
			}

			public WhereParameter UserFullName
		    {
				get
		        {
					if(_UserFullName_W == null)
	        	    {
						_UserFullName_W = TearOff.UserFullName;
					}
					return _UserFullName_W;
				}
			}

			public WhereParameter UserName
		    {
				get
		        {
					if(_UserName_W == null)
	        	    {
						_UserName_W = TearOff.UserName;
					}
					return _UserName_W;
				}
			}

			public WhereParameter UserPassword
		    {
				get
		        {
					if(_UserPassword_W == null)
	        	    {
						_UserPassword_W = TearOff.UserPassword;
					}
					return _UserPassword_W;
				}
			}

			public WhereParameter Telephone
		    {
				get
		        {
					if(_Telephone_W == null)
	        	    {
						_Telephone_W = TearOff.Telephone;
					}
					return _Telephone_W;
				}
			}

			public WhereParameter Email
		    {
				get
		        {
					if(_Email_W == null)
	        	    {
						_Email_W = TearOff.Email;
					}
					return _Email_W;
				}
			}

			public WhereParameter Job
		    {
				get
		        {
					if(_Job_W == null)
	        	    {
						_Job_W = TearOff.Job;
					}
					return _Job_W;
				}
			}

			public WhereParameter Reason
		    {
				get
		        {
					if(_Reason_W == null)
	        	    {
						_Reason_W = TearOff.Reason;
					}
					return _Reason_W;
				}
			}

			public WhereParameter OtherInfo
		    {
				get
		        {
					if(_OtherInfo_W == null)
	        	    {
						_OtherInfo_W = TearOff.OtherInfo;
					}
					return _OtherInfo_W;
				}
			}

			public WhereParameter UserPage
		    {
				get
		        {
					if(_UserPage_W == null)
	        	    {
						_UserPage_W = TearOff.UserPage;
					}
					return _UserPage_W;
				}
			}

			public WhereParameter IsApproved
		    {
				get
		        {
					if(_IsApproved_W == null)
	        	    {
						_IsApproved_W = TearOff.IsApproved;
					}
					return _IsApproved_W;
				}
			}

			private WhereParameter _ID_W = null;
			private WhereParameter _UserFullName_W = null;
			private WhereParameter _UserName_W = null;
			private WhereParameter _UserPassword_W = null;
			private WhereParameter _Telephone_W = null;
			private WhereParameter _Email_W = null;
			private WhereParameter _Job_W = null;
			private WhereParameter _Reason_W = null;
			private WhereParameter _OtherInfo_W = null;
			private WhereParameter _UserPage_W = null;
			private WhereParameter _IsApproved_W = null;

			public void WhereClauseReset()
			{
				_ID_W = null;
				_UserFullName_W = null;
				_UserName_W = null;
				_UserPassword_W = null;
				_Telephone_W = null;
				_Email_W = null;
				_Job_W = null;
				_Reason_W = null;
				_OtherInfo_W = null;
				_UserPage_W = null;
				_IsApproved_W = null;

				this._entity.Query.FlushWhereParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffWhereParameter _tearOff;
			
		}
	
		public WhereClause Where
		{
			get
			{
				if(_whereClause == null)
				{
					_whereClause = new WhereClause(this);
				}
		
				return _whereClause;
			}
		}
		
		private WhereClause _whereClause = null;	
		#endregion
	
		#region Aggregate Clause
		public class AggregateClause
		{
			public AggregateClause(BusinessEntity entity)
			{
				this._entity = entity;
			}
			
			public TearOffAggregateParameter TearOff
			{
				get
				{
					if(_tearOff == null)
					{
						_tearOff = new TearOffAggregateParameter(this);
					}

					return _tearOff;
				}
			}

			#region AggregateParameter TearOff's
			public class TearOffAggregateParameter
			{
				public TearOffAggregateParameter(AggregateClause clause)
				{
					this._clause = clause;
				}
				
				
				public AggregateParameter ID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ID, Parameters.ID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter UserFullName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.UserFullName, Parameters.UserFullName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter UserName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.UserName, Parameters.UserName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter UserPassword
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.UserPassword, Parameters.UserPassword);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Telephone
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Telephone, Parameters.Telephone);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Email
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Email, Parameters.Email);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Job
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Job, Parameters.Job);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Reason
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Reason, Parameters.Reason);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter OtherInfo
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.OtherInfo, Parameters.OtherInfo);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter UserPage
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.UserPage, Parameters.UserPage);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter IsApproved
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.IsApproved, Parameters.IsApproved);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter ID
		    {
				get
		        {
					if(_ID_W == null)
	        	    {
						_ID_W = TearOff.ID;
					}
					return _ID_W;
				}
			}

			public AggregateParameter UserFullName
		    {
				get
		        {
					if(_UserFullName_W == null)
	        	    {
						_UserFullName_W = TearOff.UserFullName;
					}
					return _UserFullName_W;
				}
			}

			public AggregateParameter UserName
		    {
				get
		        {
					if(_UserName_W == null)
	        	    {
						_UserName_W = TearOff.UserName;
					}
					return _UserName_W;
				}
			}

			public AggregateParameter UserPassword
		    {
				get
		        {
					if(_UserPassword_W == null)
	        	    {
						_UserPassword_W = TearOff.UserPassword;
					}
					return _UserPassword_W;
				}
			}

			public AggregateParameter Telephone
		    {
				get
		        {
					if(_Telephone_W == null)
	        	    {
						_Telephone_W = TearOff.Telephone;
					}
					return _Telephone_W;
				}
			}

			public AggregateParameter Email
		    {
				get
		        {
					if(_Email_W == null)
	        	    {
						_Email_W = TearOff.Email;
					}
					return _Email_W;
				}
			}

			public AggregateParameter Job
		    {
				get
		        {
					if(_Job_W == null)
	        	    {
						_Job_W = TearOff.Job;
					}
					return _Job_W;
				}
			}

			public AggregateParameter Reason
		    {
				get
		        {
					if(_Reason_W == null)
	        	    {
						_Reason_W = TearOff.Reason;
					}
					return _Reason_W;
				}
			}

			public AggregateParameter OtherInfo
		    {
				get
		        {
					if(_OtherInfo_W == null)
	        	    {
						_OtherInfo_W = TearOff.OtherInfo;
					}
					return _OtherInfo_W;
				}
			}

			public AggregateParameter UserPage
		    {
				get
		        {
					if(_UserPage_W == null)
	        	    {
						_UserPage_W = TearOff.UserPage;
					}
					return _UserPage_W;
				}
			}

			public AggregateParameter IsApproved
		    {
				get
		        {
					if(_IsApproved_W == null)
	        	    {
						_IsApproved_W = TearOff.IsApproved;
					}
					return _IsApproved_W;
				}
			}

			private AggregateParameter _ID_W = null;
			private AggregateParameter _UserFullName_W = null;
			private AggregateParameter _UserName_W = null;
			private AggregateParameter _UserPassword_W = null;
			private AggregateParameter _Telephone_W = null;
			private AggregateParameter _Email_W = null;
			private AggregateParameter _Job_W = null;
			private AggregateParameter _Reason_W = null;
			private AggregateParameter _OtherInfo_W = null;
			private AggregateParameter _UserPage_W = null;
			private AggregateParameter _IsApproved_W = null;

			public void AggregateClauseReset()
			{
				_ID_W = null;
				_UserFullName_W = null;
				_UserName_W = null;
				_UserPassword_W = null;
				_Telephone_W = null;
				_Email_W = null;
				_Job_W = null;
				_Reason_W = null;
				_OtherInfo_W = null;
				_UserPage_W = null;
				_IsApproved_W = null;

				this._entity.Query.FlushAggregateParameters();

			}
	
			private BusinessEntity _entity;
			private TearOffAggregateParameter _tearOff;
			
		}
	
		public AggregateClause Aggregate
		{
			get
			{
				if(_aggregateClause == null)
				{
					_aggregateClause = new AggregateClause(this);
				}
		
				return _aggregateClause;
			}
		}
		
		private AggregateClause _aggregateClause = null;	
		#endregion
	
		protected override IDbCommand GetInsertCommand() 
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_SiteUsersInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.ID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_SiteUsersUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_SiteUsersDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.ID);
			p.SourceColumn = ColumnNames.ID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.ID);
			p.SourceColumn = ColumnNames.ID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.UserFullName);
			p.SourceColumn = ColumnNames.UserFullName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.UserName);
			p.SourceColumn = ColumnNames.UserName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.UserPassword);
			p.SourceColumn = ColumnNames.UserPassword;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Telephone);
			p.SourceColumn = ColumnNames.Telephone;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Email);
			p.SourceColumn = ColumnNames.Email;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Job);
			p.SourceColumn = ColumnNames.Job;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Reason);
			p.SourceColumn = ColumnNames.Reason;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.OtherInfo);
			p.SourceColumn = ColumnNames.OtherInfo;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.UserPage);
			p.SourceColumn = ColumnNames.UserPage;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.IsApproved);
			p.SourceColumn = ColumnNames.IsApproved;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
