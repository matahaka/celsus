package mthk.php.dom.elements.image.svg;
import haxe.crypto.Base64;
import haxe.crypto.BaseCode;
import mthk.php.dom.elements.core.DomElement;
class Image extends DomElement{
    var width='100%';
    var height='100%';
    public function new(width='100%',height='100%') {
        super('image');
        this.width = width;
        this.height = height;
        addAttr(['width'=>width ]);
        addAttr(['height'=>height ]);
    }
    public function src(xhref:String):Void
    {
        addAttr(['xlink:href'=>xhref ]);
    }
    public function svgSrc(svg:Svg):Void
    {
        var svgStr = svg.print();
        src('data:image/svg+xml;base64,'+ stringToBase64(svgStr));
        //svgStr = svgStr.split('"').join('\'');
        //src('data:image/svg+xml;utf8,'+ svgStr);
    }

    function stringToBase64(str:String):String {
        return untyped __call__('base64_encode',str);
    }


}
