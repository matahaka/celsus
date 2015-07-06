package celsus.php.pages;
import celsus.php.body.page.StandardPage;
import mthk.php.dom.elements.Div;
class PageUslugi extends StandardPage
{
    public function new() {
        contentWithMenu = true;
        super();
        id = 'uslugi';
    }
    override function renderStandardContent():Void
    {
        standardContent.innerHTML = '<h2><span>&nbsp;<span >Zakres usług świadczonych przez Kancelarię Prawniczą</span></span></h2>
                   <h2><span><span>„Ewa i Andrzej Borkowscy”</span></span></h2>
                   <p><span>- doradztwo we wszystkich sprawach z zakresu prawa cywilnego, gospodarczego, handlowego, prawa pracy, prawa i postępowania administracyjnego - z wyłączeniem przepisów podatkowych, rachunkowości oraz z zakresu ubezpieczeń społecznych</span></p>
                   <p><span>- zastępstwo procesowe przed sądami powszechnymi, organami administracji publicznej oraz przed sądami administracyjnymi </span></p>
                   <p><span>- zastępstwo w postępowaniu egzekucyjnym</span></p>
                   <p><span>- opracowanie/opiniowanie projektów umów oraz dokumentów związanych z (bieżącą) działalnością przedsiębiorstwa</span></p>
                   <p><span>- inne sprawy związane z działalnością danego przedsiębiorcy</span></p>
                   <p><span>- windykacja należności (wezwania o zapłatę, zastępstwo procesowe w postępowaniach sądowych i egzekucyjnych)</span></p>
                   <p><span>- sprawy z zakresu prawa administracyjnego w szczególności – prawo budowlane, gospodarka nieruchomościami, planowanie i zagospodarowanie przestrzenne</span></p>
                   <p><span>- sporządzanie projektów umów w obrocie gospodarczym</span></p>';
    }
}
