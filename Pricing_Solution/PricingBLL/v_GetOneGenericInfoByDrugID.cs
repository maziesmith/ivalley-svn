
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using View;// We should use the namespace of Data access layer generated form business entity

namespace Pricing.BLL
{
	public class v_GetOneGenericInfoByDrugID : _v_GetOneGenericInfoByDrugID
	{
        public v_GetOneGenericInfoByDrugID()
		{
		
		}

        public void GetCertainGenericInfo(int _Drug_Req_ID, int _Drug_Reguest_Substances_ID)
        {
            Where.Drug_Req_ID.Value = _Drug_Req_ID;
            Where.Drug_Req_ID.Operator = MyGeneration.dOOdads.WhereParameter.Operand.Equal;
            Where.Drug_Req_ID.Conjuction = MyGeneration.dOOdads.WhereParameter.Conj.And;
            Where.Drug_Reguest_Substances_ID.Value = _Drug_Reguest_Substances_ID;
            Where.Drug_Reguest_Substances_ID.Operator = MyGeneration.dOOdads.WhereParameter.Operand.Equal;
            Query.Load();
        }
	}
}
