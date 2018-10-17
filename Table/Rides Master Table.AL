table 50100 "Rides Master"
{
    DataClassification = ToBeClassified;
    LookupPageId = 50103;
    Caption = 'Rides Master';

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
        field(23; "Ride Duration"; Duration)
        {
            DataClassification = ToBeClassified;
            Caption = 'Ride Duration';
        }
        field(24; Image; Blob)
        {
            DataClassification = ToBeClassified;
            Caption = 'Image';
            Subtype = Bitmap;
        }
        field(25; "Current Servicing Vendor"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Current Servicing Vendor';
            TableRelation = Vendor."No.";
        }
        field(26; "Servicing Vendor Name"; Text[50])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            CalcFormula = lookup (Vendor.Name where ("No." = field ("Current Servicing Vendor")));
            Editable = false;
        }
        field(27; "Manager Incharge"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Manager Incharge';
            TableRelation = Employee;
            trigger OnValidate()
            var
                EmployeeL: Record Employee;
            begin
                if EmployeeL.Get("Manager Incharge") then begin
                    "Manager ID" := EmployeeL."No.";
                    "Manager Incharge" := EmployeeL.FullName();
                end;
            end;
        }
        field(28; "Emergency Maintainance Number"; Text[13])
        {
            DataClassification = ToBeClassified;
            Caption = 'Emergency Maintainance Number';
            ExtendedDatatype = PhoneNo;
        }
        field(29; Inactive; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Inactive';
        }
        field(30; Speed; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Speed';
            OptionMembers = " ",Slow,Medium,Fast;
            OptionCaption = ' ,Slow,Medium,Fast';
        }

        field(31; "Age Group"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Age Group';
            OptionMembers = " ","Below 8 Years","Between 8 - 15 Years","Adult";
        }
        field(32; "Main Operator"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Main Operator';
            TableRelation = Employee;
            trigger OnValidate()
            var
                EmployeeL: Record Employee;
            begin
                if EmployeeL.Get("Main Operator") then begin
                    "Main Operator ID" := EmployeeL."No.";
                    "Main Operator" := EmployeeL.FullName();
                end;
            end;
        }
        field(33; "Alternate Operator"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Alternate Operator';
            TableRelation = Employee;
            trigger OnValidate()
            var
                EmployeeL: Record Employee;
            begin
                if EmployeeL.Get("Alternate Operator") then begin
                    "Alternate Operator ID" := EmployeeL."No.";
                    "Alternate Operator" := EmployeeL.FullName();
                end;
            end;
        }
        field(34; "Ride Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Land,Water;
            Caption = 'Ride Type';
        }
        field(35; "Height Sensitive"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Height Sensitive';
        }
        field(36; "Manager ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Manager ID';
        }
        field(37; "Main Operator ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Main Operator ID';
        }
        field(38; "Alternate Operator ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Alternate Operator ID';
        }
        field(39; "Reason for Inactive"; text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Reason for Inactive';
        }
        field(40; "Service Count"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Service Count';
        }
        field(41; "Service Duration"; Duration)
        {
            DataClassification = ToBeClassified;
            Caption = 'Service Duration';
        }

    }


    keys
    {
        key(PK; "Ride ID")
        {
            Clustered = true;

        }
    }
    fieldgroups
    {
        fieldgroup(Brick; "Ride ID", "Ride Type", Description, Speed, Image)
        {

        }
    }
    var
        Text_DeleteError: TextConst ENU = 'You cannot delete an active ride.';

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        if not Inactive then
            Error(Text_DeleteError);
    end;

    trigger OnRename()
    begin

    end;
    // Documentation Section Starts
    // CopyRight Larks.
    // Ride Master Table created for storing Master rides.
}