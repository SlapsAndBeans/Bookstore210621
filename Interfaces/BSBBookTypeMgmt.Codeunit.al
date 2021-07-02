codeunit 50113 "BSB Book Type Mgmt."
{
    procedure GetHandler(BSBBook: Record "BSB Book"): Interface "BSB Book Type Evaluation"
    var
    begin
        if BSBBook.IsEmpty then
            BSBBook.TestField("No.");
        exit(BSBBook.Type);
    end;
}