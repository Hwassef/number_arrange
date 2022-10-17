import 'package:flutter/material.dart';
import 'package:number_arrange/config/paddings/app_paddings.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required this.onChanged,
    required this.validator,
    required this.hintText,
    required this.labelText,
    required this.controller,
    required this.focusNode,
  });
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppPaddings.bottomNormalPadding,
          child: Text(labelText),
        ),
        TextFormField(
          controller: controller,
          focusNode: focusNode,
          onChanged: onChanged,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
