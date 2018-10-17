page 50102 "Rides Master Card"
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
                field("Ride Type"; "Ride Type")
                {
                    ApplicationArea = All;
                    Caption = 'Ride Type';
                    ShowMandatory = true;
                }

                field("Ride Duration"; "Ride Duration")
                {
                    ApplicationArea = All;
                    Caption = 'Ride Duration';
                }
                field(Speed; Speed)
                {
                    ApplicationArea = All;
                    Caption = 'Speed';
                }
                field("Age Group"; "Age Group")
                {
                    ApplicationArea = all;
                    Caption = 'Age Group';
                }
                field("Height Sensitive"; "Height Sensitive")
                {
                    ApplicationArea = all;
                    Caption = 'Height Sensitive';
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
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
                }
                field("Servicing Vendor Name"; "Servicing Vendor Name")
                {
                    ApplicationArea = All;
                    Caption = 'Servicing Vendor Name';
                }
                field("Emergency Maintainance Number"; "Emergency Maintainance Number")
                {
                    ApplicationArea = All;
                    Caption = 'Emergency Maintainance Number';
                }
                field("Main Operator"; "Main Operator")
                {
                    ApplicationArea = All;
                    Caption = 'Master Operator';
                }
                field("Alternate Operator"; "Alternate Operator")
                {
                    ApplicationArea = All;
                    Caption = 'Alternate Operator';
                }
                field(Inactive; Inactive)
                {
                    ApplicationArea = all;
                    Caption = 'Inactive';
                }
                field("Reason for Inactive"; "Reason for Inactive")
                {
                    ApplicationArea = all;
                    Caption = 'Reason for Inactive';
                }
                field("Service Count"; "Service Count")
                {
                    ApplicationArea = all;
                    Caption = 'Service Count';
                }
                field("Service Duration"; "Service Duration")
                {
                    ApplicationArea = all;
                    Caption = 'Service Duration';
                }
            }
            group("Upload picture")
            {
                field(Image; Image)
                {
                    ApplicationArea = all;
                    Caption = 'Ride Picture';
                }
            }
        }
        area(FactBoxes)
        {
            systempart(Notes; Notes)
            {
                ApplicationArea = all;
                Caption = 'Notes';

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Coming Soon")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

}