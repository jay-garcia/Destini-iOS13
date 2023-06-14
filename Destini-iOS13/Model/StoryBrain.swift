//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
            Story(
                title: "POV: You're hungry and go for a drive...",
                choice1: "McDonald's", choice1Destination: 2,
                choice2: "Chipotle", choice2Destination: 1
            ),
            Story(
                title: "What are you feeling?",
                choice1: "Let me get a burrito!", choice1Destination: 3,
                choice2: "Hmm, maybe a bowl this time.", choice2Destination: 3
            ),
            Story(
                title: "What's your level of hunger??",
                choice1: "I want me a burger", choice1Destination: 5,
                choice2: "I want nuggets tbh", choice2Destination: 5
            ),
            Story(
                title: "What do you want with it?",
                choice1: "Salad", choice1Destination: 4,
                choice2: "Rice", choice2Destination: 4
            ),
            Story(
                title: "Choose the meat!",
                choice1: "Chicken", choice1Destination: 6,
                choice2: "Literally anything else", choice2Destination: 6
            ),
            Story(
                title: "Fries too?",
                choice1: "Yes", choice1Destination: 6,
                choice2: "No", choice2Destination: 6
            ),
            Story(
                title: "COMING RIGHT UP!",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            )

    
    ]
    
    mutating func nextStory(userChoice: String) {
        
        
        if (userChoice == "choice1Button"){
            storyNumber = stories[storyNumber].choice1Destination
            
        } else {
            storyNumber = stories[storyNumber].choice2Destination
        }
    }
    
}
