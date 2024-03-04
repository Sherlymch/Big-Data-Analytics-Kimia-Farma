-- Create new table --
CREATE TABLE Kimia_farma.kf_analisa AS
SELECT 
  ft.transaction_id, 
  ft.date, 
  kc.branch_id, 
  kc.branch_name, 
  kc.kota, 
  kc.provinsi, 
  kc.rating AS rating_cabang, 
  ft.customer_name, 
  pd.product_id, 
  pd.product_name, 
  pd.price AS actual_price, 
  ft.discount_percentage,
  -- create nett_sales --
    CASE
      WHEN pd.price <= 50000 THEN 0.1
      WHEN pd.price <= 100000 THEN 0.15
      WHEN pd.price <= 300000 THEN 0.20
      WHEN pd.price <= 500000 THEN 0.25
      ELSE 0.30
    END AS presentase_gross_laba,
    (pd.price-(pd.price * ft.discount_percentage)) AS nett_sales,
  -- create nett_profit --
     nett_sales * presentase_gross_laba AS nett_profit,
  ft.rating AS rating_transaksi, 
FROM Kimia_farma.kf_final_transaction AS ft
-- joining tables --
INNER JOIN Kimia_farma.kf_kantor_cabang AS kc
  ON kc.branch_id = ft.branch_id
INNER JOIN Kimia_farma.kf_product AS pd
  ON pd.product_id = ft.product_id
INNER JOIN Kimia_farma.kf_inventory AS ivt
  ON ivt.branch_id = ft.branch_id
;
