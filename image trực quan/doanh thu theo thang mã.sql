SELECT
    DATE_FORMAT(NgayLap, '%Y-%m') AS Thang,
SUM(TongTien) AS TongDoanhThu,  COUNT(MaHD) AS SoDonHangThanhCong
FROM HoaDon
WHERE TrangThai = 'DA_GIAO'
GROUP BY Thang
ORDER BY  TongDoanhThu asc;
