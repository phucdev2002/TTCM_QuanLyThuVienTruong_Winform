using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien
{
    public partial class fLogin : Form
    {
        public fLogin()
        {
            InitializeComponent();
            login_Event();
        }

        void login_Event()
        {
            btnClose.Click += BtnClose_Click;
        }
        private void BtnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void fLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Bạn muốn đóng ứng dụng?", "Thông báo", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
            {
                e.Cancel = true;
            }
        }

        private void txtUsername_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if(txtUsername.Text == "")
                {
                    txtUsername.Text = "Email";
                    return;
                }
                txtUsername.ForeColor = Color.White;
                pnl_Username.Visible = false;
            }
            catch { }
        }

        private void txtPassword_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if(txtPassword.Text == "")
                {
                    txtPassword.Text = "Password";
                    return;
                }
                txtPassword.ForeColor = Color.White;
                pnl_Password.Visible = false;
            }
            catch { }
        }

        private void txtUsername_Click(object sender, EventArgs e)
        {
            txtUsername.SelectAll();
        }

        private void txtPassword_Click(object sender, EventArgs e)
        {
            txtPassword.SelectAll();
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
            if(txtUsername.Text == "Email")
            {
                pnl_Username.Visible = true;
                txtUsername.Focus();
                return;
            }
            if (txtPassword.Text == "Password")
            {
                pnl_Password.Visible = true;
                txtPassword.Focus();
                return;
            }
        }

        
    }
}
