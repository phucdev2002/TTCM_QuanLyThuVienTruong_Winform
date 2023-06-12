using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_NhanVien
    {
        private string _user;
        private string _hotennv;
        private string _pass;
        private string _loai;
        private string _ca;
        private string _manv;

        public DTO_NhanVien()
        {
        }

        public DTO_NhanVien(string user, string hoten, string pass, string loai, string ca, string manv)
        {
            this.NhanVien_user = user;
            this.NhanVien_hotennv = hoten;
            this.NhanVien_pass = pass;
            this.NhanVien_loai = loai;
            this.NhanVien_ca = ca;
            this.NhanVien_manv = manv;
        }

        public string NhanVien_user { get => _user; set => _user = value; }
        public string NhanVien_hotennv { get => _hotennv; set => _hotennv = value; }
        public string NhanVien_pass { get => _pass; set => _pass = value; }
        public string NhanVien_loai { get => _loai; set => _loai = value; }
        public string NhanVien_ca { get => _ca; set => _ca = value; }
        public string NhanVien_manv { get => _manv; set => _manv = value; }
    }
}
