import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inneapolis/pages/task_info/task_info_page_store.dart';
import 'package:inneapolis/resources/app_colors_const.dart';
import 'package:inneapolis/resources/app_styles_const.dart';
import 'package:inneapolis/resources/styles.dart';
import 'package:inneapolis/services/text_fontsize.dart';
import 'package:inneapolis/widgets/app_hide_keyboard_widget.dart';
import 'package:inneapolis/widgets/discolored_button.dart';
import 'package:inneapolis/widgets/general_button.dart';
import 'package:inneapolis/widgets/textfields.dart';

class TaskInfoPage extends StatefulWidget {
  final int boardId;
  final int cardId;
  final int taskId;
  final String title;
  final String description;
  final String inList;

  const TaskInfoPage({
    Key? key,
    required this.boardId,
    required this.cardId,
    required this.taskId,
    required this.title,
    required this.description,
    required this.inList,
  }) : super(key: key);

  @override
  State<TaskInfoPage> createState() => _TaskInfoPageState();
}

class _TaskInfoPageState extends State<TaskInfoPage> {
  late final TextEditingController titleController;

  late final TextEditingController descriptionController;

  final TaskInfoPageStore pageStore = TaskInfoPageStore();

  @override
  void initState() {
    titleController = TextEditingController(text: widget.title);
    descriptionController = TextEditingController(text: widget.description);
    pageStore.loadTask(widget.boardId, widget.cardId, widget.taskId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () {
        if (pageStore.canUpdateTask) {
          pageStore.updateTask(
            widget.boardId,
            widget.cardId,
            widget.taskId,
            titleController.text,
            descriptionController.text,
          );
        }
        return Future.value(true);
      },
      child: AppHideKeyBoardWidget(
        child: Scaffold(
          backgroundColor: AppColors.bg,
          appBar: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(
                left: 22.w,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    context.router.pop();
                  },
                  child: const Icon(
                    Icons.close,
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  right: 22.w,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      pageStore.deleteTask(
                        widget.boardId,
                        widget.cardId,
                        widget.taskId,
                      );
                      pageStore.canUpdateTask = false;
                      context.router.pop();
                    },
                    child: const Icon(
                      Icons.delete_outlined,
                    ),
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              width: width,
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 8),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
                    color: AppColors.white,
                    child: Column(
                      children: [
                        CustomTextFieldGlobal(
                          controller: titleController,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Inside: ',
                              style: AppStyles.s16w400,
                            ),
                            Text(
                              widget.inList,
                              style: AppStyles.s16w400
                                  .copyWith(color: AppColors.primary),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
                    color: AppColors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextSize.s18w700('Description'),
                        const SizedBox(height: 8),
                        CustomTextFieldGlobal(
                          controller: descriptionController,
                          maxlines: 8,
                          keyboardType: TextInputType.multiline,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 80,
                    color: AppColors.white,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 5);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return const CircleAvatar(
                          backgroundColor: AppColors.grayLight,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
                    color: AppColors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextSize.s18w700('Timer'),
                        const SizedBox(height: 8),
                        Container(
                          color: AppColors.dark,
                          child: Center(
                            child: Observer(builder: (context) {
                              return Text(
                                pageStore.formattedTime(pageStore.countdown),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyles.textSize48Weight400.copyWith(
                                  color: Palette.white,
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Center(
                          child: Observer(builder: (context) {
                            return pageStore.isTimerRunning
                                ? SizedBox(
                                    width: 100,
                                    child: DiscoloredButton(
                                        text: 'Stop',
                                        onPressed: () {
                                          if (pageStore.isTimerRunning) {
                                            pageStore.stopTimer();
                                          } else {
                                            pageStore.startTimer();
                                          }
                                        }))
                                : SizedBox(
                                    width: 100,
                                    child: GeneralButton(
                                        fontSize: 16,
                                        text: 'Start',
                                        onPressed: () {
                                          if (pageStore.isTimerRunning) {
                                            pageStore.stopTimer();
                                          } else {
                                            pageStore.startTimer();
                                          }
                                        }));
                          }),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              pageStore.closeTask(
                                widget.boardId,
                                widget.cardId,
                                widget.taskId,
                              );
                              pageStore.canUpdateTask = false;
                              context.router.pop();
                            },
                            child: Text(
                              'Close Task',
                              style: AppStyles.s18w700
                                  .copyWith(color: AppColors.gray),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
