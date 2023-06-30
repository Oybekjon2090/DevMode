import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';
import 'animation_button_effect.dart';

class GridListView extends StatelessWidget {
  const GridListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 10),
        itemCount: 10,
        itemBuilder: (context, index) {
          return AnimationButtonEffect(
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 50,
                      offset: const Offset(0, 6),
                      color: const Color(0xff5A6CEA).withOpacity(0.08))
                ],
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      width: 376.w,
                      height: 182.h,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/food.png',
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  const Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    'Отирелакс 17.1 литр',
                    style: TextStyle(
                      color: Color(0xFF262626),
                      fontSize: 18,
                      fontFamily: 'Golos',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        '275 000 UZS',
                        style: TextStyle(
                          color: Style.black,
                          fontSize: 14,
                          fontFamily: 'Golos',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.shopping_cart)
                    ],
                  ),
                  Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      'В наличии: 34',
                      style: Style.normal()),
                  Text('Срок: 21.12.2022', style: Style.normal()),
                  4.verticalSpace,
                  Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      'Производитель: Habiba Aerodinamika',
                      style: Style.normal()),
                  Text.rich(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    TextSpan(
                      children: [
                        TextSpan(text: 'Место: ', style: Style.normal()),
                        TextSpan(
                            text: 'Полка слева 2 отдел ушные медикаменты',
                            style: Style.normal()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
