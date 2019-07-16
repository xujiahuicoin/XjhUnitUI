

import Foundation
import UIKit
public extension UIButton {
    
    convenience  init(Xframe: CGRect = CGRect.zero, title: String = "", titleColor: UIColor = .black, font: UIFont = UIFont.systemFont(ofSize: 14), backgroundColor: UIColor =  .white, imageName: String = "", cornerRadius: CGFloat = 0, borderWidth: CGFloat = 0, borderColor: UIColor = .white) {
        
        self.init(frame:Xframe)
        
    if !title.isEmpty {
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal) }
        
        if !imageName.isEmpty
        {
            self.setImage( UIImage(named: imageName), for: .normal)
            self.imageView?.contentMode = .scaleAspectFill
        }
        
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
       
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        
        
    }
    
}
