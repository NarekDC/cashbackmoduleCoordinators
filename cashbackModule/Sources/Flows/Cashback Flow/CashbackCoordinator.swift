final class CashbackCoordinator: BaseCoordinator, CashbackCoordinatorOutput {
  
  var finishFlow: (() -> Void)?
  
  private let factory: CashbackModuleFactory
  private let router: Router
  
  init(router: Router, factory: CashbackModuleFactory) {
    self.factory = factory
    self.router = router
  }
  
  override func start() {
    showCashback()
  }
  
  //MARK: - Run current flow's controllers
  
    private func showCashback() {
        let cashbackOutput = factory.makeCashbackOutput()
        
        cashbackOutput.onDealsTap = { [weak self] in
          self?.showDeals()
        }
        
        cashbackOutput.onLocationTap = { [weak self] in
            self?.showLocation()
        }
        
        cashbackOutput.onFollowersTap = { [weak self] in
            self?.showFollowers()
        }
        
        router.setRootModule(cashbackOutput)
    }
  
    private func showDeals() {
        let dealsOutput = factory.makeDealsOutput()
        router.push(dealsOutput)
    }
  
    private func showLocation() {
        let locationOutput = factory.makeLocationOutput()
        router.push(locationOutput, animated: true)
    }
    
    private func showFollowers() {
        let followersOutput = factory.makeFollowersOutput()
        router.push(followersOutput, animated: true)
    }
}
