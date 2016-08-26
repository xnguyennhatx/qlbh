<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="QuanLyBanHang.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 87px;
        }
        .auto-style4 {
            font-weight: normal;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <h1 class="auto-style4"><em><strong>QUẢN LÝ BÁN HÀNG</strong></em></h1>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <h3><a href="WebForm3.aspx"><em>+ KHÁCH HÀNG</em></a></h3>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <h3><a href="WebForm2.aspx"><em>+ SẢN PHẨM</em></a></h3>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <h3><a href="WebForm4.aspx"><em>+ HÓA ĐƠN</em></a></h3>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
