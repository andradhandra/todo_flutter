import 'package:dio/dio.dart';
import 'package:new_app/src/model/todo_model.dart';
import 'package:new_app/src/provider/data_store_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_provider.g.dart';

@riverpod
class TodoProvider extends _$TodoProvider {
  final dio = Dio();
  @override
  Future<List<Todo>?> build() async {
    final todoBox = ref.read(dataStoreProvider.notifier);
    try {
      final response = await dio.get(
        'https://jsonplaceholder.typicode.com/todos',
      );
      final todos = (response.data as List<dynamic>)
          .map((el) => Todo.fromJson(el as Map<String, dynamic>))
          .toList();

      todoBox.saveTodos(todos);
      return todos;
    } on DioException {
      rethrow;
    }
  }
}
