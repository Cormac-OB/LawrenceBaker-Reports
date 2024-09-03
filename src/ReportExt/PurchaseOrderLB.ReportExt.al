reportextension 50101 PurchaseOrderLB extends "Order 3 EQ2"
{
    dataset
    {
    }
    rendering
    {
        layout("PurchaseOrderLB")
        {
            Type = RDLC;
            LayoutFile = 'src/ReportExt/PurchaseOrderLB.rdlc';
            Caption = 'Purchase Order LB';
            Summary = 'Purchase Order LB';
        }
    }
}
