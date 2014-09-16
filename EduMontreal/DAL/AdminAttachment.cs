
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
	public abstract class _AdminAttachment : SqlClientEntity
	{
		public _AdminAttachment()
		{
			this.QuerySource = "AdminAttachment";
			this.MappingName = "AdminAttachment";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_AdminAttachmentLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int AdminAttachmentID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.AdminAttachmentID, AdminAttachmentID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_AdminAttachmentLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter AdminAttachmentID
			{
				get
				{
					return new SqlParameter("@AdminAttachmentID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ApplicationDataID
			{
				get
				{
					return new SqlParameter("@ApplicationDataID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ApplicationStatusID
			{
				get
				{
					return new SqlParameter("@ApplicationStatusID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter AttachmentPath
			{
				get
				{
					return new SqlParameter("@AttachmentPath", SqlDbType.NVarChar, 200);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string AdminAttachmentID = "AdminAttachmentID";
            public const string ApplicationDataID = "ApplicationDataID";
            public const string ApplicationStatusID = "ApplicationStatusID";
            public const string AttachmentPath = "AttachmentPath";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[AdminAttachmentID] = _AdminAttachment.PropertyNames.AdminAttachmentID;
					ht[ApplicationDataID] = _AdminAttachment.PropertyNames.ApplicationDataID;
					ht[ApplicationStatusID] = _AdminAttachment.PropertyNames.ApplicationStatusID;
					ht[AttachmentPath] = _AdminAttachment.PropertyNames.AttachmentPath;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string AdminAttachmentID = "AdminAttachmentID";
            public const string ApplicationDataID = "ApplicationDataID";
            public const string ApplicationStatusID = "ApplicationStatusID";
            public const string AttachmentPath = "AttachmentPath";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[AdminAttachmentID] = _AdminAttachment.ColumnNames.AdminAttachmentID;
					ht[ApplicationDataID] = _AdminAttachment.ColumnNames.ApplicationDataID;
					ht[ApplicationStatusID] = _AdminAttachment.ColumnNames.ApplicationStatusID;
					ht[AttachmentPath] = _AdminAttachment.ColumnNames.AttachmentPath;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string AdminAttachmentID = "s_AdminAttachmentID";
            public const string ApplicationDataID = "s_ApplicationDataID";
            public const string ApplicationStatusID = "s_ApplicationStatusID";
            public const string AttachmentPath = "s_AttachmentPath";

		}
		#endregion		
		
		#region Properties
	
		public virtual int AdminAttachmentID
	    {
			get
	        {
				return base.Getint(ColumnNames.AdminAttachmentID);
			}
			set
	        {
				base.Setint(ColumnNames.AdminAttachmentID, value);
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

		public virtual string AttachmentPath
	    {
			get
	        {
				return base.Getstring(ColumnNames.AttachmentPath);
			}
			set
	        {
				base.Setstring(ColumnNames.AttachmentPath, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_AdminAttachmentID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.AdminAttachmentID) ? string.Empty : base.GetintAsString(ColumnNames.AdminAttachmentID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.AdminAttachmentID);
				else
					this.AdminAttachmentID = base.SetintAsString(ColumnNames.AdminAttachmentID, value);
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

		public virtual string s_AttachmentPath
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.AttachmentPath) ? string.Empty : base.GetstringAsString(ColumnNames.AttachmentPath);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.AttachmentPath);
				else
					this.AttachmentPath = base.SetstringAsString(ColumnNames.AttachmentPath, value);
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
				
				
				public WhereParameter AdminAttachmentID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.AdminAttachmentID, Parameters.AdminAttachmentID);
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

				public WhereParameter ApplicationStatusID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ApplicationStatusID, Parameters.ApplicationStatusID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter AttachmentPath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.AttachmentPath, Parameters.AttachmentPath);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter AdminAttachmentID
		    {
				get
		        {
					if(_AdminAttachmentID_W == null)
	        	    {
						_AdminAttachmentID_W = TearOff.AdminAttachmentID;
					}
					return _AdminAttachmentID_W;
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

			public WhereParameter AttachmentPath
		    {
				get
		        {
					if(_AttachmentPath_W == null)
	        	    {
						_AttachmentPath_W = TearOff.AttachmentPath;
					}
					return _AttachmentPath_W;
				}
			}

			private WhereParameter _AdminAttachmentID_W = null;
			private WhereParameter _ApplicationDataID_W = null;
			private WhereParameter _ApplicationStatusID_W = null;
			private WhereParameter _AttachmentPath_W = null;

			public void WhereClauseReset()
			{
				_AdminAttachmentID_W = null;
				_ApplicationDataID_W = null;
				_ApplicationStatusID_W = null;
				_AttachmentPath_W = null;

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
				
				
				public AggregateParameter AdminAttachmentID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.AdminAttachmentID, Parameters.AdminAttachmentID);
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

				public AggregateParameter ApplicationStatusID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ApplicationStatusID, Parameters.ApplicationStatusID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter AttachmentPath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.AttachmentPath, Parameters.AttachmentPath);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter AdminAttachmentID
		    {
				get
		        {
					if(_AdminAttachmentID_W == null)
	        	    {
						_AdminAttachmentID_W = TearOff.AdminAttachmentID;
					}
					return _AdminAttachmentID_W;
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

			public AggregateParameter AttachmentPath
		    {
				get
		        {
					if(_AttachmentPath_W == null)
	        	    {
						_AttachmentPath_W = TearOff.AttachmentPath;
					}
					return _AttachmentPath_W;
				}
			}

			private AggregateParameter _AdminAttachmentID_W = null;
			private AggregateParameter _ApplicationDataID_W = null;
			private AggregateParameter _ApplicationStatusID_W = null;
			private AggregateParameter _AttachmentPath_W = null;

			public void AggregateClauseReset()
			{
				_AdminAttachmentID_W = null;
				_ApplicationDataID_W = null;
				_ApplicationStatusID_W = null;
				_AttachmentPath_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_AdminAttachmentInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.AdminAttachmentID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_AdminAttachmentUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_AdminAttachmentDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.AdminAttachmentID);
			p.SourceColumn = ColumnNames.AdminAttachmentID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.AdminAttachmentID);
			p.SourceColumn = ColumnNames.AdminAttachmentID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ApplicationDataID);
			p.SourceColumn = ColumnNames.ApplicationDataID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ApplicationStatusID);
			p.SourceColumn = ColumnNames.ApplicationStatusID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.AttachmentPath);
			p.SourceColumn = ColumnNames.AttachmentPath;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
