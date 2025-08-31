import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductInfos extends StatelessWidget {
  const ProductInfos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product 1'),
          Gap(4),
          Text('others few us role set '),
          Gap(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Created At'), Text('24-04-2004')],
          ),
          Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Updated At'), Text('24-04-2004')],
          ),
          Gap(8),
          ProductPricingRow()
        ],
      ),
    );
  }
}

class ProductPricingRow extends StatelessWidget {
  const ProductPricingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(3)),
            child: const Text('Created At')),
        const Text(r'988$')
      ],
    );
  }
}
