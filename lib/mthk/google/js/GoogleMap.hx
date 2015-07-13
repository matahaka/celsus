package mthk.google.js;
import js.Browser;
import mthk.google.js.maps.GmMap;
import mthk.google.js.maps.GmLatLng;
import mthk.google.js.maps.GmMarker;
import mthk.google.js.maps.GmInfoWindow;
import mthk.google.js.maps.GmRectangle;
import mthk.google.js.maps.GmLatLngBounds;
import mthk.google.js.maps.GmPoint;

class GoogleMap
{
    public function new(){}
    public static function castStyle( featureType:String, elementType:String, stylers:Array<Dynamic> ):Dynamic { return { featureType : featureType, elementType:elementType, stylers:stylers}; }
    public static function castMap(domElement:js.html.DOMElement,options:Dynamic):GmMap { return cast untyped __new__("google.maps.Map",domElement,options); }
    public static function castMarker(options:Dynamic):GmMarker { return cast untyped __new__("google.maps.Marker",options); }
    public static function castInfoWindow(options:Dynamic):GmInfoWindow { return cast untyped __new__("google.maps.InfoWindow",options); }
    public static function castRectangle(options:GmRectangleOptions):GmRectangle { return cast untyped __new__("google.maps.Rectangle",options); }
    public static function castBounds(?sw:GmLatLng, ?ne:GmLatLng):GmLatLngBounds  { return cast untyped __new__("google.maps.LatLngBounds", sw, ne); }
    public static function castLatLng(lat:Float,lng:Float):GmLatLng { return cast untyped __new__("google.maps.LatLng",lat,lng); }
    public static function castPoint(x:Float,y:Float):GmPoint { return cast untyped __new__("google.maps.Point",x,y); }
    public static function addListener(trg:Dynamic,type:String,handler:Dynamic->Void):Void{ return cast untyped __new__("google.maps.event.addListener",trg,type,handler);}
//    public static function addListener():Void
//    {
//        var markers = //some array;
//        var bounds = new google.maps.LatLngBounds();
//        for(i=0;i<markers.length;i++) {
//            bounds.extend(markers[i].getPosition());
//        }
//
//        map.fitBounds(bounds);
//    }
//    public static function fromLatLngToPoint(map:GmMap,latLng:GmLatLng):GmPoint
//    {
//        var topRight = map.getProjection().fromLatLngToPoint(map.getBounds().getNorthEast());
//        var bottomLeft = map.getProjection().fromLatLngToPoint(map.getBounds().getSouthWest());
//        var scale = Math.pow(2, map.getZoom());
//        var worldPoint = map.getProjection().fromLatLngToPoint(latLng);
//        return castPoint((worldPoint.x - bottomLeft.x) * scale, (worldPoint.y - topRight.y) * scale);
//    }
}
//https://developers.google.com/maps/documentation/javascript/reference

extern class GoogleMapPlace{
    //public function new();
    public var location:GmLatLng;
    public var placeId:String;
    public var query:String;
}

@:enum abstract GoogleMapTypeId(String)
{
    var ROADMAP = 'roadmap';
    var SATELLITE = 'satellite';
    var HYBRID = 'hybrid';
    var TERRAIN = 'terrain';
}
@:enum abstract GoogleMapAnimation(String)
{
    var DROP = 'drop';
}