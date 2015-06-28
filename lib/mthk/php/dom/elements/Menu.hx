package mthk.php.dom.elements;
import mthk.php.dom.elements.core.DomElement;
class Menu extends DomElement{

    public function new(?id:String=null) { super('menu');if(id!=null)this.id=id; }

}
