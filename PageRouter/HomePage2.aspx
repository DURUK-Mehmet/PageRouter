<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="HomePage2.aspx.cs" Inherits="HomePage2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style6 {
            height: 25px;
        }

        .auto-style5 {
            font-size: x-large;
            width:25%
        }

        .auto-style7 {
            margin-top: 0px;
        }
        .auto-style3 {
            width: 100%;
        }

        .auto-style4 {
            height: 23px;
            background-color: #808080;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style3" style="text-align: left">
        <tr>
            <td stye="Width:20%">
                <p>Site Adı</p>
            </td>
            <td stye="Width:20%">
                <p>Site Link</p>
            </td>
            <td stye="Width:25%">
                <p>Site Açıklama</p>
            </td>
        </tr>
    </table>
<asp:DataList ID="DataList1" runat="server" Width="100%" CssClass="auto-style7">
    <ItemTemplate>
        <table class="auto-style3" style="text-align: left">
            <tr>
                <td class="auto-style4" style="width:15%">
                    <asp:Label ID="Lbl_Name" runat="server" Text='<%# Eval("WebSite_name") %>'></asp:Label>
                </td>
                <td class="auto-style4" style="width:35%"><a href='<%# Eval("WebSite_url") %>' target="_blank">
                    <asp:Label ID="Lbl_Url" runat="server" Text='<%# Eval("WebSite_url") %>'></asp:Label>
                    </a></td>
                <td class="auto-style4" style="width:50%">
                    <asp:Label ID="Lbl_Definition" runat="server" Text='<%# Eval("WebSite_definition") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

