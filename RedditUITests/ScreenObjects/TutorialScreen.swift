//
//  TutorialScreen.swift
//  RedditUITests
//
//  Created by Rajeev Rahi on 2022-02-12.
//  Copyright © 2022 Carson Katri. All rights reserved.
//

import Foundation
import XCTest

//swiftlint:disable line_length
class TutorialScreen: BaseTest {
    private lazy var tutorialTitle = app.buttons["r/swift"].firstMatch
    private lazy var tutorialTitleText = app.textFields["Subreddit"].firstMatch
    private lazy var sortButton = app.buttons["hot"].firstMatch
    private lazy var firstArticle = app.tables.element(boundBy: 0).cells.element(boundBy: 0)
    private lazy var lastArticle = app.tables.element(boundBy: 0).cells.element(boundBy: 26)
    
    @discardableResult
    func isDisplaying() -> TutorialScreen{
        XCTAssert(tutorialTitle.exists && sortButton.exists)
        return self
    }
    
    @discardableResult
    func editTitle(titleText: String) -> TutorialScreen{
        tutorialTitle.tap()
        tutorialTitleText.tap()
        tutorialTitleText.clearTextFieldValue(application: app)
        tutorialTitleText.slowType(text: titleText+"\n")
        return self
    }
    
    @discardableResult
    func verifyTitleIsUpdated(titleText: String) -> TutorialScreen{
        let newTitleText = "r/"+titleText
        XCTAssert(app.buttons[newTitleText].exists)
        return self
    }
    
    @discardableResult
    func sortArticle(option: String) -> TutorialScreen{
        sortButton.tap()
        app.buttons[option].firstMatch.tap()
        return self
    }
    
    @discardableResult
    func openFirstArticle() -> TutorialScreen{
        firstArticle.tap()
        sleep(2)
        return self
    }
    
    @discardableResult
    func openLastArticle() -> TutorialScreen{
        swipeUpUntilElementFound(app: app, element: lastArticle)
        lastArticle.tap()
        sleep(2)
        return self
    }
    
}
