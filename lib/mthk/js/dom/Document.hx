package mthk.js.dom;

class Document
{

    private static var instance:Document;
    public static inline function getInstance()
    {
        if (instance == null)
            return instance = new Document();
        else
            return instance;
    }


    public var nativ:js.html.HTMLDocument;
    public var html:js.html.DOMElement;
    public var body:js.html.Element;
    var istouchable = false;

    public function new()
    {
        nativ = js.Browser.document;
        html =  nativ.documentElement;
        body =  nativ.body;
    }

    public function setStyle(nme:String,val:String):Void
    {
        html.style.setProperty(nme,val);
        body.style.setProperty(nme,val);
    }

}
