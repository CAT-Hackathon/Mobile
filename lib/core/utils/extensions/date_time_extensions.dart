

extension DateTimeExtensions on DateTime? {
  DateTime get validate {
    if (this == null) {
      return DateTime.now();
    }
    return this!;
  }

  bool get isNull => this == null;
}

extension DurationExtensions on Duration {
  String get formatDuration {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(inMinutes.remainder(60));
    final seconds = twoDigits(inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}
