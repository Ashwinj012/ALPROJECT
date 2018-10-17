pageextension 50105 "RC Menu Addition" extends "Business Manager Role Center"
{
    layout
    {

    }

    actions
    {
        addafter("Chart of Accounts")
        {
            group("Manage Park")
            {
                action("Park Ride List")
                {
                    ApplicationArea = All;
                    RunObject = page "Rides Master List";

                }
                action("Park Enquiry")
                {
                    ApplicationArea = All;
                    RunObject = page "PlayGround Enquiry";
                }
            }
        }
    }


}