package managers
{
	import com.greensock.loading.XMLLoader;

	public class DataManager
	{
		
		private static var instance:DataManager = new DataManager();
		
		private var _crests:XMLLoader;
		private var _crowns:XMLLoader;
		private var _eyes:XMLLoader;
		private var _halos:XMLLoader;
		private var _hangers:XMLLoader;
		private var _lowerFaces:XMLLoader;
		private var _mouths:XMLLoader;
		private var _necks:XMLLoader;
		private var _noses:XMLLoader;
		private var _upperFaces:XMLLoader;
		
		public function DataManager()
		{	
			if(instance)
			{
				throw new Error ("cannot create new instance of DataManager. I'm a singleton!");
			}
		}	
		
		public static function getInstance():DataManager
		{
			return instance;
		}
		
		
		//----------------------------------------------------------------------------------------
		
		
		public function set crests( value:XMLLoader ):void 
		{
			_crests = value;
		}
		
		public function get crests():XMLLoader 
		{
			return _crests;
		}
		
		
		public function set crowns( value:XMLLoader ):void 
		{
			_crowns = value;
		}
		
		public function get crowns():XMLLoader 
		{
			return _crowns;
		}
		
		
		public function set eyes( value:XMLLoader ):void 
		{
			_eyes = value;
		}
		
		public function get eyes():XMLLoader 
		{
			return _eyes;
		}
		
		
		public function set halos( value:XMLLoader ):void 
		{
			_halos = value;
		}
		
		public function get halos():XMLLoader 
		{
			return _halos;
		}
		
		
		public function set hangers( value:XMLLoader ):void 
		{
			_hangers = value;
		}
		
		public function get hangers():XMLLoader 
		{
			return _hangers;
		}
		
		
		public function set lowerFaces( value:XMLLoader ):void 
		{
			_lowerFaces = value;
		}
		
		public function get lowerFaces():XMLLoader 
		{
			return lowerFaces;
		}
		
		
		public function set mouths( value:XMLLoader ):void 
		{
			_mouths = value;
		}
		
		public function get mouths():XMLLoader 
		{
			return _mouths;
		}
		
		
		public function set necks( value:XMLLoader ):void 
		{
			_necks = value;
		}
		
		public function get necks():XMLLoader 
		{
			return _necks;
		}
		
		
		public function set noses( value:XMLLoader ):void 
		{
			_noses = value;
		}
		
		public function get noses():XMLLoader 
		{
			return _noses;
		}
		
		
		public function set upperFaces( value:XMLLoader ):void 
		{
			_upperFaces = value;
		}
		
		public function get upperFaces():XMLLoader 
		{
			return _upperFaces;
		}		
	}
}