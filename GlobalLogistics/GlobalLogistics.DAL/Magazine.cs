
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
	public abstract class _Magazine : SqlClientEntity
	{
		public _Magazine()
		{
			this.QuerySource = "Magazine";
			this.MappingName = "Magazine";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_MagazineLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int MagazineID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.MagazineID, MagazineID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_MagazineLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter MagazineID
			{
				get
				{
					return new SqlParameter("@MagazineID", SqlDbType.Int, 0);
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
			
			public static SqlParameter FilePath
			{
				get
				{
					return new SqlParameter("@FilePath", SqlDbType.NVarChar, 500);
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
            public const string MagazineID = "MagazineID";
            public const string EnTitle = "EnTitle";
            public const string ArTitle = "ArTitle";
            public const string FilePath = "FilePath";
            public const string CreatedDate = "CreatedDate";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[MagazineID] = _Magazine.PropertyNames.MagazineID;
					ht[EnTitle] = _Magazine.PropertyNames.EnTitle;
					ht[ArTitle] = _Magazine.PropertyNames.ArTitle;
					ht[FilePath] = _Magazine.PropertyNames.FilePath;
					ht[CreatedDate] = _Magazine.PropertyNames.CreatedDate;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string MagazineID = "MagazineID";
            public const string EnTitle = "EnTitle";
            public const string ArTitle = "ArTitle";
            public const string FilePath = "FilePath";
            public const string CreatedDate = "CreatedDate";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[MagazineID] = _Magazine.ColumnNames.MagazineID;
					ht[EnTitle] = _Magazine.ColumnNames.EnTitle;
					ht[ArTitle] = _Magazine.ColumnNames.ArTitle;
					ht[FilePath] = _Magazine.ColumnNames.FilePath;
					ht[CreatedDate] = _Magazine.ColumnNames.CreatedDate;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string MagazineID = "s_MagazineID";
            public const string EnTitle = "s_EnTitle";
            public const string ArTitle = "s_ArTitle";
            public const string FilePath = "s_FilePath";
            public const string CreatedDate = "s_CreatedDate";

		}
		#endregion		
		
		#region Properties
	
		public virtual int MagazineID
	    {
			get
	        {
				return base.Getint(ColumnNames.MagazineID);
			}
			set
	        {
				base.Setint(ColumnNames.MagazineID, value);
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
	
		public virtual string s_MagazineID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.MagazineID) ? string.Empty : base.GetintAsString(ColumnNames.MagazineID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.MagazineID);
				else
					this.MagazineID = base.SetintAsString(ColumnNames.MagazineID, value);
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
				
				
				public WhereParameter MagazineID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.MagazineID, Parameters.MagazineID);
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

				public WhereParameter FilePath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.FilePath, Parameters.FilePath);
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
		
			public WhereParameter MagazineID
		    {
				get
		        {
					if(_MagazineID_W == null)
	        	    {
						_MagazineID_W = TearOff.MagazineID;
					}
					return _MagazineID_W;
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

			private WhereParameter _MagazineID_W = null;
			private WhereParameter _EnTitle_W = null;
			private WhereParameter _ArTitle_W = null;
			private WhereParameter _FilePath_W = null;
			private WhereParameter _CreatedDate_W = null;

			public void WhereClauseReset()
			{
				_MagazineID_W = null;
				_EnTitle_W = null;
				_ArTitle_W = null;
				_FilePath_W = null;
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
				
				
				public AggregateParameter MagazineID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.MagazineID, Parameters.MagazineID);
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

				public AggregateParameter FilePath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.FilePath, Parameters.FilePath);
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
		
			public AggregateParameter MagazineID
		    {
				get
		        {
					if(_MagazineID_W == null)
	        	    {
						_MagazineID_W = TearOff.MagazineID;
					}
					return _MagazineID_W;
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

			private AggregateParameter _MagazineID_W = null;
			private AggregateParameter _EnTitle_W = null;
			private AggregateParameter _ArTitle_W = null;
			private AggregateParameter _FilePath_W = null;
			private AggregateParameter _CreatedDate_W = null;

			public void AggregateClauseReset()
			{
				_MagazineID_W = null;
				_EnTitle_W = null;
				_ArTitle_W = null;
				_FilePath_W = null;
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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MagazineInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.MagazineID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MagazineUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MagazineDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.MagazineID);
			p.SourceColumn = ColumnNames.MagazineID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.MagazineID);
			p.SourceColumn = ColumnNames.MagazineID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.EnTitle);
			p.SourceColumn = ColumnNames.EnTitle;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ArTitle);
			p.SourceColumn = ColumnNames.ArTitle;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.FilePath);
			p.SourceColumn = ColumnNames.FilePath;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CreatedDate);
			p.SourceColumn = ColumnNames.CreatedDate;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
