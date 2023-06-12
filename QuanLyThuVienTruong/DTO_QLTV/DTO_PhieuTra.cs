using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_PhieuTra
    {
        private string maPhieuTra;
        private string maNhanVienLapPhieuTra;

        public DTO_PhieuTra()
        {
        }

        public DTO_PhieuTra(string ma_PhieuTra, string maNV_LapPhieuTra)
        {
            this.MaPhieuTra = ma_PhieuTra;
            this.MaNhanVienLapPhieuTra = maNV_LapPhieuTra;
        }

        public string MaPhieuTra { get => maPhieuTra; set => maPhieuTra = value; }
        public string MaNhanVienLapPhieuTra { get => maNhanVienLapPhieuTra; set => maNhanVienLapPhieuTra = value; }
    }
}
