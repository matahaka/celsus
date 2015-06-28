package celsus.js;

import js.html.Event;
import mthk.js.core.EventHub;
import js.html.DOMElement;

class Menu
{
    public var root:DOMElement;
    public var y:Int;
    var buttons:Array<DOMElement>;
    var onclick:String->Void;
    public function new(root:DOMElement,onclick:String->Void)
    {
        this.root = root;
        this.onclick = onclick;
        buttons = cast this.root.getElementsByTagName('a');
        for(b in buttons){
            var a = b.getAttribute('href').split("#");
            b.title = a[a.length-1];
            b.removeAttribute('href');
            EventHub.addEventListener(b,'click',click);
            b.style.cursor = 'pointer';
        }
    }
    function click(e:Dynamic):Void
    {
        onclick(e.target.title);
    }


}
