final class ApplicationCoordinator: BaseCoordinator {
  private let coordinatorFactory: CoordinatorFactory
  private let router: Router
  
  init(router: Router, coordinatorFactory: CoordinatorFactory) {
    self.router = router
    self.coordinatorFactory = coordinatorFactory
  }
  
  override func start() {
        runSettingsFlow()
  }
  
   private func runSettingsFlow() {
        let coordinator = coordinatorFactory.makeSettingsCoordinator()
        addDependency(coordinator)
        coordinator.start()
   }

}
