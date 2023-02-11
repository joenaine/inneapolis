import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:inneapolis/app.dart';
import 'package:inneapolis/data/board/board.dart';
import 'package:inneapolis/data/card/card.dart';
import 'package:inneapolis/data/completed_task/completed_task.dart';
import 'package:inneapolis/data/task/task.dart';
import 'package:inneapolis/di/di_container.dart';
import 'package:inneapolis/data/relation/relation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp();
  Hive
    ..initFlutter()
    ..registerAdapter(TaskAdapter())
    ..registerAdapter(RelationAdapter())
    ..registerAdapter(BoardCardAdapter())
    ..registerAdapter(BoardAdapter())
    ..registerAdapter(CompletedTaskAdapter());
  await Hive.openBox('kanban_panel');
  await initializeLocator();
  runApp(App());
}
