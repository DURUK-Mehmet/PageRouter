<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="MessageDetails.aspx.cs" Inherits="MessageDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 35%;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="2">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Mesaj Gönderen Adı:</td>
            <td>
                <asp:TextBox ID="Txt_Name" runat="server" Width="75%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mesaj Gönderen Mail:</td>
            <td>
                <asp:TextBox ID="Txt_Mail" runat="server" Width="75%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mesaj Konusu:</td>
            <td>
                <asp:TextBox ID="Txt_Subject" runat="server" Width="75%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Mesaj İçeriği:</td>
            <td>
                <asp:TextBox ID="Txt_Definition" runat="server" Width="75%" Height="75px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

