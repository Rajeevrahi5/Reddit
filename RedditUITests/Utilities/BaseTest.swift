//
//  BaseTest.swift
//  RedditUITests
//
//  Created by Rajeev Rahi on 2022-02-12.
//  Copyright © 2022 Carson Katri. All rights reserved.
//

import Foundation
import XCTest

class BaseTest: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        launchApp()
        sleep(5)
    }
    
    override func tearDown() {
        sleep(1)
        app.terminate()
        super.tearDown()
    }
}
