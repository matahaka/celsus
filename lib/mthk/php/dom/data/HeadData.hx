package mthk.php.dom.data;

import haxe.ds.StringMap;
import haxe.Template;

class HeadData {

    public var lang = "en";
    public var charset = "UTF-8";
    public var base = "";
    public var title = "mthk.php.dom.data";

    public var metaTags:Array<StringMap<String>>=[];
    public var linkTags:Array<String>=[];

    public function new(){}

    public function print():String
    {
        var zw = '<head lang="'+lang+'">';
            zw += '<meta charset="'+charset+'">';
            zw += '<title>'+title+'</title>';

        //tag <meta >
        var mt:StringMap<String>;
        var meta = '';
        for(i in 0...metaTags.length){
            mt = metaTags[i];
            meta = '';
            for(mKey in  mt.keys())
                meta += ' '+mKey+'="'+mt.get(mKey)+'"';
            zw += '<meta'+meta+'>';
        }
        //css <link >
        var linkTemp = new Template('<link rel="stylesheet" type="text/css" href="::href::" />');
        for(linkTag in linkTags)
            zw += linkTemp.execute({ href:linkTag });

        zw += '<base href="'+base+'"/>';
        zw += '</head>';
        return zw;
    }


}
