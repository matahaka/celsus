package mthk.php.dom.elements.list;

import mthk.php.dom.elements.core.DomElement;
import mthk.php.dom.elements.text.A;

class Ul extends DomElement{

    public function new(?id:String=null) { super('ul'); if(id!=null)this.id=id;}
    public function addAnchoreElement(href:String,element:DomElement):Void
    {
        var a = new A(href);
            a.addChild(element);
        var li = new Li();
            li.addChild(a);
        addChild(li);
    }
    public function addAnchoreText(href:String,text:String):Void
    {
        var a = new A(href,text);
        var li = new Li();
            li.addChild(a);
        addChild(li);
    }
}
