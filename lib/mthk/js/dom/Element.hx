package mthk.js.dom;
import js.Browser;
import js.html.DOMElement;
class Element
{
    public var id:String;
    public var root:DOMElement;
    public function new(id:String) {
        this.id = id;
        root = Browser.document.getElementById(id);
    }

    public function show():Void
    {
        root.style.display = 'initial';
        trace('show $id');
    }
    public function hide():Void
    {
        root.style.display = 'none';
        trace('hide $id');
    }

    public function setStyle(nme:String,val:String,?important:Bool=false):Void
    {
        root.style.setProperty(nme,val,important?' !important':'');
    }

}
