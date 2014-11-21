library app_view;

import 'dart:html';
import 'package:polymer/polymer.dart';
import '../../model/global.dart';

@CustomTag('app-view')
class AppView extends PolymerElement {

  // initialize system log
  bool _logInitialized = initLog();

  static const int IMPERIAL_MULTIPLIER = 703;

  @observable String units = "imperial";

  @observable String height_ft;
  @observable String height_in;
  @observable String height_m;

  @observable String weight_lb;
  @observable String weight_kg;

  // non-visual initialization can be done here
  AppView.created() : super.created();

  // life-cycle method called by the Polymer framework when the element is attached to the DOM
  @override void attached() {
    super.attached();
    log.info("$runtimeType::attached()");
  }

  void calculateBMI(Event event, var detail, Element target) {
    log.info("$runtimeType::calculateBMI()");
  }
}

