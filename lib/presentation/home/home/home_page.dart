import 'package:alhuruf/common/extensions/text_extensions.dart';
import 'package:alhuruf/common/extensions/theme_extensions.dart';
import 'package:alhuruf/common/gen/assets.gen.dart';
import 'package:alhuruf/common/gen/strings.dart';
import 'package:alhuruf/common/router/app_router.gr.dart';
import 'package:alhuruf/common/widgets/button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:management/management.dart';

import 'management/home_management.dart';
import 'management/home_manager.dart';

@RoutePage()
class HomePage extends Managed<HomeManager, HomeState, HomeEffect> {
  const HomePage({super.key});

  @override
  void init(context, manager) {}

  @override
  void listener(context, manager, effect) {}

  @override
  Widget builder(context, manager, state) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => context.router.push(ProfileRoute()),
          child: Row(
            children: [
              'Xayrulloh Muhammad'.w(600).s(22).c(context.colors.onPrimary),
              Assets.icons.rightArrrow.svg(),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ).copyWith(bottom: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'ID-1000100'.w(600).s(16).c(context.colors.onPrimary),
                'Paid until 15.01.2026'
                    .w(500)
                    .s(14)
                    .c(context.colors.onPrimary),
              ],
            ),
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(color: context.colors.primary, height: 24),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: context.colors.onPrimary,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                'Arab harflari'
                                    .w(600)
                                    .s(18)
                                    .c(context.colors.headline),
                                '27 ta dars'
                                    .w(600)
                                    .s(16)
                                    .c(context.colors.primary),
                              ],
                            ),
                            SizedBox(height: 16),
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 8,
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 8,
                                  ),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: context.colors.window,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  alignment: Alignment.topCenter,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: 'أ'
                                            .w(700)
                                            .s(50)
                                            .c(context.colors.headline),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              index
                                                  .toString()
                                                  .w(600)
                                                  .s(16)
                                                  .c(context.colors.label),
                                              Assets.icons.check.svg(),
                                            ],
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: 'Alif'
                                                .w(600)
                                                .s(16)
                                                .c(context.colors.label),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 16),
                            Button.elevated(
                              text: Strings.seeAll,
                              backgroundColor: context.colors.disable,
                              textColor: context.colors.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: context.colors.onPrimary,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Strings.words.w(600).s(18).c(context.colors.headline),
                        '27 ta dars'.w(600).s(16).c(context.colors.primary),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: context.colors.window,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              'Shahodat kalimasi'
                                  .w(600)
                                  .s(14)
                                  .c(context.colors.headline),
                              SizedBox(height: 4),
                              Strings.verse(
                                verse: 5,
                              ).w(600).s(14).c(context.colors.label),
                            ],
                          ),
                          Assets.icons.rightArrrow.svg(
                            colorFilter: ColorFilter.mode(
                              context.colors.title,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
