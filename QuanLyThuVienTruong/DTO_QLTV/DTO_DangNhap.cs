using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_DangNhap
    {
        private string username = "";
        private string password = "";

        public DTO_DangNhap()
        {
        }

        public DTO_DangNhap(string username, string password)
        {
            //this.username = username;
            //this.password = password;
        }

        public string User { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }
    }
}
