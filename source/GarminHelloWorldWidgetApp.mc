using Toybox.Application as App;
using Toybox.WatchUi as Ui;
using Toybox.System;
using Toybox.Communications;

class GarminHelloWorldWidgetApp extends App.AppBase {
  function initialize() {
    AppBase.initialize();
  }

  function onStart(state) {}

  function onStop(state) {}

  function getInitialView() {
    return [new GarminHelloWorldWidgetView()];
  }

  function onReceive(responseCode, data) {}
}
