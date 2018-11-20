final class CashbackController: UIViewController, CashbackView {
    
//controller handler
    var onDealsTap: (() -> Void)?
    var onLocationTap: (() -> Void)?
    var onFollowersTap: (() -> Void)?

    @IBAction func dealsButtonClicked(_ sender: AnyObject) {
        onDealsTap?()
    }
    
    @IBAction func locationButtonClicked(_ sender: Any) {
        onLocationTap?()
    }
    
    @IBAction func followerButtonClicked(_ sender: Any) {
        onFollowersTap?()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cashback"
    }
}
