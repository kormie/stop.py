//
//  stop_pyUITests.swift
//  stop.pyUITests
//
//  Created by David Kormushoff on 7/27/16.
//  Copyright © 2016 David Kormushoff. All rights reserved.
//

import XCTest

class stop_pyUITests: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp() {
        
        
        super.setUp()
        setupSnapshot(app)
        app.launch()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        snapshot("0-Launch")
        
        let view = app.windows.childrenMatchingType(.Any).elementBoundByIndex(0)
        view.tap()
        sleep(3)
        snapshot("0-Timer")
    }
    
}
