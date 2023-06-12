using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing.Printing;
using System.Windows.Forms;
using DTO_QLTV;
using BUS_QLTV;
using System.Security.Cryptography;

namespace GUI_QLTV
{
    public partial class GUI_Login : Form
    {
        public GUI_Login()
        {
            InitializeComponent();
            login_Event();
        }



        //Hiệu ứng Login
        void login_Event()
        {
            btnClose.Click += BtnClose_Click;
        }

        private void BtnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void GUI_Login_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Bạn muốn đóng ứng dụng?", "Thông báo", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
            {
                e.Cancel = true;
            }
        }

        private void txtUser_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if(txtUser.Text == "")
                {
                    txtUser.Text = "Tên người dùng";
                    return;
                }
                txtUser.ForeColor = Color.White;
                pnl_User.Visible = false;
            }
            catch { }
        }

        private void txtPass_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (txtPass.Text == "")
                {
                    txtPass.Text = "Mật khẩu";
                    return ;
                }
                txtPass.ForeColor = Color.White;
                pnl_Pass.Visible = false;
            }
            catch { }
        }

        private void txtUser_Click(object sender, EventArgs e)
        {
            txtUser.SelectAll();
        }

        private void txtPass_Click(object sender, EventArgs e)
        {
            txtPass.SelectAll();
        }

        private void btnLogin_MouseEnter(object sender, EventArgs e)
        {
            btnLogin.ForeColor = Color.Black;
        }

        private void btnLogin_MouseLeave(object sender, EventArgs e)
        {
            btnLogin.ForeColor= Color.White;
        }


        //Chức năng
        BUS_DangNhap busDangNhap = new BUS_DangNhap();
        public delegate void delPassData(string ten, string quyen);

        private string EncodeSHA1(string pass)
        {

            SHA1CryptoServiceProvider sha1 = new SHA1CryptoServiceProvider();
            byte[] bs = System.Text.Encoding.UTF8.GetBytes(pass);
            bs = sha1.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x").ToLower());
            }
            pass = s.ToString();
            return pass;
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUser.Text;
            //string salt = "nguyenphuc02";
            //string password = EncodeSHA1(txtPass.Text + salt);
            string password = txtPass.Text;
            string NameUser = busDangNhap.getNameUser_Login(username, password);
            //string Quyen = busDangNhap.getPermissionUser_Login(username, password);
            string p = busDangNhap._Login(username, password);

            if (p.ToString() == "1")
            {
                this.Hide();
                GUI_Home frHome = new GUI_Home();
                frHome.Show();

                //delPassData del = new delPassData(frHome.fundata);
                //del(NameUser, Quyen);
            }
            else MessageBox.Show("Tên đăng nhập hoặc mật khẩu không đúng!\n\tVui lòng kiểm tra lại!!!");

            /*if (txtUser.Text == "Tên người dùng")
            {
                pnl_User.Visible = true;
                txtUser.Focus();
                return;
            }
            if (txtPass.Text == "Mật khẩu")
            {
                pnl_Pass.Visible = true;
                txtPass.Focus();
                return;
            }*/

        }





    }
}
