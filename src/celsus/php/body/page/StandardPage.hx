package celsus.php.body.page;
import mthk.php.dom.elements.core.DomElement;
import mthk.php.dom.elements.Div;
import celsus.php.menus.PageMenu;
import celsus.php.body.Page;
import celsus.php.body.PageFooter;
class StandardPage extends Page
{
    var contentWithMenu:Bool;
    var standardContent:Div;
    var pageFrame:FramePage;
    public function new() {
        super();
    }
    function renderStandardContent():Void
    {
    }
    override function renderContent():Void
    {
        super.renderContent();

        standardContent = new Div();
        renderStandardContent();

        pageFrame = new FramePage();

        if(contentWithMenu==true)
            pageFrame.addChild(new PageMenu('page'));
        else
            pageFrame.addChild(new PageHeader());

        pageFrame.addChild(standardContent);
        pageFrame.addChild(new PageFooter());
        content.addChild(new FrameShadow(pageFrame));
    }
}