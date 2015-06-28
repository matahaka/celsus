package mthk.php.dom.elements.image;
import mthk.php.dom.elements.core.DomElement;
class Svg extends DomElement{
    public function new(?width:String='100%',?height:String='100%',?viewBox:String='0 0 100 100',
                        ?preserveAspectRatio:String="none",xlink:Bool=false)
    {
        super('svg');
        addAttr(['xmlns'=>"http://www.w3.org/2000/svg"]);
        if(xlink==true)
            addAttr(['xmlns:xlink'=>"http://www.w3.org/1999/xlink"]);

        addAttr(['viewBox'=>viewBox]);
        addAttr(['width'=>width]);
        addAttr(['height'=>height]);
        addAttr(['preserveAspectRatio'=>preserveAspectRatio]);
        //addAttr(['xml:base'=>'http://localhost/hx/celsus/www/']);
    }
}
