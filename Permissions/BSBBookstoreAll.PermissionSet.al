permissionset 50100 "BSB Bookstore All"
{
    Caption = 'Bookstore complete';
    Assignable = false;
    Permissions =
        tabledata "BSB Book" = RIMD,
        table "BSB Book" = X;
}

// <?xml version="1.0" encoding="utf-8"?>
// <PermissionSets>
//   <PermissionSet RoleID="BOKSTORE BASE 210621" RoleName="Bokstore Base 210621">
//     <Permission>
//       <ObjectID>50100</ObjectID>
//       <ObjectType>0</ObjectType>
//       <ReadPermission>1</ReadPermission>
//       <InsertPermission>1</InsertPermission>
//       <ModifyPermission>1</ModifyPermission>
//       <DeletePermission>1</DeletePermission>
//       <ExecutePermission>0</ExecutePermission>
//       <SecurityFilter />
//     </Permission>
//     <Permission>
//       <ObjectID>50100</ObjectID>
//       <ObjectType>1</ObjectType>
//       <ReadPermission>0</ReadPermission>
//       <InsertPermission>0</InsertPermission>
//       <ModifyPermission>0</ModifyPermission>
//       <DeletePermission>0</DeletePermission>
//       <ExecutePermission>1</ExecutePermission>
//       <SecurityFilter />
//     </Permission>
//   </PermissionSet>
// </PermissionSets>