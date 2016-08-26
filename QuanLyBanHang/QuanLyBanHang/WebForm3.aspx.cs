using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyBanHang
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        
        

        public void laybangchogridview()
        {
            Ketnoi kn = new Ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from Khach_Hang;");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            laybangchogridview();
            lblthongbao.Text = "";
            cmdCo.Visible = false;
            cmdKhong.Visible = false;


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           
                Ketnoi kn = new Ketnoi();
                int kq = kn.xulydulieu("Insert into Khach_Hang(MaKH,TenKH,DiaChi,Email,SDT) values ('" + txtMaKH.Text + "','" + txtTenKH.Text + "','" + txtDiaChi.Text + "','" + txtEmail.Text + "','" + txtSdt.Text + "')");
                if (kq > 0)
                {
                    lblthongbao.Text = "Bạn thêm thành công !!";
                    laybangchogridview();
                }
                else
                {
                    lblthongbao.Text = "Bạn thêm không thành công !!, Hãy kiểm tra lại !";
                }
            
        }

        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {
            int dong = GridView1.SelectedIndex;

            Ketnoi kn = new Ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from Khach_Hang");
            txtMaKH.Text = dt.Rows[dong][0].ToString();
            txtTenKH.Text = dt.Rows[dong][1].ToString();
            txtDiaChi.Text = dt.Rows[dong][2].ToString();
            txtEmail.Text = dt.Rows[dong][3].ToString();
            txtSdt.Text = dt.Rows[dong][4].ToString();
        }

        protected void cmdXoa_Click(object sender, EventArgs e)
        {
            lblthongbao.Text = "Bạn có muốn xóa không !!";
            cmdCo.Visible = true;
            cmdKhong.Visible = true;
        }

        protected void cmdCo_Click(object sender, EventArgs e)
        {
            Ketnoi kn = new Ketnoi();
            int kq = kn.xulydulieu("Delete Khach_Hang where MaKH='" + txtMaKH.Text + "'");
            if (kq > 0)
            {
                lblthongbao.Text = "Bạn xóa thành công !";

                laybangchogridview();
                cmdCo.Visible = false;
                cmdKhong.Visible = false;

                txtMaKH.Text = "";
                txtTenKH.Text = "";
                txtDiaChi.Text = "";
                txtEmail.Text = "";
                txtSdt.Text = "";
            }
        }

        protected void cmdKhong_Click(object sender, EventArgs e)
        {
            cmdCo.Visible = false;
            cmdKhong.Visible = false;
            lblthongbao.Text = "";
        }

        protected void cmdSua_Click(object sender, EventArgs e)
        {

          
                Ketnoi kn = new Ketnoi();
                int kq = kn.xulydulieu("Update Khach_Hang set TenKH='" + txtTenKH.Text + "', DiaChi='" + txtDiaChi.Text + "', Email='" + txtEmail.Text + "',SDT='" + txtSdt.Text + "' where MaKH='" + txtMaKH.Text + "'");
                if (kq > 0)
                {
                    lblthongbao.Text = "Bạn sữa thành công !!";
                    laybangchogridview();
                }
                else
                {
                    lblthongbao.Text = "Bạn sữa không thành công !!, Kiểm tra lại !";
                }
            
        }

        protected void cmdMoi_Click(object sender, EventArgs e)
        {
            txtMaKH.Text = "";
            txtTenKH.Text = "";
            txtDiaChi.Text = "";
            txtEmail.Text = "";
            txtSdt.Text = "";
        }

        protected void cmdThoat0_Click(object sender, EventArgs e)
        {

        }
    }
}