import UIKit
import Foundation

extension UIColor {

    struct Theme {
        static var tint: UIColor {
            return UIColor(red: 254, green: 40, blue: 81)
        }

        static var text: UIColor {
            return UIColor(red: 35, green: 31, blue: 32)
        }

        static var greyText: UIColor {
            return UIColor(red: 143, green: 142, blue: 148)
        }

        static var background: UIColor {
            return UIColor(red: 29, green: 29, blue: 29)
        }
    }

    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red) / 255
        let newGreen = CGFloat(green) / 255
        let newBlue = CGFloat(blue) / 255

        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }

}
