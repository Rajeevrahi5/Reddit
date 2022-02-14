//
//  ReddItTutorialTest.swift
//  RedditUITests
//
//  Created by Rajeev Rahi on 2022-02-12.
//  Copyright © 2022 Carson Katri. All rights reserved.
//

import Foundation
class ReddItTutorialTest: BaseTest{
    let tutorialScreen = TutorialScreen()
    let tutorialDetailsScreen = TutorialDetailsScreen()
    
    
    func testListSorting(){
        let option = "Top"
        tutorialScreen
            .isDisplaying()
            .sortArticle(option: option)
    }
    
    func testRenameTutorial() {
        let title = "Swift1"
        tutorialScreen
            .isDisplaying()
            .editTitle(titleText: title)
            .verifyTitleIsUpdated(titleText: title)
    }
    
    func testOpenFirstArticle(){
        let authorName = "DuffMaaaann"
        tutorialScreen
            .isDisplaying()
            .openFirstArticle()
        
        tutorialDetailsScreen
            .isDisplaying()
            .VerifyAuthor(author: authorName)
    }
    
    func testOpenLastArticle(){
        let authorName = "LeoniFrancesco"
        tutorialScreen
            .isDisplaying()
            .openLastArticle()
        
        tutorialDetailsScreen
            .isDisplaying()
            .VerifyAuthor(author: authorName)
    }
}
