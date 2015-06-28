package mthk.js.core;
import js.html.DOMElement;
class EventHub {

    public function new() {
    }

    public static function addEventListener(trg:Dynamic,event:String,listener:Dynamic->Void):Void
    {
        untyped
        {
            if ( trg.addEventListener )
            {
                trg.addEventListener( event , listener, false );
            }
            else if ( trg.attachEvent )
            {
                trg.attachEvent( 'on'+event , listener, false );
            }
        }
    }

    public static function removeEventListener(trg:Dynamic,event:String,listener:Dynamic->Void):Void
    {
        untyped
        {
            if ( trg.removeEventListener )
            {
                trg.removeEventListener( event , listener);
            }
            else if ( trg.detachEvent )
            {
                trg.detachEvent( 'on'+event , listener );
            }
        }
    }



}
