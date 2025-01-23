@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Items - Root'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
    }
define view entity z_r_items_1998 
as select from zitems_proy_1998

  association        to parent ZR_SALES_PROY_1998 as _Sales on $projection.Id = _Sales.IdUuid
{

  key id_uuid       as Id,
  name              as Name,
  description       as Description,
  release_date      as Release_Date,
  discontinued_date as Discontinued_Date, 
  price             as Price,
  @Semantics.quantity.unitOfMeasure : 'Unit'
  height            as Height,
  @Semantics.quantity.unitOfMeasure : 'Unit'
  width             as Width,
  depth             as Depth,
  quantity          as Quantity,
  unit_of_measure   as Unit,
  
        //loca Etag - OData
@Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      
      _Sales
}
