<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            height: 35px;
        }
        
        .auto-style5 {
            height: 35px;
            font-size: large;
            text-align:right;
        }
        
        .auto-style6 {
            height: 100px;
        }
        
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >
    <table style="width:100%">
        <tr>
            <td colspan="2" class="auto-style3"></td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Ad Soyad</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="Txt_name" runat="server" Height="60%" Width="85%" TabIndex="1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style5" ><strong>İletişim</strong> <strong>Mail</strong></td>
            <td  class="auto-style4">
                <asp:TextBox ID="Txt_mail" runat="server" Height="60%" Width="85%" TabIndex="2"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td  class="auto-style5"><strong>Mesaj</strong> <strong>Konu</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="Txt_subject" runat="server" Height="60%" Width="85%" TabIndex="3"></asp:TextBox>
            </td>
        </tr>
        <tr >
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td  class="auto-style5"><strong>Mesaj</strong> <strong>İçeriği</strong></td>
            <td class="auto-style6" Width="80%" >
                <asp:TextBox ID="Txt_definiton" runat="server" Height="85%" Width="85%" Font-Size="Medium" Font-Strikeout="False" TabIndex="4" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style3"></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center" class="auto-style4">
                <asp:Button ID="Btn_Send" runat="server" Text="Mesajı Gönder" Width="25%" Height="100%" OnClick="Btn_Send_Click" TabIndex="5"/>
            </td>
        </tr>
    </table>
</asp:Content>

