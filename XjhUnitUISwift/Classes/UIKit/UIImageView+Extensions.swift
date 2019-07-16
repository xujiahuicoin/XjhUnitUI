//

import Foundation

import UIKit
public extension UIImageView {
    
    convenience  init(Xframe: CGRect = CGRect.zero,imageName: String = "", contentMode: UIView.ContentMode = .scaleAspectFit, userInteraction: Bool = false, cornerRadius: CGFloat = 0, borderWidth: CGFloat = 0, borderColor: UIColor = .white) {
    
    self.init(frame:Xframe)
    
        if !imageName.isEmpty {
            self.image =  UIImage(named: imageName)
        }
    
    self.contentMode = contentMode
        
    self.isUserInteractionEnabled = userInteraction
        
    self.layer.cornerRadius = cornerRadius
    self.layer.masksToBounds = true
    self.layer.borderWidth = borderWidth
    self.layer.borderColor = borderColor.cgColor
    
}
    
}
