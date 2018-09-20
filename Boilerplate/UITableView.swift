//
//  UITableView.swift
//  Boilerplate
//
//  Created by Shota Shimazu on 2018/09/21.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit

@available(iOS, deprecated: 12.0)
open class TableViewComponent: TableView { }


open class TableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        compose()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        compose()
    }
    
    
    override open func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        compose()
    }
    
    func compose() { }
    
    
    // Deprecations
    //

    @available(*, unavailable, renamed: "compose")
    func buildInterface() { }
    
    @available(*, unavailable, renamed: "compose")
    func buildLayout() { }
    
    @available(iOS, obsoleted: 12.0, renamed: "compose")
    func element(_ f: () -> Void) {
        f()
    }
    
    @available(iOS, obsoleted: 12.0, renamed: "compose")
    func style(_ f: () -> Void) {
        f()
    }
}
