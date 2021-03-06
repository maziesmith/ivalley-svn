
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

namespace EDU.DAL
{
	public abstract class _ApplicationAttachment : SqlClientEntity
	{
		public _ApplicationAttachment()
		{
			this.QuerySource = "ApplicationAttachment";
			this.MappingName = "ApplicationAttachment";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ApplicationAttachmentLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int ApplicationAttachmentID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ApplicationAttachmentID, ApplicationAttachmentID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ApplicationAttachmentLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ApplicationAttachmentID
			{
				get
				{
					return new SqlParameter("@ApplicationAttachmentID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ApplicationDataID
			{
				get
				{
					return new SqlParameter("@ApplicationDataID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter FilePath
			{
				get
				{
					return new SqlParameter("@FilePath", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter ApplicationStatusID
			{
				get
				{
					return new SqlParameter("@ApplicationStatusID", SqlDbType.Int, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ApplicationAttachmentID = "ApplicationAttachmentID";
            public const string ApplicationDataID = "ApplicationDataID";
            public const string FilePath = "FilePath";
            public const string ApplicationStatusID = "ApplicationStatusID";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ApplicationAttachmentID] = _ApplicationAttachment.PropertyNames.ApplicationAttachmentID;
					ht[ApplicationDataID] = _ApplicationAttachment.PropertyNames.ApplicationDataID;
					ht[FilePath] = _ApplicationAttachment.PropertyNames.FilePath;
					ht[ApplicationStatusID] = _ApplicationAttachment.PropertyNames.ApplicationStatusID;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string ApplicationAttachmentID = "ApplicationAttachmentID";
            public const string ApplicationDataID = "ApplicationDataID";
            public const string FilePath = "FilePath";
            public const string ApplicationStatusID = "ApplicationStatusID";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ApplicationAttachmentID] = _ApplicationAttachment.ColumnNames.ApplicationAttachmentID;
					ht[ApplicationDataID] = _ApplicationAttachment.ColumnNames.ApplicationDataID;
					ht[FilePath] = _ApplicationAttachment.ColumnNames.FilePath;
					ht[ApplicationStatusID] = _ApplicationAttachment.ColumnNames.ApplicationStatusID;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string ApplicationAttachmentID = "s_ApplicationAttachmentID";
            public const string ApplicationDataID = "s_ApplicationDataID";
            public const string FilePath = "s_FilePath";
            public const string ApplicationStatusID = "s_ApplicationStatusID";

		}
		#endregion		
		
		#region Properties
	
		public virtual int ApplicationAttachmentID
	    {
			get
	        {
				return base.Getint(ColumnNames.ApplicationAttachmentID);
			}
			set
	        {
				base.Setint(ColumnNames.ApplicationAttachmentID, value);
			}
		}

		public virtual int ApplicationDataID
	    {
			get
	        {
				return base.Getint(ColumnNames.ApplicationDataID);
			}
			set
	        {
				base.Setint(ColumnNames.ApplicationDataID, value);
			}
		}

		public virtual string FilePath
	    {
			get
	        {
				return base.Getstring(ColumnNames.FilePath);
			}
			set
	        {
				base.Setstring(ColumnNames.FilePath, value);
			}
		}

		public virtual int ApplicationStatusID
	    {
			get
	        {
				return base.Getint(ColumnNames.ApplicationStatusID);
			}
			set
	        {
				base.Setint(ColumnNames.ApplicationStatusID, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ApplicationAttachmentID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ApplicationAttachmentID) ? string.Empty : base.GetintAsString(ColumnNames.ApplicationAttachmentID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ApplicationAttachmentID);
				else
					this.ApplicationAttachmentID = base.SetintAsString(ColumnNames.ApplicationAttachmentID, value);
			}
		}

		public virtual string s_ApplicationDataID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ApplicationDataID) ? string.Empty : base.GetintAsString(ColumnNames.ApplicationDataID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ApplicationDataID);
				else
					this.ApplicationDataID = base.SetintAsString(ColumnNames.ApplicationDataID, value);
			}
		}

		public virtual string s_FilePath
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.FilePath) ? string.Empty : base.GetstringAsString(ColumnNames.FilePath);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.FilePath);
				else
					this.FilePath = base.SetstringAsString(ColumnNames.FilePath, value);
			}
		}

		public virtual string s_ApplicationStatusID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ApplicationStatusID) ? string.Empty : base.GetintAsString(ColumnNames.ApplicationStatusID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ApplicationStatusID);
				else
					this.ApplicationStatusID = base.SetintAsString(ColumnNames.ApplicationStatusID, value);
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
				
				
				public WhereParameter ApplicationAttachmentID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ApplicationAttachmentID, Parameters.ApplicationAttachmentID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ApplicationDataID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ApplicationDataID, Parameters.ApplicationDataID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter FilePath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.FilePath, Parameters.FilePath);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ApplicationStatusID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ApplicationStatusID, Parameters.ApplicationStatusID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter ApplicationAttachmentID
		    {
				get
		        {
					if(_ApplicationAttachmentID_W == null)
	        	    {
						_ApplicationAttachmentID_W = TearOff.ApplicationAttachmentID;
					}
					return _ApplicationAttachmentID_W;
				}
			}

			public WhereParameter ApplicationDataID
		    {
				get
		        {
					if(_ApplicationDataID_W == null)
	        	    {
						_ApplicationDataID_W = TearOff.ApplicationDataID;
					}
					return _ApplicationDataID_W;
				}
			}

			public WhereParameter FilePath
		    {
				get
		        {
					if(_FilePath_W == null)
	        	    {
						_FilePath_W = TearOff.FilePath;
					}
					return _FilePath_W;
				}
			}

			public WhereParameter ApplicationStatusID
		    {
				get
		        {
					if(_ApplicationStatusID_W == null)
	        	    {
						_ApplicationStatusID_W = TearOff.ApplicationStatusID;
					}
					return _ApplicationStatusID_W;
				}
			}

			private WhereParameter _ApplicationAttachmentID_W = null;
			private WhereParameter _ApplicationDataID_W = null;
			private WhereParameter _FilePath_W = null;
			private WhereParameter _ApplicationStatusID_W = null;

			public void WhereClauseReset()
			{
				_ApplicationAttachmentID_W = null;
				_ApplicationDataID_W = null;
				_FilePath_W = null;
				_ApplicationStatusID_W = null;

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
				
				
				public AggregateParameter ApplicationAttachmentID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ApplicationAttachmentID, Parameters.ApplicationAttachmentID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ApplicationDataID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ApplicationDataID, Parameters.ApplicationDataID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter FilePath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.FilePath, Parameters.FilePath);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ApplicationStatusID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ApplicationStatusID, Parameters.ApplicationStatusID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter ApplicationAttachmentID
		    {
				get
		        {
					if(_ApplicationAttachmentID_W == null)
	        	    {
						_ApplicationAttachmentID_W = TearOff.ApplicationAttachmentID;
					}
					return _ApplicationAttachmentID_W;
				}
			}

			public AggregateParameter ApplicationDataID
		    {
				get
		        {
					if(_ApplicationDataID_W == null)
	        	    {
						_ApplicationDataID_W = TearOff.ApplicationDataID;
					}
					return _ApplicationDataID_W;
				}
			}

			public AggregateParameter FilePath
		    {
				get
		        {
					if(_FilePath_W == null)
	        	    {
						_FilePath_W = TearOff.FilePath;
					}
					return _FilePath_W;
				}
			}

			public AggregateParameter ApplicationStatusID
		    {
				get
		        {
					if(_ApplicationStatusID_W == null)
	        	    {
						_ApplicationStatusID_W = TearOff.ApplicationStatusID;
					}
					return _ApplicationStatusID_W;
				}
			}

			private AggregateParameter _ApplicationAttachmentID_W = null;
			private AggregateParameter _ApplicationDataID_W = null;
			private AggregateParameter _FilePath_W = null;
			private AggregateParameter _ApplicationStatusID_W = null;

			public void AggregateClauseReset()
			{
				_ApplicationAttachmentID_W = null;
				_ApplicationDataID_W = null;
				_FilePath_W = null;
				_ApplicationStatusID_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ApplicationAttachmentInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.ApplicationAttachmentID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ApplicationAttachmentUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ApplicationAttachmentDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.ApplicationAttachmentID);
			p.SourceColumn = ColumnNames.ApplicationAttachmentID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.ApplicationAttachmentID);
			p.SourceColumn = ColumnNames.ApplicationAttachmentID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ApplicationDataID);
			p.SourceColumn = ColumnNames.ApplicationDataID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.FilePath);
			p.SourceColumn = ColumnNames.FilePath;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ApplicationStatusID);
			p.SourceColumn = ColumnNames.ApplicationStatusID;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
