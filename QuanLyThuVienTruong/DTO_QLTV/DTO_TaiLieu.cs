using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_TaiLieu
    {
        private string maTaiLieu;
        private string tenTaiLieu;
        private string loaiTaiLieu;
        private string soLuong;
        private string taiLieuDacBiet;

        public DTO_TaiLieu()
        {
        }

        public DTO_TaiLieu(string ma_TaiLieu, string ten_TaiLieu, string loai_TaiLieu, string soLuong, string tailieu_DacBiet)
        {
            this.MaTaiLieu = ma_TaiLieu;
            this.TenTaiLieu = ten_TaiLieu;
            this.LoaiTaiLieu = loai_TaiLieu;
            this.SoLuong = soLuong;
            this.TaiLieuDacBiet = tailieu_DacBiet;
        }

        public string MaTaiLieu { get => maTaiLieu; set => maTaiLieu = value; }
        public string TenTaiLieu { get => tenTaiLieu; set => tenTaiLieu = value; }
        public string LoaiTaiLieu { get => loaiTaiLieu; set => loaiTaiLieu = value; }
        public string SoLuong { get => soLuong; set => soLuong = value; }
        public string TaiLieuDacBiet { get => taiLieuDacBiet; set => taiLieuDacBiet = value; }
    }
}
