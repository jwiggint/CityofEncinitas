// ActionScript file
package EncComponents.TOC.toc.tocClasses
{	
	import flash.events.EventDispatcher;
	import mx.controls.Image;
	import mx.core.UIComponent;

	[Bindable]
	[RemoteClass(alias="EncComponents.TOC.toc.tocClasses.LegendSymbolItem")]
	
	public class LegendSymbolItem extends EventDispatcher
	{
		public var label:String;
		public var image:Image;
		public var uic:UIComponent
	}
}