package mthk.php.dom.elements.image.svg;
import mthk.php.dom.elements.core.DomElement;
class Use extends DomElement{

    var width='100%';
    var height='100%';
    var href='';

    public function new(href='',width='100%',height='100%') {
        super('use');

        this.href = href;
        addAttr(['xlink:href'=> this.href]);

        this.width = width;
        addAttr(['width'=> this.width]);

        this.height = height;
        addAttr(['height'=> this.height]);

    }
}
