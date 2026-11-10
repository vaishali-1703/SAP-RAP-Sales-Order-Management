
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Root View'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@UI.headerInfo: {
    typeName: 'Customer',
    typeNamePlural: 'Customers',
    title: {
        type: #STANDARD,
        value: 'CustomerID'
    }
}

define root view entity ZR_SALES_CUST
    as select from ztcust
{
    key customer_id as CustomerID,
        first_name  as FirstName,
        last_name   as LastName,
        email       as Email,
        phone       as Phone,
        city        as City,

        @Semantics.systemDateTime.lastChangedAt: true
        last_changed_at as LastChangedAt
}
