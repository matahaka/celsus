package celsus.php.body;

import celsus.php.menus.PageMenu;
import mthk.php.dom.elements.core.DomElement;
import String;
import mthk.php.dom.elements.Div;
import mthk.php.dom.elements.text.P;
import mthk.php.dom.elements.text.Span;
import mthk.php.dom.elements.text.Small;

class Page extends Div{
    public static function addressSpan():DomElement
    {
        var ul = new Small(' ul. ');
        var lok = new Small(' lok.');
        var tel = new Small(' telefon: ');
        var address = new Small(ul.print()+'Adama Branickiego 11'+lok.print()+'32, 02-972 Warszawa,'+tel.print()+'22-651-86-30');
        var p = new P();
        p.innerHTML = 'mec. Artur Jankowski.'+address.print();
        var span = new Span();
        span.addChild(p);
        return span;
    }


    var con:Div;
    var tent:Div;
    var content:DomElement;
    var menu:PageMenu;
    public function new()
    {
        super();
        addClass('page');
        renderCon();
        renderTent();
        renderContent();
        //renderMenu();
        updateTree();
    }
    function updateTree():Void
    {
        //tent.addChild(menu);
        tent.addChild(content);
        con.addChild(tent);
        addChild(con);
    }
    function renderCon():Void
    {
        con = new Div();
        con.addClass('con');

    }
    function renderTent():Void
    {
        tent = new Div();
        tent.addClass('tent');
    }
    function renderMenu():Void
    {
        menu = new PageMenu('page');
    }
    function renderContent():Void
    {
        content = new Div();
        content.addClass('content');
    }
}
