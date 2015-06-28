package mthk.js.core;

import js.html.WheelEvent;

class Scroller {
    public var ison = false;

    public function new() {
        hideScrollBar();

        var win = js.Browser.window;
        //win.onwheel = onscroll;
        EventHub.addEventListener(win,'wheel',onscroll);
    }
    public dynamic function onup():Void
    {
        //window.events.actions.ev(window.events.wheel.name,'up');
        trace('onscroll UP');
    }
    public dynamic function ondown():Void
    {
        //window.events.actions.ev(window.events.wheel.name,'down');
        trace('onscroll DOWN');
    }
    function onscroll(e:WheelEvent):Void
    {
        if(ison == true){
            trace('onscroll');
            e.stopImmediatePropagation();
            e.stopPropagation();
            e.preventDefault();
            if(e.deltaY>0)
                ondown();
            else if(e.deltaY<0)
                onup();
            return;
        }
    }
    function hideScrollBar():Void
    {
        js.Browser.document.documentElement.style.setProperty('overflow','hidden');
        js.Browser.document.body.style.setProperty('overflow','hidden');
    }
}
