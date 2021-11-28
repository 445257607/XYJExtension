//
//  XYJLayout.swift
//  XYJExtension
//
//  Created by 肖迎军 on 2021/11/29.
//

import UIKit

open class XYJLayout: XYJView {

    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let hit = super.hitTest(point, with: event)
        if hit == self {
            return nil
        }
        return hit
    }

}
