package GameStates 
{
	import org.flixel.*;
	import Entities.Players.*;
	public class PlayState extends FlxState
	{
		
		public function PlayState() 
		{
			Registry.player = new playerEntity(FlxG.width / 2 - 12, FlxG.height - 40);
			add(Registry.player);
		}
		
	}

}