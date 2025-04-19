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

  function updateTime() {
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
    View.findDrawableById("center").setText(_nowEpoch);
  }

  function onHide() {}
}
