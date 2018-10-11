page 50101 "PlayGround Enquiry"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Description = 'Fill in the below form for ride suggestions';
    Caption = 'Fill The Below Form For Ride Suggestions';

    layout
    {
        area(Content)
        {
            field(ParkLogo; CompanyInfoG.Picture)
            {
                Caption = '';
                ApplicationArea = All;
                Editable = false;
            }
            group("Ride Preferences")
            {
                field(TypePrefferedControl; TypePrefferedG)
                {
                    Caption = 'Select Preferred Speed';
                    ApplicationArea = All;
                    ShowMandatory = true;
                    QuickEntry = true;

                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                        clear(AgeGroupG);
                    end;
                }
            }
            group("Slow Rides Menu")
            {
                Visible = TypePrefferedG = TypePrefferedG::slow;
                field(AgeGroupSlow; AgeGroupG)
                {
                    ApplicationArea = All;
                    Caption = 'Select Your Age Group';
                    trigger OnValidate()
                    begin
                        SlowRideListFiller();
                    end;
                }

            }
            group("Meduim speed Ride Menu")
            {
                Visible = TypePrefferedG = TypePrefferedG::medium;
                field(AgeGroupMedium; AgeGroupG)
                {
                    ApplicationArea = All;
                    Caption = 'Select Your Age Group';
                    trigger OnValidate()
                    begin
                        MediumRideListFiller();
                    end;
                }

            }
            group("Fast Rides Menu")
            {
                Visible = TypePrefferedG = TypePrefferedG::fast;
                field(AgeGroupFast; AgeGroupG)
                {
                    ApplicationArea = All;
                    Caption = 'Select Your Age Group';
                    trigger OnValidate()
                    begin
                        FastRideListFiller();
                    end;
                }

            }

            field(RideList; FinalRideListG)
            {
                ApplicationArea = All;
                Caption = '';
                Editable = false;
                MultiLine = true;
                Importance = Promoted;
                Style = Unfavorable;

            }
            field("Help Desk"; ContactTextG)
            {
                ApplicationArea = All;
                Caption = '';
                Editable = false;
                Importance = Promoted;
                Style = Strong;

            }
        }
    }

    actions
    {
        area(Processing)
        {
            group(Process)
            {
                Caption = 'Process';
                Image = Account;
                action(Reset)
                {
                    ApplicationArea = All;
                    Promoted = true;

                    Image = CalculateRemainingUsage;
                    PromotedIsBig = true;
                    trigger OnAction()
                    begin
                        ClearAll();
                    end;
                }
            }
        }
    }
    var
        TypePrefferedG: Option " ",Slow,Medium,Fast;
        AgeGroupG: Option " ","Below 8 Years","Between 8-15 Years","I Am an Adult";
        RideMessage: TextConst ENU = 'We Have The Below Available Rides';
        RideContact: TextConst ENU = 'Contact Your Nearest Help Desk For More Details';
        RideListG: List of [text];
        FinalRideListG: Text;
        ContactTextG: text;
        AssetsPathG: Text;
        CompanyInfoG: Record "Company Information";
        tempBlobG: Record TempBlob;
        FileMgmtG: Codeunit "File Management";

    trigger OnOpenPage();
    begin
        CompanyInfoG.get();
        CompanyInfoG.CalcFields(Picture);
        AssetsPathG := '\Assets\1.png';
    end;

    procedure SlowRideListFiller();
    begin
        case AgeGroupG of
            AgeGroupG::"Below 8 Years":
                begin
                    RideListG.Add('Merry Go Round');
                    RideListG.Add('Dashing Cars');
                    RideListG.Add('Buggy Race');
                    DisplayListBuilder(RideListG);
                end;
            AgeGroupG::"Between 8-15 Years":
                begin
                    RideListG.Add('Merry Go Round');
                    RideListG.Add('Dashing Cars');
                    RideListG.Add('Buggy Race');
                    RideListG.Add('Scary Tunnel');
                    RideListG.Add('Giant wheel');
                    DisplayListBuilder(RideListG);
                end;
            else begin
                    RideListG.Add('Mixer');
                    RideListG.Add('Dashing Cars');
                    RideListG.Add('Pendulum');
                    RideListG.Add('Columbus');
                    RideListG.Add('Scary Tunnel');
                    RideListG.Add('Tornado');
                    RideListG.Add('Giant wheel');
                    RideListG.Add('Wave Pool');
                    RideListG.Add('Rain Disco');
                    DisplayListBuilder(RideListG);
                end;
        end;
    end;

    procedure MediumRideListFiller();
    begin
        case AgeGroupG of
            AgeGroupG::"Below 8 Years":
                begin
                    RideListG.Add('Merry Go Round');
                    RideListG.Add('Dashing Cars');
                    RideListG.Add('Buggy Race');
                    DisplayListBuilder(RideListG);
                end;
            AgeGroupG::"Between 8-15 Years":
                begin
                    RideListG.Add('Merry Go Round');
                    RideListG.Add('Dashing Cars');
                    RideListG.Add('Buggy Race');
                    RideListG.Add('Columbus');
                    RideListG.Add('Scary Tunnel');
                    RideListG.Add('Tornado');
                    RideListG.Add('Giant wheel');
                    DisplayListBuilder(RideListG);
                end;
            else begin
                    RideListG.Add('Mixer');
                    RideListG.Add('Dashing Cars');
                    RideListG.Add('Pendulum');
                    RideListG.Add('Columbus');
                    RideListG.Add('Scary Tunnel');
                    RideListG.Add('Tornado');
                    RideListG.Add('Giant wheel');
                    RideListG.Add('Wave Pool');
                    RideListG.Add('Rain Disco');
                    DisplayListBuilder(RideListG);
                end;
        end;
    end;

    procedure FastRideListFiller();
    begin
        case AgeGroupG of
            AgeGroupG::"Below 8 Years":
                begin
                    RideListG.Add('Merry Go Round');
                    RideListG.Add('Dashing Cars');
                    RideListG.Add('Buggy Race');
                    DisplayListBuilder(RideListG);
                end;
            AgeGroupG::"Between 8-15 Years":
                begin
                    RideListG.Add('Merry Go Round');
                    RideListG.Add('Dashing Cars');
                    RideListG.Add('Buggy Race');
                    RideListG.Add('Columbus');
                    RideListG.Add('Scary Tunnel');
                    RideListG.Add('Tornado');
                    RideListG.Add('Giant wheel');
                    DisplayListBuilder(RideListG);
                end;
            else begin
                    RideListG.Add('Mixer');
                    RideListG.Add('Dashing Cars');
                    RideListG.Add('Pendulum');
                    RideListG.Add('Columbus');
                    RideListG.Add('Scary Tunnel');
                    RideListG.Add('Tornado');
                    RideListG.Add('Giant wheel');
                    RideListG.Add('Wave Pool');
                    RideListG.Add('Rain Disco');
                    DisplayListBuilder(RideListG);
                end;
        end;
    end;

    procedure DisplayListBuilder(AppendedListP: List of [Text]);
    var
        TotalListCountL: Integer;
        TraversingIntL: Integer;
        CarriageReturnL: array[10] of Text[2];
    begin
        if AppendedListP.Count() = 0 then
            exit;
        Clear(FinalRideListG);
        TotalListCountL := AppendedListP.Count();
        repeat
            if FinalRideListG = '' then
                FinalRideListG := RideMessage + '\'
            else begin
                TraversingIntL += 1;
                if TraversingIntL <> 1 then
                    FinalRideListG += ',';
                FinalRideListG := FinalRideListG + ' #' + Format(TraversingIntL) + '.' + AppendedListP.Get(TraversingIntL)
            end;
            ContactTextG := RideContact;
        until TotalListCountL = TraversingIntL;
    end;
}