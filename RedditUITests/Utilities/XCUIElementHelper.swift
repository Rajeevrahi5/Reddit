//
//  XCUIElementHelper.swift
//  RedditUITests
//
//  Created by Rajeev Rahi on 2022-02-12.
//  Copyright © 2022 Carson Katri. All rights reserved.
//

import Foundation
import XCTest

extension XCUIElement {
    
    func clearTextFieldValue(application: XCUIApplication) {
        if self.exists {
            self.press(forDuration: 3)
            sleep(1)
            if application.menuItems["Select All"].waitForExistence(timeout: 5.0) {
                sleep(1)
                application.menuItems["Select All"].tap()
                if application.menuItems["Cut"].waitForExistence(timeout: 5.0) {
                    application.menuItems["Cut"].tap()
                    sleep(1)
                }
            }
        }
    }
    func slowType(text: String, sleep: useconds_t = 500000) {
        self.tap()
        usleep(sleep)
        self.typeText("")
        for character in text {
            self.typeText(String(character))
            usleep(sleep)
        }
    }

}
