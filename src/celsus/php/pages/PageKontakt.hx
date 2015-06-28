package celsus.php.pages;
import celsus.php.body.page.StandardPage;
import mthk.php.dom.elements.Div;
class PageKontakt extends StandardPage
{
    public function new() {
        super();
        id = 'kontakt';
    }

    override function rendeStandardContent():Void
    {
        standardContent.innerHTML = '<p>page-kontakt</p><p>page-kontakt</p><p>page-kontakt</p><p>page-kontakt</p>';
    }
}
