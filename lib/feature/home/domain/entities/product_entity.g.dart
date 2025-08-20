// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<ProductEntity> {
  @override
  final int typeId = 0;

  @override
  ProductEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductEntity(
      productId: fields[0] as int?,
      productPrice: fields[1] as double?,
      productCategory: fields[2] as String?,
      productPhotoUrl: fields[3] as String?,
      productName: fields[4] as String?,
      productDescription: fields[5] as String?,
      productUpdatedAt: fields[6] as DateTime?,
      productCreatedAt: fields[7] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.productPrice)
      ..writeByte(2)
      ..write(obj.productCategory)
      ..writeByte(3)
      ..write(obj.productPhotoUrl)
      ..writeByte(4)
      ..write(obj.productName)
      ..writeByte(5)
      ..write(obj.productDescription)
      ..writeByte(6)
      ..write(obj.productUpdatedAt)
      ..writeByte(7)
      ..write(obj.productCreatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
