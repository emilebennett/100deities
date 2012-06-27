package view
{
	import flash.display.Sprite;

	public class Skeleton extends Sprite
	{
		
		private var _crest		:Element;
		private var _crown		:Element;
		private var _eyeLeft	:Element;
		private var _eyeRight	:Element;
		private var _halo		:Element;
		private var _lowerFace	:Element;
		private var _mouth		:Element;
		private var _neck		:Element;
		private var _nose		:Element;
		private var _upperFace	:Element;
		
		public function Skeleton()
		{
			
			_crest = new Element();
			_crown = new Element();
			_eyeLeft = new Element();
			_eyeRight = new Element();
			_halo = new Element();
			_lowerFace = new Element();
			_mouth = new Element();
			_neck = new Element();
			_nose = new Element();
			_upperFace = new Element();
			
			
			addChild( _crest );
			addChild( _neck );
			addChild( _lowerFace );
			addChild( _nose );
			addChild( _mouth );
			addChild( _upperFace );
			addChild( _eyeLeft );
			addChild( _eyeRight );
			addChild( _crown );
			addChild( _halo );
		}
		
		
		public function get crest():Element 
		{
			return _crest;
		}
		
		
		public function get crown():Element 
		{
			return _crown;
		}
		
		
		public function get eyeLeft():Element 
		{
			return _eyeLeft;
		}
		
		
		public function get eyeRight():Element 
		{
			return _eyeRight;
		}
		
		
		public function get halo():Element 
		{
			return _halo;
		}
		
		
		public function get lowerFace():Element 
		{
			return _lowerFace;
		}
		
		
		public function get mouth():Element 
		{
			return _mouth;
		}
		
		
		public function get neck():Element 
		{
			return _neck;
		}
		
		
		public function get nose():Element 
		{
			return _nose;
		}
		
		
		public function get upperFace():Element 
		{
			return _upperFace;
		}
		
	}
}