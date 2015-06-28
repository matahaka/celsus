package celsus.php.body.page;
import mthk.php.dom.elements.core.DomElement;
import mthk.php.dom.elements.Div;
class FramePage extends Div {
    public function new(?domElement:DomElement=null) {
        super();
        addClass('frame-page');
        if(domElement!=null)
            addChild(domElement);
    }
}
