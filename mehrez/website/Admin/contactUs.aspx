﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="website.Admin.contactUs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="AdminMain">
        <asp:Panel ID="uiPanelViewContact" runat="server">
            <div class="ContentLeftDiv">
                <h1>
                    Contact
                </h1>
                <div class="Details675">
                    <div class="AdminRight">
                    </div>
                    <div class="AdminMiddle">
                        <div class="AdminMore">
                            <asp:LinkButton ID="uiLinkButtonAdd" runat="server" OnClick="uiLinkButtonAdd_Click">Add new contact</asp:LinkButton>
                        </div>
                    </div>
                    <div class="AdminLeft">
                    </div>
                    <div class="clear5">
                    </div>
                    <div class="AdminMiddle" style="width: 100%">
                        <asp:GridView ID="uiGridViewContacts" runat="server" AutoGenerateColumns="False"
                            OnRowCommand="uiGridViewContacts_RowCommand" AllowPaging="True" OnPageIndexChanging="uiGridViewContacts_PageIndexChanging"
                            EnableModelValidation="True" HorizontalAlign="Center" Width="95%">
                            <Columns>                                
                                <asp:BoundField DataField="Title" HeaderText="Title" />
                                <%--<asp:BoundField DataField="CreatedDate" HeaderText="&#1578;&#1575;&#1585;&#1610;&#1582; &#1575;&#1604;&#1606;&#1588;&#1585;" DataFormatString="{0:dd/MM/yyyy}" />--%>
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="uiLinkButtonEdit" runat="server" CommandArgument='<%# Eval("ID") %>'
                                            CommandName="EditContact">Edit</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="uiLinkButtonDelete" runat="server" CommandArgument='<%# Eval("ID") %>'
                                            CommandName="DeleteContact" OnClientClick="return confirm('do you want to delete this record ?');">Delete</asp:LinkButton>
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
                <h4>
                    Edit Contact</h4>
                <div class="AdminDetails728">
                    <div class="AdminRight">
                    </div>
                    <div class="AdminMiddle" style="width:370px;">
                        <asp:Label ID="uiLabelError" runat="server" Font-Bold="True" ForeColor="Red" Text="An error occured.please try again."
                            Visible="False"></asp:Label>
                    </div>
                    <div class="AdminLeft">
                    </div>
                    <div class="clear5">
                    </div>
                    
                    <div class="AdminRight" style="width: 135px">
                        <asp:Label ID="Label3" runat="server" Text="Title  :" CssClass="Label"></asp:Label>
                    </div>
                    <div class="AdminMiddle" style="width:370px;">
                        <asp:TextBox ID="uiTextBoxTitle" runat="server" ValidationGroup="EditPage" Width="350px"></asp:TextBox>
                    </div>
                    <div class="AdminLeft">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            ControlToValidate="uiTextBoxTitle" Display="Dynamic" ValidationGroup="EditPage"></asp:RequiredFieldValidator>
                    </div>
                    <div class="clear5">
                    </div>
                    <div class="AdminRight" style="width: 135px">
                        <asp:Label ID="Label1" runat="server" Text="Latitude  :" CssClass="Label"></asp:Label>
                    </div>
                    <div class="AdminMiddle" style="width:370px;">
                        <asp:TextBox ID="uiTextBoxLatitude" runat="server" ValidationGroup="EditPage" Width="350px"></asp:TextBox>
                    </div>
                    <div class="AdminLeft">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            ControlToValidate="uiTextBoxLatitude" Display="Dynamic" ValidationGroup="EditPage"></asp:RequiredFieldValidator>
                    </div>
                    <div class="clear5">
                    </div>
                    <div class="AdminRight" style="width: 135px">
                        <asp:Label ID="Label2" runat="server" Text="Longitude  :" CssClass="Label"></asp:Label>
                    </div>
                    <div class="AdminMiddle" style="width:370px;">
                        <asp:TextBox ID="uiTextBoxLongitude" runat="server" ValidationGroup="EditPage" Width="350px"></asp:TextBox>
                    </div>
                    <div class="AdminLeft">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            ControlToValidate="uiTextBoxLongitude" Display="Dynamic" ValidationGroup="EditPage"></asp:RequiredFieldValidator>
                    </div>
                    <div class="clear5">
                    </div>
                    <div class="AdminRight" style="width: 135px">
                        <asp:Label ID="Label4" runat="server" Text="Email  :" CssClass="Label"></asp:Label>
                    </div>
                    <div class="AdminMiddle" style="width: 370px;">
                        <asp:TextBox ID="uiTextBoxMail" runat="server" ValidationGroup="EditPage" Width="350px"></asp:TextBox>
                    </div>
                    <div class="AdminLeft">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="uiTextBoxMail"
                            Display="Dynamic" ErrorMessage="*" ValidationGroup="EditPage" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                            ControlToValidate="uiTextBoxMail" Display="Dynamic" ValidationGroup="EditPage"></asp:RequiredFieldValidator>
                    </div>
                    <div class="clear5">
                    </div>
                    
                    <div class="AdminRight" style="width: 135px">
                        <asp:Label ID="Label5" runat="server" Text="Content  :" CssClass="Label"></asp:Label>
                    </div>
                    <div class="AdminMiddle">
                        <asp:TextBox ID="uiTextBoxContent" runat="server" TextMode="MultiLine" Rows="10"
                            Width="450px"></asp:TextBox>
                        <asp:HtmlEditorExtender ID="uiTextBoxContent_HtmlEditorExtender" runat="server" Enabled="True"
                            TargetControlID="uiTextBoxContent">
                        </asp:HtmlEditorExtender>
                    </div>
                    <div class="AdminLeft">
                    </div>
                    <div class="clear5" style="height: 20px;">
                    </div>
                    <div class="AdminRight" style="width: 135px">
                        &nbsp;
                    </div>
                    <div class="AdminMiddle" style="text-align: center">
                        <%--<asp:Button ID="uiButtonUpdate" runat="server" Text="&#1573;&#1590;&#1575;&#1601;&#1577; / &#1578;&#1593;&#1583;&#1610;&#1604;" ValidationGroup="EditPage"
                            OnClick="uiButtonUpdate_Click" />--%>
                        <div class="SearchBtn">
                            <asp:LinkButton ID="uiLinkButtonUpdate" runat="server" Text="Add / Edit" ValidationGroup="EditPage"
                                OnClick="uiButtonUpdate_Click"></asp:LinkButton></div>
                        &nbsp; &nbsp; &nbsp;
                        <%--<asp:Button ID="uiButtonCancel" runat="server" Text="&#1573;&#1604;&#1594;&#1575;&#1569;" OnClick="uiButtonCancel_Click" />--%>
                        <div class="SearchBtn">
                            <asp:LinkButton ID="uiLinkButtonCancel" runat="server" Text="Cancel" OnClick="uiButtonCancel_Click"></asp:LinkButton></div>
                    </div>
                    <div class="AdminLeft">
                    </div>
                    <div class="clear5">
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>