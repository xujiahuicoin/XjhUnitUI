

import UIKit

class FFAlertController: UIAlertController {

    ///显示在Root视图上
    static func getRootVC() -> AppDelegate {
        
        let rootVC = UIApplication.shared.delegate as! AppDelegate
        rootVC.window?.rootViewController = BaseViewController()
        
        return rootVC
    }
    
    ///alert:一个按钮-VC 默认：提示 、确定
    static func showAlertOneAction(message : String, title : String = "提示", actionText : String = "确定", vc : UIViewController, FFAction : @escaping() ->()) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:actionText, style: .default, handler: { (action) in
            
            FFAction()
            
        }))
        
        vc.present(alert,animated: true)
        
    }
    
    ///alert:两个按钮-VC 默认：提示 、取消、确定
    static func showAlertTwoAction(message : String, title : String = "提示", actionTextOne : String = "取消",actionTextTwo : String = "确定", vc : UIViewController, FFActionOne : @escaping() ->(),FFActionTwo : @escaping() ->()) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:actionTextOne, style: .cancel, handler: { (action) in
            
            FFActionOne()
            
        }))
        
        alert.addAction(UIAlertAction(title:actionTextTwo, style: .default, handler: { (action) in
            
            FFActionTwo()
            
        }))
        
        
        vc.present(alert,animated: true)
        
    }
    
    
    ///alert: Sheet
    static func showAlertSheet(title : String,message : String = "", actions : Array<String>, vc : UIViewController, redtypeShow : Int = 1000, alertAction : @escaping(_ title : String) ->() ) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    
        for index in 0...actions.count-1 {
            
            let str = actions[index]
            
            alert.addAction(UIAlertAction(title: str, style: (index == redtypeShow) ? .cancel : .default, handler: { (action) in
                
                if action.title != actions[actions.count-1]
                {
                    alertAction(action.title!)
                }
                
               
                
            }))
            
        }
        
        
         vc.present(alert,animated: true)
        
    }
  
}
