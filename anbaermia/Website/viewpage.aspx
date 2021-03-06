﻿<%@ Page Title="" Language="C#" MasterPageFile="~/newTheme.Master" AutoEventWireup="true" CodeBehind="viewpage.aspx.cs" Inherits="Website.viewpage" %>
<%@ MasterType VirtualPath="~/newTheme.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-ui-1.8.21.custom.min.js" type="text/javascript"></script>
    <link href="js/ui-lightness/jquery-ui-1.8.21.custom_Inner.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.hashchange.min.js" type="text/javascript"></script>
    <script src="js/jquery.easytabs.min.js" type="text/javascript"></script>
    <link href="css/tabs.css" rel="stylesheet" type="text/css" />
    <link href="css/scrollbar.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.tinyscrollbar.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //$('#tabs').tabs();
            try {
                $('#tabs').easytabs();
            } catch (e) {

            } 
            $("a[rel^=PageVideos]").prettyPhoto({ social_tools: false, description: false });
            $("a[rel^=PagePics]").prettyPhoto({ social_tools: false, description: false });
            
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Image ID="uiImageMain" runat="server" Visible="false"/>
    <div class="clear" style="height: 10px;">
    </div>
      

    <!-- Featured -->
    <div id="tabs"  class="tab-container">
        <ul class='etabs' >
            <li id="TabContent" runat="server" class="tab"><a href='#<%= tabs_1.ClientID %>'>
                <asp:Label ID="uiLabelTitle" runat="server" Text="Label"></asp:Label></a></li>
            <li id="TabVideos" runat="server" class="tab"><a href='#<%= tabs_2.ClientID %>'>فيديوهات </a></li>
            <li id="TabFiles" runat="server" class="tab"><a href='#<%= tabs_3.ClientID %>'>ملفات </a></li>            
            <li id="TabArticles" runat="server" class="tab"><a href='#<%= tabs_4.ClientID %>'>مقالات </a></li>
            <li id="TabPics" runat="server" class="tab"><a href='#<%= tabs_5.ClientID %>'>صور </a></li>
        </ul>
             
        
        
        <div class="panel-container">
        <div id="tabs_1" runat="server">        
            <div class="Share" style="width: 20%; float: right; background-color: #ddd; margin-top: 5px;">
                <!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style ">
                    <a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2">
                    </a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4">
                    </a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style">
                    </a>
                </div>
                <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4ff5714055358f82"></script>
                <!-- AddThis Button END -->
            </div>
            <div class="clear" ></div>
            <div id="scrollbar3"><div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div><div class="viewport"> <div class="overview">
            <asp:Literal ID="uiLiteralContent" runat="server"></asp:Literal>
           </div></div></div>

           <script type="text/javascript">
               $("#scrollbar3").tinyscrollbar();
           </script>
        </div>
        <div id="tabs_2" runat="server">
        <div class="clear" ></div>
            <div id="scrollbar4"><div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div><div class="viewport"> <div class="overview">
        <div style="direction:rtl;">
            <asp:DataList ID="uiDataListVideos" runat="server" CellPadding="5" 
                CellSpacing="5" HorizontalAlign="Center" RepeatColumns="3" 
                RepeatDirection="Horizontal" 
                onitemdatabound="uiDataListVideos_ItemDataBound">
                <ItemTemplate>
                    <a href='<%# Eval("URL") %>' rel="PageVideos" title="" style="text-decoration: none;display:block;width: 200px; margin: 10px;height:150px; padding: 0; text-align: center;border:3px solid #4A3F29;border-radius:50px;-moz-border-radius:50px;-webkit-border-radius:50px; "><asp:Image ID="uiImageThumb" runat="server" width="200" /> 
                    <div class="clear"></div> 
                    <div style="text-align:center;font-weight:bold;">
                    <%# Eval("ArTitle") %>
                    </div>
                    </a>                
                </ItemTemplate>
            </asp:DataList>
        </div>
        </div></div></div>
         
        </div>
        <div id="tabs_3" runat="server">
            <div class="clear5">
            </div>
            <asp:UpdateProgress ID="UpdateProgress2" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="uiUpdatePanelFiles">
                <ProgressTemplate>
                    <div style="background-color: transparent; z-index: 10000; text-align: center; position: absolute;
                        width: 80%; height: 40%; -ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);
                        filter: alpha(opacity=70); -moz-opacity: 0.7 -khtml-opacity: 0.7; opacity: 0.7;
                        background-color: #fff;">
                        <div style="height: 30%;">
                            &nbsp;</div>
                        <div style="-ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=100); filter: alpha(opacity=100);
                            -moz-opacity: 1; -khtml-opacity: 1; opacity: 1;">
                            <img src="../images/ajax-loader.gif" style="vertical-align: middle;" />
                        </div>
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:UpdatePanel ID="uiUpdatePanelFiles" runat="server">
            <ContentTemplate>
             
            <asp:Panel ID="uiPanelCats" runat="server" Visible="true">
                <div align="center" style="direction: rtl; clear: both;">
                    <div style="width: 90%; background-color: #DDB987; height: 20px;">
                        <div style="width: 40%; float: left;">
                            <asp:LinkButton ID="uiLinkButtonCatPrev" runat="server" OnClick="uiLinkButtonCatPrev_Click"
                                Font-Bold="True" Font-Size="Medium">السابق &gt;&gt;</asp:LinkButton>
                        </div>
                        <div style="width: 40%; float: right;">
                            <asp:LinkButton ID="uiLinkButtonCatNext" runat="server" OnClick="uiLinkButtonCatNext_Click"
                                Font-Bold="True" Font-Size="Medium"> &lt;&lt; التالى</asp:LinkButton>
                        </div>
                    </div>
                    <div style="width: 95%;margin:0 auto;padding-right:15%">
                        <asp:DataList ID="uiDataListCats" runat="server" HorizontalAlign="Center" RepeatColumns="3"
                            RepeatDirection="Horizontal" RepeatLayout="Flow" Width="100%"  
                            onitemcommand="uiDataListCats_ItemCommand">
                            <ItemTemplate>
                                <div style="margin: 3px; text-decoration: none;display:block;width: 150px; margin: 10px;height:150px; padding: 0; text-align: center;border:3px solid #4A3F29;border-radius:80px;-moz-border-radius:80px;-webkit-border-radius:80px; float: right;" class="IconHost">
                                    <asp:LinkButton runat="server" CommandArgument='<%# Eval("CategoryID") %>' title="" style="text-decoration: none;">
                                        <img src="Images.aspx?Inner=photo&Image=<%# Eval("IconPath") %>" />
                                        <br />
                                        <%# Eval("Title") %></asp:LinkButton>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <asp:Label ID="uiLabelCatEmpty" runat="server" Text="No data found." Visible="false"></asp:Label>
                </div>
            </asp:Panel>
            <div class="clear5">
            </div>
            <asp:Panel ID="uiPanelSubCats" runat="server" Visible="false">
                <div align="center" style="direction: rtl; clear: both;">
                    <div style="width: 90%; background-color: #DDB987; height: 20px;">
                        <div style="width: 40%; float: right;">
                            <asp:LinkButton ID="uiLinkButtonSubPrev" runat="server" OnClick="uiLinkButtonSubPrev_Click"
                                Font-Bold="True" Font-Size="Medium">السابق &gt;&gt;</asp:LinkButton>
                        </div>
                        <div style="width: 40%; float: right;">
                            <asp:LinkButton ID="uiLinkButtonSubNext" runat="server" OnClick="uiLinkButtonSubNext_Click"
                                Font-Bold="True" Font-Size="Medium"> &lt;&lt; التالى</asp:LinkButton>
                        </div>
                        <div style="width: 19%; float: left;">
                            <asp:LinkButton ID="uiLinkButtonBackCat" runat="server" OnClick="uiLinkButtonBackCat_Click"
                                Font-Bold="True" Font-Size="Medium"> &lt;&lt; عودة</asp:LinkButton>
                        </div>
                    </div>
                    <div style="width: 95%;padding-right:15%">
                        <asp:DataList ID="uiDataListSub" runat="server" HorizontalAlign="Center" RepeatColumns="3"
                            RepeatDirection="Horizontal" RepeatLayout="Flow" Width="100%" 
                            onitemcommand="uiDataListSub_ItemCommand">
                            <ItemTemplate>
                                <div style="margin: 3px; text-decoration: none;display:block;width: 150px; margin: 10px;height:150px; padding: 0; text-align: center;border:3px solid #4A3F29;border-radius:80px;-moz-border-radius:80px;-webkit-border-radius:80px; float: right;" class="IconHost">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("SubCategoryID") %>'
                                        title="" Style="text-decoration: none;">
                                        <img src="Images.aspx?Inner=photo&Image=<%# Eval("IconPath") %>" />
                                        <br />
                                        <%# Eval("Title") %></asp:LinkButton>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text="No data found." Visible="false"></asp:Label>
                </div>
            </asp:Panel>
            <div class="clear5">
            </div>
            <asp:Panel ID="uiPanelFiles" runat="server" Visible="false">
            
            <div style="direction: rtl;">
                <div style="width: 90%; background-color: #DDB987; height: 20px;">
                    <div style="width: 40%; float: right;">
                        <asp:LinkButton ID="uiLinkButtonPrev" runat="server" OnClick="uiLinkButtonPrev_Click"
                            Font-Bold="True" Font-Size="Medium">السابق &gt;&gt;</asp:LinkButton>
                    </div>
                    <div style="width: 40%; float: right;">
                        <asp:LinkButton ID="uiLinkButtonNext" runat="server" OnClick="uiLinkButtonNext_Click"
                            Font-Bold="True" Font-Size="Medium"> &lt;&lt; التالى</asp:LinkButton>
                    </div>
                    <div style="width: 19%; float: left;">
                        <asp:LinkButton ID="uiLinkButtonBackSub" runat="server" OnClick="uiLinkButtonBackSub_Click"
                            Font-Bold="True" Font-Size="Medium"> &lt;&lt; عودة</asp:LinkButton>
                    </div>
                </div>
            <asp:Repeater ID="uiRepeaterFiles" runat="server"> 
                       <HeaderTemplate>
                       <div id="scrollbar5"><div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div><div class="viewport"> <div class="overview">
                       </HeaderTemplate> 
            <ItemTemplate>
            
            <div style="width:40%;float:right;"><%# Eval("ArTitle") %> <br />
                <%# Eval("Description")%></div>
                <div style=" float: right;"><a href='<%# Eval("URL") %>'>
                    <img src="images/down.png" style="width:25px;" title="تحميل" alt="تحميل" /></a>
                    
                    </div>
                <div style="clear:both;height:1px;background-color: #996633"></div>         
            </ItemTemplate>
            <FooterTemplate>
            </div></div></div>
            
            </FooterTemplate>
            </asp:Repeater>
            </div>
            
            </asp:Panel>
            
            </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div id="tabs_4" runat="server">
            <div class="clear5">
            </div>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="uiUpdatePanelCMS">
                <ProgressTemplate>
                    <div style="background-color: transparent; z-index: 10000; text-align: center; position: absolute;
                        width: 80%; height: 40%; -ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=70);
                        filter: alpha(opacity=70); -moz-opacity: 0.7 -khtml-opacity: 0.7; opacity: 0.7;
                        background-color: #fff;">
                        <div style="height: 30%;">
                            &nbsp;</div>
                        <div style="-ms-filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=100); filter: alpha(opacity=100);
                            -moz-opacity: 1; -khtml-opacity: 1; opacity: 1;">
                            <img src="../images/ajax-loader.gif" style="vertical-align: middle;" />
                        </div>
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:UpdatePanel ID="uiUpdatePanelCMS" runat="server">
                <ContentTemplate>
                
                    <asp:Panel ID="uiPanelCMSCats" runat="server" Visible="true">
                        <div align="center" style="direction: rtl; clear: both;">
                            <div style="width: 90%; background-color: #DDB987; height: 20px;">
                                <div style="width: 40%; float: left;">
                                    <asp:LinkButton ID="uiLinkButtonCMSCatPrev" runat="server" OnClick="uiLinkButtonCMSCatPrev_Click"
                                        Font-Bold="True" Font-Size="Medium">السابق &gt;&gt;</asp:LinkButton>
                                </div>
                                <div style="width: 40%; float: right;">
                                    <asp:LinkButton ID="uiLinkButtonCMSCatNext" runat="server" OnClick="uiLinkButtonCMSCatNext_Click"
                                        Font-Bold="True" Font-Size="Medium"> &lt;&lt; التالى</asp:LinkButton>
                                </div>
                            </div>
                            <div style="width: 95%;padding-right:15%;">
                                <asp:DataList ID="uiDataListCMSCats" runat="server" HorizontalAlign="Center" RepeatColumns="3"
                                    RepeatDirection="Horizontal" RepeatLayout="Flow" Width="100%" OnItemCommand="uiDataListCMSCats_ItemCommand">
                                    <ItemTemplate>
                                        <div style="margin: 3px; text-decoration: none;display:block;width: 150px; margin: 10px;height:150px; padding: 0; text-align: center;border:3px solid #4A3F29;border-radius:80px;-moz-border-radius:80px;-webkit-border-radius:80px; float: right;" class="IconHost">
                                            <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("CategoryID") %>'
                                                title="" Style="text-decoration: none;">
                                        <img src="Images.aspx?Inner=photo&Image=<%# Eval("IconPath") %>" />
                                        <br />
                                        <%# Eval("Title") %></asp:LinkButton>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                            <asp:Label ID="Label2" runat="server" Text="No data found." Visible="false"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="clear5">
                    </div>
                    <asp:Panel ID="uiPanelCMSSubCats" runat="server" Visible="false" >
                        <div align="center" style="direction: rtl; clear: both;">
                            <div style="width: 90%; background-color: #DDB987; height: 20px;">
                                <div style="width: 40%; float: right;">
                                    <asp:LinkButton ID="uiLinkButtonCMSSubPrev" runat="server" OnClick="uiLinkButtonCMSSubPrev_Click"
                                        Font-Bold="True" Font-Size="Medium">السابق &gt;&gt;</asp:LinkButton>
                                </div>
                                <div style="width: 40%; float: right;">
                                    <asp:LinkButton ID="uiLinkButtonCMSSubNext" runat="server" OnClick="uiLinkButtonCMSSubNext_Click"
                                        Font-Bold="True" Font-Size="Medium"> &lt;&lt; التالى</asp:LinkButton>
                                </div>
                                <div style="width: 19%; float: left;">
                                    <asp:LinkButton ID="uiLinkButtonCMSBackCat" runat="server" OnClick="uiLinkButtonCMSBackCat_Click"
                                        Font-Bold="True" Font-Size="Medium"> &lt;&lt; عودة</asp:LinkButton>
                                </div>
                            </div>
                            <div style="width: 95%;padding-right:15%;">
                                <asp:DataList ID="uiDataListCMSSub" runat="server" HorizontalAlign="Center" RepeatColumns="3"
                                    RepeatDirection="Horizontal" RepeatLayout="Flow" Width="100%" OnItemCommand="uiDataListCMSSub_ItemCommand">
                                    <ItemTemplate>
                                        <div style="margin: 3px; text-decoration: none;display:block;width: 150px; margin: 10px;height:150px; padding: 0; text-align: center;border:3px solid #4A3F29;border-radius:80px;-moz-border-radius:80px;-webkit-border-radius:80px; float: right;" class="IconHost">
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("SubCategoryID") %>'
                                                title="" Style="text-decoration: none;">
                                        <img src="Images.aspx?Inner=photo&Image=<%# Eval("IconPath") %>" />
                                        <br />
                                        <%# Eval("Title") %></asp:LinkButton>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                            </div>
                            <asp:Label ID="Label3" runat="server" Text="No data found." Visible="false"></asp:Label>
                        </div>
                    </asp:Panel>
                    <div class="clear5">
                    </div>
                    <asp:Panel ID="uiPanelCMS" runat="server" Visible="false" >
            <div style="direction: rtl;">
            
                <div style="width: 90%; background-color: #DDB987; height: 20px;">
                    <div style="width: 40%; float: right;">
                        <asp:LinkButton ID="uiLinkButtonCMSPrev" runat="server" OnClick="uiLinkButtonCMSPrev_Click"
                            Font-Bold="True" Font-Size="Medium">السابق &gt;&gt;</asp:LinkButton>
                    </div>
                    <div style="width: 40%; float: right;">
                        <asp:LinkButton ID="uiLinkButtonCMSNext" runat="server" OnClick="uiLinkButtonCMSNext_Click"
                            Font-Bold="True" Font-Size="Medium"> &lt;&lt; التالى</asp:LinkButton>
                    </div>
                    <div style="width: 19%; float: left;">
                        <asp:LinkButton ID="uiLinkButtonCMSBackSub" runat="server" OnClick="uiLinkButtonCMSBackSub_Click"
                            Font-Bold="True" Font-Size="Medium"> &lt;&lt; عودة</asp:LinkButton>
                    </div>
                </div>
                
                <asp:Repeater ID="uiRepeaterCMS" runat="server">
                    
                    <ItemTemplate>
                       &#8226; &nbsp; &nbsp; <a href='ArticleDetails.aspx?AID=<%# Eval("CMSID") %>'>
                            <%# Eval("ArTitle") %></a>
                             <div class="clear" style="height:5px;"></div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div></div></div>
                       
                        <div class="clear" style="height:10px;"></div>
                        
                        </FooterTemplate>
                </asp:Repeater>
                
            </div>
                    </asp:Panel>
                    
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div id="tabs_5" runat="server">
            <div style="direction: rtl;">
            <div id="scrollbar7"><div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div><div class="viewport"> <div class="overview">
                <asp:DataList ID="uiDataListPics" runat="server" CellPadding="5" CellSpacing="5" HorizontalAlign="Center"
                    RepeatColumns="3" RepeatDirection="Horizontal" >
                    <ItemTemplate>
                        <a href='<%# Eval("URL") %>' rel="PagePics" title="" style="text-decoration: none;">
                            <img src='Images.aspx?Inner=photo&Image=<%# Eval("URL") %>' title="" />
                            <div class="clear">
                            </div>
                            <div style="text-align: center; font-weight: bold;">
                                <%# Eval("ArTitle") %>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:DataList>
                </div></div></div>
                 <script type="text/javascript">
                     $("#scrollbar7").tinyscrollbar();
           </script>
            </div>
        </div>
        </div>

         


        </div>

        <div class="sydna"></div>
<div class="clear" style="height:10px;"></div>
</asp:Content>
