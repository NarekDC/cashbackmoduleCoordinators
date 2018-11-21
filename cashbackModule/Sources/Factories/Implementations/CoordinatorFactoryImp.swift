final class CoordinatorFactoryImp: CoordinatorFactory {

  func makeSettingsCoordinator() -> Coordinator {
    return makeSettingsCoordinator(navController: nil)
  }
  
  func makeSettingsCoordinator(navController: UINavigationController? = nil) -> Coordinator {
    let coordinator = SettingsCoordinator(router: router(navController), factory: ModuleFactoryImp())
    return coordinator
  }
    
    func makeCashbackCoordinator() -> Coordinator & CashbackCoordinatorOutput {
        return makeCashbackCoordinator(navController: nil)
    }
    
    func makeCashbackCoordinator(navController: UINavigationController?) -> Coordinator & CashbackCoordinatorOutput {
        let coordinator = CashbackCoordinator(
            router: router(navController),
            factory: ModuleFactoryImp(),
            coordinatorFactory: CoordinatorFactoryImp()
        )
        return coordinator
    }
    
    func makeTabbarCoordinator() -> (configurator: Coordinator, toPresent: Presentable?) {
        let controller = TabbarController.controllerFromStoryboard(.Start)
        let coordinator = TabbarCoordinator(tabbarView: controller, coordinatorFactory: CoordinatorFactoryImp())
        return (coordinator, controller)
    }
  
  private func router(_ navController: UINavigationController?) -> Router {
    return RouterImp(rootController: navigationController(navController))
  }
  
  private func navigationController(_ navController: UINavigationController?) -> UINavigationController {
    if let navController = navController { return navController }
    else { return UINavigationController.controllerFromStoryboard(.Start) }
  }
}
