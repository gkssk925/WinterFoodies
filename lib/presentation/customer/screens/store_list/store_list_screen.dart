import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/presentation/customer/screens/map/map_screen.dart';
import 'package:winter_foodies/presentation/customer/screens/store_detail/store_detail_screen.dart';

class StoreListScreen extends StatefulWidget {
  const StoreListScreen({super.key});

  @override
  State<StoreListScreen> createState() => _StoreListScreenState();
}

class _StoreListScreenState extends State<StoreListScreen>
    with TickerProviderStateMixin {
  final SearchController _searchController = SearchController();

  String _selectedMenu = '붕어빵';
  int _selectedFilterType = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.primary,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: MyColors.primary,
      ),
      body: Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: MapScreen(),
                          withNavBar: true,
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.map,
                            size: 30,
                          ),
                          Text('지도', style: context.titleLarge())
                        ],
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: SearchAnchor(
                        searchController: _searchController,
                        isFullScreen: false,
                        viewHintText: '가게 검색',
                        builder: (BuildContext context,
                            SearchController controller) {
                          return Container(
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                color: MyColors.white),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
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
                        suggestionsBuilder: (BuildContext context,
                            SearchController controller) {
                          return List<ListTile>.generate(
                              Strings.storeList.length, (int index) {
                            final String item = Strings.storeList[index];
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
                  ),
                ],
              ),

              //메뉴 리스트
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Strings.cateList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        FilterChip(
                            label: Text(
                              Strings.cateList[index],
                              style: context.headlineSmall(),
                            ),
                            selected: _selectedMenu == Strings.cateList[index],
                            selectedColor: MyColors.darkOrange,
                            onSelected: (selected) {
                              setState(() {
                                _selectedMenu = Strings.cateList[index];
                              });
                            }),
                        const SizedBox(
                          width: 5,
                        )
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //가까운순, 인기순, 리뷰순
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedFilterType = 0;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                              color: _selectedFilterType == 0
                                  ? MyColors.darkOrange
                                  : MyColors.white),
                          child: Text(
                            '거리 순',
                            style: context.titleLarge(),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedFilterType = 1;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                              color: _selectedFilterType == 1
                                  ? MyColors.darkOrange
                                  : MyColors.white),
                          child: Center(
                            child: Text(
                              '인기 순',
                              style: context.titleLarge(),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedFilterType = 2;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: _selectedFilterType == 2
                                  ? MyColors.darkOrange
                                  : MyColors.white),
                          child: Center(
                            child: Text(
                              '리뷰 순',
                              style: context.titleLarge(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),

              const SizedBox(
                height: 10,
              ),
              //가게 리스트
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Strings.storeList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        onTap: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: const StoreDetailScreen(),
                            withNavBar: true,
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: MyColors.white),
                          child: Center(
                            child: Text(
                              Strings.storeList[index],
                              style: context.titleLarge(),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
