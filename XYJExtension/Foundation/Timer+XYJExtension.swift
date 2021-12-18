//
//  Timer+XYJExtension.swift
//  XYJExtension
//
//  Created by 肖迎军 on 2021/11/28.
//

import Foundation


extension Timer: XYJExtensionWrappable {}
public extension XYJExtension where T: Timer {
    
    class TimerBridge {
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
            let bridge = TimerBridge(block)
            return T.scheduledTimer(timeInterval: interval, target: bridge, selector: #selector(TimerBridge.onTimer(_:)), userInfo: nil, repeats: repeats)
        }
    }
    
    static func timer(timeInterval: TimeInterval, repeats: Bool, block: @escaping (Timer) -> Void) -> Timer {
        
        if #available(iOS 10.0, *) {
            return Timer(timeInterval: timeInterval, repeats: repeats, block: block)
        } else {
            let bridge = TimerBridge(block)
            return Timer(timeInterval: timeInterval, target: bridge, selector: #selector(TimerBridge.onTimer(_:)), userInfo: nil, repeats: repeats)
        }
    }
    
}
