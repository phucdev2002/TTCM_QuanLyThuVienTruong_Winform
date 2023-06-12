using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_DangKy
    {
        private string _user;
        private string _hotennv;
        private string _pass;
        private string _manv;
        private string _ca;

        public DTO_DangKy()
        {
        }

        public DTO_DangKy(string user, string hoten, string pass, string manv, string ca)
        {
            this.NhanVien_user = user;
            this.NhanVien_hotennv = hoten;
            this.NhanVien_pass = pass;
            this.NhanVien_manv = manv;
            this.NhanVien_ca = ca;
        }

        public string NhanVien_user { get => _user; set => _user = value; }
        public string NhanVien_hotennv { get => _hotennv; set => _hotennv = value; }
        public string NhanVien_pass { get => _pass; set => _pass = value; }
        public string NhanVien_manv { get => _manv; set => _manv = value; }
        public string NhanVien_ca { get => _ca; set => _ca = value; }
    }
}
