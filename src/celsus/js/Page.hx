package celsus.js;

import js.html.DOMElement;

class Page
{
    public var y:Int;
    public var id:String;
    public var root(default,set):DOMElement;
    function set_root(v)
    {
        root = v;
        id = root.id;
        return root;
    }
    public function new()
    {
    }
}
