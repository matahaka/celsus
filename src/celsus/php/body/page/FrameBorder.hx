package celsus.php.body.page;
import mthk.php.dom.elements.core.DomElement;
import mthk.php.dom.elements.Div;
class FrameBorder extends Div {
    public function new(?domElement:DomElement=null) {
        super();
        addClass('frame-border');
        if(domElement!=null)
            addChild(domElement);
    }
}
