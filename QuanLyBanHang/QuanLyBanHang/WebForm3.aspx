<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="QuanLyBanHang.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style20 {
            width: 80%;
        }
        .auto-style21 {            font-weight: 700;
            margin-left: 40px;
        }
        .auto-style26 {
            width: 6px;
            text-align: left;
        }
        .auto-style28 {
            width: 6px;
            text-align: left;
            height: 28px;
        }
        .auto-style31 {
            width: 6px;
            text-align: left;
            height: 32px;
        }
        .auto-style34 {
            font-weight: 700;
            color: #3366FF;
            height: 32px;
        }
        .auto-style37 {
            text-align: center;
            margin-left: 40px;
            height: 32px;
        }
        .auto-style38 {
            text-align: center;
            margin-left: 40px;
            height: 28px;
        }
        .auto-style40 {
            text-align: left;
            width: 256px;
            height: 32px;
        }
        .auto-style41 {
            text-align: left;
            width: 256px;
            height: 28px;
        }
        .auto-style43 {
            text-align: left;
            width: 256px;
        }
        .auto-style44 {
            text-align: center;
            margin-left: 40px;
        }
        .auto-style47 {
            background-color: #99CCFF;
        }
        .auto-style48 {
            color: #FF0000;
        }
        .auto-style49 {
            color: #CC0000;
        }
        .auto-style50 {
            background-color: #99CCFF;
            color: #CC0000;
        }
        .auto-style51 {
            height: 62px;
        }
        .auto-style53 {
            font-weight: 700;
            height: 34px;
            margin-left: 40px;
        }
        .auto-style54 {
            font-weight: 700;
            height: 32px;
            margin-left: 40px;
        }
        .auto-style55 {
            font-weight: 700;
            margin-left: 40px;
            color: #FFFF00;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <table border="1" class="auto-style20" style="background-color: #99CCFF">
            <tr>
                <td colspan="3" class="auto-style51">
                    <h2 style="background-color: #99CCFF"><strong class="auto-style49"><span class="auto-style47"><em>KHÁCH HÀNG</em></span></strong></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">Mã Khách Hàng</td>
                <td class="auto-style26">
                    <asp:TextBox ID="txtMaKH" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    <asp:Button ID="cmdThem" runat="server" style="text-align: center" Text="Thêm" Width="100px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style43">Tên Khách Hàng</td>
                <td class="auto-style26">
                    <asp:TextBox ID="txtTenKH" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    <asp:Button ID="cmdSua" runat="server" style="text-align: center" Text="Sữa" Width="100px" OnClick="cmdSua_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style43">Địa Chỉ</td>
                <td class="auto-style26">
                    <asp:TextBox ID="txtDiaChi" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    <asp:Button ID="cmdXoa" runat="server" style="text-align: center" Text="Xóa" Width="100px" OnClick="cmdXoa_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style40">Email</td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtEmail" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:Button ID="cmdMoi" runat="server" style="text-align: center" Text="Mới" Width="100px" OnClick="cmdMoi_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style41">Số Điện Thoại</td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtSdt" runat="server" OnTextChanged="TextBox5_TextChanged" Width="500px"></asp:TextBox>
                </td>
                <td class="auto-style38">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54" colspan="3">
                    <asp:Label ID="lblthongbao" runat="server" CssClass="auto-style48" Text="Label"></asp:Label>
                    <asp:Button ID="cmdCo" runat="server" style="text-align: center" Text="Có" Width="100px" OnClick="cmdCo_Click" />
                    <asp:Button ID="cmdKhong" runat="server" style="text-align: center" Text="Không" Width="100px" OnClick="cmdKhong_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style53" colspan="3"  style="background-color: #FFFFFF">
                    </td>
            </tr>
            <tr>
                <td class="auto-style34" colspan="3">
                    <h3 class="auto-style50"><em>THÔNG TIN KHÁCH HÀNG</em></h3>
                </td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" />
                            <asp:BoundField DataField="TenKH" HeaderText="Tên Khách Hàng" />
                            <asp:BoundField DataField="DiaChi" HeaderText="Địa Chỉ" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="SDT" HeaderText="Số Điện Thoại" />
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="3" style="background-color: #FFFFFF">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style55" colspan="3">
                    <a href="WebForm1.aspx">Trang Chủ</a></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>



