import Foundation


public func merge<Key:Hashable,Value>(target:[Key:Value], source:[Key:Value])->[Key:Value]{
  return reduce(source, target){ (var last, this) in
    let (key, value) = this
    last.updateValue(value, forKey:key)
    return last
  }
}


public func +<Key:Hashable,Value>(lhs:[Key:Value], rhs:[Key:Value]) -> [Key:Value]{
  return merge(lhs, rhs)
}
