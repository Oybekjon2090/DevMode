import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'animation_button_effect.dart';

class GridviewBuilder extends StatelessWidget {
  const GridviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 20,
          mainAxisExtent: 300,
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          return AnimationButtonEffect(
            child: Container(
              margin: const EdgeInsets.all(10),
              width: 400.w,
              height: 348.h,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 182.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/food.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  const Text(
                    'Отирелакс 17.1 литр',
                    style: TextStyle(
                      color: Color(0xFF262626),
                      fontSize: 18,
                      fontFamily: 'Golos',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    '275 000 UZS',
                    style: TextStyle(
                      color: Color(0xFF262626),
                      fontSize: 16,
                      fontFamily: 'Golos',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'В наличии: 34',
                    style: TextStyle(
                      color: Color(0xFF7F92A0),
                      fontSize: 12,
                      fontFamily: 'Golos',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    'Срок: 21.12.2022',
                    style: TextStyle(
                      color: Color(0xFF7F92A0),
                      fontSize: 12,
                      fontFamily: 'Golos',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Производитель: Habiba Aerodinamika',
                    style: TextStyle(
                      color: Color(0xFF7F92A0),
                      fontSize: 12,
                      fontFamily: 'Golos',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Место: ',
                          style: TextStyle(
                            color: Color(0xFF7F92A0),
                            fontSize: 12,
                            fontFamily: 'Golos',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Полка слева 2 отдел ушные медикаменты',
                          style: TextStyle(
                            color: Color(0xFF7F92A0),
                            fontSize: 12,
                            fontFamily: 'Golos',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
