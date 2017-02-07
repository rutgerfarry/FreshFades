import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow()

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let tabBarController = UITabBarController()
        let musicViewController = MusicViewController()
        let scheduleViewController = ScheduleViewController()
        let profileViewController = ProfileViewController()

        tabBarController.viewControllers = [
            musicViewController,
            scheduleViewController,
            profileViewController
        ]

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }

}
