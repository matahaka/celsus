package celsus.js;

import mthk.google.js.maps.GmLatLngBounds;
import mthk.google.js.maps.GmRectangle;
import mthk.js.core.EventHub;
import mthk.php.dom.elements.Div;
import js.Browser;
import js.html.DOMElement;
import mthk.google.GMap;
import mthk.google.js.GoogleMap;
import mthk.google.js.maps.GmMarker;
import mthk.google.js.maps.GmInfoWindow;
import mthk.google.js.maps.GmRectangle;
import mthk.google.js.maps.GmLatLng;
import mthk.google.js.maps.GmRectangle.GmRectangleOptions;
import celsus.php.body.svg.IconMapMarker;
import celsus.php.body.Page;

class PageContact
{
    var root:DOMElement;
    var btn:DOMElement;
    var gmap:GMap;
    var mrk:GmMarker;
    var rmrk:GmMarker;
    var win:GmInfoWindow;
    public function new()
    {
        root = Browser.document.getElementById('kontakt');
        btn = Browser.document.getElementById('contact-map-menu');
        gmap = new GMap('kontakt-mapa-cont');
        gmap.onload = render;
        gmap.load();
    }
    function render():Void
    {
        gmap.mapLatLang = GoogleMap.castLatLng(52.1568608,21.0786223);
        gmap.onRenderReady = onRender;
        gmap.renderMap(cast {
            zoom:15,
            center:gmap.mapLatLang,
            mapTypeId:GoogleMapTypeId.ROADMAP,
            backgroundColor:"#000",
            scrollwheel:true,
            disableDefaultUI:true,
            disableDoubleClickZoom:true,
            styles:getStyle()
        });

        mrk = gmap.renderMarker('MARKER',null,{
            path: IconMapMarker.gmap,
            fillColor: '#FF8800',
            fillOpacity: 1,
            scale: 0.05
        });
        GoogleMap.addListener(mrk, 'click', openWindow);
        GoogleMap.addListener(gmap.map, 'click', dropMarker);

        GoogleMap.addListener(gmap.map, 'bounds_changed', boundsChanged);
    }
    function onRender(?e:Dynamic):Void
    {
        if(win == null) {
            var logoBig = new Div();
            logoBig.addClass("logo-img-big");
            win = gmap.renderWindow(logoBig.print()+Page.addressSpan().print());
            GoogleMap.addListener(win,'domready',onOpenWindow);
            openWindow();
        }
    }
    function onOpenWindow(?e:Dynamic):Void
    {
        trace('onOpenWindow($e)');
        //var b = gmap.calcInfoWindowBounds(win);
        //trace('WIN',b);
        //drawRect(b);
    }
    function openWindow(?e:Dynamic):Void
    {
        trace('openWindow($e)');
        //gmap.setCenter();
        //if(win.)
            win.open(gmap.map,mrk);
    }
    function boundsChanged(?e:Dynamic):Void
    {
        trace('boundsChanged($e)');
        var mb = gmap.map.getBounds();
        trace('${mb}');
    }
    function dropMarker(?e:Dynamic):Void
    {
        if( rmrk == null)
            rmrk = gmap.renderMarker('MARKER',e.latLng,{
                path: IconMapMarker.gmap,
                fillColor: '#8800FF',
                fillOpacity: 1,
                scale: 0.05
            });
        else
            rmrk.setPosition(e.latLng);

        //var b = gmap.calcInfoWindowBounds(win);
        var  b = GoogleMap.castBounds(
            gmap.mapLatLang,
            cast e.latLng
        );
        trace('WIN',b);
        drawRect(b);
    }

    var rectO:GmRectangleOptions;
    var rect:GmRectangle;
    function drawRect(b:GmLatLngBounds):Void
    {

        if(rectO == null)
            rectO = cast {
                map:gmap.map,bounds:b,
                fillColor:"#FF0000",fillOpacity:0.5,
                strokeWeight : 2,strokeColor:"#FF0000",strokeOpacity : 0.8
            };
        else
            rectO.bounds = b;

        if(rect == null)
            rect = GoogleMap.castRectangle(rectO);
        else
            rect.setOptions(rectO);

    }
    function getStyle():Array<Dynamic>{
        var zw = new Array<Dynamic>();
        zw.push(GoogleMap.castStyle("all","labels",[{visibility:"on"}]));
        zw.push(GoogleMap.castStyle("all","labels.text.fill",[{saturation:36},{color:"#000000"},{lightness:40}] ) );
        zw.push(GoogleMap.castStyle("all","labels.text.stroke",[{visibility:"on"},{color:"#000000"},{lightness:16}] ));
        zw.push(GoogleMap.castStyle("all","labels.icon",[{visibility:"off"}] ));
        zw.push(GoogleMap.castStyle("administrative","geometry.fill",[{color:"#000000"},{lightness:20}] ));
        zw.push(GoogleMap.castStyle("administrative","geometry.stroke",[{color:"#000000"},{lightness:17},{weight:1.2}] ));
        zw.push(GoogleMap.castStyle("administrative.country","labels.text.fill",[{color:"#ff8800"}] ));
        zw.push(GoogleMap.castStyle("administrative.locality","labels.text.fill",[{color:"#c4c4c4"}] ));
        zw.push(GoogleMap.castStyle("administrative.neighborhood","labels.text.fill",[{color:"#ff8800"}] ));
        zw.push(GoogleMap.castStyle("landscape","geometry",[{color:"#000000"},{lightness:20}] ));
        zw.push(GoogleMap.castStyle("poi","geometry",[{color:"#000000"},{lightness:21},{visibility:"on"}] ));
        zw.push(GoogleMap.castStyle("poi.business","geometry",[{visibility:"on"}] ));
        zw.push(GoogleMap.castStyle("road.highway","geometry.fill",[{color:"#ff8800"},{lightness:"0"}] ));
        zw.push(GoogleMap.castStyle("road.highway","geometry.stroke",[{visibility:"off"}] ));
        zw.push(GoogleMap.castStyle("road.highway","labels.text.fill",[{color:"#ffffff"}] ));
        zw.push(GoogleMap.castStyle("road.highway","labels.text.stroke",[{color:"#ff8800"}] ));
        zw.push(GoogleMap.castStyle("road.arterial","geometry",[{color:"#000000"},{lightness:18}] ));
        zw.push(GoogleMap.castStyle("road.arterial","geometry.fill",[{color:"#575757"}] ));
        zw.push(GoogleMap.castStyle("road.arterial","labels.text.fill",[{color:"#ffffff"}] ));
        zw.push(GoogleMap.castStyle("road.arterial","labels.text.stroke",[{color:"#2c2c2c"}] ));
        zw.push(GoogleMap.castStyle("road.local","geometry",[{color:"#000000"},{lightness:16}] ));
        zw.push(GoogleMap.castStyle("road.local","labels.text.fill",[{color:"#999999"}] ));
        zw.push(GoogleMap.castStyle("transit","geometry",[{color:"#000000"},{lightness:19}] ));
        zw.push(GoogleMap.castStyle("water","geometry",[{color:"#000000"},{lightness:17}] ));
        return (zw);
    }
}
