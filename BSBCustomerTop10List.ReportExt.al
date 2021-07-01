reportextension 50100 "BSB Customer - Top 10 List" extends "Customer - Top 10 List"
{
    RDLCLayout = 'BSBCustomerTop10List.rdlc';
    dataset
    {
        add(Integer)
        {
            column(CountryRegionCode_Customer; Customer."Country/Region Code") { IncludeCaption = true; }
        }

        // modify(Customer)
        // {
        //     RequestFilterFields = "Country/Region Code";
        // }
    }
}