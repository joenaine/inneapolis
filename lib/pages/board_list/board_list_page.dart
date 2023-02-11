import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inneapolis/pages/board_list/board_list_page_store.dart';
import 'package:inneapolis/pages/board_list/widgets/board_tile.dart';
import 'package:inneapolis/pages/board_list/widgets/preview.dart';
import 'package:inneapolis/resources/app_assets.dart';
import 'package:inneapolis/resources/app_colors_const.dart';
import 'package:inneapolis/resources/images.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:inneapolis/routing/app_router.dart';

class BoardListPage extends StatefulWidget {
  const BoardListPage({Key? key}) : super(key: key);

  @override
  State<BoardListPage> createState() => _BoardListPageState();
}

class _BoardListPageState extends State<BoardListPage> {
  final BoardListPageStore pageStore = BoardListPageStore();

  @override
  void initState() {
    pageStore.loadPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.white,
        child: SvgPicture.asset(AppAssets.svg.add),
        onPressed: () {
          context.router.push(
            CreateBoardRoute(boardListStore: pageStore),
          );
        },
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Observer(builder: (context) {
        return ListView.separated(
          itemCount: pageStore.boards.length + 1,
          itemBuilder: (context, index) {
            return index == 0
                ? Container()
                : GestureDetector(
                    onTap: () {
                      context.router
                          .push(
                        KanbanRoute(
                          board: pageStore.boards[index - 1],
                        ),
                      )
                          .then((value) {
                        pageStore.loadPage();
                      });
                    },
                    child: BoardListTile(
                      title: pageStore.boards[index - 1].title,
                      preview: Preview(
                        imagePath:
                            '$images/bc${pageStore.boards[index - 1].backgroundIndex}.jpg',
                      ),
                    ),
                  );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 4),
        );
      }),
    );
  }
}
