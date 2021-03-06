
// Generated by MyGeneration Version # (1.3.0.3)

using DAL;
using System;

namespace BLL
{
	public class MemberTypeSpecDuration : _MemberTypeSpecDuration
	{
		public MemberTypeSpecDuration()
		{
		
		}

        private static MemberTypeSpecDuration defaultMemberTypeSpecDuration;
        public static MemberTypeSpecDuration Default
        {
            get
            {
                if (defaultMemberTypeSpecDuration == null)
                {
                    defaultMemberTypeSpecDuration = new MemberTypeSpecDuration();
                    defaultMemberTypeSpecDuration.LoadByPrimaryKey(Helper.Defaults.MemberTypeSpecDurationID);
                }
                return defaultMemberTypeSpecDuration;
            }
        }

        public override bool LoadByPrimaryKey(int ID)
        {
            if (ID == Helper.Defaults.MemberTypeSpecDurationID)
            {
                this.DataTable = MemberTypeSpecDuration.Default.DataTable;
            }
            return base.LoadByPrimaryKey(ID);
        }

        private MemberTypeSpec memberTypeSpec;
        public MemberTypeSpec MemberTypeSpec
        {
            get
            {
                if (memberTypeSpec == null)
                {
                    memberTypeSpec = new MemberTypeSpec();
                    memberTypeSpec.LoadByPrimaryKey(this.MemberTypeSpecID);
                }
                if (memberTypeSpec.ID != this.MemberTypeSpecID)
                {
                    memberTypeSpec.LoadByPrimaryKey(this.MemberTypeSpecID);
                }
                return memberTypeSpec;
            }
        }

        private TypeDuration typeduration;
        public TypeDuration TypeDuration
        {
            get
            {
                if (typeduration == null)
                {
                    typeduration = new TypeDuration();
                    typeduration.LoadByPrimaryKey(this.TypeDurationID);
                }
                if (typeduration.ID != this.TypeDurationID)
                {
                    typeduration.LoadByPrimaryKey(this.TypeDurationID);
                }
                return typeduration;
            }
        }

        public bool LoadByMemberTypeSpecID(int memberTypeSpecID)
        {
            return LoadFromRawSql(@"select MemberTypeSpecDuration.*,[DurationName]=TypeDuration.Name
                                    FROM MemberTypeSpecDuration INNER JOIN TypeDuration ON TypeDuration.ID=MemberTypeSpecDuration.TypeDurationID
                                    WHERE MemberTypeSpecDuration.MemberTypeSpecID={0}", memberTypeSpecID);
        }

    }
}
