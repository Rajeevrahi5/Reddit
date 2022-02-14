//
//  TutorialDetailsScreen.swift
//  RedditUITests
//
//  Created by Rajeev Rahi on 2022-02-12.
//  Copyright © 2022 Carson Katri. All rights reserved.
//

import Foundation
import XCTest
class TutorialDetailsScreen: BaseTest {
    private lazy var backButton = app.buttons["Back"].firstMatch
    private lazy var tutorialTitleText = app.staticTexts["r/swift"].firstMatch
    
    @discardableResult
    func isDisplaying() -> TutorialDetailsScreen{
        XCTAssert(backButton.exists && tutorialTitleText.exists)
        return self
    }
    
    @discardableResult
    func back() -> TutorialDetailsScreen{
        backButton.tap()
        return self
    }
    
    @discardableResult
    func VerifyAuthor(author: String) -> TutorialDetailsScreen {
        XCTAssert(app.staticTexts[author].exists)
        return self
    }
}
