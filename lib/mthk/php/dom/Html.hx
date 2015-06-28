package mthk.php.dom;
class Html {

    /*private static var instance:Html;
    public static inline function getInstance()
    {
        if (instance == null)
            return instance = new Html();
        else
            return instance;
    }*/

    public function new(){}

    public var head:String;
    public var body:String;
    public function print(): String
    {
        return '<!DOCTYPE html><html>'+head+'<body>'+body+'</body></html>';
    }




}
