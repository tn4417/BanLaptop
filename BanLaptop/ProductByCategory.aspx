<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="ProductByCategory.aspx.cs" Inherits="BanLaptop.ProductByCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 44px;
        }

        .auto-style3 {
            width: 65px;
            height: 19px;
        }

        .auto-style4 {
            height: 19px;
        }

        .auto-style5 {
            width: 65px;
            height: 33px;
        }

        .auto-style6 {
            height: 33px;
        }

        .auto-style7 {
            width: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td rowspan="5">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Image/" + Eval("DuongDan") %>' Width="120px" Height="130px" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Mã SP" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("MaSP") %>' ForeColor="Red" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Tên SP" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("TenSP") %>' ForeColor="Blue" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Text="Mô Tả" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("MoTa") %>' ForeColor="Red" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Giá" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Gia") %>' ForeColor="Blue" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Detail" BackColor="Yellow" Font-Bold="True" PostBackUrl='<%# "~/ProductDetail.aspx?msp=" + Eval("MaSP") %>' Width="90px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
