package mthk.google.js.maps;
extern class GmProjection {
    public function new() {}
    //Translates from the LatLng cylinder to the Point plane.
    // This interface specifies a function which implements translation from given LatLng values to world coordinates on the map projection. The Maps API calls this method when it needs to plot locations on screen. Projection objects must implement this method.
    public function fromLatLngToPoint(latLng:GmLatLng, ?point:GmPoint):GmPoint;
    public function fromPointToLatLng(pixel:GmPoint, ?nowrap:Bool):GmLatLng;
}
