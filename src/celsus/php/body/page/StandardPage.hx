package celsus.php.body.page;
import mthk.php.dom.elements.core.DomElement;
import mthk.php.dom.elements.Div;
import celsus.php.menus.PageMenu;
import celsus.php.body.Page;
import celsus.php.body.PageFooter;
class StandardPage extends Page
{
    var standardContent:Div;
    public function new() {
        super();
    }
    function rendeStandardContent():Void
    {
    }
    override function renderContent():Void
    {
        standardContent = new Div();
        rendeStandardContent();
        var fp = new FramePage();
            fp.addChild(new PageMenu('page'));
            fp.addChild(standardContent);
            fp.addChild(new PageFooter());
        content.addChild(new FrameShadow(fp));
    }
}