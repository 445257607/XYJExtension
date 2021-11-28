//
//  UIGeometry+XYJExtension.swift
//  XYJExtension
//
//  Created by 肖迎军 on 2021/11/29.
//

import UIKit

extension UIEdgeInsets: XYJExtensionWrappable {}
public extension XYJExtension where T == UIEdgeInsets {
    
    static func all(_ inset: CGFloat) -> UIEdgeInsets {
        return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }
    
}
