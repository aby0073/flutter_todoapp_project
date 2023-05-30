// import 'package:flutter/material.dart';
// class DatePicker extends StatefulWidget {
//   const DatePicker({Key? key}) : super(key: key);
//
//   @override
//   State<DatePicker> createState() => _DatePickerState();
// }
//
// class _DatePickerState extends State<DatePicker> {
//   var dateController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Date picker"),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             controller: dateController,
//             decoration: const InputDecoration(
//               icon: Icon(Icons.calendar_today),
//               labelText: "Enter date"
//             ),
//             readOnly: true,
//             onTap: () async{
//           }
//           ),
//           DateTime? pickedDate = await showDatePicker(
//               context: context,
//               initialDate: DateTime.now(),
//               firstDate: DateTime(2000),
//               lastDate: DateTime(2101)
//           );
//         ],
//       ),
//     );
//   }
// }
