// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../../../constants/app_sizes.dart';
// import '../../../../core/providers/cart_provider.dart';

// class OrderDetails extends StatefulWidget {
//   const OrderDetails({super.key});

//   @override
//   State<OrderDetails> createState() => _OrderDetailsState();
// }

// class _OrderDetailsState extends State<OrderDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: AppStyle.horizontalPadding,
//       child: Padding(
//         padding: AppStyle.mediumPadding,
//         child: Consumer<CartProvider>(builder: (_, provider, __) {
//           bool isShippingApplicable =
//               provider.cartTotal < provider.minShippinFree;
//           final bagSavings = provider.bagTotal - provider.cartTotal;
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               buildRow(label: 'Order Details', isBold: true),
//               AppSizes.spacingLBtw.h,
//               buildRow(
//                 label: 'Bag Total',
//                 value: '₹${provider.bagTotal.toStringAsFixed(2)}',
//               ),
//               buildRow(
//                 label: 'Bag Savings',
//                 value: '-₹${bagSavings.toStringAsFixed(2)}',
//                 valueStyle: TextStyle(color: Colors.green.shade700),
//               ),
//               buildRow(
//                 label: 'Coupon Savings',
//                 value: '₹0',
//               ),
//               buildRow(
//                 label: 'Delivery Fee',
//                 value: isShippingApplicable
//                     ? '₹${provider.shippingFee}'
//                     : 'Free ₹0',
//                 isDelivery: true,
//                 valueStyle: TextStyle(color: Colors.green.shade700),
//               ),
//               AppSizes.spacingLBtw.h,
//               buildRow(
//                 label: 'Amount Payable',
//                 value: '₹${provider.amountPayable.toStringAsFixed(2)}',
//                 isBold: true,
//               ),
//             ],
//           );
//         }),
//       ),
//     );
//   }

//   Widget buildRow({
//     required String label,
//     String? value,
//     bool isBold = false,
//     TextStyle? valueStyle,
//     bool isDelivery = false,
//   }) {
//     final textTheme = Theme.of(context).textTheme;
//     final defaultStyle = isBold
//         ? textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)
//         : textTheme.bodyMedium;

//     return Padding(
//       padding: const EdgeInsets.only(bottom: 4),
//       child: Row(
//         children: [
//           Text(label, style: defaultStyle),
//           6.w,
//           isDelivery
//               ? Tooltip(
//                   margin: EdgeInsets.all(AppSizes.spacingHBtw),
//                   showDuration: const Duration(seconds: 4),
//                   message:
//                       'This fees is charged for orders below ₹499 to cover logistic cost',
//                   triggerMode: TooltipTriggerMode.tap,
//                   child: const Icon(Icons.help_outline, size: 18),
//                 )
//               : const SizedBox(),
//           const Spacer(),
//           if (value != null) Text(value, style: valueStyle ?? defaultStyle),
//         ],
//       ),
//     );
//   }
// }
