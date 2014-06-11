
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
	public abstract class _RoomMessages : SqlClientEntity
	{
		public _RoomMessages()
		{
			this.QuerySource = "RoomMessages";
			this.MappingName = "RoomMessages";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_RoomMessagesLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(long ID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ID, ID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_RoomMessagesLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ID
			{
				get
				{
					return new SqlParameter("@ID", SqlDbType.BigInt, 0);
				}
			}
			
			public static SqlParameter RoomID
			{
				get
				{
					return new SqlParameter("@RoomID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter MemberID
			{
				get
				{
					return new SqlParameter("@MemberID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Message
			{
				get
				{
					return new SqlParameter("@Message", SqlDbType.NVarChar, 1073741823);
				}
			}
			
			public static SqlParameter MessageDate
			{
				get
				{
					return new SqlParameter("@MessageDate", SqlDbType.DateTime, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ID = "ID";
            public const string RoomID = "RoomID";
            public const string MemberID = "MemberID";
            public const string Message = "Message";
            public const string MessageDate = "MessageDate";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ID] = _RoomMessages.PropertyNames.ID;
					ht[RoomID] = _RoomMessages.PropertyNames.RoomID;
					ht[MemberID] = _RoomMessages.PropertyNames.MemberID;
					ht[Message] = _RoomMessages.PropertyNames.Message;
					ht[MessageDate] = _RoomMessages.PropertyNames.MessageDate;

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
            public const string RoomID = "RoomID";
            public const string MemberID = "MemberID";
            public const string Message = "Message";
            public const string MessageDate = "MessageDate";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ID] = _RoomMessages.ColumnNames.ID;
					ht[RoomID] = _RoomMessages.ColumnNames.RoomID;
					ht[MemberID] = _RoomMessages.ColumnNames.MemberID;
					ht[Message] = _RoomMessages.ColumnNames.Message;
					ht[MessageDate] = _RoomMessages.ColumnNames.MessageDate;

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
            public const string RoomID = "s_RoomID";
            public const string MemberID = "s_MemberID";
            public const string Message = "s_Message";
            public const string MessageDate = "s_MessageDate";

		}
		#endregion		
		
		#region Properties
	
		public virtual long ID
	    {
			get
	        {
				return base.Getlong(ColumnNames.ID);
			}
			set
	        {
				base.Setlong(ColumnNames.ID, value);
			}
		}

		public virtual int RoomID
	    {
			get
	        {
				return base.Getint(ColumnNames.RoomID);
			}
			set
	        {
				base.Setint(ColumnNames.RoomID, value);
			}
		}

		public virtual int MemberID
	    {
			get
	        {
				return base.Getint(ColumnNames.MemberID);
			}
			set
	        {
				base.Setint(ColumnNames.MemberID, value);
			}
		}

		public virtual string Message
	    {
			get
	        {
				return base.Getstring(ColumnNames.Message);
			}
			set
	        {
				base.Setstring(ColumnNames.Message, value);
			}
		}

		public virtual DateTime MessageDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.MessageDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.MessageDate, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ID) ? string.Empty : base.GetlongAsString(ColumnNames.ID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ID);
				else
					this.ID = base.SetlongAsString(ColumnNames.ID, value);
			}
		}

		public virtual string s_RoomID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.RoomID) ? string.Empty : base.GetintAsString(ColumnNames.RoomID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.RoomID);
				else
					this.RoomID = base.SetintAsString(ColumnNames.RoomID, value);
			}
		}

		public virtual string s_MemberID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.MemberID) ? string.Empty : base.GetintAsString(ColumnNames.MemberID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.MemberID);
				else
					this.MemberID = base.SetintAsString(ColumnNames.MemberID, value);
			}
		}

		public virtual string s_Message
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Message) ? string.Empty : base.GetstringAsString(ColumnNames.Message);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Message);
				else
					this.Message = base.SetstringAsString(ColumnNames.Message, value);
			}
		}

		public virtual string s_MessageDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.MessageDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.MessageDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.MessageDate);
				else
					this.MessageDate = base.SetDateTimeAsString(ColumnNames.MessageDate, value);
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

				public WhereParameter RoomID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.RoomID, Parameters.RoomID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter MemberID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.MemberID, Parameters.MemberID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Message
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Message, Parameters.Message);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter MessageDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.MessageDate, Parameters.MessageDate);
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

			public WhereParameter RoomID
		    {
				get
		        {
					if(_RoomID_W == null)
	        	    {
						_RoomID_W = TearOff.RoomID;
					}
					return _RoomID_W;
				}
			}

			public WhereParameter MemberID
		    {
				get
		        {
					if(_MemberID_W == null)
	        	    {
						_MemberID_W = TearOff.MemberID;
					}
					return _MemberID_W;
				}
			}

			public WhereParameter Message
		    {
				get
		        {
					if(_Message_W == null)
	        	    {
						_Message_W = TearOff.Message;
					}
					return _Message_W;
				}
			}

			public WhereParameter MessageDate
		    {
				get
		        {
					if(_MessageDate_W == null)
	        	    {
						_MessageDate_W = TearOff.MessageDate;
					}
					return _MessageDate_W;
				}
			}

			private WhereParameter _ID_W = null;
			private WhereParameter _RoomID_W = null;
			private WhereParameter _MemberID_W = null;
			private WhereParameter _Message_W = null;
			private WhereParameter _MessageDate_W = null;

			public void WhereClauseReset()
			{
				_ID_W = null;
				_RoomID_W = null;
				_MemberID_W = null;
				_Message_W = null;
				_MessageDate_W = null;

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

				public AggregateParameter RoomID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.RoomID, Parameters.RoomID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter MemberID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.MemberID, Parameters.MemberID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Message
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Message, Parameters.Message);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter MessageDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.MessageDate, Parameters.MessageDate);
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

			public AggregateParameter RoomID
		    {
				get
		        {
					if(_RoomID_W == null)
	        	    {
						_RoomID_W = TearOff.RoomID;
					}
					return _RoomID_W;
				}
			}

			public AggregateParameter MemberID
		    {
				get
		        {
					if(_MemberID_W == null)
	        	    {
						_MemberID_W = TearOff.MemberID;
					}
					return _MemberID_W;
				}
			}

			public AggregateParameter Message
		    {
				get
		        {
					if(_Message_W == null)
	        	    {
						_Message_W = TearOff.Message;
					}
					return _Message_W;
				}
			}

			public AggregateParameter MessageDate
		    {
				get
		        {
					if(_MessageDate_W == null)
	        	    {
						_MessageDate_W = TearOff.MessageDate;
					}
					return _MessageDate_W;
				}
			}

			private AggregateParameter _ID_W = null;
			private AggregateParameter _RoomID_W = null;
			private AggregateParameter _MemberID_W = null;
			private AggregateParameter _Message_W = null;
			private AggregateParameter _MessageDate_W = null;

			public void AggregateClauseReset()
			{
				_ID_W = null;
				_RoomID_W = null;
				_MemberID_W = null;
				_Message_W = null;
				_MessageDate_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_RoomMessagesInsert]";
	
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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_RoomMessagesUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_RoomMessagesDelete]";
	
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

			p = cmd.Parameters.Add(Parameters.RoomID);
			p.SourceColumn = ColumnNames.RoomID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.MemberID);
			p.SourceColumn = ColumnNames.MemberID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Message);
			p.SourceColumn = ColumnNames.Message;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.MessageDate);
			p.SourceColumn = ColumnNames.MessageDate;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}