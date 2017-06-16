package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;
import sys.db.Connection;
import sys.db.ResultSet;
import sys.db.Sqlite;
import flixel.util.FlxAxes;
import flixel.addons.ui.FlxInputText;
import flixel.FlxSprite;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;
import flixel.addons.text.FlxTextField;
import flixel.input.FlxInput;



class WinState extends FlxState
{	public static var data:Connection;

	var ed5 : FlxSprite; //stores a sprite
	var input : FlxInputText;

	override public function create():Void
	{
		super.create( );
		FlxG.camera.fade(FlxColor.BLACK, .33, true);
		ed5 = new FlxSprite(0, 0, 'images/happyendingq.png');
		add(ed5);
		input = new FlxInputText(500, 600, 200, "Name", 40);
		
		add(input);
		
			
		
		
		
	
	}
	
	
	override public function update(elapsed:Float):Void {
		super.update(elapsed);
		if (FlxG.keys.anyPressed([ENTER, SPACE]))
		
	{
		
		FlxG.switchState(new Menu());
		submitName(input.text);
	
		
	}
		
	
}
	static public function submitName(name:String) {
		data= Sqlite.open("Data/data.db");

		
		data.request("INSERT INTO highscore (name) VALUES ('"+ name + "')");
		data.close();
		//data = null;
		
		
		
		
	}


	
}