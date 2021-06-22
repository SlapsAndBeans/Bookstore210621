page 50101 "BSB Book List"
{
    Caption = 'Book List';
    PageType = List;
    Editable = false;
    SourceTable = "BSB Book";
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "BSB Book Card";

    layout
    {
        area(Content)
        {
            repeater(Books)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field';
                    ApplicationArea = All;
                }
                field(ISBN; Rec.ISBN)
                {
                    ToolTip = 'Specifies the value of the ISBN field';
                    ApplicationArea = All;
                }
                field(Author; Rec.Author)
                {
                    ToolTip = 'Specifies the value of the Author field';
                    ApplicationArea = All;
                }
                field("Edition No."; Rec."Edition No.")
                {
                    ToolTip = 'Specifies the value of the Edition No. field';
                    ApplicationArea = All;
                    Visible = false;
                }
            }
        }
        area(FactBoxes)
        {
            systempart(Links; Links) { ApplicationArea = RecordLinks; }
            systempart(Notes; Notes) { ApplicationArea = Notes; }
        }
    }
}