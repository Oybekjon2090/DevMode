import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/country_selection_theme.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work/presentation/style/style.dart';

import '../../../components/animation_button_effect.dart';
import '../../../components/custom_text_form_field.dart';

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
                      ? ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 10),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return isButton2 == false
                                ? Container(
                                    margin: EdgeInsets.all(16),
                                    width: MediaQuery.of(context).size.width,
                                    height: 158.h,
                                    decoration: BoxDecoration(
                                        color: Style.primaryColor,
                                        borderRadius: BorderRadius.circular(6)),
                                  )
                                : Container(
                                    margin: EdgeInsets.all(16),
                                    width: 400.w,
                                    height: 158.h,
                                    decoration: BoxDecoration(
                                        color: Style.textColor,
                                        borderRadius: BorderRadius.circular(6)),
                                  );
                          },
                        )
                      : Row(
                          children: [
                            SizedBox(
                              width: 400,
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.only(top: 10),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return AnimationButtonEffect(
                                    child: Container(
                                      margin: EdgeInsets.all(16),
                                      width: 400,
                                      height: 158.h,
                                      decoration: BoxDecoration(
                                          color: Style.white,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Отирелакс 17.1 литр',
                                                style: Style.normal()),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '275 000 UZS',
                                                  style: TextStyle(
                                                    color: Color(0xFF262626),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Icon(
                                                    Icons.shopping_bag_outlined)
                                              ],
                                            ),
                                            Text(
                                              'В наличии: 34',
                                              style: TextStyle(
                                                color: Color(0xFF7F92A0),
                                                fontSize: 12,
                                                fontFamily: 'Golos',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              'Срок: 21.12.2022',
                                              style: TextStyle(
                                                color: Color(0xFF7F92A0),
                                                fontSize: 12,
                                                fontFamily: 'Golos',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              'Производитель: Habiba Aerodinamika',
                                              style: TextStyle(
                                                color: Color(0xFF7F92A0),
                                                fontSize: 12,
                                                fontFamily: 'Golos',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Место: ',
                                                    style: TextStyle(
                                                      color: Color(0xFF7F92A0),
                                                      fontSize: 12,
                                                      fontFamily: 'Golos',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'Полка слева 2 отдел ушные медикаменты',
                                                    style: TextStyle(
                                                      color: Color(0xFF7F92A0),
                                                      fontSize: 12,
                                                      fontFamily: 'Golos',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Spacer(),
                            AnimationButtonEffect(
                              child: Container(
                                width: 720,
                                height: 1024,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x19262626),
                                      blurRadius: 10,
                                      offset: Offset(0, 0),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CustomTextFormField(
                                        hintText: 'Search user',
                                        label: 'KNKN',
                                        icon: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.person_add),
                                              onPressed: () {
                                                setState(() {
                                                  isButton3 = !isButton3;
                                                });
                                              },
                                            ),
                                            Icon(Icons.qr_code_2),
                                          ],
                                        ),
                                      ),
                                      218.verticalSpace,
                                      isButton3 == false
                                          ? Image.asset('assets/Modal.png')
                                          : Column(
                                              children: [
                                                Container(
                                                  width: 688.w,
                                                  height: 210.h,
                                                  padding:
                                                      const EdgeInsets.all(12),
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        6)),
                                                    shadows: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x19262626),
                                                        blurRadius: 10,
                                                        offset: Offset(0, 0),
                                                        spreadRadius: 0,
                                                      )
                                                    ],
                                                  ),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              'Create account',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF262626),
                                                                fontSize: 20,
                                                                fontFamily:
                                                                    'Golos',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                            IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_outlined))
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              'Enter phone/ 998998204828',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF7F92A0),
                                                                fontSize: 16,
                                                                fontFamily:
                                                                    'Golos',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        5.verticalSpace,
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            SizedBox(
                                                              width: 336.w,
                                                              height: 48.h,
                                                              child:
                                                                  TextFormField(
                                                                decoration:
                                                                    InputDecoration(
                                                                  border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8)),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8)),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8)),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 200.w,
                                                              height: 48.h,
                                                              decoration: BoxDecoration(
                                                                  gradient: Style
                                                                      .buttonGradient,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6)),
                                                              child: Center(
                                                                child: Text(
                                                                  'Enter PVC',
                                                                  style: TextStyle(
                                                                      color: Style
                                                                          .white),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 100.w,
                                                              height: 48.h,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6),
                                                                  border: Border.all(
                                                                      color: Style
                                                                          .primaryColor)),
                                                              child: Center(
                                                                  child: Text(
                                                                'Menga\nulash',
                                                                style: TextStyle(
                                                                    color: Style
                                                                        .primaryColor,
                                                                    fontSize:
                                                                        14),
                                                              )),
                                                            )
                                                          ],
                                                        ),
                                                        10.verticalSpace,
                                                        Text(
                                                          'Resent code: 54 second',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF7F92A0),
                                                            fontSize: 20,
                                                            fontFamily: 'Golos',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                        )
                                                      ]),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(24),
                                                  child: Container(
                                                    width: 100,
                                                    height: 100,
                                                    decoration: ShapeDecoration(
                                                      color: Colors.white,
                                                      shape: OvalBorder(
                                                        side: BorderSide(
                                                            width: 0.50,
                                                            color: Color(
                                                                0xFF7F92A0)),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Icon(
                                                          Icons.camera_alt),
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    SizedBox(
                                                      width: 292.w,
                                                      height: 56.h,
                                                      child: TextFormField(
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: 'Name',
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8)),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8)),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 292.w,
                                                      height: 56.h,
                                                      child: TextFormField(
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: 'Surname',
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8)),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8)),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                24.verticalSpace,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    SizedBox(
                                                      width: 292.w,
                                                      height: 56.h,
                                                      child: TextFormField(
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: 'Age',
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8)),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8)),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8)),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 292.w,
                                                      height: 56.h,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                              color:
                                                                  Style.black)),
                                                      child: DropdownButton<
                                                          String>(
                                                        value: dropdownValue,
                                                        onChanged:
                                                            (String? newValue) {
                                                          setState(() {
                                                            dropdownValue =
                                                                newValue!;
                                                          });
                                                        },
                                                        items: <String>[
                                                          'Male',
                                                          'Famale',
                                                          'Bus',
                                                          'Flight'
                                                        ].map<
                                                            DropdownMenuItem<
                                                                String>>((String
                                                            value) {
                                                          return DropdownMenuItem<
                                                              String>(
                                                            value: value,
                                                            child: Text(
                                                              value,
                                                            ),
                                                          );
                                                        }).toList(),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                24.verticalSpace,
                                                Container(
                                                  width: 615.w,
                                                  height: 56.h,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          width: 1,
                                                          color: Style.black),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  ),
                                                  child: CountryListPick(
                                                      appBar: AppBar(
                                                        backgroundColor:
                                                            Colors.blue,
                                                        title: Text(
                                                            'Choisir un pays'),
                                                      ),
                                                      onChanged: (value) {
                                                        setState(() {
                                                          value;
                                                        });
                                                      },

                                                      // To disable option set to false
                                                      theme: CountryTheme(
                                                        isShowFlag: true,
                                                        isShowTitle: true,
                                                        isShowCode: true,
                                                        isDownIcon: true,
                                                        showEnglishName: true,
                                                      ),
                                                      // Set default value

                                                      // or
                                                      // initialSelection: 'US'

                                                      // Whether to allow the widget to set a custom UI overlay
                                                      useUiOverlay: true,
                                                      // Whether the country list should be wrapped in a SafeArea
                                                      useSafeArea: false),
                                                ),
                                              ],
                                            )
                                    ]),
                              ),
                            ),
                          ],
                        ),
                )
              : Expanded(
                  child: isButton2 == false
                      ? GridView.builder(
                          shrinkWrap: true,
                          itemCount: 20,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 20,
                            mainAxisExtent: 300,
                            crossAxisCount: 4,
                          ),
                          itemBuilder: (context, index) {
                            return AnimationButtonEffect(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: 400.w,
                                height: 348.h,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24)),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 50,
                                        offset: Offset(0, 6),
                                        color:
                                            Color(0xff5A6CEA).withOpacity(0.08))
                                  ],
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 182.h,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                'assets/food.png',
                                              ),
                                              fit: BoxFit.cover)),
                                    ),
                                    Text(
                                      'Отирелакс 17.1 литр',
                                      style: TextStyle(
                                        color: Color(0xFF262626),
                                        fontSize: 18,
                                        fontFamily: 'Golos',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '275 000 UZS',
                                      style: TextStyle(
                                        color: Color(0xFF262626),
                                        fontSize: 16,
                                        fontFamily: 'Golos',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'В наличии: 34',
                                      style: TextStyle(
                                        color: Color(0xFF7F92A0),
                                        fontSize: 12,
                                        fontFamily: 'Golos',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'Срок: 21.12.2022',
                                      style: TextStyle(
                                        color: Color(0xFF7F92A0),
                                        fontSize: 12,
                                        fontFamily: 'Golos',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Производитель: Habiba Aerodinamika',
                                      style: TextStyle(
                                        color: Color(0xFF7F92A0),
                                        fontSize: 12,
                                        fontFamily: 'Golos',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text.rich(
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
                                            text:
                                                'Полка слева 2 отдел ушные медикаменты',
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
                          })
                      : Row(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.only(top: 10),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return AnimationButtonEffect(
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      width: 400.w,
                                      height: 348.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(24)),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 50,
                                              offset: Offset(0, 6),
                                              color: Color(0xff5A6CEA)
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
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/food.png',
                                                    ),
                                                    fit: BoxFit.cover)),
                                          ),
                                          Text(
                                            'Отирелакс 17.1 литр',
                                            style: TextStyle(
                                              color: Color(0xFF262626),
                                              fontSize: 18,
                                              fontFamily: 'Golos',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            '275 000 UZS',
                                            style: TextStyle(
                                              color: Color(0xFF262626),
                                              fontSize: 16,
                                              fontFamily: 'Golos',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            'В наличии: 34',
                                            style: TextStyle(
                                              color: Color(0xFF7F92A0),
                                              fontSize: 12,
                                              fontFamily: 'Golos',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'Срок: 21.12.2022',
                                            style: TextStyle(
                                              color: Color(0xFF7F92A0),
                                              fontSize: 12,
                                              fontFamily: 'Golos',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            'Производитель: Habiba Aerodinamika',
                                            style: TextStyle(
                                              color: Color(0xFF7F92A0),
                                              fontSize: 12,
                                              fontFamily: 'Golos',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text.rich(
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
                                                  text:
                                                      'Полка слева 2 отдел ушные медикаменты',
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
                                },
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 720,
                              height: 1024,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x19262626),
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                )
        ],
      ),
    );
  }
}
