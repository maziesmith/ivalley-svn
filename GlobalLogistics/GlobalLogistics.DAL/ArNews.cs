
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

namespace GlobalLogistics.DAL
{
	public abstract class _ArNews : SqlClientEntity
	{
		public _ArNews()
		{
			this.QuerySource = "ArNews";
			this.MappingName = "ArNews";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ArNewsLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int NewsID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.NewsID, NewsID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ArNewsLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter NewsID
			{
				get
				{
					return new SqlParameter("@NewsID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter EnTitle
			{
				get
				{
					return new SqlParameter("@EnTitle", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter ArTitle
			{
				get
				{
					return new SqlParameter("@ArTitle", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter EnBrief
			{
				get
				{
					return new SqlParameter("@EnBrief", SqlDbType.NVarChar, 500);
				}
			}
			
			public static SqlParameter ArBrief
			{
				get
				{
					return new SqlParameter("@ArBrief", SqlDbType.NVarChar, 500);
				}
			}
			
			public static SqlParameter EnBody
			{
				get
				{
					return new SqlParameter("@EnBody", SqlDbType.NVarChar, 1073741823);
				}
			}
			
			public static SqlParameter ArBody
			{
				get
				{
					return new SqlParameter("@ArBody", SqlDbType.NVarChar, 1073741823);
				}
			}
			
			public static SqlParameter MainPicturePath
			{
				get
				{
					return new SqlParameter("@MainPicturePath", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter CategoryID
			{
				get
				{
					return new SqlParameter("@CategoryID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CreatedDate
			{
				get
				{
					return new SqlParameter("@CreatedDate", SqlDbType.DateTime, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string NewsID = "NewsID";
            public const string EnTitle = "EnTitle";
            public const string ArTitle = "ArTitle";
            public const string EnBrief = "EnBrief";
            public const string ArBrief = "ArBrief";
            public const string EnBody = "EnBody";
            public const string ArBody = "ArBody";
            public const string MainPicturePath = "MainPicturePath";
            public const string CategoryID = "CategoryID";
            public const string CreatedDate = "CreatedDate";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[NewsID] = _ArNews.PropertyNames.NewsID;
					ht[EnTitle] = _ArNews.PropertyNames.EnTitle;
					ht[ArTitle] = _ArNews.PropertyNames.ArTitle;
					ht[EnBrief] = _ArNews.PropertyNames.EnBrief;
					ht[ArBrief] = _ArNews.PropertyNames.ArBrief;
					ht[EnBody] = _ArNews.PropertyNames.EnBody;
					ht[ArBody] = _ArNews.PropertyNames.ArBody;
					ht[MainPicturePath] = _ArNews.PropertyNames.MainPicturePath;
					ht[CategoryID] = _ArNews.PropertyNames.CategoryID;
					ht[CreatedDate] = _ArNews.PropertyNames.CreatedDate;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string NewsID = "NewsID";
            public const string EnTitle = "EnTitle";
            public const string ArTitle = "ArTitle";
            public const string EnBrief = "EnBrief";
            public const string ArBrief = "ArBrief";
            public const string EnBody = "EnBody";
            public const string ArBody = "ArBody";
            public const string MainPicturePath = "MainPicturePath";
            public const string CategoryID = "CategoryID";
            public const string CreatedDate = "CreatedDate";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[NewsID] = _ArNews.ColumnNames.NewsID;
					ht[EnTitle] = _ArNews.ColumnNames.EnTitle;
					ht[ArTitle] = _ArNews.ColumnNames.ArTitle;
					ht[EnBrief] = _ArNews.ColumnNames.EnBrief;
					ht[ArBrief] = _ArNews.ColumnNames.ArBrief;
					ht[EnBody] = _ArNews.ColumnNames.EnBody;
					ht[ArBody] = _ArNews.ColumnNames.ArBody;
					ht[MainPicturePath] = _ArNews.ColumnNames.MainPicturePath;
					ht[CategoryID] = _ArNews.ColumnNames.CategoryID;
					ht[CreatedDate] = _ArNews.ColumnNames.CreatedDate;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string NewsID = "s_NewsID";
            public const string EnTitle = "s_EnTitle";
            public const string ArTitle = "s_ArTitle";
            public const string EnBrief = "s_EnBrief";
            public const string ArBrief = "s_ArBrief";
            public const string EnBody = "s_EnBody";
            public const string ArBody = "s_ArBody";
            public const string MainPicturePath = "s_MainPicturePath";
            public const string CategoryID = "s_CategoryID";
            public const string CreatedDate = "s_CreatedDate";

		}
		#endregion		
		
		#region Properties
	
		public virtual int NewsID
	    {
			get
	        {
				return base.Getint(ColumnNames.NewsID);
			}
			set
	        {
				base.Setint(ColumnNames.NewsID, value);
			}
		}

		public virtual string EnTitle
	    {
			get
	        {
				return base.Getstring(ColumnNames.EnTitle);
			}
			set
	        {
				base.Setstring(ColumnNames.EnTitle, value);
			}
		}

		public virtual string ArTitle
	    {
			get
	        {
				return base.Getstring(ColumnNames.ArTitle);
			}
			set
	        {
				base.Setstring(ColumnNames.ArTitle, value);
			}
		}

		public virtual string EnBrief
	    {
			get
	        {
				return base.Getstring(ColumnNames.EnBrief);
			}
			set
	        {
				base.Setstring(ColumnNames.EnBrief, value);
			}
		}

		public virtual string ArBrief
	    {
			get
	        {
				return base.Getstring(ColumnNames.ArBrief);
			}
			set
	        {
				base.Setstring(ColumnNames.ArBrief, value);
			}
		}

		public virtual string EnBody
	    {
			get
	        {
				return base.Getstring(ColumnNames.EnBody);
			}
			set
	        {
				base.Setstring(ColumnNames.EnBody, value);
			}
		}

		public virtual string ArBody
	    {
			get
	        {
				return base.Getstring(ColumnNames.ArBody);
			}
			set
	        {
				base.Setstring(ColumnNames.ArBody, value);
			}
		}

		public virtual string MainPicturePath
	    {
			get
	        {
				return base.Getstring(ColumnNames.MainPicturePath);
			}
			set
	        {
				base.Setstring(ColumnNames.MainPicturePath, value);
			}
		}

		public virtual int CategoryID
	    {
			get
	        {
				return base.Getint(ColumnNames.CategoryID);
			}
			set
	        {
				base.Setint(ColumnNames.CategoryID, value);
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


		#endregion
		
		#region String Properties
	
		public virtual string s_NewsID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.NewsID) ? string.Empty : base.GetintAsString(ColumnNames.NewsID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.NewsID);
				else
					this.NewsID = base.SetintAsString(ColumnNames.NewsID, value);
			}
		}

		public virtual string s_EnTitle
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.EnTitle) ? string.Empty : base.GetstringAsString(ColumnNames.EnTitle);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.EnTitle);
				else
					this.EnTitle = base.SetstringAsString(ColumnNames.EnTitle, value);
			}
		}

		public virtual string s_ArTitle
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ArTitle) ? string.Empty : base.GetstringAsString(ColumnNames.ArTitle);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ArTitle);
				else
					this.ArTitle = base.SetstringAsString(ColumnNames.ArTitle, value);
			}
		}

		public virtual string s_EnBrief
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.EnBrief) ? string.Empty : base.GetstringAsString(ColumnNames.EnBrief);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.EnBrief);
				else
					this.EnBrief = base.SetstringAsString(ColumnNames.EnBrief, value);
			}
		}

		public virtual string s_ArBrief
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ArBrief) ? string.Empty : base.GetstringAsString(ColumnNames.ArBrief);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ArBrief);
				else
					this.ArBrief = base.SetstringAsString(ColumnNames.ArBrief, value);
			}
		}

		public virtual string s_EnBody
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.EnBody) ? string.Empty : base.GetstringAsString(ColumnNames.EnBody);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.EnBody);
				else
					this.EnBody = base.SetstringAsString(ColumnNames.EnBody, value);
			}
		}

		public virtual string s_ArBody
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ArBody) ? string.Empty : base.GetstringAsString(ColumnNames.ArBody);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ArBody);
				else
					this.ArBody = base.SetstringAsString(ColumnNames.ArBody, value);
			}
		}

		public virtual string s_MainPicturePath
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.MainPicturePath) ? string.Empty : base.GetstringAsString(ColumnNames.MainPicturePath);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.MainPicturePath);
				else
					this.MainPicturePath = base.SetstringAsString(ColumnNames.MainPicturePath, value);
			}
		}

		public virtual string s_CategoryID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CategoryID) ? string.Empty : base.GetintAsString(ColumnNames.CategoryID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CategoryID);
				else
					this.CategoryID = base.SetintAsString(ColumnNames.CategoryID, value);
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
				
				
				public WhereParameter NewsID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.NewsID, Parameters.NewsID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter EnTitle
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.EnTitle, Parameters.EnTitle);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ArTitle
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ArTitle, Parameters.ArTitle);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter EnBrief
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.EnBrief, Parameters.EnBrief);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ArBrief
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ArBrief, Parameters.ArBrief);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter EnBody
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.EnBody, Parameters.EnBody);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ArBody
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ArBody, Parameters.ArBody);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter MainPicturePath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.MainPicturePath, Parameters.MainPicturePath);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CategoryID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CategoryID, Parameters.CategoryID);
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


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter NewsID
		    {
				get
		        {
					if(_NewsID_W == null)
	        	    {
						_NewsID_W = TearOff.NewsID;
					}
					return _NewsID_W;
				}
			}

			public WhereParameter EnTitle
		    {
				get
		        {
					if(_EnTitle_W == null)
	        	    {
						_EnTitle_W = TearOff.EnTitle;
					}
					return _EnTitle_W;
				}
			}

			public WhereParameter ArTitle
		    {
				get
		        {
					if(_ArTitle_W == null)
	        	    {
						_ArTitle_W = TearOff.ArTitle;
					}
					return _ArTitle_W;
				}
			}

			public WhereParameter EnBrief
		    {
				get
		        {
					if(_EnBrief_W == null)
	        	    {
						_EnBrief_W = TearOff.EnBrief;
					}
					return _EnBrief_W;
				}
			}

			public WhereParameter ArBrief
		    {
				get
		        {
					if(_ArBrief_W == null)
	        	    {
						_ArBrief_W = TearOff.ArBrief;
					}
					return _ArBrief_W;
				}
			}

			public WhereParameter EnBody
		    {
				get
		        {
					if(_EnBody_W == null)
	        	    {
						_EnBody_W = TearOff.EnBody;
					}
					return _EnBody_W;
				}
			}

			public WhereParameter ArBody
		    {
				get
		        {
					if(_ArBody_W == null)
	        	    {
						_ArBody_W = TearOff.ArBody;
					}
					return _ArBody_W;
				}
			}

			public WhereParameter MainPicturePath
		    {
				get
		        {
					if(_MainPicturePath_W == null)
	        	    {
						_MainPicturePath_W = TearOff.MainPicturePath;
					}
					return _MainPicturePath_W;
				}
			}

			public WhereParameter CategoryID
		    {
				get
		        {
					if(_CategoryID_W == null)
	        	    {
						_CategoryID_W = TearOff.CategoryID;
					}
					return _CategoryID_W;
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

			private WhereParameter _NewsID_W = null;
			private WhereParameter _EnTitle_W = null;
			private WhereParameter _ArTitle_W = null;
			private WhereParameter _EnBrief_W = null;
			private WhereParameter _ArBrief_W = null;
			private WhereParameter _EnBody_W = null;
			private WhereParameter _ArBody_W = null;
			private WhereParameter _MainPicturePath_W = null;
			private WhereParameter _CategoryID_W = null;
			private WhereParameter _CreatedDate_W = null;

			public void WhereClauseReset()
			{
				_NewsID_W = null;
				_EnTitle_W = null;
				_ArTitle_W = null;
				_EnBrief_W = null;
				_ArBrief_W = null;
				_EnBody_W = null;
				_ArBody_W = null;
				_MainPicturePath_W = null;
				_CategoryID_W = null;
				_CreatedDate_W = null;

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
				
				
				public AggregateParameter NewsID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.NewsID, Parameters.NewsID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter EnTitle
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.EnTitle, Parameters.EnTitle);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ArTitle
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ArTitle, Parameters.ArTitle);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter EnBrief
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.EnBrief, Parameters.EnBrief);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ArBrief
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ArBrief, Parameters.ArBrief);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter EnBody
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.EnBody, Parameters.EnBody);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ArBody
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ArBody, Parameters.ArBody);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter MainPicturePath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.MainPicturePath, Parameters.MainPicturePath);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CategoryID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CategoryID, Parameters.CategoryID);
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


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter NewsID
		    {
				get
		        {
					if(_NewsID_W == null)
	        	    {
						_NewsID_W = TearOff.NewsID;
					}
					return _NewsID_W;
				}
			}

			public AggregateParameter EnTitle
		    {
				get
		        {
					if(_EnTitle_W == null)
	        	    {
						_EnTitle_W = TearOff.EnTitle;
					}
					return _EnTitle_W;
				}
			}

			public AggregateParameter ArTitle
		    {
				get
		        {
					if(_ArTitle_W == null)
	        	    {
						_ArTitle_W = TearOff.ArTitle;
					}
					return _ArTitle_W;
				}
			}

			public AggregateParameter EnBrief
		    {
				get
		        {
					if(_EnBrief_W == null)
	        	    {
						_EnBrief_W = TearOff.EnBrief;
					}
					return _EnBrief_W;
				}
			}

			public AggregateParameter ArBrief
		    {
				get
		        {
					if(_ArBrief_W == null)
	        	    {
						_ArBrief_W = TearOff.ArBrief;
					}
					return _ArBrief_W;
				}
			}

			public AggregateParameter EnBody
		    {
				get
		        {
					if(_EnBody_W == null)
	        	    {
						_EnBody_W = TearOff.EnBody;
					}
					return _EnBody_W;
				}
			}

			public AggregateParameter ArBody
		    {
				get
		        {
					if(_ArBody_W == null)
	        	    {
						_ArBody_W = TearOff.ArBody;
					}
					return _ArBody_W;
				}
			}

			public AggregateParameter MainPicturePath
		    {
				get
		        {
					if(_MainPicturePath_W == null)
	        	    {
						_MainPicturePath_W = TearOff.MainPicturePath;
					}
					return _MainPicturePath_W;
				}
			}

			public AggregateParameter CategoryID
		    {
				get
		        {
					if(_CategoryID_W == null)
	        	    {
						_CategoryID_W = TearOff.CategoryID;
					}
					return _CategoryID_W;
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

			private AggregateParameter _NewsID_W = null;
			private AggregateParameter _EnTitle_W = null;
			private AggregateParameter _ArTitle_W = null;
			private AggregateParameter _EnBrief_W = null;
			private AggregateParameter _ArBrief_W = null;
			private AggregateParameter _EnBody_W = null;
			private AggregateParameter _ArBody_W = null;
			private AggregateParameter _MainPicturePath_W = null;
			private AggregateParameter _CategoryID_W = null;
			private AggregateParameter _CreatedDate_W = null;

			public void AggregateClauseReset()
			{
				_NewsID_W = null;
				_EnTitle_W = null;
				_ArTitle_W = null;
				_EnBrief_W = null;
				_ArBrief_W = null;
				_EnBody_W = null;
				_ArBody_W = null;
				_MainPicturePath_W = null;
				_CategoryID_W = null;
				_CreatedDate_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ArNewsInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.NewsID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ArNewsUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ArNewsDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.NewsID);
			p.SourceColumn = ColumnNames.NewsID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.NewsID);
			p.SourceColumn = ColumnNames.NewsID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.EnTitle);
			p.SourceColumn = ColumnNames.EnTitle;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ArTitle);
			p.SourceColumn = ColumnNames.ArTitle;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.EnBrief);
			p.SourceColumn = ColumnNames.EnBrief;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ArBrief);
			p.SourceColumn = ColumnNames.ArBrief;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.EnBody);
			p.SourceColumn = ColumnNames.EnBody;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ArBody);
			p.SourceColumn = ColumnNames.ArBody;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.MainPicturePath);
			p.SourceColumn = ColumnNames.MainPicturePath;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CategoryID);
			p.SourceColumn = ColumnNames.CategoryID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CreatedDate);
			p.SourceColumn = ColumnNames.CreatedDate;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
