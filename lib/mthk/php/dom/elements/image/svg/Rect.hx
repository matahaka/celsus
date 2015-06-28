package mthk.php.dom.elements.image.svg;
import mthk.php.dom.elements.core.DomElement;
class Rect extends DomElement{

    var width='100%';
    var height='100%';
    var fillUrl='';

    public function new(fillUrl='',width='100%',height='100%') {
        super('rect');

        this.width = width;
        addAttr(['width'=> this.width]);

        this.height = height;
        addAttr(['height'=> this.height]);

        this.fillUrl = fillUrl;
        addAttr(['fill'=> 'url('+this.fillUrl+')']);

    }
}
