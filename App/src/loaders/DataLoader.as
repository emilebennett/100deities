package loaders
{
	import com.greensock.events.LoaderEvent;
	import com.greensock.loading.LoaderMax;
	import com.greensock.loading.XMLLoader;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import managers.DataManager;

	public class DataLoader extends EventDispatcher
	{
		
		private const REF_CRESTS:String = "crests";
		private const REF_CROWNS:String = "crowns";
		private const REF_EYES:String = "eyes";
		private const REF_HALOS:String = "halos";
		private const REF_HANGERS:String = "hangers";
		private const REF_LOWER_FACES:String = "lower-faces";
		private const REF_MOUTHS:String = "mouths";
		private const REF_NECKS:String = "necks";
		private const REF_NOSES:String = "noses";
		private const REF_UPPER_FACES:String = "upper-faces";
		
		private var queue:LoaderMax;
		private var filesToLoad:Array;
		
		private var dataManager:DataManager = DataManager.getInstance();
		
		public function DataLoader()
		{
			filesToLoad = [REF_CRESTS, REF_CROWNS, REF_EYES, REF_HALOS, REF_HANGERS, REF_LOWER_FACES, REF_MOUTHS, REF_NECKS, REF_NOSES, REF_UPPER_FACES];
		}
		
		
		public function start():void
		{
			queue = new LoaderMax({name:"queue", onProgress:onProgressHandler, onComplete:onCompleteHandler, onError:onErrorHandler});
			
			for each (var ref:String in filesToLoad)
			{
				var loader:XMLLoader = new XMLLoader( "data/"+ref+".xml", { name:ref } );
				loader.addEventListener(LoaderEvent.COMPLETE, assetCompleteHandler);
				queue.append( loader );
			}
			
			queue.load();
		}
		
		
		private function onProgressHandler(e:LoaderEvent):void
		{
			trace(this + " percent complete = " + e.target.progress);
		}
		
		
		private function onCompleteHandler(e:LoaderEvent):void
		{
			trace(e.target + " is complete!");
			this.dispatchEvent(new Event(Event.COMPLETE));
		}
		
		
		private function onErrorHandler(e:LoaderEvent):void
		{
			trace("error occured with " + e.target + ": " + e.text);
		}
		
		
		private function assetCompleteHandler(e:LoaderEvent):void
		{
			trace("asset " + e.target + " has loaded");
			
			switch ( e.target.name )
			{
				case REF_CRESTS: dataManager.crests = XMLLoader( e.target ); break;
				case REF_CROWNS: dataManager.crowns = XMLLoader( e.target ); break;
				case REF_EYES: dataManager.eyes = XMLLoader( e.target ); break;
				case REF_HALOS: dataManager.halos = XMLLoader( e.target ); break;
				case REF_HANGERS: dataManager.hangers = XMLLoader( e.target ); break;
				case REF_LOWER_FACES: dataManager.lowerFaces = XMLLoader( e.target ); break;
				case REF_MOUTHS: dataManager.mouths = XMLLoader( e.target ); break;
				case REF_NECKS: dataManager.necks = XMLLoader( e.target ); break;
				case REF_NOSES: dataManager.noses = XMLLoader( e.target ); break;
				case REF_UPPER_FACES: dataManager.upperFaces = XMLLoader( e.target ); break;
			}
		}
		
		
	}
}