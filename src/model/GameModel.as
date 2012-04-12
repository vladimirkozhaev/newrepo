/**
 * Created with IntelliJ IDEA.
 * User: voffka
 * Date: 11.04.12
 * Time: 18:51
 * To change this template use File | Settings | File Templates.
 */
package model {
import mx.controls.Alert;

public class GameModel {
    private var _rectangles:Array;

    public function GameModel() {

    }

    public function get rectangles():Array {
        return _rectangles;
    }

    public function set rectangles(value:Array):void {
        _rectangles = new Array();
        for each (var rect in value) {
            if (rect as RectangleModel != null) {
                _rectangles.push(rect)
            }
        }

        _rectangles.sort(sortFunc)

    }

    private function sortFunc(a:RectangleModel, b:RectangleModel):Number {
        if (a.priority > b.priority) return 1;
        if (a.priority < b.priority) return -1;
        return 0;
    }
}
}
