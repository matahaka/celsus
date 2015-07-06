package celsus.php.pages;

import celsus.php.body.Page;
import celsus.php.body.page.StandardPage;
import mthk.php.dom.elements.Div;
import mthk.php.dom.elements.core.DomElement;
import celsus.php.menus.MenuKontaktMap;

class PageKontakt extends StandardPage
{
    var mapa:Div;
    public function new() {
        contentWithMenu = false;
        super();
        id = 'kontakt';
    }
    override function updateTree():Void
    {
        mapa = new Div('kontakt-mapa');
        mapa.addChild(new Div('kontakt-mapa-cont'));
        tent.addChild(mapa);
        // menu = new PageMenu('page',false);
        //tent.addChild(menu);
        //tent.addChild(content);
        con.addChild(tent);
        addChild(con);
        addChild(new MenuKontaktMap());

    }
    override function renderStandardContent():Void
    {
        standardContent.addChild(Page.addressSpan());
    }
}
