using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyBanHang
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public void laybangchogridview2()
        {
            Ketnoi kn = new Ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from San_Pham;");
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            laybangchogridview2();
            lblthongbao2.Text = "";
            cCo.Visible = false;
            cKhong.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
                Ketnoi kn = new Ketnoi();
                int kq = kn.xulydulieu("Insert into San_Pham(MaSP,TenSP,DonViTinh,DonGia,GhiChu) values ('" + txtMaSP.Text + "','" + txtTenSP.Text + "','" + txtDVT.Text + "','" + txtDG.Text + "','" + txtGC.Text + "')");
                if (kq > 0)
                {
                    lblthongbao2.Text = "Bạn thêm thành công !!";
                    laybangchogridview2();
                }
                else
                {
                    lblthongbao2.Text = "Bạn thêm không thành công !!, Hãy kiểm tra lại !";
                }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
            
                Ketnoi kn = new Ketnoi();
                int kq = kn.xulydulieu("Update San_Pham set TenSP='" + txtTenSP.Text + "', DonViTinh='" + txtDVT.Text + "', DonGia='" + txtDG.Text + "',GhiChu='" + txtGC.Text + "' where MaSP='" + txtMaSP.Text + "'");
                if (kq > 0)
                {
                    lblthongbao2.Text = "Bạn sữa thành công !!";
                    laybangchogridview2();
                }
                else
                {
                    lblthongbao2.Text = "Bạn sữa không thành công !!, Kiểm tra lại !";
                }
            
        }

        protected void mCo_Click(object sender, EventArgs e)
        {
            Ketnoi kn = new Ketnoi();
            int kq = kn.xulydulieu("Delete San_Pham where MaSP='" + txtMaSP.Text + "'");
            if (kq > 0)
            {
                lblthongbao2.Text = "Bạn xóa thành công !";

                laybangchogridview2();
                cCo.Visible = false;
                cKhong.Visible = false;

                txtMaSP.Text = "";
                txtTenSP.Text = "";
                txtDVT.Text = "";
                txtDG.Text = "";
                txtGC.Text = "";
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int dong = GridView2.SelectedIndex;

            Ketnoi kn = new Ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("select * from San_Pham");
            txtMaSP.Text = dt.Rows[dong][0].ToString();
            txtTenSP.Text = dt.Rows[dong][1].ToString();
            txtDVT.Text = dt.Rows[dong][2].ToString();
            txtDG.Text = dt.Rows[dong][3].ToString();
            txtGC.Text = dt.Rows[dong][4].ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            lblthongbao2.Text = "Bạn có muốn xóa không !!";
            cCo.Visible = true;
            cKhong.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            txtMaSP.Text = "";
            txtTenSP.Text = "";
            txtDVT.Text = "";
            txtDG.Text = "";
            txtGC.Text = "";
        }

        protected void cKhong_Click(object sender, EventArgs e)
        {
            cCo.Visible = false;
            cKhong.Visible = false;
            lblthongbao2.Text = "";
        }
    }
}