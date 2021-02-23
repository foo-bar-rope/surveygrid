class SurveyRow {
  final String id;
  final String input;

  SurveyRow(this.id, this.input);

  SurveyRow.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        input = json['input'];

  Map<String, dynamic> toJson() => {
    'id': id,
    'input': input,
  };
}
