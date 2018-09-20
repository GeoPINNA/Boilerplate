//
//  UIButton.swift
//  Boilerplate
//
//  Created by Shota Shimazu on 2018/09/21.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit


open class Button: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        compose()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        compose()
    }
    
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        compose()
    }
    
    override open func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        compose()
    }
    
    
    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        // TapticEngine.impact.feedback(.light)
    }
    
    func compose() { }
    
    
    @available(iOS, obsoleted: 10.0, renamed: "subElements")
    func element(_ f: () -> Void) {
        f()
    }
    
    var subElements = { (_ f: () -> Void) -> Void in
        f()
    }
}
