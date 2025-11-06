import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:new_app/hive/hive_registrar.g.dart';
import 'package:new_app/src/model/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'data_store_provider.g.dart';

@riverpod
class DataStore extends _$DataStore {
  static const _todoBoxName = 'todoBox';

  @override
  FutureOr<void> build() async {
    await Hive.initFlutter();

    Hive.registerAdapters();

    await Hive.openBox(_todoBoxName);
  }

  Todo getTodo(int id) {
    final todoBox = Hive.box(_todoBoxName);
    return todoBox.get(id.toString());
  }

  void saveTodos(List<Todo> todos) {
    final todoBox = Hive.box(_todoBoxName);
    for (final todo in todos) {
      todoBox.put(todo.id.toString(), todo);
    }
  }

  void updateTodo(int id, bool completed) {
    final todoBox = Hive.box(_todoBoxName);
    final todo = getTodo(id);
    final updatedTodo = todo.copyWith(completed: completed);
    todoBox.put(id.toString(), updatedTodo);
  }
}
