import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_app/src/provider/data_store_provider.dart';
import 'package:new_app/src/provider/todo_provider.dart';

class TodoScreen extends ConsumerStatefulWidget {
  static String routename = 'TodoScreen';
  const TodoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodoScreenState();
}

class _TodoScreenState extends ConsumerState<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    final todos = ref.watch(todoProviderProvider);
    final todoBox = ref.watch(dataStoreProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
      body: RefreshIndicator(
        onRefresh: () async => ref.refresh(todoProviderProvider.future),
        child: switch (todos) {
          AsyncData(:final value) => ListView.builder(
            padding: EdgeInsets.all(24),
            itemCount: (value ?? []).length,
            itemBuilder: (context, i) {
              final todo = value?[i];
              final storedTodo = todoBox.getTodo(todo?.id ?? 0);
              return CheckboxListTile(
                value: storedTodo.completed,
                onChanged: (bool? val) {
                  todoBox.updateTodo(storedTodo.id ?? 0, val!);
                },
                title: Text(value?[i].title ?? "-"),
              );
            },
          ),
          AsyncError(:final error) => Center(child: Text(error.toString())),
          _ => Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }
}
