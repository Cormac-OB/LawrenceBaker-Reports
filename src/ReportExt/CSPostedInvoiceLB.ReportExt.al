reportextension 50105 CSPostedInvoiceLB extends "CS - Post. Invoice EQ2"
{
    dataset
    {
        add("CS Invoice Header EQ2")
        {
            column(Project; "Job Description")
            { }
            column(ProjectRef; "Your Reference")
            { }
            column(NewDate; "Due Date")
            { }
            column(Terms; "Payment Terms Code")
            { }
            column(RetentionPercentage; "Retention %")
            { }
            column(UTR; CisDetailsLB."Unique Tax Reference")
            { }
        }
    }
    rendering
    {
        layout("CSPostedInvoiceLB")
        {
            Type = RDLC;
            LayoutFile = 'src/ReportExt/CSPostedInvoiceLB.rdlc';
            Caption = 'CS Posted Invoice LB';
            Summary = 'CS Posted Invoice LB';
        }
    }
    trigger OnPreReport()
    begin
        CisDetailsLB.get();
    end;

    var
        CisDetailsLB: Record "CIS Setup EQ2";
}
