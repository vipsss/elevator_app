//
//  ElevatorLogic.swift
//  Elevator
//
//  Created by Mac User on 14.02.2023.
//

import Foundation


protocol ElevatorLogicDelegate: AnyObject {
    func didMoveToFloor(_ floor: Int)

//    func fileImporter(_ importer: FileImporter,
//                      didAbortWithError error: Error)
//
//    func fileImporterDidFinish(_ importer: FileImporter)
}


class ElevatorLogic {
    
    weak var delegate: ElevatorLogicDelegate?
    
    let floorsCount = 9
    
    private var currentFloor = 0
    
    func moveToFloor(number: Int) {
        guard number <= self.floorsCount else {
            return
        }
        
        
        self.delegate?.didMoveToFloor(number)
    }
}
