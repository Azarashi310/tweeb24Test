package  {
	
	import a24.tween.Tween24;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class GameMain extends MovieClip {
		
		//ボールの作成
		private var ball:Ball_mc = new Ball_mc();
		
		//次に動かすべきポイント	
		private var point_X:int;
		private var point_Y:int;
		
		//モーショントゥイーン
		private var ballMotion:Tween24;
		
		public function GameMain() {
			// constructor code
			
			//初期化
			init();
			
			//ボールをマウスダウンしたら
			ball.addEventListener(MouseEvent.MOUSE_DOWN, MOUSE_DOWN_EventHandler);
		}
		
		//マウスをダウンしたら
		private function MOUSE_DOWN_EventHandler(e:MouseEvent):void 
		{
			ballMotion = Tween24.tween(ball, 0.25, Tween24.ease.ExpoInOut).xy(point_X, point_Y);
			ballMotion.play();
			makeRandomPoint();
		}
		
		//初期化
		private function init():void 
		{
			ball.x = 300;
			ball.y = 200;
			
			//ボールの生成
			addChild(ball);
			
			//乱数の生成
			makeRandomPoint();
		}
		
		//乱数の生成
		private function makeRandomPoint():void 
		{
			point_X = Math.random() * 350 << 0;
			point_Y = Math.random() * 370 << 0;
		}
		
		
	}
	
}
