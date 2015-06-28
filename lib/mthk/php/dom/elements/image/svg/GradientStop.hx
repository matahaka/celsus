package mthk.php.dom.elements.image.svg;
import mthk.php.dom.elements.core.DomElement;
class GradientStop extends DomElement {
    var offset:String;
    var opacity:String;
    var color:String;
    public function new(offset:Float=0, opacity:Float=1, color:String='#000') {
        super('stop');
        this.offset = Std.string(offset);
        this.opacity = Std.string(opacity);
        this.color = color;
        addAttr(['offset'=>this.offset+'%']);
        addAttr(['stop-opacity'=>this.opacity]);
        addAttr(['stop-color'=>this.color]);
    }
}
