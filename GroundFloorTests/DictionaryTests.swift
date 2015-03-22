import Foundation
import XCTest
import GroundFloor

class DictionaryTests: XCTestCase {
  func testMerge() {
    XCTAssertEqual(merge(["one": 1, "two": 2, "three":3], ["three":42, "four":4, "five":5]), ["one":1, "two":2, "three":42, "four":4, "five":5])
  }
}


