enum 50100 "BSB Book Type" implements "BSB Book Type Evaluation"
{
    Extensible = true;
    // DefaultImplementation = "BSB Book Type Evaluation" = "BSB Book Type Default Impl.";

    value(0; " ")
    {
        Caption = 'None';
        Implementation = "BSB Book Type Evaluation" = "BSB Book Type Default Impl.";
    }
    value(1; Hardcover)
    {
        Caption = 'Hardcover';
        Implementation = "BSB Book Type Evaluation" = "BSB Book Type Hardcover Impl.";
    }
    value(2; Paperback)
    {
        Caption = 'Paperback';
        Implementation = "BSB Book Type Evaluation" = "BSB Book Type Paperback Impl.";
    }
}