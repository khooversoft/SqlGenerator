/**********************************************************************************
********************************   Users   ****************************************
***********************************************************************************/

CREATE USER [SG-PP-AZRE-EDMASAP-AssetAcquisition-RO] FOR EXTERNAL PROVIDER;
GO

CREATE USER [SG-PP-AZRE-EDMASAP-AssetAcquisition-PII] FOR EXTERNAL PROVIDER;
GO

CREATE USER [SG-PP-AZRE-EDMASAP-AssetAcquisition-RST] FOR EXTERNAL PROVIDER;
GO

/**********************************************************************************
********************************   Roles   ****************************************
***********************************************************************************/

CREATE ROLE [SG-PP-AZRE-EDMASAP-AssetAcquisition-RO]
GO

CREATE ROLE [SG-PP-AZRE-EDMASAP-AssetAcquisition-PII]
GO

CREATE ROLE [SG-PP-AZRE-EDMASAP-AssetAcquisition-RST]
GO

/**********************************************************************************
******************************  Schema Grant  *************************************
***********************************************************************************/

GRANT SELECT ON SCHEMA::[AssetAcq] TO [SG-PP-AZRE-EDMASAP-AssetAcquisition-RO]
GO

GRANT SELECT ON SCHEMA::[AssetAcq_pii] TO [SG-PP-AZRE-EDMASAP-AssetAcquisition-PII]
GO

GRANT SELECT ON SCHEMA::[AssetAcq_restricted] TO [SG-PP-AZRE-EDMASAP-AssetAcquisition-RST]
GO
