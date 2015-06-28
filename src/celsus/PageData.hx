package celsus;
import mthk.php.dom.elements.core.DomElement;
import celsus.php.pages.PageStart;
import celsus.php.pages.PageKancelaria;
import celsus.php.pages.PageUslugi;
import celsus.php.pages.PageWspolpraca;
import celsus.php.pages.PageKontakt;
import haxe.ds.StringMap;

@:enum abstract CelsusPageNames(String)
{
    var start = 'START';
    var kancelaria = 'KANCELARIA';
    var uslugi = 'USŁUGI';
    var wspolpraca = 'WSPÓŁPRACA';
    var kontakt = 'KONTAKT';
    public static function map():StringMap<CelsusPageNames> return [
        'start' => start,
        'kancelaria' => kancelaria,
        'uslugi' => uslugi,
        'wspolpraca' => wspolpraca,
        'kontakt' => kontakt
    ];
}

class PageData
{
    //public static var start = 'START';
////
    static public var baseURL:String = '/hx/celsus/www/';
    public var pages(get,null):StringMap<String>;
    function get_pages() {
        if(pages==null){
            //pages = ['start'=>PageData.start];
            var pm = CelsusPageNames.map();
            for (k in pm.keys())
                pages.set(k,cast pm.get(k));
        }
        return pages;
    }
/*    public var pagesCount(get,null):Int;
    function get_pagesCount() {
        if(pagesCount==null){
            pagesCount = 0;//start page
            var pm = CelsusPageNames.map();
            for (k in pm.keys())
                pagesCount++;
        }
        trace('pagesCount:',pagesCount);
        return pagesCount;
    }*/
////
    public function new() {

    }
////
    public function addPagesTo(trg:DomElement) {
        for(cp in CelsusPageNames.map())
            trg.addChild(getPageClass(cp));
    }
    function getPageClass(v:CelsusPageNames):DomElement {
        switch(v){
            case CelsusPageNames.start:         return new PageStart();
            case CelsusPageNames.kancelaria:    return new PageKancelaria();
            case CelsusPageNames.uslugi:        return new PageUslugi();
            case CelsusPageNames.wspolpraca:    return new PageWspolpraca();
            case CelsusPageNames.kontakt:       return new PageKontakt();
        }
    }
////

}

