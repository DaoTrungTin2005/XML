<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    THÔNG TIN KHÁCH HÀNG TIÊM NGỪA
                </title>
            </head>
            
            <body>
                <h2>THÔNG TIN KHÁCH HÀNG TIÊM NGỪA</h2>

                <table border="1">
                    <tr>
                        <th rowspan="2">Mã KH</th>
                        <th rowspan="2">Tên KH</th>
                        <th rowspan="2">Điện Thoại</th>
                        <th colspan="3">Thông tin Vaccine Khách Hàng</th>
                        <th colspan="4">Thông tin Con Và Vaccine</th>

                    </tr>
                        <tr>
                            <th>Tên Vaccine</th>
                            <th>Ngày tiêm</th>
                            <th>Ngày tiếp theo</th>

                            <th>Họ tên con</th>
                            <th>Tên Vaccine</th>
                            <th>Ngày tiêm</th>
                            <th>Ngày tiếp theo</th>
                        </tr>
                        
                        <!-- 1. Duyệt khách -->
    <xsl:for-each select="DanhSachKhachHang/KhachHang">

        <!-- 2. Duyệt từng con -->
        <xsl:for-each select="DanhSachConCuaKhachHang/ConKhachHang">

            <!-- 3. Duyệt vaccine của con -->
            <xsl:for-each select="DanhSachVaccineCuaCon/VaccineCuaCon">

                <tr>
                    <!-- THÔNG TIN KHÁCH -->
                    <td><xsl:value-of select="../../../../@MaKhachHang"/></td>
                    <td><xsl:value-of select="../../../../TenKhachHang"/></td>
                    <td><xsl:value-of select="../../../../SoDienThoai"/></td>

                    <!-- VACCINE KH -->
                    <td>
                        <xsl:value-of select="../../../../DanhSachVaccine/Vaccine[1]/TenVaccine"/>
                    </td>
                    <td>
                        <xsl:value-of select="../../../../DanhSachVaccine/Vaccine[1]/NgayTiem"/>
                    </td>
                    <td>
                        <xsl:value-of select="../../../../DanhSachVaccine/Vaccine[1]/NgayTiemTiepTheo"/>
                    </td>

                    <!-- THÔNG TIN CON -->
                    <td><xsl:value-of select="../../TenCon"/></td>

                    <!-- VACCINE CON -->
                    <td><xsl:value-of select="TenVaccine"/></td>
                    <td><xsl:value-of select="NgayTiem"/></td>
                    <td><xsl:value-of select="NgayTiemTiepTheo"/></td>
                </tr>
            </xsl:for-each>

        </xsl:for-each>

    </xsl:for-each>





                </table>



            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>