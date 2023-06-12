using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_PhieuNhacNho
    {
        private string maDocGia;
        private int soLanViPham;

        public DTO_PhieuNhacNho()
        {
        }

        public DTO_PhieuNhacNho(string ma_DocGia, int so_LanViPham)
        {
            this.MaDocGia = ma_DocGia;
            this.SoLanViPham = so_LanViPham;
        }

        public string MaDocGia { get => maDocGia; set => maDocGia = value; }
        public int SoLanViPham { get => soLanViPham; set => soLanViPham = value; }
    }
}
