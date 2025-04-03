// import 'package:docso_app/core/utils/app_extensions.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:docso_app/constants/app_colors.dart';
// import 'package:docso_app/constants/app_sizes.dart';
// import 'package:docso_app/constants/app_style.dart';
// import 'package:provider/provider.dart';
// import 'components/cart_button.dart';
// import 'components/product_data.dart';
// import 'components/product_detail.dart';
// import 'components/product_images.dart';
// import 'components/wishlist_button.dart';
// import 'reviews/reviews.dart';

// class ProductView extends StatelessWidget {
//   final Product product;
//   const ProductView({super.key, required this.product});

//   @override
//   Widget build(BuildContext context) {
//     final color = Theme.of(context).colorScheme.primaryContainer;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Product Details'),
//         actions: [
//           IconButton(
//             onPressed: () => context.push('/wishlist'),
//             icon: const Icon(Icons.favorite, size: 25),
//           ),
//           Selector<CartProvider, int>(
//             selector: (_, provider) => provider.totalCartItems,
//             builder: (_, totalCartItems, __) => Badge(
//               offset: const Offset(-3, 6),
//               backgroundColor: AppColors.primary,
//               label: Text(totalCartItems.toString()),
//               child: IconButton(
//                 onPressed: () => context.push('/cart'),
//                 icon: const Icon(IconlyLight.buy, size: 25),
//               ),
//             ),
//           ),
//           AppSizes.spacingLBtw.w,
//         ],
//       ),
//       body: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 ProductImages(product: product),
//                 Container(
//                   color: color,
//                   padding: AppStyle.highPadding,
//                   width: double.infinity,
//                   child: Column(
//                     children: [
//                       ProductData(product: product),
//                       ProductDetail(product: product),
//                       const Reviews(),
//                       const SizedBox(height: 10),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             padding: AppStyle.mediumPadding,
//             height: 80,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(24),
//                 color: color,
//                 border: Border.all(color: Colors.black12, width: 0.5)),
//             child: Row(
//               children: [
//                 AppSizes.spacingHBtw.w,
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(Icons.share, size: 25),
//                 ),
//                 AppSizes.spacingHBtw.w,
//                 WishlistButton(product: product),
//                 AppSizes.spacingHBtw.w,
//                 Expanded(
//                   child: CartButton(product: product),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
