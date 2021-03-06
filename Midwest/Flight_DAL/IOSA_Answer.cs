
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

namespace Flight_DAL
{
	public abstract class _IOSA_Answer : SqlClientEntity
	{
		public _IOSA_Answer()
		{
			this.QuerySource = "IOSA_Answer";
			this.MappingName = "IOSA_Answer";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_IOSA_AnswerLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int AnswerID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.AnswerID, AnswerID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_IOSA_AnswerLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter AnswerID
			{
				get
				{
					return new SqlParameter("@AnswerID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter VersionID
			{
				get
				{
					return new SqlParameter("@VersionID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter Name
			{
				get
				{
					return new SqlParameter("@Name", SqlDbType.NVarChar, 250);
				}
			}
			
			public static SqlParameter Wieght
			{
				get
				{
					return new SqlParameter("@Wieght", SqlDbType.Int, 0);
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
            public const string AnswerID = "AnswerID";
            public const string VersionID = "VersionID";
            public const string Name = "Name";
            public const string Wieght = "Wieght";
            public const string Description = "Description";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[AnswerID] = _IOSA_Answer.PropertyNames.AnswerID;
					ht[VersionID] = _IOSA_Answer.PropertyNames.VersionID;
					ht[Name] = _IOSA_Answer.PropertyNames.Name;
					ht[Wieght] = _IOSA_Answer.PropertyNames.Wieght;
					ht[Description] = _IOSA_Answer.PropertyNames.Description;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string AnswerID = "AnswerID";
            public const string VersionID = "VersionID";
            public const string Name = "Name";
            public const string Wieght = "Wieght";
            public const string Description = "Description";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[AnswerID] = _IOSA_Answer.ColumnNames.AnswerID;
					ht[VersionID] = _IOSA_Answer.ColumnNames.VersionID;
					ht[Name] = _IOSA_Answer.ColumnNames.Name;
					ht[Wieght] = _IOSA_Answer.ColumnNames.Wieght;
					ht[Description] = _IOSA_Answer.ColumnNames.Description;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string AnswerID = "s_AnswerID";
            public const string VersionID = "s_VersionID";
            public const string Name = "s_Name";
            public const string Wieght = "s_Wieght";
            public const string Description = "s_Description";

		}
		#endregion		
		
		#region Properties
	
		public virtual int AnswerID
	    {
			get
	        {
				return base.Getint(ColumnNames.AnswerID);
			}
			set
	        {
				base.Setint(ColumnNames.AnswerID, value);
			}
		}

		public virtual int VersionID
	    {
			get
	        {
				return base.Getint(ColumnNames.VersionID);
			}
			set
	        {
				base.Setint(ColumnNames.VersionID, value);
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

		public virtual int Wieght
	    {
			get
	        {
				return base.Getint(ColumnNames.Wieght);
			}
			set
	        {
				base.Setint(ColumnNames.Wieght, value);
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
	
		public virtual string s_AnswerID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.AnswerID) ? string.Empty : base.GetintAsString(ColumnNames.AnswerID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.AnswerID);
				else
					this.AnswerID = base.SetintAsString(ColumnNames.AnswerID, value);
			}
		}

		public virtual string s_VersionID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.VersionID) ? string.Empty : base.GetintAsString(ColumnNames.VersionID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.VersionID);
				else
					this.VersionID = base.SetintAsString(ColumnNames.VersionID, value);
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

		public virtual string s_Wieght
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Wieght) ? string.Empty : base.GetintAsString(ColumnNames.Wieght);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Wieght);
				else
					this.Wieght = base.SetintAsString(ColumnNames.Wieght, value);
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
				
				
				public WhereParameter AnswerID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.AnswerID, Parameters.AnswerID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter VersionID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.VersionID, Parameters.VersionID);
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

				public WhereParameter Wieght
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Wieght, Parameters.Wieght);
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
		
			public WhereParameter AnswerID
		    {
				get
		        {
					if(_AnswerID_W == null)
	        	    {
						_AnswerID_W = TearOff.AnswerID;
					}
					return _AnswerID_W;
				}
			}

			public WhereParameter VersionID
		    {
				get
		        {
					if(_VersionID_W == null)
	        	    {
						_VersionID_W = TearOff.VersionID;
					}
					return _VersionID_W;
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

			public WhereParameter Wieght
		    {
				get
		        {
					if(_Wieght_W == null)
	        	    {
						_Wieght_W = TearOff.Wieght;
					}
					return _Wieght_W;
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

			private WhereParameter _AnswerID_W = null;
			private WhereParameter _VersionID_W = null;
			private WhereParameter _Name_W = null;
			private WhereParameter _Wieght_W = null;
			private WhereParameter _Description_W = null;

			public void WhereClauseReset()
			{
				_AnswerID_W = null;
				_VersionID_W = null;
				_Name_W = null;
				_Wieght_W = null;
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
				
				
				public AggregateParameter AnswerID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.AnswerID, Parameters.AnswerID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter VersionID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.VersionID, Parameters.VersionID);
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

				public AggregateParameter Wieght
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Wieght, Parameters.Wieght);
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
		
			public AggregateParameter AnswerID
		    {
				get
		        {
					if(_AnswerID_W == null)
	        	    {
						_AnswerID_W = TearOff.AnswerID;
					}
					return _AnswerID_W;
				}
			}

			public AggregateParameter VersionID
		    {
				get
		        {
					if(_VersionID_W == null)
	        	    {
						_VersionID_W = TearOff.VersionID;
					}
					return _VersionID_W;
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

			public AggregateParameter Wieght
		    {
				get
		        {
					if(_Wieght_W == null)
	        	    {
						_Wieght_W = TearOff.Wieght;
					}
					return _Wieght_W;
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

			private AggregateParameter _AnswerID_W = null;
			private AggregateParameter _VersionID_W = null;
			private AggregateParameter _Name_W = null;
			private AggregateParameter _Wieght_W = null;
			private AggregateParameter _Description_W = null;

			public void AggregateClauseReset()
			{
				_AnswerID_W = null;
				_VersionID_W = null;
				_Name_W = null;
				_Wieght_W = null;
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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_IOSA_AnswerInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.AnswerID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_IOSA_AnswerUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_IOSA_AnswerDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.AnswerID);
			p.SourceColumn = ColumnNames.AnswerID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.AnswerID);
			p.SourceColumn = ColumnNames.AnswerID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.VersionID);
			p.SourceColumn = ColumnNames.VersionID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Name);
			p.SourceColumn = ColumnNames.Name;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Wieght);
			p.SourceColumn = ColumnNames.Wieght;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Description);
			p.SourceColumn = ColumnNames.Description;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
