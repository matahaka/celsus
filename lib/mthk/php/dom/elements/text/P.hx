package mthk.php.dom.elements.text;
import mthk.php.dom.elements.core.DomElement;
class P extends DomElement{

    public function new(?cont:String=null) { super('p'); if(cont!=null)this.innerHTML=cont;}

}
