import 'package:flutter/material.dart';
import 'package:v_office_base/base/theme/vo_color.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key, this.textEditingController, this.hintText});
  final TextEditingController? textEditingController;
  final String? hintText;
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        filled: true,
        hintStyle: const TextStyle(color: VOColors.black3),
        hintText: widget.hintText ?? "Type in your text",
      ),
    );
  }
}
