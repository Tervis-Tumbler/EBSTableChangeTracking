$DataSources = [PSCustomObject][Ordered]@{
    Name = "EBS Epsilon"
    PasswordStateEntryID = 525
}

$Consumers = [PSCustomObject][Ordered]@{
    Name = "Microsoft Dynamics RMS"
    DatasourceName = "EBS Epsilon"
    Tables = [PSCustomobject][Ordered]@{
        Name = "apps.MTL_SYSTEM_ITEMS_B"
        Columns = @(
@"
inventory_item_id
organization_id
primary_uom_code
primary_unit_of_measure
item_type item_type
inventory_item_status_code
inventory_item_flag item_flag
bom_item_type
taxable_flag
list_price_per_unit
market_price
expense_account
segment1
enabled_flag
start_date_active
end_date_active
creation_date
created_by
last_update_date
last_updated_by
internal_order_enabled_flag
description
mtl_transactions_enabled_flag
attribute2
attribute3
attribute4
attribute5
attribute7
attribute8
attribute9
attribute10
attribute11
attribute12
attribute13
attribute14
attribute15
attribute16
attribute17
attribute18
attribute19
attribute20
attribute22
attribute23
attribute24
attribute25
attribute26
attribute27
attribute28
attribute29
attribute30
"@ -split "`r`n"
        )
        Filters = "organization_id = 85"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_phantomitemattri_agv"
        Columns = @(
@"
finishedgooditem
"@ -split "`r`n"
        )
        Filters = "organization_id = 85"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.mtl_parameters"
        Columns = @(
@"
organization_code
"@ -split "`r`n"
        )
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.mtl_cross_references"
        Columns = @(
@"
last_update_date
cross_reference
"@ -split "`r`n"
        )
        Filters = "cross_reference_type = 'UPC'"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.mtl_item_categories_v"
        Columns = @(
@"
segment1
segment2
segment3
segment4
segment5
segment6
last_update_date
"@ -split "`r`n"
        )
        Filters = "category_set_name = 'Purchasing Category Set'"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.mtl_item_categories_v"
        Columns = @(
@"
segment1
segment2
segment3
segment4
segment5
segment6
last_update_date
"@ -split "`r`n"
        )
        Filters = "category_set_name = 'Purchasing Category Set'",
            "category_set_name = 'Inventory Category Set'",
            "category_set_name = 'Royalty Management Cat Set'"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.xxqp_terv_retail_price_v"
        Columns = @(
@"
line_last_update_date 
retail_price
"@ -split "`r`n"
        )
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.cst_item_costs"
        Columns = @(
@"
item_cost
last_update_date
"@ -split "`r`n"
        )
        Filters = "cost_type_id = 1"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_tervisitemgenera_agv"
        Columns = @(
@"
basedescription
"@ -split "`r`n"
        )
        Filters = "organization_id = 83"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_finishedgooddeco_agv"
        Columns = @(
@"
decorationtype
decorationsubcategory
"@ -split "`r`n"
        )
        Filters = "organization_id = 83"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_finishedgoodvari_agv"
        Columns = @(
@"
productsize
productsizeuom
packagetype
lidcolor
innerformcolor
"@ -split "`r`n"
        )
        Filters = "organization_id = 83"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_finishedgoodgene_agv"
        Columns = @(
@"
productsubcategory
productfamily
pricinglevel
cupcount
upc1description
upc2description
productcategory
countryoforigin
"@ -split "`r`n"
        )
        Filters = "organization_id = 83"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_finishedgooddesi_agv"
        Columns = @(
@"
designdetail
designcollection
collection
"@ -split "`r`n"
        )
        Filters = "organization_id = 83"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_buyitemattribute_agv"
        Columns = @(
@"
productcommodity
"@ -split "`r`n"
        )
        Filters = "organization_id = 83"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.mtl_item_loc_defaults"
        Columns = @(
@"
subinventory_code
"@ -split "`r`n"
        )
        Filters = "default_type = 2"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.mtl_item_locations"
        Columns = @(
@"
segment1
segment2
segment3
"@ -split "`r`n"
        )
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_buyitemattribute_agv"
        Columns = @(
@"
productcommodity
"@ -split "`r`n"
        )
        Filters = "organization_id = 83"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_buyitemmanufactu_agv"
        Columns = @(
@"
mesmetadata
printontraveler
"@ -split "`r`n"
        )
        Filters = "organization_id = 83"
    },
    [PSCustomobject][Ordered]@{
        Name = "apps.ego_webattributes_agv"
        Columns = @(
@"
b2cwebenabled
"@ -split "`r`n"
        )
        Filters = "organization_id = 83"
    }
},
[PSCustomObject][Ordered]@{
    Name = "MES"
    DatasourceName = "EBS Epsilon"
    Tables = [PSCustomobject][Ordered]@{
        Name = "apps.MTL_SYSTEM_ITEMS_B"
        Columns = @(
@"
inventory_item_id
organization_id
primary_uom_code
primary_unit_of_measure
item_type item_type
inventory_item_status_code
inventory_item_flag item_flag
bom_item_type
taxable_flag
list_price_per_unit
market_price
expense_account
unit_weight
unit_volume
segment1
enabled_flag
start_date_active
end_date_active
creation_date
created_by
last_update_date
last_updated_by
internal_order_enabled_flag
description
mtl_transactions_enabled_flag
attribute2
attribute3
attribute4
attribute5
attribute7
attribute8
attribute9
attribute10
attribute11
attribute12
attribute13
attribute14
attribute15
attribute16
attribute17
attribute18
attribute19
attribute20
attribute22
attribute23
attribute24
attribute25
attribute26
attribute27
attribute28
attribute29
attribute30
"@ -split "`r`n"
        )
        Filters = "organization_id = 85"
    }
}


function Get-TableData {
    [CmdletBinding(SupportsShouldProcess)]
    param()
    $ModulePath = (Get-Module -ListAvailable EBSTableChangeTracking).ModuleBase

    foreach ($DataSourceName in $Consumers | select -ExpandProperty DatasourceName -Unique) {
        $UniqueTableNames = $Consumers | 
        where DataSourceName -EQ $DataSourceName | 
        select -ExpandProperty tables |
        select -ExpandProperty name |
        sort -Unique

        foreach ($TableName in $UniqueTableNames) {
            $UniqueColumns = $Consumers.Tables | 
            where Name -EQ $TableName |
            select -ExpandProperty Columns |
            sort -Unique

            $UniqueFilters = $Consumers.Tables | 
            where Name -EQ $TableName |
            select -ExpandProperty Filters -ErrorAction SilentlyContinue |
            sort -Unique

            $SQLCommand = @"
select
$($UniqueColumns -join ",`r`n")
from
$TableName
$(
    if ($UniqueFilters) {
        "where"
        $($UniqueFilters -join "or `r`n")
    }
)
"@
            Write-Verbose $SQLCommand

            if ($pscmdlet.ShouldProcess($TableName, "Get results")) {
                $OracleDatabaseEntry = Get-PasswordstateOracleDatabaseEntryDetails -PasswordID 525
                if (-not (Test-Path $ModulePath\$TableName.json)) {
                    $Results = Invoke-OracleSQL -SQLCommand $SQLCommand -ConvertFromDataRow -ConnectionString $($OracleDatabaseEntry | ConvertTo-OracleConnectionString)
                    $Results | ConvertTo-Json | Out-File $ModulePath\$TableName.json
                }
            }
        }
    }
}

function Get-TableDataFromFiles {
    $Results2 = Get-Content $ModulePath\$TableName.json | ConvertFrom-Json
}

function Test-Queries {
$SQLCommand = @"
select *
from apps.ego_phantomitemattri_agv
"@
            $OracleDatabaseEntry = Get-PasswordstateOracleDatabaseEntryDetails -PasswordID 525

            $Ego = Invoke-OracleSQL -SQLCommand $SQLCommand -ConvertFromDataRow -ConnectionString $($OracleDatabaseEntry | ConvertTo-OracleConnectionString)

}