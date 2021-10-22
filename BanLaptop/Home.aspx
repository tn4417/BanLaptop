<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BanLaptop.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 315px;
        }
        .auto-style4 {
            width: 82px;
            height: 38px;
        }
        .auto-style7 {
            width: 82px;
        }
        .auto-style8 {
            width: 100px;
        }
        .auto-style9 {
            width: 100px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DL_SP" runat="server" RepeatColumns="2" Width="659px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td rowspan="5">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Image/"+Eval("DuongDan") %>' Width="110px" Height="120px" />
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" Text="Mã SP:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("MaSP") %>' ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Tên SP:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="Mô Tả:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text="Giá:" ForeColor="Red"></asp:Label>
                    </td>
                    <td style="margin-left: 80px" class="auto-style8">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Gia") %>' ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" BackColor="Yellow" Font-Bold="True" PostBackUrl='<%# "~/ProductDetail.aspx?msp=" + Eval("MaSP") %>' Text="Detail" Width="90px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>
