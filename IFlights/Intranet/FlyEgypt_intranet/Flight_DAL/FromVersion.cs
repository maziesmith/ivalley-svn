
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

namespace Flight_DAL
{
	public abstract class _FromVersion : SqlClientEntity
	{
		public _FromVersion()
		{
			this.QuerySource = "FromVersion";
			this.MappingName = "FromVersion";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_FromVersionLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int FromVersionID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.FromVersionID, FromVersionID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_FromVersionLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter FromVersionID
			{
				get
				{
					return new SqlParameter("@FromVersionID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ManualFromID
			{
				get
				{
					return new SqlParameter("@ManualFromID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Title
			{
				get
				{
					return new SqlParameter("@Title", SqlDbType.NVarChar, 300);
				}
			}
			
			public static SqlParameter Path
			{
				get
				{
					return new SqlParameter("@Path", SqlDbType.NVarChar, 300);
				}
			}
			
			public static SqlParameter CreatedBy
			{
				get
				{
					return new SqlParameter("@CreatedBy", SqlDbType.UniqueIdentifier, 0);
				}
			}
			
			public static SqlParameter CreatedDate
			{
				get
				{
					return new SqlParameter("@CreatedDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter UpdatedBy
			{
				get
				{
					return new SqlParameter("@UpdatedBy", SqlDbType.UniqueIdentifier, 0);
				}
			}
			
			public static SqlParameter LastUpdatedDate
			{
				get
				{
					return new SqlParameter("@LastUpdatedDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter IssueNumber
			{
				get
				{
					return new SqlParameter("@IssueNumber", SqlDbType.NVarChar, 10);
				}
			}
			
			public static SqlParameter IssueDate
			{
				get
				{
					return new SqlParameter("@IssueDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter RevisionNumber
			{
				get
				{
					return new SqlParameter("@RevisionNumber", SqlDbType.NVarChar, 10);
				}
			}
			
			public static SqlParameter RevisionDate
			{
				get
				{
					return new SqlParameter("@RevisionDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter Notes
			{
				get
				{
					return new SqlParameter("@Notes", SqlDbType.NVarChar, 1073741823);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string FromVersionID = "FromVersionID";
            public const string ManualFromID = "ManualFromID";
            public const string Title = "Title";
            public const string Path = "Path";
            public const string CreatedBy = "CreatedBy";
            public const string CreatedDate = "CreatedDate";
            public const string UpdatedBy = "UpdatedBy";
            public const string LastUpdatedDate = "LastUpdatedDate";
            public const string IssueNumber = "IssueNumber";
            public const string IssueDate = "IssueDate";
            public const string RevisionNumber = "RevisionNumber";
            public const string RevisionDate = "RevisionDate";
            public const string Notes = "Notes";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[FromVersionID] = _FromVersion.PropertyNames.FromVersionID;
					ht[ManualFromID] = _FromVersion.PropertyNames.ManualFromID;
					ht[Title] = _FromVersion.PropertyNames.Title;
					ht[Path] = _FromVersion.PropertyNames.Path;
					ht[CreatedBy] = _FromVersion.PropertyNames.CreatedBy;
					ht[CreatedDate] = _FromVersion.PropertyNames.CreatedDate;
					ht[UpdatedBy] = _FromVersion.PropertyNames.UpdatedBy;
					ht[LastUpdatedDate] = _FromVersion.PropertyNames.LastUpdatedDate;
					ht[IssueNumber] = _FromVersion.PropertyNames.IssueNumber;
					ht[IssueDate] = _FromVersion.PropertyNames.IssueDate;
					ht[RevisionNumber] = _FromVersion.PropertyNames.RevisionNumber;
					ht[RevisionDate] = _FromVersion.PropertyNames.RevisionDate;
					ht[Notes] = _FromVersion.PropertyNames.Notes;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string FromVersionID = "FromVersionID";
            public const string ManualFromID = "ManualFromID";
            public const string Title = "Title";
            public const string Path = "Path";
            public const string CreatedBy = "CreatedBy";
            public const string CreatedDate = "CreatedDate";
            public const string UpdatedBy = "UpdatedBy";
            public const string LastUpdatedDate = "LastUpdatedDate";
            public const string IssueNumber = "IssueNumber";
            public const string IssueDate = "IssueDate";
            public const string RevisionNumber = "RevisionNumber";
            public const string RevisionDate = "RevisionDate";
            public const string Notes = "Notes";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[FromVersionID] = _FromVersion.ColumnNames.FromVersionID;
					ht[ManualFromID] = _FromVersion.ColumnNames.ManualFromID;
					ht[Title] = _FromVersion.ColumnNames.Title;
					ht[Path] = _FromVersion.ColumnNames.Path;
					ht[CreatedBy] = _FromVersion.ColumnNames.CreatedBy;
					ht[CreatedDate] = _FromVersion.ColumnNames.CreatedDate;
					ht[UpdatedBy] = _FromVersion.ColumnNames.UpdatedBy;
					ht[LastUpdatedDate] = _FromVersion.ColumnNames.LastUpdatedDate;
					ht[IssueNumber] = _FromVersion.ColumnNames.IssueNumber;
					ht[IssueDate] = _FromVersion.ColumnNames.IssueDate;
					ht[RevisionNumber] = _FromVersion.ColumnNames.RevisionNumber;
					ht[RevisionDate] = _FromVersion.ColumnNames.RevisionDate;
					ht[Notes] = _FromVersion.ColumnNames.Notes;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string FromVersionID = "s_FromVersionID";
            public const string ManualFromID = "s_ManualFromID";
            public const string Title = "s_Title";
            public const string Path = "s_Path";
            public const string CreatedBy = "s_CreatedBy";
            public const string CreatedDate = "s_CreatedDate";
            public const string UpdatedBy = "s_UpdatedBy";
            public const string LastUpdatedDate = "s_LastUpdatedDate";
            public const string IssueNumber = "s_IssueNumber";
            public const string IssueDate = "s_IssueDate";
            public const string RevisionNumber = "s_RevisionNumber";
            public const string RevisionDate = "s_RevisionDate";
            public const string Notes = "s_Notes";

		}
		#endregion		
		
		#region Properties
	
		public virtual int FromVersionID
	    {
			get
	        {
				return base.Getint(ColumnNames.FromVersionID);
			}
			set
	        {
				base.Setint(ColumnNames.FromVersionID, value);
			}
		}

		public virtual int ManualFromID
	    {
			get
	        {
				return base.Getint(ColumnNames.ManualFromID);
			}
			set
	        {
				base.Setint(ColumnNames.ManualFromID, value);
			}
		}

		public virtual string Title
	    {
			get
	        {
				return base.Getstring(ColumnNames.Title);
			}
			set
	        {
				base.Setstring(ColumnNames.Title, value);
			}
		}

		public virtual string Path
	    {
			get
	        {
				return base.Getstring(ColumnNames.Path);
			}
			set
	        {
				base.Setstring(ColumnNames.Path, value);
			}
		}

		public virtual Guid CreatedBy
	    {
			get
	        {
				return base.GetGuid(ColumnNames.CreatedBy);
			}
			set
	        {
				base.SetGuid(ColumnNames.CreatedBy, value);
			}
		}

		public virtual DateTime CreatedDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.CreatedDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.CreatedDate, value);
			}
		}

		public virtual Guid UpdatedBy
	    {
			get
	        {
				return base.GetGuid(ColumnNames.UpdatedBy);
			}
			set
	        {
				base.SetGuid(ColumnNames.UpdatedBy, value);
			}
		}

		public virtual DateTime LastUpdatedDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.LastUpdatedDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.LastUpdatedDate, value);
			}
		}

		public virtual string IssueNumber
	    {
			get
	        {
				return base.Getstring(ColumnNames.IssueNumber);
			}
			set
	        {
				base.Setstring(ColumnNames.IssueNumber, value);
			}
		}

		public virtual DateTime IssueDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.IssueDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.IssueDate, value);
			}
		}

		public virtual string RevisionNumber
	    {
			get
	        {
				return base.Getstring(ColumnNames.RevisionNumber);
			}
			set
	        {
				base.Setstring(ColumnNames.RevisionNumber, value);
			}
		}

		public virtual DateTime RevisionDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.RevisionDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.RevisionDate, value);
			}
		}

		public virtual string Notes
	    {
			get
	        {
				return base.Getstring(ColumnNames.Notes);
			}
			set
	        {
				base.Setstring(ColumnNames.Notes, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_FromVersionID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.FromVersionID) ? string.Empty : base.GetintAsString(ColumnNames.FromVersionID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.FromVersionID);
				else
					this.FromVersionID = base.SetintAsString(ColumnNames.FromVersionID, value);
			}
		}

		public virtual string s_ManualFromID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ManualFromID) ? string.Empty : base.GetintAsString(ColumnNames.ManualFromID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ManualFromID);
				else
					this.ManualFromID = base.SetintAsString(ColumnNames.ManualFromID, value);
			}
		}

		public virtual string s_Title
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Title) ? string.Empty : base.GetstringAsString(ColumnNames.Title);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Title);
				else
					this.Title = base.SetstringAsString(ColumnNames.Title, value);
			}
		}

		public virtual string s_Path
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Path) ? string.Empty : base.GetstringAsString(ColumnNames.Path);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Path);
				else
					this.Path = base.SetstringAsString(ColumnNames.Path, value);
			}
		}

		public virtual string s_CreatedBy
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CreatedBy) ? string.Empty : base.GetGuidAsString(ColumnNames.CreatedBy);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CreatedBy);
				else
					this.CreatedBy = base.SetGuidAsString(ColumnNames.CreatedBy, value);
			}
		}

		public virtual string s_CreatedDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CreatedDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.CreatedDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CreatedDate);
				else
					this.CreatedDate = base.SetDateTimeAsString(ColumnNames.CreatedDate, value);
			}
		}

		public virtual string s_UpdatedBy
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.UpdatedBy) ? string.Empty : base.GetGuidAsString(ColumnNames.UpdatedBy);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.UpdatedBy);
				else
					this.UpdatedBy = base.SetGuidAsString(ColumnNames.UpdatedBy, value);
			}
		}

		public virtual string s_LastUpdatedDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.LastUpdatedDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.LastUpdatedDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.LastUpdatedDate);
				else
					this.LastUpdatedDate = base.SetDateTimeAsString(ColumnNames.LastUpdatedDate, value);
			}
		}

		public virtual string s_IssueNumber
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.IssueNumber) ? string.Empty : base.GetstringAsString(ColumnNames.IssueNumber);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.IssueNumber);
				else
					this.IssueNumber = base.SetstringAsString(ColumnNames.IssueNumber, value);
			}
		}

		public virtual string s_IssueDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.IssueDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.IssueDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.IssueDate);
				else
					this.IssueDate = base.SetDateTimeAsString(ColumnNames.IssueDate, value);
			}
		}

		public virtual string s_RevisionNumber
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.RevisionNumber) ? string.Empty : base.GetstringAsString(ColumnNames.RevisionNumber);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.RevisionNumber);
				else
					this.RevisionNumber = base.SetstringAsString(ColumnNames.RevisionNumber, value);
			}
		}

		public virtual string s_RevisionDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.RevisionDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.RevisionDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.RevisionDate);
				else
					this.RevisionDate = base.SetDateTimeAsString(ColumnNames.RevisionDate, value);
			}
		}

		public virtual string s_Notes
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Notes) ? string.Empty : base.GetstringAsString(ColumnNames.Notes);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Notes);
				else
					this.Notes = base.SetstringAsString(ColumnNames.Notes, value);
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
				
				
				public WhereParameter FromVersionID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.FromVersionID, Parameters.FromVersionID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ManualFromID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ManualFromID, Parameters.ManualFromID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Title
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Title, Parameters.Title);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Path
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Path, Parameters.Path);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CreatedBy
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CreatedBy, Parameters.CreatedBy);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CreatedDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CreatedDate, Parameters.CreatedDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter UpdatedBy
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.UpdatedBy, Parameters.UpdatedBy);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter LastUpdatedDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.LastUpdatedDate, Parameters.LastUpdatedDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter IssueNumber
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.IssueNumber, Parameters.IssueNumber);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter IssueDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.IssueDate, Parameters.IssueDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter RevisionNumber
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.RevisionNumber, Parameters.RevisionNumber);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter RevisionDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.RevisionDate, Parameters.RevisionDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Notes
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Notes, Parameters.Notes);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter FromVersionID
		    {
				get
		        {
					if(_FromVersionID_W == null)
	        	    {
						_FromVersionID_W = TearOff.FromVersionID;
					}
					return _FromVersionID_W;
				}
			}

			public WhereParameter ManualFromID
		    {
				get
		        {
					if(_ManualFromID_W == null)
	        	    {
						_ManualFromID_W = TearOff.ManualFromID;
					}
					return _ManualFromID_W;
				}
			}

			public WhereParameter Title
		    {
				get
		        {
					if(_Title_W == null)
	        	    {
						_Title_W = TearOff.Title;
					}
					return _Title_W;
				}
			}

			public WhereParameter Path
		    {
				get
		        {
					if(_Path_W == null)
	        	    {
						_Path_W = TearOff.Path;
					}
					return _Path_W;
				}
			}

			public WhereParameter CreatedBy
		    {
				get
		        {
					if(_CreatedBy_W == null)
	        	    {
						_CreatedBy_W = TearOff.CreatedBy;
					}
					return _CreatedBy_W;
				}
			}

			public WhereParameter CreatedDate
		    {
				get
		        {
					if(_CreatedDate_W == null)
	        	    {
						_CreatedDate_W = TearOff.CreatedDate;
					}
					return _CreatedDate_W;
				}
			}

			public WhereParameter UpdatedBy
		    {
				get
		        {
					if(_UpdatedBy_W == null)
	        	    {
						_UpdatedBy_W = TearOff.UpdatedBy;
					}
					return _UpdatedBy_W;
				}
			}

			public WhereParameter LastUpdatedDate
		    {
				get
		        {
					if(_LastUpdatedDate_W == null)
	        	    {
						_LastUpdatedDate_W = TearOff.LastUpdatedDate;
					}
					return _LastUpdatedDate_W;
				}
			}

			public WhereParameter IssueNumber
		    {
				get
		        {
					if(_IssueNumber_W == null)
	        	    {
						_IssueNumber_W = TearOff.IssueNumber;
					}
					return _IssueNumber_W;
				}
			}

			public WhereParameter IssueDate
		    {
				get
		        {
					if(_IssueDate_W == null)
	        	    {
						_IssueDate_W = TearOff.IssueDate;
					}
					return _IssueDate_W;
				}
			}

			public WhereParameter RevisionNumber
		    {
				get
		        {
					if(_RevisionNumber_W == null)
	        	    {
						_RevisionNumber_W = TearOff.RevisionNumber;
					}
					return _RevisionNumber_W;
				}
			}

			public WhereParameter RevisionDate
		    {
				get
		        {
					if(_RevisionDate_W == null)
	        	    {
						_RevisionDate_W = TearOff.RevisionDate;
					}
					return _RevisionDate_W;
				}
			}

			public WhereParameter Notes
		    {
				get
		        {
					if(_Notes_W == null)
	        	    {
						_Notes_W = TearOff.Notes;
					}
					return _Notes_W;
				}
			}

			private WhereParameter _FromVersionID_W = null;
			private WhereParameter _ManualFromID_W = null;
			private WhereParameter _Title_W = null;
			private WhereParameter _Path_W = null;
			private WhereParameter _CreatedBy_W = null;
			private WhereParameter _CreatedDate_W = null;
			private WhereParameter _UpdatedBy_W = null;
			private WhereParameter _LastUpdatedDate_W = null;
			private WhereParameter _IssueNumber_W = null;
			private WhereParameter _IssueDate_W = null;
			private WhereParameter _RevisionNumber_W = null;
			private WhereParameter _RevisionDate_W = null;
			private WhereParameter _Notes_W = null;

			public void WhereClauseReset()
			{
				_FromVersionID_W = null;
				_ManualFromID_W = null;
				_Title_W = null;
				_Path_W = null;
				_CreatedBy_W = null;
				_CreatedDate_W = null;
				_UpdatedBy_W = null;
				_LastUpdatedDate_W = null;
				_IssueNumber_W = null;
				_IssueDate_W = null;
				_RevisionNumber_W = null;
				_RevisionDate_W = null;
				_Notes_W = null;

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
				
				
				public AggregateParameter FromVersionID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.FromVersionID, Parameters.FromVersionID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ManualFromID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ManualFromID, Parameters.ManualFromID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Title
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Title, Parameters.Title);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Path
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Path, Parameters.Path);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CreatedBy
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CreatedBy, Parameters.CreatedBy);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CreatedDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CreatedDate, Parameters.CreatedDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter UpdatedBy
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.UpdatedBy, Parameters.UpdatedBy);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter LastUpdatedDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.LastUpdatedDate, Parameters.LastUpdatedDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter IssueNumber
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.IssueNumber, Parameters.IssueNumber);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter IssueDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.IssueDate, Parameters.IssueDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter RevisionNumber
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.RevisionNumber, Parameters.RevisionNumber);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter RevisionDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.RevisionDate, Parameters.RevisionDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Notes
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Notes, Parameters.Notes);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter FromVersionID
		    {
				get
		        {
					if(_FromVersionID_W == null)
	        	    {
						_FromVersionID_W = TearOff.FromVersionID;
					}
					return _FromVersionID_W;
				}
			}

			public AggregateParameter ManualFromID
		    {
				get
		        {
					if(_ManualFromID_W == null)
	        	    {
						_ManualFromID_W = TearOff.ManualFromID;
					}
					return _ManualFromID_W;
				}
			}

			public AggregateParameter Title
		    {
				get
		        {
					if(_Title_W == null)
	        	    {
						_Title_W = TearOff.Title;
					}
					return _Title_W;
				}
			}

			public AggregateParameter Path
		    {
				get
		        {
					if(_Path_W == null)
	        	    {
						_Path_W = TearOff.Path;
					}
					return _Path_W;
				}
			}

			public AggregateParameter CreatedBy
		    {
				get
		        {
					if(_CreatedBy_W == null)
	        	    {
						_CreatedBy_W = TearOff.CreatedBy;
					}
					return _CreatedBy_W;
				}
			}

			public AggregateParameter CreatedDate
		    {
				get
		        {
					if(_CreatedDate_W == null)
	        	    {
						_CreatedDate_W = TearOff.CreatedDate;
					}
					return _CreatedDate_W;
				}
			}

			public AggregateParameter UpdatedBy
		    {
				get
		        {
					if(_UpdatedBy_W == null)
	        	    {
						_UpdatedBy_W = TearOff.UpdatedBy;
					}
					return _UpdatedBy_W;
				}
			}

			public AggregateParameter LastUpdatedDate
		    {
				get
		        {
					if(_LastUpdatedDate_W == null)
	        	    {
						_LastUpdatedDate_W = TearOff.LastUpdatedDate;
					}
					return _LastUpdatedDate_W;
				}
			}

			public AggregateParameter IssueNumber
		    {
				get
		        {
					if(_IssueNumber_W == null)
	        	    {
						_IssueNumber_W = TearOff.IssueNumber;
					}
					return _IssueNumber_W;
				}
			}

			public AggregateParameter IssueDate
		    {
				get
		        {
					if(_IssueDate_W == null)
	        	    {
						_IssueDate_W = TearOff.IssueDate;
					}
					return _IssueDate_W;
				}
			}

			public AggregateParameter RevisionNumber
		    {
				get
		        {
					if(_RevisionNumber_W == null)
	        	    {
						_RevisionNumber_W = TearOff.RevisionNumber;
					}
					return _RevisionNumber_W;
				}
			}

			public AggregateParameter RevisionDate
		    {
				get
		        {
					if(_RevisionDate_W == null)
	        	    {
						_RevisionDate_W = TearOff.RevisionDate;
					}
					return _RevisionDate_W;
				}
			}

			public AggregateParameter Notes
		    {
				get
		        {
					if(_Notes_W == null)
	        	    {
						_Notes_W = TearOff.Notes;
					}
					return _Notes_W;
				}
			}

			private AggregateParameter _FromVersionID_W = null;
			private AggregateParameter _ManualFromID_W = null;
			private AggregateParameter _Title_W = null;
			private AggregateParameter _Path_W = null;
			private AggregateParameter _CreatedBy_W = null;
			private AggregateParameter _CreatedDate_W = null;
			private AggregateParameter _UpdatedBy_W = null;
			private AggregateParameter _LastUpdatedDate_W = null;
			private AggregateParameter _IssueNumber_W = null;
			private AggregateParameter _IssueDate_W = null;
			private AggregateParameter _RevisionNumber_W = null;
			private AggregateParameter _RevisionDate_W = null;
			private AggregateParameter _Notes_W = null;

			public void AggregateClauseReset()
			{
				_FromVersionID_W = null;
				_ManualFromID_W = null;
				_Title_W = null;
				_Path_W = null;
				_CreatedBy_W = null;
				_CreatedDate_W = null;
				_UpdatedBy_W = null;
				_LastUpdatedDate_W = null;
				_IssueNumber_W = null;
				_IssueDate_W = null;
				_RevisionNumber_W = null;
				_RevisionDate_W = null;
				_Notes_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_FromVersionInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.FromVersionID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_FromVersionUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_FromVersionDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.FromVersionID);
			p.SourceColumn = ColumnNames.FromVersionID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.FromVersionID);
			p.SourceColumn = ColumnNames.FromVersionID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ManualFromID);
			p.SourceColumn = ColumnNames.ManualFromID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Title);
			p.SourceColumn = ColumnNames.Title;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Path);
			p.SourceColumn = ColumnNames.Path;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CreatedBy);
			p.SourceColumn = ColumnNames.CreatedBy;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CreatedDate);
			p.SourceColumn = ColumnNames.CreatedDate;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.UpdatedBy);
			p.SourceColumn = ColumnNames.UpdatedBy;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.LastUpdatedDate);
			p.SourceColumn = ColumnNames.LastUpdatedDate;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.IssueNumber);
			p.SourceColumn = ColumnNames.IssueNumber;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.IssueDate);
			p.SourceColumn = ColumnNames.IssueDate;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.RevisionNumber);
			p.SourceColumn = ColumnNames.RevisionNumber;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.RevisionDate);
			p.SourceColumn = ColumnNames.RevisionDate;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Notes);
			p.SourceColumn = ColumnNames.Notes;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
