import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';
import 'custom_text_form_field.dart';
import 'drop_down.dart';

class BigContainer extends StatefulWidget {
  const BigContainer({super.key});

  @override
  State<BigContainer> createState() => _BigContainerState();
}

class _BigContainerState extends State<BigContainer> {
  bool isButton3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 720,
      height: 1024,
      decoration: const BoxDecoration(
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
      child: Column(children: [
        CustomTextFormField(
          hintText: 'Search user',
          label: 'KNKN',
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.person_add),
                onPressed: () {
                  setState(() {
                    isButton3 = !isButton3;
                  });
                },
              ),
              const Icon(Icons.qr_code_2),
            ],
          ),
        ),
        50.verticalSpace,
        isButton3 == false
            ? Image.asset('assets/Modal.png')
            : Column(
                children: [
                  Container(
                    width: 688.w,
                    height: 200.h,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x19262626),
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          const Text(
                            'Create account',
                            style: TextStyle(
                              color: Color(0xFF262626),
                              fontSize: 18,
                              fontFamily: 'Golos',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined))
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            'Enter phone/ 998998204828',
                          ),
                        ],
                      ),
                      5.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 336.w,
                            height: 48.h,
                            child: const CustomTextFormField(
                                hintText: 'Phone or pasport JSHIR*'),
                          ),
                          Container(
                            width: 200.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                gradient: Style.buttonGradient,
                                borderRadius: BorderRadius.circular(6)),
                            child: const Center(
                              child: Text(
                                'Enter PVC',
                                style: TextStyle(color: Style.white),
                              ),
                            ),
                          ),
                          Container(
                            width: 100.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Style.primaryColor)),
                            child: const Center(
                                child: Text(
                              'Menga\nulash',
                              style: TextStyle(
                                  color: Style.primaryColor, fontSize: 12),
                            )),
                          )
                        ],
                      ),
                      Text('Resent code: 54 second',
                          textAlign: TextAlign.center, style: Style.normal()),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFF7F92A0)),
                        ),
                      ),
                      child: const Center(
                        child: Icon(Icons.camera_alt),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 292.w,
                        height: 56.h,
                        child: const CustomTextFormField(
                          hintText: 'Name',
                        ),
                      ),
                      SizedBox(
                        width: 292.w,
                        height: 56.h,
                        child: const CustomTextFormField(
                          hintText: 'Surname',
                        ),
                      )
                    ],
                  ),
                  24.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 292.w,
                        height: 56.h,
                        child: const CustomTextFormField(
                          hintText: 'Age',
                        ),
                      ),
                      const DropDown()
                    ],
                  ),
                  24.verticalSpace,
                  SizedBox(
                    width: 615.w,
                    height: 56.h,
                    child: const CustomTextFormField(
                      hintText: 'Region',
                    ),
                  ),
                  24.verticalSpace,
                  SizedBox(
                    width: 615.w,
                    height: 56.h,
                    child: const CustomTextFormField(
                      hintText: 'Profession',
                    ),
                  ),
                  24.verticalSpace,
                  SizedBox(
                    width: 615.w,
                    height: 56.h,
                    child: const CustomTextFormField(
                      hintText: 'Cupon',
                    ),
                  )
                ],
              )
      ]),
    );
  }
}
