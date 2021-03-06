
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

namespace Combo.DAL
{
	public abstract class _UserActivityLog : SqlClientEntity
	{
		public _UserActivityLog()
		{
			this.QuerySource = "UserActivityLog";
			this.MappingName = "UserActivityLog";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_UserActivityLogLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int UserActivityLogID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.UserActivityLogID, UserActivityLogID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_UserActivityLogLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter UserActivityLogID
			{
				get
				{
					return new SqlParameter("@UserActivityLogID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Date
			{
				get
				{
					return new SqlParameter("@Date", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter ComboUserID
			{
				get
				{
					return new SqlParameter("@ComboUserID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter DaysToDiscount
			{
				get
				{
					return new SqlParameter("@DaysToDiscount", SqlDbType.Int, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string UserActivityLogID = "UserActivityLogID";
            public const string Date = "Date";
            public const string ComboUserID = "ComboUserID";
            public const string DaysToDiscount = "DaysToDiscount";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[UserActivityLogID] = _UserActivityLog.PropertyNames.UserActivityLogID;
					ht[Date] = _UserActivityLog.PropertyNames.Date;
					ht[ComboUserID] = _UserActivityLog.PropertyNames.ComboUserID;
					ht[DaysToDiscount] = _UserActivityLog.PropertyNames.DaysToDiscount;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string UserActivityLogID = "UserActivityLogID";
            public const string Date = "Date";
            public const string ComboUserID = "ComboUserID";
            public const string DaysToDiscount = "DaysToDiscount";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[UserActivityLogID] = _UserActivityLog.ColumnNames.UserActivityLogID;
					ht[Date] = _UserActivityLog.ColumnNames.Date;
					ht[ComboUserID] = _UserActivityLog.ColumnNames.ComboUserID;
					ht[DaysToDiscount] = _UserActivityLog.ColumnNames.DaysToDiscount;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string UserActivityLogID = "s_UserActivityLogID";
            public const string Date = "s_Date";
            public const string ComboUserID = "s_ComboUserID";
            public const string DaysToDiscount = "s_DaysToDiscount";

		}
		#endregion		
		
		#region Properties
	
		public virtual int UserActivityLogID
	    {
			get
	        {
				return base.Getint(ColumnNames.UserActivityLogID);
			}
			set
	        {
				base.Setint(ColumnNames.UserActivityLogID, value);
			}
		}

		public virtual DateTime Date
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.Date);
			}
			set
	        {
				base.SetDateTime(ColumnNames.Date, value);
			}
		}

		public virtual int ComboUserID
	    {
			get
	        {
				return base.Getint(ColumnNames.ComboUserID);
			}
			set
	        {
				base.Setint(ColumnNames.ComboUserID, value);
			}
		}

		public virtual int DaysToDiscount
	    {
			get
	        {
				return base.Getint(ColumnNames.DaysToDiscount);
			}
			set
	        {
				base.Setint(ColumnNames.DaysToDiscount, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_UserActivityLogID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.UserActivityLogID) ? string.Empty : base.GetintAsString(ColumnNames.UserActivityLogID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.UserActivityLogID);
				else
					this.UserActivityLogID = base.SetintAsString(ColumnNames.UserActivityLogID, value);
			}
		}

		public virtual string s_Date
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Date) ? string.Empty : base.GetDateTimeAsString(ColumnNames.Date);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Date);
				else
					this.Date = base.SetDateTimeAsString(ColumnNames.Date, value);
			}
		}

		public virtual string s_ComboUserID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ComboUserID) ? string.Empty : base.GetintAsString(ColumnNames.ComboUserID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ComboUserID);
				else
					this.ComboUserID = base.SetintAsString(ColumnNames.ComboUserID, value);
			}
		}

		public virtual string s_DaysToDiscount
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DaysToDiscount) ? string.Empty : base.GetintAsString(ColumnNames.DaysToDiscount);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DaysToDiscount);
				else
					this.DaysToDiscount = base.SetintAsString(ColumnNames.DaysToDiscount, value);
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
				
				
				public WhereParameter UserActivityLogID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.UserActivityLogID, Parameters.UserActivityLogID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Date
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Date, Parameters.Date);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ComboUserID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ComboUserID, Parameters.ComboUserID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter DaysToDiscount
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DaysToDiscount, Parameters.DaysToDiscount);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter UserActivityLogID
		    {
				get
		        {
					if(_UserActivityLogID_W == null)
	        	    {
						_UserActivityLogID_W = TearOff.UserActivityLogID;
					}
					return _UserActivityLogID_W;
				}
			}

			public WhereParameter Date
		    {
				get
		        {
					if(_Date_W == null)
	        	    {
						_Date_W = TearOff.Date;
					}
					return _Date_W;
				}
			}

			public WhereParameter ComboUserID
		    {
				get
		        {
					if(_ComboUserID_W == null)
	        	    {
						_ComboUserID_W = TearOff.ComboUserID;
					}
					return _ComboUserID_W;
				}
			}

			public WhereParameter DaysToDiscount
		    {
				get
		        {
					if(_DaysToDiscount_W == null)
	        	    {
						_DaysToDiscount_W = TearOff.DaysToDiscount;
					}
					return _DaysToDiscount_W;
				}
			}

			private WhereParameter _UserActivityLogID_W = null;
			private WhereParameter _Date_W = null;
			private WhereParameter _ComboUserID_W = null;
			private WhereParameter _DaysToDiscount_W = null;

			public void WhereClauseReset()
			{
				_UserActivityLogID_W = null;
				_Date_W = null;
				_ComboUserID_W = null;
				_DaysToDiscount_W = null;

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
				
				
				public AggregateParameter UserActivityLogID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.UserActivityLogID, Parameters.UserActivityLogID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Date
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Date, Parameters.Date);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ComboUserID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ComboUserID, Parameters.ComboUserID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter DaysToDiscount
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DaysToDiscount, Parameters.DaysToDiscount);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter UserActivityLogID
		    {
				get
		        {
					if(_UserActivityLogID_W == null)
	        	    {
						_UserActivityLogID_W = TearOff.UserActivityLogID;
					}
					return _UserActivityLogID_W;
				}
			}

			public AggregateParameter Date
		    {
				get
		        {
					if(_Date_W == null)
	        	    {
						_Date_W = TearOff.Date;
					}
					return _Date_W;
				}
			}

			public AggregateParameter ComboUserID
		    {
				get
		        {
					if(_ComboUserID_W == null)
	        	    {
						_ComboUserID_W = TearOff.ComboUserID;
					}
					return _ComboUserID_W;
				}
			}

			public AggregateParameter DaysToDiscount
		    {
				get
		        {
					if(_DaysToDiscount_W == null)
	        	    {
						_DaysToDiscount_W = TearOff.DaysToDiscount;
					}
					return _DaysToDiscount_W;
				}
			}

			private AggregateParameter _UserActivityLogID_W = null;
			private AggregateParameter _Date_W = null;
			private AggregateParameter _ComboUserID_W = null;
			private AggregateParameter _DaysToDiscount_W = null;

			public void AggregateClauseReset()
			{
				_UserActivityLogID_W = null;
				_Date_W = null;
				_ComboUserID_W = null;
				_DaysToDiscount_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_UserActivityLogInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.UserActivityLogID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_UserActivityLogUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_UserActivityLogDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.UserActivityLogID);
			p.SourceColumn = ColumnNames.UserActivityLogID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.UserActivityLogID);
			p.SourceColumn = ColumnNames.UserActivityLogID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Date);
			p.SourceColumn = ColumnNames.Date;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ComboUserID);
			p.SourceColumn = ColumnNames.ComboUserID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.DaysToDiscount);
			p.SourceColumn = ColumnNames.DaysToDiscount;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
