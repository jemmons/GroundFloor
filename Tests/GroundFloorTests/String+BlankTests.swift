import GroundFloor
import Foundation
import Testing



struct StringBlankTests {
    @Test(arguments: ["  ", " \t \t", "\n\t\r", " ", " "])
    func identifiesBlanks(subject: String) {
        #expect(!subject.isEmpty)
        #expect(subject.isBlank)
        #expect(!subject.isNotBlank)
    }
    
    @Test(arguments: ["|", "1", "a", "👾", "␠"])
    func identifiesNotBlanks(subject: String) {
        #expect(!subject.isBlank)
        #expect(subject.isNotBlank)
    }

    @Test func emptyIsBlank() {
        let subject = ""
        #expect(subject.isEmpty)
        #expect(subject.isBlank)
        #expect(!subject.isNotBlank)
    }
}
