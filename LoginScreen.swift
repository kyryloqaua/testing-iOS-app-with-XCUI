//
//  LoginScreen.swift
//  OrderMEUITests
//
//  Created by Kyrylo Bielohryvtsev on 9/20/23.
//  Copyright © 2023 Boris Gurtovoy. All rights reserved.
//

import Foundation
import XCTest

class LoginScreen {
    
    private static let app = XCUIApplication()
    private let loginLaterBtn: XCUIElement = app.buttons["loginLaterButton"]
    
    func loginLater() {
        loginLaterBtn.tap()
    }
}


