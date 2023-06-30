import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.only(right: 16, left: 16),
            decoration: BoxDecoration(
                color: Style.white, borderRadius: BorderRadius.circular(6)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Отирелакс 17.1 литр',
                  maxLines: 1,
                  overflow: TextOverflow.visible,
                  style: Style.normal()),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
              Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  'В наличии: 34',
                  style: Style.normal()),
              Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  'Срок: 21.12.2022',
                  style: Style.normal()),
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
            ]),
          ),
        );
      },
    );
  }
}
