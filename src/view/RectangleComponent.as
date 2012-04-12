/**
 * Created with IntelliJ IDEA.
 * User: voffka
 * Date: 11.04.12
 * Time: 11:59
 * To change this template use File | Settings | File Templates.
 */
package view {
import flash.events.Event;

import model.RectangleModel;

import mx.containers.Canvas;

public class RectangleComponent extends Canvas{
    private var _model:RectangleModel;


    public function get model():RectangleModel {
        return _model;
    }

    public function set model(value:RectangleModel):void {
        _model = value;
        this.addEventListener(Event.ENTER_FRAME,enterFrameHandler);
    }

    protected function enterFrameHandler(e:Event):void{
        this.removeEventListener(Event.ENTER_FRAME,enterFrameHandler);
        this.x=_model.x;
        this.y=_model.y;
        this.width=_model.width;
        this.height=_model.height;
        this.setStyle("backgroundColor",_model.color);



    }
}
}
