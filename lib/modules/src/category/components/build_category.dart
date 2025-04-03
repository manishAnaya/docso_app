// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shimmer/shimmer.dart';
// import '../../../../constants/app_colors.dart';
// import '../../../../constants/app_sizes.dart';
// import '../../../../constants/app_style.dart';
// import '../../../../core/providers/product_provider.dart';
// import 'category_card.dart';

// class BuildCategory extends StatelessWidget {
//   final ScrollPhysics? physics;
//   final int? itemCount;
//   const BuildCategory({super.key, this.itemCount, this.physics});

//   @override
//   Widget build(BuildContext context) {
//     return Selector<ProductProvider,
//         ({List<CategoryModel> categories, bool isLoading})>(
//       selector: (_, provider) => (
//         categories: provider.categories,
//         isLoading: provider.isLoading,
//       ),
//       builder: (_, data, child) {
//         final categories = data.categories;
//         final isLoading = data.isLoading;
//         if (isLoading) {
//           return loadingCategory();
//         } else {
//           return GridView.builder(
//             shrinkWrap: true,
//             physics: physics,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 4,
//               childAspectRatio: 0.85,
//               mainAxisSpacing: AppSizes.spacingNBtw,
//             ),
//             itemCount: itemCount ?? categories.length,
//             itemBuilder: (context, index) {
//               final category = categories[index];
//               return CategoryCard(category: category);
//             },
//           );
//         }
//       },
//     );
//   }

//   Widget loadingCategory() {
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: physics,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 4,
//         childAspectRatio: 0.9,
//         mainAxisSpacing: AppSizes.spacingNBtw,
//       ),
//       itemCount: 4,
//       itemBuilder: (context, index) {
//         return Shimmer.fromColors(
//           baseColor: AppColors.lightBlack,
//           highlightColor: AppColors.white,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: 75,
//                 alignment: Alignment.center,
//                 padding: AppStyle.highPadding,
//                 margin: AppStyle.listPadding,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: AppColors.white,
//                 ),
//               ),
//               AppSizes.spacingLBtw.h,
//               const Text('Loading..'),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
