import 'Authors.dart';
import 'Photos.dart';
import 'Categories.dart';
import 'Media.dart';

class UrduMain {
  UrduMain({
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
      this.users,});

  UrduMain.fromJson(dynamic json) {
    books = json['books'];
    id = json['Id'];
    title = json['Title'];
    titleUrdu = json['Title_Urdu'];
    titleHindi = json['Title_Hindi'];
    if (json['Authors'] != null) {
      authors = [];
      json['Authors'].forEach((v) {
        authors?.add(Authors.fromJson(v));
      });
    }
    description = json['Description'];
    createdOn = json['CreatedOn'];
    isbn = json['ISBN'];
    language = json['Language'];
    if (json['Photos'] != null) {
      photos = [];
      json['Photos'].forEach((v) {
        photos?.add(Photos.fromJson(v));
      });
    }
    price = json['Price'];
    if (json['Categories'] != null) {
      categories = [];
      json['Categories'].forEach((v) {
        categories?.add(Categories.fromJson(v));
      });
    }
    volume = json['Volume'];
    if (json['Media'] != null) {
      media = [];
      json['Media'].forEach((v) {
        media?.add(Media.fromJson(v));
      });
    }
    users = json['Users'];
  }
  dynamic books;
  int? id;
  String? title;
  String? titleUrdu;
  String? titleHindi;
  List<Authors>? authors;
  String? description;
  String? createdOn;
  String? isbn;
  String? language;
  List<Photos>? photos;
  double? price;
  List<Categories>? categories;
  String? volume;
  List<Media>? media;
  dynamic users;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['books'] = books;
    map['Id'] = id;
    map['Title'] = title;
    map['Title_Urdu'] = titleUrdu;
    map['Title_Hindi'] = titleHindi;
    if (authors != null) {
      map['Authors'] = authors?.map((v) => v.toJson()).toList();
    }
    map['Description'] = description;
    map['CreatedOn'] = createdOn;
    map['ISBN'] = isbn;
    map['Language'] = language;
    if (photos != null) {
      map['Photos'] = photos?.map((v) => v.toJson()).toList();
    }
    map['Price'] = price;
    if (categories != null) {
      map['Categories'] = categories?.map((v) => v.toJson()).toList();
    }
    map['Volume'] = volume;
    if (media != null) {
      map['Media'] = media?.map((v) => v.toJson()).toList();
    }
    map['Users'] = users;
    return map;
  }

}