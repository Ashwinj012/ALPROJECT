table 50100 "Rides Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Ride ID"; Code[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Ride ID';

        }
        field(21; Description; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }

        field(22; "User Description"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'User Description';
        }

    }

    keys
    {
        key(PK; "Ride ID")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}