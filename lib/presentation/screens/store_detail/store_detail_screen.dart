import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';

class StoreDetailScreen extends StatefulWidget {
  const StoreDetailScreen({super.key});

  @override
  State<StoreDetailScreen> createState() => _StoreDetailScreenState();
}

class _StoreDetailScreenState extends State<StoreDetailScreen>
    with TickerProviderStateMixin {
  late TabController _tabController = TabController(length: 3, vsync: this);
  int _selectedFilterType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.primary,
      appBar: AppBar(
        title: Text(
          '신천붕어빵',
          style: context.displayMedium(),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: MyColors.primary,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: MyColors.white, borderRadius: BorderRadius.circular(6)),
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
                          '메뉴',
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
                          '가게정보',
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
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          color: _selectedFilterType == 2
                              ? MyColors.darkOrange
                              : MyColors.white),
                      child: Center(
                        child: Text(
                          '리뷰',
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
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Strings.menuList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    onTap: () {
                      // Navigator.of(context).pushNamed('/storeDetail');
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          color: MyColors.white),
                      child: Center(
                        child: Text(
                          Strings.menuList[index],
                          style: context.titleMedium(),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
