package mthk.google.js.maps;

extern class GmLatLngBounds
{
    public function new(?sw:GmLatLng, ?ne:GmLatLng);
    public function contains(latLng:GmLatLng):Bool;//Returns true if the given lat/lng is in this bounds.
    public function equals(other:GmLatLngBounds):Bool;	//Returns true if this bounds approximately equals the given bounds.
    public function extend(point:GmLatLng):GmLatLngBounds;	//Extends this bounds to contain the given point.
    public function getCenter():GmLatLng;	//Computes the center of this LatLngBounds
    public function getNorthEast():GmLatLng;	//Returns the north-east corner of this bounds.
    public function getSouthWest():GmLatLng;	//Returns the south-west corner of this bounds.
    public function intersects(other:GmLatLngBounds):Bool;	//Returns true if this bounds shares any points with this bounds.
    public function isEmpty():Bool;	//Returns if the bounds are empty.
    public function toSpan():GmLatLng;	//Converts the given map bounds to a lat/lng span.
    public function toString():String;	//Converts to string.
    public function toUrlValue(?precision:Float):String;	//Returns a string of the form "lat_lo,lng_lo,lat_hi,lng_hi" for this bounds, where "lo" corresponds to the southwest corner of the bounding box, while "hi" corresponds to the northeast corner of that box.
    public function union(other:GmLatLngBounds):GmLatLngBounds;
}
