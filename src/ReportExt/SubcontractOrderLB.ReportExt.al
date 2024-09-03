reportextension 50102 SubcontractOrderLB extends "Subcontract - Order 5 EQ2"
{
    dataset
    {
        add("Subcontract Order Header")
        {
            column(SubconOrderNo; "No.")
            { }
        }
    }
    rendering
    {
        layout("SubcontractOrderLB")
        {
            Type = RDLC;
            LayoutFile = 'src/ReportExt/SubcontractOrderLB.rdlc';
            Caption = 'Subcontractor - Order LB';
            Summary = 'Subcontractor - Order LB';
        }
    }
}
