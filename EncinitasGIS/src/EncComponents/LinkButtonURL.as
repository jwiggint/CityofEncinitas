// ActionScript file
package EncComponents
{
	import flashx.textLayout.formats.TextAlign;

	[Bindable]
	public class LinkButtonURL extends Object
	{
		public function LinkButtonURL()
		{
			super();
			TextAlign.LEFT;
		}
		
		public var LabelText:String = "";
		public var URL:String = "";
	}
}