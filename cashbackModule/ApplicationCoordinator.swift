final class ApplicationCoordinator: BaseCoordinator {
  private let coordinatorFactory: CoordinatorFactory
  private let router: Router
  
  init(router: Router, coordinatorFactory: CoordinatorFactory) {
    self.router = router
    self.coordinatorFactory = coordinatorFactory
  }
  
  override func start() {
//    runMainFlow()
    runCashbackFlow()
  }
  
  private func runMainFlow() {
    let coordinator = coordinatorFactory.makeSettingsCoordinator()
    addDependency(coordinator)
    coordinator.start()
  }
    
    private func runCashbackFlow() {
        let coordinator = coordinatorFactory.makeCashbackCoordinatorBox(router: router)
        coordinator.finishFlow = { [weak self, weak coordinator] in
            print("finish cashback flow")
            self?.removeDependency(coordinator)
        }
        addDependency(coordinator)
        coordinator.start()
    }
}
