import 'package:docso_app/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'address_card.dart';

class ManageAddress extends StatelessWidget {
  const ManageAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Addresses')),
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (_, index) => AddressCard(index: index),
            ),
          ),
          Expanded(
            child: Padding(
              padding: AppStyle.mediumPadding,
              child: FilledButton(
                onPressed: () {},
                child: const Text('+ Add New Shipping Address'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
