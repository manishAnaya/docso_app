// import 'package:docso_app/core/utils/app_extensions.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../../../constants/app_colors.dart';
// import '../../../../constants/app_sizes.dart';
// import '../../../../constants/app_style.dart';

// class OrderItemsDetail extends StatefulWidget {
//   final int orderId;
//   const OrderItemsDetail({super.key, required this.orderId});

//   @override
//   State<OrderItemsDetail> createState() => _OrderItemsDetailState();
// }

// class _OrderItemsDetailState extends State<OrderItemsDetail> {
//   @override
//   void didChangeDependencies() {
//     context.read<CartProvider>().fetchOrderItems(widget.orderId);
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     int activeStep = 1;
//     return Scaffold(
//       appBar: AppBar(title: const Text('Order Details')),
//       body: Consumer<CartProvider>(builder: (context, provider, child) {
//         final orderItems = provider.orderItems;
//         return SingleChildScrollView(
//           child: Column(
//             children: [
//               EasyStepper(
//                 activeStep: activeStep,
//                 activeStepTextColor: Colors.black87,
//                 finishedStepTextColor: Colors.black87,
//                 stepRadius: 15,
//                 steps: [
//                   EasyStep(
//                     customStep: CircleAvatar(
//                       radius: 8,
//                       backgroundColor: Colors.white,
//                       child: CircleAvatar(
//                         radius: 7,
//                         backgroundColor:
//                             activeStep >= 0 ? Colors.orange : Colors.white,
//                       ),
//                     ),
//                     title: 'Waiting',
//                   ),
//                   EasyStep(
//                     customStep: CircleAvatar(
//                       radius: 8,
//                       backgroundColor: Colors.white,
//                       child: CircleAvatar(
//                         radius: 7,
//                         backgroundColor:
//                             activeStep >= 1 ? Colors.orange : Colors.white,
//                       ),
//                     ),
//                     title: 'Order Received',
//                     topTitle: true,
//                   ),
//                   EasyStep(
//                     customStep: CircleAvatar(
//                       radius: 8,
//                       backgroundColor: Colors.white,
//                       child: CircleAvatar(
//                         radius: 7,
//                         backgroundColor:
//                             activeStep >= 2 ? Colors.orange : Colors.white,
//                       ),
//                     ),
//                     title: 'Preparing',
//                   ),
//                   EasyStep(
//                     customStep: CircleAvatar(
//                       radius: 8,
//                       backgroundColor: Colors.white,
//                       child: CircleAvatar(
//                         radius: 7,
//                         backgroundColor:
//                             activeStep >= 3 ? Colors.orange : Colors.white,
//                       ),
//                     ),
//                     title: 'On Way',
//                     topTitle: true,
//                   ),
//                   EasyStep(
//                     customStep: CircleAvatar(
//                       radius: 8,
//                       backgroundColor: Colors.white,
//                       child: CircleAvatar(
//                         radius: 7,
//                         backgroundColor:
//                             activeStep >= 4 ? Colors.orange : Colors.white,
//                       ),
//                     ),
//                     title: 'Delivered',
//                   ),
//                 ],
//               ),
//               Text(orderItems[0].order!.amountPayable.toString()),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: provider.orderItems.length,
//                 itemBuilder: (_, index) {
//                   final orderItem = orderItems[index].cart!;
//                   return OrderItemCard(orderItem: orderItem);
//                 },
//               ),
//             ],
//           ),
//         );
//       }),
//     );
//   }
// }

// class OrderItemCard extends StatelessWidget {
//   final Cart orderItem;
//   const OrderItemCard({super.key, required this.orderItem});

//   @override
//   Widget build(BuildContext context) {
//     final product = orderItem.product;
//     final textTheme = Theme.of(context).textTheme;
//     final savedAmount =
//         ((product.mrp - product.sp) * orderItem.quantity).toStringAsFixed(1);
//     return Card(
//       margin: AppStyle.listPadding,
//       child: Container(
//         padding: AppStyle.mediumPadding,
//         child: IntrinsicHeight(
//           child: Row(
//             children: [
//               Expanded(
//                 child: Image.network(product.images[0], height: 150),
//               ),
//               12.w,
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       product.name,
//                       maxLines: 1,
//                       style: textTheme.titleMedium
//                           ?.copyWith(fontWeight: FontWeight.bold),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     AppSizes.spacingLBtw.h,
//                     Text(
//                       product.details,
//                       maxLines: 1,
//                       style: textTheme.bodyMedium,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     AppSizes.spacingLBtw.h,
//                     RichText(
//                       text: TextSpan(
//                         children: [
//                           TextSpan(
//                             text: '₹${(product.sp).toStringAsFixed(2)}  ',
//                             style: textTheme.titleMedium,
//                           ),
//                           TextSpan(
//                             text: '₹${(product.mrp).toStringAsFixed(2)}',
//                             style: textTheme.titleSmall?.copyWith(
//                               decoration: TextDecoration.lineThrough,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Text(
//                       'You saved ₹$savedAmount',
//                       style: textTheme.titleSmall
//                           ?.copyWith(color: AppColors.green),
//                     ),
//                     AppSizes.spacingLBtw.h,
//                     if (orderItem.selectedSize != null)
//                       Text('Size: ${orderItem.selectedSize!}'),
//                     if (orderItem.selectedColor != null)
//                       Text('Color: ${orderItem.selectedColor!}'),
//                     if (orderItem.selectedVariant != null)
//                       Text(orderItem.selectedVariant!),
//                     Text('Qty: ${orderItem.quantity}'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
