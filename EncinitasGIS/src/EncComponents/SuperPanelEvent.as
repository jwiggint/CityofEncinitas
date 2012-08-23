package EncComponents
{
	import com.esri.ags.events.GraphicsLayerEvent;
	
	import flash.events.Event;
	
	public class SuperPanelEvent extends Event
	{
		//--------------------------------------------------------------------------
		//
		//  Class constants
		//
		//--------------------------------------------------------------------------
		
		static public const MAXIMIZE:String =     "maximize";
		static public const MINIMIZE:String =     "minimize";
		static public const RESTORE:String =      "restore";
		static public const DRAG_START:String =   "dragStart";
		static public const DRAG:String =         "drag";
		static public const DRAG_END:String =     "dragEnd";
		static public const RESIZE_START:String = "resizeStart";
		static public const RESIZE_END:String =   "resizeEnd";
		static public const TEST:String = 		  "TEST"

		public function SuperPanelEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			//TODO: implement function
			super(type, bubbles, cancelable);
		}
	}
}