package Entities.Players 
{
import org.flixel.*;

               
	public class playerEntity extends FlxSprite
	{
		public function playerEntity(x:uint, y:uint)
		{
			super(x, y);
			
			makeGraphic(10, 12, 0xffaa1111);
			
			maxVelocity.x = 80;
			
			maxVelocity.y = 80;
			
		}
                               
		override public function update():void
		{             
			acceleration.x = 0;
		if(FlxG.keys.LEFT)
			acceleration.x = -maxVelocity.x * 4;
			
		if(FlxG.keys.RIGHT)
			acceleration.x = maxVelocity.x * 4;
		
		if (FlxG.keys.UP)
			acceleration.y = -maxVelocity.y * 4;
			
		if (FlxG.keys.DOWN)
			acceleration.y = maxVelocity.y * 4;
			
			super.update();

		}
	}

}