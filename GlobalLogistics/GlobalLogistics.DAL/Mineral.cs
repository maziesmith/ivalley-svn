
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
	public abstract class _Mineral : SqlClientEntity
	{
		public _Mineral()
		{
			this.QuerySource = "Mineral";
			this.MappingName = "Mineral";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_MineralLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int MineralID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.MineralID, MineralID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_MineralLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter MineralID
			{
				get
				{
					return new SqlParameter("@MineralID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter MinID
			{
				get
				{
					return new SqlParameter("@MinID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CellPrice
			{
				get
				{
					return new SqlParameter("@CellPrice", SqlDbType.NVarChar, 12);
				}
			}
			
			public static SqlParameter BuyPrice
			{
				get
				{
					return new SqlParameter("@BuyPrice", SqlDbType.NVarChar, 12);
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
            public const string MineralID = "MineralID";
            public const string MinID = "MinID";
            public const string CellPrice = "CellPrice";
            public const string BuyPrice = "BuyPrice";
            public const string CreatedDate = "CreatedDate";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[MineralID] = _Mineral.PropertyNames.MineralID;
					ht[MinID] = _Mineral.PropertyNames.MinID;
					ht[CellPrice] = _Mineral.PropertyNames.CellPrice;
					ht[BuyPrice] = _Mineral.PropertyNames.BuyPrice;
					ht[CreatedDate] = _Mineral.PropertyNames.CreatedDate;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string MineralID = "MineralID";
            public const string MinID = "MinID";
            public const string CellPrice = "CellPrice";
            public const string BuyPrice = "BuyPrice";
            public const string CreatedDate = "CreatedDate";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[MineralID] = _Mineral.ColumnNames.MineralID;
					ht[MinID] = _Mineral.ColumnNames.MinID;
					ht[CellPrice] = _Mineral.ColumnNames.CellPrice;
					ht[BuyPrice] = _Mineral.ColumnNames.BuyPrice;
					ht[CreatedDate] = _Mineral.ColumnNames.CreatedDate;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string MineralID = "s_MineralID";
            public const string MinID = "s_MinID";
            public const string CellPrice = "s_CellPrice";
            public const string BuyPrice = "s_BuyPrice";
            public const string CreatedDate = "s_CreatedDate";

		}
		#endregion		
		
		#region Properties
	
		public virtual int MineralID
	    {
			get
	        {
				return base.Getint(ColumnNames.MineralID);
			}
			set
	        {
				base.Setint(ColumnNames.MineralID, value);
			}
		}

		public virtual int MinID
	    {
			get
	        {
				return base.Getint(ColumnNames.MinID);
			}
			set
	        {
				base.Setint(ColumnNames.MinID, value);
			}
		}

		public virtual string CellPrice
	    {
			get
	        {
				return base.Getstring(ColumnNames.CellPrice);
			}
			set
	        {
				base.Setstring(ColumnNames.CellPrice, value);
			}
		}

		public virtual string BuyPrice
	    {
			get
	        {
				return base.Getstring(ColumnNames.BuyPrice);
			}
			set
	        {
				base.Setstring(ColumnNames.BuyPrice, value);
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
	
		public virtual string s_MineralID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.MineralID) ? string.Empty : base.GetintAsString(ColumnNames.MineralID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.MineralID);
				else
					this.MineralID = base.SetintAsString(ColumnNames.MineralID, value);
			}
		}

		public virtual string s_MinID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.MinID) ? string.Empty : base.GetintAsString(ColumnNames.MinID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.MinID);
				else
					this.MinID = base.SetintAsString(ColumnNames.MinID, value);
			}
		}

		public virtual string s_CellPrice
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CellPrice) ? string.Empty : base.GetstringAsString(ColumnNames.CellPrice);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CellPrice);
				else
					this.CellPrice = base.SetstringAsString(ColumnNames.CellPrice, value);
			}
		}

		public virtual string s_BuyPrice
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.BuyPrice) ? string.Empty : base.GetstringAsString(ColumnNames.BuyPrice);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.BuyPrice);
				else
					this.BuyPrice = base.SetstringAsString(ColumnNames.BuyPrice, value);
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
				
				
				public WhereParameter MineralID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.MineralID, Parameters.MineralID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter MinID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.MinID, Parameters.MinID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CellPrice
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CellPrice, Parameters.CellPrice);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter BuyPrice
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.BuyPrice, Parameters.BuyPrice);
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
		
			public WhereParameter MineralID
		    {
				get
		        {
					if(_MineralID_W == null)
	        	    {
						_MineralID_W = TearOff.MineralID;
					}
					return _MineralID_W;
				}
			}

			public WhereParameter MinID
		    {
				get
		        {
					if(_MinID_W == null)
	        	    {
						_MinID_W = TearOff.MinID;
					}
					return _MinID_W;
				}
			}

			public WhereParameter CellPrice
		    {
				get
		        {
					if(_CellPrice_W == null)
	        	    {
						_CellPrice_W = TearOff.CellPrice;
					}
					return _CellPrice_W;
				}
			}

			public WhereParameter BuyPrice
		    {
				get
		        {
					if(_BuyPrice_W == null)
	        	    {
						_BuyPrice_W = TearOff.BuyPrice;
					}
					return _BuyPrice_W;
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

			private WhereParameter _MineralID_W = null;
			private WhereParameter _MinID_W = null;
			private WhereParameter _CellPrice_W = null;
			private WhereParameter _BuyPrice_W = null;
			private WhereParameter _CreatedDate_W = null;

			public void WhereClauseReset()
			{
				_MineralID_W = null;
				_MinID_W = null;
				_CellPrice_W = null;
				_BuyPrice_W = null;
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
				
				
				public AggregateParameter MineralID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.MineralID, Parameters.MineralID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter MinID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.MinID, Parameters.MinID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CellPrice
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CellPrice, Parameters.CellPrice);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter BuyPrice
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.BuyPrice, Parameters.BuyPrice);
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
		
			public AggregateParameter MineralID
		    {
				get
		        {
					if(_MineralID_W == null)
	        	    {
						_MineralID_W = TearOff.MineralID;
					}
					return _MineralID_W;
				}
			}

			public AggregateParameter MinID
		    {
				get
		        {
					if(_MinID_W == null)
	        	    {
						_MinID_W = TearOff.MinID;
					}
					return _MinID_W;
				}
			}

			public AggregateParameter CellPrice
		    {
				get
		        {
					if(_CellPrice_W == null)
	        	    {
						_CellPrice_W = TearOff.CellPrice;
					}
					return _CellPrice_W;
				}
			}

			public AggregateParameter BuyPrice
		    {
				get
		        {
					if(_BuyPrice_W == null)
	        	    {
						_BuyPrice_W = TearOff.BuyPrice;
					}
					return _BuyPrice_W;
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

			private AggregateParameter _MineralID_W = null;
			private AggregateParameter _MinID_W = null;
			private AggregateParameter _CellPrice_W = null;
			private AggregateParameter _BuyPrice_W = null;
			private AggregateParameter _CreatedDate_W = null;

			public void AggregateClauseReset()
			{
				_MineralID_W = null;
				_MinID_W = null;
				_CellPrice_W = null;
				_BuyPrice_W = null;
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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MineralInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.MineralID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MineralUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MineralDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.MineralID);
			p.SourceColumn = ColumnNames.MineralID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.MineralID);
			p.SourceColumn = ColumnNames.MineralID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.MinID);
			p.SourceColumn = ColumnNames.MinID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CellPrice);
			p.SourceColumn = ColumnNames.CellPrice;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.BuyPrice);
			p.SourceColumn = ColumnNames.BuyPrice;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CreatedDate);
			p.SourceColumn = ColumnNames.CreatedDate;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
