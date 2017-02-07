import UIKit
import Foundation

extension UIColor {
    struct Theme {
        static var tint = UIColor(hex: "FE2851")
        static var text = UIColor(red: 35, green: 31, blue: 32, alpha: 1)
        static var grey = UIColor(red: 143, green: 142, blue: 148, alpha: 1)
        static var background = UIColor(red: 29, green: 29, blue: 29, alpha: 1)
    }

    convenience init?(hex: String) {
        if
            let r = Int(hex[Range(0...1)], radix: 16),
            let g = Int(hex[Range(2...3)], radix: 16),
            let b = Int(hex[Range(4...5)], radix: 16)
        {
            self.init(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: 1.0)
        }
        return nil
    }
}
