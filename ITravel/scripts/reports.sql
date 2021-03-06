
If Exists (select Name 
		   from sysobjects 
		   where name = 'RPT_GetTickets_Canceled' and
		        xtype = 'P')
Drop Procedure RPT_GetTickets_Canceled 
Go
Create Procedure RPT_GetTickets_Canceled @DateFrom DateTime = null,
										 @DateTo DateTime = null					 
As 
Select * from 
TicketInfo T
Where (T.CreatedDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (T.CreatedDate <= ISNULL(@DateTo, '01/01/2500')) AND	  
	  (T.TicketStatusID > 2 )
	
GO

If Exists (select Name 
		   from sysobjects 
		   where name = 'RPT_GetTicketsByStatusID' and
		        xtype = 'P')
Drop Procedure RPT_GetTicketsByStatusID 
Go
Create Procedure RPT_GetTicketsByStatusID @DateFrom DateTime = null,
										  @DateTo DateTime = null,
										  @StatusID int= 0					 
As 
Select * from 
TicketInfo T
Where (T.CreatedDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (T.CreatedDate <= ISNULL(@DateTo, '01/01/2500')) AND	  
	  (T.TicketStatusID = @StatusID or @StatusID = 0 )
		  
GO	  
	  
If Exists (select Name 
		   from sysobjects 
		   where name = 'RPT_GetTickets_NetIncome' and
		        xtype = 'P')
Drop Procedure RPT_GetTickets_NetIncome 
Go
Create Procedure RPT_GetTickets_NetIncome @DateFrom DateTime = null,
										  @DateTo DateTime = null							 
As 
Declare @ConfirmedTotal int,
		@CanceledTotal int,
		@NetIncome decimal(10,2)
Select sum(case when (T.TicketStatusID = 1 or T.TicketStatusID = 2) then 1 else 0 end) ConfirmedTotal, 
	   Sum(case when (T.TicketStatusID = 3 or T.TicketStatusID = 4) then 1 else 0 end) CanceledTotal,
	   SUM(case when (T.TicketStatusID = 3 or T.TicketStatusID = 4) then 0 else T.AddedValue end) NetIncome from 
TicketInfo T
Where (T.CreatedDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (T.CreatedDate <= ISNULL(@DateTo, '01/01/2500')) 
	  
	  
Go

If Exists (select Name 
		   from sysobjects 
		   where name = 'RPT_GetTickets_Sold' and
		        xtype = 'P')
Drop Procedure RPT_GetTickets_Sold 
Go
Create Procedure RPT_GetTickets_Sold @DateFrom DateTime = null,
									 @DateTo DateTime = null							 
As 
Select * from 
TicketInfo T
Where (T.CreatedDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (T.CreatedDate <= ISNULL(@DateTo, '01/01/2500'))  and
	  (T.TicketStatusID = 1 or T.TicketStatusID = 2)

Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'RPT_GetTickets_ByCreditCardID' and
		        xtype = 'P')
Drop Procedure RPT_GetTickets_ByCreditCardID 
Go
Create Procedure RPT_GetTickets_ByCreditCardID @DateFrom DateTime = null,
									 @DateTo DateTime = null	,
									 @CreditCardID int						 
As 
Select * from 
TicketInfo T
Where (T.CreatedDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (T.CreatedDate <= ISNULL(@DateTo, '01/01/2500'))  and
	  (T.TicketStatusID = 1 or T.TicketStatusID = 2) and
	  T.CreditCardID = @CreditCardID

Go



If Exists (select Name 
		   from sysobjects 
		   where name = 'RPT_GetTicketInfo' and
		        xtype = 'P')
Drop Procedure RPT_GetTicketInfo 
Go
Create Procedure RPT_GetTicketInfo @TicketID int							 
As 
Select T.*, S.ArName StatusName, AF.Name FromName, AT.Name ToName , A.Name AirLineName, P.FirstName +  ' ' + P.LastName as PassName from  
TicketInfo T 
Inner Join TicketStatus S on T.TicketStatusID = S.TicketStatusID
Inner Join AirPort AF on T.From_AirportID = AF.AirPortID 
Inner Join AirPort AT on T.To_AirportID = AT.AirPortID 
Inner Join AirLine A on T.AirLineID = A.AirLineID 
Inner Join Passenger P on T.PassengerID = P.PassengerID

Where T.TicketID = @TicketID

Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'RPT_Summary' and
		        xtype = 'P')
Drop Procedure RPT_Summary 
Go
Create Procedure RPT_Summary @DateFrom DateTime = null,
						     @DateTo DateTime = null							 
As 
Declare @TotalSold decimal(10,2),
		@TotalPurchase decimal(10,2),
		@TotalnetIncome decimal(10,2),
		@TotalPaymentVoucher decimal(10,2),
		@TotalReceivingVoucher decimal(10,2)
		
		
Select @TotalSold = sum(case when (T.TicketStatusID = 1 or T.TicketStatusID = 2) then T.FinalPrice else 0 end)
from 
TicketInfo T
Where (T.CreatedDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (T.CreatedDate <= ISNULL(@DateTo, '01/01/2500')) 


select @TotalPurchase = Sum(case when (T.TicketStatusID = 1 or T.TicketStatusID = 2) then T.ActualPrice else 0 end) from 
TicketInfo T
Where (T.CreatedDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (T.CreatedDate <= ISNULL(@DateTo, '01/01/2500')) 


select @TotalnetIncome = Sum(case when (T.TicketStatusID = 1 or T.TicketStatusID = 2) then T.ActualPrice else 0 end) from 
TicketInfo T
Where (T.CreatedDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (T.CreatedDate <= ISNULL(@DateTo, '01/01/2500')) 
	  

	  
select @TotalPaymentVoucher = Sum(Amount) from 
PaymentVoucher P
Where (P.VoucherDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (P.VoucherDate <= ISNULL(@DateTo, '01/01/2500')) 
	  

select @TotalReceivingVoucher = Sum(Amount) from 
ReceivingVoucher R
Where (R.VoucherDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (R.VoucherDate <= ISNULL(@DateTo, '01/01/2500')) 
	  	
Select @TotalSold TotalSold,
		@TotalPurchase TotalPurchase,
		@TotalnetIncome TotalnetIncome,
		@TotalPaymentVoucher TotalPaymentVoucher,
		@TotalReceivingVoucher TotalReceivingVoucher	  	   
	  
Go




If Exists (select Name 
		   from sysobjects 
		   where name = 'RPT_GetTotalPaymentVoucher' and
		        xtype = 'P')
Drop Procedure RPT_GetTotalPaymentVoucher 
Go
Create Procedure RPT_GetTotalPaymentVoucher @DateFrom DateTime = null,
									 @DateTo DateTime = null				 
As 
Select * from 
PaymentVoucher P
Where (P.VoucherDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (P.VoucherDate <= ISNULL(@DateTo, '01/01/2500')) 

Go

If Exists (select Name 
		   from sysobjects 
		   where name = 'RPT_GetTotalReceivingVoucher' and
		        xtype = 'P')
Drop Procedure RPT_GetTotalReceivingVoucher 
Go
Create Procedure RPT_GetTotalReceivingVoucher @DateFrom DateTime = null,
									 @DateTo DateTime = null				 
As 
Select * from 
ReceivingVoucher R
Where (R.VoucherDate >= ISNULL(@DateFrom, '01/01/1900'))  and 
	  (R.VoucherDate <= ISNULL(@DateTo, '01/01/2500')) 

Go

	  