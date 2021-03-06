<%@ Page Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true"
    CodeFile="AdminGovernate.aspx.cs" Inherits="AdminGovernate" %>

<%@ MasterType VirtualPath="~/MasterPages/MasterPage.master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="Server">
    <asp:UpdatePanel runat="server" ID="updPanelGov">
        <ContentTemplate>
            <table dir="rtl" cellpadding="5">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblGovCode" Text="��� ��������:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtGoveCode" Width="160px"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator runat="server" ID="req1" ErrorMessage="*" 
                    ControlToValidate="txtGoveCode" ValidationGroup="InsUpd" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="Label1" Text="��� ��������:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtGoveName" Width="160px"></asp:TextBox>
                    </td>
                    <td>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ErrorMessage="*" 
                    ControlToValidate="txtGoveCode" ValidationGroup="InsUpd" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td colspan="2" align="left">
                <asp:Button runat="server" ID="btnSave" ValidationGroup="InsUpd" Text="�����" Width="100px" 
                        onclick="btnSave_Click" />
                </td>
                </tr>
            </table>
            
            
           
            <div dir="rtl">
            <asp:GridView runat="server" ID="grdGovernate" AutoGenerateColumns="false" 
                    AllowPaging="true" onpageindexchanging="grdGovernate_PageIndexChanging">
            <Columns>
            <asp:TemplateField HeaderText="��� ��������">
            <ItemTemplate>
            <asp:LinkButton runat="server" ID="lnkGovCode" Text='<%#Eval("CD")%>' OnClick="lnkGovCode_Click"
            CommandArgument='<%#Eval("DESCR") %>'></asp:LinkButton>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="��� ��������" DataField="DESCR" />
             <asp:TemplateField HeaderText="��� ���">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" ID="lnkDelete" CommandArgument='<%#Eval("CD")%>'
                                    Text="X" OnClick="lnkDelete_Click" OnClientClick="return confirm('��� ��� ��� ��� ��� ��������');"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
            </Columns>
            
            </asp:GridView>
            </div>
            
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
