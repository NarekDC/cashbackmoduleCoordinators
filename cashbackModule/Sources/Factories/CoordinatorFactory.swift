protocol CoordinatorFactory {
  func makeSettingsCoordinator() -> Coordinator
  func makeSettingsCoordinator(navController: UINavigationController?) -> Coordinator
}
