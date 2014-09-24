
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

namespace ITravel.DAL
{
	public abstract class _ContactInfo : SqlClientEntity
	{
		public _ContactInfo()
		{
			this.QuerySource = "ContactInfo";
			this.MappingName = "ContactInfo";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ContactInfoLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int ContactInfoID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ContactInfoID, ContactInfoID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ContactInfoLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ContactInfoID
			{
				get
				{
					return new SqlParameter("@ContactInfoID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter PassengerID
			{
				get
				{
					return new SqlParameter("@PassengerID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter TitleID
			{
				get
				{
					return new SqlParameter("@TitleID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter FirstName
			{
				get
				{
					return new SqlParameter("@FirstName", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter LastName
			{
				get
				{
					return new SqlParameter("@LastName", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter Email
			{
				get
				{
					return new SqlParameter("@Email", SqlDbType.NVarChar, 200);
				}
			}
			
			public static SqlParameter CountryCode
			{
				get
				{
					return new SqlParameter("@CountryCode", SqlDbType.NVarChar, 7);
				}
			}
			
			public static SqlParameter Mobile
			{
				get
				{
					return new SqlParameter("@Mobile", SqlDbType.NVarChar, 10);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ContactInfoID = "ContactInfoID";
            public const string PassengerID = "PassengerID";
            public const string TitleID = "TitleID";
            public const string FirstName = "FirstName";
            public const string LastName = "LastName";
            public const string Email = "Email";
            public const string CountryCode = "CountryCode";
            public const string Mobile = "Mobile";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ContactInfoID] = _ContactInfo.PropertyNames.ContactInfoID;
					ht[PassengerID] = _ContactInfo.PropertyNames.PassengerID;
					ht[TitleID] = _ContactInfo.PropertyNames.TitleID;
					ht[FirstName] = _ContactInfo.PropertyNames.FirstName;
					ht[LastName] = _ContactInfo.PropertyNames.LastName;
					ht[Email] = _ContactInfo.PropertyNames.Email;
					ht[CountryCode] = _ContactInfo.PropertyNames.CountryCode;
					ht[Mobile] = _ContactInfo.PropertyNames.Mobile;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string ContactInfoID = "ContactInfoID";
            public const string PassengerID = "PassengerID";
            public const string TitleID = "TitleID";
            public const string FirstName = "FirstName";
            public const string LastName = "LastName";
            public const string Email = "Email";
            public const string CountryCode = "CountryCode";
            public const string Mobile = "Mobile";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ContactInfoID] = _ContactInfo.ColumnNames.ContactInfoID;
					ht[PassengerID] = _ContactInfo.ColumnNames.PassengerID;
					ht[TitleID] = _ContactInfo.ColumnNames.TitleID;
					ht[FirstName] = _ContactInfo.ColumnNames.FirstName;
					ht[LastName] = _ContactInfo.ColumnNames.LastName;
					ht[Email] = _ContactInfo.ColumnNames.Email;
					ht[CountryCode] = _ContactInfo.ColumnNames.CountryCode;
					ht[Mobile] = _ContactInfo.ColumnNames.Mobile;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string ContactInfoID = "s_ContactInfoID";
            public const string PassengerID = "s_PassengerID";
            public const string TitleID = "s_TitleID";
            public const string FirstName = "s_FirstName";
            public const string LastName = "s_LastName";
            public const string Email = "s_Email";
            public const string CountryCode = "s_CountryCode";
            public const string Mobile = "s_Mobile";

		}
		#endregion		
		
		#region Properties
	
		public virtual int ContactInfoID
	    {
			get
	        {
				return base.Getint(ColumnNames.ContactInfoID);
			}
			set
	        {
				base.Setint(ColumnNames.ContactInfoID, value);
			}
		}

		public virtual int PassengerID
	    {
			get
	        {
				return base.Getint(ColumnNames.PassengerID);
			}
			set
	        {
				base.Setint(ColumnNames.PassengerID, value);
			}
		}

		public virtual int TitleID
	    {
			get
	        {
				return base.Getint(ColumnNames.TitleID);
			}
			set
	        {
				base.Setint(ColumnNames.TitleID, value);
			}
		}

		public virtual string FirstName
	    {
			get
	        {
				return base.Getstring(ColumnNames.FirstName);
			}
			set
	        {
				base.Setstring(ColumnNames.FirstName, value);
			}
		}

		public virtual string LastName
	    {
			get
	        {
				return base.Getstring(ColumnNames.LastName);
			}
			set
	        {
				base.Setstring(ColumnNames.LastName, value);
			}
		}

		public virtual string Email
	    {
			get
	        {
				return base.Getstring(ColumnNames.Email);
			}
			set
	        {
				base.Setstring(ColumnNames.Email, value);
			}
		}

		public virtual string CountryCode
	    {
			get
	        {
				return base.Getstring(ColumnNames.CountryCode);
			}
			set
	        {
				base.Setstring(ColumnNames.CountryCode, value);
			}
		}

		public virtual string Mobile
	    {
			get
	        {
				return base.Getstring(ColumnNames.Mobile);
			}
			set
	        {
				base.Setstring(ColumnNames.Mobile, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ContactInfoID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ContactInfoID) ? string.Empty : base.GetintAsString(ColumnNames.ContactInfoID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ContactInfoID);
				else
					this.ContactInfoID = base.SetintAsString(ColumnNames.ContactInfoID, value);
			}
		}

		public virtual string s_PassengerID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.PassengerID) ? string.Empty : base.GetintAsString(ColumnNames.PassengerID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.PassengerID);
				else
					this.PassengerID = base.SetintAsString(ColumnNames.PassengerID, value);
			}
		}

		public virtual string s_TitleID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.TitleID) ? string.Empty : base.GetintAsString(ColumnNames.TitleID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.TitleID);
				else
					this.TitleID = base.SetintAsString(ColumnNames.TitleID, value);
			}
		}

		public virtual string s_FirstName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.FirstName) ? string.Empty : base.GetstringAsString(ColumnNames.FirstName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.FirstName);
				else
					this.FirstName = base.SetstringAsString(ColumnNames.FirstName, value);
			}
		}

		public virtual string s_LastName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.LastName) ? string.Empty : base.GetstringAsString(ColumnNames.LastName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.LastName);
				else
					this.LastName = base.SetstringAsString(ColumnNames.LastName, value);
			}
		}

		public virtual string s_Email
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Email) ? string.Empty : base.GetstringAsString(ColumnNames.Email);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Email);
				else
					this.Email = base.SetstringAsString(ColumnNames.Email, value);
			}
		}

		public virtual string s_CountryCode
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CountryCode) ? string.Empty : base.GetstringAsString(ColumnNames.CountryCode);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CountryCode);
				else
					this.CountryCode = base.SetstringAsString(ColumnNames.CountryCode, value);
			}
		}

		public virtual string s_Mobile
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Mobile) ? string.Empty : base.GetstringAsString(ColumnNames.Mobile);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Mobile);
				else
					this.Mobile = base.SetstringAsString(ColumnNames.Mobile, value);
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
				
				
				public WhereParameter ContactInfoID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ContactInfoID, Parameters.ContactInfoID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter PassengerID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.PassengerID, Parameters.PassengerID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter TitleID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.TitleID, Parameters.TitleID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter FirstName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.FirstName, Parameters.FirstName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter LastName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.LastName, Parameters.LastName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Email
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Email, Parameters.Email);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CountryCode
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CountryCode, Parameters.CountryCode);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Mobile
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Mobile, Parameters.Mobile);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter ContactInfoID
		    {
				get
		        {
					if(_ContactInfoID_W == null)
	        	    {
						_ContactInfoID_W = TearOff.ContactInfoID;
					}
					return _ContactInfoID_W;
				}
			}

			public WhereParameter PassengerID
		    {
				get
		        {
					if(_PassengerID_W == null)
	        	    {
						_PassengerID_W = TearOff.PassengerID;
					}
					return _PassengerID_W;
				}
			}

			public WhereParameter TitleID
		    {
				get
		        {
					if(_TitleID_W == null)
	        	    {
						_TitleID_W = TearOff.TitleID;
					}
					return _TitleID_W;
				}
			}

			public WhereParameter FirstName
		    {
				get
		        {
					if(_FirstName_W == null)
	        	    {
						_FirstName_W = TearOff.FirstName;
					}
					return _FirstName_W;
				}
			}

			public WhereParameter LastName
		    {
				get
		        {
					if(_LastName_W == null)
	        	    {
						_LastName_W = TearOff.LastName;
					}
					return _LastName_W;
				}
			}

			public WhereParameter Email
		    {
				get
		        {
					if(_Email_W == null)
	        	    {
						_Email_W = TearOff.Email;
					}
					return _Email_W;
				}
			}

			public WhereParameter CountryCode
		    {
				get
		        {
					if(_CountryCode_W == null)
	        	    {
						_CountryCode_W = TearOff.CountryCode;
					}
					return _CountryCode_W;
				}
			}

			public WhereParameter Mobile
		    {
				get
		        {
					if(_Mobile_W == null)
	        	    {
						_Mobile_W = TearOff.Mobile;
					}
					return _Mobile_W;
				}
			}

			private WhereParameter _ContactInfoID_W = null;
			private WhereParameter _PassengerID_W = null;
			private WhereParameter _TitleID_W = null;
			private WhereParameter _FirstName_W = null;
			private WhereParameter _LastName_W = null;
			private WhereParameter _Email_W = null;
			private WhereParameter _CountryCode_W = null;
			private WhereParameter _Mobile_W = null;

			public void WhereClauseReset()
			{
				_ContactInfoID_W = null;
				_PassengerID_W = null;
				_TitleID_W = null;
				_FirstName_W = null;
				_LastName_W = null;
				_Email_W = null;
				_CountryCode_W = null;
				_Mobile_W = null;

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
				
				
				public AggregateParameter ContactInfoID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ContactInfoID, Parameters.ContactInfoID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter PassengerID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.PassengerID, Parameters.PassengerID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter TitleID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.TitleID, Parameters.TitleID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter FirstName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.FirstName, Parameters.FirstName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter LastName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.LastName, Parameters.LastName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Email
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Email, Parameters.Email);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CountryCode
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CountryCode, Parameters.CountryCode);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Mobile
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Mobile, Parameters.Mobile);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter ContactInfoID
		    {
				get
		        {
					if(_ContactInfoID_W == null)
	        	    {
						_ContactInfoID_W = TearOff.ContactInfoID;
					}
					return _ContactInfoID_W;
				}
			}

			public AggregateParameter PassengerID
		    {
				get
		        {
					if(_PassengerID_W == null)
	        	    {
						_PassengerID_W = TearOff.PassengerID;
					}
					return _PassengerID_W;
				}
			}

			public AggregateParameter TitleID
		    {
				get
		        {
					if(_TitleID_W == null)
	        	    {
						_TitleID_W = TearOff.TitleID;
					}
					return _TitleID_W;
				}
			}

			public AggregateParameter FirstName
		    {
				get
		        {
					if(_FirstName_W == null)
	        	    {
						_FirstName_W = TearOff.FirstName;
					}
					return _FirstName_W;
				}
			}

			public AggregateParameter LastName
		    {
				get
		        {
					if(_LastName_W == null)
	        	    {
						_LastName_W = TearOff.LastName;
					}
					return _LastName_W;
				}
			}

			public AggregateParameter Email
		    {
				get
		        {
					if(_Email_W == null)
	        	    {
						_Email_W = TearOff.Email;
					}
					return _Email_W;
				}
			}

			public AggregateParameter CountryCode
		    {
				get
		        {
					if(_CountryCode_W == null)
	        	    {
						_CountryCode_W = TearOff.CountryCode;
					}
					return _CountryCode_W;
				}
			}

			public AggregateParameter Mobile
		    {
				get
		        {
					if(_Mobile_W == null)
	        	    {
						_Mobile_W = TearOff.Mobile;
					}
					return _Mobile_W;
				}
			}

			private AggregateParameter _ContactInfoID_W = null;
			private AggregateParameter _PassengerID_W = null;
			private AggregateParameter _TitleID_W = null;
			private AggregateParameter _FirstName_W = null;
			private AggregateParameter _LastName_W = null;
			private AggregateParameter _Email_W = null;
			private AggregateParameter _CountryCode_W = null;
			private AggregateParameter _Mobile_W = null;

			public void AggregateClauseReset()
			{
				_ContactInfoID_W = null;
				_PassengerID_W = null;
				_TitleID_W = null;
				_FirstName_W = null;
				_LastName_W = null;
				_Email_W = null;
				_CountryCode_W = null;
				_Mobile_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ContactInfoInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.ContactInfoID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ContactInfoUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ContactInfoDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.ContactInfoID);
			p.SourceColumn = ColumnNames.ContactInfoID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.ContactInfoID);
			p.SourceColumn = ColumnNames.ContactInfoID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.PassengerID);
			p.SourceColumn = ColumnNames.PassengerID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.TitleID);
			p.SourceColumn = ColumnNames.TitleID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.FirstName);
			p.SourceColumn = ColumnNames.FirstName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.LastName);
			p.SourceColumn = ColumnNames.LastName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Email);
			p.SourceColumn = ColumnNames.Email;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CountryCode);
			p.SourceColumn = ColumnNames.CountryCode;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Mobile);
			p.SourceColumn = ColumnNames.Mobile;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}