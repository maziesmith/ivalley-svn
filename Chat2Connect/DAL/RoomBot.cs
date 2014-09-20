
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
	public abstract class _RoomBot : SqlClientEntity
	{
		public _RoomBot()
		{
			this.QuerySource = "RoomBot";
			this.MappingName = "RoomBot";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_RoomBotLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int ID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.ID, ID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_RoomBotLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter ID
			{
				get
				{
					return new SqlParameter("@ID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter RoomID
			{
				get
				{
					return new SqlParameter("@RoomID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter BotID
			{
				get
				{
					return new SqlParameter("@BotID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter ShortcutKey
			{
				get
				{
					return new SqlParameter("@ShortcutKey", SqlDbType.VarChar, 50);
				}
			}
			
			public static SqlParameter CreatedByMemberID
			{
				get
				{
					return new SqlParameter("@CreatedByMemberID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter IsEnabled
			{
				get
				{
					return new SqlParameter("@IsEnabled", SqlDbType.Bit, 0);
				}
			}
			
			public static SqlParameter StartDate
			{
				get
				{
					return new SqlParameter("@StartDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter EndDate
			{
				get
				{
					return new SqlParameter("@EndDate", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter TimeStamp
			{
				get
				{
					return new SqlParameter("@TimeStamp", SqlDbType.DateTime, 0);
				}
			}
			
			public static SqlParameter SettingString
			{
				get
				{
					return new SqlParameter("@SettingString", SqlDbType.NVarChar, 2147483647);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string ID = "ID";
            public const string RoomID = "RoomID";
            public const string BotID = "BotID";
            public const string ShortcutKey = "ShortcutKey";
            public const string CreatedByMemberID = "CreatedByMemberID";
            public const string IsEnabled = "IsEnabled";
            public const string StartDate = "StartDate";
            public const string EndDate = "EndDate";
            public const string TimeStamp = "TimeStamp";
            public const string SettingString = "SettingString";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ID] = _RoomBot.PropertyNames.ID;
					ht[RoomID] = _RoomBot.PropertyNames.RoomID;
					ht[BotID] = _RoomBot.PropertyNames.BotID;
					ht[ShortcutKey] = _RoomBot.PropertyNames.ShortcutKey;
					ht[CreatedByMemberID] = _RoomBot.PropertyNames.CreatedByMemberID;
					ht[IsEnabled] = _RoomBot.PropertyNames.IsEnabled;
					ht[StartDate] = _RoomBot.PropertyNames.StartDate;
					ht[EndDate] = _RoomBot.PropertyNames.EndDate;
					ht[TimeStamp] = _RoomBot.PropertyNames.TimeStamp;
					ht[SettingString] = _RoomBot.PropertyNames.SettingString;

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
            public const string BotID = "BotID";
            public const string ShortcutKey = "ShortcutKey";
            public const string CreatedByMemberID = "CreatedByMemberID";
            public const string IsEnabled = "IsEnabled";
            public const string StartDate = "StartDate";
            public const string EndDate = "EndDate";
            public const string TimeStamp = "TimeStamp";
            public const string SettingString = "SettingString";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[ID] = _RoomBot.ColumnNames.ID;
					ht[RoomID] = _RoomBot.ColumnNames.RoomID;
					ht[BotID] = _RoomBot.ColumnNames.BotID;
					ht[ShortcutKey] = _RoomBot.ColumnNames.ShortcutKey;
					ht[CreatedByMemberID] = _RoomBot.ColumnNames.CreatedByMemberID;
					ht[IsEnabled] = _RoomBot.ColumnNames.IsEnabled;
					ht[StartDate] = _RoomBot.ColumnNames.StartDate;
					ht[EndDate] = _RoomBot.ColumnNames.EndDate;
					ht[TimeStamp] = _RoomBot.ColumnNames.TimeStamp;
					ht[SettingString] = _RoomBot.ColumnNames.SettingString;

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
            public const string BotID = "s_BotID";
            public const string ShortcutKey = "s_ShortcutKey";
            public const string CreatedByMemberID = "s_CreatedByMemberID";
            public const string IsEnabled = "s_IsEnabled";
            public const string StartDate = "s_StartDate";
            public const string EndDate = "s_EndDate";
            public const string TimeStamp = "s_TimeStamp";
            public const string SettingString = "s_SettingString";

		}
		#endregion		
		
		#region Properties
	
		public virtual int ID
	    {
			get
	        {
				return base.Getint(ColumnNames.ID);
			}
			set
	        {
				base.Setint(ColumnNames.ID, value);
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

		public virtual int BotID
	    {
			get
	        {
				return base.Getint(ColumnNames.BotID);
			}
			set
	        {
				base.Setint(ColumnNames.BotID, value);
			}
		}

		public virtual string ShortcutKey
	    {
			get
	        {
				return base.Getstring(ColumnNames.ShortcutKey);
			}
			set
	        {
				base.Setstring(ColumnNames.ShortcutKey, value);
			}
		}

		public virtual int CreatedByMemberID
	    {
			get
	        {
				return base.Getint(ColumnNames.CreatedByMemberID);
			}
			set
	        {
				base.Setint(ColumnNames.CreatedByMemberID, value);
			}
		}

		public virtual bool IsEnabled
	    {
			get
	        {
				return base.Getbool(ColumnNames.IsEnabled);
			}
			set
	        {
				base.Setbool(ColumnNames.IsEnabled, value);
			}
		}

		public virtual DateTime StartDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.StartDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.StartDate, value);
			}
		}

		public virtual DateTime EndDate
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.EndDate);
			}
			set
	        {
				base.SetDateTime(ColumnNames.EndDate, value);
			}
		}

		public virtual DateTime TimeStamp
	    {
			get
	        {
				return base.GetDateTime(ColumnNames.TimeStamp);
			}
			set
	        {
				base.SetDateTime(ColumnNames.TimeStamp, value);
			}
		}

		public virtual string SettingString
	    {
			get
	        {
				return base.Getstring(ColumnNames.SettingString);
			}
			set
	        {
				base.Setstring(ColumnNames.SettingString, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_ID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ID) ? string.Empty : base.GetintAsString(ColumnNames.ID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ID);
				else
					this.ID = base.SetintAsString(ColumnNames.ID, value);
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

		public virtual string s_BotID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.BotID) ? string.Empty : base.GetintAsString(ColumnNames.BotID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.BotID);
				else
					this.BotID = base.SetintAsString(ColumnNames.BotID, value);
			}
		}

		public virtual string s_ShortcutKey
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ShortcutKey) ? string.Empty : base.GetstringAsString(ColumnNames.ShortcutKey);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ShortcutKey);
				else
					this.ShortcutKey = base.SetstringAsString(ColumnNames.ShortcutKey, value);
			}
		}

		public virtual string s_CreatedByMemberID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CreatedByMemberID) ? string.Empty : base.GetintAsString(ColumnNames.CreatedByMemberID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CreatedByMemberID);
				else
					this.CreatedByMemberID = base.SetintAsString(ColumnNames.CreatedByMemberID, value);
			}
		}

		public virtual string s_IsEnabled
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.IsEnabled) ? string.Empty : base.GetboolAsString(ColumnNames.IsEnabled);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.IsEnabled);
				else
					this.IsEnabled = base.SetboolAsString(ColumnNames.IsEnabled, value);
			}
		}

		public virtual string s_StartDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.StartDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.StartDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.StartDate);
				else
					this.StartDate = base.SetDateTimeAsString(ColumnNames.StartDate, value);
			}
		}

		public virtual string s_EndDate
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.EndDate) ? string.Empty : base.GetDateTimeAsString(ColumnNames.EndDate);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.EndDate);
				else
					this.EndDate = base.SetDateTimeAsString(ColumnNames.EndDate, value);
			}
		}

		public virtual string s_TimeStamp
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.TimeStamp) ? string.Empty : base.GetDateTimeAsString(ColumnNames.TimeStamp);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.TimeStamp);
				else
					this.TimeStamp = base.SetDateTimeAsString(ColumnNames.TimeStamp, value);
			}
		}

		public virtual string s_SettingString
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.SettingString) ? string.Empty : base.GetstringAsString(ColumnNames.SettingString);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.SettingString);
				else
					this.SettingString = base.SetstringAsString(ColumnNames.SettingString, value);
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

				public WhereParameter BotID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.BotID, Parameters.BotID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ShortcutKey
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ShortcutKey, Parameters.ShortcutKey);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CreatedByMemberID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CreatedByMemberID, Parameters.CreatedByMemberID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter IsEnabled
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.IsEnabled, Parameters.IsEnabled);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter StartDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.StartDate, Parameters.StartDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter EndDate
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.EndDate, Parameters.EndDate);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter TimeStamp
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.TimeStamp, Parameters.TimeStamp);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter SettingString
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.SettingString, Parameters.SettingString);
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

			public WhereParameter BotID
		    {
				get
		        {
					if(_BotID_W == null)
	        	    {
						_BotID_W = TearOff.BotID;
					}
					return _BotID_W;
				}
			}

			public WhereParameter ShortcutKey
		    {
				get
		        {
					if(_ShortcutKey_W == null)
	        	    {
						_ShortcutKey_W = TearOff.ShortcutKey;
					}
					return _ShortcutKey_W;
				}
			}

			public WhereParameter CreatedByMemberID
		    {
				get
		        {
					if(_CreatedByMemberID_W == null)
	        	    {
						_CreatedByMemberID_W = TearOff.CreatedByMemberID;
					}
					return _CreatedByMemberID_W;
				}
			}

			public WhereParameter IsEnabled
		    {
				get
		        {
					if(_IsEnabled_W == null)
	        	    {
						_IsEnabled_W = TearOff.IsEnabled;
					}
					return _IsEnabled_W;
				}
			}

			public WhereParameter StartDate
		    {
				get
		        {
					if(_StartDate_W == null)
	        	    {
						_StartDate_W = TearOff.StartDate;
					}
					return _StartDate_W;
				}
			}

			public WhereParameter EndDate
		    {
				get
		        {
					if(_EndDate_W == null)
	        	    {
						_EndDate_W = TearOff.EndDate;
					}
					return _EndDate_W;
				}
			}

			public WhereParameter TimeStamp
		    {
				get
		        {
					if(_TimeStamp_W == null)
	        	    {
						_TimeStamp_W = TearOff.TimeStamp;
					}
					return _TimeStamp_W;
				}
			}

			public WhereParameter SettingString
		    {
				get
		        {
					if(_SettingString_W == null)
	        	    {
						_SettingString_W = TearOff.SettingString;
					}
					return _SettingString_W;
				}
			}

			private WhereParameter _ID_W = null;
			private WhereParameter _RoomID_W = null;
			private WhereParameter _BotID_W = null;
			private WhereParameter _ShortcutKey_W = null;
			private WhereParameter _CreatedByMemberID_W = null;
			private WhereParameter _IsEnabled_W = null;
			private WhereParameter _StartDate_W = null;
			private WhereParameter _EndDate_W = null;
			private WhereParameter _TimeStamp_W = null;
			private WhereParameter _SettingString_W = null;

			public void WhereClauseReset()
			{
				_ID_W = null;
				_RoomID_W = null;
				_BotID_W = null;
				_ShortcutKey_W = null;
				_CreatedByMemberID_W = null;
				_IsEnabled_W = null;
				_StartDate_W = null;
				_EndDate_W = null;
				_TimeStamp_W = null;
				_SettingString_W = null;

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

				public AggregateParameter BotID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.BotID, Parameters.BotID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ShortcutKey
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ShortcutKey, Parameters.ShortcutKey);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CreatedByMemberID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CreatedByMemberID, Parameters.CreatedByMemberID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter IsEnabled
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.IsEnabled, Parameters.IsEnabled);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter StartDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.StartDate, Parameters.StartDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter EndDate
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.EndDate, Parameters.EndDate);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter TimeStamp
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.TimeStamp, Parameters.TimeStamp);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter SettingString
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.SettingString, Parameters.SettingString);
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

			public AggregateParameter BotID
		    {
				get
		        {
					if(_BotID_W == null)
	        	    {
						_BotID_W = TearOff.BotID;
					}
					return _BotID_W;
				}
			}

			public AggregateParameter ShortcutKey
		    {
				get
		        {
					if(_ShortcutKey_W == null)
	        	    {
						_ShortcutKey_W = TearOff.ShortcutKey;
					}
					return _ShortcutKey_W;
				}
			}

			public AggregateParameter CreatedByMemberID
		    {
				get
		        {
					if(_CreatedByMemberID_W == null)
	        	    {
						_CreatedByMemberID_W = TearOff.CreatedByMemberID;
					}
					return _CreatedByMemberID_W;
				}
			}

			public AggregateParameter IsEnabled
		    {
				get
		        {
					if(_IsEnabled_W == null)
	        	    {
						_IsEnabled_W = TearOff.IsEnabled;
					}
					return _IsEnabled_W;
				}
			}

			public AggregateParameter StartDate
		    {
				get
		        {
					if(_StartDate_W == null)
	        	    {
						_StartDate_W = TearOff.StartDate;
					}
					return _StartDate_W;
				}
			}

			public AggregateParameter EndDate
		    {
				get
		        {
					if(_EndDate_W == null)
	        	    {
						_EndDate_W = TearOff.EndDate;
					}
					return _EndDate_W;
				}
			}

			public AggregateParameter TimeStamp
		    {
				get
		        {
					if(_TimeStamp_W == null)
	        	    {
						_TimeStamp_W = TearOff.TimeStamp;
					}
					return _TimeStamp_W;
				}
			}

			public AggregateParameter SettingString
		    {
				get
		        {
					if(_SettingString_W == null)
	        	    {
						_SettingString_W = TearOff.SettingString;
					}
					return _SettingString_W;
				}
			}

			private AggregateParameter _ID_W = null;
			private AggregateParameter _RoomID_W = null;
			private AggregateParameter _BotID_W = null;
			private AggregateParameter _ShortcutKey_W = null;
			private AggregateParameter _CreatedByMemberID_W = null;
			private AggregateParameter _IsEnabled_W = null;
			private AggregateParameter _StartDate_W = null;
			private AggregateParameter _EndDate_W = null;
			private AggregateParameter _TimeStamp_W = null;
			private AggregateParameter _SettingString_W = null;

			public void AggregateClauseReset()
			{
				_ID_W = null;
				_RoomID_W = null;
				_BotID_W = null;
				_ShortcutKey_W = null;
				_CreatedByMemberID_W = null;
				_IsEnabled_W = null;
				_StartDate_W = null;
				_EndDate_W = null;
				_TimeStamp_W = null;
				_SettingString_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_RoomBotInsert]";
	
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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_RoomBotUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_RoomBotDelete]";
	
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

			p = cmd.Parameters.Add(Parameters.BotID);
			p.SourceColumn = ColumnNames.BotID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ShortcutKey);
			p.SourceColumn = ColumnNames.ShortcutKey;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CreatedByMemberID);
			p.SourceColumn = ColumnNames.CreatedByMemberID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.IsEnabled);
			p.SourceColumn = ColumnNames.IsEnabled;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.StartDate);
			p.SourceColumn = ColumnNames.StartDate;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.EndDate);
			p.SourceColumn = ColumnNames.EndDate;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.TimeStamp);
			p.SourceColumn = ColumnNames.TimeStamp;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.SettingString);
			p.SourceColumn = ColumnNames.SettingString;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
