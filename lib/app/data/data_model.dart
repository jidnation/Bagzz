/*     DATA MODEL   */
class Data {
  String? image;
  String? name;
  String? atr;
  String? sub;
  String? description;
  double? price;

  Data(
      {this.image,
      this.name,
      this.atr,
      this.sub,
      this.description,
      this.price});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        image: json['image'],
        name: json['Name'],
        atr: json['atr'],
        sub: json['sub'],
        description: json['description'],
        price: json['price']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image'] = image;
    data['Name'] = name;
    data['atr'] = atr;
    data['sub'] = sub;
    data['description'] = description;
    data['price'] = price;
    return data;
  }
}

class DataList {
  final List<Data> dataContainer;

  DataList({required this.dataContainer});

  factory DataList.fromjson(List<dynamic> parsedData) {
    List<Data> _container = <Data>[];
    _container = parsedData.map((data) => Data.fromJson(data)).toList();

    return DataList(dataContainer: _container);
  }
}

/*    CATEGORIES  MODEL   */
class Category {
  final String image;
  final String category;

  Category({required this.image, required this.category});

  factory Category.fromjson(Map<String, dynamic> json) {
    return Category(image: json['image'], category: json['category']);
  }
}

class CategoryList {
  final List<Category> categoryContainer;

  CategoryList({required this.categoryContainer});

  factory CategoryList.fromjson(List<dynamic> parsedData) {
    List<Category> _container = <Category>[];

    _container = parsedData.map((data) => Category.fromjson(data)).toList();

    return CategoryList(categoryContainer: _container);
  }
}

/*    FAVOURITE MODEL   */
class Favourite {
  String? image;
  String? name;
  String? atr;
  String? sub;
  double? price;
  int? unit;

  Favourite({this.image, this.name, this.atr, this.sub, this.price, this.unit});

  factory Favourite.fromJson(Map<String, dynamic> json) {
    return Favourite(
        image: json['image'],
        name: json['Name'],
        atr: json['atr'],
        unit: json['unit'],
        price: json['price'],
        sub: json['sub']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['image'] = image;
    data['Name'] = name;
    data['atr'] = atr;
    data['price'] = price;
    data['sub'] = sub;
    data['unit'] = unit;
    return data;
  }
}

class FavouriteList {
  final List<Favourite> favourite;

  FavouriteList({required this.favourite});

  factory FavouriteList.fromjson(List<dynamic> parsedFavourite) {
    List<Favourite> _favourite = <Favourite>[];
    _favourite =
        parsedFavourite.map((data) => Favourite.fromJson(data)).toList();

    return FavouriteList(favourite: _favourite);
  }
}
