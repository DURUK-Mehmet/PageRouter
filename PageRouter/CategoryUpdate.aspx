<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="CategoryUpdate.aspx.cs" Inherits="CategoryUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td Width="35%" class="auto-style4"><strong>Katregori Adı:</strong></td>
            <td>
                <asp:TextBox ID="Txt_CatName" runat="server" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td Width="35%" class="auto-style4"><strong>Kategori Açıklama:</strong></td>
            <td>
                <asp:TextBox ID="Txt_CatDefinition" runat="server" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td Width="35%" class="auto-style4"><strong>Kategori Adet:</strong></td>
            <td>
                <asp:TextBox ID="Txt_CatTotal" runat="server" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="Btn_Update"  Width="15%" runat="server" Text="Güncelle" OnClick="Btn_Update_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

