// import 'package:docso_app/modules/src/cart/cart.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:docso_app/constants/app_colors.dart';
// import 'package:docso_app/constants/app_sizes.dart';
// import 'package:docso_app/constants/app_style.dart';
// import 'package:provider/provider.dart';
// import '../../../../core/providers/cart_provider.dart';
// import 'item_quantity_button.dart';

// class CartCard extends StatelessWidget {
//   final Cart cartItem;
//   final bool? isRemove;
//   const CartCard({super.key, required this.cartItem, this.isRemove});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     final product = cartItem.product;
//     final savedAmount =
//         ((product.mrp - product.sp) * cartItem.quantity).toStringAsFixed(1);
//     final savedPercentage = ((product.mrp - product.sp) / product.mrp) * 100;
//     final cartProvider = context.read<CartProvider>();
   
//     return GestureDetector(
//       onTap: () => context.push('/productDetails', extra: product),
//       child: Card(
//         margin: AppStyle.listPadding,
//         child: Container(
//           padding: AppStyle.mediumPadding,
//           child: IntrinsicHeight(
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Image.network(product.images[0], height: 150),
//                 ),
//                 12.w,
//                 Expanded(
//                   flex: 2,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         product.name,
//                         maxLines: 1,
//                         style: textTheme.titleMedium
//                             ?.copyWith(fontWeight: FontWeight.bold),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       AppSizes.spacingLBtw.h,
//                       Text(
//                         product.details,
//                         maxLines: 1,
//                         style: textTheme.bodyMedium,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       AppSizes.spacingLBtw.h,
//                       RichText(
//                         text: TextSpan(
//                           children: [
//                             TextSpan(
//                               text:
//                                   '₹${(product.sp * cartItem.quantity).toStringAsFixed(2)}  ',
//                               style: textTheme.titleMedium,
//                             ),
//                             TextSpan(
//                               text:
//                                   '₹${(product.mrp * cartItem.quantity).toStringAsFixed(2)}',
//                               style: textTheme.titleSmall?.copyWith(
//                                 decoration: TextDecoration.lineThrough,
//                               ),
//                             ),
//                             TextSpan(
//                               text:
//                                   '  (${savedPercentage.toStringAsFixed(0)}% Off)',
//                               style: textTheme.titleSmall
//                                   ?.copyWith(color: AppColors.green),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Text(
//                         'You saved ₹$savedAmount',
//                         style: textTheme.titleSmall
//                             ?.copyWith(color: AppColors.green),
//                       ),
                    
//                       isRemove ?? false
//                           ? const SizedBox.shrink()
//                           : const Spacer(),
//                       isRemove ?? false
//                           ? const SizedBox.shrink()
//                           : Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 ItemQuantityButtons(
//                                     isQtyLoading: isQtyLoading,
//                                     cartItem: cartItem,
//                                     cartProvider: cartProvider),
//                                 CustomIconButton(
//                                   onPressed: () =>
//                                       onRemoving(context, cartProvider),
//                                   icon:
//                                       cartProvider.isCartTaskLaoding(product.id)
//                                           ? SmallLoading(color: AppColors.white)
//                                           : const Icon(IconlyLight.delete),
//                                 )
//                               ],
//                             ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void onRemoving(BuildContext context, CartProvider cartProvider) {
//     customBottomSheet(
//       context: context,
//       title: 'Remove From Cart?',
//       buttonName: 'Yes, remove',
//       child: CartCard(cartItem: cartItem, isRemove: true),
//       onConfirmation: () async {
//         Navigator.pop(context);
//         await cartProvider.removeFromCart(cartItem.product.id);
//       },
//     );
//   }
// }
