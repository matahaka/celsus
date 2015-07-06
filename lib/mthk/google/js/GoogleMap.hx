package mthk.google.js;

class GoogleMap
{
    public function new(){}
    public static function castStyle( featureType:String, elementType:String, stylers:Array<Dynamic> ):Dynamic    {
        return { featureType : featureType, elementType:elementType, stylers:stylers};
    }
    public static function castLatLng(x:Float,y:Float):GoogleMapLatLng    {
        return cast untyped __new__("google.maps.LatLng",x,y);
    }

    public static function castMap(domElement:js.html.DOMElement,options:Dynamic):GoogleMapObject    {
        return cast untyped __new__("google.maps.Map",domElement,options);
    }

    public static function castMarker(options:Dynamic):GoogleMapMarker    {
        return cast untyped __new__("google.maps.Marker",options);
    }

    public static function castInfoWindow(options:Dynamic):GoogleMapInfoWindow    {
        return cast untyped __new__("google.maps.InfoWindow",options);
    }

    public static function addListener(trg:Dynamic,type:String,handler:Dynamic->Void):Void    {
        return cast untyped __new__("google.maps.event.addListener",trg,type,handler);
    }

}
//https://developers.google.com/maps/documentation/javascript/reference?csw=1#Icon
extern class GoogleMapObject
{
    public function new(domElement:js.html.DOMElement,?options:Dynamic);
    public function setMapTypeId(mapType:GoogleMapTypeId):Void;
    public function panBy(x:Float, y:Float):Void;
    public function setCenter(latlng:GoogleMapLatLng):Void;

}
extern class GoogleMapLatLng
{
    public function new(lat:Float, lng:Float, ?noWrap:Bool);
    public function equals(other:GoogleMapLatLng):Bool;
    public function lat():Float;
    public function lng():Float;
    public function toString():String;
    public function toUrlValue(?precision:Float):String;
}
extern class GoogleMapPoint
{
    public var x:Float;
    public var y:Float;
    public function new(x:Float,y:Float);
    public function equals(other:GoogleMapPoint):Bool;
    public function toString():String;
}
extern class GoogleMapSize
{
    public var width:Float;
    public var height:Float;
    public function new(width:Float, height:Float, ?widthUnit:String, ?heightUnit:String);
    public function equals(other:GoogleMapSize):Bool;
    public function toString():String;
}
extern class GoogleMapPlace{
    public function new();
    public var location:GoogleMapLatLng;
    public var placeId:String;
    public var query:String;
}


extern class GoogleMapInfoWindowOptions
{
    public var content:String;
    public var disableAutoPan:Bool;
    public var maxWidth:Float;
    public var pixelOffset:GoogleMapSize;
    public var position:GoogleMapLatLng;
    public var zIndex:Int;
}

extern class GoogleMapInfoWindow
{
    public function new(options:Dynamic);
    public function open(map:GoogleMapObject,marker:GoogleMapMarker):Void;
    public function setPosition(position:GoogleMapLatLng):Void;
    public function close():Void;
    public function setContent(content:String):Void;
    public function setZIndex(zIndex:Float):Void;
}


extern class GoogleMapMarker{
    public function new(options:Dynamic);
    public function setMap(map:GoogleMapObject):Void;
    public function getIcon():Dynamic;
    public function setIcon(icon:Dynamic):Void;

}
extern class GoogleMapMarkerIcon
{
    public function new();
    //The position at which to anchor an image in correspondence to the location of the marker on the map. By default, the anchor is located along the center point of the bottom of the image.
    public var anchor:GoogleMapPoint;
    //The position of the image within a sprite, if any. By default, the origin is located at the top left corner of the image (0, 0).
    public var origin:GoogleMapPoint;
    //The size of the entire image after scaling, if any. Use this property to stretch/shrink an image or a sprite.
    public var scaledSize:GoogleMapSize;
    //The display size of the sprite or image. When using sprites, you must specify the sprite size. If the size is not provided, it will be set when the image loads.
    public var size:GoogleMapSize;
    //The URL of the image or sprite sheet.
    public var url:String;
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