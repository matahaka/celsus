package mthk.js.dom;
import mthk.js.core.EventHub;
import js.html.Window;
import js.html.Event;
import js.html.HashChangeEvent;
class Window {
    public var onresize:Void->Void;
    public var onload:Void->Void;
    public var nativ:js.html.Window;
    public var w:UInt;
    public var h:UInt;
    var istouchable = false;

    public function new() {
        nativ = js.Browser.window;
        istouchable = (Reflect.field(nativ,'ontouchstart')!=null);
        EventHub.addEventListener(nativ,'load',onLoad);
        EventHub.addEventListener(nativ,'resize',onResize);
        //EventHub.addEventListener(nativ,'hashchange',onHashChange);
        getsize();
    }
    /*function onHashChange(e:HashChangeEvent):Void
    {
        e.preventDefault();
        e.stopImmediatePropagation();
        e.stopPropagation();
        //trace('onHashChange',js.Browser.location.hash);
    }*/
    function onLoad(e:Event):Void{
        getsize();
        if(onload!=null)
            onload();
    }
    function onResize(?e:Event):Void{
        getsize();
        if(onresize!=null)
            onresize();
        //if(nativ.pgmgr){nativ.pgmgr.position();}
        //if(nativ._address){nativ._address.onchange(0);}
    }

    public function getsize():Void
    {
        w = cast Math.max(200, nativ.innerWidth);
        h = cast Math.max(200, nativ.innerHeight);
    }


}
