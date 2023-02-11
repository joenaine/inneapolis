import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:inneapolis/data/board/board.dart';
import 'package:inneapolis/pages/board_list/board_list_page_store.dart';
import 'package:inneapolis/pages/create_board/create_board_page_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:inneapolis/resources/app_assets.dart';
import 'package:inneapolis/resources/app_colors_const.dart';
import 'package:inneapolis/resources/images.dart';
import 'package:inneapolis/resources/styles.dart';
import 'package:inneapolis/routing/app_router.dart';
import 'package:inneapolis/widgets/app_divider.dart';
import 'package:inneapolis/widgets/app_hide_keyboard_widget.dart';
import 'package:inneapolis/widgets/textfields.dart';

import '../choose_background/choose_background_page_store.dart';

class CreateBoardPage extends StatefulWidget {
  final BoardListPageStore boardListStore;

  const CreateBoardPage({Key? key, required this.boardListStore})
      : super(key: key);

  @override
  State<CreateBoardPage> createState() => _CreateBoardPageState();
}

class _CreateBoardPageState extends State<CreateBoardPage> {
  final CreateBoardPageStore pageStore = GetIt.I();
  final ChooseBackgroundPageStore chooseBckpageStore = GetIt.I();

  TextEditingController controller = TextEditingController();

  void createBoard() {
    if (pageStore.isCreateButtonActive) {
      final newBoard = Board(
        title: controller.text,
        cards: [],
        index: widget.boardListStore.boards.length,
        backgroundIndex: chooseBckpageStore.selectedBackgroundIndex,
      );
      widget.boardListStore.addBoard(newBoard);
      context.router
          .popAndPush(
        KanbanRoute(board: widget.boardListStore.boards.last),
      )
          .then((value) {
        widget.boardListStore.loadPage();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppHideKeyBoardWidget(
      child: Scaffold(
        backgroundColor: AppColors.bg,
        appBar: AppBar(
          title: const Text('Board'),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                right: 22.w,
              ),
              child: GestureDetector(
                onTap: createBoard,
                child: Center(
                  child: Observer(builder: (context) {
                    return Text(
                      'Create',
                      style: TextStyles.textSize18Weight600.copyWith(
                        color: pageStore.isCreateButtonActive
                            ? AppColors.primary
                            : AppColors.grayLight,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              child: CustomTextFieldGlobal(
                controller: controller,
                hintText: 'New Board',
                onChanged: (value) {
                  if (controller.text.isNotEmpty) {
                    pageStore.isCreateButtonActive = true;
                  } else {
                    pageStore.isCreateButtonActive = false;
                  }
                },
              ),
            ),
            const AppDivider(),
            SizedBox(
              height: 49.h,
            ),

            Center(
              child: SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 40,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Observer(
                      builder: (context) {
                        return chooseBckpageStore.selectedBackgroundIndex ==
                                index
                            ? Stack(
                                children: [
                                  Container(
                                    height: 40.w,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(4.r),
                                      ),
                                      image: DecorationImage(
                                        image:
                                            AssetImage('$images/bc$index.jpg'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                      child: SvgPicture.asset(
                                    AppAssets.svg.check,
                                    color: AppColors.white,
                                  )),
                                ],
                              )
                            : InkWell(
                                onTap: () {
                                  chooseBckpageStore.selectBackground(index);
                                  chooseBckpageStore.selectedBackgroundIndex =
                                      index;
                                },
                                child: Container(
                                  height: 40.w,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4.r),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage('$images/bc$index.jpg'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              );
                      },
                    );
                  },
                ),
              ),
            ),
            // InkWell(
            //   highlightColor: Palette.darkBlue,
            //   onTap: () {
            //     context.router.push(
            //       ChooseBackgroundRoute(
            //         createBoardPageStore: pageStore,
            //       ),
            //     );
            //   },
            //   child: Container(
            //     color: AppColors.green,
            //     padding: EdgeInsets.symmetric(
            //       horizontal: 16.w,
            //       vertical: 16.h,
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         TextSize.s16w500('Background'),

            //         // Observer(builder: (context) {
            //         //   return Container(
            //         //     height: 22.w,
            //         //     width: 22.w,
            //         //     decoration: BoxDecoration(
            //         //       borderRadius: BorderRadius.all(
            //         //         Radius.circular(4.r),
            //         //       ),
            //         //       image: DecorationImage(
            //         //         image: AssetImage(
            //         //             '$images/bc${pageStore.selectedBackgroundIndex}.jpg'),
            //         //         fit: BoxFit.fill,
            //         //       ),
            //         //     ),
            //         //   );
            //         // }),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
