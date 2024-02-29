import 'package:flutter/material.dart';
import 'package:flutter_super_scaffold/flutter_super_scaffold.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class DateRangePickerStateful extends StatefulWidget {
  const DateRangePickerStateful({
    super.key,
  });

  @override
  State<DateRangePickerStateful> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<DateRangePickerStateful> {
  DateTimeRange? dateRange;

  @override
  Widget build(BuildContext context) {
    final start =
        dateRange?.start ?? DateTime.now().subtract(Duration(days: 30));
    final end = dateRange?.end ?? DateTime.now();
    return FlutterSuperScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
            decoration: const BoxDecoration(),
            child: GestureDetector(
              onTap: pickDateRange,
              child: Container(
                padding: EdgeInsets.all(Get.width * 0.02),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blueAccent.shade400),
                child: const Icon(
                  Iconsax.calendar_1,
                  size: 20,
                  color: Colors.white70,
                ),
              ),
            ),
          ),
          Text('${start.year}/${start.month}/${start.day}'
              ' မှ '
              '${end.year}/${end.month}/${end.day}'
              ' အထိ'),
        ],
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange ??
          DateTimeRange(
            start: DateTime.now().subtract(Duration(days: 30)),
            end: DateTime.now(),
          ),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (newDateRange == null) {
      return;
    }
    setState(() {});
    dateRange = newDateRange;
  }
}
