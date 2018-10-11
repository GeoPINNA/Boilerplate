//
//  Alert.swift
//  Boilerplate
//
//  Created by Shota Shimazu on 2018/10/10.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit


open class Alert {
    static func alert(message: String) {
        
        let alert: UIAlertController = UIAlertController(title: message, message: "", preferredStyle:  UIAlertController.Style.alert)
        
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
            print("OK")
        })
        
        alert.addAction(defaultAction)
        
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
}
