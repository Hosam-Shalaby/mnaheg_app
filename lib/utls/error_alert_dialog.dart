
// import 'package:flutter/material.dart';
// import 'package:mnaheg/widgets/custom_button.dart';

// class ErrorAlertDailog extends StatelessWidget {
//   const ErrorAlertDailog({super.key, required this.message});

//   final String message;
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       key: key,
//       content: Text(message),
//       actions: [
//         CustomButton(
//           text: 'Ok',
//           fontsize: 15,
//           onTap: () {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const onboardingPage(),
//               ),
//             );
//           },
//         )
//       ],
//     );
//   }
// }