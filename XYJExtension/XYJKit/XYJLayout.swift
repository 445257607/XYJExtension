//
//  XYJLayout.swift
//  XYJExtension
//
//  Created by θθΏε on 2021/11/29.
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
