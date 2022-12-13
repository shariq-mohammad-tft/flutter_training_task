class Photos {
  Photos({
       this.id,
       this.fileName,
       this.isCoverPhoto,
      this.book,});

  Photos.fromJson(dynamic json) {
    id = json['Id'];
    fileName = json['FileName'];
    isCoverPhoto = json['IsCoverPhoto'];
    book = json['Book'];
  }
  int? id;
   String? fileName;
  bool? isCoverPhoto;
  dynamic book;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['FileName'] = fileName;
    map['IsCoverPhoto'] = isCoverPhoto;
    map['Book'] = book;
    return map;
  }

}