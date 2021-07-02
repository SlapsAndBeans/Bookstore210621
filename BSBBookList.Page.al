page 50101 "BSB Book List"
{
    Caption = 'Books';
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
    actions
    {
        area(Processing)
        {
            action(CreateDemoBooks)
            {
                Caption = 'Create Demo Books';
                Image = CreateDocuments;
                ApplicationArea = All;
                ToolTip = 'Executes the Create Demo Books action';
                RunObject = codeunit "BSB Create Books";
            }
            action(Evaluation)
            {
                Caption = 'Evaluation';
                Image = Evaluate;
                ApplicationArea = All;
                ToolTip = 'Executes the Evaluation action';

                trigger OnAction()
                begin
                    // BSBBookTypeInterface := BSBBookTypeMgmt.GetHandler(Rec);
                    // BSBBookTypeInterface.GetEvaluation();
                    BSBBookTypeMgmt.GetHandler(Rec).GetEvaluation();
                end;
            }
        }
    }
    var
        BSBBookTypeMgmt: Codeunit "BSB Book Type Mgmt.";
        BSBBookTypeInterface: Interface "BSB Book Type Evaluation";

}