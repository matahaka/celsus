package celsus.php.menus;

import celsus.PageData.CelsusPageNames;
import celsus.php.body.Page;
import mthk.php.dom.elements.list.Ul;
import mthk.php.dom.elements.core.DomElement;
import mthk.php.dom.elements.text.A;
import mthk.php.dom.elements.Menu;
import mthk.php.dom.elements.Div;

class PageMenu extends Div{
    public function new(type:String,?withAddress:Bool)
    {
        if(withAddress==null)
            withAddress = (type=='page')?true:false;
        super();
        addClass('menu');
        addClass("menu-page");
////////////////////////////////////////////
        var ul = new Ul();
        var pm = CelsusPageNames.map();
        for (k in pm.keys()){
            if(k!='start')
            ul.addAnchoreText(PageData.baseURL+"#"+k,cast pm.get(k));
        }
        var menu = new Menu();
        if(type=='page'){
            var a:A = new A("#start");
                a.addClass("logo-img-small");
            menu.addChild(a);
        }
        menu.addChild(ul);
        addChild(menu);
////////////////////////////////////////////
        if(withAddress==true){
            addClass("menu-page-withAddress");
            addChild(Page.addressSpan());
        }
    }

    /*function addressSpan():DomElement
    {
        addClass("menu-page-withAddress");
        var ul = new Small(' ul. ');
        var lok = new Small(' lok.');
        var tel = new Small(' telefon: ');
        var address = new Small(ul.print()+'Adama Branickiego 11'+lok.print()+'32, 02-972 Warszawa,'+tel.print()+'22-651-86-30');
        var p = new P();
            p.innerHTML = 'mec. Artur Jankowski.'+address.print();
        var span = new Span();
            span.addChild(p);
        return span;
    }*/
}
