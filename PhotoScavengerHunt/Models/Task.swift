//
//  Task.swift
//  PhotoScavengerHunt
//
//  Created by Mardan Mahmut on 3/19/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your submission to National Geographic 🏔",
                 description: "Imagine you are submitting a photo to National Geographic, bring out the calls of mother nature with your awe inspiring photography skills."),
            Task(title: "Your favorite animal 🐐",
                 description: "What animal is your favorite in the vast animal kingdom."),
            Task(title: "What is your favorite city 🌆",
                 description: "With so many metropolis' and towns all over, show us your favorite and a nice view of it.")
        ]
    }
}
