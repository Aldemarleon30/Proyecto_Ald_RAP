@EndUserText.label: 'Items - Interface'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity z_i_items_1998 as projection on z_r_items_1998
{
     key Id,
  Name,
  Description,
  Release_Date,         
  Discontinued_Date,  
  Price,  
  @Semantics.quantity.unitOfMeasure : 'Unit'
  Height,     
  @Semantics.quantity.unitOfMeasure : 'Unit'
  Width,            
  Depth,          
  Quantity,        
  Unit, 
   LocalLastChangedAt,
   
   _Sales : redirected to parent zi_sales_proy_1998 
}
