protocol CashbackModuleFactory {
  func makeCashbackOutput() -> CashbackView
  func makeLocationOutput() -> LocationView
  func makeFollowersOutput() -> FollowersView
  func makeDealsOutput() -> DealsView
}
