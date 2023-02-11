import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:inneapolis/pages/create_board/create_board_page_store.dart';
import 'package:inneapolis/pages/kanban/kanban_page_store.dart';
import 'package:inneapolis/resources/app_assets.dart';
import 'package:inneapolis/resources/app_colors_const.dart';
import 'package:inneapolis/resources/app_styles_const.dart';
import 'package:inneapolis/widgets/app_hide_keyboard_widget.dart';
import 'package:inneapolis/widgets/general_button.dart';
import 'package:inneapolis/widgets/textfields.dart';

class CreateTaskPage extends StatelessWidget {
  final int cardId;
  final KanbanStore boardStore;
  CreateTaskPage({Key? key, required this.cardId, required this.boardStore})
      : super(key: key);

  final CreateBoardPageStore pageStore = GetIt.I();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        boardStore.saveChanges();
        return Future(() => true);
      },
      child: AppHideKeyBoardWidget(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  left: 22.w,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () {
                        context.router.pop();
                      },
                      child: SvgPicture.asset(AppAssets.svg.xcircle)),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextFieldGlobal(
                      controller: controller,
                      hintText: 'New Task',
                      onChanged: (value) {
                        if (controller.text.isNotEmpty) {
                          pageStore.isCreateButtonActive = true;
                        } else {
                          pageStore.isCreateButtonActive = false;
                        }
                      },
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Inside: ',
                          style: AppStyles.s16w400,
                        ),
                        Text(
                          boardStore.items[cardId].title,
                          style: AppStyles.s16w400
                              .copyWith(color: AppColors.primary),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Observer(builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: GeneralButton(
                    color: pageStore.isCreateButtonActive
                        ? AppColors.primary
                        : AppColors.disabled,
                    fontSize: 16,
                    text: 'Save',
                    onPressed: () {
                      if (pageStore.isCreateButtonActive) {
                        boardStore.addTask(
                            column: cardId, title: controller.text);
                        context.router.pop();
                      }
                    },
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
