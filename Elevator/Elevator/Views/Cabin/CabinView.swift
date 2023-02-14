//
//  CabinView.swift
//  Elevator
//
//  Created by Mac User on 14.02.2023.
//

import UIKit


struct CabinViewModel {
    var isActive = true
    var floorCount: Int
    var activeFloor = 0
}



class CabinView: UIView {
    
//    typealias FloorAction = (Int)->Void
    var onAction: ((Int) -> Void)?

    @IBOutlet weak var stackView: UIStackView!

    func renderModel(_ model: CabinViewModel) {
        self.stackView.safelyRemoveArrangedSubviews()
        
        for i in 0...model.floorCount {
            let b = UIButton.cabinButton(floor: "\(i+1)")
            b.tag = i
            b.addTarget(self, action: #selector(didSelectFloor), for: .touchUpInside)
        }
    }
    
    @objc func didSelectFloor(button: UIButton) {
        if let a = self.onAction {
            a(button.tag)
        }
    }
}
