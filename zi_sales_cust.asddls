@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Basic View'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_SALES_CUST
  as select from ztcust
{
    key customer_id,
        first_name,
        last_name,
        email,
        phone,
        city
}
