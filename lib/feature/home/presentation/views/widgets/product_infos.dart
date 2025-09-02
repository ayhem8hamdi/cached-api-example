import 'package:caching/core/theme/text_styles/app_styles.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productEntity.productName!,
          style: AppStyles.styleBold17(context),
        ),
        const Gap(4),
        Text(
          productEntity.productDescription!,
          style: AppStyles.styleRegular15(context),
          softWrap: true,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const Gap(4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Created At',
              style: AppStyles.styleSemiBold15(context),
            ),
            Text(
              DateFormat('dd-MM-yyyy').format(productEntity.productCreatedAt!),
              style: AppStyles.styleRegular15(context),
            ),
          ],
        ),
        const Gap(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Updated At',
              style: AppStyles.styleSemiBold15(context),
            ),
            Text(
              DateFormat('dd-MM-yyyy').format(productEntity.productUpdatedAt!),
              style: AppStyles.styleRegular15(context),
            ),
          ],
        ),
        const Gap(8),
        ProductPricingRow(productEntity: productEntity)
      ],
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
        Text(
          "${productEntity.productPrice.toString()} £",
          style: AppStyles.styleSemiBold15(context),
        )
      ],
    );
  }
}
