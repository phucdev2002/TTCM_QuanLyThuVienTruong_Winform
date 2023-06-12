using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_PhieuMuon
    {
        private string maPhieuMuon;
        private string maNhanVienLapPhieuMuon;
        private string maDocGiaMuon;
        private string ngayLapPhieuMuon;


        public DTO_PhieuMuon()
        {
        }

        public DTO_PhieuMuon(string ma_PhieuMuon, string maNV_PhieuMuon, string maDG_PhieuMuon, string ngaylap_PMuon)
        {
            this.MaPhieuMuon = ma_PhieuMuon;
            this.MaNhanVienLapPhieuMuon = maNV_PhieuMuon;
            this.MaDocGiaMuon = maDG_PhieuMuon;
            this.NgayLapPhieuMuon = ngaylap_PMuon;
            
        }

        public string MaPhieuMuon { get => maPhieuMuon; set => maPhieuMuon = value; }
        public string MaNhanVienLapPhieuMuon { get => maNhanVienLapPhieuMuon; set => maNhanVienLapPhieuMuon = value; }
        public string MaDocGiaMuon { get => maDocGiaMuon; set => maDocGiaMuon = value; }
        public string NgayLapPhieuMuon { get => ngayLapPhieuMuon; set => ngayLapPhieuMuon = value; }
    }
}
