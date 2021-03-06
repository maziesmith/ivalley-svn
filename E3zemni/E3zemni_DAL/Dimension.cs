
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

namespace E3zmni.DAL
{
	public abstract class _Dimension : SqlClientEntity
	{
		public _Dimension()
		{
			this.QuerySource = "Dimension";
			this.MappingName = "Dimension";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_DimensionLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int DimensionID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.DimensionID, DimensionID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_DimensionLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter DimensionID
			{
				get
				{
					return new SqlParameter("@DimensionID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Width
			{
				get
				{
					return new SqlParameter("@Width", SqlDbType.Decimal, 0);
				}
			}
			
			public static SqlParameter Height
			{
				get
				{
					return new SqlParameter("@Height", SqlDbType.Decimal, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string DimensionID = "DimensionID";
            public const string Width = "Width";
            public const string Height = "Height";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[DimensionID] = _Dimension.PropertyNames.DimensionID;
					ht[Width] = _Dimension.PropertyNames.Width;
					ht[Height] = _Dimension.PropertyNames.Height;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string DimensionID = "DimensionID";
            public const string Width = "Width";
            public const string Height = "Height";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[DimensionID] = _Dimension.ColumnNames.DimensionID;
					ht[Width] = _Dimension.ColumnNames.Width;
					ht[Height] = _Dimension.ColumnNames.Height;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string DimensionID = "s_DimensionID";
            public const string Width = "s_Width";
            public const string Height = "s_Height";

		}
		#endregion		
		
		#region Properties
	
		public virtual int DimensionID
	    {
			get
	        {
				return base.Getint(ColumnNames.DimensionID);
			}
			set
	        {
				base.Setint(ColumnNames.DimensionID, value);
			}
		}

		public virtual decimal Width
	    {
			get
	        {
				return base.Getdecimal(ColumnNames.Width);
			}
			set
	        {
				base.Setdecimal(ColumnNames.Width, value);
			}
		}

		public virtual decimal Height
	    {
			get
	        {
				return base.Getdecimal(ColumnNames.Height);
			}
			set
	        {
				base.Setdecimal(ColumnNames.Height, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_DimensionID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DimensionID) ? string.Empty : base.GetintAsString(ColumnNames.DimensionID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DimensionID);
				else
					this.DimensionID = base.SetintAsString(ColumnNames.DimensionID, value);
			}
		}

		public virtual string s_Width
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Width) ? string.Empty : base.GetdecimalAsString(ColumnNames.Width);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Width);
				else
					this.Width = base.SetdecimalAsString(ColumnNames.Width, value);
			}
		}

		public virtual string s_Height
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Height) ? string.Empty : base.GetdecimalAsString(ColumnNames.Height);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Height);
				else
					this.Height = base.SetdecimalAsString(ColumnNames.Height, value);
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
				
				
				public WhereParameter DimensionID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DimensionID, Parameters.DimensionID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Width
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Width, Parameters.Width);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Height
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Height, Parameters.Height);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter DimensionID
		    {
				get
		        {
					if(_DimensionID_W == null)
	        	    {
						_DimensionID_W = TearOff.DimensionID;
					}
					return _DimensionID_W;
				}
			}

			public WhereParameter Width
		    {
				get
		        {
					if(_Width_W == null)
	        	    {
						_Width_W = TearOff.Width;
					}
					return _Width_W;
				}
			}

			public WhereParameter Height
		    {
				get
		        {
					if(_Height_W == null)
	        	    {
						_Height_W = TearOff.Height;
					}
					return _Height_W;
				}
			}

			private WhereParameter _DimensionID_W = null;
			private WhereParameter _Width_W = null;
			private WhereParameter _Height_W = null;

			public void WhereClauseReset()
			{
				_DimensionID_W = null;
				_Width_W = null;
				_Height_W = null;

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
				
				
				public AggregateParameter DimensionID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DimensionID, Parameters.DimensionID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Width
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Width, Parameters.Width);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Height
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Height, Parameters.Height);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter DimensionID
		    {
				get
		        {
					if(_DimensionID_W == null)
	        	    {
						_DimensionID_W = TearOff.DimensionID;
					}
					return _DimensionID_W;
				}
			}

			public AggregateParameter Width
		    {
				get
		        {
					if(_Width_W == null)
	        	    {
						_Width_W = TearOff.Width;
					}
					return _Width_W;
				}
			}

			public AggregateParameter Height
		    {
				get
		        {
					if(_Height_W == null)
	        	    {
						_Height_W = TearOff.Height;
					}
					return _Height_W;
				}
			}

			private AggregateParameter _DimensionID_W = null;
			private AggregateParameter _Width_W = null;
			private AggregateParameter _Height_W = null;

			public void AggregateClauseReset()
			{
				_DimensionID_W = null;
				_Width_W = null;
				_Height_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_DimensionInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.DimensionID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_DimensionUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_DimensionDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.DimensionID);
			p.SourceColumn = ColumnNames.DimensionID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.DimensionID);
			p.SourceColumn = ColumnNames.DimensionID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Width);
			p.SourceColumn = ColumnNames.Width;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Height);
			p.SourceColumn = ColumnNames.Height;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
