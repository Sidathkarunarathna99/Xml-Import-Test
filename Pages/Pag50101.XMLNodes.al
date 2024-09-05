page 50101 XMLNodes
{
    ApplicationArea = All;
    Caption = 'XMLNodes';
    PageType = List;
    SourceTable = XMLNodes;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                IndentationColumn = Indent;
                ShowAsTree = true;
                TreeInitialState = CollapseAll;

                field(NodeName; Rec.NodeName)
                {
                    ToolTip = 'Specifies the value of the NodeName field.', Comment = '%';
                    StyleExpr = StyleExpress;
                }
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        Indent := Rec.Intend;
        if (Rec.Intend = 1) or (Rec.Intend = 2) then
            StyleExpress := 'Strong'
        else
            StyleExpress := 'Standard';
    end;

    var
        Indent: Integer;
        StyleExpress: Text;
}
