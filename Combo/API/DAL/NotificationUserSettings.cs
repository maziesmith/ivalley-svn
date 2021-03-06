
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

namespace Combo.DAL
{
	public abstract class _NotificationUserSettings : SqlClientEntity
	{
		public _NotificationUserSettings()
		{
			this.QuerySource = "NotificationUserSettings";
			this.MappingName = "NotificationUserSettings";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_NotificationUserSettingsLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int ComboUserID, int NotificationTypeID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ComboUserID, ComboUserID);

parameters.Add(Parameters.NotificationTypeID, NotificationTypeID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_NotificationUserSettingsLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ComboUserID
			{
				get
				{
					return new SqlParameter("@ComboUserID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter NotificationTypeID
			{
				get
				{
					return new SqlParameter("@NotificationTypeID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Status
			{
				get
				{
					return new SqlParameter("@Status", SqlDbType.SmallInt, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ComboUserID = "ComboUserID";
            public const string NotificationTypeID = "NotificationTypeID";
            public const string Status = "Status";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ComboUserID] = _NotificationUserSettings.PropertyNames.ComboUserID;
					ht[NotificationTypeID] = _NotificationUserSettings.PropertyNames.NotificationTypeID;
					ht[Status] = _NotificationUserSettings.PropertyNames.Status;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string ComboUserID = "ComboUserID";
            public const string NotificationTypeID = "NotificationTypeID";
            public const string Status = "Status";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ComboUserID] = _NotificationUserSettings.ColumnNames.ComboUserID;
					ht[NotificationTypeID] = _NotificationUserSettings.ColumnNames.NotificationTypeID;
					ht[Status] = _NotificationUserSettings.ColumnNames.Status;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string ComboUserID = "s_ComboUserID";
            public const string NotificationTypeID = "s_NotificationTypeID";
            public const string Status = "s_Status";

		}
		#endregion		
		
		#region Properties
	
		public virtual int ComboUserID
	    {
			get
	        {
				return base.Getint(ColumnNames.ComboUserID);
			}
			set
	        {
				base.Setint(ColumnNames.ComboUserID, value);
			}
		}

		public virtual int NotificationTypeID
	    {
			get
	        {
				return base.Getint(ColumnNames.NotificationTypeID);
			}
			set
	        {
				base.Setint(ColumnNames.NotificationTypeID, value);
			}
		}

		public virtual short Status
	    {
			get
	        {
				return base.Getshort(ColumnNames.Status);
			}
			set
	        {
				base.Setshort(ColumnNames.Status, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ComboUserID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ComboUserID) ? string.Empty : base.GetintAsString(ColumnNames.ComboUserID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ComboUserID);
				else
					this.ComboUserID = base.SetintAsString(ColumnNames.ComboUserID, value);
			}
		}

		public virtual string s_NotificationTypeID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.NotificationTypeID) ? string.Empty : base.GetintAsString(ColumnNames.NotificationTypeID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.NotificationTypeID);
				else
					this.NotificationTypeID = base.SetintAsString(ColumnNames.NotificationTypeID, value);
			}
		}

		public virtual string s_Status
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Status) ? string.Empty : base.GetshortAsString(ColumnNames.Status);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Status);
				else
					this.Status = base.SetshortAsString(ColumnNames.Status, value);
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
				
				
				public WhereParameter ComboUserID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ComboUserID, Parameters.ComboUserID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter NotificationTypeID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.NotificationTypeID, Parameters.NotificationTypeID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Status
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Status, Parameters.Status);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter ComboUserID
		    {
				get
		        {
					if(_ComboUserID_W == null)
	        	    {
						_ComboUserID_W = TearOff.ComboUserID;
					}
					return _ComboUserID_W;
				}
			}

			public WhereParameter NotificationTypeID
		    {
				get
		        {
					if(_NotificationTypeID_W == null)
	        	    {
						_NotificationTypeID_W = TearOff.NotificationTypeID;
					}
					return _NotificationTypeID_W;
				}
			}

			public WhereParameter Status
		    {
				get
		        {
					if(_Status_W == null)
	        	    {
						_Status_W = TearOff.Status;
					}
					return _Status_W;
				}
			}

			private WhereParameter _ComboUserID_W = null;
			private WhereParameter _NotificationTypeID_W = null;
			private WhereParameter _Status_W = null;

			public void WhereClauseReset()
			{
				_ComboUserID_W = null;
				_NotificationTypeID_W = null;
				_Status_W = null;

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
				
				
				public AggregateParameter ComboUserID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ComboUserID, Parameters.ComboUserID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter NotificationTypeID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.NotificationTypeID, Parameters.NotificationTypeID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Status
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Status, Parameters.Status);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter ComboUserID
		    {
				get
		        {
					if(_ComboUserID_W == null)
	        	    {
						_ComboUserID_W = TearOff.ComboUserID;
					}
					return _ComboUserID_W;
				}
			}

			public AggregateParameter NotificationTypeID
		    {
				get
		        {
					if(_NotificationTypeID_W == null)
	        	    {
						_NotificationTypeID_W = TearOff.NotificationTypeID;
					}
					return _NotificationTypeID_W;
				}
			}

			public AggregateParameter Status
		    {
				get
		        {
					if(_Status_W == null)
	        	    {
						_Status_W = TearOff.Status;
					}
					return _Status_W;
				}
			}

			private AggregateParameter _ComboUserID_W = null;
			private AggregateParameter _NotificationTypeID_W = null;
			private AggregateParameter _Status_W = null;

			public void AggregateClauseReset()
			{
				_ComboUserID_W = null;
				_NotificationTypeID_W = null;
				_Status_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_NotificationUserSettingsInsert]";
	
			CreateParameters(cmd);
			    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_NotificationUserSettingsUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_NotificationUserSettingsDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.ComboUserID);
			p.SourceColumn = ColumnNames.ComboUserID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.NotificationTypeID);
			p.SourceColumn = ColumnNames.NotificationTypeID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.ComboUserID);
			p.SourceColumn = ColumnNames.ComboUserID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.NotificationTypeID);
			p.SourceColumn = ColumnNames.NotificationTypeID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Status);
			p.SourceColumn = ColumnNames.Status;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
