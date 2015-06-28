package mthk.php.dom.elements.image.svg;
import mthk.php.dom.elements.core.DomElement;
class Defs extends DomElement{
    public function new(?id:String=null) {

        super('defs'); if(id!=null)this.id=id;

    }
}
