//
//  RestaurantListScreen.swift
//  OrderMEUITests
//
//  Created by Kyrylo Bielohryvtsev on 9/20/23.
//  Copyright © 2023 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class RestaurantListScreen {
    
    private static let app = XCUIApplication()
    
    private let republiqueRestaurant = app.tables/*@START_MENU_TOKEN@*/.staticTexts["Republique"]/*[[".cells.staticTexts[\"Republique\"]",".staticTexts[\"Republique\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    
    func openRepublique() {
        republiqueRestaurant.tap()
    }
    
}
