package mthk.php.dom.elements.text;
import mthk.php.dom.elements.core.DomElement;
class A extends DomElement
{
    public function new(href:String,?cont:String=null) {
        super('a');
        addAttr(['href'=>href]);
        if(cont!=null) this.innerHTML=cont;
    }

}
