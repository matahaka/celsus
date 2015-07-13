package mthk.google.js.maps;
extern class GmLatLng
{
    public function new(lat:Float, lng:Float, ?noWrap:Bool);
    public function equals(other:GmLatLng):Bool;
    public function lat():Float;
    public function lng():Float;
    public function toString():String;
    public function toUrlValue(?precision:Float):String;
}
