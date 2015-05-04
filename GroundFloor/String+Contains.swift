import Foundation

public extension String{
  func contains(substring:String)->Bool{
    return self.rangeOfString(substring) != nil
  }
  
  func doesNotContain(substring:String)->Bool{
    return !self.contains(substring)
  }
}
