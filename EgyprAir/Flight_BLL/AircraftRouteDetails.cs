
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using Flight_DAL;
namespace Flight_BLL
{
	public class AircraftRouteDetails : _AircraftRouteDetails
	{
		public AircraftRouteDetails()
		{
		
		}

        public virtual bool GetSectorsByAircraftRouteID(int ID)
        {
            return LoadFromRawSql(@"Select S.SectorID,D.AircraftRouteID, S.SectorDate, S.FlightNo, S.From_AirportID, S.To_AirportID,F.IATACode FCode, T.IATACode TCode, S.STD, S.STA from Sector S 
                                    Inner join AircraftRouteDetails D on S.sectorID = D.SectorID 
                                    Inner join Airport F on S.From_AirportID = F.AirportID
                                    Inner join Airport T on S.To_AirportID = T.AirportID
                                    where D.AircraftRouteID = {0}", ID);
        }

        public bool GetBySectorIDAndAircraftRouteID(int AID, int SID)
        {
            this.Where.WhereClauseReset();
            this.Where.AircraftRouteID.Value = AID;
            this.Where.AircraftRouteID.Operator = MyGeneration.dOOdads.WhereParameter.Operand.Equal;
            this.Where.SectorID.Value = SID;
            this.Where.SectorID.Operator = MyGeneration.dOOdads.WhereParameter.Operand.Equal;
            return this.Query.Load();
        }
	}
}
