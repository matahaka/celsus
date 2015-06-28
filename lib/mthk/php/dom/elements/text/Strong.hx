package mthk.php.dom.elements.text;
import mthk.php.dom.elements.core.DomElement;
class Strong extends DomElement{

    public function new(?cont:String=null) { super('strong'); if(cont!=null)this.innerHTML=cont;}

}
