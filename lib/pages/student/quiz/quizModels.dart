// ignore_for_file: public_member_api_docs, sort_constructors_first
class Question {
  final String? id;
  final String? title;
  final Map<String, bool> options;
  Question({
    this.id,
    this.title,
    required this.options,
  });
}
