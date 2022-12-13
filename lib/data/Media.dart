class Media {
  Media({
       this.id,
       this.fileName,
       this.isSample,
      this.book,});

  Media.fromJson(dynamic json) {
    id = json['Id'];
    fileName = json['FileName'];
    isSample = json['IsSample'];
    book = json['Book'];
  }
  int? id;
  String? fileName;
  bool? isSample;
  dynamic book;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['FileName'] = fileName;
    map['IsSample'] = isSample;
    map['Book'] = book;
    return map;
  }

}