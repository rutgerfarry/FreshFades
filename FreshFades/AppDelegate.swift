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

        musicViewController.tabBarItem = UITabBarItem(
            title: "Music",
            image: #imageLiteral(resourceName: "music_tab_bar"),
            tag: 0)

        scheduleViewController.tabBarItem = UITabBarItem(
            title: "Schedule",
            image: #imageLiteral(resourceName: "calendar_tab_bar"),
            tag: 1)

        profileViewController.tabBarItem = UITabBarItem(
            title: "Profile",
            image: #imageLiteral(resourceName: "profile_tab_bar"),
            tag: 2)

        tabBarController.viewControllers = [
            musicViewController,
            scheduleViewController,
            profileViewController
        ]

        window!.tintColor = UIColor.Theme.tint
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }

}
