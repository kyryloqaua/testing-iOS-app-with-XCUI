//
//  OrderMEUITests.swift
//  OrderMEUITests
//
//  Created by Kyrylo Bielohryvtsev on 9/20/23.
//  Copyright © 2023 Boris Gurtovoy. All rights reserved.
//

import XCTest

class OrderMEUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        let app = XCUIApplication()
        app.launch()
        
        let loginScreen = LoginScreen()
        loginScreen.loginLater()
        
        let restaurantListScreen = RestaurantListScreen()
        restaurantListScreen.openRepublique()
        
        let restaurantScreen = RestaurantScreen()
        restaurantScreen.detectTable()
        
        let detectTableScreen = DetectTableScreen()
        detectTableScreen.typeNumberOfTable(number: 3)
        detectTableScreen.select()
        
        restaurantScreen.callAWaiter()
        
        sleep(1)
        
        let bringMenus = app.alerts["The waiter is on his way"].scrollViews.otherElements.buttons["Bring a menu"]
        bringMenus.tap()
        
        sleep(1)
        
        XCTAssert(app.alerts["Got it!"].exists)
        
//        let loginLaterBtn = app.staticTexts["Login Later"]   / Since we created a screen page object we
//        loginLaterBtn.tap() / do not need to create single instances
                
//        let restaurant = app.tables/*@START_MENU_TOKEN@*/.staticTexts["Republique"]/*[[".cells.staticTexts[\"Republique\"]",".staticTexts[\"Republique\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        restaurant.tap()
        
//        let detectTableOption = app.collectionViews.staticTexts["Detect table"]
//        detectTableOption.tap()
                
                
//        let textField = app/*@START_MENU_TOKEN@*/.textFields["tableNumberTextField"]/*[[".textFields[\"Table #\"]",".textFields[\"tableNumberTextField\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        textField.tap()
//        textField.typeText("3")
                
//        let selectTableButton = app.buttons["Select table"]
//        selectTableButton.tap()
                
//        let callWaiterOption = app.collectionViews/*@START_MENU_TOKEN@*/.staticTexts["Call a waiter"]/*[[".cells[\"Call a waiter\"].staticTexts[\"Call a waiter\"]",".staticTexts[\"Call a waiter\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        callWaiterOption.tap()
    }
}
