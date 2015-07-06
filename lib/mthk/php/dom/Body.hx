package mthk.php.dom;
import mthk.php.dom.elements.core.DomElement;
class Body extends DomElement  {

    public function new()
    {
        super('body');
    }
    override public function print():String
    {
        var zw = '';
        zw += '<'+name;
        zw += printClasses();
        zw += printAttributes();
        zw += '>';
        zw += printChildren();
        zw += '</'+name+'>';
        return zw;
    }
   /* public function print(): String
    {
        return '<body>'+body+'</body>';
    }*/
}
