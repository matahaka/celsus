package celsus;

#if js

import mthk.php.dom.elements.Base;
import mthk.php.dom.Body;
import celsus.PageData;
import mthk.js.dom.Document;
import mthk.js.dom.Loader;
import mthk.js.dom.Window;
import celsus.js.Manager;
import celsus.js.PageContact;
import mthk.js.core.Scroller;

#elseif php
import mthk.php.dom.elements.Script;
import mthk.php.dom.elements.Div;
import mthk.php.dom.data.HeadData;
import mthk.php.dom.Html;
import celsus.php.menus.ScrollMenu;
import celsus.php.body.svg.Definitions;
import celsus.php.body.svg.PageShadow;

#end

class HTML {
    static function main() {
        new HTML();
    }
    public function new() {
#if php
        html();
#elseif js
        javascript();
#end
    }
/////////////////////////////
#if php
    function html():Void
    {
        var html = new Html();
        html.addClass('bg-pattern');
//        html.htmlClass = 'bg-pattern';

        html.head.title = 'hx.Celsus';
        html.head.base = '/';
        html.head.metaTags.push(["httpequiv"=>"Content-Type", "content"=>"text/html; charset=utf-8"]);
        html.head.metaTags.push(["httpequiv"=>"X-UA-Compatible", "content"=>"IE=edge"]);
        html.head.metaTags.push(["name"=>"viewport", "content"=>"width=device-width,height=device-height,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"]);
        html.head.metaTags.push(["name"=>"description", "content"=>"CELSUS"]);
        html.head.metaTags.push(["name"=>"author", "content"=>"dlugolecki.tk"]);
        html.head.linkTags.push("src/css/index.css");
        html.head.linkTags.push("src/css/menu-page.css");
        html.head.linkTags.push("src/css/menu-scroll.css");
        html.head.linkTags.push("src/css/pages.css");
        //var body = '<base href="/" />';// /hx/celsus/www/
        var svgDef = new Definitions();
//        var divSvgCon = new Div("svg-con");
//        divSvgCon.setSize(0,0);
//        divSvgCon.addClass("unselectable");
//        divSvgCon.addChild(svgDef);
//        body += divSvgCon.print();

        svgDef.id = 'svg-con';
        svgDef.addClass("unselectable");
        svgDef.addAttr(['style'=>'display:none']);
        html.body.addChild(svgDef);

        var divBgCon = new Div("bg-con");
        divBgCon.addClass("unselectable");
        html.body.addChild(divBgCon);

        var divShadowTop = new Div();
        divShadowTop.addClass("shadow");
        divShadowTop.addClass("shadowtop");
        divShadowTop.addChild(new PageShadow('top'));
        html.body.addChild(divShadowTop);

        var divShadowBottom = new Div();
        divShadowBottom.addClass("shadow");
        divShadowBottom.addClass("shadowbot");
        divShadowBottom.addChild(new PageShadow('bottom'));
        html.body.addChild(divShadowBottom);

        var divPages = new Div("pages");
        var pd:PageData = new PageData();
        pd.addPagesTo(divPages);

        var menuScroll = new ScrollMenu();

        var divPagesCon = new Div("pages-con");
            divPagesCon.addClass("unselectable");
            divPagesCon.addChild(divPages);
            divPagesCon.addChild(menuScroll);

        html.body.addChild(divPagesCon);
        html.body.addChild(new Script("/hx/celsus/www/src/js/celsus.js"));
       //html.body.addChild(new Script("https://maps.googleapis.com/maps/api/js?language=pl&callback=window.gmap.loaded"));
        //Sys.println(html.printChildrenTree(html));
        Sys.print(html.print());
    }
#elseif js
    public var win:Window;
    public var doc:Document;
    var ldr:Loader;
    public var mgr:Manager;
    var scrl:Scroller;
    var kontakt:PageContact;
    function javascript():Void
    {
        new mthk.js.firefox.FixSvgUseXlinkHrefWithBaseTagProblem('pages-con');
        trace('.javascript()');

        win = new Window();
        win.onload = pageLoaded;
        //doc = Document.getInstance();
        //ldr = Loader.getInstance();
    }
    function pageLoaded():Void
    {
        mgr = new Manager();
        mgr.setSize(win.w,win.h);
        mgr.collect();

        scrl = new Scroller();
        scrl.onup = mgr.prev;
        scrl.ondown = mgr.next;
        scrl.ison = true;

        /*mgr.onload = jsLoaded;
        mgr.load();*/

        kontakt     = new PageContact();


/*preloader   = new Preloader();
        start       = new Page('start');
        kancelaria  = new Page('kancelaria');
        uslugi  = new Page('uslugi');
        wspolpraca  = new Page('wspolpraca');
        kontakt     = new Page('kontakt');
        manager = Manager.getInstance();
        manager.add(preloader);
        manager.add(start);
        manager.add(kancelaria);
        manager.add(uslugi);
        manager.add(wspolpraca);
        manager.add(kontakt);*/
//        manager.show(startPage);
// preloader.show();

    }
    function jsLoaded():Void
    {
        trace('.jsLoaded()');
        scrl.ison = true;
    }
#end
}