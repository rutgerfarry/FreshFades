import XCTest
@testable import FreshFades

class UIStoryboardExtensionsTests: XCTestCase {

    func testScheduleStoryboard() {
        XCTAssertNotNil(UIStoryboard.schedule())
    }
    
}
