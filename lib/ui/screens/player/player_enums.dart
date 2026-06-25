enum PlayerSteps {
  none,
  controls,
  epg,
  channels,
  catchup,
  catchupControls,
  chromecastSelector,
  chromecastLoading,
}

enum CatchupStatus {
  notStarted,
  playing,
  finished
}

enum PlayerStatus {
  playing,
  error,
  buffering
}