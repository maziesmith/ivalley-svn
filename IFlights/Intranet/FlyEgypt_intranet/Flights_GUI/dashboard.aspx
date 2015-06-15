﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ExceptionLight.Master" AutoEventWireup="true" CodeBehind="DashBored.aspx.cs" Inherits="Flights_GUI.DashBored" %>
<%@ MasterType VirtualPath="~/MasterPages/ExceptionLight.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <%-- <script src="js/highcharts.js"></script>--%>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
					
					<div class="fun-staff staff-1" >
						<div class="cell-12">
							<!-- staff item start -->
                         
							<div class="cell-2 " data-animate="fadeInDown" data-animation-delay="200">
                                <div class="main-border" >
                               <div class="center" > <sub>Unread</sub> </div>
                                 <asp:HiddenField ID="FUNCirculars" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
								   <div class="fun-number" id="CirUnID"><asp:Literal ID="LitCirculars_Unreaded" runat="server"></asp:Literal></div>
								<div class="fun-text main-bg"><a href="Intranet/Circulars.aspx" style="text-decoration:none !important;color:#fff !important;">Circulars</a> <br />&nbsp;</div>
								<div class="fun-icon"><i class="fa fa-bullhorn"></i></div>
                               <div class="center" > <sub>Read</sub> </div>
                                <div class="fun-number" id="CirReID"><asp:Literal ID="LitCirculars_Readed" runat="server"></asp:Literal></div>
                                     <asp:HiddenField ID="FRECirculars" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
                                </div>

                               <%-- <div id="Chart1" style="height:200px"></div>--%>

							</div>
                                
							<!-- staff item end -->
							
							<!-- staff item start -->
							<div class="cell-2 " data-animate="fadeInDown" data-animation-delay="400">
                                <div class="main-border">
                                 <div class="center"> <sub>Unread</sub> </div>
                            <asp:HiddenField ID="FUNBull" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
								 <div class="fun-number" id="BullUnID"><asp:Literal ID="Litbull_Unreaded" runat="server"></asp:Literal></div>
								<div class="fun-text main-bg"><a href="Intranet/Bulletins.aspx" style="text-decoration:none !important;color:#fff !important;">Bulletins</a><br />&nbsp;</div>
								<div class="fun-icon"><i class="fa fa-bullhorn"></i></div>
                                  <div class="center" id="BullReID"> <sub>Read</sub> </div>
                                     <asp:HiddenField ID="FREBull" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
                                <div class="fun-number"><asp:Literal ID="Litbull_Readed" runat="server"></asp:Literal></div>
                                </div>
                                 <%--<div id="Chart2" style="height:200px" ></div>--%>
							</div>
							
							<!-- staff item end -->
							
							<!-- staff item start -->
							<div class="cell-2 " data-animate="fadeInDown" data-animation-delay="400">
                                <div class="main-border">
                                 <div class="center"> <sub>Unread</sub> </div>
                                     <asp:HiddenField ID="FUNManuals" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
								<div class="fun-number"><asp:Literal ID="LitManuals_Unreaded" runat="server"></asp:Literal></div>
								<div class="fun-text main-bg"><a href="Intranet/manuals.aspx" style="text-decoration:none !important;color:#fff !important;">Manuals</a><br />&nbsp;</div>
								<div class="fun-icon"><i class="fa fa-book"></i></div>
                                   <div class="center"> <sub>Read</sub> </div>
                                     <asp:HiddenField ID="FREManuals" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
                                <div class="fun-number"><asp:Literal ID="LitManulas_Readed" runat="server"></asp:Literal></div>
                                </div>
                                 <%--<div id="Chart3" style="height:200px"></div>--%>
							</div>
							
                            <!-- staff item end -->

                            <!-- staff item start -->
							<div class="cell-2 " data-animate="fadeInDown" data-animation-delay="600">
                                <div class="main-border"> 
                                 <div class="center"> <sub>Unread</sub> </div>
                                     <asp:HiddenField ID="FUNForms" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
								<div class="fun-number"><asp:Literal ID="LitForms_Unreaded" runat="server"></asp:Literal></div>
								<div class="fun-text main-bg"><a href="Intranet/manuals.aspx" style="text-decoration:none !important;color:#fff !important;">Forms </a><br />&nbsp;</div>
								<div class="fun-icon"><i class="fa fa-edit "></i></div>
                                 <div class="center"> <sub>Read</sub> </div>
                                     <asp:HiddenField ID="FREForms" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
                                <div class="fun-number"><asp:Literal ID="LitForms_Readed" runat="server"></asp:Literal></div>
                                    </div>
                                 <%--<div id="Chart4" style="height:200px"></div>--%>
                            </div>
							
							<!-- staff item end -->
							
							<!-- staff item start -->
							<div class="cell-2 " data-animate="fadeInDown" data-animation-delay="800">
                                 <div class="main-border"> 
                               <div class="center"> <sub>Unread</sub> </div>
                                      <asp:HiddenField ID="FunAir" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
								<div class="fun-number" id="aybta3"><asp:Literal ID="LitAir_Unreaded" runat="server"></asp:Literal></div>
								<div class="fun fun-text main-bg "> <a href="Intranet/manuals.aspx?cid=12" style="text-decoration:none !important;color:#fff !important;">Aircraft <br />Manuals</a></div>
                                 
								<div class="fun-icon"><i class="fa fa-plane "></i></div>
                                   <div class="center"> <sub>Read</sub> </div>
                                      <asp:HiddenField ID="FREAir" runat="server" Value="0" ClientIDMode="Static"></asp:HiddenField>
                                <div class="fun-number"><asp:Literal ID="LitAir_Readed" runat="server"></asp:Literal></div>
                                </div>
                                 <%--<div id="Chart5" style="height:200px"></div>--%>
							</div>
							
                            
							<!-- staff item end -->
							
						</div><!-- .container end -->

					</div>
    

    <div class="cell-12 clearfix margin-top-15">
        <div class="cell-6">
        <div class="widget r-posts-w " data-animate="fadeInRight">
			<h3 class="widget-head">Circulars</h3>
			<div class="widget-content">
                <asp:Repeater ID="uiRepeaterCirculars" runat="server">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                    <ItemTemplate>
                        <li>
						<div class="post-img">
                            <a href="Intranet/Circulars.aspx?cid=<%# Eval("AnnouncementID") %>">
							<img src='<%# (string.IsNullOrEmpty(Eval("MainPic").ToString()) ? "img/flyegypt.png" : "common/thumb.aspx?Image=" + Eval("MainPic")) %>' alt="">
                                </a>
						</div>
						<div class="widget-post-info">
							<h4>
								<a href="Intranet/Circulars.aspx?cid=<%# Eval("AnnouncementID") %>">
									<%# Eval("Title").ToString() %>
								</a>
							</h4>
							<div class="meta">
								<span><i class="fa fa-clock-o"></i><%# Convert.ToDateTime(Eval("createdDate").ToString()).ToString("MMM dd, yyyy") %></span>
							</div>
						</div>
					</li>
												
                    </ItemTemplate>
                </asp:Repeater>
									
			</div>
		</div>
            </div>

        <div class="cell-6">
        <div class="widget r-posts-w " data-animate="fadeInRight">
			<h3 class="widget-head">Bulletins</h3>
			<div class="widget-content">
                <asp:Repeater ID="uiRepeaterBulletins" runat="server">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                    <ItemTemplate>
                        <li>
						<div class="post-img">
                            <a href="Intranet/Bulletins.aspx?cid=<%# Eval("AnnouncementID") %>">
							<img src='<%# (string.IsNullOrEmpty(Eval("MainPic").ToString()) ? "img/flyegypt.png" : "common/thumb.aspx?Image=" + Eval("MainPic")) %>' alt="">
                                </a>
						</div>
						<div class="widget-post-info">
							<h4>
								<a href="Intranet/Bulletins.aspx?cid=<%# Eval("AnnouncementID") %>">
									<%# Eval("Title").ToString() %>
								</a>
							</h4>
							<div class="meta">
								<span><i class="fa fa-clock-o"></i><%# Convert.ToDateTime(Eval("createdDate").ToString()).ToString("MMM dd, yyyy") %></span>
							</div>
						</div>
					</li>
												
                    </ItemTemplate>
                </asp:Repeater>
									
			</div>
		</div>
            </div>
    </div>

    <%--<script type="text/javascript">
        $(document).ready(function () {


            var read = (eval($('#FRECirculars').val()) / (eval($('#FRECirculars').val()) + eval($('#FUNCirculars').val()))) * 100;
            var unread = (eval($('#FUNCirculars').val()) / (eval($('#FRECirculars').val()) + eval($('#FUNCirculars').val()))) * 100;
            $('#Chart1').highcharts({
                title:{text:""},
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },

                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Percent',
                    data: [
                        {name:'Read',y: unread},

                        { name: 'Unread', y: read, color: '#f28a24' },

                    ]
                }]
            });
        });
        $(document).ready(function () {

            var read2 = (eval($('#FREBull').val()) / (eval($('#FREBull').val()) + eval($('#FUNBull').val()))) * 100;
            var unread2 = (eval($('#FUNBull').val()) / (eval($('#FREBull').val()) + eval($('#FUNBull').val()))) * 100;

            $('#Chart2').highcharts({
                title: { text: "" },
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },

                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Percent',
                    data: [
                        {name :'Read', y:unread2},
                        { name: 'Unread', y: read2, color: '#f28a24' },

                    ]
                }]
            });
        });
        $(document).ready(function () {
            var read3 = (eval($('#FREManuals').val()) / (eval($('#FREManuals').val()) + eval($('#FUNManuals').val()))) * 100;
            var unread3 = (eval($('#FUNManuals').val()) / (eval($('#FREManuals').val()) + eval($('#FUNManuals').val()))) * 100;

            $('#Chart3').highcharts({
                title: { text: "" },
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },

                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Percent',
                    data: [
                        { name: 'Read', y: unread3 },
                        { name: 'Unread', y: read3, color: '#f28a24' },

                    ]
                }]
            });
        });
        $(document).ready(function () {
            var read4 = (eval($('#FREForms').val()) / (eval($('#FREForms').val()) + eval($('#FUNForms').val()))) * 100;
            var unread4 = (eval($('#FUNForms').val()) / (eval($('#FREForms').val()) + eval($('#FUNForms').val()))) * 100;

            $('#Chart4').highcharts({
                title: { text: "" },
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },

                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Percent',
                    data: [
                        {name:'Read',y:unread4},
                        { name: 'Unread', y: read4, color: '#f28a24' },

                    ]
                }]
            });
        });
        $(document).ready(function () {
            var read5 = (eval($('#FREAir').val()) / (eval($('#FREAir').val()) + eval($('#FunAir').val()))) * 100;
            var unread5 = (eval($('#FunAir').val()) / (eval($('#FREAir').val()) + eval($('#FunAir').val()))) * 100;

            $('#Chart5').highcharts({
                title: { text: "" },
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },

                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                                
                series: [{
                    type: 'pie',
                    name: 'Percent',
                    data: [
                        {name:'Read',y: unread5},
                        { name: 'Unread', y: read5, color: '#f28a24' },

                    ]
                }]
            });
        });
		</script>--%>
    </asp:Content>
