package mthk.php.dom.elements.image.svg;
import mthk.php.dom.elements.core.DomElement;
class SvgG extends DomElement{
    public function new(?id:String=null) {

        super('g'); if(id!=null) this.id=id;

    }
}
