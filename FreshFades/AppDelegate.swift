import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = UIWindow(frame:CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let homeStoryboard = UIStoryboard.schedule()
        let appViewController = homeStoryboard.instantiateInitialViewController() as? AppViewController
        window?.rootViewController = appViewController
        window?.makeKeyAndVisible()
        
        return true
    }

}

