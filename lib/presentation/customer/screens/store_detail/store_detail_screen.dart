import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';
import 'package:winter_foodies/constants/strings.dart';
import 'package:winter_foodies/presentation/customer/screens/store_detail/widgets/store_detail_info.dart';
import 'package:winter_foodies/presentation/customer/screens/store_detail/widgets/store_detail_menu.dart';
import 'package:winter_foodies/presentation/customer/screens/store_detail/widgets/store_detail_review.dart';

class StoreDetailScreen extends StatefulWidget {
  const StoreDetailScreen({super.key});

  @override
  State<StoreDetailScreen> createState() => _StoreDetailScreenState();
}

class _StoreDetailScreenState extends State<StoreDetailScreen>
    with TickerProviderStateMixin {
  late TabController _tabController = TabController(length: 3, vsync: this);
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
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            iconSize: 50,
            onPressed: () {
              // 하트 버튼을 눌렀을 때의 동작
            },
          ),
        ],
        backgroundColor: MyColors.primary,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
        child: Column(children: [
          RatingBar.builder(
              initialRating: 3.0,
              allowHalfRating: true,
              ignoreGestures: true,
              itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: MyColors.black,
                  ),
              onRatingUpdate: (rating) {}),
          SizedBox(
            height: 10,
          ),
          DefaultTabController(
            length: 3,
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  child: Text(
                    '메뉴',
                    style: context.titleLarge(),
                  ),
                ),
                Tab(
                  child: Text(
                    '가게정보',
                    style: context.titleLarge(),
                  ),
                ),
                Tab(
                  child: Text(
                    '리뷰',
                    style: context.titleLarge(),
                  ),
                )
              ],
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: TabBarView(controller: _tabController, children: [
            StoreDetailMenu(),
            StoreDetailInfo(),
            StoreDetailReview(),
          ]))
        ]),
      ),
    );
  }
}
