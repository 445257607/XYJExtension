//
//  Timer+XYJExtension.swift
//  XYJExtension
//
//  Created by 肖迎军 on 2021/11/28.
//

import Foundation


extension Timer: XYJExtensionWrappable {}
public extension XYJExtension where T: Timer {
    
    class TargetSelectorBlock {
        let block: (Timer) -> Void
        init(_ block: @escaping (Timer) -> Void) {
            self.block = block
        }
        @objc func onTimer(_ timer: Timer) {
            block(timer)
        }
    }
    
    static func scheduledTimer(withTimeInterval interval: TimeInterval, repeats: Bool, block: @escaping (Timer) -> Void) -> Timer {
        
        if #available(iOS 10.0, *) {
            return T.scheduledTimer(withTimeInterval: interval, repeats: repeats, block: block)
        } else {
            let bridge = TargetSelectorBlock(block)
            return T.scheduledTimer(timeInterval: interval, target: bridge, selector: #selector(TargetSelectorBlock.onTimer(_:)), userInfo: nil, repeats: repeats)
        }
    }
    
}
