<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="OrderReport.OrderReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles/Global.css" rel="stylesheet" />
    <title>Order Status Reort</title>
    <meta http-equiv="Refresh" content="60;url" />
</head>


<body>
    <form id="form1" runat="server">
        <h1>Last page refresh was &nbsp<asp:Label ID="Label1" runat="server" Text="Label" OnLoad="Page_Load"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </h1>

        <div id="stats">
            <asp:Label ID="FirstDayCounts" runat="server" Text="Label1" BackColor="White" ForeColor="Black" Width="3.5in" Height="0.35in" OnDataBinding="Page_Load"></asp:Label>
            <asp:Label ID="Counts" runat="server" Text="Label2" BackColor="White" ForeColor="Black" Width="3.5in" Height=".35in"></asp:Label>
            <asp:Label ID="Percent" runat="server" Text="Label3" BackColor="White" ForeColor="Black" Width="3.5in" Height=".35in"></asp:Label>
        </div>

        <div id="OnHold">
            <asp:Label ID="OnHoldLabel" runat="server" Text="On Hold"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" OnDataBinding="Page_Load" runat="server" ConnectionString="<%$ ConnectionStrings:ORCS %>" SelectCommand="sp_kpb_Order_Status_Grid1_OnHold" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:GridView
                ID="GridView1"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource1"
                GridLines="None"
                CssClass="gridview"
                OnRowDataBound="GridView1_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="No_" HeaderText="Order No." ItemStyle-Width="1.10223in">
                        <ItemStyle Width="1in"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("CheckMark") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Sell-to Customer No_" HeaderText="Cust ID" ItemStyle-Width="1.04813in">
                        <ItemStyle Width="1.04813in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Shipping Method" HeaderText="Shipping Agent" ReadOnly="True" ItemStyle-Width="1.71131in">

                        <ItemStyle Width="1.71131in"></ItemStyle>
                    </asp:BoundField>

                    <asp:BoundField DataField="Order Date Time" HeaderText="Order Date" DataFormatString="{0:MM/dd}" ReadOnly="True" ItemStyle-Width="0.92708in">
                        <ItemStyle Width="0.92708in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Time" HeaderText="Order Time" ReadOnly="True" SortExpression="Order Time" ItemStyle-Width="1.05208in">

                        <ItemStyle Width="1.05208in"></ItemStyle>
                    </asp:BoundField>

                    <asp:BoundField DataField="Target Ship Date" HeaderText="Target Date" DataFormatString="{0:MM/dd}" ReadOnly="True" ItemStyle-Width="0.95597in">
                        <ItemStyle Width="0.95597in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Time" HeaderText="Time Elapsed" ReadOnly="True" SortExpression="Time" ItemStyle-Width="1.25in">
                        <ItemStyle Width="1.25in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LateWF" HeaderText="" ReadOnly="True" ItemStyle-Width="0.20164in">
                        <ItemStyle Width="0.20164in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Status Note" HeaderText="Order Status Note" ItemStyle-Width="2.4985in">
                        <ItemStyle Width="2.4985in"></ItemStyle>
                    </asp:BoundField>

                </Columns>
            </asp:GridView>
        </div>


        <div id="Requests">
            <asp:Label ID="RequestsLabel" runat="server" Text="Requests"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" OnDataBinding="Page_Load" runat="server" ConnectionString="<%$ ConnectionStrings:ORCS %>" SelectCommand="sp_kpb_Order_Status_Grid2_Requests" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:GridView
                ID="GridView2"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource2"
                GridLines="None"
                CssClass="gridview"
                OnRowDataBound="GridView2_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="No_" HeaderText="Order No." ItemStyle-Width="1.10223in">
                        <ItemStyle Width="1in"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("CheckMark") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Sell-to Customer No_" HeaderText="Cust ID" ItemStyle-Width="1.04813in">
                        <ItemStyle Width="1.04813in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Shipping Method" HeaderText="Shipping Agent" ReadOnly="True" ItemStyle-Width="1.71131in">

                        <ItemStyle Width="1.71131in"></ItemStyle>
                    </asp:BoundField>

                    <asp:BoundField DataField="Order Date Time" HeaderText="Order Date" DataFormatString="{0:MM/dd}" ReadOnly="True" ItemStyle-Width="0.92708in">
                        <ItemStyle Width="0.92708in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Time" HeaderText="Order Time" ReadOnly="True" SortExpression="Order Time" ItemStyle-Width="1.05208in">

                        <ItemStyle Width="1.05208in"></ItemStyle>
                    </asp:BoundField>

                    <asp:BoundField DataField="Target Ship Date" HeaderText="Target Date" DataFormatString="{0:MM/dd}" ReadOnly="True" ItemStyle-Width="0.95597in">
                        <ItemStyle Width="0.95597in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Time" HeaderText="Time Elapsed" ReadOnly="True" SortExpression="Time" ItemStyle-Width="1.25in">
                        <ItemStyle Width="1.25in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LateWF" HeaderText="" ReadOnly="True" ItemStyle-Width="0.20164in">
                        <ItemStyle Width="0.20164in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Status Note" HeaderText="Order Status Note" ItemStyle-Width="2.4985in">
                        <ItemStyle Width="2.4985in"></ItemStyle>
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>

        <div id="Ready">
            <asp:Label ID="ReadyLabel" runat="server" Text="Ready"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ORCS %>" SelectCommand="sp_kpb_Order_Status_Grid3_Ready" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:GridView
                ID="GridView3"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource3"
                GridLines="None"
                CssClass="gridview"
                OnRowDataBound="GridView3_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="No_" HeaderText="Order No." SortExpression="No_" ItemStyle-Width="1.10223in">
                        <ItemStyle Width="1.10223in"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("CheckMark") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Sell-to Customer No_" HeaderText="Cust ID" SortExpression="Sell-to Customer No_" ItemStyle-Width="1.04813in">
                        <ItemStyle Width="1.04813in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Shipping Method" HeaderText="Shipping Agent" ReadOnly="True" SortExpression="Shipping Method" ItemStyle-Width="1.71131in">
                        <ItemStyle Width="1.71131in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Date Time" HeaderText="Order Date" DataFormatString="{0:MM/dd}" ReadOnly="True" SortExpression="Order Date Time" ItemStyle-Width="0.92708in">
                        <ItemStyle Width="0.92708in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Time" HeaderText="Order Time" ReadOnly="True" SortExpression="Order Time" ItemStyle-Width="1.05208in">
                        <ItemStyle Width="1.05208in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Target Ship Date" HeaderText="Target Date" DataFormatString="{0:MM/dd}" ReadOnly="True" SortExpression="Target Ship Date" ItemStyle-Width="0.95597in">
                        <ItemStyle Width="0.95597in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Time" HeaderText="Time Elapsed" ReadOnly="True" SortExpression="Time" ItemStyle-Width="1.10in">
                        <ItemStyle Width="1.1in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LateWF" HeaderText="" ReadOnly="True" SortExpression="Late WF" ItemStyle-Width="0.20164in">
                        <ItemStyle Width="0.20164in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Status Note" HeaderText="Order Status Note" SortExpression="Order Status Note" ItemStyle-Width="2.4985in">
                        <ItemStyle Width="2.4985in"></ItemStyle>
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>

        <div id="Shipped">
            <asp:Label ID="ShippedLabel" runat="server" Text="Shipped"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ORCS %>" SelectCommand="sp_kpb_Order_Status_Grid4_Shipped" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:GridView
                ID="GridView4"
                runat="server"
                AutoGenerateColumns="False"
                DataSourceID="SqlDataSource4"
                GridLines="None"
                CssClass="gridview" OnRowDataBound="GridView4_RowDataBound" ShowFooter="True">
                
                <Columns>
                    <asp:BoundField DataField="No_" HeaderText="Order No." SortExpression="No_" ItemStyle-Width="1.10223in">
                        <ItemStyle Width="1.10223in"></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("CheckMark") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Sell-to Customer No_" HeaderText="Cust ID" SortExpression="Sell-to Customer No_" ItemStyle-Width="1.04813in">
                        <ItemStyle Width="1.04813in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Shipping Method" HeaderText="Shipping Agent" ReadOnly="True" SortExpression="Shipping Method" ItemStyle-Width="1.71131in">
                        <ItemStyle Width="1.71131in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Date Time" HeaderText="Order Date" DataFormatString="{0:MM/dd}" ReadOnly="True" SortExpression="Order Date Time" ItemStyle-Width="0.92708in">
                        <ItemStyle Width="0.92708in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Time" HeaderText="Order Time" ReadOnly="True" SortExpression="Order Time" ItemStyle-Width="1.05208in">
                        <ItemStyle Width="1.05208in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Target Ship Date" HeaderText="Target Date" DataFormatString="{0:MM/dd}" ReadOnly="True" SortExpression="Target Ship Date" ItemStyle-Width="0.95597in">
                        <ItemStyle Width="0.95597in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Time" HeaderText="Time Elapsed" ReadOnly="True" SortExpression="Time" ItemStyle-Width="1.10in">
                        <ItemStyle Width="1.1in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Can Ship" SortExpression="Can Ship" ItemStyle-Width="0.20164in">
                        <ItemStyle Width="0.20164in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Order Status Note" HeaderText="Order Status Note" SortExpression="Order Status Note" ItemStyle-Width="2.4985in">
                        <ItemStyle Width="2.4985in"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Late" HeaderText="Late" SortExpression="Late" 
                        ItemStyle-CssClass="DisplayNone" HeaderStyle-CssClass="DisplayNone">
<HeaderStyle CssClass="DisplayNone"></HeaderStyle>

<ItemStyle CssClass="DisplayNone"></ItemStyle>
                   </asp:BoundField>
                    
                    <asp:BoundField DataField="First Days" HeaderText="First Days" SortExpression="First Days" 
                        ItemStyle-CssClass="DisplayNone" HeaderStyle-CssClass="DisplayNone">
<HeaderStyle CssClass="DisplayNone"></HeaderStyle>

<ItemStyle CssClass="DisplayNone"></ItemStyle>
                    </asp:BoundField>
                    
                </Columns>
            </asp:GridView>

        </div>
<div id="leg">
    <img src="images/legend.png" />

</div>



    </form>


</body>
</html>
