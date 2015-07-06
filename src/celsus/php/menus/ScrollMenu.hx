package celsus.php.menus;

import mthk.php.dom.elements.image.Svg;
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
        var bar = new Svg();
        bar.id = ('scroll-bar');
        addChild(bar);
////////////////////////////////////////////
        var ul = new Ul();
            var bar = new Svg();
            bar.id = ('scroll-menu-bar');
            ul.addChild(bar);
            ul.addClass('bg-pattern');
        var pm = CelsusPageNames.map();
        for (k in pm.keys())
            ul.addAnchoreText(PageData.baseURL+"#"+k,cast pm.get(k));

        var menu = new Menu();
        menu.addChild(ul);
        addChild(menu);
////////////////////////////////////////////

    }
}
