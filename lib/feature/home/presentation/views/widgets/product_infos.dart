import 'package:caching/feature/home/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class ProductInfos extends StatelessWidget {
  const ProductInfos({
    super.key,
    required this.productEntity,
  });
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(productEntity.productName!),
          const Gap(4),
          Text(
            productEntity.productDescription!,
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const Gap(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Created At'),
              Text(DateFormat('dd-MM-yyyy')
                  .format(productEntity.productCreatedAt!)),
            ],
          ),
          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Updated At'),
              Text(DateFormat('dd-MM-yyyy')
                  .format(productEntity.productUpdatedAt!)),
            ],
          ),
          const Gap(8),
          ProductPricingRow(productEntity: productEntity)
        ],
      ),
    );
  }
}

class ProductPricingRow extends StatelessWidget {
  const ProductPricingRow({
    super.key,
    required this.productEntity,
  });
  final ProductEntity productEntity;

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
            child: Text(productEntity.productCategory!)),
        Text("${productEntity.productPrice.toString()} £")
      ],
    );
  }
}
