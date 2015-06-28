package mthk.php.dom.elements.text;
import mthk.php.dom.elements.core.DomElement;
class Small extends DomElement{

    public function new(?cont:String=null) { super('small'); if(cont!=null)this.innerHTML=cont;}

}
