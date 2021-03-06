
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
	public abstract class _ComboNotification : SqlClientEntity
	{
		public _ComboNotification()
		{
			this.QuerySource = "ComboNotification";
			this.MappingName = "ComboNotification";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ComboNotificationLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int ComboNotificationID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ComboNotificationID, ComboNotificationID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ComboNotificationLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ComboNotificationID
			{
				get
				{
					return new SqlParameter("@ComboNotificationID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ComboUserID
			{
				get
				{
					return new SqlParameter("@ComboUserID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter NotificationBody
			{
				get
				{
					return new SqlParameter("@NotificationBody", SqlDbType.NVarChar, 1073741823);
				}
			}
			
			public static SqlParameter NotificationDate
			{
				get
				{
					return new SqlParameter("@NotificationDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter IsRead
			{
				get
				{
					return new SqlParameter("@IsRead", SqlDbType.Bit, 0);
				}
			}
			
			public static SqlParameter NotificationType
			{
				get
				{
					return new SqlParameter("@NotificationType", SqlDbType.Int, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ComboNotificationID = "ComboNotificationID";
            public const string ComboUserID = "ComboUserID";
            public const string NotificationBody = "NotificationBody";
            public const string NotificationDate = "NotificationDate";
            public const string IsRead = "IsRead";
            public const string NotificationType = "NotificationType";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ComboNotificationID] = _ComboNotification.PropertyNames.ComboNotificationID;
					ht[ComboUserID] = _ComboNotification.PropertyNames.ComboUserID;
					ht[NotificationBody] = _ComboNotification.PropertyNames.NotificationBody;
					ht[NotificationDate] = _ComboNotification.PropertyNames.NotificationDate;
					ht[IsRead] = _ComboNotification.PropertyNames.IsRead;
					ht[NotificationType] = _ComboNotification.PropertyNames.NotificationType;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string ComboNotificationID = "ComboNotificationID";
            public const string ComboUserID = "ComboUserID";
            public const string NotificationBody = "NotificationBody";
            public const string NotificationDate = "NotificationDate";
            public const string IsRead = "IsRead";
            public const string NotificationType = "NotificationType";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ComboNotificationID] = _ComboNotification.ColumnNames.ComboNotificationID;
					ht[ComboUserID] = _ComboNotification.ColumnNames.ComboUserID;
					ht[NotificationBody] = _ComboNotification.ColumnNames.NotificationBody;
					ht[NotificationDate] = _ComboNotification.ColumnNames.NotificationDate;
					ht[IsRead] = _ComboNotification.ColumnNames.IsRead;
					ht[NotificationType] = _ComboNotification.ColumnNames.NotificationType;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string ComboNotificationID = "s_ComboNotificationID";
            public const string ComboUserID = "s_ComboUserID";
            public const string NotificationBody = "s_NotificationBody";
            public const string NotificationDate = "s_NotificationDate";
            public const string IsRead = "s_IsRead";
            public const string NotificationType = "s_NotificationType";

		}
		#endregion		
		
		#region Properties
	
		public virtual int ComboNotificationID
	    {
			get
	        {
				return base.Getint(ColumnNames.ComboNotificationID);
			}
			set
	        {
				base.Setint(ColumnNames.ComboNotificationID, value);
			}
		}

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

		public virtual string NotificationBody
	    {
			get
	        {
				return base.Getstring(ColumnNames.NotificationBody);
			}
			set
	        {
				base.Setstring(ColumnNames.NotificationBody, value);
			}
		}

		public virtual DateTime NotificationDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.NotificationDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.NotificationDate, value);
			}
		}

		public virtual bool IsRead
	    {
			get
	        {
				return base.Getbool(ColumnNames.IsRead);
			}
			set
	        {
				base.Setbool(ColumnNames.IsRead, value);
			}
		}

		public virtual int NotificationType
	    {
			get
	        {
				return base.Getint(ColumnNames.NotificationType);
			}
			set
	        {
				base.Setint(ColumnNames.NotificationType, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ComboNotificationID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ComboNotificationID) ? string.Empty : base.GetintAsString(ColumnNames.ComboNotificationID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ComboNotificationID);
				else
					this.ComboNotificationID = base.SetintAsString(ColumnNames.ComboNotificationID, value);
			}
		}

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

		public virtual string s_NotificationBody
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.NotificationBody) ? string.Empty : base.GetstringAsString(ColumnNames.NotificationBody);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.NotificationBody);
				else
					this.NotificationBody = base.SetstringAsString(ColumnNames.NotificationBody, value);
			}
		}

		public virtual string s_NotificationDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.NotificationDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.NotificationDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.NotificationDate);
				else
					this.NotificationDate = base.SetDateTimeAsString(ColumnNames.NotificationDate, value);
			}
		}

		public virtual string s_IsRead
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.IsRead) ? string.Empty : base.GetboolAsString(ColumnNames.IsRead);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.IsRead);
				else
					this.IsRead = base.SetboolAsString(ColumnNames.IsRead, value);
			}
		}

		public virtual string s_NotificationType
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.NotificationType) ? string.Empty : base.GetintAsString(ColumnNames.NotificationType);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.NotificationType);
				else
					this.NotificationType = base.SetintAsString(ColumnNames.NotificationType, value);
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
				
				
				public WhereParameter ComboNotificationID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ComboNotificationID, Parameters.ComboNotificationID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
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

				public WhereParameter NotificationBody
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.NotificationBody, Parameters.NotificationBody);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter NotificationDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.NotificationDate, Parameters.NotificationDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter IsRead
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.IsRead, Parameters.IsRead);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter NotificationType
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.NotificationType, Parameters.NotificationType);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter ComboNotificationID
		    {
				get
		        {
					if(_ComboNotificationID_W == null)
	        	    {
						_ComboNotificationID_W = TearOff.ComboNotificationID;
					}
					return _ComboNotificationID_W;
				}
			}

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

			public WhereParameter NotificationBody
		    {
				get
		        {
					if(_NotificationBody_W == null)
	        	    {
						_NotificationBody_W = TearOff.NotificationBody;
					}
					return _NotificationBody_W;
				}
			}

			public WhereParameter NotificationDate
		    {
				get
		        {
					if(_NotificationDate_W == null)
	        	    {
						_NotificationDate_W = TearOff.NotificationDate;
					}
					return _NotificationDate_W;
				}
			}

			public WhereParameter IsRead
		    {
				get
		        {
					if(_IsRead_W == null)
	        	    {
						_IsRead_W = TearOff.IsRead;
					}
					return _IsRead_W;
				}
			}

			public WhereParameter NotificationType
		    {
				get
		        {
					if(_NotificationType_W == null)
	        	    {
						_NotificationType_W = TearOff.NotificationType;
					}
					return _NotificationType_W;
				}
			}

			private WhereParameter _ComboNotificationID_W = null;
			private WhereParameter _ComboUserID_W = null;
			private WhereParameter _NotificationBody_W = null;
			private WhereParameter _NotificationDate_W = null;
			private WhereParameter _IsRead_W = null;
			private WhereParameter _NotificationType_W = null;

			public void WhereClauseReset()
			{
				_ComboNotificationID_W = null;
				_ComboUserID_W = null;
				_NotificationBody_W = null;
				_NotificationDate_W = null;
				_IsRead_W = null;
				_NotificationType_W = null;

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
				
				
				public AggregateParameter ComboNotificationID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ComboNotificationID, Parameters.ComboNotificationID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
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

				public AggregateParameter NotificationBody
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.NotificationBody, Parameters.NotificationBody);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter NotificationDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.NotificationDate, Parameters.NotificationDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter IsRead
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.IsRead, Parameters.IsRead);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter NotificationType
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.NotificationType, Parameters.NotificationType);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter ComboNotificationID
		    {
				get
		        {
					if(_ComboNotificationID_W == null)
	        	    {
						_ComboNotificationID_W = TearOff.ComboNotificationID;
					}
					return _ComboNotificationID_W;
				}
			}

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

			public AggregateParameter NotificationBody
		    {
				get
		        {
					if(_NotificationBody_W == null)
	        	    {
						_NotificationBody_W = TearOff.NotificationBody;
					}
					return _NotificationBody_W;
				}
			}

			public AggregateParameter NotificationDate
		    {
				get
		        {
					if(_NotificationDate_W == null)
	        	    {
						_NotificationDate_W = TearOff.NotificationDate;
					}
					return _NotificationDate_W;
				}
			}

			public AggregateParameter IsRead
		    {
				get
		        {
					if(_IsRead_W == null)
	        	    {
						_IsRead_W = TearOff.IsRead;
					}
					return _IsRead_W;
				}
			}

			public AggregateParameter NotificationType
		    {
				get
		        {
					if(_NotificationType_W == null)
	        	    {
						_NotificationType_W = TearOff.NotificationType;
					}
					return _NotificationType_W;
				}
			}

			private AggregateParameter _ComboNotificationID_W = null;
			private AggregateParameter _ComboUserID_W = null;
			private AggregateParameter _NotificationBody_W = null;
			private AggregateParameter _NotificationDate_W = null;
			private AggregateParameter _IsRead_W = null;
			private AggregateParameter _NotificationType_W = null;

			public void AggregateClauseReset()
			{
				_ComboNotificationID_W = null;
				_ComboUserID_W = null;
				_NotificationBody_W = null;
				_NotificationDate_W = null;
				_IsRead_W = null;
				_NotificationType_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ComboNotificationInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.ComboNotificationID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ComboNotificationUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ComboNotificationDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.ComboNotificationID);
			p.SourceColumn = ColumnNames.ComboNotificationID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.ComboNotificationID);
			p.SourceColumn = ColumnNames.ComboNotificationID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ComboUserID);
			p.SourceColumn = ColumnNames.ComboUserID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.NotificationBody);
			p.SourceColumn = ColumnNames.NotificationBody;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.NotificationDate);
			p.SourceColumn = ColumnNames.NotificationDate;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.IsRead);
			p.SourceColumn = ColumnNames.IsRead;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.NotificationType);
			p.SourceColumn = ColumnNames.NotificationType;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
