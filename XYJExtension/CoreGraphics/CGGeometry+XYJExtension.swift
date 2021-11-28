//
//  CGGeometry+XYJExtension.swift
//  XYJExtension
//
//  Created by 肖迎军 on 2021/11/28.
//

import CoreGraphics


extension CGSize: XYJExtensionWrappable {}
extension XYJExtension where T == CGSize {
    
    /// 面积
    var area: CGFloat {
        return object.width * object.height
    }
    
}


extension CGRect: XYJExtensionWrappable {}
extension XYJExtension where T == CGRect {
    
    /// 面积
    var area: CGFloat {
        return object.size.xyj.area
    }
    
}
