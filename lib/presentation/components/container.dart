import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/style.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';
import 'drop_down.dart';

class BigContainer extends StatefulWidget {
  const BigContainer({super.key});

  @override
  State<BigContainer> createState() => _BigContainerState();
}

class _BigContainerState extends State<BigContainer> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyPVC = GlobalKey<FormState>();
  TextEditingController pvc = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController region = TextEditingController();
  TextEditingController profession = TextEditingController();
  TextEditingController cupon = TextEditingController();
  bool isButton3 = false;
  bool isButtonDow = false;

  @override
  void initState() {
    pvc.addListener(() {
      setState(() {});
    });
    name.addListener(() {
      setState(() {});
    });
    surname.addListener(() {
      setState(() {});
    });
    age.addListener(() {
      setState(() {});
    });
    region.addListener(() {
      setState(() {});
    });
    profession.addListener(() {
      setState(() {});
    });
    cupon.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  FilePickerResult? result;
  String? _fileName;
  PlatformFile? platformFile;
  bool isLoading = false;
  File? fileToDisplay;

  void picFile() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
          allowMultiple: true,
          dialogTitle: 'Select a File for our App',
          type: FileType.any,
          allowedExtensions: ['jpg', 'jpeg', 'gif', 'png']);

      if (result != null) {
        _fileName = result!.files.first.name;
        platformFile = result!.files.first;
        fileToDisplay = File(platformFile!.path.toString());
        // ignore: avoid_print
        print('File nam $_fileName');
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Container(
          width: 720.w,
          height: 1024.h,
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
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 100.h,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Search',
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Style.white)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Style.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Style.white)),
                        filled: true,
                        fillColor: Style.white),
                  ),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      setState(() {
                        isButton3 = !isButton3;
                      });
                    },
                    child: Icon(
                      Icons.person_add,
                      color: isButton3 == false
                          ? Style.iconsColor
                          : Style.primaryColor,
                    )),
              ],
            ),
            isButton3 == false
                ? Image.asset('assets/Modal.png')
                : Column(
                    children: [
                      Container(
                          width: 688.w,
                          height: (isButtonDow == false) ? 200.h : 70,
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
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Create account',
                                    style: TextStyle(
                                      color: Color(0xFF262626),
                                      fontSize: 16,
                                      fontFamily: 'Golos',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isButtonDow = !isButtonDow;
                                        });
                                      },
                                      icon: (isButtonDow == false)
                                          ? const Icon(Icons
                                              .keyboard_arrow_down_outlined)
                                          : const Icon(Icons.keyboard_arrow_up))
                                ],
                              ),
                              5.verticalSpace,
                              Form(
                                key: formKeyPVC,
                                child: (isButtonDow == false)
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width: 336.w,
                                            height: 48.h,
                                            child: CustomTextFormField(
                                              controller: pvc,
                                              hintText:
                                                  'Phone or pasport JSHIR*',
                                              validator: (v) {
                                                if (v?.isEmpty ?? true) {
                                                  return "Please enter PVC or phone";
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            width: 100.w,
                                            height: 48.h,
                                            child: CustomButton(
                                              gradient: (pvc.text.isNotEmpty)
                                                  ? Style.buttonGradient
                                                  : Style.rgadient,
                                              title: 'Enter PVC',
                                              onTap: () {
                                                if (formKeyPVC.currentState
                                                        ?.validate() ??
                                                    false) {
                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text(
                                                            'Succsess'),
                                                        content: Image.asset(
                                                          'assets/succsess.gif',
                                                          width: 200.w,
                                                          height: 200.h,
                                                        ),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            style: TextButton
                                                                .styleFrom(
                                                              textStyle: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .labelLarge,
                                                            ),
                                                            child: const Text(
                                                                'Okey'),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }
                                              },
                                            ),
                                          ),
                                          Container(
                                            width: 100.w,
                                            height: 48.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: Border.all(
                                                    color: Style.primaryColor)),
                                            child: const Center(
                                                child: Text(
                                              'Menga\nulash',
                                              style: TextStyle(
                                                  color: Style.primaryColor,
                                                  fontSize: 12),
                                            )),
                                          )
                                        ],
                                      )
                                    : const SizedBox.shrink(),
                              ),
                            ],
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (platformFile != null)
                            Padding(
                              padding: const EdgeInsets.all(24),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: FileImage(fileToDisplay!),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: const OvalBorder(
                                    side: BorderSide(
                                        width: 0.50, color: Color(0xFF7F92A0)),
                                  ),
                                ),
                              ),
                            ),
                          isLoading
                              ? const CircularProgressIndicator()
                              : InkWell(
                                  onTap: () {
                                    picFile();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Container(
                                      width: 100.w,
                                      height: 100.h,
                                      decoration: const ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 0.50,
                                              color: Color(0xFF7F92A0)),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(Icons.camera_alt),
                                      ),
                                    ),
                                  ),
                                ),
                          const Text('Add Family')
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 292.w,
                            height: 56.h,
                            child: CustomTextFormField(
                              controller: name,
                              hintText: 'Name*',
                              validator: (s) {
                                if (s?.isEmpty ?? true) {
                                  return "Please enter Name";
                                }
                                return null;
                              },
                            ),
                          ),
                          16.horizontalSpace,
                          SizedBox(
                            width: 292.w,
                            height: 56.h,
                            child: CustomTextFormField(
                              controller: surname,
                              hintText: 'Surname*',
                              validator: (s) {
                                if (s?.isEmpty ?? true) {
                                  return "Please enter Surname";
                                }
                                return null;
                              },
                            ),
                          )
                        ],
                      ),
                      24.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 292.w,
                            height: 56.h,
                            child: CustomTextFormField(
                              controller: age,
                              hintText: 'Age*',
                              validator: (s) {
                                if (s?.isEmpty ?? true) {
                                  return "Please enter Age";
                                }
                                return null;
                              },
                            ),
                          ),
                          16.horizontalSpace,
                          const DropDown()
                        ],
                      ),
                      24.verticalSpace,
                      SizedBox(
                        width: 600.w,
                        height: 56.h,
                        child: CustomTextFormField(
                          controller: region,
                          hintText: 'Region',
                          validator: (s) {
                            if (s?.isEmpty ?? true) {
                              return "Please enter Region";
                            }
                            return null;
                          },
                        ),
                      ),
                      24.verticalSpace,
                      SizedBox(
                        width: 600.w,
                        height: 56.h,
                        child: CustomTextFormField(
                          controller: profession,
                          hintText: 'Profession',
                          validator: (s) {
                            if (s?.isEmpty ?? true) {
                              return "Please enter Profession";
                            }
                            return null;
                          },
                        ),
                      ),
                      24.verticalSpace,
                      SizedBox(
                        width: 600.w,
                        height: 56.h,
                        child: CustomTextFormField(
                          controller: cupon,
                          hintText: 'Cupon',
                          validator: (s) {
                            if (s?.isEmpty ?? true) {
                              return "Please enter Cupon";
                            }
                            return null;
                          },
                        ),
                      ),
                      34.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          (pvc.text.isNotEmpty)
                              ? SizedBox(
                                  width: 292.w,
                                  height: 48.h,
                                  child: CustomButton(
                                    onTap: () {},
                                    title: 'В заказ',
                                    color: Style.buttonColor,
                                  ))
                              : const SizedBox(),
                          16.horizontalSpace,
                          (pvc.text.isNotEmpty)
                              ? SizedBox(
                                  width: 292.w,
                                  height: 48.h,
                                  child: CustomButton(
                                    title: 'Сохранить',
                                    gradient: Style.buttonGradient,
                                    onTap: () {
                                      if (formKey.currentState?.validate() ??
                                          false) {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: const Text('Succsess'),
                                              content: Image.asset(
                                                'assets/succsess.gif',
                                                width: 200.w,
                                                height: 200.h,
                                              ),
                                              actions: <Widget>[
                                                TextButton(
                                                  style: TextButton.styleFrom(
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .labelLarge,
                                                  ),
                                                  child: const Text('Okey'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ],
                  )
          ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    pvc.dispose();
    name.dispose();
    surname.dispose();
    age.dispose();
    region.dispose();
    profession.dispose();
    cupon.dispose();
    super.dispose();
  }
}
