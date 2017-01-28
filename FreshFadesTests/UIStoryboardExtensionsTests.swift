import XCTest
@testable import FreshFades

class UIStoryboardExtensionsTests: XCTestCase {

    func testScheduleStoryboard() {
        XCTAssertNotNil(UIStoryboard.schedule())
    }
    
    func testProfileStoryboard() {
        XCTAssertNotNil(UIStoryboard.profile())
    }
    
    func testMusicStoryboard() {
        XCTAssertNotNil(UIStoryboard.music())
    }
    
}
