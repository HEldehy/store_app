class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel ?rating;
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
  factory ProductModel.fromJson(json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
        rating: json['rating'] == null
            ? null
            : RatingModel.fromJson(json['rating']));

  }
}
class RatingModel {
  final double rate;
  final int count;
  RatingModel({
    required this.rate,
    required this.count,
  });
  factory RatingModel.fromJson(jsonRating) {
    return RatingModel(
        rate: jsonRating['rate'], count: jsonRating['count']);
  }
}

//https://www.udemy.com/course/best-and-complete-flutter-course-for-beginners/learn/lecture/30379760#overview