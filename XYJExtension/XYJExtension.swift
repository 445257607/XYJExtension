//
//  XYJExtension.swift
//  XYJExtension
//
//  Created by 肖迎军 on 2021/11/28.
//

import UIKit


public protocol XYJExtensionWrappable {
    associatedtype WrapperType
    static var xyj: WrapperType.Type { get }
    var xyj: WrapperType { get }
}


public struct XYJExtension<T>: XYJExtensionWrappable {
    public let object: T
    public init(object: T) {
        self.object = object
    }
}


public extension XYJExtensionWrappable {
    static var xyj: XYJExtension<Self>.Type {
        return XYJExtension<Self>.self
    }
    var xyj: XYJExtension<Self> {
        return XYJExtension(object: self)
    }
}
