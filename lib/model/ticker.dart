class Ticker {
  const Ticker();

  Stream<int> tick({required int ticks}) {
    return Stream.periodic(Duration(seconds: 1), (i) => ticks - i - 1)
        .take(ticks);
  }
}
