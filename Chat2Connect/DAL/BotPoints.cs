
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

namespace DAL
{
	public abstract class _BotPoints : SqlClientEntity
	{
		public _BotPoints()
		{
			this.QuerySource = "BotPoints";
			this.MappingName = "BotPoints";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_BotPointsLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int ID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ID, ID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_BotPointsLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ID
			{
				get
				{
					return new SqlParameter("@ID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter BotID
			{
				get
				{
					return new SqlParameter("@BotID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Points
			{
				get
				{
					return new SqlParameter("@Points", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter BotDurationID
			{
				get
				{
					return new SqlParameter("@BotDurationID", SqlDbType.Int, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ID = "ID";
            public const string BotID = "BotID";
            public const string Points = "Points";
            public const string BotDurationID = "BotDurationID";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ID] = _BotPoints.PropertyNames.ID;
					ht[BotID] = _BotPoints.PropertyNames.BotID;
					ht[Points] = _BotPoints.PropertyNames.Points;
					ht[BotDurationID] = _BotPoints.PropertyNames.BotDurationID;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string ID = "ID";
            public const string BotID = "BotID";
            public const string Points = "Points";
            public const string BotDurationID = "BotDurationID";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ID] = _BotPoints.ColumnNames.ID;
					ht[BotID] = _BotPoints.ColumnNames.BotID;
					ht[Points] = _BotPoints.ColumnNames.Points;
					ht[BotDurationID] = _BotPoints.ColumnNames.BotDurationID;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string ID = "s_ID";
            public const string BotID = "s_BotID";
            public const string Points = "s_Points";
            public const string BotDurationID = "s_BotDurationID";

		}
		#endregion		
		
		#region Properties
	
		public virtual int ID
	    {
			get
	        {
				return base.Getint(ColumnNames.ID);
			}
			set
	        {
				base.Setint(ColumnNames.ID, value);
			}
		}

		public virtual int BotID
	    {
			get
	        {
				return base.Getint(ColumnNames.BotID);
			}
			set
	        {
				base.Setint(ColumnNames.BotID, value);
			}
		}

		public virtual int Points
	    {
			get
	        {
				return base.Getint(ColumnNames.Points);
			}
			set
	        {
				base.Setint(ColumnNames.Points, value);
			}
		}

		public virtual int BotDurationID
	    {
			get
	        {
				return base.Getint(ColumnNames.BotDurationID);
			}
			set
	        {
				base.Setint(ColumnNames.BotDurationID, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ID) ? string.Empty : base.GetintAsString(ColumnNames.ID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ID);
				else
					this.ID = base.SetintAsString(ColumnNames.ID, value);
			}
		}

		public virtual string s_BotID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.BotID) ? string.Empty : base.GetintAsString(ColumnNames.BotID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.BotID);
				else
					this.BotID = base.SetintAsString(ColumnNames.BotID, value);
			}
		}

		public virtual string s_Points
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Points) ? string.Empty : base.GetintAsString(ColumnNames.Points);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Points);
				else
					this.Points = base.SetintAsString(ColumnNames.Points, value);
			}
		}

		public virtual string s_BotDurationID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.BotDurationID) ? string.Empty : base.GetintAsString(ColumnNames.BotDurationID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.BotDurationID);
				else
					this.BotDurationID = base.SetintAsString(ColumnNames.BotDurationID, value);
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
				
				
				public WhereParameter ID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ID, Parameters.ID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter BotID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.BotID, Parameters.BotID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Points
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Points, Parameters.Points);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter BotDurationID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.BotDurationID, Parameters.BotDurationID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter ID
		    {
				get
		        {
					if(_ID_W == null)
	        	    {
						_ID_W = TearOff.ID;
					}
					return _ID_W;
				}
			}

			public WhereParameter BotID
		    {
				get
		        {
					if(_BotID_W == null)
	        	    {
						_BotID_W = TearOff.BotID;
					}
					return _BotID_W;
				}
			}

			public WhereParameter Points
		    {
				get
		        {
					if(_Points_W == null)
	        	    {
						_Points_W = TearOff.Points;
					}
					return _Points_W;
				}
			}

			public WhereParameter BotDurationID
		    {
				get
		        {
					if(_BotDurationID_W == null)
	        	    {
						_BotDurationID_W = TearOff.BotDurationID;
					}
					return _BotDurationID_W;
				}
			}

			private WhereParameter _ID_W = null;
			private WhereParameter _BotID_W = null;
			private WhereParameter _Points_W = null;
			private WhereParameter _BotDurationID_W = null;

			public void WhereClauseReset()
			{
				_ID_W = null;
				_BotID_W = null;
				_Points_W = null;
				_BotDurationID_W = null;

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
				
				
				public AggregateParameter ID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ID, Parameters.ID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter BotID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.BotID, Parameters.BotID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Points
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Points, Parameters.Points);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter BotDurationID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.BotDurationID, Parameters.BotDurationID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter ID
		    {
				get
		        {
					if(_ID_W == null)
	        	    {
						_ID_W = TearOff.ID;
					}
					return _ID_W;
				}
			}

			public AggregateParameter BotID
		    {
				get
		        {
					if(_BotID_W == null)
	        	    {
						_BotID_W = TearOff.BotID;
					}
					return _BotID_W;
				}
			}

			public AggregateParameter Points
		    {
				get
		        {
					if(_Points_W == null)
	        	    {
						_Points_W = TearOff.Points;
					}
					return _Points_W;
				}
			}

			public AggregateParameter BotDurationID
		    {
				get
		        {
					if(_BotDurationID_W == null)
	        	    {
						_BotDurationID_W = TearOff.BotDurationID;
					}
					return _BotDurationID_W;
				}
			}

			private AggregateParameter _ID_W = null;
			private AggregateParameter _BotID_W = null;
			private AggregateParameter _Points_W = null;
			private AggregateParameter _BotDurationID_W = null;

			public void AggregateClauseReset()
			{
				_ID_W = null;
				_BotID_W = null;
				_Points_W = null;
				_BotDurationID_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_BotPointsInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.ID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_BotPointsUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_BotPointsDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.ID);
			p.SourceColumn = ColumnNames.ID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.ID);
			p.SourceColumn = ColumnNames.ID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.BotID);
			p.SourceColumn = ColumnNames.BotID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Points);
			p.SourceColumn = ColumnNames.Points;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.BotDurationID);
			p.SourceColumn = ColumnNames.BotDurationID;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}