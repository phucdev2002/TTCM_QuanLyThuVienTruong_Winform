using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_PhieuPhat
    {
        private string maPhieuPhat;
        private string maNhanVienLapPhieuPhat;
        private string maPhieuMuon;
        private int soSachQuaHan;
        private int soNgayQuaHan;
        private int soTienPhat;

        public DTO_PhieuPhat()
        {
        }

        public DTO_PhieuPhat(string ma_PhieuPhat, string maNV_LapPhieuPhat, string ma_PhieuMuon, int so_SachQuaHan, int so_NgayQuaHan, int so_TienPhat)
        {
            this.MaPhieuPhat = ma_PhieuPhat;
            this.MaNhanVienLapPhieuPhat = maNV_LapPhieuPhat;
            this.MaPhieuMuon = ma_PhieuMuon;
            this.SoSachQuaHan = so_SachQuaHan;
            this.SoNgayQuaHan = so_NgayQuaHan;
            this.SoTienPhat = so_TienPhat;
        }

        public string MaPhieuPhat { get => maPhieuPhat; set => maPhieuPhat = value; }
        public string MaNhanVienLapPhieuPhat { get => maNhanVienLapPhieuPhat; set => maNhanVienLapPhieuPhat = value; }
        public string MaPhieuMuon { get => maPhieuMuon; set => maPhieuMuon = value; }
        public int SoSachQuaHan { get => soSachQuaHan; set => soSachQuaHan = value; }
        public int SoNgayQuaHan { get => soNgayQuaHan; set => soNgayQuaHan = value; }
        public int SoTienPhat { get => soTienPhat; set => soTienPhat = value; }
    }
}
