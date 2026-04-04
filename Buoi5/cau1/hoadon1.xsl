<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    Danh Sách Hóa Đơn
                </title>
            </head>

            <body>
                <h2>
                    Danh Sách Hóa Đơn
                </h2>

                <table border="1">
                    <tr>
                        <th>Số Hóa Đơn</th>
                        <th>Ngày</th>
                        <th>Tên Khách Hàng</th>
                        <th>Điện Thoại</th>
                        <th>Sản Phẩm</th>
                    </tr>

                    <xsl:for-each select="DanhSachHoaDon/HoaDon">
                        <tr>
                            <td><xsl:value-of select="SoHoaDon"></xsl:value-of></td>
                            <td><xsl:value-of select="Ngay"></xsl:value-of></td>
                            <td><xsl:value-of select="KhachHang/TenKhachHang"></xsl:value-of></td>
                            <td><xsl:value-of select="KhachHang/SoDienThoai"></xsl:value-of></td>

                            <td>
                                <xsl:for-each select="DanhSachMatHang/MatHang">
                                    <xsl:value-of select="TenHang"></xsl:value-of> 
                                        (<xsl:value-of select="SoLuong"></xsl:value-of>)
                                    
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>