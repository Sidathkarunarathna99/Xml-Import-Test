report 50100 SalesOrderTest
{
    Caption = 'SalesOrderTest';
    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            RequestFilterFields = "No.", "Bill-to Customer No.";
            column(BilltoCustomerNo; "Bill-to Customer No.")
            {
            }
            column(ExternalDocumentNo; "External Document No.")
            {
            }
            column(No; "No.")
            {
            }
            column(DocumentDate; "Document Date")
            {
            }
            column(DocumentType; "Document Type")
            {
            }
            column(Amount; Amount)
            {
            }
            column(AmountIncludingVAT; "Amount Including VAT")
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
