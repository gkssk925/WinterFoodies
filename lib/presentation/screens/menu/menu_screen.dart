import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';
import 'package:winter_foodies/constants/build_context_extensions.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final SearchController _searchController = SearchController();

  List<String> _menuList = [
    '붕어빵',
    '어묵',
    '군밤',
    '호떡',
    '계란빵',
    '군고구마',
    '다코야키',
    '호두과자',
    '국화빵'
  ];

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
                          borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    return List<ListTile>.generate(_menuList.length,
                        (int index) {
                      final String item = _menuList[index];
                      return ListTile(
                        title: Text(item),
                        onTap: () {
                          setState(() {
                            controller.closeView(item);
                          });
                        },
                      );
                    });
                  })
            ],
          )),
    );
  }
}
