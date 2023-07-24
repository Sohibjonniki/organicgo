// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    final bool status;
    final List<Location> location;
    final List<Category> category;
    final List<AllDatum> vegetables;
    final List<AllDatum> fruits;
    final List<AllDatum> meats;
    final List<AllDatum> drinks;
    final List<AllDatum> allData;

    UserModel({
        required this.status,
        required this.location,
        required this.category,
        required this.vegetables,
        required this.fruits,
        required this.meats,
        required this.drinks,
        required this.allData,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json["status"],
        location: List<Location>.from(json["Location"].map((x) => Location.fromJson(x))),
        category: List<Category>.from(json["Category"].map((x) => Category.fromJson(x))),
        vegetables: List<AllDatum>.from(json["Vegetables"].map((x) => AllDatum.fromJson(x))),
        fruits: List<AllDatum>.from(json["Fruits"].map((x) => AllDatum.fromJson(x))),
        meats: List<AllDatum>.from(json["Meats"].map((x) => AllDatum.fromJson(x))),
        drinks: List<AllDatum>.from(json["Drinks"].map((x) => AllDatum.fromJson(x))),
        allData: List<AllDatum>.from(json["AllData"].map((x) => AllDatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "Location": List<dynamic>.from(location.map((x) => x.toJson())),
        "Category": List<dynamic>.from(category.map((x) => x.toJson())),
        "Vegetables": List<dynamic>.from(vegetables.map((x) => x.toJson())),
        "Fruits": List<dynamic>.from(fruits.map((x) => x.toJson())),
        "Meats": List<dynamic>.from(meats.map((x) => x.toJson())),
        "Drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
        "AllData": List<dynamic>.from(allData.map((x) => x.toJson())),
    };
}

class AllDatum {
    final String title;
    final String price;
    final String img;

    AllDatum({
        required this.title,
        required this.price,
        required this.img,
    });

    factory AllDatum.fromJson(Map<String, dynamic> json) => AllDatum(
        title: json["title"],
        price: json["price"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "img": img,
    };
}

class Category {
    final String title;
    final String img;

    Category({
        required this.title,
        required this.img,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        title: json["title"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "img": img,
    };
}

class Location {
    final String title;

    Location({
        required this.title,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        title: json["title"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
    };
}
