// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import '../../../constants/app_style.dart';
// import 'components/order_details.dart';

// class Cart extends StatelessWidget {
//   const Cart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     return Scaffold(
//       appBar: AppBar(title: const Text('My Cart')),
//       body: Consumer<CartProvider>(
//         builder: (_, provider, child) {
//           final cartItems = provider.cartItems;
//           if (cartItems.isEmpty) {
//             return const Center(child: Text('No Items in cart'));
//           } else {
//             return Column(
//               children: [
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         ListView.builder(
//                           itemCount: cartItems.length,
//                           shrinkWrap: true,
//                           physics: const NeverScrollableScrollPhysics(),
//                           itemBuilder: (context, index) => CartCard(
//                             cartItem: cartItems[index],
//                           ),
//                         ),
//                         AppSizes.spacingNBtw.h,
//                         Text(
//                           'Assured Quality | 100% Handpicked | Easy Exchange',
//                           style: textTheme.labelSmall,
//                         ),
//                         Card(
//                           margin: AppStyle.mediumPadding,
//                           child: Row(
//                             children: [
//                               AppSizes.spacingNBtw.w,
//                               const Icon(IconlyLight.discount),
//                               AppSizes.spacingNBtw.w,
//                               Text(
//                                 'Apply Coupon',
//                                 style: textTheme.bodyMedium,
//                               ),
//                               const Spacer(),
//                               TextButton(
//                                 onPressed: () => context.push('/coupons'),
//                                 child: const Text('Select'),
//                               )
//                             ],
//                           ),
//                         ),
//                         const OrderDetails(),
//                         AppSizes.spacingNBtw.h,
//                       ],
//                     ),
//                   ),
//                 ),
//                 Card(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(0)),
//                   child: Padding(
//                     padding: AppStyle.mediumPadding,
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text('Grand Total :'),
//                                 AnimatedFlipCounter(
//                                   prefix: '₹',
//                                   value: provider.amountPayable,
//                                   fractionDigits: 2,
//                                   textStyle: textTheme.headlineSmall?.copyWith(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Flexible(
//                               child: FilledButton(
//                                 style: FilledButton.styleFrom(
//                                     maximumSize: const Size(240, 50)),
//                                 onPressed: () => context
//                                     .read<CartProvider>()
//                                     .placeOrder(context),
//                                 child: const Text('Proceed to checkout'),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }
// }
