package mthk.google;
import celsus.php.body.svg.IconMapMarker;
import mthk.php.dom.elements.Div;
import celsus.php.body.Page;
import mthk.google.js.GoogleMap;
import mthk.google.js.GoogleMap.GoogleMapObject;
import mthk.google.js.GoogleMap.GoogleMapLatLng;
import mthk.google.js.GoogleMap.GoogleMapTypeId;
import mthk.google.js.GoogleMap.GoogleMapMarker;
import mthk.google.js.GoogleMap.GoogleMapInfoWindow;
import js.Browser;
import js.html.HTMLDocument;
class GMap {

    var trg:js.html.DOMElement;
    public var map:GoogleMapObject;
    public var mapLatLang:GoogleMapLatLng;
    //public var mapOptions:Dynamic;

    var marker:GoogleMapMarker;
    var infoWindow:GoogleMapInfoWindow;

    public function new(domId:String)
    {
        trg = Browser.document.getElementById(domId);
        trace('GMap(${trg})');
        //var win:Dynamic = cast ;
        Reflect.setField(Browser.window,'gmap',this);
    }
    public function load():Void
    {
        var doc:HTMLDocument = Browser.document;
        var scr = doc.createScriptElement();
            scr.type = 'text/javascript';
            scr.src = 'https://maps.googleapis.com/maps/api/js?language=pl&callback=window.gmap.loaded';
        doc.body.appendChild(scr);
    }
    dynamic public function onload():Void {}
    public function setCenter():Void {
        this.map.setCenter(mapLatLang);
    }
    function loaded():Void
    {
        trace('GMap: maps-API has been loaded, ready to use');
        onload();
//var btn = Browser.document.getElementById('');
/*
        mapLatLang = GoogleMap.castLatLng(52.1568608,21.0786223);
        var mapOptions = {
            zoom:15,
            center:mapLatLang,
            mapTypeId:GoogleMapTypeId.ROADMAP,
            backgroundColor:"#000",
            scrollwheel:true,
            disableDefaultUI:true,
            disableDoubleClickZoom:true,
            styles:getStyle()
        };
        map = GoogleMap.castMap(trg, mapOptions);
        //map.panBy(100,0);
        renderMarker();
        renderWindow();
        openWindow();
        */
    }

    public function renderMap(mapOptions:Dynamic):Void
    {
        this.map = GoogleMap.castMap(trg, mapOptions);
    }
    public function renderMarker(title:String,?position:GoogleMapLatLng,icon:Dynamic):GoogleMapMarker
    {
        return GoogleMap.castMarker({
            position: position==null?mapLatLang:position,
            map: this.map,
            icon: icon,
            title: title
        });
    }
    public function renderWindow(contentHtml:String):GoogleMapInfoWindow
    {
        return GoogleMap.castInfoWindow({content:contentHtml});
    }
    /*
    function renderMarker():Void
    {
        var goldStar = {
            path: IconMapMarker.gmap,
            fillColor: '#FF8800',
            fillOpacity: 1,
            scale: 0.05
        }
        marker = GoogleMap.castMarker({
            position:mapLatLang,
            map: map,
            icon: goldStar//,
            //title: 'Uluru (Ayers Rock)'
        });
        //trace('MARKER');
        //trace( marker.getIcon() );
    }
    function renderWindow():Void
    {
        var logoBig = new Div();
            logoBig.addClass("logo-img-big");
        infoWindow = GoogleMap.castInfoWindow({content: logoBig.print()+Page.addressSpan().print()});
        GoogleMap.addListener(marker, 'click', openWindow);
    }

    function openWindow():Void{
        trace('openWindow()');
        infoWindow.open(map,marker);
    }


    */
}
