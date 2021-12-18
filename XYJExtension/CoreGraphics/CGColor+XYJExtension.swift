//
//  CGColor+XYJExtension.swift
//  XYJExtension
//
//  Created by 肖迎军 on 2021/11/29.
//

import CoreGraphics

extension CGColor: XYJExtensionWrappable {}
public extension XYJExtension where T: CGColor {
    
    static func rgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> T? {
        if #available(iOS 13.0, *) {
            return .init(red: r, green: g, blue: b, alpha: a)
        } else {
            guard let colorSpace = CGColorSpace(name: CGColorSpace.sRGB) else { return nil }
            return .init(colorSpace: colorSpace, components: [r, g, b, a])
        }
    }
    
}
