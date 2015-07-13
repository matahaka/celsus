package mthk.google.js.maps;

extern class GmInfoWindowOptions
{
    public var content:Dynamic;	//Content to display in the InfoWindow. This can be an HTML element, a plain-text string, or a string containing HTML. The InfoWindow will be sized according to the content. To set an explicit size for the content, set content to be a HTML element with that size.
    public var disableAutoPan:Bool;	//Disable auto-pan on open. By default, the info window will pan the map so that it is fully visible when it opens.
    public var maxWidth:Float;//Maximum width of the infowindow, regardless of content's width. This value is only considered if it is set before a call to open. To change the maximum width when changing content, call close, setOptions, and then open.
    public var pixelOffset:GmSize;	//The offset, in pixels, of the tip of the info window from the point on the map at whose geographical coordinates the info window is anchored. If an InfoWindow is opened with an anchor, the pixelOffset will be calculated from the anchor's anchorPoint property.
    public var position:Dynamic;	//The LatLng at which to display this InfoWindow. If the InfoWindow is opened with an anchor, the anchor's position will be used instead.
    public var zIndex:Int;
}

extern class GmInfoWindow
{
    public function new(options:GmInfoWindowOptions);
    public function close():Void;//	Closes this InfoWindow by removing it from the DOM structure.
    public function getContent():Dynamic;
    public function getPosition():GmLatLng;
    public function getZIndex():Float;
    public function open(map:Dynamic, ?anchor:Dynamic):Void;	//Opens this InfoWindow on the given map. Optionally, an InfoWindow can be associated with an anchor. In the core API, the only anchor is the Marker class. However, an anchor can be any MVCObject that exposes a LatLng position property and optionally a Point anchorPoint property for calculating the pixelOffset (see InfoWindowOptions). The anchorPoint is the offset from the anchor's position to the tip of the InfoWindow.
    public function setContent(content:String):Void;
    public function setOptions(options:GmInfoWindowOptions):Void;
    public function setPosition(position:GmLatLng):Void;
    public function setZIndex(zIndex:Float):Void;
}

