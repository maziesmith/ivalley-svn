﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master"
    AutoEventWireup="true" CodeBehind="EditMagazine.aspx.cs" Inherits="GlobalLogistics.WebSite.Administrator.EditMagazine" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    $(function () {
        $("#mi14").addClass("selected");
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="AdminMain" style="direction: rtl;">
        <asp:Panel ID="uiPanelViewMagazines" runat="server">
        <div class="ContentLeftDiv">
                <h1>
                     المجلات الحالية
                </h1>
                <div class="Details675">
            
            <div class="AdminRight">
             <div class="AdminMore">
                <asp:LinkButton ID="uiLinkButtonAdd" runat="server" OnClick="uiLinkButtonAdd_Click">إضافة مجلة جديدة</asp:LinkButton>
                </div>
            </div>
            <div class="AdminMiddle">
            </div>
            <div class="AdminLeft">
            </div>
            <div class="clear">
            </div>
            
            <asp:Panel ID="uiPanelSearch" runat="server" DefaultButton="uiButtonSearch">
            
            <div class="AdminRight">
               &nbsp;
            </div>
            <div class="AdminMiddle">
            <asp:Label ID="Label10" runat="server" Text="بحث : " CssClass="Label"></asp:Label>
            &nbsp;&nbsp;
                <asp:TextBox ID="uiTextBoxSearch" runat="server" Width="300px"></asp:TextBox>
                &nbsp;&nbsp;
                 <asp:Button ID="uiButtonSearch" runat="server" Text="بحث" 
                    onclick="uiButtonSearch_Click" Width="60px" style="display:none;" />
                    <div class="SearchBtn">
                <asp:LinkButton ID="uiLinkButtonSearch" runat="server" 
                    onclick="uiButtonSearch_Click">بحث</asp:LinkButton>
                    </div>
            </div>
            <div class="AdminLeft">
               
            </div>
            <div class="clear10">
            </div>
            </asp:Panel>

            
            <div class="AdminMiddle" style="width:100%">
            <asp:GridView ID="uiGridViewMagazines" runat="server" AutoGenerateColumns="False"
                    OnRowCommand="uiGridViewMagazines_RowCommand" EnableModelValidation="True" 
                    AllowPaging="True" HorizontalAlign="Center" Width="80%">
                    <Columns>
                        <asp:BoundField DataField="EnTitle" HeaderText="العنوان بالإنجليزية" />
                        <asp:BoundField DataField="ArTitle" HeaderText="العنوان بالعربية" />
                        <asp:BoundField DataField="CreatedDate" HeaderText="تاريخ النشر" />
                        <asp:TemplateField HeaderText="إجراءات">
                            <ItemTemplate>
                                <asp:LinkButton ID="uiLinkButtonEdit" runat="server" CommandArgument='<%# Eval("MagazineID") %>'
                                    CommandName="EditMagazine">تعديل</asp:LinkButton>&nbsp;
                                <asp:LinkButton ID="uiLinkButtonDelete" runat="server" CommandArgument='<%# Eval("MagazineID") %>'
                                    CommandName="DeleteMagazine" OnClientClick="return confirm('Are you want to delete this record?');">حذف</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <HeaderStyle HorizontalAlign="Center" />
                        <PagerStyle HorizontalAlign="Center" />
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>
            </div>
           
            <div class="clear">
            </div>
            </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="uiPanelEdit" runat="server">
        <div class="ContentLeftDiv">
                <h6>
                    تعديل المجلات</h6>
                <div class="AdminDetails728">
            <div class="AdminRight" style="width: 120px">
            </div>
            <div class="AdminMiddle">
                <asp:Label ID="uiLabelError" runat="server" Font-Bold="True" ForeColor="Red" Text="حدث خطأ . من فضلك حاول مرة أخرى ."
                    Visible="False"></asp:Label></div>
            <div class="AdminLeft">
            </div>
            <div class="clear">
            </div>
            <div class="AdminRight" style="width: 120px">
            <asp:Label ID="Label1" runat="server" Text="العنوان بالإنجليزية : " 
            CssClass="Label"></asp:Label>                 
            </div>
            <div class="AdminMiddle">
                <asp:TextBox ID="uiTextBoxEnTitle" runat="server" ValidationGroup="EditPage" 
                    Width="300px"></asp:TextBox></div>
            <div class="AdminLeft">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                    ControlToValidate="uiTextBoxEnTitle" Display="Dynamic" 
                    ValidationGroup="EditPage"></asp:RequiredFieldValidator>
            </div>
            <div class="clear">
            </div>
            <div class="AdminRight" style="width: 120px">
            <asp:Label ID="Label2" runat="server" Text="العنوان بالعربية : " 
            CssClass="Label"></asp:Label>                
            </div>
            <div class="AdminMiddle">
                <asp:TextBox ID="uiTextBoxArTitle" runat="server" ValidationGroup="EditPage" 
                    Width="300px"></asp:TextBox></div>
            <div class="AdminLeft">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                    ControlToValidate="uiTextBoxArTitle" Display="Dynamic" 
                    ValidationGroup="EditPage"></asp:RequiredFieldValidator>
            </div>
            <div class="clear">
            </div>
            <div  style="display:none">
            <div class="AdminRight" style="width: 120px">
                <asp:Label ID="Label3" runat="server" Text="إختر الملف :" 
            CssClass="Label"></asp:Label>
                
            </div>
            <div class="AdminMiddle">
                <asp:FileUpload ID="uiFileUpload" runat="server" />
            </div>
            <div class="AdminLeft">
            </div>
            <div class="clear">
            </div>
            </div>

            <div class="AdminRight" style="width: 120px">
                <asp:Label ID="Label5" runat="server" Text="أدخل مسار الملف :" 
            CssClass="Label"></asp:Label>
                
            </div>
            <div class="AdminMiddle">
                <asp:TextBox ID="uiTextBoxPath" runat="server" Width="300px"></asp:TextBox>
            </div>
            <div class="AdminLeft">
            </div>
            <div class="clear">
            </div>

            <div class="AdminRight" style="width: 120px">
                    <asp:Label ID="Label4" runat="server" Text="تاريخ النشر :" 
            CssClass="Label"></asp:Label>                
            </div>
            <div class="AdminMiddle">
                <asp:TextBox ID="uiTextBoxDate" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="uiTextBoxDate_CalendarExtender" runat="server" Enabled="True"
                    TargetControlID="uiTextBoxDate">
                </cc1:CalendarExtender>
            </div>
            <div class="AdminLeft">
            </div>
            <div class="clear">
            </div>
            <div class="AdminRight" style="width: 120px">
            </div>
            <div class="AdminMiddle" style="text-align:center">
                <%--<asp:Button ID="uiButtonUpdate" runat="server" Text="إضافة / تعديل" ValidationGroup="EditPage"
                            OnClick="uiButtonUpdate_Click" />--%>
                            <div class="SearchBtn">
                        <asp:LinkButton ID="uiLinkButtonUpdate" runat="server" Text="إضافة / تعديل" 
                            ValidationGroup="EditPage" onclick="uiButtonUpdate_Click"></asp:LinkButton></div>
                        &nbsp; &nbsp; &nbsp;
                        <%--<asp:Button ID="uiButtonCancel" runat="server" Text="إلغاء" OnClick="uiButtonCancel_Click" />--%>
                        <div class="SmallBtn">
                        <asp:LinkButton ID="uiLinkButtonCancel" runat="server" Text="إلغاء" 
                            onclick="uiButtonCancel_Click"></asp:LinkButton></div>
            </div>
            <div class="AdminLeft">
            </div>
            <div class="clear">
            </div>
            </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
