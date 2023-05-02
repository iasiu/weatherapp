class DateTimeProvider {
  factory DateTimeProvider() => _instance;

  DateTimeProvider._();

  static final _instance = DateTimeProvider._();

  DateTime get now => DateTime.now();
}
