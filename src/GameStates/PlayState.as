package GameStates 
{
	import org.flixel.*;
	import Entities.Players.*;
	public class PlayState extends FlxState
	{
		
		public function PlayState() 
		{
			Registry.player = new playerEntity(32, 100);
			add(Registry.player);
		}
		
	}

}