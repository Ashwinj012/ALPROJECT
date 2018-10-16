page 50102 RidesMaster
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Rides Master";

    layout
    {
        area(Content)
        {
            group("General Information")
            {
                field("Ride ID"; "Ride ID")
                {
                    ApplicationArea = All;
                    Caption = 'Ride ID', Comment = 'This is for Ride ID Field';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                    ShowMandatory = true;
                }
                field("User Description"; "User Description")
                {
                    ApplicationArea = All;
                    Caption = 'User Description';
                    ShowMandatory = true;
                }
                field(Inactive; Inactive)
                {
                    ApplicationArea = all;
                    Caption = 'Inactive';
                }
                field("Ride Duration"; "Ride Duration")
                {
                    ApplicationArea = All;
                    Caption = 'Ride Duration';
                }
            }
            group("Maintainance Information")
            {
                field("Manager Incharge"; "Manager Incharge")
                {
                    ApplicationArea = All;
                    Caption = 'Manager Incharge';
                }
                field("Current Servicing Vendor"; "Current Servicing Vendor")
                {
                    ApplicationArea = All;
                    Caption = 'Current Servicing Vendor';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}