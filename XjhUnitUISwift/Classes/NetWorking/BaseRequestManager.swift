
import Foundation
import Alamofire

//请求方式
enum FFMethodType {
    
    case get
    case post
}

class BaseRequestManager {
    
    class func request(_ type : FFMethodType = .get, url : String, encoding : Bool = false, params : [String : Any]?, successBlock : @escaping(_ data : Any) ->(), failBlock : @escaping(_ error : FFError) -> ()) {
        
        let method = type == .get ?HTTPMethod.get : HTTPMethod.post
        
        var urlStr = url
        if encoding {
            urlStr = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        }
        
        Alamofire.request(urlStr,method: method,parameters: params).responseJSON { (response) in
            
            if let json = response.result.value {
                
                print("FFdata： \(json)")
                
                successBlock(json)
            } else {
                
                if let httpResponse = response.response {
                    
                    failBlock(FFError(code: httpResponse.statusCode, message: "不在状态。。。"))
                    
                } else {
                     failBlock(FFError(code: -1004, message: "连接请求出现问题，请重试"))
                }
                
            }
            
        }
        
    }
    
}
