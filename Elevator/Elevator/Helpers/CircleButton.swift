//
//  CircleButton.swift
//  Elevator
//
//  Created by Mac User on 14.02.2023.
//

import UIKit

extension UIButton {
    
    class func cabinButton(floor: String) -> UIButton {
        let button = UIButton.init(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        button.setTitle(floor, for: .normal)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        return button
    }
}
