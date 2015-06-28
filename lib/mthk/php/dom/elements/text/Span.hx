package mthk.php.dom.elements.text;
import mthk.php.dom.elements.core.DomElement;
class Span extends DomElement{

    public function new(?cont:String=null) { super('span'); if(cont!=null)this.innerHTML=cont;}

}
