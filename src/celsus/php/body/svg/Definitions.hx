package celsus.php.body.svg;
import mthk.php.dom.elements.image.svg.Polygon;
import mthk.php.dom.elements.image.svg.Path;
import mthk.php.dom.elements.image.svg.Image;
import mthk.php.dom.elements.image.svg.Use;
import mthk.php.dom.elements.image.svg.Rect;
import mthk.php.dom.elements.image.svg.Defs;
import mthk.php.dom.elements.image.svg.GradientStop;
import mthk.php.dom.elements.image.svg.LinearGradient;
import mthk.php.dom.elements.image.svg.Rect;
import mthk.php.dom.elements.image.svg.SvgG;
import mthk.php.dom.elements.image.Svg;
class Definitions extends Svg {
    public function new() {

//        innerHTML = '<defs>';
//        var svgGradTop = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100' width='100%' height='100%'><defs><linearGradient id='shadow-top' x1='0' y1='0' x2='0' y2='1' gradientUnits='objectBoundingBox'><stop offset='0' stop-opacity='1' stop-color='#000' /><stop offset='1' stop-opacity='0' stop-color='#000'/></linearGradient></defs><rect width='100%' height='100%' fill='url(#shadow-top)'></rect></svg>";
//        innerHTML += '<image id="shadow-top" width="100%" height="100%" xlink:href="data:image/svg+xml;utf8,'+svgGradTop+'"/>';
////        var svgGradBottom = "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100' width='100%' height='100%'><defs><linearGradient id='shadow-top' x1='0' y1='0' x2='0' y2='1' gradientUnits='objectBoundingBox'><stop offset='0' stop-opacity='0' stop-color='#000' /><stop offset='1' stop-opacity='1' stop-color='#000'/></linearGradient></defs><rect width='100%' height='100%' fill='url(#shadow-top)'></rect></svg>";
////        innerHTML += '<image id="shadow-bottom" width="100%" height="100%" xlink:href="data:image/svg+xml;utf8,'+svgGradBottom+'"/>';
//        innerHTML += '</defs>';
//

        var gid:String;
        var r:Rect;
        var lg:LinearGradient;
        var d = new Defs();

        //d.innerHTML = '<rect id="shadow-top" fill="#F00" width="100%" height="100%" />';
        //d.innerHTML += '<rect id="shadow-bottom" fill="#00F" width="100%" height="100%" />';

        lg = new LinearGradient();
        lg.stops = [new GradientStop(0,0.75,'#000'),new GradientStop(100,0,'#000')];
        d.addChild(lg.getDefinitionImage('shadowtop'));

        lg = new LinearGradient();
        lg.stops = [new GradientStop(0,0,'#000'),new GradientStop(100,0.75,'#000')];
        d.addChild(lg.getDefinitionImage('shadowbottom'));


        /*var iconMapMarker = new SvgG('iconMapMarker');
            iconMapMarker.addAttr(["fill"=>"#F80"]);
        iconMapMarker.addChild(new Path("M50.409,7.356c-20.671,0-37.429,16.758-37.429,37.429c0,20.67,16.758,37.428,37.429,37.428s37.429-16.758,37.429-37.428   C87.838,24.114,71.08,7.356,50.409,7.356z M50.409,67.418c-12.499,0-22.632-10.135-22.632-22.633   c0-12.499,10.133-22.633,22.632-22.633s22.632,10.134,22.632,22.633C73.041,57.283,62.908,67.418,50.409,67.418z"));
        iconMapMarker.addChild(new Polygon("58.909,77.922 50.408,92.645 41.91,77.922"));
        d.addChild(iconMapMarker);*/
        var iconMapMarker = new IconMapMarker();
        d.addChild(iconMapMarker.content);
        addChild(d);




        /*var i = new Image();
            i.src('#shadow-top');
        addChild(i);*/

        //innerHTML += '<use xlink:href="#shadow-top" width="100%" height="100%"></use>';
        //innerHTML = '<use xlink:href="#shadow-$type" width="100%" height="100%"></use>';
       /* var s:Svg;
        var d:Defs;
        var r:Rect;
        var i:Image;
        var lg:LinearGradient;

        s = new Svg();
            d = new Defs();
            lg= new LinearGradient([new GradientStop(0,.25,'#F90'),new GradientStop(100,0,'#000')]);
            lg.id = 'g';
            d.addChild(lg);
        s.addChild(d);
        r = new Rect('#g');
        s.addChild(r);
        i = new Image();
            i.id = 'shadow-top';
            i.showSvg(s);
        addChild(i);

        s = new Svg();
        d = new Defs();
        lg= new LinearGradient([new GradientStop(0,0,'#000'),new GradientStop(100,0.25,'#F90')]);
        lg.id = 'g';
        d.addChild(lg);
        s.addChild(d);
        r = new Rect('#g');
        s.addChild(r);
        i = new Image();
        i.id = 'shadow-bottom';
        i.showSvg(s);
        addChild(i);*/


        super('0','0','0 0 100 100','none',true);

    }
}