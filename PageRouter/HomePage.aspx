<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }

        .auto-style4 {
            height: 23px;
            background-color: #CC6699;
        }

        .auto-style5 {
            font-size: x-large;
        }

        .auto-style6 {
            height: 25px;
        }

        .auto-style7 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p class="auto-style6">
        &nbsp;<span class="auto-style5"><strong>Site Adı</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="auto-style5"><strong>&nbsp;Site Linki</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <span class="auto-style5"><strong>&nbsp;&nbsp; Site Açıklaması</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <asp:DataList ID="DataList1" runat="server" Width="100%" CssClass="auto-style7">
        <ItemTemplate>
            <table class="auto-style3" style="text-align: left">

                <tr>
                    <td class="auto-style4" style="width: 15%">
                        <asp:Label ID="Lbl_Name" runat="server" Text='<%# Eval("WebSite_name") %>'></asp:Label>
                    </td>
                    <td class="auto-style4" style="width: 35%">
                        <asp:Label ID="Lbl_Url" runat="server" Text='<%# Eval("WebSite_url") %>'></asp:Label>
                    </td>
                    <td class="auto-style4" style="width: 50%">
                        <asp:Label ID="Lbl_Definition" runat="server" Text='<%# Eval("WebSite_definition") %>'></asp:Label>
                    </td>

                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>
