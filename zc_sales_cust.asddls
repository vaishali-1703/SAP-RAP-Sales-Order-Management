
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Projection View'
@Metadata.allowExtensions: true

define root view entity ZC_SALES_CUST
    provider contract transactional_query
    as projection on ZR_SALES_CUST
{
    key CustomerID,
        FirstName,
        LastName,
        Email,
        Phone,
        City,
         LastChangedAt
}
