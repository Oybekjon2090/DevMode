import 'package:flutter/material.dart';
import 'package:work/presentation/style/style.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hintText;
  final String? Function(String? value)? validator;
  final Widget? icon;
  final TextEditingController? controller;

  const CustomTextFormField(
      {Key? key,
      this.label,
      this.validator,
      this.icon,
      this.controller,
      this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.labelMedium,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black),
          hintText: hintText,
          suffixIcon: icon,
          hintStyle: const TextStyle(color: Style.black),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          errorBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.error))),
    );
  }
}
