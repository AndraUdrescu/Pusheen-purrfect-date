

package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxDestroyUtil;

import sys.db.Sqlite;
import sys.db.Connection;
import sys.db.ResultSet;
import flixel.util.FlxAxes;


class HallofFame extends FlxState
{	public static var data:Connection;
	var name:Array<String>;
	var hall : FlxSprite;

	override public function create():Void

	{	hall = new FlxSprite(0, 0, 'images/halloffame.png');
		add(hall);
		
		getinfo();
		displayinfo();
		
		
	}

	override public function update(elapsed:Float):Void

	{
		super.update(elapsed);
		
		if (FlxG.keys.anyPressed([ESCAPE]))
	{
		
		FlxG.switchState(new Menu());
		
		
		
	
		
	}

	}
	
	function displayinfo() {
		if (name.length != 0) {
			var offset = 0;
			for (i in name) 
			{
				var text = new FlxText(200, 200 + offset * 100, 300, i, 40);
				offset++;
				add(text);
			}
		}
		else {
			var text = new FlxText(0,0, 300, "Sorry no scores", 70);
			text.screenCenter(FlxAxes.XY);
			add(text);
		}
	}

	function getinfo() {
		data = Sqlite.open("Data/data.db");

		var scores = data.request("SELECT * FROM highscore ASC LIMIT 10");
		name = new Array<String>();
		for (row in scores) {
			name.push(row.name );
		}

		data.close();
		data = null;
	}
	
}