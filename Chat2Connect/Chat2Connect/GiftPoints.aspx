﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Balance.master" AutoEventWireup="true" CodeBehind="GiftPoints.aspx.cs" Inherits="Chat2Connect.GiftPoints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BHead" runat="server">
    <script src="../js/jquery.tokeninput.js"></script>
<link href="../css/token-input-facebook.css" rel="stylesheet" />
     <script type="text/javascript">
         $(document).ready(function () {
             $('#gifts').addClass('active');

             $("#uiTextBoxFriend").tokenInput("../Services/Services.asmx/SearchMembersFriends?memberID=" + <%= BLL.Member.CurrentMemberID.ToString() %> , {
                 theme: "facebook",
                 preventDuplicates: true,
                 hintText: "",
                 noResultsText: "لا يوجد",
                 searchingText: "بحث فى الأصدقاء...",    
                 tokenLimit: 1,
                 onAdd: function (item) {
                     $('#uiHiddenFieldFriendID').val(item.id);
                 },
             });

             $("input[name='points']").change(function () {
                 $("#<%=uiHiddenFieldPoints.ClientID%>").val($(this).data("points"));
                 //$("#<%=uiHiddenFieldPrice.ClientID%>").val($(this).data("price"));
             });
         });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="form-horizontal blockBoxshadow">
       <div class="form-group">
        <div class="col-lg-2 pull-right" style="padding-top:3px;">
            رصيد النقاط
        </div>
        <div class="col-lg-4 pull-right bordered" style="padding:3px;">
            <asp:Label ID="uiLabelBalance" runat="server" ></asp:Label>
        </div>
            <div class="col-lg-4 pull-right" style="color:#b5b5b5;padding-top:3px;">
                (كل 100 نقطة تساوى 10 ريال)
            </div>
            </div>

         <div class="form-group">
        <div class="col-sm-10 control-label pull-right">
           <h3> شحن نقاط الهدايا</h3>
        </div>
         <div class="col-sm-2 control-label pull-right">
           <i class="icon-3x icon-gift"></i>&nbsp;<i class="icon-2x icon-refresh"></i>
        </div>
            </div>

         <div class="form-group">
        <div class="col-sm-4 control-label pull-right">
            الإسم المراد شحنه نقاط</div>
        <div class="col-sm-6 pull-right">
            <asp:TextBox ID="uiTextBoxFriend" runat="server" ClientIDMode="Static" CssClass="form-control   "></asp:TextBox>
        </div>
            </div>

        <div class="form-group">
            <div style="clear:both;height:10px;"></div>
             <div class="col-sm-4 control-label pull-right">
            عدد النقاط
        </div>
            <div class="col-sm-6 pull-right">
            <table class="table table-bordered ">
		<tbody>
	    <tr>
			<td><label><input type="radio" name="points" data-points="100" data-price="10" > 100 نقطة </label></td>
			<td><label><input type="radio" name="points" data-points="200" data-price="20"> 200 نقطة </label></td>
		</tr>
	    
	    <tr>
			<td><label><input type="radio" name="points" data-points="500" data-price="45"> 500 نقطة </label></td>
			
		
			<td><label><input type="radio" name="points" data-points="1000" data-price="80"> 1000 نقطة </label>
                </td>
			
		</tr>
	    <tr>
			<td><label><input type="radio" name="points" data-points="2000" data-price="140"> 2000 نقطة </label></td>
			
		
			<td><label><input type="radio" name="points" data-points="5000" data-price="300"> 5000 نقطة </label></td>
			
		</tr>
	    <tr>
			<td><label><input type="radio" name="points" data-points="10000" data-price="500"> 10000 نقطة </label></td>
			<td></td>
		</tr>
		</tbody></table>
        </div>
    </div>

         <div class="form-group">
        <div class="col-sm-4 control-label pull-right">
            </div>
        <div class="col-sm-6 pull-right">
            <asp:HyperLink ID="uiLinkButtonTransfere" runat="server" class="btn btn-main" data-toggle="modal" ValidationGroup="confirm_start" NavigateUrl="#confirm">تحويل</asp:HyperLink>           
        </div>
            </div>
         <asp:HiddenField ID="uiHiddenFieldFriendID" runat="server" ClientIDMode="Static" />
         <asp:HiddenField ID="uiHiddenFieldPoints" runat="server" ClientIDMode="Static" />
         <asp:HiddenField ID="uiHiddenFieldPrice" runat="server" ClientIDMode="Static" />
         </div>

    <div id="confirm" class="modal fade" role="modal" aria-hidden="true">
        <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <a class="close pull-left" data-dismiss="modal" aria-hidden="true" style="text-decoration:none;" >
                            ×</a>
                        <i class="icon-2x icon-edit" style="float:left;margin-left:10px;"></i>
                        <h3 >
                            تأكيد التحويل</h3>
                    </div>
                    <div class="modal-body">
                            <div class="form-horizontal blockBox">
                                <div class="form-group">
                                    <div class="col-sm-4 control-label pull-right">
                                        <label>السؤال السرى</label>
                                    </div>
                                    <div class="col-sm-8 pull-right">                                        
                                        <asp:DropDownList ID="uiDropDownListQuestion" runat="server" CssClass="form-control" >                     
            	                            <asp:ListItem Value="0">اختر السؤال السرى</asp:ListItem>
            	                            <asp:ListItem>اين ولدت</asp:ListItem>
            	                            <asp:ListItem>اقرب صديق اليك</asp:ListItem>
            	                            <asp:ListItem>اين تسكن</asp:ListItem>
            	                            <asp:ListItem>افضل مدينه زرتها</asp:ListItem>
            	                            <asp:ListItem>سيارة تتمنى اقتنائها</asp:ListItem>			
                                        </asp:DropDownList>                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4 control-label pull-right">
                                        <label>إجابة السوال السرى</label>
                                    </div>
                                    <div class="col-sm-8 pull-right">
                                        <asp:TextBox ID="uiTextBoxAnswer" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="uiTextBoxAnswer" ErrorMessage="من فضلك أدخل إجابة السؤال السرى." ToolTip="من فضلك أدخل إجابة السؤال السرى." ValidationGroup="confirm" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                                        
                                    </div>
                                </div>                             
                            </div>
                   </div>
                    <div class="modal-footer">
                        <a href="#" class="btn btn-default" data-dismiss="modal" style="text-decoration:none;">إغلاق</a>
                        <asp:LinkButton CssClass="btn btn-warning" runat="server" ID="uiLinkButtonConfirm" style="text-decoration:none;" OnClick="uiLinkButtonConfirm_Click" ValidationGroup="confirm">تأكيد</asp:LinkButton>
                    </div>
                    </div>
            </div>
    </div>
</asp:Content>
