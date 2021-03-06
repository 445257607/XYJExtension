//
//  UIViewController+XYJExtension.swift
//  XYJExtension
//
//  Created by θθΏε on 2021/11/29.
//

import UIKit

extension UIViewController: XYJExtensionWrappable {}
public extension XYJExtension where T: UIViewController {
    
    func addChild(_ child: UIViewController) {
        object.addChild(child)
        child.view.frame = object.view.bounds
        object.view.addSubview(child.view)
    }
    
}
