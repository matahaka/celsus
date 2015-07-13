package mthk.google.js.maps;

extern class GmMarkerOptions
{
    public var anchorPoint:GmPoint;	//The offset from the marker's position to the tip of an InfoWindow that has been opened with the marker as anchor.
    public var animation:Dynamic;//	Animation	//Which animation to play when marker is added to a map.
    public var attribution:Dynamic;//	Attribution	//Contains all the information needed to identify your application as the source of a save. In this context, 'place' means a business, point of interest or geographic location. attribution must be specified with a place in order to enable a save.
    public var clickable:Bool;	//If true, the marker receives mouse and touch events. Default value is true.
    public var crossOnDrag:Bool;	//If false, disables cross that appears beneath the marker when dragging. This option is true by default.
    public var cursor:String;	//Mouse cursor to show on hover
    public var draggable:Bool;	//If true, the marker can be dragged. Default value is false.
    public var ico:Dynamic;	//Icon for the foreground. If a string is provided, it is treated as though it were an Icon with the string as url.
    public var map:Dynamic;	//Map on which to display Marker.
    public var opacity:Float;	//The marker's opacity between 0.0 and 1.0.
    public var optimized:Bool;	//Optimization renders many markers as a single static element. Optimized rendering is enabled by default. Disable optimized rendering for animated GIFs or PNGs, or when each marker must be rendered as a separate DOM element (advanced usage only).
    public var place:Dynamic;//Place	//Place information, used to identify and describe the place associated with this Marker. In this context, 'place' means a business, point of interest or geographic location. To allow a user to save this place, open an info window anchored on this marker. The info window will contain information about the place and an option for the user to save it. Only one of position or place can be specified.
    public var position:GmLatLng;	//Marker position. Required.
    public var shape:Dynamic;//MarkerShape	//Image map region definition used for drag/click.
    public var title:String;	//Rollover text
    public var visible:Bool;//If true, the marker is visible
    public var zIndex:Float; //
}

extern class GmMarker{

    public function new(?options:GmMarkerOptions);
    public function getAnimation():Dynamic;//	Animation
    public function getAttribution():Dynamic;//	Attribution
    public function getClickable():Bool;
    public function getCursor():String;
    public function getDraggable():Bool;
    public function getIcon():Dynamic;
    public function getMap():Dynamic;
    public function getOpacity():Float;
    public function getPlace():Dynamic;//	Place
    public function getPosition():GmLatLng;
    public function getShape():Dynamic;//	MarkerShape
    public function getTitle():String;
    public function getVisible():Bool;
    public function getZIndex():Float;
    public function setAnimation(animation:Dynamic):Void;//	Start an animation. Any ongoing animation will be cancelled. Currently supported animations are: BOUNCE, DROP. Passing in null will cause any animation to stop.
    public function setAttribution(attribution:Dynamic):Void;
    public function setClickable(flag:Bool):Void;
    public function setCursor(cursor:String):Void;
    public function setDraggable(flag:Bool):Void;
    public function setIcon(icon:Dynamic):Void;
    public function setMap(map:GmMap):Void;//	Renders the marker on the specified map or panorama. If map is set to null, the marker will be removed.
    public function setOpacity(opacity:Float):Void;
    public function setOptions(options:GmMarkerOptions):Void;
    public function setPlace(place:Dynamic):Void;
    public function setPosition(latlng:Dynamic):Void;
    public function setShape(shape:Dynamic):Void;
    public function setTitle(title:String):Void;
    public function setVisible(visible:Bool):Void;
    public function setZIndex(zIndex:Float):Void;

}
