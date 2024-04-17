class Assignment {
  int? id;
  int? userId;
  String? title;
  bool? completed;

  Assignment({this.userId, this.id, this.title, this.completed});

  Assignment.fromJson(Map<String,dynamic>json) {
    print('----------assisnment from json');
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
    }
  Map<String,dynamic> toJson() {
    print('-----------tojson');
    final data = <String, dynamic>{};
    data['userId'] =userId;
    data['id'] =id;
    data['title'] =title;
    data['completed'] =completed;
    return data;
  }
}
