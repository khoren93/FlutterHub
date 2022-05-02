class RateLimit {
  final int limit;
  final int remaining;
  final int reset;

  RateLimit({this.limit = 0, this.remaining = 0, this.reset = 0});

  DateTime get resetDate => DateTime.fromMillisecondsSinceEpoch(reset * 1000);
  Duration get resetTime => resetDate.difference(DateTime.now());
  String get resetMinutes => resetTime.inMinutes.toString().padLeft(2, '0');
  String get resetSeconds =>
      (resetTime.inSeconds % 60).toString().padLeft(2, '0');
}
