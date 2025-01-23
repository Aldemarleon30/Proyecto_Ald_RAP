@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Items - Root'
define root view entity ZR_SALES_PROY_1998
  as select from zsales_proy_1998 
  
    composition [0..*] of z_r_items_1998   as _Items

{
  key id_uuid as IdUuid,
  mail as Mail,
  firstname as Firstname,
  lastname as Lastname,
  country as Country,
  createon as Createon,
  deliverydate as Deliverydate,
  orderstatus as Orderstatus,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  
  _Items
  
}
