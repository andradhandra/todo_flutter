import 'package:go_router/go_router.dart';
import 'package:new_app/src/screen/todo_screen.dart';
import 'package:new_app/src/screen/welcome_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
FutureOr<GoRouter> router(Ref ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: WelcomeScreen.routename,
        builder: (context, state) => WelcomeScreen(),
      ),
      GoRoute(
        path: '/todo',
        name: TodoScreen.routename,
        builder: (context, state) => TodoScreen(),
      ),
    ],
  );
}
