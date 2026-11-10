@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_SALES_ITEM
  as select from ztsoi
{
    key sales_order,
    key item_number,
        product_name,
        quantity,
        unit_price,
        item_amount
}
