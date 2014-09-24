
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

namespace ITravel.DAL
{
	public abstract class _Passenger : SqlClientEntity
	{
		public _Passenger()
		{
			this.QuerySource = "Passenger";
			this.MappingName = "Passenger";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_PassengerLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int PassengerID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.PassengerID, PassengerID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_PassengerLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter PassengerID
			{
				get
				{
					return new SqlParameter("@PassengerID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter TitleID
			{
				get
				{
					return new SqlParameter("@TitleID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter FirstName
			{
				get
				{
					return new SqlParameter("@FirstName", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter LastName
			{
				get
				{
					return new SqlParameter("@LastName", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter DateOfBirth
			{
				get
				{
					return new SqlParameter("@DateOfBirth", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter IsChild
			{
				get
				{
					return new SqlParameter("@IsChild", SqlDbType.Bit, 0);
				}
			}
			
			public static SqlParameter TicketID
			{
				get
				{
					return new SqlParameter("@TicketID", SqlDbType.Int, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string PassengerID = "PassengerID";
            public const string TitleID = "TitleID";
            public const string FirstName = "FirstName";
            public const string LastName = "LastName";
            public const string DateOfBirth = "DateOfBirth";
            public const string IsChild = "IsChild";
            public const string TicketID = "TicketID";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[PassengerID] = _Passenger.PropertyNames.PassengerID;
					ht[TitleID] = _Passenger.PropertyNames.TitleID;
					ht[FirstName] = _Passenger.PropertyNames.FirstName;
					ht[LastName] = _Passenger.PropertyNames.LastName;
					ht[DateOfBirth] = _Passenger.PropertyNames.DateOfBirth;
					ht[IsChild] = _Passenger.PropertyNames.IsChild;
					ht[TicketID] = _Passenger.PropertyNames.TicketID;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string PassengerID = "PassengerID";
            public const string TitleID = "TitleID";
            public const string FirstName = "FirstName";
            public const string LastName = "LastName";
            public const string DateOfBirth = "DateOfBirth";
            public const string IsChild = "IsChild";
            public const string TicketID = "TicketID";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[PassengerID] = _Passenger.ColumnNames.PassengerID;
					ht[TitleID] = _Passenger.ColumnNames.TitleID;
					ht[FirstName] = _Passenger.ColumnNames.FirstName;
					ht[LastName] = _Passenger.ColumnNames.LastName;
					ht[DateOfBirth] = _Passenger.ColumnNames.DateOfBirth;
					ht[IsChild] = _Passenger.ColumnNames.IsChild;
					ht[TicketID] = _Passenger.ColumnNames.TicketID;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string PassengerID = "s_PassengerID";
            public const string TitleID = "s_TitleID";
            public const string FirstName = "s_FirstName";
            public const string LastName = "s_LastName";
            public const string DateOfBirth = "s_DateOfBirth";
            public const string IsChild = "s_IsChild";
            public const string TicketID = "s_TicketID";

		}
		#endregion		
		
		#region Properties
	
		public virtual int PassengerID
	    {
			get
	        {
				return base.Getint(ColumnNames.PassengerID);
			}
			set
	        {
				base.Setint(ColumnNames.PassengerID, value);
			}
		}

		public virtual int TitleID
	    {
			get
	        {
				return base.Getint(ColumnNames.TitleID);
			}
			set
	        {
				base.Setint(ColumnNames.TitleID, value);
			}
		}

		public virtual string FirstName
	    {
			get
	        {
				return base.Getstring(ColumnNames.FirstName);
			}
			set
	        {
				base.Setstring(ColumnNames.FirstName, value);
			}
		}

		public virtual string LastName
	    {
			get
	        {
				return base.Getstring(ColumnNames.LastName);
			}
			set
	        {
				base.Setstring(ColumnNames.LastName, value);
			}
		}

		public virtual DateTime DateOfBirth
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.DateOfBirth);
			}
			set
	        {
				base.SetDateTime(ColumnNames.DateOfBirth, value);
			}
		}

		public virtual bool IsChild
	    {
			get
	        {
				return base.Getbool(ColumnNames.IsChild);
			}
			set
	        {
				base.Setbool(ColumnNames.IsChild, value);
			}
		}

		public virtual int TicketID
	    {
			get
	        {
				return base.Getint(ColumnNames.TicketID);
			}
			set
	        {
				base.Setint(ColumnNames.TicketID, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_PassengerID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.PassengerID) ? string.Empty : base.GetintAsString(ColumnNames.PassengerID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.PassengerID);
				else
					this.PassengerID = base.SetintAsString(ColumnNames.PassengerID, value);
			}
		}

		public virtual string s_TitleID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.TitleID) ? string.Empty : base.GetintAsString(ColumnNames.TitleID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.TitleID);
				else
					this.TitleID = base.SetintAsString(ColumnNames.TitleID, value);
			}
		}

		public virtual string s_FirstName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.FirstName) ? string.Empty : base.GetstringAsString(ColumnNames.FirstName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.FirstName);
				else
					this.FirstName = base.SetstringAsString(ColumnNames.FirstName, value);
			}
		}

		public virtual string s_LastName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.LastName) ? string.Empty : base.GetstringAsString(ColumnNames.LastName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.LastName);
				else
					this.LastName = base.SetstringAsString(ColumnNames.LastName, value);
			}
		}

		public virtual string s_DateOfBirth
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DateOfBirth) ? string.Empty : base.GetDateTimeAsString(ColumnNames.DateOfBirth);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DateOfBirth);
				else
					this.DateOfBirth = base.SetDateTimeAsString(ColumnNames.DateOfBirth, value);
			}
		}

		public virtual string s_IsChild
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.IsChild) ? string.Empty : base.GetboolAsString(ColumnNames.IsChild);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.IsChild);
				else
					this.IsChild = base.SetboolAsString(ColumnNames.IsChild, value);
			}
		}

		public virtual string s_TicketID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.TicketID) ? string.Empty : base.GetintAsString(ColumnNames.TicketID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.TicketID);
				else
					this.TicketID = base.SetintAsString(ColumnNames.TicketID, value);
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
				
				
				public WhereParameter PassengerID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.PassengerID, Parameters.PassengerID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter TitleID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.TitleID, Parameters.TitleID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter FirstName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.FirstName, Parameters.FirstName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter LastName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.LastName, Parameters.LastName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter DateOfBirth
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DateOfBirth, Parameters.DateOfBirth);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter IsChild
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.IsChild, Parameters.IsChild);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter TicketID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.TicketID, Parameters.TicketID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter PassengerID
		    {
				get
		        {
					if(_PassengerID_W == null)
	        	    {
						_PassengerID_W = TearOff.PassengerID;
					}
					return _PassengerID_W;
				}
			}

			public WhereParameter TitleID
		    {
				get
		        {
					if(_TitleID_W == null)
	        	    {
						_TitleID_W = TearOff.TitleID;
					}
					return _TitleID_W;
				}
			}

			public WhereParameter FirstName
		    {
				get
		        {
					if(_FirstName_W == null)
	        	    {
						_FirstName_W = TearOff.FirstName;
					}
					return _FirstName_W;
				}
			}

			public WhereParameter LastName
		    {
				get
		        {
					if(_LastName_W == null)
	        	    {
						_LastName_W = TearOff.LastName;
					}
					return _LastName_W;
				}
			}

			public WhereParameter DateOfBirth
		    {
				get
		        {
					if(_DateOfBirth_W == null)
	        	    {
						_DateOfBirth_W = TearOff.DateOfBirth;
					}
					return _DateOfBirth_W;
				}
			}

			public WhereParameter IsChild
		    {
				get
		        {
					if(_IsChild_W == null)
	        	    {
						_IsChild_W = TearOff.IsChild;
					}
					return _IsChild_W;
				}
			}

			public WhereParameter TicketID
		    {
				get
		        {
					if(_TicketID_W == null)
	        	    {
						_TicketID_W = TearOff.TicketID;
					}
					return _TicketID_W;
				}
			}

			private WhereParameter _PassengerID_W = null;
			private WhereParameter _TitleID_W = null;
			private WhereParameter _FirstName_W = null;
			private WhereParameter _LastName_W = null;
			private WhereParameter _DateOfBirth_W = null;
			private WhereParameter _IsChild_W = null;
			private WhereParameter _TicketID_W = null;

			public void WhereClauseReset()
			{
				_PassengerID_W = null;
				_TitleID_W = null;
				_FirstName_W = null;
				_LastName_W = null;
				_DateOfBirth_W = null;
				_IsChild_W = null;
				_TicketID_W = null;

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
				
				
				public AggregateParameter PassengerID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.PassengerID, Parameters.PassengerID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter TitleID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.TitleID, Parameters.TitleID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter FirstName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.FirstName, Parameters.FirstName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter LastName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.LastName, Parameters.LastName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter DateOfBirth
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DateOfBirth, Parameters.DateOfBirth);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter IsChild
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.IsChild, Parameters.IsChild);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter TicketID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.TicketID, Parameters.TicketID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter PassengerID
		    {
				get
		        {
					if(_PassengerID_W == null)
	        	    {
						_PassengerID_W = TearOff.PassengerID;
					}
					return _PassengerID_W;
				}
			}

			public AggregateParameter TitleID
		    {
				get
		        {
					if(_TitleID_W == null)
	        	    {
						_TitleID_W = TearOff.TitleID;
					}
					return _TitleID_W;
				}
			}

			public AggregateParameter FirstName
		    {
				get
		        {
					if(_FirstName_W == null)
	        	    {
						_FirstName_W = TearOff.FirstName;
					}
					return _FirstName_W;
				}
			}

			public AggregateParameter LastName
		    {
				get
		        {
					if(_LastName_W == null)
	        	    {
						_LastName_W = TearOff.LastName;
					}
					return _LastName_W;
				}
			}

			public AggregateParameter DateOfBirth
		    {
				get
		        {
					if(_DateOfBirth_W == null)
	        	    {
						_DateOfBirth_W = TearOff.DateOfBirth;
					}
					return _DateOfBirth_W;
				}
			}

			public AggregateParameter IsChild
		    {
				get
		        {
					if(_IsChild_W == null)
	        	    {
						_IsChild_W = TearOff.IsChild;
					}
					return _IsChild_W;
				}
			}

			public AggregateParameter TicketID
		    {
				get
		        {
					if(_TicketID_W == null)
	        	    {
						_TicketID_W = TearOff.TicketID;
					}
					return _TicketID_W;
				}
			}

			private AggregateParameter _PassengerID_W = null;
			private AggregateParameter _TitleID_W = null;
			private AggregateParameter _FirstName_W = null;
			private AggregateParameter _LastName_W = null;
			private AggregateParameter _DateOfBirth_W = null;
			private AggregateParameter _IsChild_W = null;
			private AggregateParameter _TicketID_W = null;

			public void AggregateClauseReset()
			{
				_PassengerID_W = null;
				_TitleID_W = null;
				_FirstName_W = null;
				_LastName_W = null;
				_DateOfBirth_W = null;
				_IsChild_W = null;
				_TicketID_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_PassengerInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.PassengerID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_PassengerUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_PassengerDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.PassengerID);
			p.SourceColumn = ColumnNames.PassengerID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.PassengerID);
			p.SourceColumn = ColumnNames.PassengerID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.TitleID);
			p.SourceColumn = ColumnNames.TitleID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.FirstName);
			p.SourceColumn = ColumnNames.FirstName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.LastName);
			p.SourceColumn = ColumnNames.LastName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.DateOfBirth);
			p.SourceColumn = ColumnNames.DateOfBirth;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.IsChild);
			p.SourceColumn = ColumnNames.IsChild;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.TicketID);
			p.SourceColumn = ColumnNames.TicketID;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}