package celsus.js;

import js.html.CSSStyleDeclaration;
import haxe.ds.StringMap;
import celsus.PageData.CelsusPageNames;
import js.html.DOMElement;
import motion.Actuate;

class Manager {
    public var totalPagesNumber = -1;
    public var actualPageIdx = -1;
    var trg:js.html.DOMElement;
    var scrollbar:js.html.DOMElement;
    var w:UInt;
    var h:UInt;
    var pd:PageData;
    var pgs:Array<Page>;
    var mnus:Array<Menu>;
    var pgsPos = { x:0, y:0 };
    var scrollbarPos = { x:0, y:0 };
    public function new()
    {
        pd = new PageData();
        trg = js.Browser.document.getElementById('pages');
        scrollbar = js.Browser.document.getElementById('scroll-bar');
        trg.style.top = '0';
        scrollbar.style.marginTop = '0';
    }
    public function setSize(w:UInt,h:UInt):Void
    {
        this.w = w;
        this.h = h;
    }
    public function collect():Void
    {
        collectPages();
        collectMenus();
    }
    function collectPages():Void
    {
        pgs = new Array<Page>();
        var dompgs = js.Browser.document.getElementsByClassName('page');
        totalPagesNumber = 0;
        actualPageIdx = 0;
        var pg:Page;
        for(p in dompgs){
            pg = new Page();
            pg.root = p;
            pg.y = Std.int(totalPagesNumber*h);
            pgs.push(pg);
            totalPagesNumber++;
        }
        trace('collectPages($totalPagesNumber)');
        var actPge:String = js.Browser.location.hash;
        trace('actPge=($actPge)');
        if(actPge!=null){
            actPge=actPge.split('#/').join('');
            click(actPge);
        }
    }
    function collectMenus():Void
    {
        mnus = new Array<Menu>();
        var dommnus = js.Browser.document.getElementsByClassName('menu');
        for(m in dommnus){
            mnus.push(new Menu(m,click));
        }
       trace('collectMenus()');
    }
    function click(id:String):Void
    {
        trace('onclick($id)');
        for(i in 0...pgs.length)
            if(pgs[i].id==id)
                scrollIntoView(i);
    }



    public dynamic function onload():Void {    }

    public function load():Void
    {
        loaded();
    }
    function loaded():Void
    {
        onload();
    }

//    public function add(el:Page):Void{
//        trace('add',el);
//        elements.push(el);
//    }

//    public function show(id:String):Void{
//        for(elmnt in elements){
//            if(elmnt.id==id)
//                elmnt.show();
//            else
//                elmnt.hide();
//        }
//    }

    public function prev():Void
    {
        var i = actualPageIdx-1;
        if(i < 0) i = 0;
        scrollIntoView(i);
    }
    public function next():Void
    {
        var i = actualPageIdx + 1;
        var m = (totalPagesNumber-1);
        if(i > m) i = m;
        scrollIntoView(i);
    }

    function scrollIntoView(idx:UInt):Void
    {
        if(idx != actualPageIdx){
            actualPageIdx = idx;
            animateScrollTo();
        }
    }

    function animateScrollTo():Void
    {
        Actuate.stop(scrollbarPos);
        Actuate.tween(scrollbarPos, 1, { y:((h/totalPagesNumber)*actualPageIdx) } ).onUpdate(animateScrollBarUpdate).onComplete(animateScrollBarUpdate);

        Actuate.stop(pgsPos);
        Actuate.tween(pgsPos, 1, { y:pgs[actualPageIdx].y } ).onUpdate(animatePageUpdate).onComplete(animatePageComplete);
    }

    function animateScrollBarUpdate():Void
    {
        scrollbar.style.marginTop = scrollbarPos.y + 'px';
    }
    function animatePageUpdate():Void
    {
        trg.style.top = '-' + pgsPos.y + 'px';
    }
    function animatePageComplete():Void
    {
        animatePageUpdate();
        js.Browser.location.hash = '/'+pgs[actualPageIdx].id;
    }


//    function scrollBy(delta:Int):Void
//    {
//        var tp = Std.parseInt(trg.style.top);
//        var ntop = (tp+delta);
//        if(ntop>0)
//            ntop = 0;
//        trg.style.top = ntop+'px';
//        //trace('next()',tp);
//    }


}
