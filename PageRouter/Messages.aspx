<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }

        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            font-family: "Segoe UI";
            font-size: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style4">
            Mesaj Listesi
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <table class="auto-style3" width="100%">
                    <tr>
                        <td width="50%" class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Contact_name") %>'></asp:Label>
                        </td>
                        <td width="25%" class="auto-style4"><a href="MessageDetails.aspx?Contact_id=<%#Eval("Contact_id") %>">Oku</a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

