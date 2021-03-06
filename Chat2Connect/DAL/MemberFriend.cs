
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
	public abstract class _MemberFriend : SqlClientEntity
	{
		public _MemberFriend()
		{
			this.QuerySource = "MemberFriend";
			this.MappingName = "MemberFriend";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_MemberFriendLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int MemberFriendID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.MemberFriendID, MemberFriendID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_MemberFriendLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter MemberFriendID
			{
				get
				{
					return new SqlParameter("@MemberFriendID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter MemberID
			{
				get
				{
					return new SqlParameter("@MemberID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter FriendID
			{
				get
				{
					return new SqlParameter("@FriendID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter FriendGroupID
			{
				get
				{
					return new SqlParameter("@FriendGroupID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter IsBlocked
			{
				get
				{
					return new SqlParameter("@IsBlocked", SqlDbType.Bit, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string MemberFriendID = "MemberFriendID";
            public const string MemberID = "MemberID";
            public const string FriendID = "FriendID";
            public const string FriendGroupID = "FriendGroupID";
            public const string IsBlocked = "IsBlocked";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[MemberFriendID] = _MemberFriend.PropertyNames.MemberFriendID;
					ht[MemberID] = _MemberFriend.PropertyNames.MemberID;
					ht[FriendID] = _MemberFriend.PropertyNames.FriendID;
					ht[FriendGroupID] = _MemberFriend.PropertyNames.FriendGroupID;
					ht[IsBlocked] = _MemberFriend.PropertyNames.IsBlocked;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string MemberFriendID = "MemberFriendID";
            public const string MemberID = "MemberID";
            public const string FriendID = "FriendID";
            public const string FriendGroupID = "FriendGroupID";
            public const string IsBlocked = "IsBlocked";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[MemberFriendID] = _MemberFriend.ColumnNames.MemberFriendID;
					ht[MemberID] = _MemberFriend.ColumnNames.MemberID;
					ht[FriendID] = _MemberFriend.ColumnNames.FriendID;
					ht[FriendGroupID] = _MemberFriend.ColumnNames.FriendGroupID;
					ht[IsBlocked] = _MemberFriend.ColumnNames.IsBlocked;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string MemberFriendID = "s_MemberFriendID";
            public const string MemberID = "s_MemberID";
            public const string FriendID = "s_FriendID";
            public const string FriendGroupID = "s_FriendGroupID";
            public const string IsBlocked = "s_IsBlocked";

		}
		#endregion		
		
		#region Properties
	
		public virtual int MemberFriendID
	    {
			get
	        {
				return base.Getint(ColumnNames.MemberFriendID);
			}
			set
	        {
				base.Setint(ColumnNames.MemberFriendID, value);
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

		public virtual int FriendID
	    {
			get
	        {
				return base.Getint(ColumnNames.FriendID);
			}
			set
	        {
				base.Setint(ColumnNames.FriendID, value);
			}
		}

		public virtual int FriendGroupID
	    {
			get
	        {
				return base.Getint(ColumnNames.FriendGroupID);
			}
			set
	        {
				base.Setint(ColumnNames.FriendGroupID, value);
			}
		}

		public virtual bool IsBlocked
	    {
			get
	        {
				return base.Getbool(ColumnNames.IsBlocked);
			}
			set
	        {
				base.Setbool(ColumnNames.IsBlocked, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_MemberFriendID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.MemberFriendID) ? string.Empty : base.GetintAsString(ColumnNames.MemberFriendID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.MemberFriendID);
				else
					this.MemberFriendID = base.SetintAsString(ColumnNames.MemberFriendID, value);
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

		public virtual string s_FriendID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.FriendID) ? string.Empty : base.GetintAsString(ColumnNames.FriendID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.FriendID);
				else
					this.FriendID = base.SetintAsString(ColumnNames.FriendID, value);
			}
		}

		public virtual string s_FriendGroupID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.FriendGroupID) ? string.Empty : base.GetintAsString(ColumnNames.FriendGroupID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.FriendGroupID);
				else
					this.FriendGroupID = base.SetintAsString(ColumnNames.FriendGroupID, value);
			}
		}

		public virtual string s_IsBlocked
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.IsBlocked) ? string.Empty : base.GetboolAsString(ColumnNames.IsBlocked);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.IsBlocked);
				else
					this.IsBlocked = base.SetboolAsString(ColumnNames.IsBlocked, value);
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
				
				
				public WhereParameter MemberFriendID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.MemberFriendID, Parameters.MemberFriendID);
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

				public WhereParameter FriendID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.FriendID, Parameters.FriendID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter FriendGroupID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.FriendGroupID, Parameters.FriendGroupID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter IsBlocked
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.IsBlocked, Parameters.IsBlocked);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter MemberFriendID
		    {
				get
		        {
					if(_MemberFriendID_W == null)
	        	    {
						_MemberFriendID_W = TearOff.MemberFriendID;
					}
					return _MemberFriendID_W;
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

			public WhereParameter FriendID
		    {
				get
		        {
					if(_FriendID_W == null)
	        	    {
						_FriendID_W = TearOff.FriendID;
					}
					return _FriendID_W;
				}
			}

			public WhereParameter FriendGroupID
		    {
				get
		        {
					if(_FriendGroupID_W == null)
	        	    {
						_FriendGroupID_W = TearOff.FriendGroupID;
					}
					return _FriendGroupID_W;
				}
			}

			public WhereParameter IsBlocked
		    {
				get
		        {
					if(_IsBlocked_W == null)
	        	    {
						_IsBlocked_W = TearOff.IsBlocked;
					}
					return _IsBlocked_W;
				}
			}

			private WhereParameter _MemberFriendID_W = null;
			private WhereParameter _MemberID_W = null;
			private WhereParameter _FriendID_W = null;
			private WhereParameter _FriendGroupID_W = null;
			private WhereParameter _IsBlocked_W = null;

			public void WhereClauseReset()
			{
				_MemberFriendID_W = null;
				_MemberID_W = null;
				_FriendID_W = null;
				_FriendGroupID_W = null;
				_IsBlocked_W = null;

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
				
				
				public AggregateParameter MemberFriendID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.MemberFriendID, Parameters.MemberFriendID);
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

				public AggregateParameter FriendID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.FriendID, Parameters.FriendID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter FriendGroupID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.FriendGroupID, Parameters.FriendGroupID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter IsBlocked
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.IsBlocked, Parameters.IsBlocked);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter MemberFriendID
		    {
				get
		        {
					if(_MemberFriendID_W == null)
	        	    {
						_MemberFriendID_W = TearOff.MemberFriendID;
					}
					return _MemberFriendID_W;
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

			public AggregateParameter FriendID
		    {
				get
		        {
					if(_FriendID_W == null)
	        	    {
						_FriendID_W = TearOff.FriendID;
					}
					return _FriendID_W;
				}
			}

			public AggregateParameter FriendGroupID
		    {
				get
		        {
					if(_FriendGroupID_W == null)
	        	    {
						_FriendGroupID_W = TearOff.FriendGroupID;
					}
					return _FriendGroupID_W;
				}
			}

			public AggregateParameter IsBlocked
		    {
				get
		        {
					if(_IsBlocked_W == null)
	        	    {
						_IsBlocked_W = TearOff.IsBlocked;
					}
					return _IsBlocked_W;
				}
			}

			private AggregateParameter _MemberFriendID_W = null;
			private AggregateParameter _MemberID_W = null;
			private AggregateParameter _FriendID_W = null;
			private AggregateParameter _FriendGroupID_W = null;
			private AggregateParameter _IsBlocked_W = null;

			public void AggregateClauseReset()
			{
				_MemberFriendID_W = null;
				_MemberID_W = null;
				_FriendID_W = null;
				_FriendGroupID_W = null;
				_IsBlocked_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MemberFriendInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.MemberFriendID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MemberFriendUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_MemberFriendDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.MemberFriendID);
			p.SourceColumn = ColumnNames.MemberFriendID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.MemberFriendID);
			p.SourceColumn = ColumnNames.MemberFriendID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.MemberID);
			p.SourceColumn = ColumnNames.MemberID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.FriendID);
			p.SourceColumn = ColumnNames.FriendID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.FriendGroupID);
			p.SourceColumn = ColumnNames.FriendGroupID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.IsBlocked);
			p.SourceColumn = ColumnNames.IsBlocked;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
