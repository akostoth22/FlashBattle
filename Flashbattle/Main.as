package 
{
	import flash.display.InteractiveObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.text.TextField;
	
	public class Main extends Sprite 
	{
		
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			//entry point
			var t:TextField = new TextField();
            var playerHP:int = 100;
			var playerAtt:int = 15;
			var playerName:String = "Maloka";
			var enemyHP:int = 100;
			var enemyAtt:int = 15;
			var enemyName:String = "Snipen";
			var playerAttack:int;
			var enemyAttack:int;
			t.border = true;
			t.appendText;
			t.height = 500;
			t.width = 300;
			
			for (var i:int = 0; i < 5; i++) 
			{
				playerAttack = Math.random() * playerAtt;
				enemyAttack = Math.random() * enemyAtt;
				playerHP -= enemyAttack;
				enemyHP -= playerAttack;
				
				t.appendText("Round: " + String(i + 1));
				t.appendText("\n" + playerName + " hits " + enemyName + " for " + playerAttack + " damage, he now has " + enemyHP + "HP left" + "\n");
				t.appendText(enemyName + " hits " + playerName + " for " + enemyAttack + " damage, he now has " + playerHP + "HP left" + "\n" + "\n");
				
			}
			
			
			addChild(t);
		}	
	}
}