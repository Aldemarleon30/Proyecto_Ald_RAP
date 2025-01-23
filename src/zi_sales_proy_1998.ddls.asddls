@EndUserText.label: 'Sales - Interface'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_sales_proy_1998 
  provider contract transactional_interface
as projection on ZR_SALES_PROY_1998
{
    key  IdUuid,
  Mail,
Firstname,
 Lastname,
Country,
  Createon,
  Deliverydate,
 Orderstatus,
  @Semantics.user.createdBy: true
LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
 LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
 LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  LastChangedAt,
  
  _Items : redirected to composition child z_i_items_1998
}
