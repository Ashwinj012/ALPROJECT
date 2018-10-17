table 50101 "Ride Clockings"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Entry No.';
            AutoIncrement = true;
            Editable = false;
        }
        field(21; "Ride ID"; Code[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Ride ID';

        }
        field(22; "Clocked In Employee"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Clocked In Employee';
            Editable = false;
        }
        field(23; "Ride Start Date and time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Ride Start Date and time';
            Editable = false;
        }
        field(24; "Ride Stop Date and time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Ride Stop Date and time';
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }


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