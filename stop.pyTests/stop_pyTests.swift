//
//  stop_pyTests.swift
//  stop.pyTests
//
//  Created by David Kormushoff on 7/27/16.
//  Copyright © 2016 David Kormushoff. All rights reserved.
//

import XCTest
@testable import stop_py

class stop_pyTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func isTrueTrue() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(true == true, "True is in fact true!")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
