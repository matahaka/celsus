package celsus.php.body.svg;
import mthk.php.dom.elements.image.Svg;
class IconMenu extends Svg {
    public function new() {
        super();
        innerHTML = '<rect x="10" y="24" width="80" height="9"></rect><rect x="10" y="46" width="80" height="9"></rect><rect x="10" y="68" width="80" height="9"></rect>';
        addClass("scroll-menu-icon");
        addClass("scroll-menu-icon-open");
//        addAttr(["fill"=>"#f58c40"]);
        addAttr(["fill"=>"#000"]);
    }
}
