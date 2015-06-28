package mthk.php.dom.elements.list;
import mthk.php.dom.elements.text.A;
import mthk.php.dom.elements.core.DomElement;
class Ul extends DomElement{

    public function new(?id:String=null) { super('ul'); if(id!=null)this.id=id;}
    public function addListAnchore(href:String,text:String):Void
    {
        var a = new A(href,text);
        var li = new Li();
            li.addChild(a);
        addChild(li);
    }
}
