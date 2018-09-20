//
//  UIImageView.swift
//  Boilerplate
//
//  Created by Shota Shimazu on 2018/09/21.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit



open class ImageView: UIImageView {
    
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
    
    
    func compose() { }
}


@available(iOS, obsoleted: 10.0, renamed: "ImageView")
class ImageViewComponent { }
