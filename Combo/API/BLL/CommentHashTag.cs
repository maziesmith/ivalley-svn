
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using Combo.DAL;
namespace Combo.BLL
{
	public class CommentHashTag : _CommentHashTag
	{
		public CommentHashTag()
		{
		
		}

        public virtual bool GetHashTagsByCommnetID(int CommentID)
        {
            return LoadFromRawSql(@"Select PT.*, HT.Name from CommentHashTag PT 
                                    Inner Join HashTag HT on PT.HashTagID = HT.HashTagID where PT.ComboCommentID = {0}", CommentID);
        }
	}
}
