final class ModuleFactoryImp:
  SettingsModuleFactory {
      
  func makeSettingsOutput() -> SettingsView {
    return SettingsController.controllerFromStoryboard(.Main)
  }
}
