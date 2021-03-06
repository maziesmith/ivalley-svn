
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
	public abstract class _AirLines : SqlClientEntity
	{
		public _AirLines()
		{
			this.QuerySource = "AirLines";
			this.MappingName = "AirLines";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_AirLinesLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int AirLinesID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.AirLinesID, AirLinesID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_AirLinesLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter AirLinesID
			{
				get
				{
					return new SqlParameter("@AirLinesID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter FromAirPortID
			{
				get
				{
					return new SqlParameter("@FromAirPortID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ToAirPortID
			{
				get
				{
					return new SqlParameter("@ToAirPortID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CompanyID
			{
				get
				{
					return new SqlParameter("@CompanyID", SqlDbType.Int, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string AirLinesID = "AirLinesID";
            public const string FromAirPortID = "FromAirPortID";
            public const string ToAirPortID = "ToAirPortID";
            public const string CompanyID = "CompanyID";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[AirLinesID] = _AirLines.PropertyNames.AirLinesID;
					ht[FromAirPortID] = _AirLines.PropertyNames.FromAirPortID;
					ht[ToAirPortID] = _AirLines.PropertyNames.ToAirPortID;
					ht[CompanyID] = _AirLines.PropertyNames.CompanyID;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string AirLinesID = "AirLinesID";
            public const string FromAirPortID = "FromAirPortID";
            public const string ToAirPortID = "ToAirPortID";
            public const string CompanyID = "CompanyID";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[AirLinesID] = _AirLines.ColumnNames.AirLinesID;
					ht[FromAirPortID] = _AirLines.ColumnNames.FromAirPortID;
					ht[ToAirPortID] = _AirLines.ColumnNames.ToAirPortID;
					ht[CompanyID] = _AirLines.ColumnNames.CompanyID;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string AirLinesID = "s_AirLinesID";
            public const string FromAirPortID = "s_FromAirPortID";
            public const string ToAirPortID = "s_ToAirPortID";
            public const string CompanyID = "s_CompanyID";

		}
		#endregion		
		
		#region Properties
	
		public virtual int AirLinesID
	    {
			get
	        {
				return base.Getint(ColumnNames.AirLinesID);
			}
			set
	        {
				base.Setint(ColumnNames.AirLinesID, value);
			}
		}

		public virtual int FromAirPortID
	    {
			get
	        {
				return base.Getint(ColumnNames.FromAirPortID);
			}
			set
	        {
				base.Setint(ColumnNames.FromAirPortID, value);
			}
		}

		public virtual int ToAirPortID
	    {
			get
	        {
				return base.Getint(ColumnNames.ToAirPortID);
			}
			set
	        {
				base.Setint(ColumnNames.ToAirPortID, value);
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


		#endregion
		
		#region String Properties
	
		public virtual string s_AirLinesID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.AirLinesID) ? string.Empty : base.GetintAsString(ColumnNames.AirLinesID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.AirLinesID);
				else
					this.AirLinesID = base.SetintAsString(ColumnNames.AirLinesID, value);
			}
		}

		public virtual string s_FromAirPortID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.FromAirPortID) ? string.Empty : base.GetintAsString(ColumnNames.FromAirPortID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.FromAirPortID);
				else
					this.FromAirPortID = base.SetintAsString(ColumnNames.FromAirPortID, value);
			}
		}

		public virtual string s_ToAirPortID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ToAirPortID) ? string.Empty : base.GetintAsString(ColumnNames.ToAirPortID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ToAirPortID);
				else
					this.ToAirPortID = base.SetintAsString(ColumnNames.ToAirPortID, value);
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
				
				
				public WhereParameter AirLinesID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.AirLinesID, Parameters.AirLinesID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter FromAirPortID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.FromAirPortID, Parameters.FromAirPortID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ToAirPortID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ToAirPortID, Parameters.ToAirPortID);
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


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter AirLinesID
		    {
				get
		        {
					if(_AirLinesID_W == null)
	        	    {
						_AirLinesID_W = TearOff.AirLinesID;
					}
					return _AirLinesID_W;
				}
			}

			public WhereParameter FromAirPortID
		    {
				get
		        {
					if(_FromAirPortID_W == null)
	        	    {
						_FromAirPortID_W = TearOff.FromAirPortID;
					}
					return _FromAirPortID_W;
				}
			}

			public WhereParameter ToAirPortID
		    {
				get
		        {
					if(_ToAirPortID_W == null)
	        	    {
						_ToAirPortID_W = TearOff.ToAirPortID;
					}
					return _ToAirPortID_W;
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

			private WhereParameter _AirLinesID_W = null;
			private WhereParameter _FromAirPortID_W = null;
			private WhereParameter _ToAirPortID_W = null;
			private WhereParameter _CompanyID_W = null;

			public void WhereClauseReset()
			{
				_AirLinesID_W = null;
				_FromAirPortID_W = null;
				_ToAirPortID_W = null;
				_CompanyID_W = null;

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
				
				
				public AggregateParameter AirLinesID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.AirLinesID, Parameters.AirLinesID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter FromAirPortID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.FromAirPortID, Parameters.FromAirPortID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ToAirPortID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ToAirPortID, Parameters.ToAirPortID);
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


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter AirLinesID
		    {
				get
		        {
					if(_AirLinesID_W == null)
	        	    {
						_AirLinesID_W = TearOff.AirLinesID;
					}
					return _AirLinesID_W;
				}
			}

			public AggregateParameter FromAirPortID
		    {
				get
		        {
					if(_FromAirPortID_W == null)
	        	    {
						_FromAirPortID_W = TearOff.FromAirPortID;
					}
					return _FromAirPortID_W;
				}
			}

			public AggregateParameter ToAirPortID
		    {
				get
		        {
					if(_ToAirPortID_W == null)
	        	    {
						_ToAirPortID_W = TearOff.ToAirPortID;
					}
					return _ToAirPortID_W;
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

			private AggregateParameter _AirLinesID_W = null;
			private AggregateParameter _FromAirPortID_W = null;
			private AggregateParameter _ToAirPortID_W = null;
			private AggregateParameter _CompanyID_W = null;

			public void AggregateClauseReset()
			{
				_AirLinesID_W = null;
				_FromAirPortID_W = null;
				_ToAirPortID_W = null;
				_CompanyID_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_AirLinesInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.AirLinesID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_AirLinesUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_AirLinesDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.AirLinesID);
			p.SourceColumn = ColumnNames.AirLinesID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.AirLinesID);
			p.SourceColumn = ColumnNames.AirLinesID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.FromAirPortID);
			p.SourceColumn = ColumnNames.FromAirPortID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ToAirPortID);
			p.SourceColumn = ColumnNames.ToAirPortID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CompanyID);
			p.SourceColumn = ColumnNames.CompanyID;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
