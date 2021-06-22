tableextension 50100 "BSB Customer" extends Customer
{
    fields
    {
        field(50100; "BSB Favorite Book No."; Code[20])
        {
            Caption = 'Favorite Book No.';
            TableRelation = "BSB Book";

            trigger OnValidate()
            begin
                if ("BSB Favorite Book No." <> xRec."BSB Favorite Book No.") and
                    ("BSB Favorite Book No." <> '')
                then begin
                    BSBBook.Get("BSB Favorite Book No.");
                    BSBBook.TestBlocked();
                end;
                CalcFields("BSB Favorite Book Description");
            end;
        }
        field(50101; "BSB Favorite Book Description"; Text[100])
        {
            Caption = 'Favorite Book Description';
            Editable = false;
            FieldClass = FlowField;
            // Erts das Ziel, dann die Quelle
            CalcFormula = lookup("BSB Book".Description where("No." = field("BSB Favorite Book No.")));
        }
    }
    var
        BSBBook: Record "BSB Book";
}