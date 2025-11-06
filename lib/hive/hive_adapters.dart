import 'package:hive_ce/hive.dart';
import 'package:new_app/src/model/todo_model.dart';

@GenerateAdapters([AdapterSpec<Todo>()])
part 'hive_adapters.g.dart';
