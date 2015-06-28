package celsus.php.menus;

import mthk.php.dom.elements.list.Ul;
import celsus.PageData;
import celsus.PageData.CelsusPageNames;
import mthk.php.dom.elements.Div;
import celsus.php.body.svg.IconMenu;
import mthk.php.dom.elements.Menu;

class ScrollMenu extends Div{
    public function new()
    {

        super("scroll-menu");
        addClass('menu');
        addClass('scroll-menu-hover');
        addChild(new IconMenu());
        var bar = new Div('scroll-bar');
        addChild(bar);
////////////////////////////////////////////
        var ul = new Ul();
            //ul.addListAnchore("#start",cast PageData.start);
        var pm = CelsusPageNames.map();
        for (k in pm.keys())
            ul.addListAnchore(PageData.baseURL+"#"+k,cast pm.get(k));

        var menu = new Menu();
        menu.addChild(ul);
        addChild(menu);
////////////////////////////////////////////

    }
}
