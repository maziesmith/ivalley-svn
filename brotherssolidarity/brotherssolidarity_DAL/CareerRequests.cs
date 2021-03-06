
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
	public abstract class _CareerRequests : SqlClientEntity
	{
		public _CareerRequests()
		{
			this.QuerySource = "CareerRequests";
			this.MappingName = "CareerRequests";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_CareerRequestsLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int CareerRequestsID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.CareerRequestsID, CareerRequestsID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_CareerRequestsLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter CareerRequestsID
			{
				get
				{
					return new SqlParameter("@CareerRequestsID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CareerID
			{
				get
				{
					return new SqlParameter("@CareerID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter RequesterName
			{
				get
				{
					return new SqlParameter("@RequesterName", SqlDbType.NVarChar, 50);
				}
			}
			
			public static SqlParameter RequesterDescription
			{
				get
				{
					return new SqlParameter("@RequesterDescription", SqlDbType.NVarChar, 500);
				}
			}
			
			public static SqlParameter RequesterEmail
			{
				get
				{
					return new SqlParameter("@RequesterEmail", SqlDbType.NVarChar, 50);
				}
			}
			
			public static SqlParameter CVPath
			{
				get
				{
					return new SqlParameter("@CVPath", SqlDbType.NVarChar, 250);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string CareerRequestsID = "CareerRequestsID";
            public const string CareerID = "CareerID";
            public const string RequesterName = "RequesterName";
            public const string RequesterDescription = "RequesterDescription";
            public const string RequesterEmail = "RequesterEmail";
            public const string CVPath = "CVPath";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[CareerRequestsID] = _CareerRequests.PropertyNames.CareerRequestsID;
					ht[CareerID] = _CareerRequests.PropertyNames.CareerID;
					ht[RequesterName] = _CareerRequests.PropertyNames.RequesterName;
					ht[RequesterDescription] = _CareerRequests.PropertyNames.RequesterDescription;
					ht[RequesterEmail] = _CareerRequests.PropertyNames.RequesterEmail;
					ht[CVPath] = _CareerRequests.PropertyNames.CVPath;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string CareerRequestsID = "CareerRequestsID";
            public const string CareerID = "CareerID";
            public const string RequesterName = "RequesterName";
            public const string RequesterDescription = "RequesterDescription";
            public const string RequesterEmail = "RequesterEmail";
            public const string CVPath = "CVPath";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[CareerRequestsID] = _CareerRequests.ColumnNames.CareerRequestsID;
					ht[CareerID] = _CareerRequests.ColumnNames.CareerID;
					ht[RequesterName] = _CareerRequests.ColumnNames.RequesterName;
					ht[RequesterDescription] = _CareerRequests.ColumnNames.RequesterDescription;
					ht[RequesterEmail] = _CareerRequests.ColumnNames.RequesterEmail;
					ht[CVPath] = _CareerRequests.ColumnNames.CVPath;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string CareerRequestsID = "s_CareerRequestsID";
            public const string CareerID = "s_CareerID";
            public const string RequesterName = "s_RequesterName";
            public const string RequesterDescription = "s_RequesterDescription";
            public const string RequesterEmail = "s_RequesterEmail";
            public const string CVPath = "s_CVPath";

		}
		#endregion		
		
		#region Properties
	
		public virtual int CareerRequestsID
	    {
			get
	        {
				return base.Getint(ColumnNames.CareerRequestsID);
			}
			set
	        {
				base.Setint(ColumnNames.CareerRequestsID, value);
			}
		}

		public virtual int CareerID
	    {
			get
	        {
				return base.Getint(ColumnNames.CareerID);
			}
			set
	        {
				base.Setint(ColumnNames.CareerID, value);
			}
		}

		public virtual string RequesterName
	    {
			get
	        {
				return base.Getstring(ColumnNames.RequesterName);
			}
			set
	        {
				base.Setstring(ColumnNames.RequesterName, value);
			}
		}

		public virtual string RequesterDescription
	    {
			get
	        {
				return base.Getstring(ColumnNames.RequesterDescription);
			}
			set
	        {
				base.Setstring(ColumnNames.RequesterDescription, value);
			}
		}

		public virtual string RequesterEmail
	    {
			get
	        {
				return base.Getstring(ColumnNames.RequesterEmail);
			}
			set
	        {
				base.Setstring(ColumnNames.RequesterEmail, value);
			}
		}

		public virtual string CVPath
	    {
			get
	        {
				return base.Getstring(ColumnNames.CVPath);
			}
			set
	        {
				base.Setstring(ColumnNames.CVPath, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_CareerRequestsID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CareerRequestsID) ? string.Empty : base.GetintAsString(ColumnNames.CareerRequestsID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CareerRequestsID);
				else
					this.CareerRequestsID = base.SetintAsString(ColumnNames.CareerRequestsID, value);
			}
		}

		public virtual string s_CareerID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CareerID) ? string.Empty : base.GetintAsString(ColumnNames.CareerID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CareerID);
				else
					this.CareerID = base.SetintAsString(ColumnNames.CareerID, value);
			}
		}

		public virtual string s_RequesterName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.RequesterName) ? string.Empty : base.GetstringAsString(ColumnNames.RequesterName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.RequesterName);
				else
					this.RequesterName = base.SetstringAsString(ColumnNames.RequesterName, value);
			}
		}

		public virtual string s_RequesterDescription
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.RequesterDescription) ? string.Empty : base.GetstringAsString(ColumnNames.RequesterDescription);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.RequesterDescription);
				else
					this.RequesterDescription = base.SetstringAsString(ColumnNames.RequesterDescription, value);
			}
		}

		public virtual string s_RequesterEmail
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.RequesterEmail) ? string.Empty : base.GetstringAsString(ColumnNames.RequesterEmail);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.RequesterEmail);
				else
					this.RequesterEmail = base.SetstringAsString(ColumnNames.RequesterEmail, value);
			}
		}

		public virtual string s_CVPath
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CVPath) ? string.Empty : base.GetstringAsString(ColumnNames.CVPath);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CVPath);
				else
					this.CVPath = base.SetstringAsString(ColumnNames.CVPath, value);
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
				
				
				public WhereParameter CareerRequestsID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CareerRequestsID, Parameters.CareerRequestsID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CareerID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CareerID, Parameters.CareerID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter RequesterName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.RequesterName, Parameters.RequesterName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter RequesterDescription
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.RequesterDescription, Parameters.RequesterDescription);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter RequesterEmail
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.RequesterEmail, Parameters.RequesterEmail);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CVPath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CVPath, Parameters.CVPath);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter CareerRequestsID
		    {
				get
		        {
					if(_CareerRequestsID_W == null)
	        	    {
						_CareerRequestsID_W = TearOff.CareerRequestsID;
					}
					return _CareerRequestsID_W;
				}
			}

			public WhereParameter CareerID
		    {
				get
		        {
					if(_CareerID_W == null)
	        	    {
						_CareerID_W = TearOff.CareerID;
					}
					return _CareerID_W;
				}
			}

			public WhereParameter RequesterName
		    {
				get
		        {
					if(_RequesterName_W == null)
	        	    {
						_RequesterName_W = TearOff.RequesterName;
					}
					return _RequesterName_W;
				}
			}

			public WhereParameter RequesterDescription
		    {
				get
		        {
					if(_RequesterDescription_W == null)
	        	    {
						_RequesterDescription_W = TearOff.RequesterDescription;
					}
					return _RequesterDescription_W;
				}
			}

			public WhereParameter RequesterEmail
		    {
				get
		        {
					if(_RequesterEmail_W == null)
	        	    {
						_RequesterEmail_W = TearOff.RequesterEmail;
					}
					return _RequesterEmail_W;
				}
			}

			public WhereParameter CVPath
		    {
				get
		        {
					if(_CVPath_W == null)
	        	    {
						_CVPath_W = TearOff.CVPath;
					}
					return _CVPath_W;
				}
			}

			private WhereParameter _CareerRequestsID_W = null;
			private WhereParameter _CareerID_W = null;
			private WhereParameter _RequesterName_W = null;
			private WhereParameter _RequesterDescription_W = null;
			private WhereParameter _RequesterEmail_W = null;
			private WhereParameter _CVPath_W = null;

			public void WhereClauseReset()
			{
				_CareerRequestsID_W = null;
				_CareerID_W = null;
				_RequesterName_W = null;
				_RequesterDescription_W = null;
				_RequesterEmail_W = null;
				_CVPath_W = null;

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
				
				
				public AggregateParameter CareerRequestsID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CareerRequestsID, Parameters.CareerRequestsID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CareerID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CareerID, Parameters.CareerID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter RequesterName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.RequesterName, Parameters.RequesterName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter RequesterDescription
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.RequesterDescription, Parameters.RequesterDescription);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter RequesterEmail
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.RequesterEmail, Parameters.RequesterEmail);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CVPath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CVPath, Parameters.CVPath);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter CareerRequestsID
		    {
				get
		        {
					if(_CareerRequestsID_W == null)
	        	    {
						_CareerRequestsID_W = TearOff.CareerRequestsID;
					}
					return _CareerRequestsID_W;
				}
			}

			public AggregateParameter CareerID
		    {
				get
		        {
					if(_CareerID_W == null)
	        	    {
						_CareerID_W = TearOff.CareerID;
					}
					return _CareerID_W;
				}
			}

			public AggregateParameter RequesterName
		    {
				get
		        {
					if(_RequesterName_W == null)
	        	    {
						_RequesterName_W = TearOff.RequesterName;
					}
					return _RequesterName_W;
				}
			}

			public AggregateParameter RequesterDescription
		    {
				get
		        {
					if(_RequesterDescription_W == null)
	        	    {
						_RequesterDescription_W = TearOff.RequesterDescription;
					}
					return _RequesterDescription_W;
				}
			}

			public AggregateParameter RequesterEmail
		    {
				get
		        {
					if(_RequesterEmail_W == null)
	        	    {
						_RequesterEmail_W = TearOff.RequesterEmail;
					}
					return _RequesterEmail_W;
				}
			}

			public AggregateParameter CVPath
		    {
				get
		        {
					if(_CVPath_W == null)
	        	    {
						_CVPath_W = TearOff.CVPath;
					}
					return _CVPath_W;
				}
			}

			private AggregateParameter _CareerRequestsID_W = null;
			private AggregateParameter _CareerID_W = null;
			private AggregateParameter _RequesterName_W = null;
			private AggregateParameter _RequesterDescription_W = null;
			private AggregateParameter _RequesterEmail_W = null;
			private AggregateParameter _CVPath_W = null;

			public void AggregateClauseReset()
			{
				_CareerRequestsID_W = null;
				_CareerID_W = null;
				_RequesterName_W = null;
				_RequesterDescription_W = null;
				_RequesterEmail_W = null;
				_CVPath_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_CareerRequestsInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.CareerRequestsID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_CareerRequestsUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_CareerRequestsDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.CareerRequestsID);
			p.SourceColumn = ColumnNames.CareerRequestsID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.CareerRequestsID);
			p.SourceColumn = ColumnNames.CareerRequestsID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CareerID);
			p.SourceColumn = ColumnNames.CareerID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.RequesterName);
			p.SourceColumn = ColumnNames.RequesterName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.RequesterDescription);
			p.SourceColumn = ColumnNames.RequesterDescription;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.RequesterEmail);
			p.SourceColumn = ColumnNames.RequesterEmail;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CVPath);
			p.SourceColumn = ColumnNames.CVPath;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
