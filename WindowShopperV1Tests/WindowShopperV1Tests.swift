//
//  WindowShopperV1Tests.swift
//  WindowShopperV1Tests
//
//  Created by Kyla Wilson on 6/17/18.
//  Copyright © 2018 Kyla. All rights reserved.
//

import XCTest

class WindowShopperV1Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func TestGetHours() {
        XCTAssert(Wage.GetHours(forWage: 25, andPrice: 100) == 4);
        XCTAssert(Wage.GetHours(forWage: 15.50, andPrice: 250.53) == 17);
    }
    
}
