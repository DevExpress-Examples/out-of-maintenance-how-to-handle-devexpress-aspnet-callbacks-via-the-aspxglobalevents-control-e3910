using System;
using System.Threading;

public partial class _Default : System.Web.UI.Page {
    protected void ASPxCallbackPanel1_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e) {
        Thread.Sleep(1000);
    }
    protected void ASPxCallbackPanel2_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e) {
        Thread.Sleep(2000);
    }
    protected void ASPxCallbackPanel3_Callback(object sender, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e) {
        Thread.Sleep(3000);
    }
}