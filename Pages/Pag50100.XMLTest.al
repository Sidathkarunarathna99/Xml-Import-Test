page 50100 XMLTest
{
    ApplicationArea = All;
    Caption = 'XMLTest';
    PageType = Card;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ImportXML)
            {
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                ApplicationArea = All;
                Image = XMLFile;
                Caption = 'Import XML';

                trigger OnAction()
                var
                    TempMyTable: Record "Sales Invoice Header" temporary;
                    TempXMLBuffer: Record "XML Buffer" temporary;
                    CopyTempXMLBuffer: Record "XML Buffer" temporary;
                    xlInStream: InStream;
                    XlFile: Text;
                    Text1: Text;
                    typehelp: Codeunit "Type Helper";
                    XmlDoc: XmlDocument;
                    ChildNodes: XmlNodeList;
                    GroupNo: Integer;
                    PreviousRecName: Text;
                    XMLNodes: Record XMLNodes;
                begin
                    UploadIntoStream('Choose XML File', '', '*.xml*|*.*', XlFile, xlInStream);
                    TempXMLBuffer.LoadFromStream(xlInStream);
                    XmlDocument.ReadFrom(xlInStream, XmlDoc);
                    if TempXMLBuffer.FindFirst() then
                        repeat begin
                            XMLNodes.Init();
                            XMLNodes.EntryNo := GetlastEntryNo() + 1;
                            XMLNodes.NodeName := TempXMLBuffer.Name;
                            XMLNodes.Intend := TempXMLBuffer.Depth;
                            XMLNodes.Insert(true);
                        end until TempXMLBuffer.Next() = 0;
                    Message(Text1);
                end;
            }
        }
    }
    local procedure GetlastEntryNo(): Integer
    var
        XmlNodes: Record XMLNodes;
    begin
        XmlNodes.Reset();
        if XmlNodes.FindLast() then
            exit(XmlNodes.EntryNo)
        else
            exit(0);
    end;
}
