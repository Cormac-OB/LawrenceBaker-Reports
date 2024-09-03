reportextension 50104 SubconPaymentSignOffLB extends "Subc. Payment Sign Off 2 EQ2"
{
    dataset
    {
    }
    rendering
    {
        layout("SubconPaymentSignOffLB")
        {
            Type = RDLC;
            LayoutFile = 'src/ReportExt/SubconPaymentSignOffLB.rdlc';
            Caption = 'Subcontractor Payment Sign Off LB';
            Summary = 'Subcontractor Payment Sign Off LB';
        }
    }
}
