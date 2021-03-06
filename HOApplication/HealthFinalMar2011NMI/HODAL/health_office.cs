
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

// Generated by MyGeneration Version # (1.2.0.7)

using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Collections.Specialized;

using MyGeneration.dOOdads;

namespace MHO.DAL
{
	public abstract class _Health_Office : SqlClientEntity
	{
		public _Health_Office()
		{
			this.QuerySource = "Health_Office";
			this.MappingName = "Health_Office";

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
			
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_Health_OfficeLoadAll]", parameters);
		}
	
		//=================================================================
		// public Overridable Function LoadByPrimaryKey()  As Boolean
		//=================================================================
		//  Loads a single row of via the primary key
		//=================================================================
		public virtual bool LoadByPrimaryKey(int HEALTHCD)
		{
			ListDictionary parameters = new ListDictionary();
			parameters.Add(Parameters.HEALTHCD, HEALTHCD);

		
			return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_Health_OfficeLoadByPrimaryKey]", parameters);
		}
		
		#region Parameters
		protected class Parameters
		{
			
			public static SqlParameter GOVCD
			{
				get
				{
					return new SqlParameter("@GOVCD", SqlDbType.SmallInt, 0);
				}
			}
			
			public static SqlParameter GOVDESCR
			{
				get
				{
					return new SqlParameter("@GOVDESCR", SqlDbType.Char, 25);
				}
			}
			
			public static SqlParameter CIVILCD
			{
				get
				{
					return new SqlParameter("@CIVILCD", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter CIVILDESCR
			{
				get
				{
					return new SqlParameter("@CIVILDESCR", SqlDbType.Char, 30);
				}
			}
			
			public static SqlParameter HEALTHCD
			{
				get
				{
					return new SqlParameter("@HEALTHCD", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter HEALTHDESCR
			{
				get
				{
					return new SqlParameter("@HEALTHDESCR", SqlDbType.Char, 30);
				}
			}
			
			public static SqlParameter DEPTDESCR
			{
				get
				{
					return new SqlParameter("@DEPTDESCR", SqlDbType.Char, 30);
				}
			}
			
			public static SqlParameter DEPTCD
			{
				get
				{
					return new SqlParameter("@DEPTCD", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter POLICECD
			{
				get
				{
					return new SqlParameter("@POLICECD", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter POLICEDESCR
			{
				get
				{
					return new SqlParameter("@POLICEDESCR", SqlDbType.Char, 30);
				}
			}
			
			public static SqlParameter AREACD
			{
				get
				{
					return new SqlParameter("@AREACD", SqlDbType.Int, 0);
				}
			}
			
			public static SqlParameter AREADESCR
			{
				get
				{
					return new SqlParameter("@AREADESCR", SqlDbType.Char, 30);
				}
            }

            public static SqlParameter IsTown
            {
                get
                {
                    return new SqlParameter("@IsTown", SqlDbType.Bit,0);
                }
            }
			
		}
		#endregion		
	
		#region ColumnNames
		public class ColumnNames
		{  
            public const string GOVCD = "GOVCD";
            public const string GOVDESCR = "GOVDESCR";
            public const string CIVILCD = "CIVILCD";
            public const string CIVILDESCR = "CIVILDESCR";
            public const string HEALTHCD = "HEALTHCD";
            public const string HEALTHDESCR = "HEALTHDESCR";
            public const string DEPTDESCR = "DEPTDESCR";
            public const string DEPTCD = "DEPTCD";
            public const string POLICECD = "POLICECD";
            public const string POLICEDESCR = "POLICEDESCR";
            public const string AREACD = "AREACD";
            public const string AREADESCR = "AREADESCR";
            public const string IsTown = "IsTown";

			static public string ToPropertyName(string columnName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[GOVCD] = _Health_Office.PropertyNames.GOVCD;
					ht[GOVDESCR] = _Health_Office.PropertyNames.GOVDESCR;
					ht[CIVILCD] = _Health_Office.PropertyNames.CIVILCD;
					ht[CIVILDESCR] = _Health_Office.PropertyNames.CIVILDESCR;
					ht[HEALTHCD] = _Health_Office.PropertyNames.HEALTHCD;
					ht[HEALTHDESCR] = _Health_Office.PropertyNames.HEALTHDESCR;
					ht[DEPTDESCR] = _Health_Office.PropertyNames.DEPTDESCR;
					ht[DEPTCD] = _Health_Office.PropertyNames.DEPTCD;
					ht[POLICECD] = _Health_Office.PropertyNames.POLICECD;
					ht[POLICEDESCR] = _Health_Office.PropertyNames.POLICEDESCR;
					ht[AREACD] = _Health_Office.PropertyNames.AREACD;
					ht[AREADESCR] = _Health_Office.PropertyNames.AREADESCR;
                    ht[IsTown] = _Health_Office.PropertyNames.IsTown;

				}
				return (string)ht[columnName];
			}

			static private Hashtable ht = null;			 
		}
		#endregion
		
		#region PropertyNames
		public class PropertyNames
		{  
            public const string GOVCD = "GOVCD";
            public const string GOVDESCR = "GOVDESCR";
            public const string CIVILCD = "CIVILCD";
            public const string CIVILDESCR = "CIVILDESCR";
            public const string HEALTHCD = "HEALTHCD";
            public const string HEALTHDESCR = "HEALTHDESCR";
            public const string DEPTDESCR = "DEPTDESCR";
            public const string DEPTCD = "DEPTCD";
            public const string POLICECD = "POLICECD";
            public const string POLICEDESCR = "POLICEDESCR";
            public const string AREACD = "AREACD";
            public const string AREADESCR = "AREADESCR";
            public const string IsTown = "IsTown";

			static public string ToColumnName(string propertyName)
			{
				if(ht == null)
				{
					ht = new Hashtable();
					
					ht[GOVCD] = _Health_Office.ColumnNames.GOVCD;
					ht[GOVDESCR] = _Health_Office.ColumnNames.GOVDESCR;
					ht[CIVILCD] = _Health_Office.ColumnNames.CIVILCD;
					ht[CIVILDESCR] = _Health_Office.ColumnNames.CIVILDESCR;
					ht[HEALTHCD] = _Health_Office.ColumnNames.HEALTHCD;
					ht[HEALTHDESCR] = _Health_Office.ColumnNames.HEALTHDESCR;
					ht[DEPTDESCR] = _Health_Office.ColumnNames.DEPTDESCR;
					ht[DEPTCD] = _Health_Office.ColumnNames.DEPTCD;
					ht[POLICECD] = _Health_Office.ColumnNames.POLICECD;
					ht[POLICEDESCR] = _Health_Office.ColumnNames.POLICEDESCR;
					ht[AREACD] = _Health_Office.ColumnNames.AREACD;
					ht[AREADESCR] = _Health_Office.ColumnNames.AREADESCR;
                    ht[IsTown] = _Health_Office.ColumnNames.IsTown;

				}
				return (string)ht[propertyName];
			}

			static private Hashtable ht = null;			 
		}			 
		#endregion	

		#region StringPropertyNames
		public class StringPropertyNames
		{  
            public const string GOVCD = "s_GOVCD";
            public const string GOVDESCR = "s_GOVDESCR";
            public const string CIVILCD = "s_CIVILCD";
            public const string CIVILDESCR = "s_CIVILDESCR";
            public const string HEALTHCD = "s_HEALTHCD";
            public const string HEALTHDESCR = "s_HEALTHDESCR";
            public const string DEPTDESCR = "s_DEPTDESCR";
            public const string DEPTCD = "s_DEPTCD";
            public const string POLICECD = "s_POLICECD";
            public const string POLICEDESCR = "s_POLICEDESCR";
            public const string AREACD = "s_AREACD";
            public const string AREADESCR = "s_AREADESCR";
            public const string IsTown = "s_IsTown";

		}
		#endregion		
		
		#region Properties
	
		public virtual short GOVCD
	    {
			get
	        {
				return base.Getshort(ColumnNames.GOVCD);
			}
			set
	        {
				base.Setshort(ColumnNames.GOVCD, value);
			}
		}

		public virtual string GOVDESCR
	    {
			get
	        {
				return base.Getstring(ColumnNames.GOVDESCR);
			}
			set
	        {
				base.Setstring(ColumnNames.GOVDESCR, value);
			}
		}

		public virtual int CIVILCD
	    {
			get
	        {
				return base.Getint(ColumnNames.CIVILCD);
			}
			set
	        {
				base.Setint(ColumnNames.CIVILCD, value);
			}
		}

		public virtual string CIVILDESCR
	    {
			get
	        {
				return base.Getstring(ColumnNames.CIVILDESCR);
			}
			set
	        {
				base.Setstring(ColumnNames.CIVILDESCR, value);
			}
		}

		public virtual int HEALTHCD
	    {
			get
	        {
				return base.Getint(ColumnNames.HEALTHCD);
			}
			set
	        {
				base.Setint(ColumnNames.HEALTHCD, value);
			}
		}

		public virtual string HEALTHDESCR
	    {
			get
	        {
				return base.Getstring(ColumnNames.HEALTHDESCR);
			}
			set
	        {
				base.Setstring(ColumnNames.HEALTHDESCR, value);
			}
		}

		public virtual string DEPTDESCR
	    {
			get
	        {
				return base.Getstring(ColumnNames.DEPTDESCR);
			}
			set
	        {
				base.Setstring(ColumnNames.DEPTDESCR, value);
			}
		}

		public virtual int DEPTCD
	    {
			get
	        {
				return base.Getint(ColumnNames.DEPTCD);
			}
			set
	        {
				base.Setint(ColumnNames.DEPTCD, value);
			}
		}

		public virtual int POLICECD
	    {
			get
	        {
				return base.Getint(ColumnNames.POLICECD);
			}
			set
	        {
				base.Setint(ColumnNames.POLICECD, value);
			}
		}

		public virtual string POLICEDESCR
	    {
			get
	        {
				return base.Getstring(ColumnNames.POLICEDESCR);
			}
			set
	        {
				base.Setstring(ColumnNames.POLICEDESCR, value);
			}
		}

		public virtual int AREACD
	    {
			get
	        {
				return base.Getint(ColumnNames.AREACD);
			}
			set
	        {
				base.Setint(ColumnNames.AREACD, value);
			}
		}

		public virtual string AREADESCR
	    {
			get
	        {
				return base.Getstring(ColumnNames.AREADESCR);
			}
			set
	        {
				base.Setstring(ColumnNames.AREADESCR, value);
			}
		}
        public virtual bool IsTown
	    {
			get
	        {
                return base.Getbool(ColumnNames.IsTown);
			}
			set
	        {
                base.Setbool(ColumnNames.IsTown, value);
			}
		}

		#endregion
		
		#region String Properties
	
		public virtual string s_GOVCD
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.GOVCD) ? string.Empty : base.GetshortAsString(ColumnNames.GOVCD);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.GOVCD);
				else
					this.GOVCD = base.SetshortAsString(ColumnNames.GOVCD, value);
			}
		}

		public virtual string s_GOVDESCR
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.GOVDESCR) ? string.Empty : base.GetstringAsString(ColumnNames.GOVDESCR);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.GOVDESCR);
				else
					this.GOVDESCR = base.SetstringAsString(ColumnNames.GOVDESCR, value);
			}
		}

		public virtual string s_CIVILCD
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CIVILCD) ? string.Empty : base.GetintAsString(ColumnNames.CIVILCD);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CIVILCD);
				else
					this.CIVILCD = base.SetintAsString(ColumnNames.CIVILCD, value);
			}
		}

		public virtual string s_CIVILDESCR
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.CIVILDESCR) ? string.Empty : base.GetstringAsString(ColumnNames.CIVILDESCR);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.CIVILDESCR);
				else
					this.CIVILDESCR = base.SetstringAsString(ColumnNames.CIVILDESCR, value);
			}
		}

		public virtual string s_HEALTHCD
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.HEALTHCD) ? string.Empty : base.GetintAsString(ColumnNames.HEALTHCD);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.HEALTHCD);
				else
					this.HEALTHCD = base.SetintAsString(ColumnNames.HEALTHCD, value);
			}
		}

		public virtual string s_HEALTHDESCR
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.HEALTHDESCR) ? string.Empty : base.GetstringAsString(ColumnNames.HEALTHDESCR);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.HEALTHDESCR);
				else
					this.HEALTHDESCR = base.SetstringAsString(ColumnNames.HEALTHDESCR, value);
			}
		}

		public virtual string s_DEPTDESCR
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DEPTDESCR) ? string.Empty : base.GetstringAsString(ColumnNames.DEPTDESCR);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DEPTDESCR);
				else
					this.DEPTDESCR = base.SetstringAsString(ColumnNames.DEPTDESCR, value);
			}
		}

		public virtual string s_DEPTCD
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.DEPTCD) ? string.Empty : base.GetintAsString(ColumnNames.DEPTCD);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.DEPTCD);
				else
					this.DEPTCD = base.SetintAsString(ColumnNames.DEPTCD, value);
			}
		}

		public virtual string s_POLICECD
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.POLICECD) ? string.Empty : base.GetintAsString(ColumnNames.POLICECD);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.POLICECD);
				else
					this.POLICECD = base.SetintAsString(ColumnNames.POLICECD, value);
			}
		}

		public virtual string s_POLICEDESCR
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.POLICEDESCR) ? string.Empty : base.GetstringAsString(ColumnNames.POLICEDESCR);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.POLICEDESCR);
				else
					this.POLICEDESCR = base.SetstringAsString(ColumnNames.POLICEDESCR, value);
			}
		}

		public virtual string s_AREACD
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.AREACD) ? string.Empty : base.GetintAsString(ColumnNames.AREACD);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.AREACD);
				else
					this.AREACD = base.SetintAsString(ColumnNames.AREACD, value);
			}
		}

		public virtual string s_AREADESCR
	    {
			get
	        {
				return this.IsColumnNull(ColumnNames.AREADESCR) ? string.Empty : base.GetstringAsString(ColumnNames.AREADESCR);
			}
			set
	        {
				if(string.Empty == value)
					this.SetColumnNull(ColumnNames.AREADESCR);
				else
					this.AREADESCR = base.SetstringAsString(ColumnNames.AREADESCR, value);
			}
		}

        public virtual string s_IsTown
        {
            get
            {
                return this.IsColumnNull(ColumnNames.IsTown) ? string.Empty : base.GetboolAsString(ColumnNames.IsTown);
            }
            set
            {
                if (string.Empty == value)
                    this.SetColumnNull(ColumnNames.IsTown);
                else
                    this.IsTown = base.SetboolAsString(ColumnNames.IsTown, value);
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
				
				
				public WhereParameter GOVCD
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.GOVCD, Parameters.GOVCD);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter GOVDESCR
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.GOVDESCR, Parameters.GOVDESCR);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CIVILCD
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CIVILCD, Parameters.CIVILCD);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter CIVILDESCR
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.CIVILDESCR, Parameters.CIVILDESCR);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter HEALTHCD
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.HEALTHCD, Parameters.HEALTHCD);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter HEALTHDESCR
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.HEALTHDESCR, Parameters.HEALTHDESCR);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter DEPTDESCR
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DEPTDESCR, Parameters.DEPTDESCR);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter DEPTCD
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.DEPTCD, Parameters.DEPTCD);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter POLICECD
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.POLICECD, Parameters.POLICECD);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter POLICEDESCR
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.POLICEDESCR, Parameters.POLICEDESCR);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter AREACD
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.AREACD, Parameters.AREACD);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

				public WhereParameter AREADESCR
				{
					get
					{
							WhereParameter where = new WhereParameter(ColumnNames.AREADESCR, Parameters.AREADESCR);
							this._clause._entity.Query.AddWhereParameter(where);
							return where;
					}
				}

                public WhereParameter IsTown
                {
                    get
                    {
                        WhereParameter where = new WhereParameter(ColumnNames.IsTown, Parameters.IsTown);
                        this._clause._entity.Query.AddWhereParameter(where);
                        return where;
                    }
                }


				private WhereClause _clause;
			}
			#endregion
		
			public WhereParameter GOVCD
		    {
				get
		        {
					if(_GOVCD_W == null)
	        	    {
						_GOVCD_W = TearOff.GOVCD;
					}
					return _GOVCD_W;
				}
			}

			public WhereParameter GOVDESCR
		    {
				get
		        {
					if(_GOVDESCR_W == null)
	        	    {
						_GOVDESCR_W = TearOff.GOVDESCR;
					}
					return _GOVDESCR_W;
				}
			}

			public WhereParameter CIVILCD
		    {
				get
		        {
					if(_CIVILCD_W == null)
	        	    {
						_CIVILCD_W = TearOff.CIVILCD;
					}
					return _CIVILCD_W;
				}
			}

			public WhereParameter CIVILDESCR
		    {
				get
		        {
					if(_CIVILDESCR_W == null)
	        	    {
						_CIVILDESCR_W = TearOff.CIVILDESCR;
					}
					return _CIVILDESCR_W;
				}
			}

			public WhereParameter HEALTHCD
		    {
				get
		        {
					if(_HEALTHCD_W == null)
	        	    {
						_HEALTHCD_W = TearOff.HEALTHCD;
					}
					return _HEALTHCD_W;
				}
			}

			public WhereParameter HEALTHDESCR
		    {
				get
		        {
					if(_HEALTHDESCR_W == null)
	        	    {
						_HEALTHDESCR_W = TearOff.HEALTHDESCR;
					}
					return _HEALTHDESCR_W;
				}
			}

			public WhereParameter DEPTDESCR
		    {
				get
		        {
					if(_DEPTDESCR_W == null)
	        	    {
						_DEPTDESCR_W = TearOff.DEPTDESCR;
					}
					return _DEPTDESCR_W;
				}
			}

			public WhereParameter DEPTCD
		    {
				get
		        {
					if(_DEPTCD_W == null)
	        	    {
						_DEPTCD_W = TearOff.DEPTCD;
					}
					return _DEPTCD_W;
				}
			}

			public WhereParameter POLICECD
		    {
				get
		        {
					if(_POLICECD_W == null)
	        	    {
						_POLICECD_W = TearOff.POLICECD;
					}
					return _POLICECD_W;
				}
			}

			public WhereParameter POLICEDESCR
		    {
				get
		        {
					if(_POLICEDESCR_W == null)
	        	    {
						_POLICEDESCR_W = TearOff.POLICEDESCR;
					}
					return _POLICEDESCR_W;
				}
			}

			public WhereParameter AREACD
		    {
				get
		        {
					if(_AREACD_W == null)
	        	    {
						_AREACD_W = TearOff.AREACD;
					}
					return _AREACD_W;
				}
			}

			public WhereParameter AREADESCR
		    {
				get
		        {
					if(_AREADESCR_W == null)
	        	    {
						_AREADESCR_W = TearOff.AREADESCR;
					}
					return _AREADESCR_W;
				}
			}

            public WhereParameter IsTown
		    {
				get
		        {
                    if (_IsTown_W == null)
	        	    {
                        _IsTown_W = TearOff.IsTown;
					}
                    return _IsTown_W;
				}
			}
			private WhereParameter _GOVCD_W = null;
			private WhereParameter _GOVDESCR_W = null;
			private WhereParameter _CIVILCD_W = null;
			private WhereParameter _CIVILDESCR_W = null;
			private WhereParameter _HEALTHCD_W = null;
			private WhereParameter _HEALTHDESCR_W = null;
			private WhereParameter _DEPTDESCR_W = null;
			private WhereParameter _DEPTCD_W = null;
			private WhereParameter _POLICECD_W = null;
			private WhereParameter _POLICEDESCR_W = null;
			private WhereParameter _AREACD_W = null;
			private WhereParameter _AREADESCR_W = null;
            private WhereParameter _IsTown_W = null;

			public void WhereClauseReset()
			{
				_GOVCD_W = null;
				_GOVDESCR_W = null;
				_CIVILCD_W = null;
				_CIVILDESCR_W = null;
				_HEALTHCD_W = null;
				_HEALTHDESCR_W = null;
				_DEPTDESCR_W = null;
				_DEPTCD_W = null;
				_POLICECD_W = null;
				_POLICEDESCR_W = null;
				_AREACD_W = null;
				_AREADESCR_W = null;
                _IsTown_W = null;

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
				
				
				public AggregateParameter GOVCD
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.GOVCD, Parameters.GOVCD);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter GOVDESCR
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.GOVDESCR, Parameters.GOVDESCR);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CIVILCD
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CIVILCD, Parameters.CIVILCD);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter CIVILDESCR
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.CIVILDESCR, Parameters.CIVILDESCR);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter HEALTHCD
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.HEALTHCD, Parameters.HEALTHCD);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter HEALTHDESCR
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.HEALTHDESCR, Parameters.HEALTHDESCR);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter DEPTDESCR
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DEPTDESCR, Parameters.DEPTDESCR);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter DEPTCD
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.DEPTCD, Parameters.DEPTCD);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter POLICECD
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.POLICECD, Parameters.POLICECD);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter POLICEDESCR
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.POLICEDESCR, Parameters.POLICEDESCR);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter AREACD
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.AREACD, Parameters.AREACD);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				public AggregateParameter AREADESCR
				{
					get
					{
							AggregateParameter aggregate = new AggregateParameter(ColumnNames.AREADESCR, Parameters.AREADESCR);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

                public AggregateParameter IsTown
				{
					get
					{
                        AggregateParameter aggregate = new AggregateParameter(ColumnNames.IsTown, Parameters.IsTown);
							this._clause._entity.Query.AddAggregateParameter(aggregate);
							return aggregate;
					}
				}

				private AggregateClause _clause;
			}
			#endregion
		
			public AggregateParameter GOVCD
		    {
				get
		        {
					if(_GOVCD_W == null)
	        	    {
						_GOVCD_W = TearOff.GOVCD;
					}
					return _GOVCD_W;
				}
			}

			public AggregateParameter GOVDESCR
		    {
				get
		        {
					if(_GOVDESCR_W == null)
	        	    {
						_GOVDESCR_W = TearOff.GOVDESCR;
					}
					return _GOVDESCR_W;
				}
			}

			public AggregateParameter CIVILCD
		    {
				get
		        {
					if(_CIVILCD_W == null)
	        	    {
						_CIVILCD_W = TearOff.CIVILCD;
					}
					return _CIVILCD_W;
				}
			}

			public AggregateParameter CIVILDESCR
		    {
				get
		        {
					if(_CIVILDESCR_W == null)
	        	    {
						_CIVILDESCR_W = TearOff.CIVILDESCR;
					}
					return _CIVILDESCR_W;
				}
			}

			public AggregateParameter HEALTHCD
		    {
				get
		        {
					if(_HEALTHCD_W == null)
	        	    {
						_HEALTHCD_W = TearOff.HEALTHCD;
					}
					return _HEALTHCD_W;
				}
			}

			public AggregateParameter HEALTHDESCR
		    {
				get
		        {
					if(_HEALTHDESCR_W == null)
	        	    {
						_HEALTHDESCR_W = TearOff.HEALTHDESCR;
					}
					return _HEALTHDESCR_W;
				}
			}

			public AggregateParameter DEPTDESCR
		    {
				get
		        {
					if(_DEPTDESCR_W == null)
	        	    {
						_DEPTDESCR_W = TearOff.DEPTDESCR;
					}
					return _DEPTDESCR_W;
				}
			}

			public AggregateParameter DEPTCD
		    {
				get
		        {
					if(_DEPTCD_W == null)
	        	    {
						_DEPTCD_W = TearOff.DEPTCD;
					}
					return _DEPTCD_W;
				}
			}

			public AggregateParameter POLICECD
		    {
				get
		        {
					if(_POLICECD_W == null)
	        	    {
						_POLICECD_W = TearOff.POLICECD;
					}
					return _POLICECD_W;
				}
			}

			public AggregateParameter POLICEDESCR
		    {
				get
		        {
					if(_POLICEDESCR_W == null)
	        	    {
						_POLICEDESCR_W = TearOff.POLICEDESCR;
					}
					return _POLICEDESCR_W;
				}
			}

			public AggregateParameter AREACD
		    {
				get
		        {
					if(_AREACD_W == null)
	        	    {
						_AREACD_W = TearOff.AREACD;
					}
					return _AREACD_W;
				}
			}

			public AggregateParameter AREADESCR
		    {
				get
		        {
					if(_AREADESCR_W == null)
	        	    {
						_AREADESCR_W = TearOff.AREADESCR;
					}
					return _AREADESCR_W;
				}
			}

            public AggregateParameter IsTown
		    {
				get
		        {
                    if (_IsTown_W == null)
	        	    {
                        _IsTown_W = TearOff.IsTown;
					}
                    return _IsTown_W;
				}
			}

			private AggregateParameter _GOVCD_W = null;
			private AggregateParameter _GOVDESCR_W = null;
			private AggregateParameter _CIVILCD_W = null;
			private AggregateParameter _CIVILDESCR_W = null;
			private AggregateParameter _HEALTHCD_W = null;
			private AggregateParameter _HEALTHDESCR_W = null;
			private AggregateParameter _DEPTDESCR_W = null;
			private AggregateParameter _DEPTCD_W = null;
			private AggregateParameter _POLICECD_W = null;
			private AggregateParameter _POLICEDESCR_W = null;
			private AggregateParameter _AREACD_W = null;
			private AggregateParameter _AREADESCR_W = null;
            private AggregateParameter _IsTown_W = null;

			public void AggregateClauseReset()
			{
				_GOVCD_W = null;
				_GOVDESCR_W = null;
				_CIVILCD_W = null;
				_CIVILDESCR_W = null;
				_HEALTHCD_W = null;
				_HEALTHDESCR_W = null;
				_DEPTDESCR_W = null;
				_DEPTCD_W = null;
				_POLICECD_W = null;
				_POLICEDESCR_W = null;
				_AREACD_W = null;
				_AREADESCR_W = null;
                _IsTown_W = null;

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
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_Health_OfficeInsert]";
	
			CreateParameters(cmd);
			    
			return cmd;
		}
	
		protected override IDbCommand GetUpdateCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_Health_OfficeUpdate]";
	
			CreateParameters(cmd);
			      
			return cmd;
		}
	
		protected override IDbCommand GetDeleteCommand()
		{
		
			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.CommandText = "[" + this.SchemaStoredProcedure + "proc_Health_OfficeDelete]";
	
			SqlParameter p;
			p = cmd.Parameters.Add(Parameters.HEALTHCD);
			p.SourceColumn = ColumnNames.HEALTHCD;
			p.SourceVersion = DataRowVersion.Current;

  
			return cmd;
		}
		
		private IDbCommand CreateParameters(SqlCommand cmd)
		{
			SqlParameter p;
		
			p = cmd.Parameters.Add(Parameters.GOVCD);
			p.SourceColumn = ColumnNames.GOVCD;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.GOVDESCR);
			p.SourceColumn = ColumnNames.GOVDESCR;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CIVILCD);
			p.SourceColumn = ColumnNames.CIVILCD;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.CIVILDESCR);
			p.SourceColumn = ColumnNames.CIVILDESCR;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.HEALTHCD);
			p.SourceColumn = ColumnNames.HEALTHCD;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.HEALTHDESCR);
			p.SourceColumn = ColumnNames.HEALTHDESCR;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.DEPTDESCR);
			p.SourceColumn = ColumnNames.DEPTDESCR;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.DEPTCD);
			p.SourceColumn = ColumnNames.DEPTCD;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.POLICECD);
			p.SourceColumn = ColumnNames.POLICECD;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.POLICEDESCR);
			p.SourceColumn = ColumnNames.POLICEDESCR;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.AREACD);
			p.SourceColumn = ColumnNames.AREACD;
			p.SourceVersion = DataRowVersion.Current;

			p = cmd.Parameters.Add(Parameters.AREADESCR);
			p.SourceColumn = ColumnNames.AREADESCR;
			p.SourceVersion = DataRowVersion.Current;

            p = cmd.Parameters.Add(Parameters.IsTown);
            p.SourceColumn = ColumnNames.IsTown;
            p.SourceVersion = DataRowVersion.Current;

			return cmd;
		}
	}
}
