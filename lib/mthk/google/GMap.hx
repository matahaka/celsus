package mthk.google;
import mthk.google.js.maps.GmLatLngBounds;
import celsus.php.body.svg.IconMapMarker;
import mthk.php.dom.elements.Div;
import celsus.php.body.Page;
import mthk.google.js.GoogleMap;
import mthk.google.js.maps.GmMap;
import mthk.google.js.maps.GmLatLng;
import mthk.google.js.maps.GmMarker;
import mthk.google.js.maps.GmInfoWindow;
import mthk.google.js.maps.GmProjection;
import js.Browser;
import js.html.HTMLDocument;
class GMap {

    var trg:js.html.DOMElement;
    public var map:GmMap;
    public var mapLatLang:GmLatLng;
    //public var mapOptions:Dynamic;

    var marker:GmMarker;
    var infoWindow:GmInfoWindow;

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
        mapLatLang = Gm.castLatLng(52.1568608,21.0786223);
        var mapOptions = {
            zoom:15,
            center:mapLatLang,
            mapTypeId:GmTypeId.ROADMAP,
            backgroundColor:"#000",
            scrollwheel:true,
            disableDefaultUI:true,
            disableDoubleClickZoom:true,
            styles:getStyle()
        };
        map = Gm.castMap(trg, mapOptions);
        //map.panBy(100,0);
        renderMarker();
        renderWindow();
        openWindow();
        */
    }

    var projection:GmProjection;
    var bounds:GmLatLngBounds;
    public function renderMap(mapOptions:GmMapOptions):Void
    {
        this.map = GoogleMap.castMap(trg, mapOptions);
        GoogleMap.addListener(this.map,'projection_changed', function(?e:Dynamic):Void {
            projection = this.map.getProjection();
        });
        GoogleMap.addListener(this.map, 'idle', onRenderReady);
    }

    dynamic public function onRenderReady(?e:Dynamic):Void
    {

    }




    public function renderMarker(title:String,?position:GmLatLng,icon:Dynamic):GmMarker
    {
        return GoogleMap.castMarker({
            position: position==null?mapLatLang:position,
            map: this.map,
            icon: icon,
            title: title
        });
    }
    public function renderWindow(contentHtml:String):GmInfoWindow
    {
        return GoogleMap.castInfoWindow({content:contentHtml});
    }
    public function calcInfoWindowBounds(win:GmInfoWindow):GmLatLngBounds
    {
        var domEls = Browser.document.getElementsByClassName('gm-style-iw');
        var markerSpace = 32+8;
        var maxTop = 0.0;
        var maxLeft = 0.0;
        var maxRight = 0.0;
        for (el in domEls)
        {
            var topOfWindow = el.offsetHeight + markerSpace;
            var leftOfWindow = el.offsetWidth / 2;
            var rightOfWindow = el.offsetWidth / 2;

            if (topOfWindow > maxTop) maxTop = topOfWindow;
            if (leftOfWindow > maxLeft) maxLeft = leftOfWindow;
            if (rightOfWindow > maxRight) maxRight = rightOfWindow;
        }
        trace('maxTop:$maxTop');
        trace('maxLeft:$maxLeft');
        trace('maxRight:$maxRight');
        var bounds = GoogleMap.castBounds();
        var leftBounds = projection.fromLatLngToPoint(GoogleMap.castLatLng(bounds.getNorthEast().lat(),bounds.getSouthWest().lng()));
        var rightBounds = projection.fromLatLngToPoint(GoogleMap.castLatLng(bounds.getNorthEast().lat(),bounds.getNorthEast().lng()));
        var topBounds0 = rightBounds.y + maxTop;
        var rightBounds0 = rightBounds.x + maxRight;
        var leftBounds0 = leftBounds.x - maxLeft;
        var p1 = GoogleMap.castPoint(leftBounds0,topBounds0);
        var p2 = GoogleMap.castPoint(rightBounds0,topBounds0);
        bounds.extend(projection.fromPointToLatLng(p1));
        bounds.extend(projection.fromPointToLatLng(p2));
        //this.map.fitBounds(bounds);
        return  bounds;
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
