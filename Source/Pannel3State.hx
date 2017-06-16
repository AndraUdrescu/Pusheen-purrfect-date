package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxStringUtil;


import flixel.FlxSprite;

import flixel.util.FlxDestroyUtil;

class Pannel3State extends FlxState
{	var pan3 : FlxSprite; //stores a sprite
	var timertext:FlxText;
    var timer:Float;
	

	override public function create():Void
	{
		super.create( );
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		pan3 = new FlxSprite(0, 0, 'images/panel3q.png');
		add(pan3);
		timer = 9;
		timertext = new FlxText(50, 50, 100);
		timertext.setFormat("fonts/Roboto-Black.ttf", 40, FlxColor.BLACK,LEFT);
		
        add(timertext);
		
	
	
	}
	
	
	override public function update(elapsed:Float):Void {
		super.update(elapsed);
		timer -= FlxG.elapsed;
		timertext.text = FlxStringUtil.formatTime(timer);
		
        if (timer <=0) {
             
        FlxG.camera.fade(FlxColor.BLACK, .33, true);
		FlxG.switchState(new Ending3());
		
             
        } 
	if (FlxG.keys.anyPressed([ONE, NUMPADONE]))
	{
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		FlxG.switchState(new Ending4());
		
		
		
	
		
	}
	if (FlxG.keys.anyPressed([TWO, NUMPADTWO]))
	{
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		FlxG.switchState(new WinState());
			
	}
	
}





}