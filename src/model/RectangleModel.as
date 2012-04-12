/**
 * Created with IntelliJ IDEA.
 * User: voffka
 * Date: 02.04.12
 * Time: 0:53
 * To change this template use File | Settings | File Templates.
 */
package model {
public class RectangleModel {

    private var _width:int;
    private var _height:uint;
    private var _color:int;
    private var _x:int;
    private var _y:int;
    private var _priority:int;


    public function RectangleModel(_x:int=0, _y:int=0, _width:int = 100, _height:int = 100, _color:uint = 0xff00ff, _priority:int=1) {

        this._width = _width;
        this._height = _height;
        this._color = _color;

        this._x = _x;
        this._y = _y;
        this._priority=_priority;
    }


    public function get width():int {
        return _width;
    }

    public function get height():uint {
        return _height;
    }


    public function get color():uint {
        return _color;
    }

    public function toString():String {
        return "width:" + width + " height:" + height;
    }

    public function get x():int {
        return _x;
    }

    public function get y():int {
        return _y;
    }

    public function get priority():int {
        return _priority;
    }
}
}
