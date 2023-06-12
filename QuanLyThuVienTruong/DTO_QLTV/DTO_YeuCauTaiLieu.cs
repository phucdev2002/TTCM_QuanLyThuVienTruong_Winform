using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_QLTV
{
    public class DTO_YeuCauTaiLieu
    {
        private int sTT;
        private string tenTaiLieu;

        public DTO_YeuCauTaiLieu()
        {
        }

        public DTO_YeuCauTaiLieu(int sTT, string ten_TaiLieu)
        {
            this.STT = sTT;
            this.TenTaiLieu = ten_TaiLieu;
        }

        public int STT { get => sTT; set => sTT = value; }
        public string TenTaiLieu { get => tenTaiLieu; set => tenTaiLieu = value; }
    }
}
