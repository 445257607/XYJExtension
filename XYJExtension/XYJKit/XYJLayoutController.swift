//
//  XYJLayoutController.swift
//  XYJExtension
//
//  Created by θθΏε on 2021/11/29.
//

import UIKit

open class XYJLayoutController: XYJViewController {

    open override func loadView() {
        view = XYJLayout()
        view.autoresizingMask = [
            .flexibleLeftMargin,
            .flexibleRightMargin,
            .flexibleTopMargin,
            .flexibleBottomMargin
        ]
    }

}
