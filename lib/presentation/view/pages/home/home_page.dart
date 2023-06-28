import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/presentation/style/style.dart';

import '../../../components/animation_button_effect.dart';
import '../../../components/container.dart';
import '../../../components/gridview_builder.dart';
import '../../../components/list_view_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isButton = false;
  bool isButton2 = false;
  bool isButton3 = false;
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isButton2 = !isButton2;
                    });
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Center(
                      child: Icon((isButton2 == false)
                          ? Icons.filter_1_outlined
                          : Icons.filter),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isButton = !isButton;
                    });
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Center(
                      child: Icon(
                          (isButton == false) ? Icons.menu_open : Icons.face),
                    ),
                  ),
                )
              ],
            ),
          ),
          (isButton == false)
              ? Expanded(
                  child: isButton2 == false
                      ? const ListViewBuilder()
                      : Row(
                          children: [
                            SizedBox(width: 400.w, child: const ListViewBuilder()),
                            const Spacer(),
                            const BigContainer()
                          ],
                        ),
                )
              : Expanded(
                  child: isButton2 == false
                      ? const GridviewBuilder()
                      : Row(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: const EdgeInsets.only(top: 10),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return AnimationButtonEffect(
                                    child: Container(
                                      margin: const EdgeInsets.all(8),
                                      width: 400.w,
                                      height: 348.h,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(24)),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 50,
                                              offset: const Offset(0, 6),
                                              color: const Color(0xff5A6CEA)
                                                  .withOpacity(0.08))
                                        ],
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
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
                                          Text('275 000 UZS',
                                              style: Style.normal()),
                                          Text('В наличии: 34',
                                              style: Style.normal()),
                                          Text('Срок: 21.12.2022',
                                              style: Style.normal()),
                                          4.verticalSpace,
                                          Text(
                                              'Производитель: Habiba Aerodinamika',
                                              style: Style.normal()),
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: 'Место: ',
                                                    style: Style.normal()),
                                                TextSpan(
                                                    text:
                                                        'Полка слева 2 отдел ушные медикаменты',
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
                            ),
                            const Spacer(),
                            const BigContainer()
                          ],
                        ),
                )
        ],
      ),
    );
  }
}
