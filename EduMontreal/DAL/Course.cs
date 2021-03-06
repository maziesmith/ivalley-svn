
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
	public abstract class _Course : SqlClientEntity
	{
		public _Course()
		{
			this.QuerySource = "Course";
			this.MappingName = "Course";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_CourseLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int CourseID)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.CourseID, CourseID);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_CourseLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter CourseID
			{
				get
				{
					return new SqlParameter("@CourseID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CourseLangaugeID
			{
				get
				{
					return new SqlParameter("@CourseLangaugeID", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CourseName
			{
				get
				{
					return new SqlParameter("@CourseName", SqlDbType.NVarChar, 450);
				}
			}
			
			public static SqlParameter CourseDescription
			{
				get
				{
					return new SqlParameter("@CourseDescription", SqlDbType.NVarChar, 1073741823);
				}
			}
			
			public static SqlParameter CoursePeriod
			{
				get
				{
					return new SqlParameter("@CoursePeriod", SqlDbType.NVarChar, 50);
				}
			}
			
			public static SqlParameter CourseImagePath
			{
				get
				{
					return new SqlParameter("@CourseImagePath", SqlDbType.NVarChar, 350);
				}
			}
			
			public static SqlParameter Course_PDF_Path
			{
				get
				{
					return new SqlParameter("@Course_PDF_Path", SqlDbType.NVarChar, 350);
				}
			}
			
			public static SqlParameter CourseCode
			{
				get
				{
					return new SqlParameter("@CourseCode", SqlDbType.NVarChar, 10);
				}
			}
			
			public static SqlParameter ArCourseName
			{
				get
				{
					return new SqlParameter("@ArCourseName", SqlDbType.NVarChar, 450);
				}
			}
			
			public static SqlParameter ArCourseDescription
			{
				get
				{
					return new SqlParameter("@ArCourseDescription", SqlDbType.NVarChar, 1073741823);
				}
			}
			
			public static SqlParameter ArCoursePeriod
			{
				get
				{
					return new SqlParameter("@ArCoursePeriod", SqlDbType.NVarChar, 50);
				}
			}
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string CourseID = "CourseID";
            public const string CourseLangaugeID = "CourseLangaugeID";
            public const string CourseName = "CourseName";
            public const string CourseDescription = "CourseDescription";
            public const string CoursePeriod = "CoursePeriod";
            public const string CourseImagePath = "CourseImagePath";
            public const string Course_PDF_Path = "Course_PDF_Path";
            public const string CourseCode = "CourseCode";
            public const string ArCourseName = "ArCourseName";
            public const string ArCourseDescription = "ArCourseDescription";
            public const string ArCoursePeriod = "ArCoursePeriod";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[CourseID] = _Course.PropertyNames.CourseID;
					ht[CourseLangaugeID] = _Course.PropertyNames.CourseLangaugeID;
					ht[CourseName] = _Course.PropertyNames.CourseName;
					ht[CourseDescription] = _Course.PropertyNames.CourseDescription;
					ht[CoursePeriod] = _Course.PropertyNames.CoursePeriod;
					ht[CourseImagePath] = _Course.PropertyNames.CourseImagePath;
					ht[Course_PDF_Path] = _Course.PropertyNames.Course_PDF_Path;
					ht[CourseCode] = _Course.PropertyNames.CourseCode;
					ht[ArCourseName] = _Course.PropertyNames.ArCourseName;
					ht[ArCourseDescription] = _Course.PropertyNames.ArCourseDescription;
					ht[ArCoursePeriod] = _Course.PropertyNames.ArCoursePeriod;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string CourseID = "CourseID";
            public const string CourseLangaugeID = "CourseLangaugeID";
            public const string CourseName = "CourseName";
            public const string CourseDescription = "CourseDescription";
            public const string CoursePeriod = "CoursePeriod";
            public const string CourseImagePath = "CourseImagePath";
            public const string Course_PDF_Path = "Course_PDF_Path";
            public const string CourseCode = "CourseCode";
            public const string ArCourseName = "ArCourseName";
            public const string ArCourseDescription = "ArCourseDescription";
            public const string ArCoursePeriod = "ArCoursePeriod";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[CourseID] = _Course.ColumnNames.CourseID;
					ht[CourseLangaugeID] = _Course.ColumnNames.CourseLangaugeID;
					ht[CourseName] = _Course.ColumnNames.CourseName;
					ht[CourseDescription] = _Course.ColumnNames.CourseDescription;
					ht[CoursePeriod] = _Course.ColumnNames.CoursePeriod;
					ht[CourseImagePath] = _Course.ColumnNames.CourseImagePath;
					ht[Course_PDF_Path] = _Course.ColumnNames.Course_PDF_Path;
					ht[CourseCode] = _Course.ColumnNames.CourseCode;
					ht[ArCourseName] = _Course.ColumnNames.ArCourseName;
					ht[ArCourseDescription] = _Course.ColumnNames.ArCourseDescription;
					ht[ArCoursePeriod] = _Course.ColumnNames.ArCoursePeriod;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string CourseID = "s_CourseID";
            public const string CourseLangaugeID = "s_CourseLangaugeID";
            public const string CourseName = "s_CourseName";
            public const string CourseDescription = "s_CourseDescription";
            public const string CoursePeriod = "s_CoursePeriod";
            public const string CourseImagePath = "s_CourseImagePath";
            public const string Course_PDF_Path = "s_Course_PDF_Path";
            public const string CourseCode = "s_CourseCode";
            public const string ArCourseName = "s_ArCourseName";
            public const string ArCourseDescription = "s_ArCourseDescription";
            public const string ArCoursePeriod = "s_ArCoursePeriod";

		}
		#endregion		
		
		#region Properties
	
		public virtual int CourseID
	    {
			get
	        {
				return base.Getint(ColumnNames.CourseID);
			}
			set
	        {
				base.Setint(ColumnNames.CourseID, value);
			}
		}

		public virtual int CourseLangaugeID
	    {
			get
	        {
				return base.Getint(ColumnNames.CourseLangaugeID);
			}
			set
	        {
				base.Setint(ColumnNames.CourseLangaugeID, value);
			}
		}

		public virtual string CourseName
	    {
			get
	        {
				return base.Getstring(ColumnNames.CourseName);
			}
			set
	        {
				base.Setstring(ColumnNames.CourseName, value);
			}
		}

		public virtual string CourseDescription
	    {
			get
	        {
				return base.Getstring(ColumnNames.CourseDescription);
			}
			set
	        {
				base.Setstring(ColumnNames.CourseDescription, value);
			}
		}

		public virtual string CoursePeriod
	    {
			get
	        {
				return base.Getstring(ColumnNames.CoursePeriod);
			}
			set
	        {
				base.Setstring(ColumnNames.CoursePeriod, value);
			}
		}

		public virtual string CourseImagePath
	    {
			get
	        {
				return base.Getstring(ColumnNames.CourseImagePath);
			}
			set
	        {
				base.Setstring(ColumnNames.CourseImagePath, value);
			}
		}

		public virtual string Course_PDF_Path
	    {
			get
	        {
				return base.Getstring(ColumnNames.Course_PDF_Path);
			}
			set
	        {
				base.Setstring(ColumnNames.Course_PDF_Path, value);
			}
		}

		public virtual string CourseCode
	    {
			get
	        {
				return base.Getstring(ColumnNames.CourseCode);
			}
			set
	        {
				base.Setstring(ColumnNames.CourseCode, value);
			}
		}

		public virtual string ArCourseName
	    {
			get
	        {
				return base.Getstring(ColumnNames.ArCourseName);
			}
			set
	        {
				base.Setstring(ColumnNames.ArCourseName, value);
			}
		}

		public virtual string ArCourseDescription
	    {
			get
	        {
				return base.Getstring(ColumnNames.ArCourseDescription);
			}
			set
	        {
				base.Setstring(ColumnNames.ArCourseDescription, value);
			}
		}

		public virtual string ArCoursePeriod
	    {
			get
	        {
				return base.Getstring(ColumnNames.ArCoursePeriod);
			}
			set
	        {
				base.Setstring(ColumnNames.ArCoursePeriod, value);
			}
		}


		#endregion
		
		#region String Properties
	
		public virtual string s_CourseID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CourseID) ? string.Empty : base.GetintAsString(ColumnNames.CourseID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CourseID);
				else
					this.CourseID = base.SetintAsString(ColumnNames.CourseID, value);
			}
		}

		public virtual string s_CourseLangaugeID
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CourseLangaugeID) ? string.Empty : base.GetintAsString(ColumnNames.CourseLangaugeID);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CourseLangaugeID);
				else
					this.CourseLangaugeID = base.SetintAsString(ColumnNames.CourseLangaugeID, value);
			}
		}

		public virtual string s_CourseName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CourseName) ? string.Empty : base.GetstringAsString(ColumnNames.CourseName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CourseName);
				else
					this.CourseName = base.SetstringAsString(ColumnNames.CourseName, value);
			}
		}

		public virtual string s_CourseDescription
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CourseDescription) ? string.Empty : base.GetstringAsString(ColumnNames.CourseDescription);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CourseDescription);
				else
					this.CourseDescription = base.SetstringAsString(ColumnNames.CourseDescription, value);
			}
		}

		public virtual string s_CoursePeriod
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CoursePeriod) ? string.Empty : base.GetstringAsString(ColumnNames.CoursePeriod);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CoursePeriod);
				else
					this.CoursePeriod = base.SetstringAsString(ColumnNames.CoursePeriod, value);
			}
		}

		public virtual string s_CourseImagePath
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CourseImagePath) ? string.Empty : base.GetstringAsString(ColumnNames.CourseImagePath);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CourseImagePath);
				else
					this.CourseImagePath = base.SetstringAsString(ColumnNames.CourseImagePath, value);
			}
		}

		public virtual string s_Course_PDF_Path
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.Course_PDF_Path) ? string.Empty : base.GetstringAsString(ColumnNames.Course_PDF_Path);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.Course_PDF_Path);
				else
					this.Course_PDF_Path = base.SetstringAsString(ColumnNames.Course_PDF_Path, value);
			}
		}

		public virtual string s_CourseCode
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CourseCode) ? string.Empty : base.GetstringAsString(ColumnNames.CourseCode);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CourseCode);
				else
					this.CourseCode = base.SetstringAsString(ColumnNames.CourseCode, value);
			}
		}

		public virtual string s_ArCourseName
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ArCourseName) ? string.Empty : base.GetstringAsString(ColumnNames.ArCourseName);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ArCourseName);
				else
					this.ArCourseName = base.SetstringAsString(ColumnNames.ArCourseName, value);
			}
		}

		public virtual string s_ArCourseDescription
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ArCourseDescription) ? string.Empty : base.GetstringAsString(ColumnNames.ArCourseDescription);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ArCourseDescription);
				else
					this.ArCourseDescription = base.SetstringAsString(ColumnNames.ArCourseDescription, value);
			}
		}

		public virtual string s_ArCoursePeriod
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.ArCoursePeriod) ? string.Empty : base.GetstringAsString(ColumnNames.ArCoursePeriod);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.ArCoursePeriod);
				else
					this.ArCoursePeriod = base.SetstringAsString(ColumnNames.ArCoursePeriod, value);
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
				
				
				public WhereParameter CourseID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CourseID, Parameters.CourseID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CourseLangaugeID
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CourseLangaugeID, Parameters.CourseLangaugeID);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CourseName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CourseName, Parameters.CourseName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CourseDescription
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CourseDescription, Parameters.CourseDescription);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CoursePeriod
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CoursePeriod, Parameters.CoursePeriod);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CourseImagePath
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CourseImagePath, Parameters.CourseImagePath);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter Course_PDF_Path
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.Course_PDF_Path, Parameters.Course_PDF_Path);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CourseCode
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CourseCode, Parameters.CourseCode);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ArCourseName
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ArCourseName, Parameters.ArCourseName);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ArCourseDescription
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ArCourseDescription, Parameters.ArCourseDescription);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter ArCoursePeriod
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.ArCoursePeriod, Parameters.ArCoursePeriod);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter CourseID
		    {
				get
		        {
					if(_CourseID_W == null)
	        	    {
						_CourseID_W = TearOff.CourseID;
					}
					return _CourseID_W;
				}
			}

			public WhereParameter CourseLangaugeID
		    {
				get
		        {
					if(_CourseLangaugeID_W == null)
	        	    {
						_CourseLangaugeID_W = TearOff.CourseLangaugeID;
					}
					return _CourseLangaugeID_W;
				}
			}

			public WhereParameter CourseName
		    {
				get
		        {
					if(_CourseName_W == null)
	        	    {
						_CourseName_W = TearOff.CourseName;
					}
					return _CourseName_W;
				}
			}

			public WhereParameter CourseDescription
		    {
				get
		        {
					if(_CourseDescription_W == null)
	        	    {
						_CourseDescription_W = TearOff.CourseDescription;
					}
					return _CourseDescription_W;
				}
			}

			public WhereParameter CoursePeriod
		    {
				get
		        {
					if(_CoursePeriod_W == null)
	        	    {
						_CoursePeriod_W = TearOff.CoursePeriod;
					}
					return _CoursePeriod_W;
				}
			}

			public WhereParameter CourseImagePath
		    {
				get
		        {
					if(_CourseImagePath_W == null)
	        	    {
						_CourseImagePath_W = TearOff.CourseImagePath;
					}
					return _CourseImagePath_W;
				}
			}

			public WhereParameter Course_PDF_Path
		    {
				get
		        {
					if(_Course_PDF_Path_W == null)
	        	    {
						_Course_PDF_Path_W = TearOff.Course_PDF_Path;
					}
					return _Course_PDF_Path_W;
				}
			}

			public WhereParameter CourseCode
		    {
				get
		        {
					if(_CourseCode_W == null)
	        	    {
						_CourseCode_W = TearOff.CourseCode;
					}
					return _CourseCode_W;
				}
			}

			public WhereParameter ArCourseName
		    {
				get
		        {
					if(_ArCourseName_W == null)
	        	    {
						_ArCourseName_W = TearOff.ArCourseName;
					}
					return _ArCourseName_W;
				}
			}

			public WhereParameter ArCourseDescription
		    {
				get
		        {
					if(_ArCourseDescription_W == null)
	        	    {
						_ArCourseDescription_W = TearOff.ArCourseDescription;
					}
					return _ArCourseDescription_W;
				}
			}

			public WhereParameter ArCoursePeriod
		    {
				get
		        {
					if(_ArCoursePeriod_W == null)
	        	    {
						_ArCoursePeriod_W = TearOff.ArCoursePeriod;
					}
					return _ArCoursePeriod_W;
				}
			}

			private WhereParameter _CourseID_W = null;
			private WhereParameter _CourseLangaugeID_W = null;
			private WhereParameter _CourseName_W = null;
			private WhereParameter _CourseDescription_W = null;
			private WhereParameter _CoursePeriod_W = null;
			private WhereParameter _CourseImagePath_W = null;
			private WhereParameter _Course_PDF_Path_W = null;
			private WhereParameter _CourseCode_W = null;
			private WhereParameter _ArCourseName_W = null;
			private WhereParameter _ArCourseDescription_W = null;
			private WhereParameter _ArCoursePeriod_W = null;

			public void WhereClauseReset()
			{
				_CourseID_W = null;
				_CourseLangaugeID_W = null;
				_CourseName_W = null;
				_CourseDescription_W = null;
				_CoursePeriod_W = null;
				_CourseImagePath_W = null;
				_Course_PDF_Path_W = null;
				_CourseCode_W = null;
				_ArCourseName_W = null;
				_ArCourseDescription_W = null;
				_ArCoursePeriod_W = null;

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
				
				
				public AggregateParameter CourseID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CourseID, Parameters.CourseID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CourseLangaugeID
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CourseLangaugeID, Parameters.CourseLangaugeID);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CourseName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CourseName, Parameters.CourseName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CourseDescription
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CourseDescription, Parameters.CourseDescription);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CoursePeriod
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CoursePeriod, Parameters.CoursePeriod);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CourseImagePath
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CourseImagePath, Parameters.CourseImagePath);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter Course_PDF_Path
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.Course_PDF_Path, Parameters.Course_PDF_Path);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CourseCode
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CourseCode, Parameters.CourseCode);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ArCourseName
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ArCourseName, Parameters.ArCourseName);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ArCourseDescription
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ArCourseDescription, Parameters.ArCourseDescription);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter ArCoursePeriod
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.ArCoursePeriod, Parameters.ArCoursePeriod);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}


				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter CourseID
		    {
				get
		        {
					if(_CourseID_W == null)
	        	    {
						_CourseID_W = TearOff.CourseID;
					}
					return _CourseID_W;
				}
			}

			public AggregateParameter CourseLangaugeID
		    {
				get
		        {
					if(_CourseLangaugeID_W == null)
	        	    {
						_CourseLangaugeID_W = TearOff.CourseLangaugeID;
					}
					return _CourseLangaugeID_W;
				}
			}

			public AggregateParameter CourseName
		    {
				get
		        {
					if(_CourseName_W == null)
	        	    {
						_CourseName_W = TearOff.CourseName;
					}
					return _CourseName_W;
				}
			}

			public AggregateParameter CourseDescription
		    {
				get
		        {
					if(_CourseDescription_W == null)
	        	    {
						_CourseDescription_W = TearOff.CourseDescription;
					}
					return _CourseDescription_W;
				}
			}

			public AggregateParameter CoursePeriod
		    {
				get
		        {
					if(_CoursePeriod_W == null)
	        	    {
						_CoursePeriod_W = TearOff.CoursePeriod;
					}
					return _CoursePeriod_W;
				}
			}

			public AggregateParameter CourseImagePath
		    {
				get
		        {
					if(_CourseImagePath_W == null)
	        	    {
						_CourseImagePath_W = TearOff.CourseImagePath;
					}
					return _CourseImagePath_W;
				}
			}

			public AggregateParameter Course_PDF_Path
		    {
				get
		        {
					if(_Course_PDF_Path_W == null)
	        	    {
						_Course_PDF_Path_W = TearOff.Course_PDF_Path;
					}
					return _Course_PDF_Path_W;
				}
			}

			public AggregateParameter CourseCode
		    {
				get
		        {
					if(_CourseCode_W == null)
	        	    {
						_CourseCode_W = TearOff.CourseCode;
					}
					return _CourseCode_W;
				}
			}

			public AggregateParameter ArCourseName
		    {
				get
		        {
					if(_ArCourseName_W == null)
	        	    {
						_ArCourseName_W = TearOff.ArCourseName;
					}
					return _ArCourseName_W;
				}
			}

			public AggregateParameter ArCourseDescription
		    {
				get
		        {
					if(_ArCourseDescription_W == null)
	        	    {
						_ArCourseDescription_W = TearOff.ArCourseDescription;
					}
					return _ArCourseDescription_W;
				}
			}

			public AggregateParameter ArCoursePeriod
		    {
				get
		        {
					if(_ArCoursePeriod_W == null)
	        	    {
						_ArCoursePeriod_W = TearOff.ArCoursePeriod;
					}
					return _ArCoursePeriod_W;
				}
			}

			private AggregateParameter _CourseID_W = null;
			private AggregateParameter _CourseLangaugeID_W = null;
			private AggregateParameter _CourseName_W = null;
			private AggregateParameter _CourseDescription_W = null;
			private AggregateParameter _CoursePeriod_W = null;
			private AggregateParameter _CourseImagePath_W = null;
			private AggregateParameter _Course_PDF_Path_W = null;
			private AggregateParameter _CourseCode_W = null;
			private AggregateParameter _ArCourseName_W = null;
			private AggregateParameter _ArCourseDescription_W = null;
			private AggregateParameter _ArCoursePeriod_W = null;

			public void AggregateClauseReset()
			{
				_CourseID_W = null;
				_CourseLangaugeID_W = null;
				_CourseName_W = null;
				_CourseDescription_W = null;
				_CoursePeriod_W = null;
				_CourseImagePath_W = null;
				_Course_PDF_Path_W = null;
				_CourseCode_W = null;
				_ArCourseName_W = null;
				_ArCourseDescription_W = null;
				_ArCoursePeriod_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_CourseInsert]";
	
			CreateParameters(cmd);
			
			SqlParameter p;
			p = cmd.Parameters[Parameters.CourseID.ParameterName];
			p.Direction = ParameterDirection.Output;
    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_CourseUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_CourseDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.CourseID);
			p.SourceColumn = ColumnNames.CourseID;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.CourseID);
			p.SourceColumn = ColumnNames.CourseID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CourseLangaugeID);
			p.SourceColumn = ColumnNames.CourseLangaugeID;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CourseName);
			p.SourceColumn = ColumnNames.CourseName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CourseDescription);
			p.SourceColumn = ColumnNames.CourseDescription;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CoursePeriod);
			p.SourceColumn = ColumnNames.CoursePeriod;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CourseImagePath);
			p.SourceColumn = ColumnNames.CourseImagePath;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.Course_PDF_Path);
			p.SourceColumn = ColumnNames.Course_PDF_Path;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CourseCode);
			p.SourceColumn = ColumnNames.CourseCode;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ArCourseName);
			p.SourceColumn = ColumnNames.ArCourseName;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ArCourseDescription);
			p.SourceColumn = ColumnNames.ArCourseDescription;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.ArCoursePeriod);
			p.SourceColumn = ColumnNames.ArCoursePeriod;
			p.SourceVersion = DataRowVersion.Current;


			return cmd;
		}
	}
}
