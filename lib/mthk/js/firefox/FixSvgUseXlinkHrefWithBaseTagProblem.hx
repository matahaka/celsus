package mthk.js.firefox;
class FixSvgUseXlinkHrefWithBaseTagProblem
{
    public function new(trgId:String)
    {
        var ua:String = js.Browser.navigator.userAgent.toLowerCase();
        var isfirefox:Bool = ua.indexOf('firefox')>-1;
        if(isfirefox)
        {
            trace('>>>> FIREFOX <<<<');
            var XLINK = "http://www.w3.org/1999/xlink";
            var trg = js.Browser.document.getElementById(trgId);
            if(trg!=null)
            {
                var uses = trg.getElementsByTagName('use');
                var oldHREF:String;var newHREF:String;
                for(use in uses)
                {
                    oldHREF = use.getAttributeNS(XLINK,'href');
                    if(oldHREF!=null && oldHREF.indexOf('#') == 0)
                    {
                        newHREF = getBase() + oldHREF;
                        use.setAttributeNS(XLINK,'href',newHREF);
                        trace('[fix use] $oldHREF -> $newHREF');
                    }

                }
            }
        }
    }
    function getBase():String
    {
        var loc:js.html.Location = js.Browser.location;
        return loc.href.split(loc.hash).join("");
    }
}
