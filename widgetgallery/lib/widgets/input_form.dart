

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  
  final String? labelText, hintText, errorText, helperText, value;
  final IconData? icon;
  final bool focused, autoValidation, readOnly, isRequerid;
  final TextInputType keyboardType;

  const InputForm({
    Key? key,
    required this.hintText,
    this.labelText = '',
    this.errorText = '',
    this.helperText = '',
    this.value = '',
    this.icon,
    this.autoValidation = false,
    this.focused = false,
    this.keyboardType = TextInputType.text,
    this.readOnly = false,
    this.isRequerid = false,
  }) : super(key: key);

  String? onValidate(String value){
    if(value.isEmpty){
      return 'This $hintText field is requerid';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue:value,
      autofocus: focused,
      keyboardType: keyboardType,
      textCapitalization: TextCapitalization.words,
      readOnly:readOnly,
      validator: isRequerid ? (value) => onValidate(value ?? ''): null,
      autovalidateMode: isRequerid ? AutovalidateMode.onUserInteraction:AutovalidateMode.disabled,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: icon != null ? Icon(icon):null,
        helperText: helperText,
      ),
    );
  }
}