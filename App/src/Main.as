package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import loaders.DataLoader;
	
	[SWF(width="1000", height="1000", backgroundColor="#000000", frameRate="60")]
	
	public class Main extends Sprite
	{
		public function Main()
		{
			loadData();
		}
		
		
		private function loadData():void
		{
			var dataLoader:DataLoader = new DataLoader();
			dataLoader.addEventListener( Event.COMPLETE, onDataLoaded );
			dataLoader.start();
		}
		
		
		private function onDataLoaded( e:Event ):void
		{
			trace( "boom!" );
		}
	}
}