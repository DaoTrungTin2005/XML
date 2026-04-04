<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    Danh Sách Môn Học
                </title>
            </head>

            <body>
                <h2>Danh Sách Môn Học</h2>

                <table border="1">
                    <tr>
                        <th>Họ Tên</th>
                        <th>Lớp</th>
                        <th>Số Môn</th>
                    </tr>

                    <xsl:for-each select="DanhSachSinhVien/SinhVien">
                        <tr>
                            <td><xsl:value-of select="HoTen"></xsl:value-of></td>
                            <td><xsl:value-of select="Lop"></xsl:value-of></td>

                        </tr>
                    

                <table border="1">
                    <tr>
                        <th>Mã Môn</th>
                        <th>Tên Môn</th>
                        <th>TC</th>
                        <th>Điểm</th>
                    </tr>

                        <xsl:for-each select="DanhSachMonHoc/MonHoc">
                            <tr>
                                <td><xsl:value-of select="MaMon"></xsl:value-of></td>
                                <td><xsl:value-of select="TenMonHoc"/></td>
                                <td><xsl:value-of select="TinChi"/></td>
                                <td><xsl:value-of select="Diem"></xsl:value-of></td>
                            </tr>
                        </xsl:for-each>

                    
                </table>

                
                        </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>