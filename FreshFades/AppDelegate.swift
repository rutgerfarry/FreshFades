import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame:CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let tabBarController = UITabBarController()
        let musicViewController = UIStoryboard.music().instantiateInitialViewController()!
        let scheduleViewController = UIStoryboard.schedule().instantiateInitialViewController()!
        let profileViewController = UIStoryboard.profile().instantiateInitialViewController()!
        
        
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

