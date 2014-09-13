﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/EduMaster.Master" AutoEventWireup="true" CodeBehind="checkapp.aspx.cs" Inherits="EduMontreal.checkapp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="col-md-12 col-left">
         <h4>
             Current Status
         </h4>
         <asp:Label ID="uiLabelStatusName" runat="server"></asp:Label>
         <br />
         <asp:Image ID="uiImageCurrentStatus" runat="server" />
     </section>
    <div style="clear:both;height:10px;"></div>
     <section class="col-md-12 col-left">
                            <h4>
                                Update History
                            </h4>
                            <asp:GridView ID="uiGridViewStatusHistory" runat="server"  AutoGenerateColumns="False" HorizontalAlign="Center"  Width="100%" CssClass="table table-hover "  >
                                <AlternatingRowStyle HorizontalAlign="Center" />
                        <RowStyle HorizontalAlign="Center" />                    
                        <Columns>                                                        
                            <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-Width="30%"/>
                            <asp:BoundField DataField="StatusComment" HeaderText="Comment" ItemStyle-Width="40%"/>
                            <asp:BoundField DataField="StatusDate" HeaderText="Last Updated Date" DataFormatString="{0:dd/MM/yyyy}" />     
                            
                        </Columns>
                            </asp:GridView>
     </section>

    <div class="modal fade" id="paymentPopup">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h3>Tuition Fees Payment</h3>
                </div>
                <div class="modal-body">
                     <h5>
                        In order to finalize your tuition fees payment please choose one from the following payment methods :
                    </h5>
                     <div class="clearfix" style="height:20px;"></div>
                    <div class="col-11">
                        You're going to pay : <asp:Label ID="uiLabelAmount" runat="server" ></asp:Label> USD
                    </div>
                     <div class="clearfix" style="height:10px;"></div>
                     <div class="col-lg-4">
                         <a href="AppPayment" class="paymentlink">
                         <img src="Images/visamaster.jpg" style="max-width:150px;"/>
                             </a>
                     </div>
                     <div class="col-lg-4">
                         <a href="#" class="paymentlink">
                         <img src="Images/paypal-logo.png" style="max-width:150px;"/>
                             </a>
                     </div>
                     <div class="col-lg-4">
                         <a href="#" class="paymentlink">
                         <img src="Images/direct-bank-transfer.jpg" style="max-width:150px;"/>
                            </a>
                     </div>
                    <div class="clearfix" style="height:20px;"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</asp:Content>