import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Input extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isLastInput,isPassword;
  final  FormFieldValidator? validator;

  const Input(
      {Key? key,
        required this.label,
        required this.controller,
        this.keyboardType = TextInputType.text,
        this.isLastInput = false, this.isPassword = false, this.validator})
      : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        textInputAction:
        widget.isLastInput ? TextInputAction.done : TextInputAction.next,
        obscureText: widget.isPassword && isHidden,
        decoration: InputDecoration(
          labelText: widget.label,
          suffixIcon: widget.isPassword ? GestureDetector(onTap: (){
            isHidden = !isHidden;
            setState(() {

            });
          },child: Icon(isHidden ? Icons.visibility_off : Icons.visibility)):null,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.r)),
        ),
        controller: widget.controller,
      ),
    );
  }
}
