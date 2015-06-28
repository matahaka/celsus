package mthk.php.dom.elements;
import mthk.php.dom.elements.core.DomElement;
class Script extends DomElement{

    public function new(url:String=null) {
        super('script');
        addAttr(['src'=>url]);
        addAttr(['type'=>'text/javascript']);
    }

}
