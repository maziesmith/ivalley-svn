
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

namespace WhiteChat.DAL
{
	public abstract class _Member : SqlClientEntity
	{
		public _Member()
		{
			this.QuerySource = "Member";
			this.MappingName = "Member";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_MemberLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(string MemberID, int ChatRoomID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.MemberID, MemberID);

parameters.Add(Parameters.ChatRoomID, ChatRoomID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_MemberLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter MemberID
			{
				get
				{
					return new SqlParameter("@MemberID", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter ChatRoomID
			{
				get
				{
					return new SqlParameter("@ChatRoomID", SqlDbType.Int, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string MemberID = "MemberID";
            public const string ChatRoomID = "ChatRoomID";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[MemberID] = _Member.PropertyNames.MemberID;
					ht[ChatRoomID] = _Member.PropertyNames.ChatRoomID;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string MemberID = "MemberID";
            public const string ChatRoomID = "ChatRoomID";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[MemberID] = _Member.ColumnNames.MemberID;
					ht[ChatRoomID] = _Member.ColumnNames.ChatRoomID;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string MemberID = "s_MemberID";
            public const string ChatRoomID = "s_ChatRoomID";

		}
		#endregion		
		
		#region Properties
	
		public virtual string MemberID
	    {
			get
	        {
				return base.Getstring(ColumnNames.MemberID);
			}
			set
	        {
				base.Setstring(ColumnNames.MemberID, value);
			}
		}

		public virtual int ChatRoomID
	    {
			get
	        {
				return base.Getint(ColumnNames.ChatRoomID);
			}
			set
	        {
				base.Setint(ColumnNames.ChatRoomID, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_MemberID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.MemberID) ? string.Empty : base.GetstringAsString(ColumnNames.MemberID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.MemberID);
				else
					this.MemberID = base.SetstringAsString(ColumnNames.MemberID, value);
			}
		}

		public virtual string s_ChatRoomID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ChatRoomID) ? string.Empty : base.GetintAsString(ColumnNames.ChatRoomID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ChatRoomID);
				else
					this.ChatRoomID = base.SetintAsString(ColumnNames.ChatRoomID, value);
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
				
				
				public WhereParameter MemberID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.MemberID, Parameters.MemberID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ChatRoomID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ChatRoomID, Parameters.ChatRoomID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
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

			public WhereParameter ChatRoomID
		    {
				get
		        {
					if(_ChatRoomID_W == null)
	        	    {
						_ChatRoomID_W = TearOff.ChatRoomID;
					}
					return _ChatRoomID_W;
				}
			}

			private WhereParameter _MemberID_W = null;
			private WhereParameter _ChatRoomID_W = null;

			public void WhereClauseReset()
			{
				_MemberID_W = null;
				_ChatRoomID_W = null;

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
				
				
				public AggregateParameter MemberID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.MemberID, Parameters.MemberID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ChatRoomID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ChatRoomID, Parameters.ChatRoomID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
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

			public AggregateParameter ChatRoomID
		    {
				get
		        {
					if(_ChatRoomID_W == null)
	        	    {
						_ChatRoomID_W = TearOff.ChatRoomID;
					}
					return _ChatRoomID_W;
				}
			}

			private AggregateParameter _MemberID_W = null;
			private AggregateParameter _ChatRoomID_W = null;

			public void AggregateClauseReset()
			{
				_MemberID_W = null;
				_ChatRoomID_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MemberInsert]";
	
			CreateParameters(cmd);
			    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MemberUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MemberDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.MemberID);
			p.SourceColumn = ColumnNames.MemberID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ChatRoomID);
			p.SourceColumn = ColumnNames.ChatRoomID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.MemberID);
			p.SourceColumn = ColumnNames.MemberID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ChatRoomID);
			p.SourceColumn = ColumnNames.ChatRoomID;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}