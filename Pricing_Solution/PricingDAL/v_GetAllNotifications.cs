/*
'===============================================================================
'  Generated From - CSharp_dOOdads_View.vbgen
'
'  The supporting base class SqlClientEntity is in the 
'  Architecture directory in "dOOdads".
'===============================================================================
*/

// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Specialized;

using MyGeneration.dOOdads;

namespace View
{
	public class _v_GetAllNotifications : SqlClientEntity
	{
		public _v_GetAllNotifications()
		{
			this.QuerySource = "v_GetAllNotifications";
			this.MappingName = "v_GetAllNotifications";
		}	
	
		//=================================================================
		//  	public Function LoadAll() As Boolean
		//=================================================================
		//  Loads all of the records in the database, and sets the currentRow to the first row
		//=================================================================
		public bool LoadAll() 
		{
			return base.Query.Load();
		}
		
		public override void FlushData()
		{
			this._whereClause = null;
			this._aggregateClause = null;
			base.FlushData();
		}
	
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter NotificationID
			{
				get
				{
					return new SqlParameter("@NotificationID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter NotifierID
			{
				get
				{
					return new SqlParameter("@NotifierID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter NotificationText
			{
				get
				{
					return new SqlParameter("@NotificationText", SqlDbType.NVarChar, 2500);
				}
			}
			
			public static SqlParameter FilePath
			{
				get
				{
					return new SqlParameter("@FilePath", SqlDbType.NVarChar, 250);
				}
			}
			
			public static SqlParameter Subject
			{
				get
				{
					return new SqlParameter("@Subject", SqlDbType.NVarChar, 250);
				}
			}
			
			public static SqlParameter CompanyID
			{
				get
				{
					return new SqlParameter("@CompanyID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter NotifyDate
			{
				get
				{
					return new SqlParameter("@NotifyDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter Expr1
			{
				get
				{
					return new SqlParameter("@Expr1", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CompNameEng
			{
				get
				{
					return new SqlParameter("@CompNameEng", SqlDbType.NVarChar, 255);
				}
			}
			
			public static SqlParameter CompNameAr
			{
				get
				{
					return new SqlParameter("@CompNameAr", SqlDbType.NVarChar, 255);
				}
			}
			
			public static SqlParameter Comp_Code
			{
				get
				{
					return new SqlParameter("@Comp_Code", SqlDbType.NVarChar, 255);
				}
			}
			
		}
		#endregion	
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string NotificationID = "NotificationID";
            public const string NotifierID = "NotifierID";
            public const string NotificationText = "NotificationText";
            public const string FilePath = "FilePath";
            public const string Subject = "Subject";
            public const string CompanyID = "CompanyID";
            public const string NotifyDate = "NotifyDate";
            public const string Expr1 = "Expr1";
            public const string CompNameEng = "CompNameEng";
            public const string CompNameAr = "CompNameAr";
            public const string Comp_Code = "Comp_Code";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[NotificationID] = _v_GetAllNotifications.PropertyNames.NotificationID;
					ht[NotifierID] = _v_GetAllNotifications.PropertyNames.NotifierID;
					ht[NotificationText] = _v_GetAllNotifications.PropertyNames.NotificationText;
					ht[FilePath] = _v_GetAllNotifications.PropertyNames.FilePath;
					ht[Subject] = _v_GetAllNotifications.PropertyNames.Subject;
					ht[CompanyID] = _v_GetAllNotifications.PropertyNames.CompanyID;
					ht[NotifyDate] = _v_GetAllNotifications.PropertyNames.NotifyDate;
					ht[Expr1] = _v_GetAllNotifications.PropertyNames.Expr1;
					ht[CompNameEng] = _v_GetAllNotifications.PropertyNames.CompNameEng;
					ht[CompNameAr] = _v_GetAllNotifications.PropertyNames.CompNameAr;
					ht[Comp_Code] = _v_GetAllNotifications.PropertyNames.Comp_Code;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string NotificationID = "NotificationID";
            public const string NotifierID = "NotifierID";
            public const string NotificationText = "NotificationText";
            public const string FilePath = "FilePath";
            public const string Subject = "Subject";
            public const string CompanyID = "CompanyID";
            public const string NotifyDate = "NotifyDate";
            public const string Expr1 = "Expr1";
            public const string CompNameEng = "CompNameEng";
            public const string CompNameAr = "CompNameAr";
            public const string Comp_Code = "Comp_Code";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[NotificationID] = _v_GetAllNotifications.ColumnNames.NotificationID;
					ht[NotifierID] = _v_GetAllNotifications.ColumnNames.NotifierID;
					ht[NotificationText] = _v_GetAllNotifications.ColumnNames.NotificationText;
					ht[FilePath] = _v_GetAllNotifications.ColumnNames.FilePath;
					ht[Subject] = _v_GetAllNotifications.ColumnNames.Subject;
					ht[CompanyID] = _v_GetAllNotifications.ColumnNames.CompanyID;
					ht[NotifyDate] = _v_GetAllNotifications.ColumnNames.NotifyDate;
					ht[Expr1] = _v_GetAllNotifications.ColumnNames.Expr1;
					ht[CompNameEng] = _v_GetAllNotifications.ColumnNames.CompNameEng;
					ht[CompNameAr] = _v_GetAllNotifications.ColumnNames.CompNameAr;
					ht[Comp_Code] = _v_GetAllNotifications.ColumnNames.Comp_Code;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string NotificationID = "s_NotificationID";
            public const string NotifierID = "s_NotifierID";
            public const string NotificationText = "s_NotificationText";
            public const string FilePath = "s_FilePath";
            public const string Subject = "s_Subject";
            public const string CompanyID = "s_CompanyID";
            public const string NotifyDate = "s_NotifyDate";
            public const string Expr1 = "s_Expr1";
            public const string CompNameEng = "s_CompNameEng";
            public const string CompNameAr = "s_CompNameAr";
            public const string Comp_Code = "s_Comp_Code";

		}
		#endregion	
		
		#region Properties
			public virtual int NotificationID
	    {
			get
	        {
				return base.Getint(ColumnNames.NotificationID);
			}
			set
	        {
				base.Setint(ColumnNames.NotificationID, value);
			}
		}

		public virtual int NotifierID
	    {
			get
	        {
				return base.Getint(ColumnNames.NotifierID);
			}
			set
	        {
				base.Setint(ColumnNames.NotifierID, value);
			}
		}

		public virtual string NotificationText
	    {
			get
	        {
				return base.Getstring(ColumnNames.NotificationText);
			}
			set
	        {
				base.Setstring(ColumnNames.NotificationText, value);
			}
		}

		public virtual string FilePath
	    {
			get
	        {
				return base.Getstring(ColumnNames.FilePath);
			}
			set
	        {
				base.Setstring(ColumnNames.FilePath, value);
			}
		}

		public virtual string Subject
	    {
			get
	        {
				return base.Getstring(ColumnNames.Subject);
			}
			set
	        {
				base.Setstring(ColumnNames.Subject, value);
			}
		}

		public virtual int CompanyID
	    {
			get
	        {
				return base.Getint(ColumnNames.CompanyID);
			}
			set
	        {
				base.Setint(ColumnNames.CompanyID, value);
			}
		}

		public virtual DateTime NotifyDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.NotifyDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.NotifyDate, value);
			}
		}

		public virtual int Expr1
	    {
			get
	        {
				return base.Getint(ColumnNames.Expr1);
			}
			set
	        {
				base.Setint(ColumnNames.Expr1, value);
			}
		}

		public virtual string CompNameEng
	    {
			get
	        {
				return base.Getstring(ColumnNames.CompNameEng);
			}
			set
	        {
				base.Setstring(ColumnNames.CompNameEng, value);
			}
		}

		public virtual string CompNameAr
	    {
			get
	        {
				return base.Getstring(ColumnNames.CompNameAr);
			}
			set
	        {
				base.Setstring(ColumnNames.CompNameAr, value);
			}
		}

		public virtual string Comp_Code
	    {
			get
	        {
				return base.Getstring(ColumnNames.Comp_Code);
			}
			set
	        {
				base.Setstring(ColumnNames.Comp_Code, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_NotificationID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.NotificationID) ? string.Empty : base.GetintAsString(ColumnNames.NotificationID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.NotificationID);
				else
					this.NotificationID = base.SetintAsString(ColumnNames.NotificationID, value);
			}
		}

		public virtual string s_NotifierID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.NotifierID) ? string.Empty : base.GetintAsString(ColumnNames.NotifierID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.NotifierID);
				else
					this.NotifierID = base.SetintAsString(ColumnNames.NotifierID, value);
			}
		}

		public virtual string s_NotificationText
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.NotificationText) ? string.Empty : base.GetstringAsString(ColumnNames.NotificationText);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.NotificationText);
				else
					this.NotificationText = base.SetstringAsString(ColumnNames.NotificationText, value);
			}
		}

		public virtual string s_FilePath
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.FilePath) ? string.Empty : base.GetstringAsString(ColumnNames.FilePath);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.FilePath);
				else
					this.FilePath = base.SetstringAsString(ColumnNames.FilePath, value);
			}
		}

		public virtual string s_Subject
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Subject) ? string.Empty : base.GetstringAsString(ColumnNames.Subject);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Subject);
				else
					this.Subject = base.SetstringAsString(ColumnNames.Subject, value);
			}
		}

		public virtual string s_CompanyID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CompanyID) ? string.Empty : base.GetintAsString(ColumnNames.CompanyID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CompanyID);
				else
					this.CompanyID = base.SetintAsString(ColumnNames.CompanyID, value);
			}
		}

		public virtual string s_NotifyDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.NotifyDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.NotifyDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.NotifyDate);
				else
					this.NotifyDate = base.SetDateTimeAsString(ColumnNames.NotifyDate, value);
			}
		}

		public virtual string s_Expr1
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Expr1) ? string.Empty : base.GetintAsString(ColumnNames.Expr1);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Expr1);
				else
					this.Expr1 = base.SetintAsString(ColumnNames.Expr1, value);
			}
		}

		public virtual string s_CompNameEng
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CompNameEng) ? string.Empty : base.GetstringAsString(ColumnNames.CompNameEng);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CompNameEng);
				else
					this.CompNameEng = base.SetstringAsString(ColumnNames.CompNameEng, value);
			}
		}

		public virtual string s_CompNameAr
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CompNameAr) ? string.Empty : base.GetstringAsString(ColumnNames.CompNameAr);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CompNameAr);
				else
					this.CompNameAr = base.SetstringAsString(ColumnNames.CompNameAr, value);
			}
		}

		public virtual string s_Comp_Code
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Comp_Code) ? string.Empty : base.GetstringAsString(ColumnNames.Comp_Code);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Comp_Code);
				else
					this.Comp_Code = base.SetstringAsString(ColumnNames.Comp_Code, value);
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
				
				
				public WhereParameter NotificationID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.NotificationID, Parameters.NotificationID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter NotifierID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.NotifierID, Parameters.NotifierID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter NotificationText
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.NotificationText, Parameters.NotificationText);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter FilePath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.FilePath, Parameters.FilePath);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Subject
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Subject, Parameters.Subject);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CompanyID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CompanyID, Parameters.CompanyID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter NotifyDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.NotifyDate, Parameters.NotifyDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Expr1
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Expr1, Parameters.Expr1);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CompNameEng
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CompNameEng, Parameters.CompNameEng);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CompNameAr
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CompNameAr, Parameters.CompNameAr);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Comp_Code
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Comp_Code, Parameters.Comp_Code);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter NotificationID
		    {
				get
		        {
					if(_NotificationID_W == null)
	        	    {
						_NotificationID_W = TearOff.NotificationID;
					}
					return _NotificationID_W;
				}
			}

			public WhereParameter NotifierID
		    {
				get
		        {
					if(_NotifierID_W == null)
	        	    {
						_NotifierID_W = TearOff.NotifierID;
					}
					return _NotifierID_W;
				}
			}

			public WhereParameter NotificationText
		    {
				get
		        {
					if(_NotificationText_W == null)
	        	    {
						_NotificationText_W = TearOff.NotificationText;
					}
					return _NotificationText_W;
				}
			}

			public WhereParameter FilePath
		    {
				get
		        {
					if(_FilePath_W == null)
	        	    {
						_FilePath_W = TearOff.FilePath;
					}
					return _FilePath_W;
				}
			}

			public WhereParameter Subject
		    {
				get
		        {
					if(_Subject_W == null)
	        	    {
						_Subject_W = TearOff.Subject;
					}
					return _Subject_W;
				}
			}

			public WhereParameter CompanyID
		    {
				get
		        {
					if(_CompanyID_W == null)
	        	    {
						_CompanyID_W = TearOff.CompanyID;
					}
					return _CompanyID_W;
				}
			}

			public WhereParameter NotifyDate
		    {
				get
		        {
					if(_NotifyDate_W == null)
	        	    {
						_NotifyDate_W = TearOff.NotifyDate;
					}
					return _NotifyDate_W;
				}
			}

			public WhereParameter Expr1
		    {
				get
		        {
					if(_Expr1_W == null)
	        	    {
						_Expr1_W = TearOff.Expr1;
					}
					return _Expr1_W;
				}
			}

			public WhereParameter CompNameEng
		    {
				get
		        {
					if(_CompNameEng_W == null)
	        	    {
						_CompNameEng_W = TearOff.CompNameEng;
					}
					return _CompNameEng_W;
				}
			}

			public WhereParameter CompNameAr
		    {
				get
		        {
					if(_CompNameAr_W == null)
	        	    {
						_CompNameAr_W = TearOff.CompNameAr;
					}
					return _CompNameAr_W;
				}
			}

			public WhereParameter Comp_Code
		    {
				get
		        {
					if(_Comp_Code_W == null)
	        	    {
						_Comp_Code_W = TearOff.Comp_Code;
					}
					return _Comp_Code_W;
				}
			}

			private WhereParameter _NotificationID_W = null;
			private WhereParameter _NotifierID_W = null;
			private WhereParameter _NotificationText_W = null;
			private WhereParameter _FilePath_W = null;
			private WhereParameter _Subject_W = null;
			private WhereParameter _CompanyID_W = null;
			private WhereParameter _NotifyDate_W = null;
			private WhereParameter _Expr1_W = null;
			private WhereParameter _CompNameEng_W = null;
			private WhereParameter _CompNameAr_W = null;
			private WhereParameter _Comp_Code_W = null;

			public void WhereClauseReset()
			{
				_NotificationID_W = null;
				_NotifierID_W = null;
				_NotificationText_W = null;
				_FilePath_W = null;
				_Subject_W = null;
				_CompanyID_W = null;
				_NotifyDate_W = null;
				_Expr1_W = null;
				_CompNameEng_W = null;
				_CompNameAr_W = null;
				_Comp_Code_W = null;

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
				
				
				public AggregateParameter NotificationID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.NotificationID, Parameters.NotificationID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter NotifierID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.NotifierID, Parameters.NotifierID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter NotificationText
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.NotificationText, Parameters.NotificationText);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter FilePath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.FilePath, Parameters.FilePath);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Subject
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Subject, Parameters.Subject);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CompanyID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CompanyID, Parameters.CompanyID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter NotifyDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.NotifyDate, Parameters.NotifyDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Expr1
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Expr1, Parameters.Expr1);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CompNameEng
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CompNameEng, Parameters.CompNameEng);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CompNameAr
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CompNameAr, Parameters.CompNameAr);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Comp_Code
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Comp_Code, Parameters.Comp_Code);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter NotificationID
		    {
				get
		        {
					if(_NotificationID_W == null)
	        	    {
						_NotificationID_W = TearOff.NotificationID;
					}
					return _NotificationID_W;
				}
			}

			public AggregateParameter NotifierID
		    {
				get
		        {
					if(_NotifierID_W == null)
	        	    {
						_NotifierID_W = TearOff.NotifierID;
					}
					return _NotifierID_W;
				}
			}

			public AggregateParameter NotificationText
		    {
				get
		        {
					if(_NotificationText_W == null)
	        	    {
						_NotificationText_W = TearOff.NotificationText;
					}
					return _NotificationText_W;
				}
			}

			public AggregateParameter FilePath
		    {
				get
		        {
					if(_FilePath_W == null)
	        	    {
						_FilePath_W = TearOff.FilePath;
					}
					return _FilePath_W;
				}
			}

			public AggregateParameter Subject
		    {
				get
		        {
					if(_Subject_W == null)
	        	    {
						_Subject_W = TearOff.Subject;
					}
					return _Subject_W;
				}
			}

			public AggregateParameter CompanyID
		    {
				get
		        {
					if(_CompanyID_W == null)
	        	    {
						_CompanyID_W = TearOff.CompanyID;
					}
					return _CompanyID_W;
				}
			}

			public AggregateParameter NotifyDate
		    {
				get
		        {
					if(_NotifyDate_W == null)
	        	    {
						_NotifyDate_W = TearOff.NotifyDate;
					}
					return _NotifyDate_W;
				}
			}

			public AggregateParameter Expr1
		    {
				get
		        {
					if(_Expr1_W == null)
	        	    {
						_Expr1_W = TearOff.Expr1;
					}
					return _Expr1_W;
				}
			}

			public AggregateParameter CompNameEng
		    {
				get
		        {
					if(_CompNameEng_W == null)
	        	    {
						_CompNameEng_W = TearOff.CompNameEng;
					}
					return _CompNameEng_W;
				}
			}

			public AggregateParameter CompNameAr
		    {
				get
		        {
					if(_CompNameAr_W == null)
	        	    {
						_CompNameAr_W = TearOff.CompNameAr;
					}
					return _CompNameAr_W;
				}
			}

			public AggregateParameter Comp_Code
		    {
				get
		        {
					if(_Comp_Code_W == null)
	        	    {
						_Comp_Code_W = TearOff.Comp_Code;
					}
					return _Comp_Code_W;
				}
			}

			private AggregateParameter _NotificationID_W = null;
			private AggregateParameter _NotifierID_W = null;
			private AggregateParameter _NotificationText_W = null;
			private AggregateParameter _FilePath_W = null;
			private AggregateParameter _Subject_W = null;
			private AggregateParameter _CompanyID_W = null;
			private AggregateParameter _NotifyDate_W = null;
			private AggregateParameter _Expr1_W = null;
			private AggregateParameter _CompNameEng_W = null;
			private AggregateParameter _CompNameAr_W = null;
			private AggregateParameter _Comp_Code_W = null;

			public void AggregateClauseReset()
			{
				_NotificationID_W = null;
				_NotifierID_W = null;
				_NotificationText_W = null;
				_FilePath_W = null;
				_Subject_W = null;
				_CompanyID_W = null;
				_NotifyDate_W = null;
				_Expr1_W = null;
				_CompNameEng_W = null;
				_CompNameAr_W = null;
				_Comp_Code_W = null;

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
			return null;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
			return null;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
			return null;
		}
	}
}
