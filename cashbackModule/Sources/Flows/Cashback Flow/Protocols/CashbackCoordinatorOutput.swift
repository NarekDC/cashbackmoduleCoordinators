protocol CashbackCoordinatorOutput: class {
  var finishFlow: (() -> Void)? { get set }
}
