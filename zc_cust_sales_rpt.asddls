
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Wise Sales Order Report'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define view entity ZC_CUST_SALES_RPT
    as select from ZR_SALES_ORDER as SO

    inner join ZR_SALES_CUST as C
        on SO.CustomerID = C.CustomerID

{
    key SO.SalesOrder  as SalesOrder,

        SO.CustomerID  as CustomerID,
        C.FirstName    as FirstName,
        C.LastName     as LastName,
        C.Email        as Email,

        SO.OrderDate   as OrderDate,
        SO.TotalAmount as TotalAmount,
        SO.CurrencyCode as CurrencyCode,
        SO.OrderStatus as OrderStatus
}
