using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_ChiTietPhieutra
    {
        private string maChiTietPhieuTra;
        private string maPhieuTra;
        private string maPhieuMuon;
        private string maTaiLieu;

        public DTO_ChiTietPhieutra()
        {
        }

        public DTO_ChiTietPhieutra(string ma_ChiTietPhieuTra, string ma_PhieuTra, string ma_PhieuMuon, string ma_TaiLieu)
        {
            this.MaChiTietPhieuTra = ma_ChiTietPhieuTra;
            this.MaPhieuTra = ma_PhieuTra;
            this.MaPhieuMuon = ma_PhieuMuon;
            this.MaTaiLieu = ma_TaiLieu;
        }

        public string MaChiTietPhieuTra { get => maChiTietPhieuTra; set => maChiTietPhieuTra = value; }
        public string MaPhieuTra { get => maPhieuTra; set => maPhieuTra = value; }
        public string MaPhieuMuon { get => maPhieuMuon; set => maPhieuMuon = value; }
        public string MaTaiLieu { get => maTaiLieu; set => maTaiLieu = value; }
    }
}
