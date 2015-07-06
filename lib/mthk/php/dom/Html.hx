package mthk.php.dom;
import mthk.php.dom.data.HeadData;
import mthk.php.dom.elements.core.DomElement;
class Html extends DomElement {

    public function printChildrenTree(trg:DomElement):String
    {
        var txt = '<ul>';
        for(child in trg.children){
            if(child.children!=null)
                txt += ('<li> ${child.name} : ${child.id} : ${printChildrenTree(child)} </li>');
            else
                txt += ('<li> ${child.name} : ${child.id} : ${child.id} </li>');
        }
        txt += '</ul>';
        return txt;
    }
    /*private static var instance:Html;
    public static inline function getInstance()
    {
        if (instance == null)
            return instance = new Html();
        else
            return instance;
    }*/
    public var head:HeadData;
    public var body:Body;
    public function new(){
        head = new HeadData();
        body = new Body();
        super('html');
        addChild(body);
    }
    override public function print():String
    {

        var zw = '<!DOCTYPE html>\n';
        zw += '<'+name;
        zw += printClasses();
        zw += printAttributes();
        zw += '>';

        if(head!=null)
            zw+=head.print();

        zw += printChildren();

        zw += '</'+name+'>\n';
        return zw;
    }
   /* public var head:String;
    public var body:String;
    public var htmlClass:String;
    public function print(): String
    {
        return '<!DOCTYPE html><html class="'+htmlClass+'">'+head+'<body>'+body+'</body></html>';
    }*/




}
