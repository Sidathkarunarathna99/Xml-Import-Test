table 50100 XMLNodes
{
    Caption = 'XMLNodes';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; EntryNo; Integer)
        {
            Caption = 'EntryNo';
        }
        field(2; NodeName; Text[250])
        {
            Caption = 'NodeName';
        }
        field(3; Intend; Integer)
        {
            Caption = 'Intend';
        }
    }
    keys
    {
        key(PK; EntryNo)
        {
            Clustered = true;
        }
    }
}
