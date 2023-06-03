using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

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

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUser.Text == "Tên người dùng")
            {
                pnl_User.Visible = true;
                txtUser.Focus();
                return;
            }
            if(txtPass.Text == "Mật khẩu")
            {
                pnl_Pass.Visible = true;
                txtPass.Focus();
                return;
            }
        }
    }
}
