-- khach hang thanh toan nhieu tien nhat
SELECT
KH.MaKH, KH.TenKH, KH.Email, KH.SDT,
COUNT(HD.MaHD) AS TongSoDonHang,
SUM(HD.TongTien) AS TongChiTieu
from HoaDon AS HD
JOIN KhachHang AS KH ON HD.MaKH = KH.MaKH
GROUP BY KH.MaKH, KH.TenKH, KH.Email, KH.SDT
ORDER BY TongChiTieu DESC