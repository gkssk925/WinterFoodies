import 'package:flutter/material.dart';
import 'package:winter_foodies/config/my_colors.dart';

class StoreDetailInfo extends StatefulWidget {
  const StoreDetailInfo({super.key});

  @override
  State<StoreDetailInfo> createState() => _StoreDetailInfoState();
}

class _StoreDetailInfoState extends State<StoreDetailInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text('가게위치'),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '경기도 시흥시 신천동 신천역 4번출구 앞 포장마차(주말에는 푸르지오 앞으로 올게요',
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            Divider(
              color: MyColors.black,
            ),
            Row(
              children: [
                Text('영업시간'),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '월,화,수,목,토,일 오전11시 ~ 오후8시',
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            Divider(
              color: MyColors.black,
            ),
            Row(
              children: [
                Text('조리예상시간'),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '10 ~ 20분',
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            Divider(
              color: MyColors.black,
            ),
            Row(
              children: [
                Text('안내사항'),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '조리 시간이 빠르니 주문 하시고 바로 찾으러 오세요!',
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            Divider(
              color: MyColors.black,
            ),
          ],
        ));
  }
}
