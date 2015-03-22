import Foundation
import XCTest
import GroundFloor

class DictionaryTests: XCTestCase {
  func testMerge() {
    XCTAssertEqual(merge(["one": 1, "two": 2, "three":3], ["three":42, "four":4, "five":5]), ["one":1, "two":2, "three":42, "four":4, "five":5])
  }

  func testMergeOperator() {
    XCTAssertEqual(["one": 1, "two": 2, "three":3] + ["three":42, "four":4, "five":5], ["one":1, "two":2, "three":42, "four":4, "five":5])
  }
  
  func testImmutability(){
    let target = ["one":1]
    let source = ["two":2]
    let added = target + source
    let merged = merge(target, source)
    //Pedantic clarity. Becasue these are constant, we don't really need to assert anything (the compiler will barf if we try to mutate them).
    XCTAssertEqual(target, ["one":1])
    XCTAssertEqual(source, ["two":2])
  }
}


