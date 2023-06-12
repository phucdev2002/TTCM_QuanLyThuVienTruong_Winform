using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL_QLTV;
using DTO_QLTV;

namespace BUS_QLTV
{
    public class BUS_DangNhap
    {
        DAL_DangNhap dalDangNhap = new DAL_DangNhap();
        public string getNameUser_Login(string username, string password)
        {
            return dalDangNhap.getNameUser_Login(username, password);
        }
        public string getPermissionUser_Login(string username, string password)
        {
            return dalDangNhap.getPermissionUser_Login(username, password);
        }
        public string _Login(string username, string password)
        {
            return dalDangNhap._Login(username, password);
        }
    }
}
