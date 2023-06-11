import 'dart:async';

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/presentation/customer/screens/store_list/store_list_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final SearchController _searchController = SearchController();

  int currentIndex = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    const duration = Duration(seconds: 2);
    timer = Timer.periodic(duration, (Timer timer) {
      setState(() {
        if (currentIndex == 8) {
          currentIndex = 0;
        } else {
          currentIndex = (currentIndex + 4) % Strings.cateList.length;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          title: Text(
            '메뉴선택',
            style: context.displayMedium(),
          ),
          // leading: IconButton(
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //     icon: Icon(Icons.arrow_back_ios)),
          backgroundColor: MyColors.primary,
        ),
        body: Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
            child: Column(
              children: [
                SearchAnchor(
                    searchController: _searchController,
                    isFullScreen: false,
                    viewHintText: '메뉴 검색',
                    builder:
                        (BuildContext context, SearchController controller) {
                      return Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            color: MyColors.white),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.search),
                              onPressed: () {
                                controller.openView();
                              },
                            ),
                            Text(
                              _searchController.text,
                              style: context.titleMedium(),
                            )
                          ],
                        ),
                      );
                    },
                    suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(Strings.cateList.length,
                          (int index) {
                        final String item = Strings.cateList[index];
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            setState(() {
                              controller.closeView(item);
                            });
                          },
                        );
                      });
                    }),
                Flexible(
                  child: GridView.count(
                    crossAxisCount: 3, // 열의 개수
                    children: List.generate(Strings.cateList.length, (index) {
                      return Center(
                        child: InkWell(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: StoreListScreen(),
                              withNavBar: true,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(child: Text(Strings.cateList[index])),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '인기 간식 랭킹',
                      style: context.titleLarge(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                          itemCount:
                              (currentIndex + 4) <= Strings.cateList.length
                                  ? 4
                                  : Strings.cateList.length - currentIndex,
                          scrollDirection: Axis.vertical,
                          itemBuilder: ((context, index) {
                            final keywordIndex = (currentIndex + index) %
                                Strings.cateList.length;
                            return _popularKeyword(
                                Strings.cateList[keywordIndex], keywordIndex);
                          })),
                    )
                  ],
                )
              ],
            )));
  }

  Widget _popularKeyword(String keyword, int index) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              (index + 1).toString(),
              style: context.titleMedium(),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: MyColors.white),
                child: Center(
                  child: Text(
                    keyword,
                    style: context.titleMedium(),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
