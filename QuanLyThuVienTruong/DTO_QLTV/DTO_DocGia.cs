using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_DocGia
    {
        private string _MaDocGia;
        private string _TenDocGia;
        private DateTime _NgaySinh;
        private string _DiaChi;
        private string _SDT;
        private string _Email;
        private string _CMND;
        private string _MSSV;
        private string _MCB;
        private string _Loai;

        public DTO_DocGia()
        {
        }

        public DTO_DocGia(string _MaDocGia, string _TenDocGia, DateTime _NgaySinh, string _DiaChi, string _SDT,string _Email, string _CMND, string _MSSV, string _MCB, string _Loai)
        {
            this._maDG = _MaDocGia;
            this._tenDG = _TenDocGia;
            this._ngaySinh = _NgaySinh;
            this._DiaChiDG = _DiaChi;
            this._SDT_DG = _SDT;
            this._email = _Email;
            this._CMND_DG = _CMND;
            this._MSSV_DG = _MSSV;
            this._MCB_DG = _MCB;
            this._LoaiDG = _Loai;
        }

        public string _maDG { get => _MaDocGia; set => _MaDocGia = value; }
        public string _tenDG { get => _TenDocGia; set => _TenDocGia = value; }
        public DateTime _ngaySinh { get => _NgaySinh; set => _NgaySinh = value; }
        public string _DiaChiDG { get => _DiaChi; set => _DiaChi = value; }
        public string _SDT_DG { get => _SDT; set => _SDT = value; }
        public string _email { get => _Email; set => _Email = value; }
        public string _CMND_DG { get => _CMND; set => _CMND = value; }
        public string _MSSV_DG { get => _MSSV; set => _MSSV = value; }
        public string _MCB_DG { get => _MCB; set => _MCB = value; }
        public string _LoaiDG { get => _Loai; set => _Loai = value; }
    }
}
