package mthk.php.dom.elements.list;
import mthk.php.dom.elements.core.DomElement;
class Li extends DomElement{

    public function new(?id:String=null) { super('li'); if(id!=null)this.id=id;}

}
