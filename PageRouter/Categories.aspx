<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style4">
            Kategori Listesi</div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <table class="auto-style3"  Width="100%">
                    <tr>
                        <td  Width="50%" class="auto-style5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Category_name") %>'></asp:Label>
                        </td>
                        <td  Width="25%" class="auto-style4">Sil </td>
                        <td  Width="25%" class="auto-style4">Güncelle</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <asp:Panel ID="Panel3" runat="server">
         <div class="auto-style4">
             Kategori İşlemleri</div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style5" Width="45%">Kategori Adı:</td>
                <td>
                    <asp:TextBox ID="Txt_Name" runat="server" Width="75%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" Width="45%">Kategori Açıklaması:</td>
                <td>
                    <asp:TextBox ID="Txt_Definition" runat="server" Width="75%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2" style="text-align:center">
                    <asp:Button ID="Btn_Add" runat="server" Text="Kaydet" Width="15%" OnClick="Btn_Add_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

