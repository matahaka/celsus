package mthk.php.dom.elements.image;
import mthk.php.dom.elements.core.DomElement;
class Img extends DomElement{
    public var width:String;
    public var height:String;
    public var align:String;
    public var src:String = "URL_EMPTY";
    public function new(url:String,width:String,height:String,?align:String='left') {
        super('img');
        addAttr(['src'=>url]);
        addAttr(['width'=>width]);
        addAttr(['height'=>height]);
        addAttr(['align'=>align]);
    }
}
