-- san pham ban chay nhat
SELECT SP.TenSP, SUM(CT.SoLuong) AS TongSoLuongBanDuoc
FROM ChiTietHoaDon AS CT
JOIN SanPham AS SP ON CT.MaSP = SP.MaSP
GROUP BY SP.MaSP, SP.TenSP
ORDER BY TongSoLuongBanDuoc DESC
LIMIT 7; 