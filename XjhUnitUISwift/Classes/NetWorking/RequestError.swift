

import Foundation

struct FFError : Error {
    let code : Int
    var message : String = "出现错误，稍后重试"
    
    
}
