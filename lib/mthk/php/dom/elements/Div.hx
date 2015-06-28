package mthk.php.dom.elements;
import mthk.php.dom.elements.core.DomElement;
class Div extends DomElement{

    public function new(?id:String=null) { super('div'); if(id!=null)this.id=id;}

}
