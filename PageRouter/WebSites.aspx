<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="WebSites.aspx.cs" Inherits="WebSites" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }

        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style4">
            WebSite Listesi
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <table class="auto-style3" width="100%">
                    <tr>
                        <td width="50%" class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("WebSite_name") %>'></asp:Label>
                        </td>
                        <td width="25%" class="auto-style4"><a href="SiteUpdate.aspx?WebSite_id=<%#Eval("WebSite_id") %>">Güncelle</a></td>
                        <td width="25%" class="auto-style4"><a href="WebSites.aspx?WebSite_id=<%#Eval("WebSite_id")%>&islem=sil "> Sil</a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <div class="auto-style4">
            WebSite İşlemleri
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style5" width="45%">WebSite Adı:</td>
                <td>
                    <asp:TextBox ID="Txt_Name" runat="server" Width="75%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" width="45%">WebSite Url:</td>
                <td>
                    <asp:TextBox ID="Txt_Url" runat="server" Width="75%" TextMode="Url"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" width="45%">WebSite Açıklama:</td>
                <td>
                    <asp:TextBox ID="Txt_Definition" runat="server"  Width="75%" Height="50px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" width="45%">WebSite Kategorisi:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2" style="text-align: center">
                    <asp:Button ID="Btn_Add" runat="server" Text="Kaydet" Width="15%" OnClick="Btn_Add_Click"/>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

