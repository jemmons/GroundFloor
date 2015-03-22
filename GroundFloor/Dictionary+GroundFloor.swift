import Foundation


public func merge<Key,Value>(target:[Key:Value], source:[Key:Value])->[Key:Value]{
  return reduce(source, target){ (var last, this) in
    let (key, value) = this
    last.updateValue(value, forKey:key)
    return last
  }
}

