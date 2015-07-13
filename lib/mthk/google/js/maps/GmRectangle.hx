package mthk.google.js.maps;
extern class GmRectangle{
    public function new(?opts:GmRectangleOptions);
    public function getBounds():GmLatLngBounds;	//Returns the bounds of this rectangle.
    public function getDraggable():Bool;	//Returns whether this rectangle can be dragged by the user.
    public function getEditable():Bool;	//Returns whether this rectangle can be edited by the user.
    public function getMap():GoogleMap;	//Returns the map on which this rectangle is displayed.
    public function getVisible():Bool;	//Returns whether this rectangle is visible on the map.
    public function setBounds(bounds:GmLatLngBounds):Void; //Sets the bounds of this rectangle.
    public function setDraggable(draggable:Bool):Void;	//If set to true, the user can drag this rectangle over the map.
    public function setEditable(editable:Bool):Void;	//If set to true, the user can edit this rectangle by dragging the control points shown at the corners and on each edge.
    public function setMap(map:GmMap):Void;	//Renders the rectangle on the specified map. If map is set to null, the rectangle will be removed.
    public function setOptions(options:GmRectangleOptions):Void;
    public function setVisible(visible:Bool):Void; //
}
extern class GmRectangleOptions
{
    public function new();
    public var bounds:GmLatLngBounds;//	The bounds.
    public var clickable:Bool;	//Indicates whether this Rectangle handles mouse events. Defaults to true.
    public var draggable:Bool;	//If set to true, the user can drag this rectangle over the map. Defaults to false.
    public var editable:Bool;	//If set to true, the user can edit this rectangle by dragging the control points shown at the corners and on each edge. Defaults to false.
    public var fillColor:String;	//The fill color. All CSS3 colors are supported except for extended named colors.
    public var fillOpacity:Float;	//The fill opacity between 0.0 and 1.0
    public var map:GmMap;	//Map on which to display Rectangle.
    public var strokeColor:String;	//The stroke color. All CSS3 colors are supported except for extended named colors.
    public var strokeOpacity:Float;	//The stroke opacity between 0.0 and 1.0
    public var strokePosition:Dynamic;//:GoogleMapStrokePosition;	//The stroke position. Defaults to CENTER. This property is not supported on Internet Explorer 8 and earlier.
    public var strokeWeight:Float;	//The stroke width in pixels.
    public var visible:Bool;	//Whether this rectangle is visible on the map. Defaults to true.
    public var zIndex:Float;	//The zIndex compared to other polys.
}