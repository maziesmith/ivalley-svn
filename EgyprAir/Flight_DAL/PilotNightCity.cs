
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
	public abstract class _PilotNightCity : SqlClientEntity
	{
		public _PilotNightCity()
		{
			this.QuerySource = "PilotNightCity";
			this.MappingName = "PilotNightCity";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_PilotNightCityLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int PilotNightCityID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.PilotNightCityID, PilotNightCityID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_PilotNightCityLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter PilotNightCityID
			{
				get
				{
					return new SqlParameter("@PilotNightCityID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter AirportID
			{
				get
				{
					return new SqlParameter("@AirportID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter PilotID
			{
				get
				{
					return new SqlParameter("@PilotID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CityDate
			{
				get
				{
					return new SqlParameter("@CityDate", SqlDbType.DateTime, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string PilotNightCityID = "PilotNightCityID";
            public const string AirportID = "AirportID";
            public const string PilotID = "PilotID";
            public const string CityDate = "CityDate";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[PilotNightCityID] = _PilotNightCity.PropertyNames.PilotNightCityID;
					ht[AirportID] = _PilotNightCity.PropertyNames.AirportID;
					ht[PilotID] = _PilotNightCity.PropertyNames.PilotID;
					ht[CityDate] = _PilotNightCity.PropertyNames.CityDate;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string PilotNightCityID = "PilotNightCityID";
            public const string AirportID = "AirportID";
            public const string PilotID = "PilotID";
            public const string CityDate = "CityDate";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[PilotNightCityID] = _PilotNightCity.ColumnNames.PilotNightCityID;
					ht[AirportID] = _PilotNightCity.ColumnNames.AirportID;
					ht[PilotID] = _PilotNightCity.ColumnNames.PilotID;
					ht[CityDate] = _PilotNightCity.ColumnNames.CityDate;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string PilotNightCityID = "s_PilotNightCityID";
            public const string AirportID = "s_AirportID";
            public const string PilotID = "s_PilotID";
            public const string CityDate = "s_CityDate";

		}
		#endregion		
		
		#region Properties
	
		public virtual int PilotNightCityID
	    {
			get
	        {
				return base.Getint(ColumnNames.PilotNightCityID);
			}
			set
	        {
				base.Setint(ColumnNames.PilotNightCityID, value);
			}
		}

		public virtual int AirportID
	    {
			get
	        {
				return base.Getint(ColumnNames.AirportID);
			}
			set
	        {
				base.Setint(ColumnNames.AirportID, value);
			}
		}

		public virtual int PilotID
	    {
			get
	        {
				return base.Getint(ColumnNames.PilotID);
			}
			set
	        {
				base.Setint(ColumnNames.PilotID, value);
			}
		}

		public virtual DateTime CityDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.CityDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.CityDate, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_PilotNightCityID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.PilotNightCityID) ? string.Empty : base.GetintAsString(ColumnNames.PilotNightCityID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.PilotNightCityID);
				else
					this.PilotNightCityID = base.SetintAsString(ColumnNames.PilotNightCityID, value);
			}
		}

		public virtual string s_AirportID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.AirportID) ? string.Empty : base.GetintAsString(ColumnNames.AirportID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.AirportID);
				else
					this.AirportID = base.SetintAsString(ColumnNames.AirportID, value);
			}
		}

		public virtual string s_PilotID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.PilotID) ? string.Empty : base.GetintAsString(ColumnNames.PilotID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.PilotID);
				else
					this.PilotID = base.SetintAsString(ColumnNames.PilotID, value);
			}
		}

		public virtual string s_CityDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CityDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.CityDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CityDate);
				else
					this.CityDate = base.SetDateTimeAsString(ColumnNames.CityDate, value);
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
				
				
				public WhereParameter PilotNightCityID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.PilotNightCityID, Parameters.PilotNightCityID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter AirportID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.AirportID, Parameters.AirportID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter PilotID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.PilotID, Parameters.PilotID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CityDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CityDate, Parameters.CityDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter PilotNightCityID
		    {
				get
		        {
					if(_PilotNightCityID_W == null)
	        	    {
						_PilotNightCityID_W = TearOff.PilotNightCityID;
					}
					return _PilotNightCityID_W;
				}
			}

			public WhereParameter AirportID
		    {
				get
		        {
					if(_AirportID_W == null)
	        	    {
						_AirportID_W = TearOff.AirportID;
					}
					return _AirportID_W;
				}
			}

			public WhereParameter PilotID
		    {
				get
		        {
					if(_PilotID_W == null)
	        	    {
						_PilotID_W = TearOff.PilotID;
					}
					return _PilotID_W;
				}
			}

			public WhereParameter CityDate
		    {
				get
		        {
					if(_CityDate_W == null)
	        	    {
						_CityDate_W = TearOff.CityDate;
					}
					return _CityDate_W;
				}
			}

			private WhereParameter _PilotNightCityID_W = null;
			private WhereParameter _AirportID_W = null;
			private WhereParameter _PilotID_W = null;
			private WhereParameter _CityDate_W = null;

			public void WhereClauseReset()
			{
				_PilotNightCityID_W = null;
				_AirportID_W = null;
				_PilotID_W = null;
				_CityDate_W = null;

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
				
				
				public AggregateParameter PilotNightCityID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.PilotNightCityID, Parameters.PilotNightCityID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter AirportID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.AirportID, Parameters.AirportID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter PilotID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.PilotID, Parameters.PilotID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CityDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CityDate, Parameters.CityDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter PilotNightCityID
		    {
				get
		        {
					if(_PilotNightCityID_W == null)
	        	    {
						_PilotNightCityID_W = TearOff.PilotNightCityID;
					}
					return _PilotNightCityID_W;
				}
			}

			public AggregateParameter AirportID
		    {
				get
		        {
					if(_AirportID_W == null)
	        	    {
						_AirportID_W = TearOff.AirportID;
					}
					return _AirportID_W;
				}
			}

			public AggregateParameter PilotID
		    {
				get
		        {
					if(_PilotID_W == null)
	        	    {
						_PilotID_W = TearOff.PilotID;
					}
					return _PilotID_W;
				}
			}

			public AggregateParameter CityDate
		    {
				get
		        {
					if(_CityDate_W == null)
	        	    {
						_CityDate_W = TearOff.CityDate;
					}
					return _CityDate_W;
				}
			}

			private AggregateParameter _PilotNightCityID_W = null;
			private AggregateParameter _AirportID_W = null;
			private AggregateParameter _PilotID_W = null;
			private AggregateParameter _CityDate_W = null;

			public void AggregateClauseReset()
			{
				_PilotNightCityID_W = null;
				_AirportID_W = null;
				_PilotID_W = null;
				_CityDate_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_PilotNightCityInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.PilotNightCityID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_PilotNightCityUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_PilotNightCityDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.PilotNightCityID);
			p.SourceColumn = ColumnNames.PilotNightCityID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.PilotNightCityID);
			p.SourceColumn = ColumnNames.PilotNightCityID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.AirportID);
			p.SourceColumn = ColumnNames.AirportID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.PilotID);
			p.SourceColumn = ColumnNames.PilotID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CityDate);
			p.SourceColumn = ColumnNames.CityDate;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
