class Product {
	int? id;
	double? price;
	String? category;
	DateTime? updatedAt;
	String? photoUrl;
	String? name;
	String? description;
	DateTime? createdAt;

	Product({
		this.id, 
		this.price, 
		this.category, 
		this.updatedAt, 
		this.photoUrl, 
		this.name, 
		this.description, 
		this.createdAt, 
	});

	factory Product.fromJson(Map<String, dynamic> json) => Product(
				id: json['id'] as int?,
				price: (json['price'] as num?)?.toDouble(),
				category: json['category'] as String?,
				updatedAt: json['updated_at'] == null
						? null
						: DateTime.parse(json['updated_at'] as String),
				photoUrl: json['photo_url'] as String?,
				name: json['name'] as String?,
				description: json['description'] as String?,
				createdAt: json['created_at'] == null
						? null
						: DateTime.parse(json['created_at'] as String),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'price': price,
				'category': category,
				'updated_at': updatedAt?.toIso8601String(),
				'photo_url': photoUrl,
				'name': name,
				'description': description,
				'created_at': createdAt?.toIso8601String(),
			};
}
