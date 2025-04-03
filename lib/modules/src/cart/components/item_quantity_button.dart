// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import '../../../../constants/app_sizes.dart';
// import '../../../../core/providers/cart_provider.dart';
// import '../../../common/small_loading.dart';

// class ItemQuantityButtons extends StatelessWidget {
//   const ItemQuantityButtons({
//     super.key,
//     required this.isQtyLoading,
//     required this.cartItem,
//     required this.cartProvider,
//   });

//   final bool isQtyLoading;
//   final Cart cartItem;
//   final CartProvider cartProvider;

//   @override
//   Widget build(BuildContext context) {
//     return ToggleButtons(
//       isSelected: [cartItem.quantity > 1, false, true],
//       constraints: const BoxConstraints(
//         minHeight: 30,
//         minWidth: 30,
//       ),
//       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//       borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
//       onPressed: (index) {
//         if (isQtyLoading) {
//           Fluttertoast.showToast(msg: 'Please wait...');
//           return;
//         }
//         if (index == 0) {
//           if (cartItem.quantity > 1) {
//             cartProvider.decreaseQty(cartItem);
//           } else {
//             Fluttertoast.showToast(msg: 'quantity should be atleast one');
//           }
//         } else if (index == 2) {
//           cartProvider.increaseQty(cartItem);
//         }
//       },
//       children: [
//         const Icon(Icons.remove, size: 16),
//         isQtyLoading
//             ? const SmallLoading()
//             : Text(cartItem.quantity.toString()),
//         const Icon(Icons.add, size: 16)
//       ],
//     );
//   }
// }
