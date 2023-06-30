import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/presentation/style/style.dart';

import 'animation_button_effect.dart';

class GridviewBuilder extends StatelessWidget {
  const GridviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          return AnimationButtonEffect(
            child: Container(
              margin: const EdgeInsets.all(10),
              width: 400.w,
              height: 348.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        width: 376.w,
                        height: 182.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/food.png',
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        'Отирелакс 17.1 литр',
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Color(0xFF262626),
                          fontSize: 18,
                          fontFamily: 'Golos',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Row(
                        children: [
                          Text(
                            '275 000 UZS',
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              color: Color(0xFF262626),
                              fontSize: 16,
                              fontFamily: 'Golos',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.shopping_cart)
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text('В наличии: 34',
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: Style.normal()),
                    ),
                    Expanded(
                      child: Text('Срок: 21.12.2022',
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: Style.normal()),
                    ),
                    Expanded(
                      child: Text('Производитель: Habiba Aerodinamika',
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                          style: Style.normal()),
                    ),
                    Expanded(
                      child: Text.rich(
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                        TextSpan(
                          children: [
                            TextSpan(text: 'Место: ', style: Style.normal()),
                            TextSpan(
                                text: 'Полка слева 2 отдел ушные медикаменты',
                                style: Style.normal()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
