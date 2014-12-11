
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
	public abstract class _ApplicationStatusHistory : SqlClientEntity
	{
		public _ApplicationStatusHistory()
		{
			this.QuerySource = "ApplicationStatusHistory";
			this.MappingName = "ApplicationStatusHistory";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ApplicationStatusHistoryLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int StatusHistoryID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.StatusHistoryID, StatusHistoryID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_ApplicationStatusHistoryLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter StatusHistoryID
			{
				get
				{
					return new SqlParameter("@StatusHistoryID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ApplicationStatusID
			{
				get
				{
					return new SqlParameter("@ApplicationStatusID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter StudentID
			{
				get
				{
					return new SqlParameter("@StudentID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter StatusDate
			{
				get
				{
					return new SqlParameter("@StatusDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter StatusComment
			{
				get
				{
					return new SqlParameter("@StatusComment", SqlDbType.NVarChar, 1073741823);
				}
			}
			
			public static SqlParameter ApplicationDataID
			{
				get
				{
					return new SqlParameter("@ApplicationDataID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter TuitionFees
			{
				get
				{
					return new SqlParameter("@TuitionFees", SqlDbType.Decimal, 0);
				}
			}
			
			public static SqlParameter WireTranseferReceipt
			{
				get
				{
					return new SqlParameter("@WireTranseferReceipt", SqlDbType.NVarChar, 300);
				}
			}
			
			public static SqlParameter VisaResult
			{
				get
				{
					return new SqlParameter("@VisaResult", SqlDbType.NVarChar, 300);
				}
			}
			
			public static SqlParameter VisaAppointMentDate
			{
				get
				{
					return new SqlParameter("@VisaAppointMentDate", SqlDbType.DateTime, 0);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string StatusHistoryID = "StatusHistoryID";
            public const string ApplicationStatusID = "ApplicationStatusID";
            public const string StudentID = "StudentID";
            public const string StatusDate = "StatusDate";
            public const string StatusComment = "StatusComment";
            public const string ApplicationDataID = "ApplicationDataID";
            public const string TuitionFees = "TuitionFees";
            public const string WireTranseferReceipt = "WireTranseferReceipt";
            public const string VisaResult = "VisaResult";
            public const string VisaAppointMentDate = "VisaAppointMentDate";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[StatusHistoryID] = _ApplicationStatusHistory.PropertyNames.StatusHistoryID;
					ht[ApplicationStatusID] = _ApplicationStatusHistory.PropertyNames.ApplicationStatusID;
					ht[StudentID] = _ApplicationStatusHistory.PropertyNames.StudentID;
					ht[StatusDate] = _ApplicationStatusHistory.PropertyNames.StatusDate;
					ht[StatusComment] = _ApplicationStatusHistory.PropertyNames.StatusComment;
					ht[ApplicationDataID] = _ApplicationStatusHistory.PropertyNames.ApplicationDataID;
					ht[TuitionFees] = _ApplicationStatusHistory.PropertyNames.TuitionFees;
					ht[WireTranseferReceipt] = _ApplicationStatusHistory.PropertyNames.WireTranseferReceipt;
					ht[VisaResult] = _ApplicationStatusHistory.PropertyNames.VisaResult;
					ht[VisaAppointMentDate] = _ApplicationStatusHistory.PropertyNames.VisaAppointMentDate;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string StatusHistoryID = "StatusHistoryID";
            public const string ApplicationStatusID = "ApplicationStatusID";
            public const string StudentID = "StudentID";
            public const string StatusDate = "StatusDate";
            public const string StatusComment = "StatusComment";
            public const string ApplicationDataID = "ApplicationDataID";
            public const string TuitionFees = "TuitionFees";
            public const string WireTranseferReceipt = "WireTranseferReceipt";
            public const string VisaResult = "VisaResult";
            public const string VisaAppointMentDate = "VisaAppointMentDate";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[StatusHistoryID] = _ApplicationStatusHistory.ColumnNames.StatusHistoryID;
					ht[ApplicationStatusID] = _ApplicationStatusHistory.ColumnNames.ApplicationStatusID;
					ht[StudentID] = _ApplicationStatusHistory.ColumnNames.StudentID;
					ht[StatusDate] = _ApplicationStatusHistory.ColumnNames.StatusDate;
					ht[StatusComment] = _ApplicationStatusHistory.ColumnNames.StatusComment;
					ht[ApplicationDataID] = _ApplicationStatusHistory.ColumnNames.ApplicationDataID;
					ht[TuitionFees] = _ApplicationStatusHistory.ColumnNames.TuitionFees;
					ht[WireTranseferReceipt] = _ApplicationStatusHistory.ColumnNames.WireTranseferReceipt;
					ht[VisaResult] = _ApplicationStatusHistory.ColumnNames.VisaResult;
					ht[VisaAppointMentDate] = _ApplicationStatusHistory.ColumnNames.VisaAppointMentDate;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string StatusHistoryID = "s_StatusHistoryID";
            public const string ApplicationStatusID = "s_ApplicationStatusID";
            public const string StudentID = "s_StudentID";
            public const string StatusDate = "s_StatusDate";
            public const string StatusComment = "s_StatusComment";
            public const string ApplicationDataID = "s_ApplicationDataID";
            public const string TuitionFees = "s_TuitionFees";
            public const string WireTranseferReceipt = "s_WireTranseferReceipt";
            public const string VisaResult = "s_VisaResult";
            public const string VisaAppointMentDate = "s_VisaAppointMentDate";

		}
		#endregion		
		
		#region Properties
	
		public virtual int StatusHistoryID
	    {
			get
	        {
				return base.Getint(ColumnNames.StatusHistoryID);
			}
			set
	        {
				base.Setint(ColumnNames.StatusHistoryID, value);
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

		public virtual int StudentID
	    {
			get
	        {
				return base.Getint(ColumnNames.StudentID);
			}
			set
	        {
				base.Setint(ColumnNames.StudentID, value);
			}
		}

		public virtual DateTime StatusDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.StatusDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.StatusDate, value);
			}
		}

		public virtual string StatusComment
	    {
			get
	        {
				return base.Getstring(ColumnNames.StatusComment);
			}
			set
	        {
				base.Setstring(ColumnNames.StatusComment, value);
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

		public virtual decimal TuitionFees
	    {
			get
	        {
				return base.Getdecimal(ColumnNames.TuitionFees);
			}
			set
	        {
				base.Setdecimal(ColumnNames.TuitionFees, value);
			}
		}

		public virtual string WireTranseferReceipt
	    {
			get
	        {
				return base.Getstring(ColumnNames.WireTranseferReceipt);
			}
			set
	        {
				base.Setstring(ColumnNames.WireTranseferReceipt, value);
			}
		}

		public virtual string VisaResult
	    {
			get
	        {
				return base.Getstring(ColumnNames.VisaResult);
			}
			set
	        {
				base.Setstring(ColumnNames.VisaResult, value);
			}
		}

		public virtual DateTime VisaAppointMentDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.VisaAppointMentDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.VisaAppointMentDate, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_StatusHistoryID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.StatusHistoryID) ? string.Empty : base.GetintAsString(ColumnNames.StatusHistoryID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.StatusHistoryID);
				else
					this.StatusHistoryID = base.SetintAsString(ColumnNames.StatusHistoryID, value);
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

		public virtual string s_StudentID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.StudentID) ? string.Empty : base.GetintAsString(ColumnNames.StudentID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.StudentID);
				else
					this.StudentID = base.SetintAsString(ColumnNames.StudentID, value);
			}
		}

		public virtual string s_StatusDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.StatusDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.StatusDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.StatusDate);
				else
					this.StatusDate = base.SetDateTimeAsString(ColumnNames.StatusDate, value);
			}
		}

		public virtual string s_StatusComment
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.StatusComment) ? string.Empty : base.GetstringAsString(ColumnNames.StatusComment);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.StatusComment);
				else
					this.StatusComment = base.SetstringAsString(ColumnNames.StatusComment, value);
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

		public virtual string s_TuitionFees
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.TuitionFees) ? string.Empty : base.GetdecimalAsString(ColumnNames.TuitionFees);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.TuitionFees);
				else
					this.TuitionFees = base.SetdecimalAsString(ColumnNames.TuitionFees, value);
			}
		}

		public virtual string s_WireTranseferReceipt
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.WireTranseferReceipt) ? string.Empty : base.GetstringAsString(ColumnNames.WireTranseferReceipt);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.WireTranseferReceipt);
				else
					this.WireTranseferReceipt = base.SetstringAsString(ColumnNames.WireTranseferReceipt, value);
			}
		}

		public virtual string s_VisaResult
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.VisaResult) ? string.Empty : base.GetstringAsString(ColumnNames.VisaResult);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.VisaResult);
				else
					this.VisaResult = base.SetstringAsString(ColumnNames.VisaResult, value);
			}
		}

		public virtual string s_VisaAppointMentDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.VisaAppointMentDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.VisaAppointMentDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.VisaAppointMentDate);
				else
					this.VisaAppointMentDate = base.SetDateTimeAsString(ColumnNames.VisaAppointMentDate, value);
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
				
				
				public WhereParameter StatusHistoryID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.StatusHistoryID, Parameters.StatusHistoryID);
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

				public WhereParameter StudentID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.StudentID, Parameters.StudentID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter StatusDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.StatusDate, Parameters.StatusDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter StatusComment
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.StatusComment, Parameters.StatusComment);
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

				public WhereParameter TuitionFees
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.TuitionFees, Parameters.TuitionFees);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter WireTranseferReceipt
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.WireTranseferReceipt, Parameters.WireTranseferReceipt);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter VisaResult
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.VisaResult, Parameters.VisaResult);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter VisaAppointMentDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.VisaAppointMentDate, Parameters.VisaAppointMentDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter StatusHistoryID
		    {
				get
		        {
					if(_StatusHistoryID_W == null)
	        	    {
						_StatusHistoryID_W = TearOff.StatusHistoryID;
					}
					return _StatusHistoryID_W;
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

			public WhereParameter StudentID
		    {
				get
		        {
					if(_StudentID_W == null)
	        	    {
						_StudentID_W = TearOff.StudentID;
					}
					return _StudentID_W;
				}
			}

			public WhereParameter StatusDate
		    {
				get
		        {
					if(_StatusDate_W == null)
	        	    {
						_StatusDate_W = TearOff.StatusDate;
					}
					return _StatusDate_W;
				}
			}

			public WhereParameter StatusComment
		    {
				get
		        {
					if(_StatusComment_W == null)
	        	    {
						_StatusComment_W = TearOff.StatusComment;
					}
					return _StatusComment_W;
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

			public WhereParameter TuitionFees
		    {
				get
		        {
					if(_TuitionFees_W == null)
	        	    {
						_TuitionFees_W = TearOff.TuitionFees;
					}
					return _TuitionFees_W;
				}
			}

			public WhereParameter WireTranseferReceipt
		    {
				get
		        {
					if(_WireTranseferReceipt_W == null)
	        	    {
						_WireTranseferReceipt_W = TearOff.WireTranseferReceipt;
					}
					return _WireTranseferReceipt_W;
				}
			}

			public WhereParameter VisaResult
		    {
				get
		        {
					if(_VisaResult_W == null)
	        	    {
						_VisaResult_W = TearOff.VisaResult;
					}
					return _VisaResult_W;
				}
			}

			public WhereParameter VisaAppointMentDate
		    {
				get
		        {
					if(_VisaAppointMentDate_W == null)
	        	    {
						_VisaAppointMentDate_W = TearOff.VisaAppointMentDate;
					}
					return _VisaAppointMentDate_W;
				}
			}

			private WhereParameter _StatusHistoryID_W = null;
			private WhereParameter _ApplicationStatusID_W = null;
			private WhereParameter _StudentID_W = null;
			private WhereParameter _StatusDate_W = null;
			private WhereParameter _StatusComment_W = null;
			private WhereParameter _ApplicationDataID_W = null;
			private WhereParameter _TuitionFees_W = null;
			private WhereParameter _WireTranseferReceipt_W = null;
			private WhereParameter _VisaResult_W = null;
			private WhereParameter _VisaAppointMentDate_W = null;

			public void WhereClauseReset()
			{
				_StatusHistoryID_W = null;
				_ApplicationStatusID_W = null;
				_StudentID_W = null;
				_StatusDate_W = null;
				_StatusComment_W = null;
				_ApplicationDataID_W = null;
				_TuitionFees_W = null;
				_WireTranseferReceipt_W = null;
				_VisaResult_W = null;
				_VisaAppointMentDate_W = null;

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
				
				
				public AggregateParameter StatusHistoryID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.StatusHistoryID, Parameters.StatusHistoryID);
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

				public AggregateParameter StudentID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.StudentID, Parameters.StudentID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter StatusDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.StatusDate, Parameters.StatusDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter StatusComment
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.StatusComment, Parameters.StatusComment);
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

				public AggregateParameter TuitionFees
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.TuitionFees, Parameters.TuitionFees);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter WireTranseferReceipt
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.WireTranseferReceipt, Parameters.WireTranseferReceipt);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter VisaResult
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.VisaResult, Parameters.VisaResult);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter VisaAppointMentDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.VisaAppointMentDate, Parameters.VisaAppointMentDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter StatusHistoryID
		    {
				get
		        {
					if(_StatusHistoryID_W == null)
	        	    {
						_StatusHistoryID_W = TearOff.StatusHistoryID;
					}
					return _StatusHistoryID_W;
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

			public AggregateParameter StudentID
		    {
				get
		        {
					if(_StudentID_W == null)
	        	    {
						_StudentID_W = TearOff.StudentID;
					}
					return _StudentID_W;
				}
			}

			public AggregateParameter StatusDate
		    {
				get
		        {
					if(_StatusDate_W == null)
	        	    {
						_StatusDate_W = TearOff.StatusDate;
					}
					return _StatusDate_W;
				}
			}

			public AggregateParameter StatusComment
		    {
				get
		        {
					if(_StatusComment_W == null)
	        	    {
						_StatusComment_W = TearOff.StatusComment;
					}
					return _StatusComment_W;
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

			public AggregateParameter TuitionFees
		    {
				get
		        {
					if(_TuitionFees_W == null)
	        	    {
						_TuitionFees_W = TearOff.TuitionFees;
					}
					return _TuitionFees_W;
				}
			}

			public AggregateParameter WireTranseferReceipt
		    {
				get
		        {
					if(_WireTranseferReceipt_W == null)
	        	    {
						_WireTranseferReceipt_W = TearOff.WireTranseferReceipt;
					}
					return _WireTranseferReceipt_W;
				}
			}

			public AggregateParameter VisaResult
		    {
				get
		        {
					if(_VisaResult_W == null)
	        	    {
						_VisaResult_W = TearOff.VisaResult;
					}
					return _VisaResult_W;
				}
			}

			public AggregateParameter VisaAppointMentDate
		    {
				get
		        {
					if(_VisaAppointMentDate_W == null)
	        	    {
						_VisaAppointMentDate_W = TearOff.VisaAppointMentDate;
					}
					return _VisaAppointMentDate_W;
				}
			}

			private AggregateParameter _StatusHistoryID_W = null;
			private AggregateParameter _ApplicationStatusID_W = null;
			private AggregateParameter _StudentID_W = null;
			private AggregateParameter _StatusDate_W = null;
			private AggregateParameter _StatusComment_W = null;
			private AggregateParameter _ApplicationDataID_W = null;
			private AggregateParameter _TuitionFees_W = null;
			private AggregateParameter _WireTranseferReceipt_W = null;
			private AggregateParameter _VisaResult_W = null;
			private AggregateParameter _VisaAppointMentDate_W = null;

			public void AggregateClauseReset()
			{
				_StatusHistoryID_W = null;
				_ApplicationStatusID_W = null;
				_StudentID_W = null;
				_StatusDate_W = null;
				_StatusComment_W = null;
				_ApplicationDataID_W = null;
				_TuitionFees_W = null;
				_WireTranseferReceipt_W = null;
				_VisaResult_W = null;
				_VisaAppointMentDate_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ApplicationStatusHistoryInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.StatusHistoryID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ApplicationStatusHistoryUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_ApplicationStatusHistoryDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.StatusHistoryID);
			p.SourceColumn = ColumnNames.StatusHistoryID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.StatusHistoryID);
			p.SourceColumn = ColumnNames.StatusHistoryID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ApplicationStatusID);
			p.SourceColumn = ColumnNames.ApplicationStatusID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.StudentID);
			p.SourceColumn = ColumnNames.StudentID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.StatusDate);
			p.SourceColumn = ColumnNames.StatusDate;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.StatusComment);
			p.SourceColumn = ColumnNames.StatusComment;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ApplicationDataID);
			p.SourceColumn = ColumnNames.ApplicationDataID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.TuitionFees);
			p.SourceColumn = ColumnNames.TuitionFees;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.WireTranseferReceipt);
			p.SourceColumn = ColumnNames.WireTranseferReceipt;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.VisaResult);
			p.SourceColumn = ColumnNames.VisaResult;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.VisaAppointMentDate);
			p.SourceColumn = ColumnNames.VisaAppointMentDate;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
