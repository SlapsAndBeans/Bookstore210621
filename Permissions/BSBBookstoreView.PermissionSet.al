permissionset 50101 "BSB Bookstore View"
{
    Caption = 'Bookstore - View';
    Assignable = true;
    IncludedPermissionSets = "D365 CUSTOMER, VIEW";
    Permissions =
        tabledata "BSB Book" = R;
}