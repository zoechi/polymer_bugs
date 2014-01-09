library second_element;

import 'package:polymer/polymer.dart';

@CustomTag('second-element')
class SecondElement extends PolymerElement {
  SecondElement.created() : super.created() {
    print('SecondElement created');
  }

  @published String name = "second-element";
}