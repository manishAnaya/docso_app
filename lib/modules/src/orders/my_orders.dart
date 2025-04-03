// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../../../core/providers/cart_provider.dart';

// class MyOrders extends StatelessWidget {
//   const MyOrders({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Selector<CartProvider, List<Order>>(
//         selector: (_, provider) => provider.orders,
//         builder: (_, orders, __) => ListView.builder(
//           itemCount: orders.length,
//           itemBuilder: (_, index) => MyOrdersCard(
//             order: orders[index],
//           ),
//         ),
//       ),
//     );
//   }
// }
