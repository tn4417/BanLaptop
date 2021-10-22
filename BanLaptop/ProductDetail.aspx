<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="BanLaptop.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 105%;
        }
        .auto-style2 {
            width: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center;color:#0024ff" > THÔNG TIN CHI TIẾT SẢN PHẨM</h2>
    <br />
    <asp:FormView ID="FormView1" runat="server" Height="180px" Width="325px" OnItemCommand="FormView1_ItemCommand" style="margin-right: 124px; margin-top: 0px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td rowspan="5">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Image/"+Eval("DuongDan") %>' Width="400px" Height="400px" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Mã SP" ForeColor="Blue" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Tên SP" ForeColor="Blue" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Mô Tả" ForeColor="Blue" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Giá" ForeColor="Blue" Font-Bold="True"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("Gia") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Go Home" Width="120px" OnClick="Button1_Click" Font-Bold="True" ForeColor="White" BackColor="#FF3300" BorderColor="#FF3300" Height="26px" style="margin-top: 0px"  />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
