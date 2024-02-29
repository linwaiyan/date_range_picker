import 'package:date_range_picker/controller/c_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_super_scaffold/flutter_super_scaffold.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

// class DateRangePickerStateless extends StatelessWidget {
//   final DateRangePickerController controller =
//       Get.put(DateRangePickerController());

//   DateRangePickerStateless({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return FlutterSuperScaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
//             decoration: const BoxDecoration(),
//             child: GestureDetector(
//               onTap: () => controller.pickDateRange(context),
//               child: Container(
//                 padding: EdgeInsets.all(Get.width * 0.02),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle, color: Colors.blueAccent.shade400),
//                 child: const Icon(
//                   Iconsax.calendar_1,
//                   size: 20,
//                   color: Colors.white70,
//                 ),
//               ),
//             ),
//           ),
//           Obx(() {
//             final start = controller.dateRange.value?.start ??
//                 DateTime.now().subtract(Duration(days: 30));
//             final end = controller.dateRange.value?.end ?? DateTime.now();
//             return Text(
//               '${start.year}/${start.month}/${start.day}'
//               ' မှ '
//               '${end.year}/${end.month}/${end.day}'
//               ' အထိ',
//             );
//           }),
//         ],
//       ),
//     );
//   }
// }

class DateRangePickerStateless extends StatelessWidget {
  final DateRangePickerController controller =
      Get.put(DateRangePickerController(), permanent: true);

  DateRangePickerStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterSuperScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
            child: GestureDetector(
              onTap: () => controller.pickDateRange(context),
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
          GetBuilder<DateRangePickerController>(
            builder: (controller) {
              final start = controller.dateRange?.start ??
                  DateTime.now().subtract(Duration(days: 30));
              final end = controller.dateRange?.end ?? DateTime.now();
              return Text(
                '${start.year}/${start.month}/${start.day}'
                ' မှ '
                '${end.year}/${end.month}/${end.day}'
                ' အထိ',
              );
            },
          ),
        ],
      ),
    );
  }
}
