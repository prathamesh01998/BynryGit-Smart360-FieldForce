import 'package:date_field/date_field.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';


class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return DateTimeFormField(
  decoration: const InputDecoration(
    hintStyle: TextStyle(color: Colors.black54,fontSize: 18),
    errorStyle: TextStyle(color: Colors.redAccent),
    
    suffixIcon: Icon(Icons.event_note),
    labelText: 'Date Range',
  ),
  mode: DateTimeFieldPickerMode.date,
  autovalidateMode: AutovalidateMode.always,
  validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
  onDateSelected: (DateTime value) {
    print(value);
  },
);
  }
}