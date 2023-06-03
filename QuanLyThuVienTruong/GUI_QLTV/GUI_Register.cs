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
    public partial class GUI_Register : Form
    {
        public GUI_Register()
        {
            InitializeComponent();
            login_Event();
        }




        //Hiệu ứng Register
        void login_Event()
        {
            btnClose.Click += BtnClose_Click;
        }

        private void BtnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void GUI_Register_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Bạn muốn đóng ứng dụng?", "Thông báo", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
            {
                e.Cancel = true;
            }
        }

        private void btnRegister_MouseEnter(object sender, EventArgs e)
        {
            btnRegister.ForeColor = Color.Black;
        }

        private void btnRegister_MouseLeave(object sender, EventArgs e)
        {
            btnRegister.ForeColor = Color.White;
        }

        private void btnDelete_MouseEnter(object sender, EventArgs e)
        {
            btnDelete.ForeColor = Color.Black;
        }

        private void btnDelete_MouseLeave(object sender, EventArgs e)
        {
            btnDelete.ForeColor = Color.White;
        }
    }
}
