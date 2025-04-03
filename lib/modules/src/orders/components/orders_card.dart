// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import '../../../../constants/app_colors.dart';
// import '../../../../constants/app_style.dart';

// class MyOrdersCard extends StatelessWidget {
//   final Order order;
//   const MyOrdersCard({super.key, required this.order});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     return GestureDetector(
//       onTap: () => context.push('/orderDetails', extra: order.id),
//       child: Container(
//         padding: AppStyle.mediumPadding,
//         margin: AppStyle.listPadding,
//         decoration: BoxDecoration(
//           color: AppColors.white,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(order.amountPayable.toString(),
//                 style: textTheme.headlineSmall),
//             Text(order.status),
//             const Text('Payment Mode'),
//             const Text('Transaction Id: '),
//             Text(order.createdAt.toString()),
//           ],
//         ),
//       ),
//     );
//   }
// }
