package celsus.php.body.svg;
import mthk.php.dom.elements.image.Svg;
class PageShadow extends Svg {
    public function new(type:String)
    {
        innerHTML = '<use xlink:href="#shadow$type" width="100%" height="100%"></use>';
        //innerHTML = '<rect fill="url(#shadow-$type)" width="100%" height="100%"></use>';
        super('100%','100%','0 0 100 100','none',true);
    }
}
