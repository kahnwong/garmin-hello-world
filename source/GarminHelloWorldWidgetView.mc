using Toybox.WatchUi as Ui;
using Toybox.System;
using Toybox.Lang;
using Toybox.Graphics;
using Toybox.Time;
using Toybox.Timer;

class GarminHelloWorldWidgetView extends Ui.View {
  var _nowEpoch;

  function initialize() {
    View.initialize();

    _nowEpoch = Time.now().value().toString();
    // System.println(now);
  }

  function updateTime() as Void {
    _nowEpoch = Time.now().value().toString();
    Ui.requestUpdate();
  }

  function onLayout(dc) {
    var myTimer = new Timer.Timer();
    myTimer.start(method(:updateTime), 1000, true);
  }

  function onShow() {
  }

  function onUpdate(dc) {
    dc.clear();
    View.onUpdate(dc);

    setLayout(Rez.Layouts.MainLayout(dc));
    var timeView = (View.findDrawableById("center") as Toybox.WatchUi.Text);
    timeView.setText(_nowEpoch);
  }

  function onHide() {}
}
