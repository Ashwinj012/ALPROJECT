page 50100 TestPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    var
        LoopNo: Integer;
        YesOrNo: Boolean;
        Amount: Decimal;
        "When Was It": Date;
        "What Time": Time;
        description: Text[30];
        "Code Number": Code[20];
        CH: Char;

        color: Option Red,Orange,Yellow,Green,Blue,Violet;

    trigger OnOpenPage();
    begin
        Message(Format(LoopNo));
        Message(Format(YesOrNo));
        Message(Format(Amount));
        Message(Format("When Was It"));
        Message(Format("What Time"));
        Message(description);
        Message("Code Number");
        Message(CH);
    end;
}

