//
//  UIColor+XYJExtension.swift
//  XYJExtension
//
//  Created by θθΏε on 2021/11/29.
//

import UIKit

extension UIColor: XYJExtensionWrappable {}
public extension XYJExtension where T: UIColor {
    
    static func rgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> T {
        return .init(red: r, green: g, blue: b, alpha: a)
    }
    
}
