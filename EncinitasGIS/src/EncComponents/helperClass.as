package EncComponents
{
	import com.esri.ags.events.DetailsEvent;
	import com.esri.ags.layers.ArcGISDynamicMapServiceLayer;
	import com.esri.ags.layers.supportClasses.LayerInfo;
	import com.esri.ags.layers.supportClasses.TableInfo;
	import com.esri.ags.utils.JSON;
	
	import mx.controls.Alert;
	import mx.rpc.AsyncResponder;
	import mx.rpc.Responder;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	import mx.rpc.AsyncToken;
//class that can be called anywhere to quickly get the ID or a layer or table from a map service
	//this ID is a nescessary part of many query URLs
	public class helperClass
	{
		public function getLayerID(layerName:String, mapLayerInfos:Array, isTable:Boolean = false):String
		{
			//var arLayerinfo:Array = mapLayer.layerInfos;
			var i:String = "-1";
			if (isTable)
			{
				for each (var infosT:TableInfo in mapLayerInfos)
				{
					if (infosT.name == layerName)
					{
						i = infosT.id.toString();
						break;
					}
				}
			}
			else
			{
				for each (var infosL:LayerInfo in mapLayerInfos)
				{
					
					if (infosL.name == layerName)
					{
						i = infosL.id.toString();
						break;
					}
				}
			}

			
			return i;
		}
		
		public function getURL(url:String):void
		{
			var servicerequest:HTTPService = new HTTPService();
			servicerequest.url="http://gisweb:9231/Internal/rest/services/Secured/SiteProfiler/MapServer?f=json";
			servicerequest.resultFormat = "text";
			var pParam:Object = new Object;
			//pParam = {f: "json"};
			servicerequest.method = "GET";
			var myToken:AsyncToken = servicerequest.send(pParam);
			var responder:AsyncResponder = new AsyncResponder( resultHandler, faultHandler );
			myToken.addResponder( responder );
		}
		private function resultHandler(result:ResultEvent, token:AsyncToken = null):void
		{
			var strPermitID:String;
			trace(result.result);
			//get the raw JSON data and cast to String
			var rawData:String = String(result.result);
			//decode the data to ActionScript using the JSON API
			//in this case, the JSON data is a serialize Array of Objects.
			var arr:Object = JSON.decode(rawData);
			
			var arrLayers:Array = arr.layers;
			for (var j:int = 0; arrLayers.length - 1; j++)
			{
				if (arrLayers[j].name == "Permit") 
				{
					strPermitID = arrLayers[j].id.toString();
				}
			}

	
		}
		private function faultHandler(result:Object, token:AsyncToken = null):void
		{
			trace(result.toString())
		}
/*		public function getRelationshipID(relateName:String, LayerName:String, mapLayer:ArcGISDynamicMapServiceLayer, isTable:Boolean ):String
		{
			var infos:Array;
			if (isTable)
			{
				infos = mapLayer.tableInfos
			}
			else
			{
				infos = mapLayer.tableInfos
			}
			var i:String = "-1";
			var relateID:String

			mapLayer.getDetails(Number(getLayerID(LayerName,infos,isTable)), new Responder(
				function onGetDetails(details:Object, token:Object = null):void
				{
					Alert.show(details.toString());
				}
				,
				function onGetDetailsFault(fault:Object, token:Object = null):void
				{
					
				}
				));
			//var arLayerinfo:Array = mapLayer.layerInfos;

			
			return i;
		}*/
		

		
	}
}