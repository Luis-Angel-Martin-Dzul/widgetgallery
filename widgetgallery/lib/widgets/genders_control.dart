import 'package:flutter/material.dart';
import 'package:widgetgallery/models/models.dart';

class GenderControl extends StatefulWidget {
  const GenderControl({Key? key}) : super(key: key);

  @override
  State<GenderControl> createState() => _GenderControlState();
}

class _GenderControlState extends State<GenderControl> {
  Gender? _gender = Gender.notSpecify;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Select a gender'),
        const Divider(),
        RadioListTile(
          value: Gender.female, 
          groupValue: _gender, 
          onChanged: (Gender? value){},
          title: const Text('Female'),
          ),
        RadioListTile(
          value: Gender.male, 
          groupValue: _gender, 
          onChanged: (Gender? value){},
          title: const Text('Male'),
          ),
        RadioListTile(
          value: Gender.notSpecify, 
          groupValue: _gender, 
          onChanged: (Gender? value){},
          title: const Text('Prefer not specify'),
          ),
      ],
    );
  }
}