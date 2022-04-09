<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="SiteUpdate.aspx.cs" Inherits="SiteUpdate" %>

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
            <td Width="35%" class="auto-style4"><strong>Site Adı:</strong></td>
            <td>
                <asp:TextBox ID="Txt_SiteName" runat="server" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td Width="35%" class="auto-style4"><strong>Site Url</strong></td>
            <td>
                <asp:TextBox ID="Txt_Url" runat="server" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td Width="35%" class="auto-style4"><strong>Site Açıklama:</strong></td>
            <td>
                <asp:TextBox ID="Txt_SiteDefinition" runat="server" Width="70%" Height="50px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td Width="35%" class="auto-style4"><strong>Site Categori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="Btn_Update"  Width="15%" runat="server" Text="Güncelle" OnClick="Btn_Update_Click" />
            </td>
        </tr>
    </table>
</asp:Content>


