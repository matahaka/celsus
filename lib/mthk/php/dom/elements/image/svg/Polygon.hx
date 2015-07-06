package mthk.php.dom.elements.image.svg;
import mthk.php.dom.elements.core.DomElement;
class Polygon extends DomElement{

    public function new(points:String) {
        super('polygon');
        addAttr(['points'=> points]);
    }
}
