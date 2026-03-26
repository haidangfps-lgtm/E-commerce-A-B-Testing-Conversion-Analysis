SELECT 
    bst.TenBST AS TenBoSuuTap,
    SUM(ct.SoLuong * ct.DonGia) AS TongDoanhThu
FROM  ChiTietHoaDon ct
JOIN  SanPham sp ON ct.MaSP = sp.MaSP
JOIN  BoSuuTap bst ON sp.MaBST = bst.MaBST
JOIN  HoaDon h ON ct.MaHD = h.MaHD
WHERE   h.TrangThai = 'DA_GIAO'
GROUP BY    bst.TenBST
ORDER BY TongDoanhThu DESC;