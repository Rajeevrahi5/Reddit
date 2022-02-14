//
//  BaseTestHelper.swift
//  RedditUITests
//
//  Created by Rajeev Rahi on 2022-02-12.
//  Copyright © 2022 Carson Katri. All rights reserved.
//

import Foundation
import XCTest

extension BaseTest {
    func launchApp() {
        app.launch()
    }
    
    func elementIsWithinWindow(element: XCUIElement, timeout: TimeInterval = 1) -> Bool {
        guard element.waitForExistence(timeout: timeout) && element.isHittable && !element.frame.isEmpty else { return false }
        return true
    }
    
    func swipeUpUntilElementFound(app: XCUIApplication, element : XCUIElement){
        while !elementIsWithinWindow(element: element) {
            app.swipeUp()
        }
    }
}
