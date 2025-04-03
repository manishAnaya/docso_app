// import 'package:flutter/material.dart';
// import '../../../../constants/app_colors.dart';
// import '../../../../constants/app_constant.dart';
// import '../../../../constants/app_sizes.dart';
// import '../../../../constants/app_style.dart';
// import '../../../../models/category_model.dart';

// class CategoryCard extends StatelessWidget {
//   final CategoryModel category;
//   const CategoryCard({super.key, required this.category});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     final imgUrl = '${AppConstant.categoryImgPath}${category.image}';
//     return GestureDetector(
//       onTap: () {},
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             padding: AppStyle.highPadding,
//             margin: AppStyle.listPadding,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: AppColors.white,
//             ),
//             child: Image.network(
//               imgUrl,
//               height: 30,
//               width: 30,
//               color: AppColors.primary,
//             ),
//           ),
//           AppSizes.spacingLBtw.h,
//           Text(
//             category.name,
//             style: textTheme.bodyMedium,
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//         ],
//       ),
//     );
//   }
// }
