
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
	public abstract class _Days : SqlClientEntity
	{
		public _Days()
		{
			this.QuerySource = "Days";
			this.MappingName = "Days";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_DaysLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int DayID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.DayID, DayID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_DaysLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter DayID
			{
				get
				{
					return new SqlParameter("@DayID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Day
			{
				get
				{
					return new SqlParameter("@Day", SqlDbType.Int, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string DayID = "DayID";
            public const string Day = "Day";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[DayID] = _Days.PropertyNames.DayID;
					ht[Day] = _Days.PropertyNames.Day;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string DayID = "DayID";
            public const string Day = "Day";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[DayID] = _Days.ColumnNames.DayID;
					ht[Day] = _Days.ColumnNames.Day;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string DayID = "s_DayID";
            public const string Day = "s_Day";

		}
		#endregion		
		
		#region Properties
	
		public virtual int DayID
	    {
			get
	        {
				return base.Getint(ColumnNames.DayID);
			}
			set
	        {
				base.Setint(ColumnNames.DayID, value);
			}
		}

		public virtual int Day
	    {
			get
	        {
				return base.Getint(ColumnNames.Day);
			}
			set
	        {
				base.Setint(ColumnNames.Day, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_DayID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DayID) ? string.Empty : base.GetintAsString(ColumnNames.DayID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DayID);
				else
					this.DayID = base.SetintAsString(ColumnNames.DayID, value);
			}
		}

		public virtual string s_Day
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Day) ? string.Empty : base.GetintAsString(ColumnNames.Day);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Day);
				else
					this.Day = base.SetintAsString(ColumnNames.Day, value);
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
				
				
				public WhereParameter DayID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DayID, Parameters.DayID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Day
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Day, Parameters.Day);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter DayID
		    {
				get
		        {
					if(_DayID_W == null)
	        	    {
						_DayID_W = TearOff.DayID;
					}
					return _DayID_W;
				}
			}

			public WhereParameter Day
		    {
				get
		        {
					if(_Day_W == null)
	        	    {
						_Day_W = TearOff.Day;
					}
					return _Day_W;
				}
			}

			private WhereParameter _DayID_W = null;
			private WhereParameter _Day_W = null;

			public void WhereClauseReset()
			{
				_DayID_W = null;
				_Day_W = null;

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
				
				
				public AggregateParameter DayID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DayID, Parameters.DayID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Day
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Day, Parameters.Day);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter DayID
		    {
				get
		        {
					if(_DayID_W == null)
	        	    {
						_DayID_W = TearOff.DayID;
					}
					return _DayID_W;
				}
			}

			public AggregateParameter Day
		    {
				get
		        {
					if(_Day_W == null)
	        	    {
						_Day_W = TearOff.Day;
					}
					return _Day_W;
				}
			}

			private AggregateParameter _DayID_W = null;
			private AggregateParameter _Day_W = null;

			public void AggregateClauseReset()
			{
				_DayID_W = null;
				_Day_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_DaysInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.DayID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_DaysUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_DaysDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.DayID);
			p.SourceColumn = ColumnNames.DayID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.DayID);
			p.SourceColumn = ColumnNames.DayID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Day);
			p.SourceColumn = ColumnNames.Day;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}