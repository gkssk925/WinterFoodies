import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/presentation/screens/store_list/store_list_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final SearchController _searchController = SearchController();

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
                            // Navigator.of(context).pushNamed('/storeList');
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
                    Row(
                      children: [
                        Text(
                          '1    ',
                          style: context.titleMedium(),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                color: MyColors.white),
                            child: Center(
                              child: Text(
                                '붕어빵',
                                style: context.titleMedium(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '2    ',
                          style: context.titleMedium(),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                color: MyColors.white),
                            child: Center(
                              child: Text(
                                '어묵',
                                style: context.titleMedium(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '3    ',
                          style: context.titleMedium(),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: MyColors.white),
                            child: Center(
                              child: Text(
                                '계란빵',
                                style: context.titleMedium(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '4    ',
                          style: context.titleMedium(),
                        ),
                        Flexible(
                          flex: 2,
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                color: MyColors.white),
                            child: Center(
                              child: Text(
                                '군밤',
                                style: context.titleMedium(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}
