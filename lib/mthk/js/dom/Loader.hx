package mthk.js.dom;
class Loader {
    private static var instance:Loader;
    public static inline function getInstance()
    {
        if (instance == null)
            return instance = new Loader();
        else
            return instance;
    }
    public function new() {
    }
}
