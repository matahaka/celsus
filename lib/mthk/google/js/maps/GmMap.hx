package mthk.google.js.maps;

import mthk.google.js.GoogleMap.GoogleMapTypeId;
import js.html.DivElement;
import mthk.google.js.GoogleMap;
import mthk.google.js.maps.GmLatLngBounds;

extern class GmMap
{
    public var controls:Array<Dynamic>;
    public var data:Dynamic;//:Data;//	An instance of Data, bound to the map. Add features to this Data object to conveniently display them on this map.
    public var mapTypes:Dynamic;//:MapTypeRegistry;//	A registry of MapType instances by string ID.
    public var overlayMapTypes:Array<Dynamic>;
    public function new(domElement:js.html.DOMElement,?options:GmMapOptions);
    public function fitBounds(bounds:GmLatLngBounds):Void;//	Sets the viewport to contain the given bounds.
    public function getBounds():GmLatLngBounds;//	Returns the lat/lng bounds of the current viewport. If more than one copy of the world is visible, the bounds range in longitude from -180 to 180 degrees inclusive. If the map is not yet initialized (i.e. the mapType is still null), or center and zoom have not been set then the result is null or undefined.
    public function getCenter():GmLatLng;//	Returns the position displayed at the center of the map. Note that this LatLng object is not wrapped. See LatLng for more information.
    public function getDiv():DivElement;//
    public function getHeading():Float;//	Returns the compass heading of aerial imagery. The heading value is measured in degrees (clockwise) from cardinal direction North.
    public function getMapTypeId():GoogleMapTypeId;//|string
    public function getProjection():Dynamic;//:GmProjection;//	Returns the current Projection. If the map is not yet initialized (i.e. the mapType is still null) then the result is null. Listen to projection_changed and check its value to ensure it is not null.
    public function getStreetView():Dynamic;//:GmStreetViewPanorama;//	Returns the default StreetViewPanorama bound to the map, which may be a default panorama embedded within the map, or the panorama set using setStreetView(). Changes to the map's streetViewControl will be reflected in the display of such a bound panorama.
    public function getTilt():Float;//	Returns the current angle of incidence of the map, in degrees from the viewport plane to the map plane. The result will be 0 for imagery taken directly overhead or 45 for 45° imagery. 45° imagery is only available for SATELLITE and HYBRID map types, within some locations, and at some zoom levels. Note: This method does not return the value set by setTilt. See setTilt for details.
    public function getZoom():Float;//
    public function panBy(x:Float, y:Float):Void;//	Changes the center of the map by the given distance in pixels. If the distance is less than both the width and height of the map, the transition will be smoothly animated. Note that the map coordinate system increases from west to east (for x values) and north to south (for y values).
    public function panTo(latLng:GmLatLng):Void;//	Changes the center of the map to the given LatLng. If the change is less than both the width and height of the map, the transition will be smoothly animated.
    public function panToBounds(latLngBounds:GmLatLngBounds):Void;//Pans the map by the minimum amount necessary to contain the given LatLngBounds. It makes no guarantee where on the map the bounds will be, except that as much of the bounds as possible will be visible. The bounds will be positioned inside the area bounded by the map type and navigation (pan, zoom, and Street View) controls, if they are present on the map. If the bounds is larger than the map, the map will be shifted to include the northwest corner of the bounds. If the change in the map's position is less than both the width and height of the map, the transition will be smoothly animated.
    public function setCenter(latlng:GmLatLng):Void;
    public function setHeading(heading:Float):Void;//Sets the compass heading for aerial imagery measured in degrees from cardinal direction North.
    public function setMapTypeId(mapType:GoogleMapTypeId):Void;
    public function setOptions(options:GmMapOptions):Void;//
    public function setStreetView(panorama:Dynamic):Void;//	Binds a StreetViewPanorama to the map. This panorama overrides the default StreetViewPanorama, allowing the map to bind to an external panorama outside of the map. Setting the panorama to null binds the default embedded panorama back to the map.
    public function setTilt(tilt:Float):Void;//	Controls the automatic switching behavior for the angle of incidence of the map. The only allowed values are 0 and 45. setTilt(0) causes the map to always use a 0° overhead view regardless of the zoom level and viewport. setTilt(45) causes the tilt angle to automatically switch to 45 whenever 45° imagery is available for the current zoom level and viewport, and switch back to 0 whenever 45° imagery is not available (this is the default behavior). 45° imagery is only available for SATELLITE and HYBRID map types, within some locations, and at some zoom levels. Note: getTilt returns the current tilt angle, not the value set by setTilt. Because getTilt and setTilt refer to different things, do not bind() the tilt property; doing so may yield unpredictable effects.
    public function setZoom(zoom:Float):Void;//
}
extern class GmMapOptions
{
    public var backgroundColor:String;//	Color used for the background of the Map div. This color will be visible when tiles have not yet loaded as the user pans. This option can only be set when the map is initialized.
    public var center:GmLatLng;//	The initial Map center. Required.
    public var disableDefaultUI:Bool;//	Enables/disables all default UI. May be overridden individually.
    public var disableDoubleClickZoom:Bool;//	Enables/disables zoom and center on double click. Enabled by default.
    public var draggable:Bool;//	If false, prevents the map from being dragged. Dragging is enabled by default.
    public var draggableCursor:String;//	The name or url of the cursor to display when mousing over a draggable map. This property uses the css cursor attribute to change the icon. As with the css property, you must specify at least one fallback cursor that is not a URL. For example: draggableCursor: 'url(http://www.example.com/icon.png), auto;'.
    public var draggingCursor:String;//	The name or url of the cursor to display when the map is being dragged. This property uses the css cursor attribute to change the icon. As with the css property, you must specify at least one fallback cursor that is not a URL. For example: draggingCursor: 'url(http://www.example.com/icon.png), auto;'.
    public var heading:Float;	//The heading for aerial imagery in degrees measured clockwise from cardinal direction North. Headings are snapped to the nearest available angle for which imagery is available.
    public var keyboardShortcuts:Bool;	//If false, prevents the map from being controlled by the keyboard. Keyboard shortcuts are enabled by default.
    public var mapMaker:Bool;	//True if Map Maker tiles should be used instead of regular tiles.
    public var mapTypeControl:Bool;	//The initial enabled/disabled state of the Map type control.
    public var mapTypeControlOptions:Dynamic;//:GmMapTypeControlOptions;	//The initial display options for the Map type control.
    public var mapTypeId:Dynamic;//:GmMapTypeId	//The initial Map mapTypeId. Defaults to ROADMAP.
    public var maxZoom:Float;	//The maximum zoom level which will be displayed on the map. If omitted, or set to null, the maximum zoom from the current map type is used instead.
    public var minZoom:Float;	//The minimum zoom level which will be displayed on the map. If omitted, or set to null, the minimum zoom from the current map type is used instead.
    public var noClear:Bool;//If true, do not clear the contents of the Map div.
    public var overviewMapControl:Bool;	//The enabled/disabled state of the Overview Map control.
    public var overviewMapControlOptions:Dynamic;//:GmOverviewMapControlOptions;	//The display options for the Overview Map control.
    public var panControl:Bool;	//The enabled/disabled state of the Pan control.
    public var panControlOptions:Dynamic;//:GmPanControlOptions;	//The display options for the Pan control.
    public var rotateControl:Bool;	//The enabled/disabled state of the Rotate control.
    public var rotateControlOptions:Dynamic;//:GmRotateControlOptions;	//The display options for the Rotate control.
    public var scaleControl:Bool;	//The initial enabled/disabled state of the Scale control.
    public var scaleControlOptions:Dynamic;//:GmScaleControlOptions;	//The initial display options for the Scale control.
    public var scrollwheel:Bool;	//If false, disables scrollwheel zooming on the map. The scrollwheel is enabled by default.
    public var streetView:Dynamic;//:GmStreetViewPanorama	//A StreetViewPanorama to display when the Street View pegman is dropped on the map. If no panorama is specified, a default StreetViewPanorama will be displayed in the map's div when the pegman is dropped.
    public var streetViewControl:Bool;	//The initial enabled/disabled state of the Street View Pegman control. This control is part of the default UI, and should be set to false when displaying a map type on which the Street View road overlay should not appear (e.g. a non-Earth map type).
    public var streetViewControlOptions:Dynamic;//:GmStreetViewControlOptions;	//The initial display options for the Street View Pegman control.
    public var styles:Array<Dynamic>;//:Array<MapTypeStyle>;	//Styles to apply to each of the default map types. Note that for Satellite/Hybrid and Terrain modes, these styles will only apply to labels and geometry.
    public var tilt:Float;	//Controls the automatic switching behavior for the angle of incidence of the map. The only allowed values are 0 and 45. The value 0 causes the map to always use a 0° overhead view regardless of the zoom level and viewport. The value 45 causes the tilt angle to automatically switch to 45 whenever 45° imagery is available for the current zoom level and viewport, and switch back to 0 whenever 45° imagery is not available (this is the default behavior). 45° imagery is only available for SATELLITE and HYBRID map types, within some locations, and at some zoom levels. Note: getTilt returns the current tilt angle, not the value specified by this option. Because getTilt and this option refer to different things, do not bind() the tilt property; doing so may yield unpredictable effects.
    public var zoom:Float;	//The initial Map zoom level. Required.
    public var zoomControl:Bool;	//The enabled/disabled state of the Zoom control.
    public var zoomControlOptions:Dynamic;//:GmZoomControlOptions;	//The display options for the Zoom control.

}