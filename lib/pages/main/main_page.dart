import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:inneapolis/pages/register/auth.dart';
import 'package:inneapolis/pages/register/register_screen.dart';
import 'package:inneapolis/resources/app_colors_const.dart';
import 'package:inneapolis/resources/firebase_consts.dart';
import 'package:inneapolis/routing/app_router.dart';
import 'package:inneapolis/resources/styles.dart';
import 'package:inneapolis/services/storage/storage.dart';
import 'package:inneapolis/widgets/app_global_loader_widget.dart';

final user = authInstance.currentUser;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _box = Hive.box('kanban_panel');
  Storage storage = GetIt.I();

  @override
  void initState() {
    if (_box.get('boards') == null) {
      storage.createInitialData();
    } else {
      storage.loadData();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        BoardListRoute(),
        TasksRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return StreamBuilder<User?>(
            stream: AuthRepository().authState,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Scaffold(
                  backgroundColor: AppColors.bg,
                  body: Center(
                    child: AppLoaderWidget(),
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.done ||
                  snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasData && user != null) {
                  return Scaffold(
                    backgroundColor: AppColors.bg,
                    body: child,
                    bottomNavigationBar: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Palette.white,
                            width: 0.1,
                          ),
                        ),
                      ),
                      child: BottomNavigationBar(
                        selectedFontSize: 0,
                        currentIndex: tabsRouter.activeIndex,
                        onTap: (index) {
                          tabsRouter.setActiveIndex(index);
                        },
                        items: const [
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.border_all_rounded,
                              size: 32,
                            ),
                            label: 'board',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                              Icons.tab,
                              size: 32,
                            ),
                            label: 'tasks',
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return const RegisterScreen();
                }
              } else {
                return Center(
                  child: Text('State: ${snapshot.connectionState}'),
                );
              }
            });
      },
    );
  }
}
