import Foundation



public extension String {
    var isBlank: Bool {
        return self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    
    var isNotBlank: Bool { !isBlank }
}
