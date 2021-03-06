﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="SectorPilots.aspx.cs" Inherits="Flights_GUI.Operation.SectorPilots" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="../Common/Controls/SectorInfo.ascx" TagName="SectorInfo" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="uiUpdatePanel" runat="server">
        <ContentTemplate>
            <div class="MoreBig" style="float: right; position: absolute; right: 180px; top: 60px;
                height: 25px; z-index: 99999;">
                <asp:LinkButton ID="uiLinkButtonBack" runat="server" OnClick="uiLinkButtonBack_Click">Back to flight list</asp:LinkButton>
            </div>
            <div class="ContentLeftDiv">
                <h4>
                    Edit Sector Details</h4>
                <div class="Details900">
                    <div class="whiteArea">
                                <div style="height:25px;clear:both;"></div>
                    <div>
                        <uc1:sectorinfo id="SectorInfo1" runat="server" />
                    </div>
                    <div class="clear" style="height: 5px;">
                    </div>
                                    <div class="seprator">
                                        Manage Pilots</div>
                                    <div class="clear">
                                    </div>

                                    <div style="float:left;padding:15px;width:40%;">
                                    <div class="AdminLeft" style="width: 25%">
                                        <asp:Label ID="Label26" runat="server" Text="Pilot" CssClass="Label"></asp:Label></div>
                                    <div class="AdminMiddle">
                                        <asp:DropDownList ID="uiDropDownListPilot" runat="server" Width="150px">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;</div>
                                    <div class="AdminRight">
                                        <asp:Label ID="uiLabelPilotFullName" runat="server"></asp:Label></div>
                                    <div class="clear" style="height:5px;">
                                    </div>
                                    <div class="AdminLeft" style="width: 25%">
                                        <asp:Label ID="Label27" runat="server" Text="Position" CssClass="Label"></asp:Label></div>
                                    <div class="AdminMiddle">
                                        <asp:DropDownList ID="uiDropDownListPilotPos" runat="server" Width="150px">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;</div>
                                    <div class="AdminRight">
                                    </div>
                                    <div class="clear" style="height:5px;">
                                    </div>
                                    <div class="AdminLeft" style="width: 25%">
                                        &nbsp;</div>
                                    <div class="AdminMiddle">
                                        <div class="More" style="float: left; height: 15px;">
                                            <asp:LinkButton ID="uiLinkButtonAddFlying" runat="server" OnClick="uiLinkButtonAddFlying_Click">Add new Pilot</asp:LinkButton></div>
                                    </div>
                                    <div class="AdminRight">
                                    </div>
                                    <div class="clear10">
                                    </div>
                                    </div>
                                    <div style="float:left;padding:15px;width:40%;">
                                    <div class="AdminLeft" style="width: 25%;">
                                        <asp:Label ID="Label30" runat="server" CssClass="Label" Text="Co-Pilot"></asp:Label></div>
                                    <div class="AdminMiddle">
                                        <asp:DropDownList ID="uiDropDownListCoPilot" runat="server" Width="150px">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;</div>
                                    <div class="AdminRight">
                                        <asp:Label ID="uiLabelCoPilotFullName" runat="server"></asp:Label></div>
                                    <div class="clear" style="height:5px;">
                                    </div>
                                    <div class="AdminLeft" style="width: 25%">
                                        <asp:Label ID="Label31" runat="server" CssClass="Label" Text="Position"></asp:Label></div>
                                    <div class="AdminMiddle">
                                        <asp:DropDownList ID="uiDropDownListCOPos" runat="server" Width="150px">
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;</div>
                                    <div class="AdminRight">
                                    </div>
                                   <div class="clear" style="height:5px;">
                                    </div>
                                    <div class="AdminLeft" style="width: 25%">
                                        &nbsp;</div>
                                    <div class="AdminMiddle">
                                        <div class="More" style="float: left; height: 15px;">
                                            <asp:LinkButton ID="uiLinkButtonAddCo" runat="server" OnClick="uiLinkButtonAddCo_Click">Add new Co-Pilot</asp:LinkButton></div>
                                    </div>
                                    <div class="AdminRight">
                                    </div>
                                    <div class="clear10">
                                    </div>
                                    </div>
                                    <div class="AdminMiddle" style="text-align: center; width: 100%;">
                                        <asp:GridView ID="uiGridViewPiolts" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center"
                                            OnRowCommand="uiGridViewPiolts_RowCommand" OnRowDataBound="uiGridViewPiolts_RowDataBound"
                                            Width="80%">
                                            <Columns>
                                                <asp:TemplateField HeaderText="Staff No.">
                                                    <ItemTemplate>
                                                        <asp:Label ID="uiLabelStaffNo" runat="server"></asp:Label></ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="uiLabelName" runat="server"></asp:Label></ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Position">
                                                    <ItemTemplate>
                                                        <asp:Label ID="uiLabelPosition" runat="server"></asp:Label></ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Is Pilot">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="uiCheckBoxIsPilot" runat="server" Enabled="false" /></ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Actions">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="uiLinkButtonDelete" runat="server" CommandArgument='<%# Eval("ReportPilotID") %>'
                                                            CommandName="DeletePiolt"><img src="../images/delete.png" alt="Delete" title="Delete" style="border:0;float:none;" />
                                        
                                                        </asp:LinkButton></ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <EditRowStyle HorizontalAlign="Center" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <RowStyle HorizontalAlign="Center" />
                                        </asp:GridView>
                                    </div>
                                    <div class="clear10">
                                    </div>
                                    
                                    <div class="clear">
                                    </div>
                                    </div>
                                </div>
                                </div>
        </ContentTemplate>
        <Triggers>            
            <asp:PostBackTrigger ControlID="uiLinkButtonBack" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
