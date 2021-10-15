import 'package:flutter/material.dart';

class FormInputEditor extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData? icon;
  final String? hint;
  final TextInputType? textInputType;

  const FormInputEditor({
    required this.controller,
    required this.label,
    this.icon,
    this.hint,
    this.textInputType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(icon),
          labelText: label,
          hintText: hint,
        ),
        keyboardType: textInputType,
      ),
    );
  }
}
