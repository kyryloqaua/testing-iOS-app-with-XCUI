//
//  DetectTableScreen.swift
//  OrderMEUITests
//
//  Created by Kyrylo Bielohryvtsev on 9/20/23.
//  Copyright © 2023 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class DetectTableScreen {
    
    private static let app = XCUIApplication()
    
    private let textField = app.textFields["tableNumberTextField"]
    
    private let selectButton = app.buttons["Select table"]
    
    func typeNumberOfTable(number:Int) {
        textField.tap()
        textField.typeText(number.description)
    }
    
    func select(){
        selectButton.tap()
    }
    
}
