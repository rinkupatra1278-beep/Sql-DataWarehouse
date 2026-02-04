--Queries to Create tables.
  create table bronze.crm_cust_info(
cst_id int,
cst_key nvarchar(50),
cst_firstname nvarchar(50),
cst_lastname nvarchar(50),
cst_maritial_status nvarchar(50),
cst_gndr nvarchar(50),
cst_create_data date
)

CREATE TABLE bronze.crm_prd_info (
    prd_id       INT,
    prd_key      NVARCHAR(50),
    prd_nm       NVARCHAR(50),
    prd_cost     INT,
    prd_line     NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt   DATETIME
);

CREATE TABLE bronze.erp_loc_a101 (
    cid    NVARCHAR(50),
    cntry  NVARCHAR(50)
);

CREATE TABLE bronze.erp_cust_az12 (
    cid    NVARCHAR(50),
    bdate  DATE,
    gen    NVARCHAR(50)
)

CREATE TABLE bronze.erp_px_cat_g1v2 (
    id           NVARCHAR(50),
    cat          NVARCHAR(50),
    subcat       NVARCHAR(50),
    maintenance  NVARCHAR(50)
);

-- create bulk
bulk insert bronze.crm_cust_info
from 'C:\Users\Rasmi\Downloads\datasets\datasets\source_crm\cust_info.csv'
with (
firstrow = 2,
fieldterminator = ',',
tablock
)


BULK INSERT bronze.crm_prd_info
from 'C:\Users\Rasmi\Downloads\datasets\datasets\source_crm\prd_info.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)

BULK INSERT bronze.erp_loc_a101
from 'C:\Users\Rasmi\Downloads\datasets\datasets\source_erp\loc_a101.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)

BULK INSERT bronze.erp_cust_az12
from 'C:\Users\Rasmi\Downloads\datasets\datasets\source_erp\cust_az12.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)

BULK INSERT bronze.erp_px_cat_g1v2
from 'C:\Users\Rasmi\Downloads\datasets\datasets\source_erp\px_cat_g1v2.csv'
with(
firstrow = 2,
fieldterminator = ',',
tablock
)
