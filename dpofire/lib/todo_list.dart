@HtmlImport('todo-list.html')
library dpofire.lib.todo_list;

import 'package:polymer_elements/paper_input.dart';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart';

class Todo {
  bool done;
  String text;
  Todo(this.done, this.text);
}

@PolymerRegister('todo-list')
class TodoList extends PolymerElement {
  List<Todo> items = [
    new Todo(true, 'Write a Todo App'),
    new Todo(false, 'Use Firebase')
  ];
}
