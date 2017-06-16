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

class Ending4 extends FlxState
{	
	var ed3 : FlxSprite; //stores a sprite
	var retry: FlxButton;

	override public function create():Void
	{
		super.create( );
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		ed3 = new FlxSprite(0, 0, 'images/vegetarianendingq1.png');
		add(ed3);
		retry = new FlxButton(750, 400 , "", RetryGame);
		retry.loadGraphic("images/retrybutton.png");
		add(retry);
		
		 
	
	
	}
	
	
	override public function update(elapsed:Float):Void {
		super.update(elapsed);
		
	
	
	
}

public function RetryGame()
	{
		FlxG.switchState(new Panel1State());
	}



	
	
}