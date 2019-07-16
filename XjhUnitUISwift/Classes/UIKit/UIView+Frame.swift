

import UIKit

public extension UIView {
    
    func layerShadow(shadowColor:UIColor,shadowOpacity:CGFloat,shadowRadius:CGFloat,shadowOffset:CGSize){
        
        
        self.clipsToBounds = false
            self.layer.shadowColor = shadowColor.cgColor
            self.layer.shadowOffset = shadowOffset
            self.layer.shadowRadius = shadowRadius
            self.layer.shadowOpacity = Float(shadowOpacity)
        
    }

    
    var width : CGFloat {
        get{
            return self.bounds.size.width
        }
        set(width) {

            self.frame.size = CGSize(width: width, height: self.frame.height)
        }
    }
    
    var height : CGFloat {
        get{
            return self.bounds.size.height
        }
        set(height) {
            
            self.frame.size = CGSize(width: width, height: self.frame.height)
        }
    }
    var x : CGFloat {
        get{
            return self.frame.origin.x
        }
        set(x) {
            
            self.frame = CGRect(x: x, y: self.frame.origin.y, width: self.frame.width, height: self.frame.height)
        }
    }
    
    var y : CGFloat {
        get{
            return self.frame.origin.y
        }
        set(y) {
            
            self.frame = CGRect(x: self.frame.origin.x, y:y , width: self.frame.width, height: self.frame.height)
        }
    }
}
