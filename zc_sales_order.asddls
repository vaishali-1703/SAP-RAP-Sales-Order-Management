@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Projection View'
@Metadata.allowExtensions: true

define root view entity ZC_SALES_ORDER
    provider contract transactional_query
    as projection on ZR_SALES_ORDER
{
    key SalesOrder,
        CustomerID,
        OrderDate,
        TotalAmount,
        CurrencyCode,
        OrderStatus,
          LastChangedAt,
           _Items : redirected to composition child ZC_SALES_ITEM
}
