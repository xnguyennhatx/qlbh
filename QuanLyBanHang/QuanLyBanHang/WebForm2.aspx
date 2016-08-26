<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="QuanLyBanHang.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 209px;
        }
        .auto-style4 {
            width: 522px;
        }
        .auto-style5 {
            color: #FF0000;
        }
        .auto-style6 {
            height: 25px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
            height: 73px;
        }
        .auto-style8 {
            text-align: center;
            height: 54px;
        }
        .auto-style9 {
            color: #CC0000;
        }
        .auto-style10 {
            width: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table border="1" class="auto-style1" style="background-color: #99CCFF">
            <tr>
                <td class="auto-style7" colspan="3">
                    <h2 class="auto-style9"><em>SẢN PHẨM</em></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Mã Sản Phẩm</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtMaSP" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Thêm" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Tên Sản Phẩm</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtTenSP" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sữa" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Đơn Vị Tính</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDVT" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Xóa" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Đơn Giá</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDG" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Mới" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Ghi Chú</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtGC" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:Label ID="lblthongbao2" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
                    <asp:Button ID="cCo" runat="server" OnClick="mCo_Click" Text="Có" Width="100px" />
                    <asp:Button ID="cKhong" runat="server" OnClick="cKhong_Click" Text="Không" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3" style="background-color: #FFFFFF">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3">
                    <h3 class="auto-style9"><em>THÔNG TIN SẢN PHẨM</em></h3>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" />
                            <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" />
                            <asp:BoundField DataField="DonViTinh" HeaderText="Đơn Vị Tính" />
                            <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" />
                            <asp:BoundField DataField="GhiChu" HeaderText="Ghi Chú" />
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #FFFFFF">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3"><a href="WebForm1.aspx">Trang Chủ</a></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
