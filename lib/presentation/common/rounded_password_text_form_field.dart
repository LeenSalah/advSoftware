import 'package:flutter/material.dart';
import 'package:uni_verse/presentation/common/rounded_text_form_field.dart';

class RoundedPasswordTextFormField extends StatefulWidget {
  final String label;
  final FormFieldValidator<String>? validator;
  final void Function(dynamic)? onChanged;
  final TextEditingController? controller;
  const RoundedPasswordTextFormField(
      {Key? key, this.label = "Password", this.validator, this.onChanged, this.controller})
      : super(key: key);

  @override
  State<RoundedPasswordTextFormField> createState() =>
      _RoundedPasswordTextFormFieldState();
}

class _RoundedPasswordTextFormFieldState
    extends State<RoundedPasswordTextFormField> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return RoundedTextFormField(
      controller: widget.controller,
      label: widget.label,
      validator: widget.validator,
      onChanged: widget.onChanged,
      hintText: "*************",
      obscureText: secure,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            secure = !secure;
          });
        },
        icon: Icon(
          (secure ? Icons.visibility_off : Icons.visibility),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
