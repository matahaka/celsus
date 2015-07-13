package mthk.google.js.maps;
extern class GmIcon
{
//public function new();
//The position at which to anchor an image in correspondence to the location of the marker on the map. By default, the anchor is located along the center point of the bottom of the image.
    public var anchor:GmPoint;
//The position of the image within a sprite, if any. By default, the origin is located at the top left corner of the image (0, 0).
    public var origin:GmPoint;
//The size of the entire image after scaling, if any. Use this property to stretch/shrink an image or a sprite.
    public var scaledSize:GmSize;
//The display size of the sprite or image. When using sprites, you must specify the sprite size. If the size is not provided, it will be set when the image loads.
    public var size:GmSize;
//The URL of the image or sprite sheet.
    public var url:String;
}
