// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    this.books,
    this.id,
    this.title,
    this.titleUrdu,
    this.titleHindi,
    this.authors,
    this.description,
    this.createdOn,
    this.isbn,
    this.language,
    this.photos,
    this.price,
    this.categories,
    this.volume,
    this.media,
    this.users,
  });

  dynamic books;
  int? id;
  String? title;
  String? titleUrdu;
  String? titleHindi;
  List<Author>? authors;
  String? description;
  DateTime? createdOn;
  String? isbn;
  Language? language;
  List<Media>? photos;
  int? price;
  List<Author>? categories;
  String? volume;
  List<Media>? media;
  dynamic users;

  factory Welcome.fromJson(Map<String,dynamic> json) => Welcome(
    books: json["books"],
    id: json["Id"],
    title: json["Title"],
    titleUrdu: json["Title_Urdu"],
    titleHindi: json["Title_Hindi"],
    authors: List<Author>.from(json["Authors"].map((x) => Author.fromJson(x))),
    description: json["Description"],
    createdOn: DateTime.parse(json["CreatedOn"]),
    isbn: json["ISBN"],
    language: languageValues.map[json["Language"]],
    photos: List<Media>.from(json["Photos"].map((x) => Media.fromJson(x))),
    price: json["Price"],
    categories: List<Author>.from(json["Categories"].map((x) => Author.fromJson(x))),
    volume: json["Volume"],
    media: List<Media>.from(json["Media"].map((x) => Media.fromJson(x))),
    users: json["Users"],
  );

  Map<String, dynamic> toJson() => {
    "books": books,
    "Id": id,
    "Title": title,
    "Title_Urdu": titleUrdu,
    "Title_Hindi": titleHindi,
    "Authors": List<dynamic>.from(authors!.map((x) => x.toJson())),
    "Description": description,
    "CreatedOn": createdOn!.toIso8601String(),
    "ISBN": isbn,
    "Language": languageValues.reverse[language],
    "Photos": List<dynamic>.from(photos!.map((x) => x.toJson())),
    "Price": price,
    "Categories": List<dynamic>.from(categories!.map((x) => x.toJson())),
    "Volume": volume,
    "Media": List<dynamic>.from(media!.map((x) => x.toJson())),
    "Users": users,
  };
}

class Author {
  Author({
    this.id,
    this.name,
    this.nameUrdu,
    this.nameHindi,
    this.books,
    this.modifiedOn,
  });

  int? id;
  String? name;
  String? nameUrdu;
  String? nameHindi;
  dynamic books;
  DateTime? modifiedOn;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    id: json["Id"],
    name: json["Name"],
    nameUrdu: json["Name_Urdu"] == null ? null : json["Name_Urdu"],
    nameHindi: json["Name_Hindi"] == null ? null : json["Name_Hindi"],
    books: json["Books"],
    modifiedOn: json["ModifiedOn"] == null ? null : DateTime.parse(json["ModifiedOn"]),
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
    "Name_Urdu": nameUrdu == null ? null : nameUrdu,
    "Name_Hindi": nameHindi == null ? null : nameHindi,
    "Books": books,
    "ModifiedOn": modifiedOn == null ? null : modifiedOn!.toIso8601String(),
  };
}

enum Language { URDU }

final languageValues = EnumValues({
  "Urdu": Language.URDU
});

class Media {
  Media({
    this.id,
    this.fileName,
    this.isSample,
    this.book,
    this.isCoverPhoto,
  });

  int? id;
  String? fileName;
  bool? isSample;
  dynamic book;
  bool? isCoverPhoto;

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    id: json["Id"],
    fileName: json["FileName"],
    isSample: json["IsSample"] == null ? null : json["IsSample"],
    book: json["Book"],
    isCoverPhoto: json["IsCoverPhoto"] == null ? null : json["IsCoverPhoto"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "FileName": fileName,
    "IsSample": isSample == null ? null : isSample,
    "Book": book,
    "IsCoverPhoto": isCoverPhoto == null ? null : isCoverPhoto,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

