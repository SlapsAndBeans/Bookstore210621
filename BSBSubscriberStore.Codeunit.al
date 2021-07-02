codeunit 50100 "BSB Subscriber Store"
{
    var
#pragma warning disable AA0470
        FavoriteBookHintMsg: Label 'Do not forget to enter %1 in %2 %3 %4';
#pragma warning restore AA0470

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    local procedure FavoriteBookHintCustomerOnAfterInsert(var Rec: Record Customer)
    begin
        if Rec."BSB Favorite Book No." = '' then
            Message(FavoriteBookHintMsg,
                Rec.FieldCaption("BSB Favorite Book No."),
                Rec.TableCaption,
                Rec."No.",
                rec.Name);
    end;
}