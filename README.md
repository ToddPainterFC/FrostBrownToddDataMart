# FrostBrownToddDataMart

Production Code file has script for tables and stored procedures in the DataMart database
This covers clients, matters, financials, alert center, invoice, missing time detail, and practice group leaders
The rest of the files are SSIS packages called by the stored procedures to move data between Aderant and the Data Mart
The packages live in the Integration Services Catalog of the producton SQL Server
The stored procedures are called by a SQL Server job on the production SQL Server
