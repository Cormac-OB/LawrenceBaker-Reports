reportextension 50103 PaymentSignOffLB extends "Payment Sign Off EQ2"
{
    dataset
    {
    }
    rendering
    {
        layout("PaymentSignOffLB")
        {
            Type = RDLC;
            LayoutFile = 'src/ReportExt/PaymentSignOffLB.rdlc';
            Caption = 'Payment Sign Off LB';
            Summary = 'Payment Sign Off LB';
        }
    }
}
