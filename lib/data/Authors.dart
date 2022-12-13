class Authors {
  Authors({
       this.id,
       this.name,
       this.nameUrdu,
       this.nameHindi,
      this.books,});

  Authors.fromJson(dynamic json) {
    id = json['Id'];
    name = json['Name'];
    nameUrdu = json['Name_Urdu'];
    nameHindi = json['Name_Hindi'];
    books = json['Books'];
  }
  int? id;
  String? name;
  String? nameUrdu;
  String? nameHindi;
  dynamic books;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['Name'] = name;
    map['Name_Urdu'] = nameUrdu;
    map['Name_Hindi'] = nameHindi;
    map['Books'] = books;
    return map;
  }

}