
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using E3zmni.DAL;

namespace E3zmni.BLL
{
	public class CardImages : _CardImages
	{
		public CardImages()
		{
		
		}

        public virtual bool GetCardImageByCardID(int CardID)
        {
            this.Where.CardID.Value = CardID;
            this.Where.CardID.Operator = MyGeneration.dOOdads.WhereParameter.Operand.Equal;
            return this.Query.Load();

        }
	}
}
