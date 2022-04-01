class RateLimit {
  final int limit;
  final int remaining;
  final int reset;

  RateLimit({this.limit = 0, this.remaining = 0, this.reset = 0});

  get resetDate => DateTime.fromMillisecondsSinceEpoch(reset * 1000);
  get resetTime => resetDate.difference(DateTime.now());
  get resetMinutes => resetTime.inMinutes;
  get resetSeconds => (resetTime.inSeconds % 60).toString().padLeft(2, '0');
}
