class Categories {
  Categories({
       this.id,
       this.name,
      this.nameUrdu, 
      this.nameHindi, 
       this.modifiedOn,
      this.books,});

  Categories.fromJson(dynamic json) {
    id = json['Id'];
    name = json['Name'];
    nameUrdu = json['Name_Urdu'];
    nameHindi = json['Name_Hindi'];
    modifiedOn = json['ModifiedOn'];
    books = json['Books'];
  }
  int? id;
  String? name;
  dynamic nameUrdu;
  dynamic nameHindi;
  String? modifiedOn;
  dynamic books;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['Name'] = name;
    map['Name_Urdu'] = nameUrdu;
    map['Name_Hindi'] = nameHindi;
    map['ModifiedOn'] = modifiedOn;
    map['Books'] = books;
    return map;
  }

}