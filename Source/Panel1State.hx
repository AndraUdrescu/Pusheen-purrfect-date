package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
using flixel.util.FlxSpriteUtil;

import flixel.FlxSprite;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;

class Panel1State extends FlxState
{	var pan1 : FlxSprite; //stores a sprite
	

	override public function create():Void
	{
		super.create( );
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		pan1 = new FlxSprite(0, 0, 'images/Panel1q.png');
		add(pan1);
		 
	
	
	}
	
	
	override public function update(elapsed:Float):Void {
		super.update(elapsed);
		
	if (FlxG.keys.anyPressed([ONE, NUMPADONE]))
	{
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		FlxG.switchState(new Ending1());
		
	
		
	}
	if (FlxG.keys.anyPressed([TWO, NUMPADTWO]))
	{
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		FlxG.switchState(new Pannel2State());
		
			
	}
	
	
	
}





	
	
}