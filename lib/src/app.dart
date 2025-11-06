import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_app/src/provider/data_store_provider.dart';
import 'package:new_app/src/router/router_provider.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(dataStoreProvider);
    final router = ref.watch(routerProvider);
    return switch (router) {
      AsyncData(:final value) => MaterialApp.router(
        restorationScopeId: 'app',
        routeInformationParser: value.routeInformationParser,
        routerDelegate: value.routerDelegate,
        routeInformationProvider: value.routeInformationProvider,
        title: 'Todo App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
      ),
      AsyncError(:final error) => MaterialApp(
        home: Scaffold(body: Center(child: Text(error.toString()))),
      ),
      _ => SizedBox(),
    };
  }
}
