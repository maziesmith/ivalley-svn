
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

namespace Pricing.DAL
{
	public abstract class _SubstancesReference : SqlClientEntity
	{
		public _SubstancesReference()
		{
			this.QuerySource = "SubstancesReference";
			this.MappingName = "SubstancesReference";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_SubstancesReferenceLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int SubstancesReferenceID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.SubstancesReferenceID, SubstancesReferenceID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_SubstancesReferenceLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter SubstancesReferenceID
			{
				get
				{
					return new SqlParameter("@SubstancesReferenceID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Name
			{
				get
				{
					return new SqlParameter("@Name", SqlDbType.NVarChar, 50);
				}
			}
			
			public static SqlParameter Description
			{
				get
				{
					return new SqlParameter("@Description", SqlDbType.NVarChar, 500);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string SubstancesReferenceID = "SubstancesReferenceID";
            public const string Name = "name";
            public const string Description = "description";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[SubstancesReferenceID] = _SubstancesReference.PropertyNames.SubstancesReferenceID;
					ht[Name] = _SubstancesReference.PropertyNames.Name;
					ht[Description] = _SubstancesReference.PropertyNames.Description;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string SubstancesReferenceID = "SubstancesReferenceID";
            public const string Name = "Name";
            public const string Description = "Description";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[SubstancesReferenceID] = _SubstancesReference.ColumnNames.SubstancesReferenceID;
					ht[Name] = _SubstancesReference.ColumnNames.Name;
					ht[Description] = _SubstancesReference.ColumnNames.Description;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string SubstancesReferenceID = "s_SubstancesReferenceID";
            public const string Name = "s_Name";
            public const string Description = "s_Description";

		}
		#endregion		
		
		#region Properties
	
		public virtual int SubstancesReferenceID
	    {
			get
	        {
				return base.Getint(ColumnNames.SubstancesReferenceID);
			}
			set
	        {
				base.Setint(ColumnNames.SubstancesReferenceID, value);
			}
		}

		public virtual string Name
	    {
			get
	        {
				return base.Getstring(ColumnNames.Name);
			}
			set
	        {
				base.Setstring(ColumnNames.Name, value);
			}
		}

		public virtual string Description
	    {
			get
	        {
				return base.Getstring(ColumnNames.Description);
			}
			set
	        {
				base.Setstring(ColumnNames.Description, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_SubstancesReferenceID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.SubstancesReferenceID) ? string.Empty : base.GetintAsString(ColumnNames.SubstancesReferenceID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.SubstancesReferenceID);
				else
					this.SubstancesReferenceID = base.SetintAsString(ColumnNames.SubstancesReferenceID, value);
			}
		}

		public virtual string s_Name
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Name) ? string.Empty : base.GetstringAsString(ColumnNames.Name);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Name);
				else
					this.Name = base.SetstringAsString(ColumnNames.Name, value);
			}
		}

		public virtual string s_Description
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Description) ? string.Empty : base.GetstringAsString(ColumnNames.Description);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Description);
				else
					this.Description = base.SetstringAsString(ColumnNames.Description, value);
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
				
				
				public WhereParameter SubstancesReferenceID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.SubstancesReferenceID, Parameters.SubstancesReferenceID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Name
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Name, Parameters.Name);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Description
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Description, Parameters.Description);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter SubstancesReferenceID
		    {
				get
		        {
					if(_SubstancesReferenceID_W == null)
	        	    {
						_SubstancesReferenceID_W = TearOff.SubstancesReferenceID;
					}
					return _SubstancesReferenceID_W;
				}
			}

			public WhereParameter Name
		    {
				get
		        {
					if(_Name_W == null)
	        	    {
						_Name_W = TearOff.Name;
					}
					return _Name_W;
				}
			}

			public WhereParameter Description
		    {
				get
		        {
					if(_Description_W == null)
	        	    {
						_Description_W = TearOff.Description;
					}
					return _Description_W;
				}
			}

			private WhereParameter _SubstancesReferenceID_W = null;
			private WhereParameter _Name_W = null;
			private WhereParameter _Description_W = null;

			public void WhereClauseReset()
			{
				_SubstancesReferenceID_W = null;
				_Name_W = null;
				_Description_W = null;

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
				
				
				public AggregateParameter SubstancesReferenceID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.SubstancesReferenceID, Parameters.SubstancesReferenceID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Name
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Name, Parameters.Name);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Description
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Description, Parameters.Description);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter SubstancesReferenceID
		    {
				get
		        {
					if(_SubstancesReferenceID_W == null)
	        	    {
						_SubstancesReferenceID_W = TearOff.SubstancesReferenceID;
					}
					return _SubstancesReferenceID_W;
				}
			}

			public AggregateParameter Name
		    {
				get
		        {
					if(_Name_W == null)
	        	    {
						_Name_W = TearOff.Name;
					}
					return _Name_W;
				}
			}

			public AggregateParameter Description
		    {
				get
		        {
					if(_Description_W == null)
	        	    {
						_Description_W = TearOff.Description;
					}
					return _Description_W;
				}
			}

			private AggregateParameter _SubstancesReferenceID_W = null;
			private AggregateParameter _Name_W = null;
			private AggregateParameter _Description_W = null;

			public void AggregateClauseReset()
			{
				_SubstancesReferenceID_W = null;
				_Name_W = null;
				_Description_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_SubstancesReferenceInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.SubstancesReferenceID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_SubstancesReferenceUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_SubstancesReferenceDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.SubstancesReferenceID);
			p.SourceColumn = ColumnNames.SubstancesReferenceID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.SubstancesReferenceID);
			p.SourceColumn = ColumnNames.SubstancesReferenceID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Name);
			p.SourceColumn = ColumnNames.Name;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Description);
			p.SourceColumn = ColumnNames.Description;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
