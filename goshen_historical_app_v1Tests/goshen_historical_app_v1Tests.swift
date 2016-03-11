//
//  goshen_historical_app_v1Tests.swift
//  goshen_historical_app_v1Tests
//
//  Created by Matthew Wesley Pletcher on 2/1/16.
//  Copyright © 2016 Matthew Pletcher. All rights reserved.
//

import XCTest
@testable import goshen_historical_app_v1

class goshen_historical_app_v1Tests: XCTestCase {
    
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//    
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//    
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Site(name: "Newest Site", photo: nil, shortText: "short 1", longText: "long 1")
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Site(name: "", photo: nil, shortText: "", longText: "")
        XCTAssertNil(noName, "Empty name is invalid")
    }
}
