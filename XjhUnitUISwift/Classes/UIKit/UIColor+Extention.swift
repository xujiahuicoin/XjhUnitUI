
//
//  UIColor+Extention.swift
//  FutureCode
//
//  Created by mac on 2019/7/12.
//  Copyright © 2019 www.future.com. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {

    ///随机色
    
    func colorRandomColor() -> UIColor {
            
            let r = arc4random() % 255
            let g = arc4random() % 255
            let b = arc4random() % 255
            
            return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: 1)
    }
        
        ///返回16进制的颜色
         func colorHexColor(rgbValue:Int) -> UIColor {
            
            return colorRGB(r: CGFloat((rgbValue & 0xFF000) >> 16), g: CGFloat((rgbValue & 0x00FF00)>>8), b: CGFloat(rgbValue & 0x0000FF))
        }
        
        ///返回rgb alpha=1.0
         func colorRGB(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
            
            return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: 1.0)
        }
        
        ///返回rgba alpha=a
         func colorRGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
            
            return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        }
        
        
    
    
}
