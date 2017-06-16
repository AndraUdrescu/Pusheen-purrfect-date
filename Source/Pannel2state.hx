package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;

import flixel.FlxSprite;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;

class Pannel2State extends FlxState
{
	var pan2 : FlxSprite; //stores a sprite
	override public function create():Void
	{
		super.create( );
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		pan2 = new FlxSprite(0, 0, 'images/Panel2q.png');
		add(pan2);
		 
	
	
	}
	
	
	override public function update(elapsed:Float):Void {
		super.update(elapsed);
		
	if (FlxG.keys.anyPressed([ONE, NUMPADONE]))
	{
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		FlxG.switchState(new Ending2());
		
		
	
		
	}
	if (FlxG.keys.anyPressed([TWO, NUMPADTWO]))
	{
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		FlxG.switchState(new Pannel3State());
			
	}
	
}


	
}