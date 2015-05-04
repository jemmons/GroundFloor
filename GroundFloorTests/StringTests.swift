import Foundation
import XCTest
import GroundFloor

class StringTests:XCTestCase{
  func testContains(){
    let subject = "foo bar"
    XCTAssertTrue(subject.contains("f"))
    XCTAssertTrue(subject.contains("o"))
    XCTAssertTrue(subject.contains("r"))
    XCTAssertTrue(subject.contains("foo"))
    XCTAssertTrue(subject.contains(" "))
    XCTAssertTrue(subject.contains("bar"))
    XCTAssertTrue(subject.contains("foo bar"))
    XCTAssertTrue(subject.contains("o bar"))
    XCTAssertTrue(subject.contains("foo b"))
    XCTAssertFalse(subject.contains(" foo"))
    XCTAssertFalse(subject.contains("bar "))
    XCTAssertFalse(subject.contains("x"))
    XCTAssertFalse(subject.contains("xyz"))
    XCTAssertFalse(subject.contains("fxz"))
  }
  
  
  func testDoesNotContain(){
    let subject = "foo bar"
    XCTAssertFalse(subject.doesNotContain("f"));
    XCTAssertFalse(subject.doesNotContain("foo"));
    XCTAssertFalse(subject.doesNotContain(" "));
    XCTAssertFalse(subject.doesNotContain("bar"));
    XCTAssertFalse(subject.doesNotContain("foo bar"));
    XCTAssertTrue(subject.doesNotContain(" foo"));
    XCTAssertTrue(subject.doesNotContain("bar "));
    XCTAssertTrue(subject.doesNotContain("x"));
    XCTAssertTrue(subject.doesNotContain("xyz"));
  }
  
}
