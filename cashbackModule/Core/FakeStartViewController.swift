
class FakeStartViewController: UINavigationController {
    private lazy var applicationCoordinator: Coordinator = self.makeCoordinator()

    override func viewDidLoad() {
        super .viewDidLoad()
        applicationCoordinator.start()
    }
    
    private func makeCoordinator() -> Coordinator {
        return ApplicationCoordinator(
            router: RouterImp(rootController: self),
            coordinatorFactory: CoordinatorFactoryImp()
        )
    }
}
