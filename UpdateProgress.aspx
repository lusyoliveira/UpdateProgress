<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateProgress.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      .div_progress {
	    padding: 0px;
            POSITION: absolute; WIDTH: 32px; HEIGHT: 32px; MARGIN-LEFT: 5px; TOP: 173px; 
LEFT: 97px
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <div id="div_progress" class="div_progress">
      <div style="DISPLAY: none" id="Progress">
      </div>
    
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
            AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                <asp:ImageButton ID="ImageButton1" runat="server" 
    Width="28px" ImageUrl="~/ajax-loader.gif" />
            </ProgressTemplate>
        </asp:UpdateProgress>
        </div>
      <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Calendar ID="Calendar1" runat="server" 
    BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" 
    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
    ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" 
                    onselectionchanged="Calendar1_SelectionChanged" SelectedDate="2010-04-23" 
                    >
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" 
        Height="1px" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" 
        Font-Size="9pt" ForeColor="#FFFFCC" />
                </asp:Calendar>
                <br />
                <asp:Label ID="lblData" runat="server" BorderColor="Black" BorderWidth="1px" 
                    Text="Selecione a Data"></asp:Label>
                <br />
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
</body>
</html>
