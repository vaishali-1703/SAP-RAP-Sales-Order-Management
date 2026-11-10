@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Root View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity ZR_SALES_ORDER
    as select from ztsoh

    composition [0..*] of ZR_SALES_ITEM as _Items

{
    key sales_order    as SalesOrder,
        customer_id    as CustomerID,
        order_date     as OrderDate,
        total_amount   as TotalAmount,
        currency_code  as CurrencyCode,
        order_status   as OrderStatus,

        @Semantics.systemDateTime.lastChangedAt: true
        last_changed_at as LastChangedAt,

        _Items
}
