import 'package:flutter/material.dart';

class ECommerceTextField extends StatefulWidget {
  const ECommerceTextField({
    Key? key,
    required this.hint,
    this.label,
    this.prefix,
    this.suffix,
    this.onChanged,
  }) : super(key: key);

  final String? label;
  final String hint;
  final Widget? prefix;
  final Widget? suffix;
  final Function(String)? onChanged;

  @override
  State<ECommerceTextField> createState() => _ECommerceTextFieldState();
}

class _ECommerceTextFieldState extends State<ECommerceTextField> {

  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
    _controller.addListener(() {
      if (widget.onChanged != null) {
        widget.onChanged!(_controller.text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        width: 0.0,
        style: BorderStyle.none,
        color: Colors.transparent,
      ),
    );
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        border: border,
        enabledBorder: border,
        hintText: widget.hint,
        filled: true,
        fillColor: const Color(0xFFFAFAFA),
        prefixIcon: widget.prefix,
        suffixIcon: widget.suffix,
      ),
    );
  }
}
