library first_element;

import 'package:polymer/polymer.dart';
import 'package:import_element/second_element/second_element.dart';

@CustomTag('first-element')
class FirstElement extends PolymerElement {
  FirstElement.created() : super.created() {
    print('FirstElement created');
  }

  @published String name = 'second';

  void enteredView() {
    super.enteredView();
    print('SecondElement.name: ${($['second'] as SecondElement).name}');
  }
}