// ActionScript file
package EncComponents.TOC.toc.tocClasses
{
	import com.esri.ags.renderers.Renderer;
	
	import flash.events.EventDispatcher;

	[Bindable]
	[RemoteClass(alias="EncComponents.TOC.toc.tocClasses.LegendDataItem")]
	
	public class LegendDataItem extends EventDispatcher
	{
		public var lname:String;
		public var id:int;
		public var minscale:Number;
		public var maxscale:Number;
		public var label:String;
		public var legendGroup:Array =[];
	}
}