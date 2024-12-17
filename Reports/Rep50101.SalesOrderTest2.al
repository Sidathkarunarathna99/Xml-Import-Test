report 50101 SalesOrderTest2
{
    Caption = 'SalesOrderTest2';
    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            RequestFilterFields = "No.", "Bill-to Customer No.";
            column(BilltoCustomerNo; "Bill-to Customer No.")
            {
            }
            column(BilltoName; "Bill-to Name")
            {
            }
            column(DocumentType; "Document Type")
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(DocumentDate; "Document Date")
            {
            }
            column(No; "No.")
            {
            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document No." = field("No."), "Document Type" = field("Document Type");
                DataItemLinkReference = SalesHeader;

                column(Quantity; Quantity)
                {

                }
                column(Unit_Price; "Unit Price")
                {

                }
            }
            trigger OnAfterGetRecord()
            var
                LanguageMgt: Codeunit Language;
            begin
                CurrReport.FormatRegion := LanguageMgt.GetFormatRegionOrDefault("Format Region");
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
