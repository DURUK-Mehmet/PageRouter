﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Suggest_Site.aspx.cs" Inherits="Suggest_Site" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style11"></td>
        <td class="auto-style14"></td>
    </tr>
    <tr>
        <td class="auto-style3">Site Adı</td>
        <td>
            <asp:TextBox ID="Txt_Name" runat="server" TabIndex="1" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style13">
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Site Link</td>
        <td>
            <asp:TextBox ID="Txt_URL" runat="server" TabIndex="2" TextMode="Url" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style13">
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Site Açıklaması</td>
        <td class="auto-style6">
            <asp:TextBox ID="Txt_Definition" runat="server" Height="80px" TabIndex="3" TextMode="MultiLine" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"></td>
        <td class="auto-style13">
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Site Kategori</td>
        <td>
            <asp:TextBox ID="Txt_Suggest" runat="server" TabIndex="4" Width="400px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">
            </td>
        <td class="auto-style16">
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;</td>
        <td>
            <asp:Button ID="Btn_Send" runat="server" Text="Tavsiye Gönder" Height="50px" TabIndex="5" Width="200px" OnClick="Btn_Send_Click" />
        </td>
    </tr>
</table>
</asp:Content>

