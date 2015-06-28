package mthk.php.dom.elements.image.svg;
import mthk.php.dom.elements.core.DomElement;
class Gradient extends DomElement
{
    public var x1=0.0;
    public var y1=0.0;
    public var x2=0.0;
    public var y2=1.0;
    public var gradientUnits='objectBoundingBox';
    public var stops(default,set):Array<GradientStop>;
    function set_stops(v)
    {
        stops = v;
        for(s in stops)
            addChild(s);
        return stops;
    }


    public function new(name:String)
    {
        super(name);
        addAttr(['x1'=> Std.string(x1)]);
        addAttr(['y1'=> Std.string(y1)]);
        addAttr(['x2'=> Std.string(x2)]);
        addAttr(['y2'=> Std.string(y2)]);
    }

    public function getDefinitionImage(id:String):Image
    {
        var s:Svg;
        var d:Defs;
        var r:Rect;
        var i:Image;
        var g:Gradient;
        var gid:String = 'g_'+Math.random();
            gid = gid.split('.').join('');
        s = new Svg();
        d = new Defs();
        g = this;//new LinearGradient([new GradientStop(0,.25,'#F90'),new GradientStop(100,0,'#000')]);
        g.id = gid;
        d.addChild(g);
        s.addChild(d);
        r = new Rect('#'+gid);
        s.addChild(r);

        i = new Image();
        i.id = id;
        i.svgSrc(s);

        return i;
    }
}
