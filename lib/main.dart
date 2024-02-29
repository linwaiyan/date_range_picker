import 'package:date_range_picker/view/v_date_range_picker_stateful.dart';
import 'package:date_range_picker/view/v_date_range_picker_stateless.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter DateRange Picker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      home: DateRangePickerStateless(),
    );
  }
}
