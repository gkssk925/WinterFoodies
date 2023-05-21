import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';

class StoreListScreen extends StatefulWidget {
  const StoreListScreen({super.key});

  @override
  State<StoreListScreen> createState() => _StoreListScreenState();
}

class _StoreListScreenState extends State<StoreListScreen>
    with TickerProviderStateMixin {
  final SearchController _searchController = SearchController();
  late TabController _tabController = TabController(length: 3, vsync: this);

  String _selectedMenu = '붕어빵';
  int _selectedFilterType = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
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
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
          child: Column(
            children: [
              SearchAnchor(
                  searchController: _searchController,
                  isFullScreen: false,
                  builder: (BuildContext context, SearchController controller) {
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
                    return List<ListTile>.generate(Strings.storeList.length,
                        (int index) {
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

              //메뉴 리스트
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Strings.cateList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        FilterChip(
                            label: Text(
                              Strings.cateList[index],
                              style: context.titleMedium(),
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
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(6)),
                child: TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.transparent,
                    automaticIndicatorColorAdjustment: false,
                    dividerColor: Colors.transparent,
                    tabs: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedFilterType = 0;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                              color: _selectedFilterType == 0
                                  ? MyColors.darkOrange
                                  : MyColors.white),
                          child: Center(
                            child: Text(
                              '가까운 순',
                              style: context.titleMedium(),
                            ),
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
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                              color: _selectedFilterType == 1
                                  ? MyColors.darkOrange
                                  : MyColors.white),
                          child: Center(
                            child: Text(
                              '인기 순',
                              style: context.titleMedium(),
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
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              color: _selectedFilterType == 2
                                  ? MyColors.darkOrange
                                  : MyColors.white),
                          child: Center(
                            child: Text(
                              '리뷰 순',
                              style: context.titleMedium(),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),

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
                           Navigator.of(context).pushNamed('/storeDetail');
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(6)),
                              color: MyColors.white),
                          child: Center(
                            child: Text(
                              Strings.storeList[index],
                              style: context.titleMedium(),
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
