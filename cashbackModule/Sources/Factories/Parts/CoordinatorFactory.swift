protocol CoordinatorFactory {
  func makeSettingsCoordinator() -> Coordinator
  func makeSettingsCoordinator(navController: UINavigationController?) -> Coordinator
  func makeCashbackCoordinatorBox(router: Router) -> Coordinator & CashbackCoordinatorOutput
}
