table 50100 "BSB Book"
{
    Caption = 'Book';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(3; "Search Description"; Code[100])
        {
            Caption = 'Search Description';
            DataClassification = ToBeClassified;
        }
        field(4; Blocked; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = ToBeClassified;
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionMembers = " ",Hardcover,Paperback;
            OptionCaption = ' ,Hardcover,Paperback';
            DataClassification = ToBeClassified;
        }
        field(7; Created; Date)
        {
            Caption = 'Created';
            DataClassification = ToBeClassified;
        }
        field(8; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = ToBeClassified;
        }
        field(10; Author; Text[50])
        {
            Caption = 'Author';
            DataClassification = ToBeClassified;
        }
        field(11; "Author Provision %"; Decimal)
        {
            Caption = 'Author Provision %';
            DataClassification = ToBeClassified;
        }
        field(15; ISBN; Code[20])
        {
            Caption = 'ISBN';
            DataClassification = ToBeClassified;
        }
        field(16; "No. of Pages"; Integer)
        {
            Caption = 'No. of Pages';
            DataClassification = ToBeClassified;
        }
        field(17; "Edition No."; Integer)
        {
            Caption = 'Edition No.';
            DataClassification = ToBeClassified;
        }
        field(18; "Date of Publishing"; Date)
        {
            Caption = 'Date of Publishing';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}
