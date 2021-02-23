class SurveyColumn {
  final String id;
  final String name;

  SurveyColumn(this.id, this.name);

  SurveyColumn.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
  };
}