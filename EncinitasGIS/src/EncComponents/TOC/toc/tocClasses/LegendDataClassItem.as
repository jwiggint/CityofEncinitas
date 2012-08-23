// ActionScript file
package EncComponents.TOC.toc.tocClasses
{	
	import flash.events.EventDispatcher;
	import mx.controls.Image;

	[Bindable]
	[RemoteClass(alias="EncComponents.TOC.toc.tocClasses.LegendDataClassItem")]
	
	public class LegendDataClassItem extends EventDispatcher
	{
		public var symbolitems:Array = [];
		public var image:Image;
		public var label:String;
	}
}