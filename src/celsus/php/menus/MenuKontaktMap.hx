package celsus.php.menus;
import mthk.php.dom.elements.text.A;
import mthk.php.dom.elements.image.svg.Use;
import mthk.php.dom.elements.image.Svg;
import mthk.php.dom.elements.list.Ul;
import mthk.php.dom.elements.Menu;
class MenuKontaktMap extends Menu
{

    public function new()
    {
        super('contact-map-menu');

        var svg = new Svg('48px','48px');
        var use = new Use('#iconMapMarker','60px','60px');
            svg.addChild(use);

        var showBtn = new A();
        showBtn.addChild(svg);
        addChild(showBtn);

      /*  var ul = new Ul();
            ul.addAnchoreElement('',);
            //ul.addAnchoreText('','2');
        addChild(ul);*/
    }

}
