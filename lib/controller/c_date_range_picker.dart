import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class DateRangePickerController extends GetxController {
//   Rx<DateTimeRange?> dateRange = Rx<DateTimeRange?>(null);

//   void pickDateRange(BuildContext context) async {
//     DateTime start = dateRange.value?.start ??
//         DateTime.now().subtract(const Duration(days: 30));
//     DateTime end = dateRange.value?.end ?? DateTime.now();
//     DateTimeRange? newDateRange = await showDateRangePicker(
//       context: context,
//       initialDateRange: dateRange.value ??
//           DateTimeRange(
//             start: DateTime.now().subtract(Duration(days: 30)),
//             end: DateTime.now(),
//           ),
//       firstDate: DateTime(1900),
//       lastDate: DateTime(2100),
//     );

//     if (newDateRange == null) {
//       return;
//     }

//     dateRange.value = newDateRange;
//   }
// }

class DateRangePickerController extends GetxController {
  DateTimeRange? dateRange;

  void pickDateRange(BuildContext context) async {
    DateTime start =
        dateRange?.start ?? DateTime.now().subtract(const Duration(days: 30));
    DateTime end = dateRange?.end ?? DateTime.now();
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange ?? DateTimeRange(start: start, end: end),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (newDateRange != null) {
      dateRange = newDateRange;
      update();
    }
  }
}
