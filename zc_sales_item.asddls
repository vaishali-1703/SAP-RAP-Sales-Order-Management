@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item Projection View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define view entity ZC_SALES_ITEM
    as projection on ZR_SALES_ITEM
{
    key SalesOrder,
    key ItemNumber,
        ProductName,
        Quantity,
        UnitPrice,
        ItemAmount,
        _SalesOrder : redirected to parent ZC_SALES_ORDER
}
