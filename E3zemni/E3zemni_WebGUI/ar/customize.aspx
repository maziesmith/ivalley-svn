﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Ar.Master" AutoEventWireup="true" CodeBehind="customize.aspx.cs" Inherits="E3zemni_WebGUI.ar.customize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="../js/spectrum.js" type="text/javascript"></script>
    <link href="../js/spectrum.css" rel="stylesheet" type="text/css" />
    <script src="../js/bootstrap-slider.js" type="text/javascript"></script>
    <link href="../Styles/slider.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
         $(document).ready(function () {
             $("#custom").spectrum({
                 color: $('#<%= uiHiddenFieldColor.ClientID %>').val() != '' ? $('#<%= uiHiddenFieldColor.ClientID %>').val() : "#000",
                 change: function (color) {
                     $('#<%= uiHiddenFieldColor.ClientID %>').val(color.toHexString()); // #ff0000
                 }
             });

             $(".def-color").click(function () {
                 $('#<%= uiHiddenFieldColor.ClientID %>').val($(this).val());
             });

             $("#custom2").spectrum({
                 color: $('#<%= uiHiddenFieldColor2.ClientID %>').val() != '' ? $('#<%= uiHiddenFieldColor2.ClientID %>').val() : "#000",
                 change: function (color) {
                     $('#<%= uiHiddenFieldColor2.ClientID %>').val(color.toHexString()); // #ff0000
                 }
             });


             $(".colorpicker").spectrum({
                 change: function (color) {
                     var hidden = $(this).parent('#colorHost').find('#uiHiddenFieldMyColor');
                     $(hidden).val(color.toHexString());
                     //$('#uiHiddenFieldMyColor').val(color.toHexString()); // #ff0000
                 }
             });

             $('.contslider').slider({ min: 0, max: 3, step: 0.5, value: 1 })
              .on('slide', function (ev) {
                  var hf = $(this).closest(".sliderParent").children("input");
                  hf.val($(this).data('slider').getValue());
              });

             $('.brightslider').slider({ min: -1, max: 1, step: .5, value: 0 })
              .on('slide', function (ev) {
                  var hf = $(this).closest(".sliderParent").children("input");
                  hf.val($(this).data('slider').getValue());
              });

             $('.rotateslider').slider({ min: 0, max: 360, step: 10, value: 0 })
              .on('slide', function (ev) {
                  var hf = $(this).closest(".sliderParent").children("input");
                  hf.val($(this).data('slider').getValue());
              });
         });
</script>
<style type="text/css">
.radiow { list-style:none;}
.radiow li{ float:right;text-align:center;width:100px;padding:10px;margin:10px;border-radius:10px;-moz-border-radius:10px;-webkit-border-radius:10px;-ms-border-radius:10px;border:1px solid #ccc;}
.radiow li label {display:block;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderSlider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContent" runat="server">
<div class="row clearfix mbs">
<h3>
صمم كارتك بنفسك
</h3>
    <asp:Panel ID="uipanelError" runat="server" >
<div class="alert alert-danger">
                                <button class="close" data-dismiss="alert">
                                    ×</button>
                                <strong>خطأ!</strong> حدث خطأ . من فضلك تأكد من أحد الخطوات التالية :<br />
                                <ul>
                                    <li>إختر تصميم.</li>
                                    <li>أكتب جميع الكلمات المطلوبة.</li>
                                    <li>إختر لون الخلفية.</li>
                                </ul>

                            </div>
    </asp:Panel>
    <ul class="tabs">
		<li><a href="#t-1" class="active">الوجه</a></li>
		<li><a href="#t-2">الخلف</a></li>								
	</ul>

                            <ul class="tabs-content">
                            <li id="t-1" class="active">
                             <div style="width:100%;margin:0 auto;text-align:center;border-radius:10px;-moz-border-radius:10px;-webkit-border-radius:10px;-ms-border-radius:10px;border:1px solid #ccc;background-color:#fff;padding:20px;">
    <div class="step_title">الخطوة رقم 1</div>
       إختر التصميم : 
            <asp:RadioButtonList ID="uiRadioButtonListLayouts" runat="server" 
                CssClass="radiow" RepeatLayout="UnorderedList" AutoPostBack="True" 
                onselectedindexchanged="uiRadioButtonListLayouts_SelectedIndexChanged">                                
            </asp:RadioButtonList>
            
            <div style="clear:both;height:1px;"></div>
        </div>
        <div style="clear:both;height:10px;"></div>
        <div style="width:49%;float:right;text-align:center; margin:0 auto;border-radius:10px;-moz-border-radius:10px;-webkit-border-radius:10px;-ms-border-radius:10px;border:1px solid #ccc;background-color:#fff;padding:20px;">
            <asp:Image ID="uiImageMain" runat="server" />
            <asp:HiddenField ID="uiHiddenFieldColor" runat="server" Value="#000"/>
            <asp:HiddenField ID="uiHiddenFieldColor2" runat="server" Value="#000"/>
        <div style="clear:both;height:1px;"></div>
        </div>
        <div id="contactForm" style="width:49%;float:left;margin:0 auto;border-radius:10px;-moz-border-radius:10px;-webkit-border-radius:10px;-ms-border-radius:10px;border:1px solid #ccc;background-color:#fff;padding:20px;">
        <div class="step_title">الخطوة رقم 2</div>
            <asp:DataList ID="uiDataListCardText" runat="server" 
                onitemdatabound="uiDataListCardText_ItemDataBound">
            <ItemTemplate>
             <div class="grid_3 alpha fll">
            <%# Eval("TextLabel")%> 
            </div>
            <div class="grid_9 alpha fll">
            <asp:TextBox ID="uiTextBoxText" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>            
            <div class="grid_5 alpha fll">
                الخط
                <asp:DropDownList ID="uiDropDownListFonts" runat="server" CssClass="form-control" >
                <asp:ListItem>Comic Sans MS</asp:ListItem>
                <asp:ListItem>Times New Roman</asp:ListItem>
                <asp:ListItem>Tahoma</asp:ListItem>
                <asp:ListItem>Verdana</asp:ListItem>

            </asp:DropDownList>
            </div>
            <div class="grid_1 alpha fll"></div>
            <div class="grid_3 alpha fll">
            الحجم
            <asp:DropDownList ID="uiDropDownListFontSize" runat="server" CssClass="form-control">
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>32</asp:ListItem>
                <asp:ListItem>34</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div class="grid_1 alpha fll"></div>
            <div class="grid_2 alpha fll" >
            <div id="colorHost">
            اللون

                <input id='customColor' class="colorpicker" runat="server" value=""/>
                <asp:HiddenField ID="uiHiddenFieldMyColor" runat="server" ClientIDMode="Static" Value="#000"/>
                </div>
            </div>
                <asp:HiddenField ID="uiHiddenFieldTextID" runat="server" value='<%# Eval("CardTextID") %>'/>
            </ItemTemplate>
            </asp:DataList>
            
            <div style="clear:both;height:1px;"></div>    
            <div class="grid_3 alpha fll">
            لون الخلفية : </div>
            <div class="grid_9 omega fll pull-right">
            <div class="pull-right grid_9 shop_filter">
                <div >اختر أحد الألوان الإفتراضية:</div>
								<div class="f_content colors">
                                    <asp:Repeater ID="uiRepeaterColors" runat="server" 
                                        onitemdatabound="uiRepeaterColors_ItemDataBound">
                                    <ItemTemplate>
                                        <asp:Literal ID="uiLiteralLabel" runat="server"></asp:Literal>
                                    </ItemTemplate>
                                    </asp:Repeater>									
								</div>
            </div>
            <div class="pull-left grid_12">
            <div style="clear:both;height:1px;"></div>    
            اختر لون بنفسك
            <br />
            <input id="custom" type="color" />
            </div>
            </div>

            <div style="clear:both;height:1px;"></div>    
            <div style="display:none;">
            <div class="grid_3 alpha fll"> لون الخط  : </div>
            <div class="grid_3 alpha fll">
            <input id="custom2" type="color" />
            </div>
            <div style="clear:both;height:1px;"></div> 

            <div class="grid_3 alpha fll">
             نوع الخط : </div>
             <div class="grid_9 alpha fll">
            <asp:DropDownList ID="uiDropDownListFonts" runat="server" CssClass="form-control">
                <asp:ListItem>Comic Sans MS</asp:ListItem>
                <asp:ListItem>Times New Roman</asp:ListItem>
                <asp:ListItem>Tahoma</asp:ListItem>
                <asp:ListItem>Verdana</asp:ListItem>

            </asp:DropDownList>
            </div>
            </div>

            <div class="step_title">الخطوة رقم 3</div>

            <div class="grid_3 alpha fll">
            حجم الطباعة : </div>
            <div class="grid_9 alpha fll">
              <div class="f_content shop_filter">
				<div class="checkbox_sizes checkbox_sizes">
                    <asp:Repeater ID="uiRepeaterSizes" runat="server" 
                    onitemdatabound="uiRepeaterSizes_ItemDataBound">
                <ItemTemplate>
                    <input type='radio' name='size' value='<%# Eval("DimensionID") %>' id='size_<%# Eval("DimensionID") %>' />
                    <asp:Literal ID="uiLiteralLabel" runat="server"></asp:Literal>                                        
                </ItemTemplate>
                </asp:Repeater>										
				</div>
			</div>
                                 </div>

             <div style="clear:both;height:1px;"></div>  
             <div class="step_title">الخطوة رقم 4</div>
            <asp:DataList ID="uiDataListImages" runat="server" Width="100%">
            
            <ItemTemplate>
            <div class="grid_12" style="width:100%;border:1px solid black;border-radius:5px;-webkit-border-radius:5px;-moz-border-radius:5px;-ms-border-radius:5px;padding:10px;margin-bottom:10px;">
             <div class="grid_3 alpha fll" >
            <%# "Image " + (Container.ItemIndex + 1).ToString() %> 
            </div>
            <div class="grid_9 alpha fll">
                <asp:FileUpload ID="uiFileUploadImg" runat="server" />
                <asp:Image ID="uiImageCurrent" runat="server" width="100px" Visible="false"/>
                <asp:HiddenField ID="uiHiddenFieldPath" runat="server" value=''/>
            </div>            
            <div style="clear:both;height:1px;"></div>  
            <div class="grid_12 alpha fll" >
                <div class="grid_3">
                    التأثير   
                    <asp:DropDownList ID="uiDropDownListStyle" runat="server">
                    <asp:ListItem Value="normal=true" Selected="True">عادى</asp:ListItem>
                    <asp:ListItem Value="grayscaling=true">رمادية</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="grid_3 sliderParent">
                    الوضوح  
                    <input type="text" data-slider-orientation="horizontal" class="contslider" />
                    <asp:HiddenField ID="uiHiddenFieldContrast" runat="server" Value="1" />
                </div>
                <div class="grid_3 sliderParent">
                    الإضاءة   
                    <input type="text" data-slider-orientation="horizontal" class="brightslider" />
                    <asp:HiddenField ID="uiHiddenFieldBrightness" runat="server" Value="0"/>
                </div>
                 <div class="grid_3 sliderParent">
                    الدوران  
                    <input type="text" data-slider-orientation="horizontal" class="rotateslider" />
                     <asp:HiddenField ID="uiHiddenFieldRotate" runat="server" Value="0"/>
                </div>

            </div>
                <asp:HiddenField ID="uiHiddenFieldImgID" runat="server" value='<%# Eval("CardImageID") %>'/>
                </div>
            </ItemTemplate>
            </asp:DataList>


            <div style="clear:both;height:1px;"></div>  
            <div class="step_title">الخطوة رقم 5</div>
            <div class="pull-right grid_12" >
                 
               <div class="grid_4 alpha fll pull-left">
                    <a href="" class="btn btn-success pull-right" data-toggle="modal" data-target="#ViewModal">تعرف على مقاسات الكروت ؟</a>
                </div>
               
                <div class="grid_3 alpha fll pull-right">
                    <a href="viewenvelops.aspx" class="btn btn-success pull-right">أطلب</a>
                </div>

                <div class="grid_3 alpha fll pull-right">
            <asp:Button ID="uiButtonApply" runat="server" Text="عرض" 
                onclick="uiButtonApply_Click" CssClass="btn btn-default pull-right" />
                </div>

                </div>
        <div style="clear:both;height:1px;"></div>
        </div>
        <div style="clear:both;height:1px;"></div>
                            </li>
                            <li id="t-2" >
                            
        <div style="width:100%;text-align:center; margin:0 auto;border-radius:10px;-moz-border-radius:10px;-webkit-border-radius:10px;-ms-border-radius:10px;border:1px solid #ccc;background-color:#fff;padding:20px;">
            <asp:Image ID="ImageBack" runat="server"  Width="200px" style="margin:0 auto;border-radius:10px;-moz-border-radius:10px;-webkit-border-radius:10px;-ms-border-radius:10px;border:1px solid #ccc;"/>            
        <div style="clear:both;height:1px;"></div>
        </div>
        
        <div style="clear:both;height:1px;"></div>
                            </li>
                            </ul>

       
    
    </div>

    
    <div class="modal fade" id="ViewModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close pull-left" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">إغلاق</span></button>
        <h4 class="modal-title">مقاسات الكروت</h4>
      </div>
      <div class="modal-body">
        <p>مقاسات الكروت</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">إغلاق</button>        
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</asp:Content>