
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

namespace IStock.DAL
{
	public abstract class _DeliveryOrder : SqlClientEntity
	{
		public _DeliveryOrder()
		{
			this.QuerySource = "DeliveryOrder";
			this.MappingName = "DeliveryOrder";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_DeliveryOrderLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int DeliveryOrderID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.DeliveryOrderID, DeliveryOrderID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_DeliveryOrderLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter DeliveryOrderID
			{
				get
				{
					return new SqlParameter("@DeliveryOrderID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter DeliveryOrderNo
			{
				get
				{
					return new SqlParameter("@DeliveryOrderNo", SqlDbType.NVarChar, 10);
				}
			}
			
			public static SqlParameter EmployeeID
			{
				get
				{
					return new SqlParameter("@EmployeeID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ClientID
			{
				get
				{
					return new SqlParameter("@ClientID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter DeliveryOrderDate
			{
				get
				{
					return new SqlParameter("@DeliveryOrderDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter Discount
			{
				get
				{
					return new SqlParameter("@Discount", SqlDbType.Decimal, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string DeliveryOrderID = "DeliveryOrderID";
            public const string DeliveryOrderNo = "DeliveryOrderNo";
            public const string EmployeeID = "EmployeeID";
            public const string ClientID = "ClientID";
            public const string DeliveryOrderDate = "DeliveryOrderDate";
            public const string Discount = "Discount";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[DeliveryOrderID] = _DeliveryOrder.PropertyNames.DeliveryOrderID;
					ht[DeliveryOrderNo] = _DeliveryOrder.PropertyNames.DeliveryOrderNo;
					ht[EmployeeID] = _DeliveryOrder.PropertyNames.EmployeeID;
					ht[ClientID] = _DeliveryOrder.PropertyNames.ClientID;
					ht[DeliveryOrderDate] = _DeliveryOrder.PropertyNames.DeliveryOrderDate;
					ht[Discount] = _DeliveryOrder.PropertyNames.Discount;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string DeliveryOrderID = "DeliveryOrderID";
            public const string DeliveryOrderNo = "DeliveryOrderNo";
            public const string EmployeeID = "EmployeeID";
            public const string ClientID = "ClientID";
            public const string DeliveryOrderDate = "DeliveryOrderDate";
            public const string Discount = "Discount";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[DeliveryOrderID] = _DeliveryOrder.ColumnNames.DeliveryOrderID;
					ht[DeliveryOrderNo] = _DeliveryOrder.ColumnNames.DeliveryOrderNo;
					ht[EmployeeID] = _DeliveryOrder.ColumnNames.EmployeeID;
					ht[ClientID] = _DeliveryOrder.ColumnNames.ClientID;
					ht[DeliveryOrderDate] = _DeliveryOrder.ColumnNames.DeliveryOrderDate;
					ht[Discount] = _DeliveryOrder.ColumnNames.Discount;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string DeliveryOrderID = "s_DeliveryOrderID";
            public const string DeliveryOrderNo = "s_DeliveryOrderNo";
            public const string EmployeeID = "s_EmployeeID";
            public const string ClientID = "s_ClientID";
            public const string DeliveryOrderDate = "s_DeliveryOrderDate";
            public const string Discount = "s_Discount";

		}
		#endregion		
		
		#region Properties
	
		public virtual int DeliveryOrderID
	    {
			get
	        {
				return base.Getint(ColumnNames.DeliveryOrderID);
			}
			set
	        {
				base.Setint(ColumnNames.DeliveryOrderID, value);
			}
		}

		public virtual string DeliveryOrderNo
	    {
			get
	        {
				return base.Getstring(ColumnNames.DeliveryOrderNo);
			}
			set
	        {
				base.Setstring(ColumnNames.DeliveryOrderNo, value);
			}
		}

		public virtual int EmployeeID
	    {
			get
	        {
				return base.Getint(ColumnNames.EmployeeID);
			}
			set
	        {
				base.Setint(ColumnNames.EmployeeID, value);
			}
		}

		public virtual int ClientID
	    {
			get
	        {
				return base.Getint(ColumnNames.ClientID);
			}
			set
	        {
				base.Setint(ColumnNames.ClientID, value);
			}
		}

		public virtual DateTime DeliveryOrderDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.DeliveryOrderDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.DeliveryOrderDate, value);
			}
		}

		public virtual decimal Discount
	    {
			get
	        {
				return base.Getdecimal(ColumnNames.Discount);
			}
			set
	        {
				base.Setdecimal(ColumnNames.Discount, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_DeliveryOrderID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DeliveryOrderID) ? string.Empty : base.GetintAsString(ColumnNames.DeliveryOrderID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DeliveryOrderID);
				else
					this.DeliveryOrderID = base.SetintAsString(ColumnNames.DeliveryOrderID, value);
			}
		}

		public virtual string s_DeliveryOrderNo
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DeliveryOrderNo) ? string.Empty : base.GetstringAsString(ColumnNames.DeliveryOrderNo);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DeliveryOrderNo);
				else
					this.DeliveryOrderNo = base.SetstringAsString(ColumnNames.DeliveryOrderNo, value);
			}
		}

		public virtual string s_EmployeeID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.EmployeeID) ? string.Empty : base.GetintAsString(ColumnNames.EmployeeID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.EmployeeID);
				else
					this.EmployeeID = base.SetintAsString(ColumnNames.EmployeeID, value);
			}
		}

		public virtual string s_ClientID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ClientID) ? string.Empty : base.GetintAsString(ColumnNames.ClientID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ClientID);
				else
					this.ClientID = base.SetintAsString(ColumnNames.ClientID, value);
			}
		}

		public virtual string s_DeliveryOrderDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DeliveryOrderDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.DeliveryOrderDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DeliveryOrderDate);
				else
					this.DeliveryOrderDate = base.SetDateTimeAsString(ColumnNames.DeliveryOrderDate, value);
			}
		}

		public virtual string s_Discount
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Discount) ? string.Empty : base.GetdecimalAsString(ColumnNames.Discount);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Discount);
				else
					this.Discount = base.SetdecimalAsString(ColumnNames.Discount, value);
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
				
				
				public WhereParameter DeliveryOrderID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DeliveryOrderID, Parameters.DeliveryOrderID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter DeliveryOrderNo
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DeliveryOrderNo, Parameters.DeliveryOrderNo);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter EmployeeID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.EmployeeID, Parameters.EmployeeID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ClientID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ClientID, Parameters.ClientID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter DeliveryOrderDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DeliveryOrderDate, Parameters.DeliveryOrderDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Discount
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Discount, Parameters.Discount);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter DeliveryOrderID
		    {
				get
		        {
					if(_DeliveryOrderID_W == null)
	        	    {
						_DeliveryOrderID_W = TearOff.DeliveryOrderID;
					}
					return _DeliveryOrderID_W;
				}
			}

			public WhereParameter DeliveryOrderNo
		    {
				get
		        {
					if(_DeliveryOrderNo_W == null)
	        	    {
						_DeliveryOrderNo_W = TearOff.DeliveryOrderNo;
					}
					return _DeliveryOrderNo_W;
				}
			}

			public WhereParameter EmployeeID
		    {
				get
		        {
					if(_EmployeeID_W == null)
	        	    {
						_EmployeeID_W = TearOff.EmployeeID;
					}
					return _EmployeeID_W;
				}
			}

			public WhereParameter ClientID
		    {
				get
		        {
					if(_ClientID_W == null)
	        	    {
						_ClientID_W = TearOff.ClientID;
					}
					return _ClientID_W;
				}
			}

			public WhereParameter DeliveryOrderDate
		    {
				get
		        {
					if(_DeliveryOrderDate_W == null)
	        	    {
						_DeliveryOrderDate_W = TearOff.DeliveryOrderDate;
					}
					return _DeliveryOrderDate_W;
				}
			}

			public WhereParameter Discount
		    {
				get
		        {
					if(_Discount_W == null)
	        	    {
						_Discount_W = TearOff.Discount;
					}
					return _Discount_W;
				}
			}

			private WhereParameter _DeliveryOrderID_W = null;
			private WhereParameter _DeliveryOrderNo_W = null;
			private WhereParameter _EmployeeID_W = null;
			private WhereParameter _ClientID_W = null;
			private WhereParameter _DeliveryOrderDate_W = null;
			private WhereParameter _Discount_W = null;

			public void WhereClauseReset()
			{
				_DeliveryOrderID_W = null;
				_DeliveryOrderNo_W = null;
				_EmployeeID_W = null;
				_ClientID_W = null;
				_DeliveryOrderDate_W = null;
				_Discount_W = null;

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
				
				
				public AggregateParameter DeliveryOrderID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DeliveryOrderID, Parameters.DeliveryOrderID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter DeliveryOrderNo
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DeliveryOrderNo, Parameters.DeliveryOrderNo);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter EmployeeID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.EmployeeID, Parameters.EmployeeID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ClientID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ClientID, Parameters.ClientID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter DeliveryOrderDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DeliveryOrderDate, Parameters.DeliveryOrderDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Discount
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Discount, Parameters.Discount);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter DeliveryOrderID
		    {
				get
		        {
					if(_DeliveryOrderID_W == null)
	        	    {
						_DeliveryOrderID_W = TearOff.DeliveryOrderID;
					}
					return _DeliveryOrderID_W;
				}
			}

			public AggregateParameter DeliveryOrderNo
		    {
				get
		        {
					if(_DeliveryOrderNo_W == null)
	        	    {
						_DeliveryOrderNo_W = TearOff.DeliveryOrderNo;
					}
					return _DeliveryOrderNo_W;
				}
			}

			public AggregateParameter EmployeeID
		    {
				get
		        {
					if(_EmployeeID_W == null)
	        	    {
						_EmployeeID_W = TearOff.EmployeeID;
					}
					return _EmployeeID_W;
				}
			}

			public AggregateParameter ClientID
		    {
				get
		        {
					if(_ClientID_W == null)
	        	    {
						_ClientID_W = TearOff.ClientID;
					}
					return _ClientID_W;
				}
			}

			public AggregateParameter DeliveryOrderDate
		    {
				get
		        {
					if(_DeliveryOrderDate_W == null)
	        	    {
						_DeliveryOrderDate_W = TearOff.DeliveryOrderDate;
					}
					return _DeliveryOrderDate_W;
				}
			}

			public AggregateParameter Discount
		    {
				get
		        {
					if(_Discount_W == null)
	        	    {
						_Discount_W = TearOff.Discount;
					}
					return _Discount_W;
				}
			}

			private AggregateParameter _DeliveryOrderID_W = null;
			private AggregateParameter _DeliveryOrderNo_W = null;
			private AggregateParameter _EmployeeID_W = null;
			private AggregateParameter _ClientID_W = null;
			private AggregateParameter _DeliveryOrderDate_W = null;
			private AggregateParameter _Discount_W = null;

			public void AggregateClauseReset()
			{
				_DeliveryOrderID_W = null;
				_DeliveryOrderNo_W = null;
				_EmployeeID_W = null;
				_ClientID_W = null;
				_DeliveryOrderDate_W = null;
				_Discount_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_DeliveryOrderInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.DeliveryOrderID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_DeliveryOrderUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_DeliveryOrderDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.DeliveryOrderID);
			p.SourceColumn = ColumnNames.DeliveryOrderID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.DeliveryOrderID);
			p.SourceColumn = ColumnNames.DeliveryOrderID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.DeliveryOrderNo);
			p.SourceColumn = ColumnNames.DeliveryOrderNo;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.EmployeeID);
			p.SourceColumn = ColumnNames.EmployeeID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ClientID);
			p.SourceColumn = ColumnNames.ClientID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.DeliveryOrderDate);
			p.SourceColumn = ColumnNames.DeliveryOrderDate;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Discount);
			p.SourceColumn = ColumnNames.Discount;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
