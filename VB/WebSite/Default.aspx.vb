Imports Microsoft.VisualBasic
Imports System
Imports System.Threading

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub ASPxCallbackPanel1_Callback(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxClasses.CallbackEventArgsBase)
		Thread.Sleep(1000)
	End Sub
	Protected Sub ASPxCallbackPanel2_Callback(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxClasses.CallbackEventArgsBase)
		Thread.Sleep(2000)
	End Sub
	Protected Sub ASPxCallbackPanel3_Callback(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxClasses.CallbackEventArgsBase)
		Thread.Sleep(3000)
	End Sub
End Class