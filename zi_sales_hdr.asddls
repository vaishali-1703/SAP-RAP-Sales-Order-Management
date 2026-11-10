@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_SALES_HDR
  as select from ztsoh
{
    key sales_order,
        customer_id,
        order_date,
        total_amount,
        currency_code,
        order_status
}
