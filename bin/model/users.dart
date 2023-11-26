import 'dart:convert';
class User {
  late String name;
  late int age;
  late bool isStudent;
  late List<int> grades;
  late Address address;


  User.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    age = json["age"];
    isStudent = json["isStudent"];
    grades = List<int>.from(json["grades"]);
    address = Address.fromJson(json["address"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "age": age,
      "isStudent": isStudent,
      "grades": grades,
      "address": address.toJson(),
    };
  }

  @override
  String toString() {
    return "User{name: $name, age: $age, isStudent: $isStudent, grades: $grades, address: $address}";
  }
}

class Address {
  late String city;
  late String zipCode;

  Address({
    required this.city,
    required this.zipCode,
  });

  Address.fromJson(Map<String, dynamic> json) {
    city = json["city"];
    zipCode = json["zipCode"];
  }

  Map<String, dynamic> toJson() {
    return {
      "city": city,
      "zipCode": zipCode,
    };
  }

  @override
  String toString() {
    return "Address{city: $city, zipCode: $zipCode}";
  }
}

List<User> usersFromData(String data) =>
    List<User>.from(jsonDecode(data).map((e) => User.fromJson(e)));

String userToData(User user) => jsonEncode(user.toJson());

User userFromData(String data) => User.fromJson(jsonDecode(data));


/*
class Users{
   late String productName;
   late double price;
   late bool inStock;
   late String  productId;
   //late Details details;

   Users.fromJson(Map<String, dynamic>json){
     productName = json["productName"];
     productId = json["productId"];
     price = json["price"];
     inStock = json["inStock"];
    // details = json["details"];
   }

 Map<String, dynamic>toJson(){
   Map <String, dynamic> map ={
    " name ": productName,
     "id" : productId,
     "true" : inStock,
     "price" : price,
   };

   return map;
 }


 @override
  String toString() {
   return "\n price: $price \n name: $productName \n true: $inStock \n id: $productId";
  }

}


class Details {
  late String brand;
  late String model;
  late Species species;

  Details.fromJson(Map<String, dynamic>json){
    brand = json["brand"];
    model = json["model"];
    species = json["species"];
  }

  Map<String, dynamic>toJson(){
    Map<String, dynamic> mapp = {
      "brand": brand,
      "model ": model,
      "species" : species,
    };

    return mapp;
  }

  @override
  String toString() {
    return "brand = $brand \n model  = $model \n species = $species";
  }

}

class Species{
  late double screenSize;
  late int storageCapasity;

  Species.fromJson(Map<String, dynamic>json){
    screenSize = json["screenSize"];
    storageCapasity = json["storageCapasity"];
  }

  Map<String, dynamic>toJson(){
  Map<String, dynamic> mapppppp  = {
    "size" : screenSize,
    "streage": storageCapasity,
  };
  return mapppppp;
}

@override
  String toString() {

    return "size = ${screenSize} \nstorage = ${storageCapasity}";
  }

}
*/

