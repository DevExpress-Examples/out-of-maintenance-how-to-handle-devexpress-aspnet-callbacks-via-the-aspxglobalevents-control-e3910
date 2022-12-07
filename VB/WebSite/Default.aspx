<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<style type="text/css">
		table.tblCallbackInfo td
		{
			vertical-align: top;
		}
	</style>
	<script type="text/javascript">
		var controlsInCallback = 0;

		function OnClick() {
			cp1.PerformCallback();
			cp2.PerformCallback();
			cp3.PerformCallback();
		}

		function OnBeginCallback(s, e) {
			controlsInCallback++;
			lbl.SetText(controlsInCallback);
		}
		function OnEndCallback(s, e) {
			controlsInCallback--;
			lbl.SetText(controlsInCallback);
		}
	</script>
</head>
<body>
	<form id="frmMain" runat="server">
	<table cellpadding="1" cellspacing="1" class="tblCallbackInfo">
		<tr>
			<td>
				<dx:ASPxButton ID="btnPerformCallback" runat="server" Text="Perform Callback for 3 ASPxCallbackPanels"
					AutoPostBack="False">
					<ClientSideEvents Click="OnClick" />
				</dx:ASPxButton>
				<br />
				ASPxCallbackPanel1
				<dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="200px" ClientInstanceName="cp1"
					OnCallback="ASPxCallbackPanel1_Callback" Height="150px" BackColor="Aqua">
					<PanelCollection>
						<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
							<%=DateTime.Now.ToString()%>
						</dx:PanelContent>
					</PanelCollection>
				</dx:ASPxCallbackPanel>
				<br />
				ASPxCallbackPanel2
				<dx:ASPxCallbackPanel ID="ASPxCallbackPanel2" runat="server" Width="200px" ClientInstanceName="cp2"
					OnCallback="ASPxCallbackPanel2_Callback" Height="150px" BackColor="LightGray">
					<PanelCollection>
						<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
							<%=DateTime.Now.ToString()%>
						</dx:PanelContent>
					</PanelCollection>
				</dx:ASPxCallbackPanel>
				<br />
				ASPxCallbackPanel3
				<dx:ASPxCallbackPanel ID="ASPxCallbackPanel3" runat="server" Width="200px" ClientInstanceName="cp3"
					OnCallback="ASPxCallbackPanel3_Callback" Height="150px" BackColor="Gold">
					<PanelCollection>
						<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
							<%=DateTime.Now.ToString()%>
						</dx:PanelContent>
					</PanelCollection>
				</dx:ASPxCallbackPanel>
			</td>
			<td>
				Controls In Callback Count:
				<dx:ASPxLabel ID="label" runat="server" ClientInstanceName="lbl" Text="">
				</dx:ASPxLabel>
				<dx:ASPxGlobalEvents ID="globalEvents" runat="server">
					<ClientSideEvents BeginCallback="OnBeginCallback" EndCallback="OnEndCallback" />
				</dx:ASPxGlobalEvents>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>