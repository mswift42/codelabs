@HtmlImport('awesome-meme.html')
library dpoawesome.lib.awesome_meme;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

@PolymerRegister('awesome-meme')
class AwesomeMeme extends PolymerElement {
  @property
  String top;
  String bottom;


}

