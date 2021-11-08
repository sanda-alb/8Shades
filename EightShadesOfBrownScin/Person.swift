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
}

class ScinColors {
    
    static func getPerson() -> [Person] {
        let people = [
            Person (
                    title: "Marshmellow colored scin",
                    photo: UIImage(named: "marshmallow")
                   ),
            Person (
                    title: "Pretty pecan brown scin",
                    photo: UIImage(named: "pecan")
                   ),
            Person (
                    title: "Peanut butter truffle tone",
                    photo: UIImage(named: "peanut")
                   ),
            Person (
                    title: "Alluring amber",
                    photo: UIImage(named: "amber")
                   ),
            Person (
                    title: "Brown caramel scin shade",
                    photo: UIImage(named: "caramel")
                   ),
            Person (
                    title: "Milc chocolate shade",
                    photo: UIImage(named: "chocolate")
                   ),
            Person (
                    title: "Espresso brown scin",
                    photo: UIImage(named: "espresso")
                   ),
            Person (
                    title: "Delicious cacao black scin shade",
                    photo: UIImage(named: "cacao")
                   )
        ]
        return people
    }
}

