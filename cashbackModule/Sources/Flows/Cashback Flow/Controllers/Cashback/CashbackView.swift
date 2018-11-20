protocol CashbackView: BaseView {
  var onDealsTap: (() -> Void)? { get set }
  var onLocationTap: (() -> Void)? { get set }
  var onFollowersTap: (() -> Void)? { get set }
}
