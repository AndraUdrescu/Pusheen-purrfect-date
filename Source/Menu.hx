package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class Menu extends FlxState
{
	
	var start : FlxButton;
	var title : FlxText;
	var hall  : FlxButton;
	var quit  : FlxButton;
	var menu : FlxSprite;
	override public function create():Void
	{
		super.create();
	}

	override public function update(elapsed:Float):Void
	{	
		super.update(elapsed);
		menu = new FlxSprite(0, 0, 'images/menu.png');
		add(menu);
		start = new FlxButton(0, 0, "", startGame);
		start.loadGraphic("images/PLAYbutton.png");
		hall = new FlxButton(540, 400, "", hallGame);
		hall.loadGraphic("images/halloffam.png");
		quit = new FlxButton(540, 500, "", QuitGame);
		quit.loadGraphic("images/exitbutton.png");
		
		add(start);
		add(hall);
		add(quit);
		start.screenCenter();
		
		
	}
	
	public function startGame()
	{
		FlxG.switchState(new Panel1State());
	}
	public function hallGame()
	{
		FlxG.switchState(new HallofFame());
	}
	
	public function QuitGame()
	{
		flash.Lib.exit();
	}
}