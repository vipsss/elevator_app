//
//  ViewController.swift
//  Elevator
//
//  Created by Mac User on 14.02.2023.
//

import UIKit

class ViewController: UIViewController {

    private let logic = ElevatorLogic()
    
    
    private let dispatcherView = DispatcherView.instanceFromNib() as! DispatcherView
    private let cabinView = CabinView.instanceFromNib() as! CabinView
    private let floorView = FloorView.instanceFromNib() as! FloorView
    
    @IBOutlet weak var dispetcherContainer: UIView!
    @IBOutlet weak var cabinContainer: UIView!
    @IBOutlet weak var floorContainer: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.prepareView()
        
        self.logic.delegate = self
    }
}



extension ViewController: ElevatorLogicDelegate {
    func didMoveToFloor(_ floor: Int) {
        
    }
}

extension ViewController {
    fileprivate func prepareView() {
        
        self.dispatcherView.frame = self.dispetcherContainer.bounds
        self.dispatcherView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.dispatcherView.translatesAutoresizingMaskIntoConstraints = true
        self.dispetcherContainer.addSubview(self.dispatcherView)
        self.dispetcherContainer.layer.borderWidth = 2
        self.dispetcherContainer.layer.borderColor = UIColor.lightGray.cgColor
        self.dispetcherContainer.layer.cornerRadius = 15
        
        self.cabinView.onAction = { [weak self] floor in
        }
        self.cabinView.frame = self.cabinContainer.bounds
        self.cabinView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.cabinView.translatesAutoresizingMaskIntoConstraints = true
        self.cabinContainer.addSubview(self.cabinView)
        self.cabinContainer.layer.borderWidth = 2
        self.cabinContainer.layer.borderColor = UIColor.lightGray.cgColor
        self.cabinContainer.layer.cornerRadius = 15
        
        
        self.floorView.frame = self.floorContainer.bounds
        self.floorView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.floorView.translatesAutoresizingMaskIntoConstraints = true
        self.floorContainer.addSubview(self.floorView)
        self.floorContainer.layer.borderWidth = 2
        self.floorContainer.layer.borderColor = UIColor.lightGray.cgColor
        self.floorContainer.layer.cornerRadius = 15
    }
}

