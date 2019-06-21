<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))**
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to handle DevExpress ASP.NET callbacks via the ASPxGlobalEvents control
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3910/)**
<!-- run online end -->


<p>Performing multiple callbacks simultaneously (initiated by DevExpress ASP.NET controls) is not recommended. Instead of that, it is recommended to wait until the previous callback/request is completed.<br />
To determine whether or not a particular control is now in callback, it is possible to use the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxClassesScriptsASPxClientControl_InCallbacktopic"><u>ASPxClientControl.InCallback</u></a> method.</p><p>If there is no way to avoid this situation, use the following approach.</p><p>This example illustrates how to use an invisible <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxGlobalEventsASPxGlobalEventstopic"><u>ASPxGlobalEvents</u></a> control to handle callbacks initiated by DevExpress ASP.NET controls:<br />
Clicking the button initiates 3 simultaneous callbacks (of 3 separate ASPxCallbackPanel controls) sequentially:<br />
- The <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGlobalEventsScriptsASPxClientGlobalEvents_BeginCallbacktopic"><u>ASPxClientGlobalEvents.BeginCallback</u></a> event handler increments a counter of callbacks sent by our code;<br />
- The <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGlobalEventsScriptsASPxClientGlobalEvents_EndCallbacktopic"><u>ASPxClientGlobalEvents.EndCallback</u></a> event handler decrements a counter of callbacks sent by our code.</p>

<br/>


