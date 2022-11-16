class Task {
  late final String title;
  bool? isDone;
  bool? isDeleted;

  /// create constructure
  Task(this.title, this.isDone, this.isDeleted) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }

  /// create Map

// String toJson() => json.encode(toMap());

// factory Task.fromJson(String source) => Task.fromMap(json.decode(source))

}
