package celsus.php.body;
import mthk.php.dom.elements.core.DomElement;
import String;
import mthk.php.dom.elements.Div;

class Page extends Div{
    var content:DomElement;
    public function new()
    {
        id = 'DomPage';
        super();
        addClass('page');
        content = new Div();
        content.addClass('content');
        renderContent();
        var con = new Div();
            con.addClass('con');
            var tent = new Div();
                tent.addClass('tent');
            if(content != null)
                tent.addChild(content);
            con.addChild(tent);
        addChild(con);
    }
    function renderContent():Void{}
}
