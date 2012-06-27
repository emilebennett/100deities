package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	import loaders.DataLoader;
	
	import view.Skeleton;
	
	[SWF(width="1000", height="1000", backgroundColor="#000000", frameRate="60")]
	
	public class Main extends Sprite
	{
		
		private var skeleton:Skeleton;
		
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
			setupSkeleton();
		}
		
		
		private function setupSkeleton():void
		{
			skeleton = new Skeleton();
			addChild( skeleton );
		}
		
		
		private function buildMask():void
		{
				
		}
	}
}