library app_element;

import 'package:polymer/polymer.dart';
import 'package:import_element/first_element/first_element.dart';

@CustomTag('app-element')
class AppElement extends PolymerElement {
  AppElement.created() : super.created() {
    print('AppElement created');
  }

  void enteredView() {
    super.enteredView();
    print('AppElement.EnteredView');
    var elem = $['first'];
    var first;
    try {
      first = elem as FirstElement;
    } catch(e) {
      print('catch: ${e}');
    } finally {
      print('finally');
    }
    print('FirstElement.name: ${first.name}'); // not executed anymore
    print('enteredView end'); // not executed anymore
  }
}