class Holiday {
  final DateTime date;
  final String name;

  const Holiday({required this.date, required this.name});

  factory Holiday.fromData(String dateStr, String name) {
    return Holiday(date: DateTime.parse(dateStr), name: name);
  }

  @override
  String toString() {
    return "Holiday(date: $date, name: $name)";
  }
}
