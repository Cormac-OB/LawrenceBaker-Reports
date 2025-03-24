reportextension 50106 SalesInvoiceLB extends "Sales - Invoice GB EQ2"
{
    dataset
    {
        add("Sales Invoice Header")
        {
            column(Project; "Job No. EQ2")
            { }
            column(ProjectRef; "Your Reference")
            { }
            column(NewDate; "Due Date")
            { }
            column(Terms; "Payment Terms Code")
            { }
            //column(RetentionPercentage; "Sales Invoice Line"."Re")
            //{ }
            column(UTR; CisDetailsLB."Unique Tax Reference")
            { }
        }
    }
    rendering
    {
        layout("SalesInvoiceLB")
        {
            Type = RDLC;
            LayoutFile = 'src/ReportExt/SalesInvoiceLB.rdlc';
            Caption = 'Sales Invoice LB';
            Summary = 'Sales Invoice LB';
        }
    }
    trigger OnPreReport()
    begin
        CisDetailsLB.get();
    end;

    var
        CisDetailsLB: Record "CIS Setup EQ2";
}
