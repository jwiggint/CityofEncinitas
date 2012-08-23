package events
{
	import flash.events.Event;

	public class SlidingPanelEvent extends Event
	{
		public static const ANIMATE:String = "animate";
		public static const ANIMATEENDED:String = "animateended" 
				
		public function SlidingPanelEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}