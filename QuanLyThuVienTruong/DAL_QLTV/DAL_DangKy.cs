﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO_QLTV;

namespace DAL_QLTV
{
    public class DAL_DangKy : DBConnect
    {
        public bool addNhanVien(DTO_DangKy DTO_NhanVien)
        {
            string strSql = "usp_ThemNhanVien";
            DBConnect provider = new DBConnect();
            provider.Connect();
            try
            {
                SqlParameter p1 = new SqlParameter("@result", SqlDbType.Int);
                p1.Direction = ParameterDirection.Output;
                provider.ExecuteNonQuery(
                    CommandType.StoredProcedure, strSql,
                    new SqlParameter { ParameterName = "@CaTruc", Value = DTO_NhanVien.NhanVien_ca },
                    new SqlParameter { ParameterName = "@TenDangNhap", Value = DTO_NhanVien.NhanVien_user },
                    new SqlParameter { ParameterName = "@HoTen", Value = DTO_NhanVien.NhanVien_hotennv },
                    new SqlParameter { ParameterName = "@MatKhau", Value = DTO_NhanVien.NhanVien_pass },
                    new SqlParameter { ParameterName = "@MaNV", Value = DTO_NhanVien.NhanVien_manv }, p1);
                provider.Disconnect();
                if (p1.Value.ToString().Trim() == "0")
                    return false;
                return true;
            }
            catch
            {
                return true;
            }
        }

        public string TimNhanVienTiepTheo()
        {
            string strSql1 = "usp_TimMaNVTiepTheo";
            DBConnect provider1 = new DBConnect();
            provider1.Connect();

            SqlParameter p = new SqlParameter("@MaNV", SqlDbType.VarChar, 100);
            p.Direction = ParameterDirection.Output;

            provider1.ExecuteNonQuery(CommandType.StoredProcedure, strSql1, p);

            provider1.Disconnect();
            return p.Value.ToString();
        }
    }
}
