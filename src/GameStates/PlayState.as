package GameStates 
{
	//import Managers.levelManager;
	import Managers.MapGenerator;
	import org.flixel.*;
	import Entities.Players.*;
	public class PlayState extends FlxState
	{
			private const LEVEL_WIDTH:int = 50;
			private const LEVEL_HEIGHT:int = 50;
			private const LEVEL_COLUMNS:int = 5;
			private const LEVEL_ROWS:int = 5;
			private const CORRIDOR_PADDING:int = 0;
		
		public function PlayState() 
		{
			Registry.player = new playerEntity(0, 0)
			add(Registry.player); 
			
			Registry.mapgen = new MapGenerator
			add(Registry.mapgen);
			
			function getLevelData():Object
                {
                        return registry.mapgen.generateMap(LEVEL_WIDTH, LEVEL_HEIGHT, LEVEL_COLUMNS, LEVEL_ROWS, CORRIDOR_PADDING);
                }
                
			
			/*Registry.level1 = new levelManager;
			add(Registry.level1);*/
		}
		
	}

}