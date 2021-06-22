#pragma warning disable AW0006
page 50100 "BSB Book Card"
#pragma warning restore AW0006
{
    Caption = 'Book Card';
    PageType = Card;
    SourceTable = "BSB Book";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

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
                field("Search Description"; Rec."Search Description")
                {
                    ToolTip = 'Specifies the value of the Search Description field';
                    ApplicationArea = All;
                }
                field(Blocked; Rec.Blocked)
                {
                    ToolTip = 'Specifies the value of the Blocked field';
                    ApplicationArea = All;
                }
                field(Author; Rec.Author)
                {
                    ToolTip = 'Specifies the value of the Author field';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(Type; Rec.Type)
                {
                    ToolTip = 'Specifies the value of the Type field';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field(ISBN; Rec.ISBN)
                {
                    ToolTip = 'Specifies the value of the ISBN field';
                    ApplicationArea = All;
                }
                field(Created; Rec.Created)
                {
                    ToolTip = 'Specifies the value of the Created field';
                    ApplicationArea = All;
                    Importance = Additional;
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ToolTip = 'Specifies the value of the Last Date Modified field';
                    ApplicationArea = All;
                    Importance = Additional;
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';

                field("Author Provision %"; Rec."Author Provision %")
                {
                    ToolTip = 'Specifies the value of the Author Provision % field';
                    ApplicationArea = All;
                }
            }
            group(Publishing)
            {
                Caption = 'Publishing';

                field("Edition No."; Rec."Edition No.")
                {
                    ToolTip = 'Specifies the value of the Edition No. field';
                    ApplicationArea = All;
                }
                field("No. of Pages"; Rec."No. of Pages")
                {
                    ToolTip = 'Specifies the value of the No. of Pages field';
                    ApplicationArea = All;
                    Importance = Promoted;
                }
                field("Date of Publishing"; Rec."Date of Publishing")
                {
                    ToolTip = 'Specifies the value of the Date of Publishing field';
                    ApplicationArea = All;
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