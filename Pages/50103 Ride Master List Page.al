page 50103 "Rides Master List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Rides Master";
    Editable = false;
    CardPageId = 50102;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Ride ID"; "Ride ID")
                {
                    ApplicationArea = All;
                    Caption = 'Ride ID';

                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';

                }
                field(Speed; Speed)
                {
                    ApplicationArea = All;
                    Caption = 'Speed';

                }
                field("Ride Type"; "Ride Type")
                {
                    ApplicationArea = All;
                    Caption = 'Ride Type';

                }
                field("Ride Duration"; "Ride Duration")
                {
                    ApplicationArea = All;
                    Caption = 'Ride Duration';

                }
                field("Height Sensitive"; "Height Sensitive")
                {
                    ApplicationArea = All;
                    Caption = 'Height Sensitive';

                }
                field(Inactive; Inactive)
                {
                    ApplicationArea = All;
                    Caption = 'Inactive';

                }
            }
        }
        area(Factboxes)
        {
            part("Ride Picture"; "Ride Picture Factbox")
            {
                ApplicationArea = all;
                Caption = 'Ride Picture';
                SubPageLink = "Ride ID" = field ("Ride ID");

            }

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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}