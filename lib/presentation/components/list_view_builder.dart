import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';
import 'animation_button_effect.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 10),
      itemCount: 10,
      itemBuilder: (context, index) {
        return AnimationButtonEffect(
          child: Container(
            margin: const EdgeInsets.all(16),
            width: 400,
            height: 158.h,
            decoration: BoxDecoration(
                color: Style.white, borderRadius: BorderRadius.circular(6)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Отирелакс 17.1 литр', style: Style.normal()),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '275 000 UZS',
                    style: TextStyle(
                      color: Color(0xFF262626),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.shopping_bag_outlined)
                ],
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
            ]),
          ),
        );
      },
    );
  }
}
