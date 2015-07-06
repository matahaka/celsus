package mthk.php.dom.elements.core;
import haxe.ds.StringMap;
class DomElement {

   /* public static function fromString(html:String):DomElement
    {
        trace('fromString',html);
        var zw = new DomElement('div');
        return zw;
    }*/
    public var name:String;
    public var id:String;
    public var innerHTML:String;
    //var css:StringMap<Dynamic>;
    var attr:Array<StringMap<String>>;
    var events:StringMap<Dynamic->Void>;
    var children:Array<DomElement>;
    var classes:Array<String>;

    public function new(name:String)
    {
        /*attr = [];
        children = [];
        classes = [];*/
        this.name = name;
    }
    public function print():String
    {
        var zw = '';
            zw += '<'+name;
                zw += printIdAttribute();
                zw += printClasses();
                zw += printAttributes();
            zw += '>';
            zw += printChildren();
            zw += '</'+name+'>';
        return zw;
    }
/*
    public function addEventListener(event:String,listener:Dynamic->Void):Void
    {
        if(events==null)
            events = new StringMap<Dynamic->Void>;

        events.set(event,listener);
    }
    public function removeEventListener(event:String,listener:Dynamic->Void):Void
    {

    }*/

    public function setSize(width:UInt,height:UInt):Void
    {
        addAttr(["width"=>Std.string(width)]);
        addAttr(["height"=>Std.string(height)]);
    }
    public function addAttr(domAttribute:StringMap<String>):Void
    {
        if(attr==null)
            attr = [];
        attr.push(domAttribute);
    }
    public function addClass(cssClass:String):Void
    {
        if(classes==null)
            classes = [];
        classes.push(cssClass);
    }
    public function addChild(domElement:DomElement):Void
    {
        if(children ==null)
            children = [];
        children.push(domElement);
    }
    function printChildren():String
    {
       var zw = '';
        if(children!=null){
        var cl = children.length;
            if(cl>0){
                for(i in 0...cl){
                    zw += children[i].print();
                }
            }//else innerHTML = 'DomElement.printChildren(ERROR_1)';
        }//else innerHTML = 'DomElement.printChildren(ERROR_2)';
        if(innerHTML==null)
            innerHTML = zw;
        else
            zw = innerHTML;
        return zw;
    }


    function printClasses():String
    {
        var zw = '';
        if(classes!=null&&classes.length>0){
            zw = ' class="'+classes.join(' ')+'"';
        }
        return zw;
    }
    function printIdAttribute():String
    {
        var zw = '';
        if(id!=null)
            zw = ' id="'+id+'"';
        return zw;
    }
    function printAttributes():String
    {
        var zw = '';
        if(attr!=null){
            var al = attr.length;
            if(al>0){
                var am:StringMap<String>;
                for(i in 0...al){
                    am = attr[i];
                    for(mKey in  am.keys())
                        zw += ' '+mKey+'="'+am.get(mKey)+'"';
                }
            }
        }
        return zw;
    }


}
