@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item  View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZR_SALES_ITEM
    as select from ztsoi

    association to parent ZR_SALES_ORDER as _SalesOrder
        on $projection.SalesOrder = _SalesOrder.SalesOrder
{
    key sales_order  as SalesOrder,
    key item_number  as ItemNumber,

        product_name as ProductName,
        quantity     as Quantity,
        unit_price   as UnitPrice,
        item_amount  as ItemAmount,

        _SalesOrder
}
