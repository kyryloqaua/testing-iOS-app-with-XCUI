//
//  RestaurantScreen.swift
//  OrderMEUITests
//
//  Created by Kyrylo Bielohryvtsev on 9/20/23.
//  Copyright © 2023 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class RestaurantScreen {
    private static let app = XCUIApplication()
    
    private let detectTableOption = app.collectionViews.staticTexts["Detect table"]
    private let callAWaiterOption = app.collectionViews/*@START_MENU_TOKEN@*/.staticTexts["Call a waiter"]/*[[".cells[\"Call a waiter\"].staticTexts[\"Call a waiter\"]",".staticTexts[\"Call a waiter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    
    func detectTable() {
        detectTableOption.tap()
    }
    
    func callAWaiter() {
        callAWaiterOption.tap()
    }
}
