import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food/utils/constant.dart';
import 'package:food/utils/styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.onChanged,
    required this.hint,
    required this.isLast,
    this.controller,
    required this.title,
    required this.obscure,
    this.readOnly,
    this.onFocusChange,
  });

  final String hint;
  final bool obscure;
  final String title;
  final bool isLast;
  final bool? readOnly;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final void Function(bool)? onFocusChange;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (widget.onFocusChange != null) {
        widget.onFocusChange!(_focusNode.hasFocus);
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 40.w, end: 40.w, top: 35.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.5,
            child: Text(
              widget.title,
              style: Styles.textStyle12.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          TextFormField(
            cursorColor: kPrimaryColor,
            focusNode: _focusNode,
            scrollPadding: EdgeInsets.zero,
            obscuringCharacter: '*',
            readOnly: widget.readOnly ?? false,
            controller: widget.controller,
            validator: (data) {
              if (data!.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
            onChanged: widget.onChanged,
            obscureText: widget.obscure,
            textInputAction:
                widget.isLast ? TextInputAction.done : TextInputAction.next,
            decoration: InputDecoration(
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsets.only(bottom: 8.h),
              hintText: widget.hint,
              hintStyle: Styles.textStyle15,
            ),
          ),
        ],
      ),
    );
  }
}
