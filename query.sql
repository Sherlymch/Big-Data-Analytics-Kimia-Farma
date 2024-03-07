create table Kimia_farma.kf_analytics as
SELECT a.transaction_id, a.date, a.branch_id, a.branch_name, a.kota, a.provinsi, a.rating_cabang, a.customer_name, a.product_id, a.product_name, a.actual_price, a.discount_percentage, a.presentase_gross_laba, a.nett_sales, (a.actual_price * a.presentase_gross_laba) - (a.actual_price-a.nett_sales) nett_profit, a.rating_transaksi
FROM (
  SELECT ft.transaction_id, ft.date, kc.branch_id, kc.branch_name, kc.kota, kc.provinsi, kc.rating rating_cabang, ft.customer_name, p.product_id, p.product_name, p.price actual_price, ft.discount_percentage,
  case when p.price <= 50000 then 0.1
  when p.price > 50000 and p.price <= 100000 then 0.15
  when p.price > 100000 and p.price <= 300000 then 0.20
  when p.price > 300000 and p.price <= 500000 then 0.25
  when p.price > 500000 then 0.30
  end presentase_gross_laba,
  (p.price - (p.price * ft.discount_percentage)) nett_sales,
  ft.rating rating_transaksi 
  FROM `Kimia_farma.kf_final_transaction` ft
  LEFT JOIN `Kimia_farma.kf_kantor_cabang` kc
    ON ft.branch_id = kc.branch_id
  LEFT JOIN `Kimia_farma.kf_product` p
    ON ft.product_id = p.product_id
) a
