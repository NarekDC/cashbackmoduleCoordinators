final class ModuleFactoryImp:
  CashbackModuleFactory,
  SettingsModuleFactory {
   
    func makeCashbackOutput() -> CashbackView {
        return CashbackController.controllerFromStoryboard(.Cashback)
    }
    
    func makeLocationOutput() -> LocationView {
        return LocationController.controllerFromStoryboard(.Cashback)
    }
    
    func makeFollowersOutput() -> FollowersView {
        return FollowersController.controllerFromStoryboard(.Cashback)
    }
    
    func makeDealsOutput() -> DealsView {
        return DealsController.controllerFromStoryboard(.Cashback)
    }
    
    func makeSettingsOutput() -> SettingsView {
        return SettingsController.controllerFromStoryboard(.Settings)
    }
}
