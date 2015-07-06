package celsus.php.pages;
import mthk.php.dom.elements.core.DomElement;
import celsus.php.body.page.FrameBorder;
import celsus.php.body.page.FrameShadow;
import celsus.php.menus.PageMenu;
import mthk.php.dom.elements.image.Img;
import celsus.php.body.Page;
import mthk.php.dom.elements.Div;

class PageStart extends Page
{
    public function new() {
        super();
        id = 'start';
    }
    override function renderContent():Void
    {
        super.renderContent();
        var logoBig = new Div();
            logoBig.addClass("logo-img-big");
        var preloader = new Div("preloader");
            preloader.addChild(new Img("/hx/celsus/www/src/grf/294.gif","220","20","center"));
        var fb = new FrameBorder();
            fb.addChild(logoBig);
            fb.addChild(preloader);
        var fs = new FrameShadow(fb);
        var menu = new PageMenu('start',true);
            fs.addChild(menu);
        content.addChild(fs);

    }
}
