class Task {
  final String id;
  final String name;
  final bool isCompleted;

  Task({
    required this.id,
    required this.name,
    required this.isCompleted,
  });
  factory Task.fromJson(Map<String, dynamic> json, String id) {
    return Task(
      id: id,
      name: json['name'] as String,
      isCompleted: json['isCompleted'] as bool ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'isCompleted': isCompleted,
      };
}
