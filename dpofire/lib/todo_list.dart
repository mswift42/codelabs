@HtmlImport('todo-list.html')
library dpofire.lib.todo_list;

import 'package:polymer_elements/paper_input.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';
import 'dart:html';

class Todo extends JsProxy {
  @reflectable
  bool done;
  @reflectable
  String text;
  Todo(this.done, this.text);
}

@PolymerRegister('todo-list')
class TodoList extends PolymerElement {
  TodoList.created() : super.created();

  @property
  List<Todo> items = [
    new Todo(true, 'Write a Todo App'),
    new Todo(false, 'Use Firebase')
  ];
  @property
  String newItemValue = '';


  @reflectable
  addItem(Event event, [_]) {
    event.preventDefault();
    this.add('items', new Todo(false, newItemValue));
    this.set('newItemValue', '');
  }
}
