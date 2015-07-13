package mthk.google.js.maps;

extern class GmSize
{
    public var width:Float;
    public var height:Float;
    public function new(width:Float, height:Float, ?widthUnit:String, ?heightUnit:String);
    public function equals(other:GmSize):Bool;
    public function toString():String;
}
