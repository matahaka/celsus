package mthk.php.dom.elements.text;
import mthk.php.dom.elements.core.DomElement;
class A extends DomElement
{
    public function new(?href:String,?innerHTML:String) {
        super('a');
        if(href!=null && href!='')
            addAttr(['href'=>href]);
        if(innerHTML!=null) this.innerHTML=innerHTML;
    }

}
