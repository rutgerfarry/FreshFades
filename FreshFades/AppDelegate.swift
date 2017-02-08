import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow()

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let musicViewController = MusicViewController()
        let haircutChoiceViewController = HaircutChoiceViewController()
        let profileViewController = ProfileViewController()

        let musicNavigationController = UINavigationController(rootViewController: musicViewController)
        let scheduleNavigationController = UINavigationController(rootViewController: haircutChoiceViewController)
        let profileNavigationController = UINavigationController(rootViewController: profileViewController)

        let tabBarController = UITabBarController()

        musicNavigationController.tabBarItem = UITabBarItem(
            title: "Music",
            image: #imageLiteral(resourceName: "music_tab_bar"),
            tag: 0)

        scheduleNavigationController.tabBarItem = UITabBarItem(
            title: "Schedule",
            image: #imageLiteral(resourceName: "calendar_tab_bar"),
            tag: 1)

        profileNavigationController.tabBarItem = UITabBarItem(
            title: "Profile",
            image: #imageLiteral(resourceName: "profile_tab_bar"),
            tag: 2)

        // Tab bar setup
        tabBarController.viewControllers = [
            musicNavigationController,
            scheduleNavigationController,
            profileNavigationController
        ]

        window!.tintColor = UIColor.Theme.tint
        window!.rootViewController = tabBarController
        window!.makeKeyAndVisible()

        return true
    }

}
