package celsus.php.pages;
import celsus.php.body.page.StandardPage;
import mthk.php.dom.elements.Div;
class PageKancelaria extends StandardPage
{
    public function new() {
        contentWithMenu = true;
        super();
        id = 'kancelaria';
    }
    override function renderStandardContent():Void
    {
        standardContent.innerHTML = '<h2><span style="font-family: book antiqua,palatino;"><strong>O Nas</strong></span></h2>
                  <p >&nbsp;</p>
                  <p ><span >Kancelaria Prawnicza „Ewa i Andrzej Borkowscy” powstała w 1993 r. i od tej pory świadczy nieprzerwanie usługi prawnicze dla przedsiębiorców (spółki prawa handlowego, spółka cywilna, osoba fizyczna prowadząca działalność gospodarczą), zarówno w zakresie stałej obsługi prawnej, jak i &nbsp;jednorazowych zleceń.</span></p>
                  <p ><span >Ewa Borkowska prowadząca Kancelarię, od 1984 roku jest radcą prawnym, wpisanym na&nbsp;listę Okręgowej Izby Radców Prawnych we Wrocławiu pod numerem 717.</span></p>
                  <p ><span class="szeroko" >Radca prawny Ewa Borkowska w swojej wieloletniej zawodowej karierze zdobyła doświadczenie, które gwarantuje jej Klientom obsługę prawną na najwyższym poziomie, a&nbsp;stale pogłębiana wiedza, skrupulatność i fachowość stanowią Państwa pewność i&nbsp;bezpieczeństwo, że każda zlecona sprawazostała powierzona odpowiedniej osobie.</span></p>
                  <p ><span ><span style="font-size: 10pt;">W swojej działalności Kancelaria dostosowuje się do indywidualnych potrzeb Klientów, zapewniając najwyższą jakość świadczonych usług, rzetelność i profesjonalizm.</span><span class="szeroko"></span></span></p>
                  <p >&nbsp;</p>';
    }
}
