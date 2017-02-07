import Foundation

extension String {
    subscript (i: Int) -> Character {
        return self[index(self.startIndex, offsetBy: i)]
    }

    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }

    subscript (r: Range<Int>) -> String {
        let start = index(self.startIndex, offsetBy: r.lowerBound)
        let end = index(self.startIndex, offsetBy: r.upperBound - r.lowerBound)
        return self[Range(start ..< end)]
    }
}
