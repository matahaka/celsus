package mthk.php.dom.elements.image.svg;
import mthk.php.dom.elements.core.DomElement;
class Path extends DomElement{

    public function new(d:String) {
        super('path');
        addAttr(['d'=> d]);
    }
}
