protocol CoordinatorFactory {
    
   func makeTabbarCoordinator() -> (configurator: Coordinator, toPresent: Presentable?)

   func makeSettingsCoordinator() -> Coordinator
   func makeSettingsCoordinator(navController: UINavigationController?) -> Coordinator
    
   func makeCashbackCoordinator(navController: UINavigationController?) -> Coordinator & CashbackCoordinatorOutput
   func makeCashbackCoordinator() -> Coordinator & CashbackCoordinatorOutput
}
