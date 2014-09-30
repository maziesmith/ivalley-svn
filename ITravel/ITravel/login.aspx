﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ITravel.login" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ITravel - Automative Reservation System</title>
    <!-- CSSs -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/960.css" />
    <link rel="stylesheet" href="css/icons.css">
    <link rel="stylesheet" href="css/tipsy.css">
    <link rel="stylesheet" href="css/formalize.css">
    <link rel="stylesheet" href="css/prettyPhoto.css">
    <link rel="stylesheet" href="css/jquery-ui-1.8.18.custom.css">
    <link rel="stylesheet" href="css/chosen.css">
    <link rel="stylesheet" href="css/ui.spinner.css">
    <link rel="stylesheet" href="css/jquery.jqplot.min.css" />
    <link rel="stylesheet" href="css/fullcalendar.css" />
    <link rel="stylesheet" href="css/jquery.miniColors.css" />
    <link rel="stylesheet" href="css/elrte.min.css" />
    <link rel="stylesheet" href="css/elfinder.css" />
    <link rel="stylesheet" href="css/main.css" />

    <!-- JAVASCRIPTs -->
        <!--[if lt IE 9]>
            <script language="javascript" type="text/javascript" src="js/jqPlot/excanvas.min.js"></script>
            <script language="javascript" type="text/javascript" src="js/html5shiv.js"></script>
        <![endif]-->
        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui-1.8.18.custom.min.js"></script>
        <script src="js/jquery.tipsy.js"></script>
        <script src="js/jquery.formalize.min.js"></script>
        <script src="js/jquery.modal.js"></script>
        <script src="js/prefixfree.min.js"></script>
        <script src="js/datables/js/jquery.dataTables.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.autogrowtextarea.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.fileinput.js"></script>
        <script src="js/chosen.jquery.min.js"></script>
        <script src="js/ui.checkBox.js"></script>
        <script src="js/ui.spinner.min.js"></script>
        <script src="js/jquery.loading.js"></script>
        <script src="js/jquery.path.js"></script>
        
        <script src="js/jquery-ui-timepicker-addon.js"></script>
        
        <script src="js/jquery.validate.min.js"></script>        
        <script src="js/main.js"></script>        
</head>
<body>
    <form id="form1" runat="server" class="jmenu" style="height:100%;" data-action="LoginHandler.ashx">
    
        <!-- show loading until the all page scripts are fully loaded and cached (use this only on login page) -->
        <div id="loading">
            <div class="inner">
                <div>
                    <div class="ajax-loader"></div>
                    <p>
                        <asp:Label ID="uiLabelLoading" runat="server" meta:resourcekey="uiLabelLoading"></asp:Label><span>...</span></p>
                </div>
            </div>
        </div>
        <!--script>document.getElementById('loading').style.display = 'block';</script-->

        <!-- wrapper -->
        <div id="wrapper">

            <section id="main">
                <div class="container_12">
                    <div id="content" class="compact-page">
                        <div class="min">
                            <div id="logo">
                                <img src="img/logo.png" alt="logo" />
                            </div>
                            <div class="main-box">
                              
                                <!-- If you want the fancy menu, the "action" must return the dashboard html (or similar page), so that we can extract menu informations. A AJAX request will be made
                                     with the form data (without the X-Request-With header), if the response is a valid successfully logged-user page, the fancy menu will appear, otherwise the form will procced normally -->
                                
                               
                                                   
                                    <header class="head">

                                        <h1>
                                            <asp:Label ID="uiLabelLoginTitle" runat="server" Text="<%$ Resources:uiLabelLoginTitle %>" ></asp:Label></h1>

                                        <div class="alignright">
                                            <div class="note small">
                                                <asp:CheckBox ID="RememberMe" runat="server" ClientIDMode="Static"/><asp:Label ID="uiLabelRemember" runat="server" Text="<%$ Resources:uiLabelRemember %>" for="RememberMe"></asp:Label>                                                
                                            </div>
                                        </div>
                                        <span class="divider"></span>
                                    </header>
                                    
                                    <div class="field fullwidth">
                                      <asp:TextBox ID="UserName" runat="server" placeholder="<%$ Resources:UserName %>" data-icon="user" ></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="<%$ Resources:UserNameRequired %>" ToolTip="<%$ Resources:UserNameRequired %>" ValidationGroup="uiLogin">*</asp:RequiredFieldValidator>                                       
                                    </div>
                                    <div class="field fullwidth">
                                         <asp:TextBox ID="Password" runat="server" TextMode="Password" placeholder="<%$ Resources:Password %>" data-icon="closed-lock" ></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="<%$ Resources:PasswordRequired %>" ToolTip="<%$ Resources:PasswordRequired %>" ValidationGroup="uiLogin">*</asp:RequiredFieldValidator>                                        
                                    </div>

                                    <span class="divider"></span>

                                    <div class="field fullwidth last">
                                        <asp:LinkButton ID="LoginButton" runat="server" CommandName="Login" ValidationGroup="uiLogin" Text="<%$ Resources:LoginButton %>" CssClass="bt blue large login"/>                                        
                                        <a class="login">mena</a>
                                    </div>
                               
                                        
                            </div>
                            <div class="extension-wrap-center">
                                <div class="extension bottom menu">
                                    <nav>
                                        <ul>
                                            <li><a href="#">sign up</a></li>
                                            <!-- The ajax class only works on theses kind of pages (login and forgot, or any other page that have the same kind of layout) -->
                                            <li><a href="#" class="ajax">forgot your password?</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- /wrapper -->
    </form>
</body>
</html>