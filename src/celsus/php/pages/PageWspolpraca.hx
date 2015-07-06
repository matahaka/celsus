package celsus.php.pages;
import celsus.php.body.page.StandardPage;
import mthk.php.dom.elements.Div;
class PageWspolpraca extends StandardPage
{
    public function new() {
        contentWithMenu = true;
        super();
        id = 'wspolpraca';
    }

    override function renderStandardContent():Void
    {
        standardContent.innerHTML = '<h2><span >Świadczenie pomocy prawnej odbywa się w formie:</span></h2>
         <p ><span ><strong><span >- stałej obsługi prawnej</span></strong></span></p>
         <p ><span >W ramach stałej obsługi prawnej, Klient ma dodatkowo zagwarantowane:</span></p>
         <ul>
             <li><span >doraźne konsultacje telefoniczne</span></li>
             <li><span >doradztwo za pośrednictwem poczty elektronicznej</span></li>
             <li><span >spotkania w umówionych terminach</span></li>
             <li><span >sporządzanie pisemnych opinii, analiz, wyjaśnień itp.</span></li>
         </ul>
         <p ><span ><strong><span >- jednorazowego zlecenia</span></strong></span></p>
         <ul>
            <li><span >prowadzenie konkretnej sprawy</span></li>
            <li><span >sporządzenie określonego pisma</span></li>
            <li><span >przygotowanie opinii prawnej</span></li>
            <li><span >i inne</span></li>
        </ul>
        <p ><span ><strong><span >- udzielania porad prawnych</span></strong></span></p>
        <p ><span >Porady prawne we wszystkich sprawach z zakresu prawa cywilnego, gospodarczego, handlowego, prawa pracy, prawa i postępowania administracyjnego - z wyłączeniem przepisów podatkowych, rachunkowości oraz z zakresu ubezpieczeń społecznych.</span></p>';
    }
}
