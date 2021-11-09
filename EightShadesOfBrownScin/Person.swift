//
//  Person.swift
//  EightShadesOfBrownScin
//
//  Created by TK_User on 03.11.2021.
//

import UIKit

struct Person {
    let title: String?
    let photo: UIImage?
    let text: String
}

let marsmellowText = """
A bottom sheet modal view controller is a feature that has a great UI/UX design. It is very useful when we want to present a quick preview with minimal content.
"""

let pecanText = """
In fact, in most iOS implementations, it has a pan gesture feature (draggable) to simply dismiss the controller or expand the content by dragging the view to the top or bottom. The modal view controller can also be quickly dismissed by tapping the dimmed background.
"""

let peanutText = """
This feature is currently implemented in many well-known apps such as Facebook, Slack, and Instagram.
"""

let amberText = """
In this article, we are going to create a simple app (shown above) with a modal view controller that has the following capabilities:
"""
let caramelText = """
- Can be presented modally with the content size taking up around half of the screen size or less (customizable).
- Able to drag down to dismiss the view controller (using pan gesture recognizer).
"""
let chocolateText = """
- Able to drag up to expand the view controller.
- Able to dismiss the view controller by tapping on the dimmed background.
"""
let espressoText = """
In the initial stage, we will create the CustomModalViewController with an empty view and without animations. Below is the code that will update the view controller:
"""

let cacaoText = """
Now, if you run the project and click the “Get Started” button, it will show our new view controller without any animation yet.
"""


class SkinColors {
    
    static func getPerson() -> [Person] {
        let people = [
            Person (
                    title: "Marshmellow colored skin",
                    photo: UIImage(named: "marshmallow"),
                    text: marsmellowText
                   ),
            Person (
                    title: "Pretty pecan brown skin",
                    photo: UIImage(named: "pecan"),
                    text: pecanText
                   ),
            Person (
                    title: "Peanut butter truffle tone",
                    photo: UIImage(named: "peanut"),
                    text: pecanText
                   ),
            Person (
                    title: "Alluring amber",
                    photo: UIImage(named: "amber"),
                    text: amberText
                   ),
            Person (
                    title: "Brown caramel skin shade",
                    photo: UIImage(named: "caramel"),
                    text: caramelText
                   ),
            Person (
                    title: "Milc chocolate shade",
                    photo: UIImage(named: "chocolate"),
                    text: chocolateText
                   ),
            Person (
                    title: "Espresso brown skin",
                    photo: UIImage(named: "espresso"),
                    text: espressoText
                   ),
            Person (
                    title: "Delicious cacao black skin shade",
                    photo: UIImage(named: "cacao"),
                    text: caramelText
                   )
        ]
        return people
    }
}

