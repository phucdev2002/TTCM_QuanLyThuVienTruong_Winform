using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_ChiTietPhieuMuon
    {
        private string maChiTietPhieuMuon;
        private string maTaiLieu;
        private string maPhieuMuon;

        public DTO_ChiTietPhieuMuon()
        {
        }

        public DTO_ChiTietPhieuMuon(string ma_ChiTietPhieuMuon, string ma_TaiLieu, string ma_PhieuMuon)
        {
            this.MaChiTietPhieuMuon = ma_ChiTietPhieuMuon;
            this.MaTaiLieu = ma_TaiLieu;
            this.MaPhieuMuon = ma_PhieuMuon;
        }

        public string MaChiTietPhieuMuon { get => maChiTietPhieuMuon; set => maChiTietPhieuMuon = value; }
        public string MaTaiLieu { get => maTaiLieu; set => maTaiLieu = value; }
        public string MaPhieuMuon { get => maPhieuMuon; set => maPhieuMuon = value; }
    }
}
