//
//  UITextField.swift
//  Boilerplate
//
//  Created by Shota Shimazu on 2018/09/21.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit



open class TextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        compose()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        compose()
    }
    
    override open func draw(_ layer: CALayer, in ctx: CGContext) {
        super.draw(layer, in: ctx)
        compose()
    }
    
    func compose() { }
}

@available(iOS, obsoleted: 12.0, renamed: "TextField")
class InputWidget { }
